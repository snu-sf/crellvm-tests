; ModuleID = './sub_sdiv/example3.ll'

define i32 @foo(i32 %x) {
  %w = add i32 -2147483647, -1
  %y = sdiv i32 %x, %w
  %z = sub i32 0, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
