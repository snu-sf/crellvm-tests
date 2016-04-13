; ModuleID = './sub_mone/example.bc'

define i32 @foo(i32 %x) {
  %z = sub i32 -1, %x
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
