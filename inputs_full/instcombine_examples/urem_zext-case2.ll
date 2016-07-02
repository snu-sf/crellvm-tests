; ModuleID = './div_mone/example.bc'

define i64 @foo(i32 %a, i32 %b) {
  %y1 = zext i32 %a to i64
  %z = urem i64 %y1, 123456
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
