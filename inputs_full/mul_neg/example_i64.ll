; ModuleID = './mul_neg/example.bc'

define i64 @foo(i64 %x, i64 %y) {
  %mx = sub i64 0, %x
  %z = mul i64 %mx, -99999999999
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
