; ModuleID = './add_sub2/example.bc'

define i32 @foo(i32 %x, i32 %y) {
  %minusy = sub i32 0, %y
  %z = add i32 %minusy, %x
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
