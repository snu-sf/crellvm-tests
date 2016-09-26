define i32 @foo(i32 %x) {
  %y = or i32 %x, 1090
  %z = and i32 %y, 1234
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
