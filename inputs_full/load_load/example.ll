; ModuleID = './load_load/example.bc'

@glb = global [2 x i32] zeroinitializer
@glb2 = global i32 3

define i32 @foo(i32 %arg) {
  %allc = alloca i32
  %pure = getelementptr inbounds [2 x i32], [2 x i32]* @glb, i32 0, i32 1
  %pure_int = ptrtoint i32* %pure to i32
  %pure_offset = add i32 %pure_int, %arg
  %p = inttoptr i32 %pure_offset to i32*
  %x = load i32, i32* %p
  %q = inttoptr i32 %pure_offset to i32*
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
