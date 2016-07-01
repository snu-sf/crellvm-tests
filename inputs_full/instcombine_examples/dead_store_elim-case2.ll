; ModuleID = './dead_elim/example.bc'

define i32 @foo() {
bb:
  %p = alloca i32
  br label %bb2
bb2:
  store i32 3, i32* %p
  ret i32 0
}

define i32 @main() {
  ret i32 0
}
