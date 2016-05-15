define i64 @foo(fp128* %x) {
  %y = bitcast fp128* %x to i128*
  %z = ptrtoint i128* %y to i64
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
