; ModuleID = './fptrunc_fpext/example.bc'

define float @foo(float %x) {
  %y = fpext float %x to double
  %z = fptrunc double %y to float
  ret float %z
}

define i32 @main() {
  ret i32 0
}
