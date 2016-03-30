; ModuleID = './add_mask/example.bc'

define i64 @foo(i64 %x) {
  %y = and i64 %x, -65536
  %z = add i64 %y, -16777216
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
