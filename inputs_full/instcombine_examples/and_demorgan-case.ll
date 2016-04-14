; ModuleID = './and_demorgan/example.bc'

define i32 @foo(i32 %a, i32 %b) {
  %x = xor i32 %a, -1
  %y = xor i32 %b, -1
  %z = and i32 %x, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
