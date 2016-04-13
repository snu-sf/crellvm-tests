; ModuleID = './rem_zext/example.bc'

define i32 @foo(i16 %a, i16 %b) {
  %x = zext i16 %a to i32
  %y = zext i16 %b to i32
  %z = urem i32 %x, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
