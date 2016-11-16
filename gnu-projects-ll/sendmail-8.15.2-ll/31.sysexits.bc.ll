; ModuleID = '31.sysexits.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @dsntoexitstat(i8* %dsncode) #0 {
entry:
  %retval = alloca i32, align 4
  %dsncode.addr = alloca i8*, align 8
  %code2 = alloca i32, align 4
  %code3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %dsncode, i8** %dsncode.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !5
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 50
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !5
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 52
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %6 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !5
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv7, 53
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store i32 78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %8 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %dsncode.addr, align 8, !tbaa !1
  %9 = load i8, i8* %incdec.ptr, align 1, !tbaa !5
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.11
  %10 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr16, i8** %dsncode.addr, align 8, !tbaa !1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.11
  %11 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %call = call i32 @atoi(i8* %11) #5
  store i32 %call, i32* %code2, align 4, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.17
  %12 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !5
  %conv18 = sext i8 %13 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !5
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp ne i32 %conv21, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr24, i8** %dsncode.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !5
  %conv25 = sext i8 %19 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %while.end
  %20 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr29, i8** %dsncode.addr, align 8, !tbaa !1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %while.end
  %21 = load i8*, i8** %dsncode.addr, align 8, !tbaa !1
  %call31 = call i32 @atoi(i8* %21) #5
  store i32 %call31, i32* %code3, align 4, !tbaa !6
  %22 = load i32, i32* %code2, align 4, !tbaa !6
  switch i32 %22, label %sw.epilog.55 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.32
    i32 2, label %sw.bb.39
    i32 3, label %sw.bb.43
    i32 4, label %sw.bb.44
    i32 5, label %sw.bb.52
    i32 6, label %sw.bb.53
    i32 7, label %sw.bb.54
  ]

sw.bb:                                            ; preds = %if.end.30
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.32:                                         ; preds = %if.end.30
  %23 = load i32, i32* %code3, align 4, !tbaa !6
  switch i32 %23, label %sw.epilog [
    i32 0, label %sw.bb.33
    i32 1, label %sw.bb.34
    i32 6, label %sw.bb.34
    i32 2, label %sw.bb.35
    i32 8, label %sw.bb.35
    i32 3, label %sw.bb.36
    i32 7, label %sw.bb.36
    i32 4, label %sw.bb.37
    i32 5, label %sw.bb.38
  ]

sw.bb.33:                                         ; preds = %sw.bb.32
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.34:                                         ; preds = %sw.bb.32, %sw.bb.32
  store i32 67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.35:                                         ; preds = %sw.bb.32, %sw.bb.32
  store i32 68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.36:                                         ; preds = %sw.bb.32, %sw.bb.32
  store i32 64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.37:                                         ; preds = %sw.bb.32
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.38:                                         ; preds = %sw.bb.32
  store i32 78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.32
  br label %sw.epilog.55

sw.bb.39:                                         ; preds = %if.end.30
  %24 = load i32, i32* %code3, align 4, !tbaa !6
  switch i32 %24, label %sw.epilog.42 [
    i32 0, label %sw.bb.40
    i32 1, label %sw.bb.40
    i32 2, label %sw.bb.40
    i32 4, label %sw.bb.40
    i32 3, label %sw.bb.41
  ]

sw.bb.40:                                         ; preds = %sw.bb.39, %sw.bb.39, %sw.bb.39, %sw.bb.39
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.41:                                         ; preds = %sw.bb.39
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.42:                                     ; preds = %sw.bb.39
  br label %sw.epilog.55

sw.bb.43:                                         ; preds = %if.end.30
  store i32 71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.44:                                         ; preds = %if.end.30
  %25 = load i32, i32* %code3, align 4, !tbaa !6
  switch i32 %25, label %sw.epilog.51 [
    i32 0, label %sw.bb.45
    i32 1, label %sw.bb.46
    i32 3, label %sw.bb.46
    i32 5, label %sw.bb.46
    i32 2, label %sw.bb.47
    i32 4, label %sw.bb.48
    i32 6, label %sw.bb.49
    i32 7, label %sw.bb.50
  ]

sw.bb.45:                                         ; preds = %sw.bb.44
  store i32 74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.46:                                         ; preds = %sw.bb.44, %sw.bb.44, %sw.bb.44
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.47:                                         ; preds = %sw.bb.44
  store i32 74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.48:                                         ; preds = %sw.bb.44
  store i32 76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.49:                                         ; preds = %sw.bb.44
  store i32 78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.50:                                         ; preds = %sw.bb.44
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.51:                                     ; preds = %sw.bb.44
  br label %sw.epilog.55

sw.bb.52:                                         ; preds = %if.end.30
  store i32 76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.53:                                         ; preds = %if.end.30
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.54:                                         ; preds = %if.end.30
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.55:                                     ; preds = %if.end.30, %sw.epilog.51, %sw.epilog.42, %sw.epilog
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.55, %sw.bb.54, %sw.bb.53, %sw.bb.52, %sw.bb.50, %sw.bb.49, %sw.bb.48, %sw.bb.47, %sw.bb.46, %sw.bb.45, %sw.bb.43, %sw.bb.41, %sw.bb.40, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb, %if.then.10, %if.then.5, %if.then
  %26 = bitcast i32* %code3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #2 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #1
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i8* @exitstat(i8* %excode) #0 {
entry:
  %retval = alloca i8*, align 8
  %excode.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  %i = alloca i32, align 4
  %exitmsg = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %excode, i8** %excode.addr, align 8, !tbaa !1
  %0 = bitcast i8** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %exitmsg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %excode.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %excode.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !5
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i8*, i8** %excode.addr, align 8, !tbaa !1
  store i8* %6, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i8*, i8** %excode.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %7, i8** %c, i32 10) #1
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %i, align 4, !tbaa !6
  %8 = load i8*, i8** %c, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !5
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %10 = load i8*, i8** %excode.addr, align 8, !tbaa !1
  store i8* %10, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !6
  %call9 = call i8* @sm_sysexitmsg(i32 %11)
  store i8* %call9, i8** %exitmsg, align 8, !tbaa !1
  %12 = load i8*, i8** %exitmsg, align 8, !tbaa !1
  %cmp10 = icmp ne i8* %12, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %13 = load i8*, i8** %exitmsg, align 8, !tbaa !1
  store i8* %13, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.8
  %14 = load i8*, i8** %excode.addr, align 8, !tbaa !1
  store i8* %14, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.7, %if.then
  %15 = bitcast i8** %exitmsg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i8** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

declare i8* @sm_sysexitmsg(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !3, i64 0}
