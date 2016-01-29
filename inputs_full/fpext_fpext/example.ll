; ModuleID = './fpext_fpext/example.bc'

define fp128 @foo(float %x) {
  %y = fpext float %x to double
  %z = fpext double %y to fp128
  ret fp128 %z
}

define i32 @main() {
  ret i32 0
}
