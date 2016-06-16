define i256 @foo(i128 %x) {
  %y = bitcast i128 %x to i128
  %z = zext i128 %y to i256
  ret i256 %z
}

define i32 @main() {
  ret i32 0
}
