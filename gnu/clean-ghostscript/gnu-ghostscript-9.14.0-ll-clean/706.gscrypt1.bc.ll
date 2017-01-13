; ModuleID = './gscrypt1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gs_type1_encrypt(i8* %dest, i8* %src, i32 %len, i16* %pstate) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pstate.addr = alloca i16*, align 8
  %state = alloca i16, align 2
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %count = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i16* %pstate, i16** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %pstate.addr, align 8, !tbaa !1
  %2 = load i16, i16* %1, align 2, !tbaa !7
  store i16 %2, i16* %state, align 2, !tbaa !7
  %3 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !1
  store i8* %4, i8** %from, align 8, !tbaa !1
  %5 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  store i8* %6, i8** %to, align 8, !tbaa !1
  %7 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %8, i32* %count, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %from, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !9
  %conv = zext i8 %11 to i32
  %12 = load i16, i16* %state, align 2, !tbaa !7
  %conv1 = zext i16 %12 to i32
  %shr = ashr i32 %conv1, 8
  %xor = xor i32 %conv, %shr
  %conv2 = trunc i32 %xor to i8
  %13 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv2, i8* %13, align 1, !tbaa !9
  %14 = load i8*, i8** %to, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !9
  %conv3 = zext i8 %15 to i32
  %16 = load i16, i16* %state, align 2, !tbaa !7
  %conv4 = zext i16 %16 to i32
  %add = add nsw i32 %conv3, %conv4
  %mul = mul nsw i32 %add, 52845
  %add5 = add nsw i32 %mul, 22719
  %conv6 = trunc i32 %add5 to i16
  store i16 %conv6, i16* %state, align 2, !tbaa !7
  %17 = load i8*, i8** %from, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %from, align 8, !tbaa !1
  %18 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr7, i8** %to, align 8, !tbaa !1
  %19 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %19, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i16, i16* %state, align 2, !tbaa !7
  %21 = load i16*, i16** %pstate.addr, align 8, !tbaa !1
  store i16 %20, i16* %21, align 2, !tbaa !7
  %22 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_type1_decrypt(i8* %dest, i8* %src, i32 %len, i16* %pstate) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pstate.addr = alloca i16*, align 8
  %state = alloca i16, align 2
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %count = alloca i32, align 4
  %ch = alloca i8, align 1
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i16* %pstate, i16** %pstate.addr, align 8, !tbaa !1
  %0 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %pstate.addr, align 8, !tbaa !1
  %2 = load i16, i16* %1, align 2, !tbaa !7
  store i16 %2, i16* %state, align 2, !tbaa !7
  %3 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !1
  store i8* %4, i8** %from, align 8, !tbaa !1
  %5 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  store i8* %6, i8** %to, align 8, !tbaa !1
  %7 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %8, i32* %count, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %10 = load i8*, i8** %from, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %from, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !9
  store i8 %11, i8* %ch, align 1, !tbaa !9
  %12 = load i8, i8* %ch, align 1, !tbaa !9
  %conv = zext i8 %12 to i32
  %13 = load i16, i16* %state, align 2, !tbaa !7
  %conv1 = zext i16 %13 to i32
  %shr = ashr i32 %conv1, 8
  %xor = xor i32 %conv, %shr
  %conv2 = trunc i32 %xor to i8
  %14 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv2, i8* %14, align 1, !tbaa !9
  %15 = load i8, i8* %ch, align 1, !tbaa !9
  %conv3 = zext i8 %15 to i32
  %16 = load i16, i16* %state, align 2, !tbaa !7
  %conv4 = zext i16 %16 to i32
  %add = add nsw i32 %conv3, %conv4
  %mul = mul nsw i32 %add, 52845
  %add5 = add nsw i32 %mul, 22719
  %conv6 = trunc i32 %add5 to i16
  store i16 %conv6, i16* %state, align 2, !tbaa !7
  %17 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr7, i8** %to, align 8, !tbaa !1
  %18 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %18, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i16, i16* %state, align 2, !tbaa !7
  %20 = load i16*, i16** %pstate.addr, align 8, !tbaa !1
  store i16 %19, i16* %20, align 2, !tbaa !7
  %21 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #1
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !3, i64 0}
!9 = !{!3, !3, i64 0}
