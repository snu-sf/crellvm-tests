raise "Argument # should be >= 1, but it is #{ARGV.length}" unless ARGV.length >= 1

$name = ARGV[0]
OPT_OPTION = ARGV[1].nil?? "-basicaa -gvn" : ARGV[2]
OUT_NAME = "output"

def run(cmd, log = "Something Went Wrong!")
  result = %x(#{cmd} 2>&1) 
  !$?.success?? (raise "#{log} --> #{cmd}") : result
end


def make 
  a = run("pwd").chop
  Dir.chdir("#{a}/../.build/llvm-obj")
  run("make -j24")
  Dir.chdir("#{a}/../")
  run("make refact -j24")
  Dir.chdir("#{a}")
end

make

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
    run("llvm-dis #{base}.bc")
  when "ll"
    run("llvm-as #{base}.ll")
  else
    raise "No file extension matched"
  end
  base
end

def classify(name)
  ns = name.split(".")
  #2 : *.ll or *.bc or *.cpp or *.c or blah
  return 0 if ns.size == 2 && "c cpp bc ll".split.include?(ns.last)
  #3 : hint triple (*.src.bc, *.tgt.bc, *.hint.json)
  # do not check ns.size, AndOrXor.pow2.0.src.bc
  return 1 if "hint.json src.bc tgt.bc".split.include?(ns[-2..-1].join("."))
  return -1 if "src.ll tgt.ll #{OUT_NAME}.ll".split.include?(ns[-2..-1].join("."))
  raise "not cared name : #{name}"
end


def generate(name)
  puts "-----------generate start-------------"
  base = change_to_bc name
  puts "#{name} #{base}"
  result = run("opt #{OPT_OPTION} #{base}.ll -o #{base}.#{OUT_NAME}.ll")
  puts result
  puts "-----------generate end---------------"
end

$failed = 0
$success = 0
$not_supported = 0
$aborted = 0

def validate(src, tgt, hint)
  run("llvm-dis #{src}")
  run("llvm-dis #{tgt}")
  result = %x(../ocaml_refact/main.native #{src} #{tgt} #{hint} 2>&1)
  $?.success?? $success += 1 : $failed += 1
  $not_supported += 1 if result["Not_Supported"]
  $aborted += 1 if result["Aborted"]
end

if File.directory?($name)
  #why not "each"? it is parallized and outputs are mixed.
  Dir["#{$name}/*"].select{|i| (classify i) == 0}.uniq{|n| n.split(".")[0]}.map{|n| generate n}
  h = Dir["#{$name}/*"].select{|i| (classify i) == 1}.group_by{|n| n.split(".")[0..2].join(".")}
  h.each{|k,v|
    puts "#{k} #{v}";
    raise "not triple : #{v}" if v.size != 3;
    run("llvm-dis #{v[0]}")
    run("llvm-dis #{v[1]}")
    validate(v[0], v[1], v[2])
  }
else
  generate $name
end

puts "total: #{h.size}"
puts "failed: #{$failed}"
puts "success: #{$success}"
puts "not_supported: #{$not_supported}"
puts "aborted: #{$aborted}"

