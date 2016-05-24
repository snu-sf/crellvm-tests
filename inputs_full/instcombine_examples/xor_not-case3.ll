define i32 @foo(i32 %x) {
  %y = xor i32 -1, %x
  %z = xor i32 %x, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
