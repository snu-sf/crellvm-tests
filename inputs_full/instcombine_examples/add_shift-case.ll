; ModuleID = './add_shift/example.bc'

define i32 @foo(i32 %x) {
  %y = add i32 %x, %x
  ret i32 %y
}

define i32 @main() {
  ret i32 0
}
