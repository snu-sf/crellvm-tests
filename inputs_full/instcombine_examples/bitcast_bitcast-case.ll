define float* @foo(i32* %x) {
  %y = bitcast i32* %x to i64*
  %z = bitcast i64* %y to float*
  ret float* %z
}

define i32 @main() {
  ret i32 0
}
