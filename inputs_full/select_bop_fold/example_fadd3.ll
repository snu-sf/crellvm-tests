; ModuleID = './add_select_zero/example.bc'

define float @foo(i1 %cond, float %x, float %y, float %z) {
  %r = fadd float %y, %x
  %s = fadd float %z, %x
  %t0 = select i1 %cond, float %r, float %s
  ret float %t0
}

define i32 @main() {
  ret i32 0
}
