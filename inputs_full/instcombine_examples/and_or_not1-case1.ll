define i32 @foo(i32 %a, i32 %b) {
  %x = xor i32 %b, -1
  %y = or i32 %x, %a
  %z = and i32 %y, %b
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}