; ModuleID = './cmp_ne_add/example.bc'

define i1 @foo(i32 %a, i32 %b, i32 %c) {
  %x = add i32 %a, %c
  %y = add i32 %b, %c
  %z = icmp eq i32 %x, %y
  ret i1 %z
}

define i32 @main() {
  ret i32 0
}
