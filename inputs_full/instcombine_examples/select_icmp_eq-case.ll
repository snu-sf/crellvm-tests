define i32 @foo(i32 %x, i32 %u) {
  %v = icmp eq i32 %x, 10
  %z = select i1 %v, i32 %x, i32 %u
  ret i32 %z
}

