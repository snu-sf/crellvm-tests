; ModuleID = './add_sub/example.bc'

define i64 @foo(i32 %x, i32 %y) {
  %sx = sext i32 %x to i64
  %z = add i64 %sx, -1
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
