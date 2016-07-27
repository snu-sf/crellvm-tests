define i32 @foo(i32 %x) {
  %y = or i32 %x, 37
  %z = and i32 %y, 311
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
