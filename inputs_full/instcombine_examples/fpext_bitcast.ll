; ModuleID = './fptoui_fpext/example.bc'

define double @foo(float %x) {
  %y = bitcast float %x to float
  %z = fpext float %y to double
  ret double %z
}

define i32 @main() {
  ret i32 0
}
