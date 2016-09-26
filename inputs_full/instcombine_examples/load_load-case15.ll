; ModuleID = './load_load/example4.bc'

define i64 @foo(i8 **%arg, i1 %cond, i8* %tt) {
entry:
  %ptr1 = bitcast i8** %arg to i64*
  %v1 = load i64, i64* %ptr1, align 8
  %v2 = load i8*, i8** %arg, align 8
  br label %T

T:
  %z1 = phi i8* [ %v2, %entry ], [ %tt, %T ]
  %res = icmp eq i8* %z1, %tt
  br i1 %cond, label %T, label %end

end:
  %res2 = zext i1 %res to i64
  %res3 = add i64 %res2, %v1
  ret i64 %res3
}

define i32 @main() {
  ret i32 0
}
