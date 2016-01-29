; ModuleID = './mul_mone/example.bc'

define i32 @foo(i32 %x) {
  %z = mul i32 %x, -1
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
