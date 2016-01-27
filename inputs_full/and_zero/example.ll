; ModuleID = './and_zero/example.bc'

define i32 @foo(i32 %y) {
  %z = and i32 %y, 0
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
