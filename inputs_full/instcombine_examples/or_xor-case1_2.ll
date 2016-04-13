; ModuleID = './or_xor/example.bc'

define i32 @foo(i32 %a, i32 %b) {
  %x = xor i32 -1, %b
  %y = and i32 %a, %x
  %z = xor i32 %a, %b
  %w = or i32 %y, %z
  ret i32 %w
}

define i32 @main() {
  ret i32 0
}
