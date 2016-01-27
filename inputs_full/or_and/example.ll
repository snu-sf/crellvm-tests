; ModuleID = './or_and/example.bc'

define i32 @foo(i32 %x, i32 %a) {
  %y = and i32 %x, %a
  %z = or i32 %y, %x
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
