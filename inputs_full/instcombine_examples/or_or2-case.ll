; ModuleID = './or_or/example.ll'

define i32 @foo(i32 %a, i32 %b) {
  %x = and i32 %a, %b
  %y = xor i32 %a, -1
  %z = or i32 %x, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
