; ModuleID = './sub_remove2/example.bc'

define i32 @foo(i32 %a, i32 %b) {
  %y = sub i32 %a, %b
  %z = sub i32 %y, %a
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
