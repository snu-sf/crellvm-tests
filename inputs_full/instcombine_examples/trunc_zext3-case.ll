; ModuleID = './trunc_zext3/example.bc'

define i8 @foo(i16 %x) {
  %y = zext i16 %x to i32
  %z = trunc i32 %y to i8
  ret i8 %z
}

define i32 @main() {
  ret i32 0
}
