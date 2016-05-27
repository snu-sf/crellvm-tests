; ModuleID = './xor_zero/example.bc'

define i32 @foo(i32 %y) {
  %z = xor i32 0, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
