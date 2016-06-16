define i96 @foo(i128 %x) {
  %y = bitcast i128 %x to i128
  %z = trunc i128 %y to i96
  ret i96 %z
}

define i32 @main() {
  ret i32 0
}
