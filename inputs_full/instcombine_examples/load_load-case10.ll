; ModuleID = './load_load/example6_2.bc'

@glb = global [2 x i32] zeroinitializer

define i32 @foo(i32 %arg) {
  %cond = trunc i32 %arg to i1
  br i1 %cond, label %b1, label %b2
b1:
  %ptr1 = getelementptr [2 x i32], [2 x i32]* @glb, i32 0, i32 1
  br label %b3
b2:
  %ptr2 = getelementptr [2 x i32], [2 x i32]* @glb, i32 0, i32 2
  br label %b3
b3:
  %p = phi i32* [ %ptr1, %b1 ], [ %ptr2, %b2 ]
  %x = load i32, i32* %p
  %y = load i32, i32* %p
  %z1 = mul i32 %x, %y
  ret i32 %z1
}

define i32 @main() {
  %savep = getelementptr inbounds [2 x i32], [2 x i32]* @glb, i32 0, i32 1
  store i32 3, i32* %savep
  %1 = call i32 @foo(i32 1)
  ret i32 0
}
