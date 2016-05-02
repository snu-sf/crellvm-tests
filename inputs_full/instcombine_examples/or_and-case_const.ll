; ModuleID = './or_and/example4.bc'

@glb = global i32 3
define i32 @foo(i32 %x, i32 %a) {
  %y = and i32 1, ptrtoint (i32* @glb to i32)
  %z = or i32 %y, 1
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
