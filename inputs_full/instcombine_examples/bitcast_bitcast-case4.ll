define float* @foo(i32* %x) {
  %y = bitcast i32* %x to { double, double }*
  %z = bitcast {double , double}* %y to float*
  ret float* %z
}

define i32 @main() {
  ret i32 0
}
