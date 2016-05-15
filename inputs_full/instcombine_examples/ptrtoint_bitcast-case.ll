define i16 @foo(float* %x) {
  %y = bitcast float* %x to i32*
  %z = ptrtoint i32* %y to i16
  ret i16 %z
}

define i32 @main() {
  ret i32 0
}
