; ModuleID = './add_const_not/example.bc'

define i64 @foo(i64 %x) {
  %y = xor i64 %x, -1
  %z = add i64 %y, 21474836477
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
