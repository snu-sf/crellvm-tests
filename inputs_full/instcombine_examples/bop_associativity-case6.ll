; ModuleID = './add_assoc/example.bc'

define i32 @foo(i32 %x) {
  %y = mul i32 %x, 1
  %z = mul i32 %y, 2
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
