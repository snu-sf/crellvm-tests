; ModuleID = './zext_zext/example.bc'

define i32 @foo(i8 %x) {
  %y = zext i8 %x to i16
  %z = zext i16 %y to i32
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
