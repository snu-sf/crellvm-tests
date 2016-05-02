; ModuleID = './or_not/example2.bc'

define i32 @foo(i32 %x) {
  %y = xor i32 -1, %x
  %z = or i32 %x, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
