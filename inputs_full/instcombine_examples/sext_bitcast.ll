define i256 @foo(i64 %x) {
  %y0 = sext i64 %x to i128
  %y = trunc i128 %y0 to i64
  %z = sext i64 %y to i256
  ret i256 %z
}

define i32 @main() {
  ret i32 0
}
