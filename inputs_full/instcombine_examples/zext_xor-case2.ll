; ModuleID = './zext_xor/example.bc'

define i8 @foo(i1 %x) {
  %y = xor i1 %x, true
  %z = zext i1 %y to i8
  ret i8 %z
}

define i32 @main() {
  ret i32 0
}
