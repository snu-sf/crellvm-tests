; ModuleID = './mul_shl/example2.bc'

define i32 @foo(i32 %a, i32 %b) {
  %x = add i32 %a, %b
  %y = shl i32 1, %a
  %z = mul i32 %x, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
