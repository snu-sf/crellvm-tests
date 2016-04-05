; ModuleID = './sub_add/example.bc'

define i64 @foo(i64 %x, i64 %y) {
  %z = sub i64 %x, -99999999999999
  ret i64 %z
}

define i32 @main() {
  ret i32 0
}
