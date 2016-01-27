; ModuleID = './sub_onebit/example.bc'

define i1 @foo(i1 %x, i1 %y) {
  %z = sub i1 %x, %y
  ret i1 %z
}

define i32 @main() {
  ret i32 0
}
