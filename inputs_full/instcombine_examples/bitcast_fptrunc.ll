define float @foo(double %x) {
  %y = fptrunc double %x to float
  %z = bitcast float %y to float
  ret float %z
}

define i32 @main() {
  ret i32 0
}
