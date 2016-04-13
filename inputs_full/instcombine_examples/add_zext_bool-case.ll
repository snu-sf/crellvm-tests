; ModuleID = './add_zext_bool/example.bc'

define i32 @foo(i1 %a) {
  %x = zext i1 %a to i32
  %y = add i32 %x, 1
  ret i32 %y
}

define i32 @main() {
  ret i32 0
}
