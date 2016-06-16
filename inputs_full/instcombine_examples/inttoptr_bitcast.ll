define i8* @foo(i64 %x) {
  %y2 = zext i64 %x to i128
  %y = trunc i128 %y2 to i64
  %z = inttoptr i64 %y to i8*
  ret i8* %z
}

define i32 @main() {
  ret i32 0
}
