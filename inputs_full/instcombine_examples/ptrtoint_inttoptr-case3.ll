define i128 @foo(i128 %x) {
  %y = inttoptr i128 %x to i64*
  %z = ptrtoint i64* %y to i128
  ret i128 %z
}

define i32 @main() {
  ret i32 0
}
