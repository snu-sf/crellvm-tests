; ModuleID = './and_or/example3.bc'

define i32 @foo(i32 %x, i32 %a) {
  %y = or i32 %x, %a
  %z = and i32 %x, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
