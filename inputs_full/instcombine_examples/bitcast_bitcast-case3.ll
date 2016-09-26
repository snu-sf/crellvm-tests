define float* @foo(i32* %x) {
  %y = bitcast i32* %x to void (i32, i32)*
  %z = bitcast void (i32, i32)* %y to float*
  ret float* %z
}

define i32 @main() {
  ret i32 0
}
