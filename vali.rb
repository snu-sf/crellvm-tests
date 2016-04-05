require 'json'
require 'parallel'
require 'set'

raise "Argument # should be >= 1, but it is #{ARGV.length}" unless ARGV.length >= 1

$name = ARGV[0]
# OPT_OPTION = ARGV[1].nil?? "-basicaa -gvn" : ARGV[1]
OPT_OPTION = ARGV[1].nil?? "-instcombine" : ARGV[1]
OUT_NAME = "output"
CLEAN_ALL_BY_PRODUCTS_BEFORE = true
$verbose = false

def run(cmd, log = "Something Went Wrong!")
  result = %x(#{cmd} 2>&1) 
  !$?.success?? (raise "#{log} --> #{cmd}") : result
end

def barp(x)
  bar = ""
  60.times{bar += "-"}
  puts "#{bar} #{x} #{bar}"
end

def make 
  cur = run("pwd").chop
  Dir.chdir("#{cur}/../")
  run("make llvm")
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
  # puts "#{name} #{base}"
  cmd = "opt #{OPT_OPTION} #{base}.ll -o #{base}.#{OUT_NAME}.ll -S 2>&1"
  result = %x(zsh -c "#{cmd}")
  [$?.success?? :generate_success : :generate_fail, cmd, result]
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
  run("llvm-dis #{src}")
  run("llvm-dis #{tgt}")
  result = %x(zsh -c "../ocaml_refact/main.native -d #{src} #{tgt} #{hint} 2>&1")
  x = [which_opt(tri_base), classify_result(result), tri_base]
  x << ((x[1] == :success) ? "" : result)
end

def clean_all_by_products
  run("git clean -xf")
end

def which_opt(tri_base)
  result = JSON.parse(File.read(tri_base + ".hint.json"))["opt_name"]
  raise "should not occur, opt_name is nil. parse result = #{result}" if result.nil?
  result
end

def validate_list(tri_bases)
  h2 = Parallel.map(tri_bases) {|tri_base| validate(tri_base)}.
    reduce(Hash.new{|h, k| h[k] = Hash.new{|h2, k2| h2[k2] = Set.new}}){|s, i|
    raise "should not occur, i.size is not 4" if i.size != 4
    # puts i[0] + " " + i[1].to_s + " " + i[2]
    s[i[0]][i[1]] <<= [i[2], i[3]]
    s
  }
  #opt X vali_result => set of (tri_base, debug print)

  barp "validation details"
  h2.map{|opt, _tmp|
    _tmp.map{|vali_result, v|
      puts "## #{opt} #{vali_result} ==> #{v.size} cases"
      $verbose ? (puts v.to_a) : (puts "#{v.map{|x| x[0]}.to_a.take(3)}")
      puts
      }
  }
  puts
  puts

  barp "validation summary"
  h2.map{|op, _tmp| puts "#{op} has appeared #{_tmp.inject(0){|s, (vali_result, v)| s + v.size}} times"}
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
  g = Parallel.map(names){|n| generate n}.reduce(Hash.new{|h, k| h[k] = Set.new}){|s, i| s[i[0]] <<= [i[1], i[2]]; s}
  barp "generation summary"
  g.each{|k, v|
    puts "## #{k} ==> #{v.size} cases"
    $verbose ? (puts v.to_a) : (puts "#{v.map{|x| x[0]}.to_a.take(3)}")
    puts
  }
  puts
  puts
end

make

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
