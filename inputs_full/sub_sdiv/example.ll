; ModuleID = './sub_sdiv/example.bc'

define i32 @foo(i32 %x) {
  %y = sdiv i32 %x, 10
  %z = sub i32 0, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
