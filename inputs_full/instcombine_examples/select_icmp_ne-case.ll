define i32 @foo(i32 %x, i32 %u) {
  %v = icmp ne i32 %x, 10
  %z = select i1 %v, i32 %u, i32 %x
  ret i32 %z
}

