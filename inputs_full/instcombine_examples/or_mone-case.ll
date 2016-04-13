; ModuleID = './or_mone/example.bc'

define i32 @foo(i32 %y) {
  %z = or i32 %y, -1
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
