; ModuleID = './div_sub_urem/example.bc'

define i32 @foo(i32 %x, i32 %y) {
  %b = urem i32 %x, %y
  %a = sub i32 %x, %b
  %z = udiv i32 %a, %y
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
