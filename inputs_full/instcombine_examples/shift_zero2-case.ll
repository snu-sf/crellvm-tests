; ModuleID = './shift_undef/example.bc'

define i32 @foo(i32 %a) {
  %z = shl i32 0, %a
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
