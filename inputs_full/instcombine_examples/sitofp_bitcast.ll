define double @foo(i64 %x) {
  %y = bitcast i64 %x to i64
  %z = sitofp i64 %y to double
  ret double %z
}

define i32 @main() {
  ret i32 0
}
