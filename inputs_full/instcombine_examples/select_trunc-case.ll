; ModuleID = './select_trunc/example.bc'

define i16 @foo(i32 %a, i32 %b, i1 %c) {
  %x = trunc i32 %a to i16
  %y = trunc i32 %b to i16
  %z = select i1 %c, i16 %x, i16 %y
  ret i16 %z
}

define i32 @main() {
  ret i32 0
}
