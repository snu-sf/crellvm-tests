; ModuleID = './or_and/example2.bc'

define i32 @foo(i32 %x, i32 %a) {
  %y = and i32 %a, %x
  %z = or i32 %y, %x
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}