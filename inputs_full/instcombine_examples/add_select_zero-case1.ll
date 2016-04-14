; ModuleID = './add_select_zero/example1.bc'

define i32 @foo(i1 %cond, i32 %n, i32 %a) {
  %x = sub i32 %n, %a
  %y = select i1 %cond, i32 0, i32 %x
  %z = add i32 %y, %a
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
