; ModuleID = './zext_xor/example.bc'

define i32 @foo(i1 %x) {
  %y = xor i1 %x, true
  %z = zext i1 %y to i32
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
