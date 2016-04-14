; ModuleID = './cmp_ne_srem/example.bc'

define i1 @foo(i32 %a, i32 %b) {
  %y = srem i32 %a, %b
  %z = icmp ne i32 %y, %b
  ret i1 %z
}

define i32 @main() {
  ret i32 0
}
