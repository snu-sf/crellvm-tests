; ModuleID = './sub_add/example.bc'

define i32 @foo(i32 %x, i32 %y) {
  %z = sub i32 %x, -3
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
