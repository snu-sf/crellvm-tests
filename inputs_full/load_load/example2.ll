; ModuleID = './load_load/example2.bc'

@glb = global i32 2
@glb2 = global i32 3

define i32 @foo(i32 %arg) {
  %allc = alloca i32
  %x = load i32, i32* @glb
  store i32 %arg, i32* @glb2
  %y = load i32, i32* @glb
  %z1 = mul i32 %x, %y
  ret i32 %z1
}

define i32 @main() {
  store i32 3, i32* @glb
  %1 = call i32 @foo(i32 1)
  ret i32 0
}
