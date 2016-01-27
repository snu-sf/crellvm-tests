; ModuleID = './sub_mul2/example.bc'

define i32 @foo(i32 %x) {
  %y = mul i32 %x, 20
  %z = sub i32 %y, %x
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
