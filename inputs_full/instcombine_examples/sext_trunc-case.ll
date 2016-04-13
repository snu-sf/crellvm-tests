; ModuleID = './sext_trunc/example.bc'

define i32 @foo(i32 %x) {
  %y = trunc i32 %x to i8
  %z = sext i8 %y to i32
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
