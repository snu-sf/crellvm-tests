; ModuleID = './mul_shl/example.bc'

define i32 @foo(i32 %x, i32 %a) {
  %y = shl i32 1, %a
  %z = mul i32 %y, %x
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
