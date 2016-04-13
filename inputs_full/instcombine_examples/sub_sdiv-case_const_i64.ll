; ModuleID = './sub_sdiv/example3.ll'

define i64 @foo(i64 %x) {
  %w = add i64 -21474836470, -100000000000
  %y = sdiv i64 %x, %w
  %z = sub i64 0, %y
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
