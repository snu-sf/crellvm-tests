define fp128 @foo(float %x) {
  %y = fpext float %x to x86_fp80
  %z = fpext x86_fp80 %y to fp128
  ret fp128 %z
}

define i32 @main() {
  ret i32 0
}
