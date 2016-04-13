; ModuleID = './load_load/example3.bc'

@glb = global i32 3

define i32 @foo(i32 %arg) {
  %allc = alloca i32
  %x = load i32, i32* %allc
  store i32 %arg, i32* @glb
  %y = load i32, i32* %allc
  %z1 = mul i32 %x, %y
  ret i32 %z1
}

define i32 @main() {
  store i32 3, i32* @glb
  %1 = call i32 @foo(i32 1)
  ret i32 0
}
