; ModuleID = './add_dist_unary/example.bc'

define i32 @foo(i32 %x, i32 %y) {
  %minusx = sub i32 0, %x
  %minusy = sub i32 0, %y
  %z = add i32 %minusx, %minusy
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
