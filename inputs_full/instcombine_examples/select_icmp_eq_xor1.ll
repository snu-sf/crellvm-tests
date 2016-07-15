define i32 @foo(i32 %x) {
  %w = and i32 %x, 16
  %v = icmp eq i32 %w, 0
  %u = xor i32 %x, 16
  %z = select i1 %v, i32 %x, i32 %u
  ret i32 %z
}

