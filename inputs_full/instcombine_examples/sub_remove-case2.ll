; ModuleID = './sub_remove/example2.bc'

define i32 @foo(i32 %a, i32 %b) {
  %y = add i32 %b, %a
  %z = sub i32 %a, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
