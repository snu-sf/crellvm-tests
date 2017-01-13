; ModuleID = './raw.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_raw = type { i8, i32, i32, i32, i8*, i8*, i8* }

; Function Attrs: nounwind uwtable
define %struct.opj_raw* @opj_raw_create() #0 {
entry:
  %raw = alloca %struct.opj_raw*, align 8
  %0 = bitcast %struct.opj_raw** %raw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 40) #3
  %1 = bitcast i8* %call to %struct.opj_raw*
  store %struct.opj_raw* %1, %struct.opj_raw** %raw, align 8, !tbaa !1
  %2 = load %struct.opj_raw*, %struct.opj_raw** %raw, align 8, !tbaa !1
  %3 = bitcast %struct.opj_raw** %raw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #1
  ret %struct.opj_raw* %2
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @opj_raw_destroy(%struct.opj_raw* %raw) #0 {
entry:
  %raw.addr = alloca %struct.opj_raw*, align 8
  store %struct.opj_raw* %raw, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %0 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_raw* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %2 = bitcast %struct.opj_raw* %1 to i8*
  call void @free(i8* %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @opj_raw_numbytes(%struct.opj_raw* %raw) #0 {
entry:
  %raw.addr = alloca %struct.opj_raw*, align 8
  store %struct.opj_raw* %raw, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %0 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %0, i32 0, i32 4
  %1 = load i8*, i8** %bp, align 8, !tbaa !5
  %2 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %2, i32 0, i32 5
  %3 = load i8*, i8** %start, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @opj_raw_init_dec(%struct.opj_raw* %raw, i8* %bp, i32 %len) #0 {
entry:
  %raw.addr = alloca %struct.opj_raw*, align 8
  %bp.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.opj_raw* %raw, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  store i8* %bp, i8** %bp.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !9
  %0 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %1 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %1, i32 0, i32 5
  store i8* %0, i8** %start, align 8, !tbaa !8
  %2 = load i32, i32* %len.addr, align 4, !tbaa !9
  %3 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %lenmax = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %3, i32 0, i32 2
  store i32 %2, i32* %lenmax, align 4, !tbaa !10
  %4 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %len1 = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %4, i32 0, i32 3
  store i32 0, i32* %len1, align 4, !tbaa !11
  %5 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %5, i32 0, i32 0
  store i8 0, i8* %c, align 1, !tbaa !12
  %6 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %6, i32 0, i32 1
  store i32 0, i32* %ct, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_raw_decode(%struct.opj_raw* %raw) #0 {
entry:
  %raw.addr = alloca %struct.opj_raw*, align 8
  %d = alloca i32, align 4
  store %struct.opj_raw* %raw, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %0 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %1, i32 0, i32 1
  %2 = load i32, i32* %ct, align 4, !tbaa !13
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %3 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %ct1 = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %3, i32 0, i32 1
  store i32 8, i32* %ct1, align 4, !tbaa !13
  %4 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %4, i32 0, i32 3
  %5 = load i32, i32* %len, align 4, !tbaa !11
  %6 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %lenmax = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %6, i32 0, i32 2
  %7 = load i32, i32* %lenmax, align 4, !tbaa !10
  %cmp2 = icmp eq i32 %5, %7
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %8, i32 0, i32 0
  store i8 -1, i8* %c, align 1, !tbaa !12
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %9 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %c4 = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %9, i32 0, i32 0
  %10 = load i8, i8* %c4, align 1, !tbaa !12
  %conv = zext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv, 255
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %11 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %ct8 = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %11, i32 0, i32 1
  store i32 7, i32* %ct8, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  %12 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %12, i32 0, i32 5
  %13 = load i8*, i8** %start, align 8, !tbaa !8
  %14 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %len9 = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %14, i32 0, i32 3
  %15 = load i32, i32* %len9, align 4, !tbaa !11
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %16 = load i8, i8* %add.ptr, align 1, !tbaa !14
  %17 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %c10 = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %17, i32 0, i32 0
  store i8 %16, i8* %c10, align 1, !tbaa !12
  %18 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %len11 = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %18, i32 0, i32 3
  %19 = load i32, i32* %len11, align 4, !tbaa !11
  %inc = add i32 %19, 1
  store i32 %inc, i32* %len11, align 4, !tbaa !11
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %20 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %ct14 = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %20, i32 0, i32 1
  %21 = load i32, i32* %ct14, align 4, !tbaa !13
  %dec = add i32 %21, -1
  store i32 %dec, i32* %ct14, align 4, !tbaa !13
  %22 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %c15 = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %22, i32 0, i32 0
  %23 = load i8, i8* %c15, align 1, !tbaa !12
  %conv16 = zext i8 %23 to i32
  %24 = load %struct.opj_raw*, %struct.opj_raw** %raw.addr, align 8, !tbaa !1
  %ct17 = getelementptr inbounds %struct.opj_raw, %struct.opj_raw* %24, i32 0, i32 1
  %25 = load i32, i32* %ct17, align 4, !tbaa !13
  %shr = ashr i32 %conv16, %25
  %and = and i32 %shr, 1
  store i32 %and, i32* %d, align 4, !tbaa !9
  %26 = load i32, i32* %d, align 4, !tbaa !9
  %27 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret i32 %26
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 16}
!6 = !{!"opj_raw", !3, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !2, i64 16, !2, i64 24, !2, i64 32}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !2, i64 24}
!9 = !{!7, !7, i64 0}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 12}
!12 = !{!6, !3, i64 0}
!13 = !{!6, !7, i64 4}
!14 = !{!3, !3, i64 0}
