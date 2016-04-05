; ModuleID = './sub_const_add/example.bc'

define i64 @foo(i64 %x) {
  %y = add i64 %x, 100000000000
  %z = sub i64 200000000000, %y
  ret i64 %z
}

define i64 @main() {
  ret i64 0
}
