; ModuleID = './load_load/example4.bc'

define i64 @foo(i8 **%arg, i8 *%arg2, i1 %cond, i8* %tt) {
entry:
  %ptr1 = bitcast i8** %arg to i8*
  br label %T

T:
  %z1 = phi i8* [ %arg2, %entry ], [ %ptr1, %T ]
  %z2 = phi i8* [ %arg2, %entry ], [ %ptr1, %T ]
  %res = icmp eq i8* %z1, %tt
  %v1 = load i8, i8* %z1, align 8
  %v2 = load i8, i8* %z2, align 8

  %addres = add i8 %v1, %v2
  store i8 %addres, i8 *%tt
  br i1 %cond, label %T, label %end

end:
  ret i64 1
}

define i32 @main() {
  ret i32 0
}
