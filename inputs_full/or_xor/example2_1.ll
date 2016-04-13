; ModuleID = './or_xor/example.bc'

define i32 @foo(i32 %a, i32 %b) {
  %x = xor i32 %a, %b
  %y = xor i32 %b, -1
  %z = and i32 %a, %y
  %w = or i32 %x, %z
  ret i32 %w
}

define i32 @main() {
  ret i32 0
}
