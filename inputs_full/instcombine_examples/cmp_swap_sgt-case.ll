; ModuleID = './cmp_swap_sgt/example.bc'

define i1 @foo(i32 %a, i32 %b) {
  %y = add i32 %a, %b
  %z = icmp sgt i32 30, %y
  ret i1 %z
}

define i32 @main() {
  ret i32 0
}
