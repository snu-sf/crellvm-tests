; ModuleID = './add_assoc/example.bc'

define i32 @foo(i32 %x) {
  %y = add i32 %x, 1
  %z = add i32 %y, 2
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
