; ModuleID = './select_const_gt/example.bc'

define i32 @foo(i32 %x) {
  %b = icmp ugt i32 %x, 10
  %z = select i1 %b, i32 %x, i32 11
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
