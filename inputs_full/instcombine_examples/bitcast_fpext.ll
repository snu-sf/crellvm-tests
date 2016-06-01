define double @foo(float %x) {
  %y = fpext float %x to double
  %z = bitcast double %y to double
  ret double %z
}

define i32 @main() {
  ret i32 0
}
