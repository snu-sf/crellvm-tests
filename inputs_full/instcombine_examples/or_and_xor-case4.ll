; ModuleID = './or_and/example.bc'

define i32 @foo(i32 %b, i32 %a) {
  %x = and i32 %a, %b
  %y = xor i32 %b, %a
  %z = or i32 %y, %x
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
