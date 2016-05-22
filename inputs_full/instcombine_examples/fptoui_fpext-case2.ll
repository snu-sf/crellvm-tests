define i32 @foo(float %x) {
  %y = fpext float %x to double
  %z = fptoui double %y to i32
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
