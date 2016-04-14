; ModuleID = './xor_same/example.bc'

define i32 @foo(i32 %y) {
  %z = xor i32 %y, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
