define i48 @foo(i32 %x) {
  %y = zext i32 %x to i40
  %z = sext i40 %y to i48
  ret i48 %z
}

define i32 @main() {
  ret i32 0
}
