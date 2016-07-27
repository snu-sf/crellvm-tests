define i32 @foo(i32 %x) {
  %y = or i32 %x, 2308
  %z = and i32 %y, 2327
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
