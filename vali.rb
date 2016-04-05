raise "Argument # should be >= 1, but it is #{ARGV.length}" unless ARGV.length >= 1

$name = ARGV[0]
# OPT_OPTION = ARGV[1].nil?? "-basicaa -gvn" : ARGV[1]
OPT_OPTION = ARGV[1].nil?? "-instcombine" : ARGV[1]
OUT_NAME = "output"
CLEAN_ALL_BY_PRODUCTS_BEFORE = true

def run(cmd, log = "Something Went Wrong!")
  result = %x(#{cmd} 2>&1) 
  !$?.success?? (raise "#{log} --> #{cmd}") : result
end


def make 
  cur = run("pwd").chop
  Dir.chdir("#{cur}/../.build/llvm-obj")
  run("make -j24")
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

  #this should come before "for generate", as src.bc and tgt.bc will be matched to bc
  return -1 if "src.ll tgt.ll #{OUT_NAME}.ll".split.include?(ns[-2..-1].join("."))
  
  #for generate -> *.ll or *.bc or *.cpp or *.c
  return 0 if "c cpp bc ll".split.include?(ns.last)

  raise "not cared name : #{name}"
end

def generate(name)
  # puts "-----------generate start-------------"
  base = change_to_bc name
  # puts "#{name} #{base}"
  result = run("opt #{OPT_OPTION} #{base}.ll -o #{base}.#{OUT_NAME}.ll -S")
  # puts result
  # puts "-----------generate end---------------"
end

def classify_result(result)
  if $?.success?
  then
    raise "process exec success, validation not success" unless result["Validation succeeded."]
    :success
  else if (result["Not_Supported"] or result["not supported"])
       then :not_supported
       else if result["Validation failed."]
            then :validation_failed
            else :other_fail end
       end
  end
end

#opt, vali_result, base, debug_print
def validate(base, hint, src, tgt)
  run("llvm-dis #{src}")
  run("llvm-dis #{tgt}")
  result = %x(zsh -c "../ocaml_refact/main.native -d #{src} #{tgt} #{hint} 2>&1")
  x = [which_opt(base), classify_result(result), base]
  x << ((x[1] == :success) ? "" : result)
end

def clean_all_by_products
  run("git clean -xf")
end

def which_opt(base)
  require 'json'
  result = JSON.parse(File.read(base + ".hint.json"))["opt_name"]
  raise "should not occur, opt_name is nil. parse result = #{result}" if result.nil?
  result
end

make

if File.directory?($name)
  clean_all_by_products if CLEAN_ALL_BY_PRODUCTS_BEFORE
  def get_files() Dir["#{$name}/**/*"].reject{|f| File.directory? f} end
  require "parallel"

  Parallel.map(get_files.select{|i| (classify i) == 0}.uniq{|n| n.split(".")[0...-1].join(".")}){|n| generate n}
  h = get_files.select{|i| (classify i) == 1}.group_by{|n| n.split(".")[0...-2].join(".")}
  require 'set'
  h2 = Parallel.map(h) {|k, v|
    # puts "#{k} #{v}";
    raise "not triple : #{k} #{v}" if v.size != 3;
    v.sort!
    validate(k, v[0], v[1], v[2])
  }.reduce(Hash.new{|h, k| h[k] = Hash.new{|h2, k2| h2[k2] = Set.new}}){|s, i|
    raise "should not occur, i.size is not 4" if i.size != 4
    # puts i[0] + " " + i[1].to_s + " " + i[2]
    s[i[0]][i[1]] <<= [i[2], i[3]]
    s
  }
  #opt X vali_result => set of (base, debug print)

  h2.map{|opt, _tmp|
    _tmp.map{|vali_result, v|
      (puts "#{opt} #{vali_result}" ; puts "#{v.size} : #{v.map{|x| x[0]}.to_a.take(3)}") if (vali_result == :validation_failed or vali_result == :other_fail)
      }
  }
else
  puts "Does not support file execution for now. Please specify directory name."
end
