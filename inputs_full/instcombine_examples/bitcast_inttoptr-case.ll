define i16* @foo(i16 %x) {
  %y = inttoptr i16 %x to i32*
  %z = bitcast i32* %y to i16*
  ret i16* %z
}

define i32 @main() {
  ret i32 0
}