; ModuleID = './fptoui_fpext/example.bc'

define float @foo(double %x) {
  %y = bitcast double %x to double
  %z = fptrunc double %y to float
  ret float %z
}

define i32 @main() {
  ret i32 0
}
