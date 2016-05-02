; ModuleID = './or_xor/example.bc'

define i32 @foo(i32 %a, i32 %b) {
  %y = xor i32 %b, %a
  %z = or i32 %a, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
