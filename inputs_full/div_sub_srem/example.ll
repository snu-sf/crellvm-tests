; ModuleID = './div_sub_srem/example.bc'

define i32 @foo(i32 %x, i32 %y) {
  %b = srem i32 %x, %y
  %a = sub i32 %x, %b
  %z = sdiv i32 %a, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
