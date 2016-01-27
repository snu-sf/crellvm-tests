; ModuleID = './add_onebit/example.bc'

define i1 @foo(i1 %x, i1 %y) {
  %z = add i1 %x, %y
  ret i1 %z
}

define i32 @main() {
  ret i32 0
}
