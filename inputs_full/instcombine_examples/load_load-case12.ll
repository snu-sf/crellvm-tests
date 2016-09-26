; ModuleID = './load_load/example4.bc'

define i32 @foo(i32 %arg) {
  %allc1org = alloca i64
  %allc2org = alloca i64
  %allc1 = bitcast i64* %allc1org to i32*
  %allc2 = bitcast i64* %allc2org to i32*
  %x = load i32, i32* %allc1
  store i32 %arg, i32* %allc2
  %y = load i32, i32* %allc1
  %ai1 = ptrtoint i32* %allc1 to i32
  %ai2 = ptrtoint i32* %allc2 to i32
  %aidiff = sub i32 %ai2, %ai1
  %z1 = mul i32 %x, %y
  %z2 = add i32 %z1, %aidiff
  ret i32 %z2
}

define i32 @main() {
  %1 = call i32 @foo(i32 1)
  ret i32 0
}
