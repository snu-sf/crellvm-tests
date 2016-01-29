; ModuleID = './trunc_onebit/example.bc'

define i1 @foo(i32 %y) {
  %z = trunc i32 %y to i1
  ret i1 %z
}

define i32 @main() {
  ret i32 0
}
