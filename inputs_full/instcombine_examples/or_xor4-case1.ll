; ModuleID = './or_xor/example.bc'

define i32 @foo(i32 %x, i32 %b) {
  %a = xor i32 %x, -1
  %y = xor i32 %a, %b
  %z = or i32 %x, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
