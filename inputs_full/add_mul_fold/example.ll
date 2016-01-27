; ModuleID = './add_mul_fold/example.bc'

define i32 @foo(i32 %x) {
  %y = mul i32 %x, 20
  %z = add i32 %y, %x
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
