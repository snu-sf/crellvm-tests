; ModuleID = './sub_const_not/example_i64.ll'

define i64 @foo(i64 %x) {
  %y = xor i64 %x, -1
  %z = sub i64 999999999999, %y
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
