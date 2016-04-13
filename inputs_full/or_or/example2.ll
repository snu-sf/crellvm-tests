; ModuleID = './or_or/example.ll'

define i32 @foo(i32 %a, i32 %b) {
  %x = xor i32 -1, %a
  %y = and i32 %x, %b
  %z = or i32 %y, %a
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
