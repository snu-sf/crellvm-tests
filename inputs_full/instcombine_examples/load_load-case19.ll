; ModuleID = './load_load/example4.bc'

@glb = external global [2 x i32], align 8

define i32 @foo(i8 **%arg, i8 *%arg2, i1 %cond, i8* %tt) {
entry:
  %v1 = load i32, i32 * bitcast ([2 x i32]* @glb to i32*)
  %v2 = load i32, i32 * getelementptr inbounds ([2 x i32], [2 x i32]* @glb, i64 0, i32 0)
  %res = add i32 %v1, %v2
  ret i32 %res
}

define i32 @main() {
  ret i32 0
}
