define i32 @foo(i32 %x) {
  %v = icmp slt i32 %x, 0
  %u = xor i32 %x, -2147483648
  %z = select i1 %v, i32 %x, i32 %u
  ret i32 %z
}
