; ModuleID = './load_load/example6_2.bc'

@glb = global [2 x i32] zeroinitializer
@glb2 = global i32 3

define i32 @foo(i32 %arg) {
  %allc = alloca i32
  %pure = getelementptr inbounds [2 x i32], [2 x i32]* @glb, i32 0, i32 1
  %q = getelementptr inbounds [2 x i32], [2 x i32]* @glb, i32 0, i32 1
  %p = getelementptr inbounds [2 x i32], [2 x i32]* @glb, i32 0, i32 1
  %x = load i32, i32* %p
  %y = load i32, i32* %q
  %z1 = mul i32 %x, %y
  ret i32 %z1
}

define i32 @main() {
  %savep = getelementptr inbounds [2 x i32], [2 x i32]* @glb, i32 0, i32 1
  store i32 3, i32* %savep
  %1 = call i32 @foo(i32 1)
  ret i32 0
}
