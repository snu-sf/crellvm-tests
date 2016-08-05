define i32 @foo(i32 %x) {
  %y = xor i32 4, %x
  %z = and i32 %y, 12
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
