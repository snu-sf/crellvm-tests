; ModuleID = './sub_zext_bool/example.bc'

define i32 @foo(i1 %b) {
  %y = zext i1 %b to i32
  %z = sub i32 10, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
