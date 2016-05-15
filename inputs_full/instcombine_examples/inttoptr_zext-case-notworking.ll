define i8* @foo(i64 %x) {
  %y = zext i64 %x to i80
  %z = inttoptr i80 %y to i8*
  ret i8* %z
}

define i32 @main() {
  ret i32 0
}
