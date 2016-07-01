; ModuleID = './dead_elim/example.bc'

define i32 @foo() {
bb:
  %p = alloca i32
  %q = alloca i32
  store i32 3, i32* %p
  store i32 5, i32* %q
  %z = load i32, i32* %q
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
