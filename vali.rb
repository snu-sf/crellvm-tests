raise "Argument # should be >= 1, but it is #{ARGV.length}" unless ARGV.length >= 1

$name = ARGV[0]
# OPT_OPTION = ARGV[1].nil?? "-basicaa -gvn" : ARGV[1]
OPT_OPTION = ARGV[1].nil?? "-instcombine" : ARGV[1]
OUT_NAME = "output"
CLEAN_TRIPLE_BEFORE = true

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
    # run("clang #{base}.c -emit-llvm -c -o #{base}.bc")
  when "cpp"
    run("clang++ #{base}.cpp -emit-llvm -c -S -o #{base}.ll")
    run("llvm-as #{base}.ll")
    # run("clang++ #{base}.cpp -emit-llvm -c -o #{base}.bc")
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
  # t = "hint.json src.bc tgt.bc".split.include?(ns[-2..-1].join("."))
  # puts "name : #{name}, ns : #{ns[-2..-1].join(""".""")} : #{t}"

  #for validate -> hint triple (*.src.bc, *.tgt.bc, *.hint.json)
  #this should come before "for generate", as src.bc and tgt.bc will be matched to bc
  return 1 if "hint.json src.bc tgt.bc".split.include?(ns[-2..-1].join("."))

  
  #this should come before "for generate", as src.bc and tgt.bc will be matched to bc
  return -1 if "src.ll tgt.ll #{OUT_NAME}.ll".split.include?(ns[-2..-1].join("."))
  
  #for generate -> *.ll or *.bc or *.cpp or *.c
  return 0 if "c cpp bc ll".split.include?(ns.last)

  raise "not cared name : #{name}"
end

# def classify(name)
#   ns = name.split(".")
#   #2 : *.ll or *.bc or *.cpp or *.c or blah
#   return 0 if ns.size == 2 && "c cpp bc ll".split.include?(ns.last)
#   #3 : hint triple (*.src.bc, *.tgt.bc, *.hint.json)
#   # do not check ns.size, AndOrXor.pow2.0.src.bc
#   return 1 if "hint.json src.bc tgt.bc".split.include?(ns[-2..-1].join("."))
#   return -1 if "src.ll tgt.ll #{OUT_NAME}.ll".split.include?(ns[-2..-1].join("."))
#   raise "not cared name : #{name}"
# end


def generate(name)
  # puts "-----------generate start-------------"
  base = change_to_bc name
  # puts "#{name} #{base}"
  result = run("opt #{OPT_OPTION} #{base}.ll -o #{base}.#{OUT_NAME}.ll -S")
  # puts result
  # puts "-----------generate end---------------"
end

$failed = 0
$success = 0
$not_supported = 0
$validation_failed = 0
$other_fail = []

def classify_stat(result)
  if $?.success?
  then
    raise "process exec success, validation not success" unless result["Validation succeeded."]
    :success
  else if (result["Not_Supported"] or result["not supported"])
       then :not_supported
       else if result["Validation failed."]
            then # puts result; 
              :validation_failed
            else :other_fail end
       end
  end
end

def validate(hint, src, tgt)
  run("llvm-dis #{src}")
  run("llvm-dis #{tgt}")
  result = %x(zsh -c "../ocaml_refact/main.native -d #{src} #{tgt} #{hint} 2>&1")
  classify_stat(result)
end

def clean_triple
  cur = run("pwd").chop
  Dir.chdir("#{$name}")
  run("rm -f *.src.bc *.src.ll *.tgt.bc *.tgt.ll *.hint.json")
  run("rm -f *.#{OUT_NAME}.ll")
  Dir.chdir("#{cur}")
end

make

if File.directory?($name)
  #why not "each"? it is parallized and outputs are mixed.
  clean_triple if CLEAN_TRIPLE_BEFORE
  # Dir["#{$name}/*"].select{|i| (classify i) == 0}.uniq{|n| n.split(".")[0]}.map{|n| generate n}
  # h = Dir["#{$name}/*"].select{|i| (classify i) == 1}.group_by{|n| n.split(".")[0..2].join(".")}
  def get_files() Dir["#{$name}/**/*"].reject{|f| File.directory? f} end
  require "parallel"

  Parallel.map(get_files.select{|i| (classify i) == 0}.uniq{|n| n.split(".")[0...-1].join(".")}){|n| generate n}
  h = get_files.select{|i| (classify i) == 1}.group_by{|n| n.split(".")[0...-2].join(".")}
  h2 = Parallel.map(h) {|k, v|
    # puts "#{k} #{v}";
    raise "not triple : #{k} #{v}" if v.size != 3;
    v.sort!
    validate(v[0], v[1], v[2])
  }.reduce(Hash.new(0)){|s, i| s[i] += 1; s}
  
  total = h2.inject(0){|s, (_, v)| s += v; s}
  puts "total: #{total}"
  raise "should not occur, h.size != total" if h.size != total
  h2.each{|k, v| puts "#{k}: #{v}"}
else
  puts "Does not support file execution for now. Please specify directory name."
end
