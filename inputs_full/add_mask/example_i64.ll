; ModuleID = './add_mask/example.bc'

define i32 @foo(i32 %x) {
  %y = and i64 %x, -65536
  %z = add i64 %y, -16777216
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
