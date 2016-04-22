; ModuleID = './sub_add/example.bc'

define i32 @foo(i32 %a, i32 %b) {
  %x = or i32 %a, %b
  %y = xor i32 %a, %b
  %z = sub i32 %x, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
