; ModuleID = './cmp_ne_sub/example.bc'

define i1 @foo(i32 %a, i32 %b, i32 %c) {
  %x = sub i32 %a, %c
  %y = sub i32 %b, %c
  %z = icmp eq i32 %x, %y
  ret i1 %z
}

define i32 @main() {
  ret i32 0
}
