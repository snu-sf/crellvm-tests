; ModuleID = './add_select_zero/example.bc'

define i32 @foo(i1 %cond, i32 %x, i32 %y, i32 %z) {
  %r = add i32 %y, %x
  %s = add i32 %x, %z
  %t0 = select i1 %cond, i32 %r, i32 %s
  ret i32 %t0
}

define i32 @main() {
  ret i32 0
}
