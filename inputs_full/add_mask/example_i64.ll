; ModuleID = './add_mask/example.bc'

define i64 @foo(i64 %x) {
  %y = and i64 %x, -4294967296
  %z = add i64 %y, 9999999999999
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
