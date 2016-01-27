; ModuleID = './load_load/example5.bc'

@glb = global i32 3

define i32 @foo(i32 %arg) {
  %allc = alloca i32
  %x = load i32, i32* @glb
  store i32 %arg, i32* %allc
  %y = load i32, i32* @glb
  %ai = ptrtoint i32* %allc to i32
  %z1 = mul i32 %x, %y
  %z2 = add i32 %z1, %ai
  ret i32 %z2
}

define i32 @main() {
  store i32 3, i32* @glb
  %1 = call i32 @foo(i32 1)
  ret i32 0
}
