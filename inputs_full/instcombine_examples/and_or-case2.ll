; ModuleID = './and_or/example2.bc'

define i32 @foo(i32 %x, i32 %a) {
  %y = or i32 %a, %x
  %z = and i32 %y, %x
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
