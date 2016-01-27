; ModuleID = './sub_const_add/example.bc'

define i32 @foo(i32 %x) {
  %y = add i32 %x, 10
  %z = sub i32 20, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
