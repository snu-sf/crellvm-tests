; ModuleID = './sub_shl/example_const3.ll'

define i32 @foo(i32 %mx, i32 %y) {
  %z = shl i32 -2147483648, %y
  %w = sub i32 0, %z
  ret i32 %w
}

define i32 @main() {
  ret i32 0
}
