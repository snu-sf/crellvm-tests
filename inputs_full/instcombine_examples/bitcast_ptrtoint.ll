define i64 @foo(i64* %x) {
  %y = ptrtoint i64* %x to i64
  %z = bitcast i64 %y to i64
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}