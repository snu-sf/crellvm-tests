; ModuleID = './add_assoc/example.bc'

define i64 @foo(i64 %x) {
  %y = add i64 %x, 9223372036854775807
  %z = add i64 %y, -9223372036854775808
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
