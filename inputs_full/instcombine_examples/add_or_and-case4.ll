; ModuleID = './add_sub/example.bc'

define i32 @foo(i32 %a, i32 %b) {
  %x = or i32 %a, %b
  %y = and i32 %b, %a
  %z = add i32 %y, %x
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
