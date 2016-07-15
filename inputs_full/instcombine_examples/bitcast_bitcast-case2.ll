define float* @foo(i32* %x) {
  %y = bitcast i32* %x to i32 (i32, i32)*
  %z = bitcast i32 (i32, i32)* %y to float*
  ret float* %z
}

define i32 @main() {
  ret i32 0
}
