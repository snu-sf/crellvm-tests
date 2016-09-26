define i32 @foo(i32 %x) {
  %y = xor i32 %x, 135
  %z = and i32 %y, 84
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
