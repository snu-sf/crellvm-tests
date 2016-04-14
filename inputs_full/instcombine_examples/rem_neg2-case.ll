; ModuleID = './rem_neg2/example.bc'

define i32 @foo(i32 %x) {
  %z = srem i32 %x, -10
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
