define double @foo(i8 %x) {
  %y = sext i8 %x to i16
  %z = sitofp i16 %y to double
  ret double %z
}

define i32 @main() {
  ret i32 0
}
