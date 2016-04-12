; ModuleID = './or_xor2/example.ll'

define i32 @foo(i32 %a, i32 %b) {
  %x1 = xor i32 -1, %b
  %y1 = and i32 %x1, %a
  %x2 = xor i32 -1, %a
  %y2 = and i32 %b, %x2
  %z = or i32 %y1, %y2
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
