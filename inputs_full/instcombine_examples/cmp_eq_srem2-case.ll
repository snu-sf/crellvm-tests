; ModuleID = './cmp_eq_srem2/example.bc'

define i1 @foo(i32 %a, i32 %b) {
  %y = srem i32 %a, %b
  %z = icmp eq i32 %b, %y
  ret i1 %z
}

define i32 @main() {
  ret i32 0
}
