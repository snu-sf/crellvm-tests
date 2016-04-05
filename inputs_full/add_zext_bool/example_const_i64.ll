; ModuleID = './add_zext_bool/example_const_i64.ll'

define i64 @foo(i1 %a) {
  %x = zext i1 %a to i64
  %y = add i64 %x, 2147483648
  ret i64 %y
}

define i32 @main() {
  ret i32 0
}
