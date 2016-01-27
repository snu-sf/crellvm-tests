; ModuleID = './select_add/example.bc'

define i32 @foo(i32 %a, i32 %b, i32 %c, i1 %cond) {
  %x = add i32 %a, %b
  %y = add i32 %a, %c
  %z = select i1 %cond, i32 %x, i32 %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
