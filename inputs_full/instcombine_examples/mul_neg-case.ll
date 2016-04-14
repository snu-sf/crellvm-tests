; ModuleID = './mul_neg/example.bc'

define i32 @foo(i32 %x, i32 %y) {
  %mx = sub i32 0, %x
  %my = sub i32 0, %y
  %z = mul i32 %mx, %my
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
