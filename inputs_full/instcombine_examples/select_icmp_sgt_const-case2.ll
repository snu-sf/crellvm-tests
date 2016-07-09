; ModuleID = './select_const_gt/example.bc'

define i32 @foo(i32 %x) {
  %b = icmp sgt i32 %x, 2147483647
  %z = select i1 %b, i32 %x, i32 -2147483648
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
