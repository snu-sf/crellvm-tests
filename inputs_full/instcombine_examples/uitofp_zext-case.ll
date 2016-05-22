define float @foo(i32 %x) {
  %y = zext i32 %x to i40
  %z = uitofp i40 %y to float
  ret float %z
}

define i32 @main() {
  ret i32 0
}
