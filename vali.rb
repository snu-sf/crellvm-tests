require 'json'
require 'parallel'
require 'set'

raise "Argument # should be >= 1, but it is #{ARGV.length}" unless ARGV.length >= 1

$name = ARGV[0]
OPT_OPTION = ARGV[1].nil?? "-instcombine" : ARGV[1]
OUT_NAME = "output"
CLEAN_ALL_BY_PRODUCTS_BEFORE = true
REPORT_NAME = "vali_rb_report"

$last_time = nil
def timer
  if($last_time)
  then
    x = $last_time
    $last_time = Time.now
    Time.now - x
  else
    $last_time = Time.now
    0.0
  end
end

def run(cmd, log = "Something Went Wrong!")
  result = %x(#{cmd} 2>&1) 
  !$?.success?? (raise "#{log} --> #{cmd}\n#{result}") : result
end

def barp(x)
  bar = ""
  60.times{bar += "-"}
  puts "#{bar} #{x} #{bar}"
end

def make 
  cur = run("pwd").chop
  Dir.chdir("#{cur}/../.build/llvm-obj")
  run("cmake --build . -- opt -j24")
  Dir.chdir("#{cur}/../")
  run("make refact -j24")
  Dir.chdir("#{cur}")
end

def change_to_bc(name)
  ext = name.split(".").last #File.extname(name)
  base = name.split(".")[0...-1].join(".") #File.basename(name, ext)

  case ext
  when "c"
    run("clang #{base}.c -emit-llvm -c -S -o #{base}.ll")
    run("llvm-as #{base}.ll")
  when "cpp"
    run("clang++ #{base}.cpp -emit-llvm -c -S -o #{base}.ll")
    run("llvm-as #{base}.ll")
  when "bc"
    # run("llvm-dis #{base}.bc")
    # we edit ll file, then bc is generated,
    # and next time our original ll file is overwritten and can
    # never update it
    run("llvm-dis #{base}.bc") unless File.exists?("#{base}.ll")
  when "ll"
    run("llvm-as #{base}.ll")
  else
    raise "No file extension matched : #{name}"
  end
  base
end

def classify(name)
  ns = name.split(".")
  #for validate -> hint triple (*.src.bc, *.tgt.bc, *.hint.json)
  #this should come before "for generate", as src.bc and tgt.bc will be matched to bc
  return 1 if "hint.json src.bc tgt.bc".split.include?(ns[-2..-1].join("."))
  return -1 if "src.ll tgt.ll #{OUT_NAME}.ll".split.include?(ns[-2..-1].join("."))
  #for generate -> *.ll or *.bc or *.cpp or *.c
  return 0 if "c cpp bc ll".split.include?(ns.last)
  return -2
end

def generate(name)
  base = change_to_bc name
  # http://llvm.org/docs/CommandGuide/opt.html
  # The order in which the options occur on the command line are the order in which they are executed (within pass constraints).
  cmd = "opt #{OPT_OPTION} -lowerswitch #{base}.ll -o #{base}.#{OUT_NAME}.ll -S 2>&1"
  result = %x(zsh -c "#{cmd}")
  x = [$?.success?? :generate_success : :generate_fail, cmd]
  File.open("#{name}.result", 'w').write(result) if(x[0] == :generate_fail)
  x
end

def classify_result(result)
  if $?.success?
  then
    raise "process exec success, validation not success" unless result["Validation succeeded."]
    :validation_success
  else if (result["Not_Supported"] or result["not supported"])
       then :validation_not_supported
       else if result["Validation failed."]
            then :validation_fail
            else :validation_unknown end
       end
  end
end

#opt, vali_result, base, debug_print
def validate(tri_base)
  hint = tri_base + ".hint.json"
  src = tri_base + ".src.bc"
  tgt = tri_base + ".tgt.bc"
  raise "should not occur, triple does not exist" unless (File.exists? hint and File.exists? src and File.exists? tgt)
  result = %x(zsh -c "../ocaml_refact/main.native -d #{src} #{tgt} #{hint} 2>&1")
  opt_name = which_opt(tri_base)
  x = [opt_name, classify_result(result), tri_base]
  # run("rm #{src} #{tgt} #{hint}") if (x[1] == :validation_success or x[1] == :validation_not_supported)
  if(x[1] == :validation_fail or x[1] == :validation_unknown) then
    File.open("#{tri_base}.result", 'w').write(result)
    run("llvm-dis #{src}; llvm-dis #{tgt}")
  end
  x
end

def clean_all_by_products
  # TODO this does not remove by-products... && get name and recursively delete?
  timer
  run("find . -name \"*.src.bc\" -delete -o -name \"*\.src\.ll\" -delete -o -name \"*\.tgt\.bc\" -delete -o -name \"*\.tgt\.ll\" -delete -o -name \"*\.hint\.json\" -delete -o -name \"*\.output\.ll\" -delete")
  puts "cleaning by-products done in #{timer} seconds"
  run("git clean -xf")
end

def which_opt(tri_base)
  result = JSON.parse(File.read(tri_base + ".hint.json"))["opt_name"]
  raise "should not occur, opt_name is nil. parse result = #{result}" if result.nil?
  result
end

def validate_list(tri_bases)
  h2 = Parallel.map(tri_bases, progress: "Validating triples") {|tri_base| validate(tri_base)}.
    reduce(Hash.new{|h, k| h[k] = Hash.new{|h2, k2| h2[k2] = Set.new}}){|s, i|
    raise "should not occur, i.size is not 3" if i.size != 3
    s[i[0]][i[1]] <<= [i[2]]
    s
  }
  #opt X vali_result => set of (tri_base, debug print)

  h2.map{|opt, _tmp|
    print "## #{opt} : #{_tmp.inject(0){|s, (k, v)| s + v.size}} cases".ljust(40) + "==>  "
    print _tmp.map{|vali_result, v|
      "#{vali_result} : #{v.size} cases".ljust(40)
      }.join
    puts
  }
  puts
  File.open(REPORT_NAME, 'a'){|f| f.puts "### Validation Details ###\n\n" ;
    h2.each{|opt, _tmp| f.puts "## #{opt} ##" ;
      _tmp.each{|result, xs| f.puts "# #{result} #" ; xs.each{|x| f.puts x}} ; f.puts "\n"}}

  barp "validation summary"
  puts h2.inject(Hash.new(0)){|s, (op, _tmp)| _tmp.map{|vali_result, v| s[vali_result] += v.size}; s}
  puts
  puts
end

def tri_bases_from_name(name)
  base = (name.split(".")[0...-1].join(".")).split("/").last
  tt = Dir[File.expand_path("../#{base}*", name)].select{|i| (classify i) == 1}.group_by{|x| x.split(".")[0...-2].join(".")}
  tt.each{|k, v| raise "Should not occur, not triple! #{v.size}, #{v}" if v.size != 3}
  tt.keys
end

def generate_list(names)
  names.sort_by!{|x| -File.stat(x).size}
  g = Parallel.map(names, progress: "Generating triples"){|n| generate n}.reduce(Hash.new{|h, k| h[k] = Set.new}){|s, i| s[i[0]] <<= [i[1]]; s}
  g.each{|k, v|
    puts "## #{k} ==> #{v.size} cases"
    # $verbose ? (puts v.map{|x| x[0]}.to_a; puts v.to_a) : (puts v.map{|x| x[0]}.to_a.take(20))
    puts
  }
  puts

  File.open(REPORT_NAME, 'a'){|f| f.puts "### Generate Details ###\n\n" ;
    g.each{|k, v| f.puts "## #{k} ##" ; v.each{|x| f.puts x} ; f.puts "\n"} ; f.puts "\n\n\n\n"}
end


run("rm -f #{REPORT_NAME}")
timer
make
puts "Make done after #{timer} seconds"
if File.directory?($name)
  clean_all_by_products if CLEAN_ALL_BY_PRODUCTS_BEFORE
  def get_files() Dir["#{$name}/**/*"].reject{|f| File.directory? f} end
  names = get_files.select{|i| (classify i) == 0}.uniq{|n| n.split(".")[0...-1].join(".")}
  generate_list(names)
  tri_bases = Parallel.map(names){|n| tri_bases_from_name n}.flatten
  validate_list(tri_bases)
else
  if (classify $name) == 0
  then
    clean_all_by_products if CLEAN_ALL_BY_PRODUCTS_BEFORE
    generate_list([$name])
    validate_list(tri_bases_from_name($name))
  else
    #In order to make this use case, CLEAN_ALL_BY_PRODUCTS_BEFORE should not occur here.
    (raise "If you didn't specified dir name, and it is not ll/bc/c/cpp file, it should be triple's base name" if (classify $name) != -2)
    validate_list([$name])
  end
end
