; ModuleID = './sitofp_sext/example.bc'

define float @foo(i16 %x) {
  %y = sext i16 %x to i32
  %z = sitofp i32 %y to float
  ret float %z
}

define i32 @main() {
  ret i32 0
}
