; ModuleID = './load_store/example.bc'

define i32 @foo() {
  %p = alloca i32
  store i32 3, i32* %p
  %z = load i32, i32* %p
  ret i32 %z
}

define i32 @main() {
  ret i32 0
}
