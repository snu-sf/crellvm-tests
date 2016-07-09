define i32 @foo(i32 %x) {
  %y = inttoptr i32 %x to i32*
  %z = ptrtoint i32* %y to i32
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
