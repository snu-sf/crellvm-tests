; ModuleID = './add_assoc/example.bc'

define i64 @foo(i64 %x) {
  %y = add i64 %x, 100000000001
  %z = add i64 %y, 200000000002
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
