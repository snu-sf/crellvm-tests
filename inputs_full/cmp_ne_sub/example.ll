; ModuleID = './cmp_ne_sub/example.bc'

define i1 @foo(i32 %a, i32 %b) {
  %y = sub i32 %a, %b
  %z = icmp ne i32 %y, 0
  ret i1 %z
}

define i32 @main() {
  ret i32 0
}
