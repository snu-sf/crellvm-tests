define i64 @foo(i32* %x) {
  %y = ptrtoint i32* %x to i80
  %z = trunc i80 %y to i64
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
