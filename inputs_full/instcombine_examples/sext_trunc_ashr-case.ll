; ModuleID = './and_not_or/example.bc'

define i32 @foo(i32 %a, i32 %b) {
  %x = trunc i32 %a to i16
  %z = sext i16 %x to i32
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
