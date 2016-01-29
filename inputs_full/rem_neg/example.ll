; ModuleID = './rem_neg/example.bc'

define i32 @foo(i32 %x, i32 %y) {
  %my = sub i32 0, %y
  %z = srem i32 %x, %my
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
