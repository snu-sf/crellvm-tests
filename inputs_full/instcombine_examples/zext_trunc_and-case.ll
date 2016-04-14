; ModuleID = './zext_trunc_and/example.bc'

define i32 @foo(i32 %a) {
  %x = trunc i32 %a to i16
  %y = and i16 %x, 20
  %z = zext i16 %y to i32
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
