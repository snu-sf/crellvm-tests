; ModuleID = './cmp_ugt_onebit/example.bc'

define i1 @foo(i1 %a, i1 %b) {
  %z = icmp ugt i1 %a, %b
  ret i1 %z
}

define i32 @main() {
  ret i32 0
}
