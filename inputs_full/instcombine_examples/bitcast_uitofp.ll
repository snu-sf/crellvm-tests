define float @foo(i32 %x) {
  %y = uitofp i32 %x to float
  %z = bitcast float %y to float
  ret float %z
}

define i32 @main() {
  ret i32 0
}
