; ModuleID = './sext_sext/example.bc'

define i32 @foo(i8 %x) {
  %y = sext i8 %x to i16
  %z = sext i16 %y to i32
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
