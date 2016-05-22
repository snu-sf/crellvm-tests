define i8 @foo(i32 %x) {
  %y = trunc i32 %x to i16
  %z = trunc i16 %y to i8
  ret i8 %z
}

define i32 @main() {
  ret i32 0
}
