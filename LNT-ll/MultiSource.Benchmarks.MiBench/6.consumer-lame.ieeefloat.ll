; ModuleID = './MultiSource.Benchmarks.MiBench/6.consumer-lame.ieeefloat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @ConvertFromIeeeSingle(i8* %bytes) #0 {
entry:
  %retval = alloca double, align 8
  %bytes.addr = alloca i8*, align 8
  %f = alloca double, align 8
  %mantissa = alloca i64, align 8
  %expon = alloca i64, align 8
  %bits = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  %0 = bitcast double* %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %mantissa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %expon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %5 to i32
  %and = and i32 %conv, 255
  %conv1 = sext i32 %and to i64
  %shl = shl i64 %conv1, 24
  %6 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx2, align 1, !tbaa !5
  %conv3 = sext i8 %7 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = sext i32 %and4 to i64
  %shl6 = shl i64 %conv5, 16
  %or = or i64 %shl, %shl6
  %8 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx7, align 1, !tbaa !5
  %conv8 = sext i8 %9 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = sext i32 %and9 to i64
  %shl11 = shl i64 %conv10, 8
  %or12 = or i64 %or, %shl11
  %10 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx13, align 1, !tbaa !5
  %conv14 = sext i8 %11 to i32
  %and15 = and i32 %conv14, 255
  %conv16 = sext i32 %and15 to i64
  %or17 = or i64 %or12, %conv16
  store i64 %or17, i64* %bits, align 8, !tbaa !6
  %12 = load i64, i64* %bits, align 8, !tbaa !6
  %and18 = and i64 %12, 2147483647
  %cmp = icmp eq i64 %and18, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %f, align 8, !tbaa !8
  br label %if.end.41

if.else:                                          ; preds = %entry
  %13 = load i64, i64* %bits, align 8, !tbaa !6
  %and20 = and i64 %13, 2139095040
  %shr = ashr i64 %and20, 23
  store i64 %shr, i64* %expon, align 8, !tbaa !6
  %14 = load i64, i64* %expon, align 8, !tbaa !6
  %cmp21 = icmp eq i64 %14, 255
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else
  store double 0x7FF0000000000000, double* %f, align 8, !tbaa !8
  br label %if.end.40

if.else.24:                                       ; preds = %if.else
  %15 = load i64, i64* %expon, align 8, !tbaa !6
  %cmp25 = icmp eq i64 %15, 0
  br i1 %cmp25, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %if.else.24
  %16 = load i64, i64* %bits, align 8, !tbaa !6
  %and28 = and i64 %16, 8388607
  store i64 %and28, i64* %mantissa, align 8, !tbaa !6
  %17 = load i64, i64* %mantissa, align 8, !tbaa !6
  %conv29 = sitofp i64 %17 to double
  %18 = load i64, i64* %expon, align 8, !tbaa !6
  %sub = sub nsw i64 %18, 127
  %sub30 = sub nsw i64 %sub, 23
  %add = add nsw i64 %sub30, 1
  %conv31 = trunc i64 %add to i32
  %call = call double @ldexp(double %conv29, i32 %conv31) #1
  store double %call, double* %f, align 8, !tbaa !8
  br label %if.end

if.else.32:                                       ; preds = %if.else.24
  %19 = load i64, i64* %bits, align 8, !tbaa !6
  %and33 = and i64 %19, 8388607
  %add34 = add nsw i64 %and33, 8388608
  store i64 %add34, i64* %mantissa, align 8, !tbaa !6
  %20 = load i64, i64* %mantissa, align 8, !tbaa !6
  %conv35 = sitofp i64 %20 to double
  %21 = load i64, i64* %expon, align 8, !tbaa !6
  %sub36 = sub nsw i64 %21, 127
  %sub37 = sub nsw i64 %sub36, 23
  %conv38 = trunc i64 %sub37 to i32
  %call39 = call double @ldexp(double %conv35, i32 %conv38) #1
  store double %call39, double* %f, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else.32, %if.then.27
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %if.then.23
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then
  %22 = load i64, i64* %bits, align 8, !tbaa !6
  %and42 = and i64 %22, -9223372036854775808
  %tobool = icmp ne i64 %and42, 0
  br i1 %tobool, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.end.41
  %23 = load double, double* %f, align 8, !tbaa !8
  %sub44 = fsub double -0.000000e+00, %23
  store double %sub44, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.45:                                       ; preds = %if.end.41
  %24 = load double, double* %f, align 8, !tbaa !8
  store double %24, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.45, %if.then.43
  %25 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64* %expon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i64* %mantissa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast double* %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load double, double* %retval
  ret double %29
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare double @ldexp(double, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @ConvertToIeeeSingle(double %num, i8* %bytes) #0 {
entry:
  %num.addr = alloca double, align 8
  %bytes.addr = alloca i8*, align 8
  %sign = alloca i64, align 8
  %bits = alloca i64, align 8
  %fMant = alloca double, align 8
  %expon = alloca i32, align 4
  %mantissa = alloca i64, align 8
  %shift = alloca i32, align 4
  store double %num, double* %num.addr, align 8, !tbaa !8
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  %0 = bitcast i64* %sign to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load double, double* %num.addr, align 8, !tbaa !8
  %cmp = fcmp olt double %2, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -9223372036854775808, i64* %sign, align 8, !tbaa !6
  %3 = load double, double* %num.addr, align 8, !tbaa !8
  %mul = fmul double %3, -1.000000e+00
  store double %mul, double* %num.addr, align 8, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 0, i64* %sign, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load double, double* %num.addr, align 8, !tbaa !8
  %cmp1 = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  store i64 0, i64* %bits, align 8, !tbaa !6
  br label %if.end.29

if.else.3:                                        ; preds = %if.end
  %5 = bitcast double* %fMant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %expon to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load double, double* %num.addr, align 8, !tbaa !8
  %call = call double @frexp(double %7, i32* %expon) #1
  store double %call, double* %fMant, align 8, !tbaa !8
  %8 = load i32, i32* %expon, align 4, !tbaa !10
  %cmp4 = icmp sgt i32 %8, 129
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.3
  %9 = load double, double* %fMant, align 8, !tbaa !8
  %cmp5 = fcmp olt double %9, 1.000000e+00
  br i1 %cmp5, label %if.else.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.else.3
  %10 = load i64, i64* %sign, align 8, !tbaa !6
  %or = or i64 %10, 2139095040
  store i64 %or, i64* %bits, align 8, !tbaa !6
  br label %if.end.28

if.else.7:                                        ; preds = %lor.lhs.false
  %11 = bitcast i64* %mantissa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %expon, align 4, !tbaa !10
  %cmp8 = icmp slt i32 %12, -125
  br i1 %cmp8, label %if.then.9, label %if.else.17

if.then.9:                                        ; preds = %if.else.7
  %13 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %expon, align 4, !tbaa !10
  %add = add nsw i32 149, %14
  store i32 %add, i32* %shift, align 4, !tbaa !10
  %15 = load i32, i32* %shift, align 4, !tbaa !10
  %cmp10 = icmp slt i32 %15, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.then.9
  %16 = load i64, i64* %sign, align 8, !tbaa !6
  store i64 %16, i64* %bits, align 8, !tbaa !6
  br label %if.end.16

if.else.12:                                       ; preds = %if.then.9
  %17 = load double, double* %fMant, align 8, !tbaa !8
  %18 = load i32, i32* %shift, align 4, !tbaa !10
  %sh_prom = zext i32 %18 to i64
  %shl = shl i64 1, %sh_prom
  %conv = sitofp i64 %shl to double
  %mul13 = fmul double %17, %conv
  %conv14 = fptosi double %mul13 to i64
  store i64 %conv14, i64* %mantissa, align 8, !tbaa !6
  %19 = load i64, i64* %sign, align 8, !tbaa !6
  %20 = load i64, i64* %mantissa, align 8, !tbaa !6
  %or15 = or i64 %19, %20
  store i64 %or15, i64* %bits, align 8, !tbaa !6
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.12, %if.then.11
  %21 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  br label %if.end.27

if.else.17:                                       ; preds = %if.else.7
  %22 = load double, double* %fMant, align 8, !tbaa !8
  %mul18 = fmul double %22, 0x4170000000000000
  %call19 = call double @floor(double %mul18) #4
  %conv20 = fptosi double %call19 to i64
  store i64 %conv20, i64* %mantissa, align 8, !tbaa !6
  %23 = load i64, i64* %mantissa, align 8, !tbaa !6
  %sub = sub nsw i64 %23, 8388608
  store i64 %sub, i64* %mantissa, align 8, !tbaa !6
  %24 = load i64, i64* %sign, align 8, !tbaa !6
  %25 = load i32, i32* %expon, align 4, !tbaa !10
  %add21 = add nsw i32 %25, 127
  %sub22 = sub nsw i32 %add21, 1
  %conv23 = sext i32 %sub22 to i64
  %shl24 = shl i64 %conv23, 23
  %or25 = or i64 %24, %shl24
  %26 = load i64, i64* %mantissa, align 8, !tbaa !6
  %or26 = or i64 %or25, %26
  store i64 %or26, i64* %bits, align 8, !tbaa !6
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.17, %if.end.16
  %27 = bitcast i64* %mantissa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.6
  %28 = bitcast i32* %expon to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast double* %fMant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.2
  %30 = load i64, i64* %bits, align 8, !tbaa !6
  %shr = ashr i64 %30, 24
  %conv30 = trunc i64 %shr to i8
  %31 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %conv30, i8* %arrayidx, align 1, !tbaa !5
  %32 = load i64, i64* %bits, align 8, !tbaa !6
  %shr31 = ashr i64 %32, 16
  %conv32 = trunc i64 %shr31 to i8
  %33 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %conv32, i8* %arrayidx33, align 1, !tbaa !5
  %34 = load i64, i64* %bits, align 8, !tbaa !6
  %shr34 = ashr i64 %34, 8
  %conv35 = trunc i64 %shr34 to i8
  %35 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 %conv35, i8* %arrayidx36, align 1, !tbaa !5
  %36 = load i64, i64* %bits, align 8, !tbaa !6
  %conv37 = trunc i64 %36 to i8
  %37 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %37, i64 3
  store i8 %conv37, i8* %arrayidx38, align 1, !tbaa !5
  %38 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i64* %sign to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  ret void
}

; Function Attrs: nounwind
declare double @frexp(double, i32*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define double @ConvertFromIeeeDouble(i8* %bytes) #0 {
entry:
  %retval = alloca double, align 8
  %bytes.addr = alloca i8*, align 8
  %f = alloca double, align 8
  %mantissa = alloca i64, align 8
  %expon = alloca i64, align 8
  %first = alloca i64, align 8
  %second = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  %0 = bitcast double* %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %mantissa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %expon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %first to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %second to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %6 to i32
  %and = and i32 %conv, 255
  %conv1 = sext i32 %and to i64
  %shl = shl i64 %conv1, 24
  %7 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx2, align 1, !tbaa !5
  %conv3 = sext i8 %8 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = sext i32 %and4 to i64
  %shl6 = shl i64 %conv5, 16
  %or = or i64 %shl, %shl6
  %9 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx7, align 1, !tbaa !5
  %conv8 = sext i8 %10 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = sext i32 %and9 to i64
  %shl11 = shl i64 %conv10, 8
  %or12 = or i64 %or, %shl11
  %11 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %arrayidx13, align 1, !tbaa !5
  %conv14 = sext i8 %12 to i32
  %and15 = and i32 %conv14, 255
  %conv16 = sext i32 %and15 to i64
  %or17 = or i64 %or12, %conv16
  store i64 %or17, i64* %first, align 8, !tbaa !6
  %13 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 4
  %14 = load i8, i8* %arrayidx18, align 1, !tbaa !5
  %conv19 = sext i8 %14 to i32
  %and20 = and i32 %conv19, 255
  %conv21 = sext i32 %and20 to i64
  %shl22 = shl i64 %conv21, 24
  %15 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 5
  %16 = load i8, i8* %arrayidx23, align 1, !tbaa !5
  %conv24 = sext i8 %16 to i32
  %and25 = and i32 %conv24, 255
  %conv26 = sext i32 %and25 to i64
  %shl27 = shl i64 %conv26, 16
  %or28 = or i64 %shl22, %shl27
  %17 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %17, i64 6
  %18 = load i8, i8* %arrayidx29, align 1, !tbaa !5
  %conv30 = sext i8 %18 to i32
  %and31 = and i32 %conv30, 255
  %conv32 = sext i32 %and31 to i64
  %shl33 = shl i64 %conv32, 8
  %or34 = or i64 %or28, %shl33
  %19 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %19, i64 7
  %20 = load i8, i8* %arrayidx35, align 1, !tbaa !5
  %conv36 = sext i8 %20 to i32
  %and37 = and i32 %conv36, 255
  %conv38 = sext i32 %and37 to i64
  %or39 = or i64 %or34, %conv38
  store i64 %or39, i64* %second, align 8, !tbaa !6
  %21 = load i64, i64* %first, align 8, !tbaa !6
  %cmp = icmp eq i64 %21, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %22 = load i64, i64* %second, align 8, !tbaa !6
  %cmp41 = icmp eq i64 %22, 0
  br i1 %cmp41, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store double 0.000000e+00, double* %f, align 8, !tbaa !8
  br label %if.end.85

if.else:                                          ; preds = %land.lhs.true, %entry
  %23 = load i64, i64* %first, align 8, !tbaa !6
  %and43 = and i64 %23, 2146435072
  %shr = lshr i64 %and43, 20
  store i64 %shr, i64* %expon, align 8, !tbaa !6
  %24 = load i64, i64* %expon, align 8, !tbaa !6
  %cmp44 = icmp eq i64 %24, 2047
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else
  store double 0x7FF0000000000000, double* %f, align 8, !tbaa !8
  br label %if.end.84

if.else.47:                                       ; preds = %if.else
  %25 = load i64, i64* %expon, align 8, !tbaa !6
  %cmp48 = icmp eq i64 %25, 0
  br i1 %cmp48, label %if.then.50, label %if.else.66

if.then.50:                                       ; preds = %if.else.47
  %26 = load i64, i64* %first, align 8, !tbaa !6
  %and51 = and i64 %26, 1048575
  store i64 %and51, i64* %mantissa, align 8, !tbaa !6
  %27 = load i64, i64* %mantissa, align 8, !tbaa !6
  %conv52 = sitofp i64 %27 to double
  %28 = load i64, i64* %expon, align 8, !tbaa !6
  %sub = sub nsw i64 %28, 1023
  %sub53 = sub nsw i64 %sub, 20
  %add = add nsw i64 %sub53, 1
  %conv54 = trunc i64 %add to i32
  %call = call double @ldexp(double %conv52, i32 %conv54) #1
  store double %call, double* %f, align 8, !tbaa !8
  %29 = load i64, i64* %second, align 8, !tbaa !6
  %sub55 = sub i64 %29, 2147483647
  %sub56 = sub i64 %sub55, 1
  %conv57 = sitofp i64 %sub56 to double
  %add58 = fadd double %conv57, 0x41E0000000000000
  %30 = load i64, i64* %expon, align 8, !tbaa !6
  %sub59 = sub nsw i64 %30, 1023
  %sub60 = sub nsw i64 %sub59, 20
  %add61 = add nsw i64 %sub60, 1
  %sub62 = sub nsw i64 %add61, 32
  %conv63 = trunc i64 %sub62 to i32
  %call64 = call double @ldexp(double %add58, i32 %conv63) #1
  %31 = load double, double* %f, align 8, !tbaa !8
  %add65 = fadd double %31, %call64
  store double %add65, double* %f, align 8, !tbaa !8
  br label %if.end

if.else.66:                                       ; preds = %if.else.47
  %32 = load i64, i64* %first, align 8, !tbaa !6
  %and67 = and i64 %32, 1048575
  %add68 = add i64 %and67, 1048576
  store i64 %add68, i64* %mantissa, align 8, !tbaa !6
  %33 = load i64, i64* %mantissa, align 8, !tbaa !6
  %conv69 = sitofp i64 %33 to double
  %34 = load i64, i64* %expon, align 8, !tbaa !6
  %sub70 = sub nsw i64 %34, 1023
  %sub71 = sub nsw i64 %sub70, 20
  %conv72 = trunc i64 %sub71 to i32
  %call73 = call double @ldexp(double %conv69, i32 %conv72) #1
  store double %call73, double* %f, align 8, !tbaa !8
  %35 = load i64, i64* %second, align 8, !tbaa !6
  %sub74 = sub i64 %35, 2147483647
  %sub75 = sub i64 %sub74, 1
  %conv76 = sitofp i64 %sub75 to double
  %add77 = fadd double %conv76, 0x41E0000000000000
  %36 = load i64, i64* %expon, align 8, !tbaa !6
  %sub78 = sub nsw i64 %36, 1023
  %sub79 = sub nsw i64 %sub78, 20
  %sub80 = sub nsw i64 %sub79, 32
  %conv81 = trunc i64 %sub80 to i32
  %call82 = call double @ldexp(double %add77, i32 %conv81) #1
  %37 = load double, double* %f, align 8, !tbaa !8
  %add83 = fadd double %37, %call82
  store double %add83, double* %f, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else.66, %if.then.50
  br label %if.end.84

if.end.84:                                        ; preds = %if.end, %if.then.46
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then
  %38 = load i64, i64* %first, align 8, !tbaa !6
  %and86 = and i64 %38, 2147483648
  %tobool = icmp ne i64 %and86, 0
  br i1 %tobool, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.end.85
  %39 = load double, double* %f, align 8, !tbaa !8
  %sub88 = fsub double -0.000000e+00, %39
  store double %sub88, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.89:                                       ; preds = %if.end.85
  %40 = load double, double* %f, align 8, !tbaa !8
  store double %40, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.89, %if.then.87
  %41 = bitcast i64* %second to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i64* %first to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i64* %expon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i64* %mantissa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast double* %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load double, double* %retval
  ret double %46
}

; Function Attrs: nounwind uwtable
define void @ConvertToIeeeDouble(double %num, i8* %bytes) #0 {
entry:
  %num.addr = alloca double, align 8
  %bytes.addr = alloca i8*, align 8
  %sign = alloca i64, align 8
  %first = alloca i64, align 8
  %second = alloca i64, align 8
  %fMant = alloca double, align 8
  %fsMant = alloca double, align 8
  %expon = alloca i32, align 4
  %mantissa = alloca i64, align 8
  %shift = alloca i32, align 4
  store double %num, double* %num.addr, align 8, !tbaa !8
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  %0 = bitcast i64* %sign to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %first to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %second to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load double, double* %num.addr, align 8, !tbaa !8
  %cmp = fcmp olt double %3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -9223372036854775808, i64* %sign, align 8, !tbaa !6
  %4 = load double, double* %num.addr, align 8, !tbaa !8
  %mul = fmul double %4, -1.000000e+00
  store double %mul, double* %num.addr, align 8, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 0, i64* %sign, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load double, double* %num.addr, align 8, !tbaa !8
  %cmp1 = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  store i64 0, i64* %first, align 8, !tbaa !6
  store i64 0, i64* %second, align 8, !tbaa !6
  br label %if.end.56

if.else.3:                                        ; preds = %if.end
  %6 = bitcast double* %fMant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %fsMant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %expon to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load double, double* %num.addr, align 8, !tbaa !8
  %call = call double @frexp(double %9, i32* %expon) #1
  store double %call, double* %fMant, align 8, !tbaa !8
  %10 = load i32, i32* %expon, align 4, !tbaa !10
  %cmp4 = icmp sgt i32 %10, 1025
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.3
  %11 = load double, double* %fMant, align 8, !tbaa !8
  %cmp5 = fcmp olt double %11, 1.000000e+00
  br i1 %cmp5, label %if.else.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.else.3
  %12 = load i64, i64* %sign, align 8, !tbaa !6
  %or = or i64 %12, 2146435072
  store i64 %or, i64* %first, align 8, !tbaa !6
  store i64 0, i64* %second, align 8, !tbaa !6
  br label %if.end.55

if.else.7:                                        ; preds = %lor.lhs.false
  %13 = bitcast i64* %mantissa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %expon, align 4, !tbaa !10
  %cmp8 = icmp slt i32 %14, -1021
  br i1 %cmp8, label %if.then.9, label %if.else.35

if.then.9:                                        ; preds = %if.else.7
  %15 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %expon, align 4, !tbaa !10
  %add = add nsw i32 1042, %16
  store i32 %add, i32* %shift, align 4, !tbaa !10
  %17 = load i32, i32* %shift, align 4, !tbaa !10
  %cmp10 = icmp slt i32 %17, 0
  br i1 %cmp10, label %if.then.11, label %if.else.21

if.then.11:                                       ; preds = %if.then.9
  %18 = load i64, i64* %sign, align 8, !tbaa !6
  store i64 %18, i64* %first, align 8, !tbaa !6
  %19 = load i32, i32* %shift, align 4, !tbaa !10
  %add12 = add nsw i32 %19, 32
  store i32 %add12, i32* %shift, align 4, !tbaa !10
  %20 = load i32, i32* %shift, align 4, !tbaa !10
  %cmp13 = icmp slt i32 %20, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.then.11
  store i64 0, i64* %second, align 8, !tbaa !6
  br label %if.end.20

if.else.15:                                       ; preds = %if.then.11
  %21 = load double, double* %fMant, align 8, !tbaa !8
  %22 = load i32, i32* %shift, align 4, !tbaa !10
  %call16 = call double @ldexp(double %21, i32 %22) #1
  %call17 = call double @floor(double %call16) #4
  %sub = fsub double %call17, 0x41E0000000000000
  %conv = fptosi double %sub to i64
  %add18 = add nsw i64 %conv, 2147483647
  %add19 = add nsw i64 %add18, 1
  store i64 %add19, i64* %second, align 8, !tbaa !6
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.34

if.else.21:                                       ; preds = %if.then.9
  %23 = load double, double* %fMant, align 8, !tbaa !8
  %24 = load i32, i32* %shift, align 4, !tbaa !10
  %call22 = call double @ldexp(double %23, i32 %24) #1
  store double %call22, double* %fsMant, align 8, !tbaa !8
  %25 = load double, double* %fsMant, align 8, !tbaa !8
  %call23 = call double @floor(double %25) #4
  %conv24 = fptosi double %call23 to i64
  store i64 %conv24, i64* %mantissa, align 8, !tbaa !6
  %26 = load i64, i64* %sign, align 8, !tbaa !6
  %27 = load i64, i64* %mantissa, align 8, !tbaa !6
  %or25 = or i64 %26, %27
  store i64 %or25, i64* %first, align 8, !tbaa !6
  %28 = load double, double* %fsMant, align 8, !tbaa !8
  %29 = load i64, i64* %mantissa, align 8, !tbaa !6
  %conv26 = sitofp i64 %29 to double
  %sub27 = fsub double %28, %conv26
  %call28 = call double @ldexp(double %sub27, i32 32) #1
  %call29 = call double @floor(double %call28) #4
  %sub30 = fsub double %call29, 0x41E0000000000000
  %conv31 = fptosi double %sub30 to i64
  %add32 = add nsw i64 %conv31, 2147483647
  %add33 = add nsw i64 %add32, 1
  store i64 %add33, i64* %second, align 8, !tbaa !6
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.21, %if.end.20
  %30 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  br label %if.end.54

if.else.35:                                       ; preds = %if.else.7
  %31 = load double, double* %fMant, align 8, !tbaa !8
  %call36 = call double @ldexp(double %31, i32 21) #1
  store double %call36, double* %fsMant, align 8, !tbaa !8
  %32 = load double, double* %fsMant, align 8, !tbaa !8
  %call37 = call double @floor(double %32) #4
  %conv38 = fptosi double %call37 to i64
  store i64 %conv38, i64* %mantissa, align 8, !tbaa !6
  %33 = load i64, i64* %mantissa, align 8, !tbaa !6
  %sub39 = sub nsw i64 %33, 1048576
  store i64 %sub39, i64* %mantissa, align 8, !tbaa !6
  %34 = load double, double* %fsMant, align 8, !tbaa !8
  %sub40 = fsub double %34, 1.048576e+06
  store double %sub40, double* %fsMant, align 8, !tbaa !8
  %35 = load i64, i64* %sign, align 8, !tbaa !6
  %36 = load i32, i32* %expon, align 4, !tbaa !10
  %add41 = add nsw i32 %36, 1023
  %sub42 = sub nsw i32 %add41, 1
  %conv43 = sext i32 %sub42 to i64
  %shl = shl i64 %conv43, 20
  %or44 = or i64 %35, %shl
  %37 = load i64, i64* %mantissa, align 8, !tbaa !6
  %or45 = or i64 %or44, %37
  store i64 %or45, i64* %first, align 8, !tbaa !6
  %38 = load double, double* %fsMant, align 8, !tbaa !8
  %39 = load i64, i64* %mantissa, align 8, !tbaa !6
  %conv46 = sitofp i64 %39 to double
  %sub47 = fsub double %38, %conv46
  %call48 = call double @ldexp(double %sub47, i32 32) #1
  %call49 = call double @floor(double %call48) #4
  %sub50 = fsub double %call49, 0x41E0000000000000
  %conv51 = fptosi double %sub50 to i64
  %add52 = add nsw i64 %conv51, 2147483647
  %add53 = add nsw i64 %add52, 1
  store i64 %add53, i64* %second, align 8, !tbaa !6
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.35, %if.end.34
  %40 = bitcast i64* %mantissa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.6
  %41 = bitcast i32* %expon to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast double* %fsMant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast double* %fMant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.2
  %44 = load i64, i64* %first, align 8, !tbaa !6
  %shr = ashr i64 %44, 24
  %conv57 = trunc i64 %shr to i8
  %45 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %conv57, i8* %arrayidx, align 1, !tbaa !5
  %46 = load i64, i64* %first, align 8, !tbaa !6
  %shr58 = ashr i64 %46, 16
  %conv59 = trunc i64 %shr58 to i8
  %47 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %conv59, i8* %arrayidx60, align 1, !tbaa !5
  %48 = load i64, i64* %first, align 8, !tbaa !6
  %shr61 = ashr i64 %48, 8
  %conv62 = trunc i64 %shr61 to i8
  %49 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %49, i64 2
  store i8 %conv62, i8* %arrayidx63, align 1, !tbaa !5
  %50 = load i64, i64* %first, align 8, !tbaa !6
  %conv64 = trunc i64 %50 to i8
  %51 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %51, i64 3
  store i8 %conv64, i8* %arrayidx65, align 1, !tbaa !5
  %52 = load i64, i64* %second, align 8, !tbaa !6
  %shr66 = ashr i64 %52, 24
  %conv67 = trunc i64 %shr66 to i8
  %53 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %53, i64 4
  store i8 %conv67, i8* %arrayidx68, align 1, !tbaa !5
  %54 = load i64, i64* %second, align 8, !tbaa !6
  %shr69 = ashr i64 %54, 16
  %conv70 = trunc i64 %shr69 to i8
  %55 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %55, i64 5
  store i8 %conv70, i8* %arrayidx71, align 1, !tbaa !5
  %56 = load i64, i64* %second, align 8, !tbaa !6
  %shr72 = ashr i64 %56, 8
  %conv73 = trunc i64 %shr72 to i8
  %57 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %57, i64 6
  store i8 %conv73, i8* %arrayidx74, align 1, !tbaa !5
  %58 = load i64, i64* %second, align 8, !tbaa !6
  %conv75 = trunc i64 %58 to i8
  %59 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %59, i64 7
  store i8 %conv75, i8* %arrayidx76, align 1, !tbaa !5
  %60 = bitcast i64* %second to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i64* %first to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i64* %sign to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  ret void
}

; Function Attrs: nounwind uwtable
define double @ConvertFromIeeeExtended(i8* %bytes) #0 {
entry:
  %retval = alloca double, align 8
  %bytes.addr = alloca i8*, align 8
  %f = alloca double, align 8
  %expon = alloca i64, align 8
  %hiMant = alloca i64, align 8
  %loMant = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  %0 = bitcast double* %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %expon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %hiMant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %loMant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %5 to i32
  %and = and i32 %conv, 127
  %shl = shl i32 %and, 8
  %6 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx1, align 1, !tbaa !5
  %conv2 = sext i8 %7 to i32
  %and3 = and i32 %conv2, 255
  %or = or i32 %shl, %and3
  %conv4 = sext i32 %or to i64
  store i64 %conv4, i64* %expon, align 8, !tbaa !6
  %8 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx5, align 1, !tbaa !5
  %conv6 = sext i8 %9 to i32
  %and7 = and i32 %conv6, 255
  %conv8 = sext i32 %and7 to i64
  %shl9 = shl i64 %conv8, 24
  %10 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx10, align 1, !tbaa !5
  %conv11 = sext i8 %11 to i32
  %and12 = and i32 %conv11, 255
  %conv13 = sext i32 %and12 to i64
  %shl14 = shl i64 %conv13, 16
  %or15 = or i64 %shl9, %shl14
  %12 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 4
  %13 = load i8, i8* %arrayidx16, align 1, !tbaa !5
  %conv17 = sext i8 %13 to i32
  %and18 = and i32 %conv17, 255
  %conv19 = sext i32 %and18 to i64
  %shl20 = shl i64 %conv19, 8
  %or21 = or i64 %or15, %shl20
  %14 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 5
  %15 = load i8, i8* %arrayidx22, align 1, !tbaa !5
  %conv23 = sext i8 %15 to i32
  %and24 = and i32 %conv23, 255
  %conv25 = sext i32 %and24 to i64
  %or26 = or i64 %or21, %conv25
  store i64 %or26, i64* %hiMant, align 8, !tbaa !6
  %16 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %16, i64 6
  %17 = load i8, i8* %arrayidx27, align 1, !tbaa !5
  %conv28 = sext i8 %17 to i32
  %and29 = and i32 %conv28, 255
  %conv30 = sext i32 %and29 to i64
  %shl31 = shl i64 %conv30, 24
  %18 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %18, i64 7
  %19 = load i8, i8* %arrayidx32, align 1, !tbaa !5
  %conv33 = sext i8 %19 to i32
  %and34 = and i32 %conv33, 255
  %conv35 = sext i32 %and34 to i64
  %shl36 = shl i64 %conv35, 16
  %or37 = or i64 %shl31, %shl36
  %20 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %20, i64 8
  %21 = load i8, i8* %arrayidx38, align 1, !tbaa !5
  %conv39 = sext i8 %21 to i32
  %and40 = and i32 %conv39, 255
  %conv41 = sext i32 %and40 to i64
  %shl42 = shl i64 %conv41, 8
  %or43 = or i64 %or37, %shl42
  %22 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %22, i64 9
  %23 = load i8, i8* %arrayidx44, align 1, !tbaa !5
  %conv45 = sext i8 %23 to i32
  %and46 = and i32 %conv45, 255
  %conv47 = sext i32 %and46 to i64
  %or48 = or i64 %or43, %conv47
  store i64 %or48, i64* %loMant, align 8, !tbaa !6
  %24 = load i64, i64* %expon, align 8, !tbaa !6
  %cmp = icmp eq i64 %24, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %25 = load i64, i64* %hiMant, align 8, !tbaa !6
  %cmp50 = icmp eq i64 %25, 0
  br i1 %cmp50, label %land.lhs.true.52, label %if.else

land.lhs.true.52:                                 ; preds = %land.lhs.true
  %26 = load i64, i64* %loMant, align 8, !tbaa !6
  %cmp53 = icmp eq i64 %26, 0
  br i1 %cmp53, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.52
  store double 0.000000e+00, double* %f, align 8, !tbaa !8
  br label %if.end.72

if.else:                                          ; preds = %land.lhs.true.52, %land.lhs.true, %entry
  %27 = load i64, i64* %expon, align 8, !tbaa !6
  %cmp55 = icmp eq i64 %27, 32767
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else
  store double 0x7FF0000000000000, double* %f, align 8, !tbaa !8
  br label %if.end

if.else.58:                                       ; preds = %if.else
  %28 = load i64, i64* %expon, align 8, !tbaa !6
  %sub = sub nsw i64 %28, 16383
  store i64 %sub, i64* %expon, align 8, !tbaa !6
  %29 = load i64, i64* %hiMant, align 8, !tbaa !6
  %sub59 = sub i64 %29, 2147483647
  %sub60 = sub i64 %sub59, 1
  %conv61 = sitofp i64 %sub60 to double
  %add = fadd double %conv61, 0x41E0000000000000
  %30 = load i64, i64* %expon, align 8, !tbaa !6
  %sub62 = sub nsw i64 %30, 31
  store i64 %sub62, i64* %expon, align 8, !tbaa !6
  %conv63 = trunc i64 %sub62 to i32
  %call = call double @ldexp(double %add, i32 %conv63) #1
  store double %call, double* %f, align 8, !tbaa !8
  %31 = load i64, i64* %loMant, align 8, !tbaa !6
  %sub64 = sub i64 %31, 2147483647
  %sub65 = sub i64 %sub64, 1
  %conv66 = sitofp i64 %sub65 to double
  %add67 = fadd double %conv66, 0x41E0000000000000
  %32 = load i64, i64* %expon, align 8, !tbaa !6
  %sub68 = sub nsw i64 %32, 32
  store i64 %sub68, i64* %expon, align 8, !tbaa !6
  %conv69 = trunc i64 %sub68 to i32
  %call70 = call double @ldexp(double %add67, i32 %conv69) #1
  %33 = load double, double* %f, align 8, !tbaa !8
  %add71 = fadd double %33, %call70
  store double %add71, double* %f, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else.58, %if.then.57
  br label %if.end.72

if.end.72:                                        ; preds = %if.end, %if.then
  %34 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx73, align 1, !tbaa !5
  %conv74 = sext i8 %35 to i32
  %and75 = and i32 %conv74, 128
  %tobool = icmp ne i32 %and75, 0
  br i1 %tobool, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %if.end.72
  %36 = load double, double* %f, align 8, !tbaa !8
  %sub77 = fsub double -0.000000e+00, %36
  store double %sub77, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.78:                                       ; preds = %if.end.72
  %37 = load double, double* %f, align 8, !tbaa !8
  store double %37, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.78, %if.then.76
  %38 = bitcast i64* %loMant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i64* %hiMant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i64* %expon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast double* %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load double, double* %retval
  ret double %42
}

; Function Attrs: nounwind uwtable
define void @ConvertToIeeeExtended(double %num, i8* %bytes) #0 {
entry:
  %num.addr = alloca double, align 8
  %bytes.addr = alloca i8*, align 8
  %sign = alloca i32, align 4
  %expon = alloca i32, align 4
  %fMant = alloca double, align 8
  %fsMant = alloca double, align 8
  %hiMant = alloca i64, align 8
  %loMant = alloca i64, align 8
  store double %num, double* %num.addr, align 8, !tbaa !8
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !1
  %0 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %expon to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast double* %fMant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %fsMant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %hiMant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %loMant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load double, double* %num.addr, align 8, !tbaa !8
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 32768, i32* %sign, align 4, !tbaa !10
  %7 = load double, double* %num.addr, align 8, !tbaa !8
  %mul = fmul double %7, -1.000000e+00
  store double %mul, double* %num.addr, align 8, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %sign, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load double, double* %num.addr, align 8, !tbaa !8
  %cmp1 = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %expon, align 4, !tbaa !10
  store i64 0, i64* %hiMant, align 8, !tbaa !6
  store i64 0, i64* %loMant, align 8, !tbaa !6
  br label %if.end.25

if.else.3:                                        ; preds = %if.end
  %9 = load double, double* %num.addr, align 8, !tbaa !8
  %call = call double @frexp(double %9, i32* %expon) #1
  store double %call, double* %fMant, align 8, !tbaa !8
  %10 = load i32, i32* %expon, align 4, !tbaa !10
  %cmp4 = icmp sgt i32 %10, 16384
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.3
  %11 = load double, double* %fMant, align 8, !tbaa !8
  %cmp5 = fcmp olt double %11, 1.000000e+00
  br i1 %cmp5, label %if.else.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.else.3
  %12 = load i32, i32* %sign, align 4, !tbaa !10
  %or = or i32 %12, 32767
  store i32 %or, i32* %expon, align 4, !tbaa !10
  store i64 0, i64* %hiMant, align 8, !tbaa !6
  store i64 0, i64* %loMant, align 8, !tbaa !6
  br label %if.end.24

if.else.7:                                        ; preds = %lor.lhs.false
  %13 = load i32, i32* %expon, align 4, !tbaa !10
  %add = add nsw i32 %13, 16382
  store i32 %add, i32* %expon, align 4, !tbaa !10
  %14 = load i32, i32* %expon, align 4, !tbaa !10
  %cmp8 = icmp slt i32 %14, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.else.7
  %15 = load double, double* %fMant, align 8, !tbaa !8
  %16 = load i32, i32* %expon, align 4, !tbaa !10
  %call10 = call double @ldexp(double %15, i32 %16) #1
  store double %call10, double* %fMant, align 8, !tbaa !8
  store i32 0, i32* %expon, align 4, !tbaa !10
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.else.7
  %17 = load i32, i32* %sign, align 4, !tbaa !10
  %18 = load i32, i32* %expon, align 4, !tbaa !10
  %or12 = or i32 %18, %17
  store i32 %or12, i32* %expon, align 4, !tbaa !10
  %19 = load double, double* %fMant, align 8, !tbaa !8
  %call13 = call double @ldexp(double %19, i32 32) #1
  store double %call13, double* %fMant, align 8, !tbaa !8
  %20 = load double, double* %fMant, align 8, !tbaa !8
  %call14 = call double @floor(double %20) #4
  store double %call14, double* %fsMant, align 8, !tbaa !8
  %21 = load double, double* %fsMant, align 8, !tbaa !8
  %sub = fsub double %21, 0x41E0000000000000
  %conv = fptosi double %sub to i64
  %add15 = add nsw i64 %conv, 2147483647
  %add16 = add nsw i64 %add15, 1
  store i64 %add16, i64* %hiMant, align 8, !tbaa !6
  %22 = load double, double* %fMant, align 8, !tbaa !8
  %23 = load double, double* %fsMant, align 8, !tbaa !8
  %sub17 = fsub double %22, %23
  %call18 = call double @ldexp(double %sub17, i32 32) #1
  store double %call18, double* %fMant, align 8, !tbaa !8
  %24 = load double, double* %fMant, align 8, !tbaa !8
  %call19 = call double @floor(double %24) #4
  store double %call19, double* %fsMant, align 8, !tbaa !8
  %25 = load double, double* %fsMant, align 8, !tbaa !8
  %sub20 = fsub double %25, 0x41E0000000000000
  %conv21 = fptosi double %sub20 to i64
  %add22 = add nsw i64 %conv21, 2147483647
  %add23 = add nsw i64 %add22, 1
  store i64 %add23, i64* %loMant, align 8, !tbaa !6
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.11, %if.then.6
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.2
  %26 = load i32, i32* %expon, align 4, !tbaa !10
  %shr = ashr i32 %26, 8
  %conv26 = trunc i32 %shr to i8
  %27 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 0
  store i8 %conv26, i8* %arrayidx, align 1, !tbaa !5
  %28 = load i32, i32* %expon, align 4, !tbaa !10
  %conv27 = trunc i32 %28 to i8
  %29 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %conv27, i8* %arrayidx28, align 1, !tbaa !5
  %30 = load i64, i64* %hiMant, align 8, !tbaa !6
  %shr29 = lshr i64 %30, 24
  %conv30 = trunc i64 %shr29 to i8
  %31 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %31, i64 2
  store i8 %conv30, i8* %arrayidx31, align 1, !tbaa !5
  %32 = load i64, i64* %hiMant, align 8, !tbaa !6
  %shr32 = lshr i64 %32, 16
  %conv33 = trunc i64 %shr32 to i8
  %33 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %33, i64 3
  store i8 %conv33, i8* %arrayidx34, align 1, !tbaa !5
  %34 = load i64, i64* %hiMant, align 8, !tbaa !6
  %shr35 = lshr i64 %34, 8
  %conv36 = trunc i64 %shr35 to i8
  %35 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %35, i64 4
  store i8 %conv36, i8* %arrayidx37, align 1, !tbaa !5
  %36 = load i64, i64* %hiMant, align 8, !tbaa !6
  %conv38 = trunc i64 %36 to i8
  %37 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %37, i64 5
  store i8 %conv38, i8* %arrayidx39, align 1, !tbaa !5
  %38 = load i64, i64* %loMant, align 8, !tbaa !6
  %shr40 = lshr i64 %38, 24
  %conv41 = trunc i64 %shr40 to i8
  %39 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %39, i64 6
  store i8 %conv41, i8* %arrayidx42, align 1, !tbaa !5
  %40 = load i64, i64* %loMant, align 8, !tbaa !6
  %shr43 = lshr i64 %40, 16
  %conv44 = trunc i64 %shr43 to i8
  %41 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %41, i64 7
  store i8 %conv44, i8* %arrayidx45, align 1, !tbaa !5
  %42 = load i64, i64* %loMant, align 8, !tbaa !6
  %shr46 = lshr i64 %42, 8
  %conv47 = trunc i64 %shr46 to i8
  %43 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %43, i64 8
  store i8 %conv47, i8* %arrayidx48, align 1, !tbaa !5
  %44 = load i64, i64* %loMant, align 8, !tbaa !6
  %conv49 = trunc i64 %44 to i8
  %45 = load i8*, i8** %bytes.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %45, i64 9
  store i8 %conv49, i8* %arrayidx50, align 1, !tbaa !5
  %46 = bitcast i64* %loMant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i64* %hiMant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast double* %fsMant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast double* %fMant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %expon to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !3, i64 0}
