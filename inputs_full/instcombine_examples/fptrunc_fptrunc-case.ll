; ModuleID = './fptrunc_fptrunc/example.bc'

define float @foo(fp128 %x) {
  %y = fptrunc fp128 %x to double
  %z = fptrunc double %y to float
  ret float %z
}

define i32 @main() {
  ret i32 0
}
