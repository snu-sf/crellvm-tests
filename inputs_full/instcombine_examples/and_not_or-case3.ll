; ModuleID = './and_not_or/example3.bc'

define i32 @foo(i32 %a, i32 %b) {
  %nb = xor i32 %b, -1
  %y = or i32 %nb, %a
  %z = and i32 %b, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}