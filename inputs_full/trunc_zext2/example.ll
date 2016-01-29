; ModuleID = './trunc_zext2/example.bc'

define i16 @foo(i8 %x) {
  %y = zext i8 %x to i32
  %z = trunc i32 %y to i16
  ret i16 %z
}

define i32 @main() {
  ret i32 0
}
