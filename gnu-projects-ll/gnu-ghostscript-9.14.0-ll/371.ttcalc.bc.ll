; ModuleID = './ttcalc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Roots = internal constant [63 x i64] [i64 1, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 11, i64 16, i64 22, i64 32, i64 45, i64 64, i64 90, i64 128, i64 181, i64 256, i64 362, i64 512, i64 724, i64 1024, i64 1448, i64 2048, i64 2896, i64 4096, i64 5892, i64 8192, i64 11585, i64 16384, i64 23170, i64 32768, i64 46340, i64 65536, i64 92681, i64 131072, i64 185363, i64 262144, i64 370727, i64 524288, i64 741455, i64 1048576, i64 1482910, i64 2097152, i64 2965820, i64 4194304, i64 5931641, i64 8388608, i64 11863283, i64 16777216, i64 23726566, i64 33554432, i64 47453132, i64 67108864, i64 94906265, i64 134217728, i64 189812531, i64 268435456, i64 379625062, i64 536870912, i64 759250125, i64 1073741824, i64 1518500250, i64 2147483647], align 16

; Function Attrs: nounwind uwtable
define i32 @ttMulDiv(i32 %a, i32 %b, i32 %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  store i32 %c, i32* %c.addr, align 4, !tbaa !1
  %0 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %a.addr, align 4, !tbaa !1
  store i32 %1, i32* %s, align 4, !tbaa !1
  %2 = load i32, i32* %a.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %a.addr, align 4, !tbaa !1
  %sub = sub nsw i32 0, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %a.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %a.addr, align 4, !tbaa !1
  %5 = load i32, i32* %b.addr, align 4, !tbaa !1
  %6 = load i32, i32* %s, align 4, !tbaa !1
  %xor = xor i32 %6, %5
  store i32 %xor, i32* %s, align 4, !tbaa !1
  %7 = load i32, i32* %b.addr, align 4, !tbaa !1
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %8 = load i32, i32* %b.addr, align 4, !tbaa !1
  %sub3 = sub nsw i32 0, %8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %9 = load i32, i32* %b.addr, align 4, !tbaa !1
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi i32 [ %sub3, %cond.true.2 ], [ %9, %cond.false.4 ]
  store i32 %cond6, i32* %b.addr, align 4, !tbaa !1
  %10 = load i32, i32* %c.addr, align 4, !tbaa !1
  %11 = load i32, i32* %s, align 4, !tbaa !1
  %xor7 = xor i32 %11, %10
  store i32 %xor7, i32* %s, align 4, !tbaa !1
  %12 = load i32, i32* %c.addr, align 4, !tbaa !1
  %cmp8 = icmp slt i32 %12, 0
  br i1 %cmp8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %cond.end.5
  %13 = load i32, i32* %c.addr, align 4, !tbaa !1
  %sub10 = sub nsw i32 0, %13
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end.5
  %14 = load i32, i32* %c.addr, align 4, !tbaa !1
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i32 [ %sub10, %cond.true.9 ], [ %14, %cond.false.11 ]
  store i32 %cond13, i32* %c.addr, align 4, !tbaa !1
  %15 = load i32, i32* %a.addr, align 4, !tbaa !1
  %conv = sext i32 %15 to i64
  %16 = load i32, i32* %b.addr, align 4, !tbaa !1
  %conv14 = sext i32 %16 to i64
  %mul = mul nsw i64 %conv, %conv14
  %17 = load i32, i32* %c.addr, align 4, !tbaa !1
  %conv15 = sext i32 %17 to i64
  %div = sdiv i64 %mul, %conv15
  %conv16 = trunc i64 %div to i32
  store i32 %conv16, i32* %a.addr, align 4, !tbaa !1
  %18 = load i32, i32* %s, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %18, 0
  br i1 %cmp17, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end.12
  %19 = load i32, i32* %a.addr, align 4, !tbaa !1
  %sub20 = sub nsw i32 0, %19
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end.12
  %20 = load i32, i32* %a.addr, align 4, !tbaa !1
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.19
  %cond23 = phi i32 [ %sub20, %cond.true.19 ], [ %20, %cond.false.21 ]
  %21 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  ret i32 %cond23
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @MulDiv_Round(i32 %a, i32 %b, i32 %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  store i32 %c, i32* %c.addr, align 4, !tbaa !1
  %0 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %a.addr, align 4, !tbaa !1
  store i32 %1, i32* %s, align 4, !tbaa !1
  %2 = load i32, i32* %a.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %a.addr, align 4, !tbaa !1
  %sub = sub nsw i32 0, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %a.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %a.addr, align 4, !tbaa !1
  %5 = load i32, i32* %b.addr, align 4, !tbaa !1
  %6 = load i32, i32* %s, align 4, !tbaa !1
  %xor = xor i32 %6, %5
  store i32 %xor, i32* %s, align 4, !tbaa !1
  %7 = load i32, i32* %b.addr, align 4, !tbaa !1
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %8 = load i32, i32* %b.addr, align 4, !tbaa !1
  %sub3 = sub nsw i32 0, %8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %9 = load i32, i32* %b.addr, align 4, !tbaa !1
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi i32 [ %sub3, %cond.true.2 ], [ %9, %cond.false.4 ]
  store i32 %cond6, i32* %b.addr, align 4, !tbaa !1
  %10 = load i32, i32* %c.addr, align 4, !tbaa !1
  %11 = load i32, i32* %s, align 4, !tbaa !1
  %xor7 = xor i32 %11, %10
  store i32 %xor7, i32* %s, align 4, !tbaa !1
  %12 = load i32, i32* %c.addr, align 4, !tbaa !1
  %cmp8 = icmp slt i32 %12, 0
  br i1 %cmp8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %cond.end.5
  %13 = load i32, i32* %c.addr, align 4, !tbaa !1
  %sub10 = sub nsw i32 0, %13
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end.5
  %14 = load i32, i32* %c.addr, align 4, !tbaa !1
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i32 [ %sub10, %cond.true.9 ], [ %14, %cond.false.11 ]
  store i32 %cond13, i32* %c.addr, align 4, !tbaa !1
  %15 = load i32, i32* %a.addr, align 4, !tbaa !1
  %conv = sext i32 %15 to i64
  %16 = load i32, i32* %b.addr, align 4, !tbaa !1
  %conv14 = sext i32 %16 to i64
  %mul = mul nsw i64 %conv, %conv14
  %17 = load i32, i32* %c.addr, align 4, !tbaa !1
  %div = sdiv i32 %17, 2
  %conv15 = sext i32 %div to i64
  %add = add nsw i64 %mul, %conv15
  %18 = load i32, i32* %c.addr, align 4, !tbaa !1
  %conv16 = sext i32 %18 to i64
  %div17 = sdiv i64 %add, %conv16
  %conv18 = trunc i64 %div17 to i32
  store i32 %conv18, i32* %a.addr, align 4, !tbaa !1
  %19 = load i32, i32* %s, align 4, !tbaa !1
  %cmp19 = icmp slt i32 %19, 0
  br i1 %cmp19, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %cond.end.12
  %20 = load i32, i32* %a.addr, align 4, !tbaa !1
  %sub22 = sub nsw i32 0, %20
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end.12
  %21 = load i32, i32* %a.addr, align 4, !tbaa !1
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi i32 [ %sub22, %cond.true.21 ], [ %21, %cond.false.23 ]
  %22 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret i32 %cond25
}

; Function Attrs: nounwind uwtable
define i32 @Sqrt64(i64 %l) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca i64, align 8
  %r = alloca i64, align 8
  %s = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %l, i64* %l.addr, align 8, !tbaa !5
  %0 = bitcast i64* %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64, i64* %l.addr, align 8, !tbaa !5
  %cmp = icmp sle i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %l.addr, align 8, !tbaa !5
  %cmp1 = icmp eq i64 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* %l.addr, align 8, !tbaa !5
  %call = call i32 @Order64(i64 %4) #2
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [63 x i64], [63 x i64]* @Roots, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8, !tbaa !5
  store i64 %5, i64* %r, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end.3
  %6 = load i64, i64* %r, align 8, !tbaa !5
  store i64 %6, i64* %s, align 8, !tbaa !5
  %7 = load i64, i64* %r, align 8, !tbaa !5
  %8 = load i64, i64* %l.addr, align 8, !tbaa !5
  %9 = load i64, i64* %r, align 8, !tbaa !5
  %div = sdiv i64 %8, %9
  %add = add nsw i64 %7, %div
  %shr = ashr i64 %add, 1
  store i64 %shr, i64* %r, align 8, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i64, i64* %r, align 8, !tbaa !5
  %11 = load i64, i64* %s, align 8, !tbaa !5
  %cmp4 = icmp sgt i64 %10, %11
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %12 = load i64, i64* %r, align 8, !tbaa !5
  %13 = load i64, i64* %r, align 8, !tbaa !5
  %mul = mul nsw i64 %12, %13
  %14 = load i64, i64* %l.addr, align 8, !tbaa !5
  %cmp5 = icmp sgt i64 %mul, %14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %15 = phi i1 [ true, %do.cond ], [ %cmp5, %lor.rhs ]
  br i1 %15, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %16 = load i64, i64* %r, align 8, !tbaa !5
  %conv = trunc i64 %16 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.2, %if.then
  %17 = bitcast i64* %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i64* %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @Order64(i64 %z) #0 {
entry:
  %z.addr = alloca i64, align 8
  %j = alloca i32, align 4
  store i64 %z, i64* %z.addr, align 8, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %z.addr, align 8, !tbaa !5
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %z.addr, align 8, !tbaa !5
  %shr = lshr i64 %2, 1
  store i64 %shr, i64* %z.addr, align 8, !tbaa !5
  %3 = load i32, i32* %j, align 4, !tbaa !1
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %j, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %j, align 4, !tbaa !1
  %sub = sub nsw i32 %4, 1
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %sub
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
