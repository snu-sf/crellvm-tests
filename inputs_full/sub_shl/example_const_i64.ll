; ModuleID = './sub_shl/example_const4.ll'

define i64 @foo(i64 %mx, i64 %y) {
  %z = shl i64 -9876543210, %y
  %w = sub i64 0, %z
  ret i64 %w
}

define i32 @main() {
  ret i32 0
}
