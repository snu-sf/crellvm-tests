; ModuleID = './MultiSource.Benchmarks.MiBench/9.consumer-lame.vbrquantize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@pow43 = external global [8208 x double], align 16
@pretab = external global [21 x i32], align 16
@masking_lower = external global float, align 4
@convert_mdct = external global i32, align 4
@scalefac_band = external global %struct.scalefac_struct, align 4

; Function Attrs: nounwind uwtable
define double @calc_sfb_ave_noise(double* %xr, double* %xr34, i32 %stride, i32 %bw, double %sfpow) #0 {
entry:
  %retval = alloca double, align 8
  %xr.addr = alloca double*, align 8
  %xr34.addr = alloca double*, align 8
  %stride.addr = alloca i32, align 4
  %bw.addr = alloca i32, align 4
  %sfpow.addr = alloca double, align 8
  %j = alloca i32, align 4
  %xfsf = alloca double, align 8
  %sfpow34 = alloca double, align 8
  %ix = alloca i32, align 4
  %temp = alloca double, align 8
  %temp2 = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double* %xr, double** %xr.addr, align 8, !tbaa !1
  store double* %xr34, double** %xr34.addr, align 8, !tbaa !1
  store i32 %stride, i32* %stride.addr, align 4, !tbaa !5
  store i32 %bw, i32* %bw.addr, align 4, !tbaa !5
  store double %sfpow, double* %sfpow.addr, align 8, !tbaa !7
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast double* %xfsf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store double 0.000000e+00, double* %xfsf, align 8, !tbaa !7
  %2 = bitcast double* %sfpow34 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load double, double* %sfpow.addr, align 8, !tbaa !7
  %call = call double @pow(double %3, double 7.500000e-01) #1
  store double %call, double* %sfpow34, align 8, !tbaa !7
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4, !tbaa !5
  %5 = load i32, i32* %stride.addr, align 4, !tbaa !5
  %6 = load i32, i32* %bw.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %5, %6
  %cmp = icmp slt i32 %4, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast double* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast double* %temp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load double*, double** %xr34.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  %12 = load double, double* %arrayidx, align 8, !tbaa !7
  %13 = load double, double* %sfpow34, align 8, !tbaa !7
  %div = fdiv double %12, %13
  %call1 = call double @floor(double %div) #6
  %conv = fptosi double %call1 to i32
  store i32 %conv, i32* %ix, align 4, !tbaa !5
  %14 = load i32, i32* %ix, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %14, 8206
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store double -1.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %15 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %15 to i64
  %16 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds double, double* %16, i64 %idxprom4
  %17 = load double, double* %arrayidx5, align 8, !tbaa !7
  %call6 = call double @fabs(double %17) #6
  %18 = load i32, i32* %ix, align 4, !tbaa !5
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i64 %idxprom7
  %19 = load double, double* %arrayidx8, align 8, !tbaa !7
  %20 = load double, double* %sfpow.addr, align 8, !tbaa !7
  %mul9 = fmul double %19, %20
  %sub = fsub double %call6, %mul9
  store double %sub, double* %temp, align 8, !tbaa !7
  %21 = load i32, i32* %ix, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %21, 8206
  br i1 %cmp10, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %if.end
  %22 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %22 to i64
  %23 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds double, double* %23, i64 %idxprom13
  %24 = load double, double* %arrayidx14, align 8, !tbaa !7
  %call15 = call double @fabs(double %24) #6
  %25 = load i32, i32* %ix, align 4, !tbaa !5
  %add = add nsw i32 %25, 1
  %idxprom16 = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i64 %idxprom16
  %26 = load double, double* %arrayidx17, align 8, !tbaa !7
  %27 = load double, double* %sfpow.addr, align 8, !tbaa !7
  %mul18 = fmul double %26, %27
  %sub19 = fsub double %call15, %mul18
  store double %sub19, double* %temp2, align 8, !tbaa !7
  %28 = load double, double* %temp2, align 8, !tbaa !7
  %call20 = call double @fabs(double %28) #6
  %29 = load double, double* %temp, align 8, !tbaa !7
  %call21 = call double @fabs(double %29) #6
  %cmp22 = fcmp olt double %call20, %call21
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.12
  %30 = load double, double* %temp2, align 8, !tbaa !7
  store double %30, double* %temp, align 8, !tbaa !7
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.12
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  %31 = load double, double* %temp, align 8, !tbaa !7
  %32 = load double, double* %temp, align 8, !tbaa !7
  %mul27 = fmul double %31, %32
  %33 = load double, double* %xfsf, align 8, !tbaa !7
  %add28 = fadd double %33, %mul27
  store double %add28, double* %xfsf, align 8, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then
  %34 = bitcast double* %temp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast double* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %37 = load i32, i32* %stride.addr, align 4, !tbaa !5
  %38 = load i32, i32* %j, align 4, !tbaa !5
  %add31 = add nsw i32 %38, %37
  store i32 %add31, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load double, double* %xfsf, align 8, !tbaa !7
  %40 = load i32, i32* %bw.addr, align 4, !tbaa !5
  %conv32 = sitofp i32 %40 to double
  %div33 = fdiv double %39, %conv32
  store double %div33, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %for.end, %cleanup
  %41 = bitcast double* %sfpow34 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast double* %xfsf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = load double, double* %retval
  ret double %44
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define double @find_scalefac(double* %xr, double* %xr34, i32 %stride, i32 %sfb, double %l3_xmin, i32 %bw) #0 {
entry:
  %retval = alloca double, align 8
  %xr.addr = alloca double*, align 8
  %xr34.addr = alloca double*, align 8
  %stride.addr = alloca i32, align 4
  %sfb.addr = alloca i32, align 4
  %l3_xmin.addr = alloca double, align 8
  %bw.addr = alloca i32, align 4
  %xfsf = alloca double, align 8
  %sfpow = alloca double, align 8
  %sf = alloca double, align 8
  %sf_ok = alloca double, align 8
  %delsf = alloca double, align 8
  %sf4 = alloca i32, align 4
  %sf_ok4 = alloca i32, align 4
  %delsf4 = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store double* %xr, double** %xr.addr, align 8, !tbaa !1
  store double* %xr34, double** %xr34.addr, align 8, !tbaa !1
  store i32 %stride, i32* %stride.addr, align 4, !tbaa !5
  store i32 %sfb, i32* %sfb.addr, align 4, !tbaa !5
  store double %l3_xmin, double* %l3_xmin.addr, align 8, !tbaa !7
  store i32 %bw, i32* %bw.addr, align 4, !tbaa !5
  %0 = bitcast double* %xfsf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %sfpow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %sf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %sf_ok to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %delsf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %sf4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %sf_ok4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %delsf4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store double -2.050000e+01, double* %sf, align 8, !tbaa !7
  store i32 -82, i32* %sf4, align 4, !tbaa !5
  store double 3.200000e+01, double* %delsf, align 8, !tbaa !7
  store i32 128, i32* %delsf4, align 4, !tbaa !5
  store double 1.000000e+04, double* %sf_ok, align 8, !tbaa !7
  store i32 10000, i32* %sf_ok4, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load double, double* %delsf, align 8, !tbaa !7
  %div = fdiv double %10, 2.000000e+00
  store double %div, double* %delsf, align 8, !tbaa !7
  %11 = load i32, i32* %delsf4, align 4, !tbaa !5
  %div1 = sdiv i32 %11, 2
  store i32 %div1, i32* %delsf4, align 4, !tbaa !5
  %12 = load double, double* %sf, align 8, !tbaa !7
  %call = call double @pow(double 2.000000e+00, double %12) #1
  store double %call, double* %sfpow, align 8, !tbaa !7
  %13 = load double*, double** %xr.addr, align 8, !tbaa !1
  %14 = load double*, double** %xr34.addr, align 8, !tbaa !1
  %15 = load i32, i32* %stride.addr, align 4, !tbaa !5
  %16 = load i32, i32* %bw.addr, align 4, !tbaa !5
  %17 = load double, double* %sfpow, align 8, !tbaa !7
  %call2 = call double @calc_sfb_ave_noise(double* %13, double* %14, i32 %15, i32 %16, double %17)
  store double %call2, double* %xfsf, align 8, !tbaa !7
  %18 = load double, double* %xfsf, align 8, !tbaa !7
  %cmp3 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %19 = load double, double* %delsf, align 8, !tbaa !7
  %20 = load double, double* %sf, align 8, !tbaa !7
  %add = fadd double %20, %19
  store double %add, double* %sf, align 8, !tbaa !7
  %21 = load i32, i32* %delsf4, align 4, !tbaa !5
  %22 = load i32, i32* %sf4, align 4, !tbaa !5
  %add4 = add nsw i32 %22, %21
  store i32 %add4, i32* %sf4, align 4, !tbaa !5
  br label %if.end.17

if.else:                                          ; preds = %for.body
  %23 = load double, double* %sf_ok, align 8, !tbaa !7
  %cmp5 = fcmp oeq double %23, 1.000000e+04
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %24 = load double, double* %sf, align 8, !tbaa !7
  store double %24, double* %sf_ok, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  %25 = load i32, i32* %sf_ok4, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %25, 10000
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %26 = load i32, i32* %sf4, align 4, !tbaa !5
  store i32 %26, i32* %sf_ok4, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %27 = load double, double* %xfsf, align 8, !tbaa !7
  %28 = load double, double* %l3_xmin.addr, align 8, !tbaa !7
  %cmp10 = fcmp ogt double %27, %28
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.end.9
  %29 = load double, double* %delsf, align 8, !tbaa !7
  %30 = load double, double* %sf, align 8, !tbaa !7
  %sub = fsub double %30, %29
  store double %sub, double* %sf, align 8, !tbaa !7
  %31 = load i32, i32* %delsf4, align 4, !tbaa !5
  %32 = load i32, i32* %sf4, align 4, !tbaa !5
  %sub12 = sub nsw i32 %32, %31
  store i32 %sub12, i32* %sf4, align 4, !tbaa !5
  br label %if.end.16

if.else.13:                                       ; preds = %if.end.9
  %33 = load double, double* %sf, align 8, !tbaa !7
  store double %33, double* %sf_ok, align 8, !tbaa !7
  %34 = load i32, i32* %sf4, align 4, !tbaa !5
  store i32 %34, i32* %sf_ok4, align 4, !tbaa !5
  %35 = load double, double* %delsf, align 8, !tbaa !7
  %36 = load double, double* %sf, align 8, !tbaa !7
  %add14 = fadd double %36, %35
  store double %add14, double* %sf, align 8, !tbaa !7
  %37 = load i32, i32* %delsf4, align 4, !tbaa !5
  %38 = load i32, i32* %sf4, align 4, !tbaa !5
  %add15 = add nsw i32 %38, %37
  store i32 %add15, i32* %sf4, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load double, double* %sf_ok, align 8, !tbaa !7
  %add18 = fadd double %40, 7.500000e-01
  store double %add18, double* %sf, align 8, !tbaa !7
  %41 = load i32, i32* %sf_ok4, align 4, !tbaa !5
  %add19 = add nsw i32 %41, 3
  store i32 %add19, i32* %sf4, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.42, %for.end
  %42 = load double, double* %sf, align 8, !tbaa !7
  %43 = load double, double* %sf_ok, align 8, !tbaa !7
  %add20 = fadd double %43, 1.000000e-02
  %cmp21 = fcmp ogt double %42, %add20
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load double, double* %sf, align 8, !tbaa !7
  %45 = load double, double* %sf_ok, align 8, !tbaa !7
  %46 = load double, double* %delsf, align 8, !tbaa !7
  %mul = fmul double 2.000000e+00, %46
  %add22 = fadd double %45, %mul
  %sub23 = fsub double %44, %add22
  %call24 = call double @fabs(double %sub23) #6
  %cmp25 = fcmp olt double %call24, 1.000000e-02
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %while.body
  %47 = load double, double* %sf, align 8, !tbaa !7
  %sub27 = fsub double %47, 2.500000e-01
  store double %sub27, double* %sf, align 8, !tbaa !7
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %while.body
  %48 = load i32, i32* %sf4, align 4, !tbaa !5
  %49 = load i32, i32* %sf_ok4, align 4, !tbaa !5
  %50 = load i32, i32* %delsf4, align 4, !tbaa !5
  %mul29 = mul nsw i32 2, %50
  %add30 = add nsw i32 %49, %mul29
  %cmp31 = icmp eq i32 %48, %add30
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.28
  %51 = load i32, i32* %sf4, align 4, !tbaa !5
  %sub33 = sub nsw i32 %51, 1
  store i32 %sub33, i32* %sf4, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.28
  %52 = load double, double* %sf, align 8, !tbaa !7
  %call35 = call double @pow(double 2.000000e+00, double %52) #1
  store double %call35, double* %sfpow, align 8, !tbaa !7
  %53 = load double*, double** %xr.addr, align 8, !tbaa !1
  %54 = load double*, double** %xr34.addr, align 8, !tbaa !1
  %55 = load i32, i32* %stride.addr, align 4, !tbaa !5
  %56 = load i32, i32* %bw.addr, align 4, !tbaa !5
  %57 = load double, double* %sfpow, align 8, !tbaa !7
  %call36 = call double @calc_sfb_ave_noise(double* %53, double* %54, i32 %55, i32 %56, double %57)
  store double %call36, double* %xfsf, align 8, !tbaa !7
  %58 = load double, double* %xfsf, align 8, !tbaa !7
  %cmp37 = fcmp ogt double %58, 0.000000e+00
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end.34
  %59 = load double, double* %xfsf, align 8, !tbaa !7
  %60 = load double, double* %l3_xmin.addr, align 8, !tbaa !7
  %cmp39 = fcmp ole double %59, %60
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.38
  %61 = load double, double* %sf, align 8, !tbaa !7
  store double %61, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.34
  %62 = load double, double* %sf, align 8, !tbaa !7
  %sub43 = fsub double %62, 2.500000e-01
  store double %sub43, double* %sf, align 8, !tbaa !7
  %63 = load i32, i32* %sf4, align 4, !tbaa !5
  %sub44 = sub nsw i32 %63, 1
  store i32 %sub44, i32* %sf4, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %64 = load double, double* %sf_ok, align 8, !tbaa !7
  store double %64, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.40
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %delsf4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %sf_ok4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %sf4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast double* %delsf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast double* %sf_ok to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast double* %sf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast double* %sfpow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast double* %xfsf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = load double, double* %retval
  ret double %74
}

; Function Attrs: nounwind uwtable
define double @compute_scalefacs_short([3 x double]* %vbrsf, %struct.gr_info* %cod_info, [3 x i32]* %scalefac) #0 {
entry:
  %vbrsf.addr = alloca [3 x double]*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %scalefac.addr = alloca [3 x i32]*, align 8
  %maxrange = alloca double, align 8
  %maxover = alloca double, align 8
  %sf = alloca [12 x [3 x double]], align 16
  %sfb = alloca i32, align 4
  %i = alloca i32, align 4
  %ifqstep_inv = alloca i32, align 4
  store [3 x double]* %vbrsf, [3 x double]** %vbrsf.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  store [3 x i32]* %scalefac, [3 x i32]** %scalefac.addr, align 8, !tbaa !1
  %0 = bitcast double* %maxrange to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %maxover to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [12 x [3 x double]]* %sf to i8*
  call void @llvm.lifetime.start(i64 288, i8* %2) #1
  %3 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %ifqstep_inv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_scale = getelementptr inbounds %struct.gr_info, %struct.gr_info* %6, i32 0, i32 13
  %7 = load i32, i32* %scalefac_scale, align 4, !tbaa !9
  %cmp = icmp eq i32 %7, 0
  %cond = select i1 %cmp, i32 2, i32 1
  store i32 %cond, i32* %ifqstep_inv, align 4, !tbaa !5
  %8 = bitcast [12 x [3 x double]]* %sf to i8*
  %9 = load [3 x double]*, [3 x double]** %vbrsf.addr, align 8, !tbaa !1
  %10 = bitcast [3 x double]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %10, i64 288, i32 8, i1 false)
  store double 0.000000e+00, double* %maxover, align 8, !tbaa !7
  store i32 0, i32* %sfb, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %11 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %11, 12
  br i1 %cmp1, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %12, 3
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %sf, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 %idxprom
  %15 = load double, double* %arrayidx6, align 8, !tbaa !7
  %sub = fsub double -0.000000e+00, %15
  %16 = load i32, i32* %ifqstep_inv, align 4, !tbaa !5
  %conv = sitofp i32 %16 to double
  %mul = fmul double %sub, %conv
  %add = fadd double %mul, 7.500000e-01
  %add7 = fadd double %add, 1.000000e-04
  %call = call double @floor(double %add7) #6
  %conv8 = fptosi double %call to i32
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %17 to i64
  %18 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom10 = sext i32 %18 to i64
  %19 = load [3 x i32]*, [3 x i32]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx11, i32 0, i64 %idxprom9
  store i32 %conv8, i32* %arrayidx12, align 4, !tbaa !5
  %20 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %20, 6
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.4
  %21 = load i32, i32* %ifqstep_inv, align 4, !tbaa !5
  %conv15 = sitofp i32 %21 to double
  %div = fdiv double 1.500000e+01, %conv15
  store double %div, double* %maxrange, align 8, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %for.body.4
  %22 = load i32, i32* %ifqstep_inv, align 4, !tbaa !5
  %conv16 = sitofp i32 %22 to double
  %div17 = fdiv double 7.000000e+00, %conv16
  store double %div17, double* %maxrange, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load double, double* %maxrange, align 8, !tbaa !7
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %24 to i64
  %25 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %sf, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx20, i32 0, i64 %idxprom18
  %26 = load double, double* %arrayidx21, align 8, !tbaa !7
  %add22 = fadd double %23, %26
  %27 = load double, double* %maxover, align 8, !tbaa !7
  %cmp23 = fcmp ogt double %add22, %27
  br i1 %cmp23, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.end
  %28 = load double, double* %maxrange, align 8, !tbaa !7
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %29 to i64
  %30 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds [12 x [3 x double]], [12 x [3 x double]]* %sf, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx28, i32 0, i64 %idxprom26
  %31 = load double, double* %arrayidx29, align 8, !tbaa !7
  %add30 = fadd double %28, %31
  store double %add30, double* %maxover, align 8, !tbaa !7
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %33 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc33 = add nsw i32 %33, 1
  store i32 %inc33, i32* %sfb, align 4, !tbaa !5
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %34 = load double, double* %maxover, align 8, !tbaa !7
  %35 = bitcast i32* %ifqstep_inv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast [12 x [3 x double]]* %sf to i8*
  call void @llvm.lifetime.end(i64 288, i8* %38) #1
  %39 = bitcast double* %maxover to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast double* %maxrange to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret double %34
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define double @compute_scalefacs_long(double* %vbrsf, %struct.gr_info* %cod_info, i32* %scalefac) #0 {
entry:
  %vbrsf.addr = alloca double*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %scalefac.addr = alloca i32*, align 8
  %sfb = alloca i32, align 4
  %sf = alloca [21 x double], align 16
  %maxrange = alloca double, align 8
  %maxover = alloca double, align 8
  %ifqstep_inv = alloca i32, align 4
  store double* %vbrsf, double** %vbrsf.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  store i32* %scalefac, i32** %scalefac.addr, align 8, !tbaa !1
  %0 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [21 x double]* %sf to i8*
  call void @llvm.lifetime.start(i64 168, i8* %1) #1
  %2 = bitcast double* %maxrange to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %maxover to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %ifqstep_inv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_scale = getelementptr inbounds %struct.gr_info, %struct.gr_info* %5, i32 0, i32 13
  %6 = load i32, i32* %scalefac_scale, align 4, !tbaa !9
  %cmp = icmp eq i32 %6, 0
  %cond = select i1 %cmp, i32 2, i32 1
  store i32 %cond, i32* %ifqstep_inv, align 4, !tbaa !5
  %7 = bitcast [21 x double]* %sf to i8*
  %8 = load double*, double** %vbrsf.addr, align 8, !tbaa !1
  %9 = bitcast double* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %9, i64 168, i32 8, i1 false)
  %10 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %preflag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %10, i32 0, i32 12
  store i32 0, i32* %preflag, align 4, !tbaa !11
  store i32 11, i32* %sfb, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %11, 21
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [21 x double], [21 x double]* %sf, i32 0, i64 %idxprom
  %13 = load double, double* %arrayidx, align 8, !tbaa !7
  %14 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom2 = sext i32 %14 to i64
  %arrayidx3 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i32 0, i64 %idxprom2
  %15 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %16 = load i32, i32* %ifqstep_inv, align 4, !tbaa !5
  %div = sdiv i32 %15, %16
  %conv = sitofp i32 %div to double
  %add = fadd double %13, %conv
  %cmp4 = fcmp ogt double %add, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %sfb, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %18 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %18, 21
  br i1 %cmp6, label %if.then.8, label %if.end.24

if.then.8:                                        ; preds = %for.end
  %19 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %preflag9 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %19, i32 0, i32 12
  store i32 1, i32* %preflag9, align 4, !tbaa !11
  store i32 11, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %if.then.8
  %20 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %20, 21
  br i1 %cmp11, label %for.body.13, label %for.end.23

for.body.13:                                      ; preds = %for.cond.10
  %21 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i32 0, i64 %idxprom14
  %22 = load i32, i32* %arrayidx15, align 4, !tbaa !5
  %23 = load i32, i32* %ifqstep_inv, align 4, !tbaa !5
  %div16 = sdiv i32 %22, %23
  %conv17 = sitofp i32 %div16 to double
  %24 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [21 x double], [21 x double]* %sf, i32 0, i64 %idxprom18
  %25 = load double, double* %arrayidx19, align 8, !tbaa !7
  %add20 = fadd double %25, %conv17
  store double %add20, double* %arrayidx19, align 8, !tbaa !7
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.13
  %26 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.10

for.end.23:                                       ; preds = %for.cond.10
  br label %if.end.24

if.end.24:                                        ; preds = %for.end.23, %for.end
  store double 0.000000e+00, double* %maxover, align 8, !tbaa !7
  store i32 0, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.55, %if.end.24
  %27 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %27, 21
  br i1 %cmp26, label %for.body.28, label %for.end.57

for.body.28:                                      ; preds = %for.cond.25
  %28 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [21 x double], [21 x double]* %sf, i32 0, i64 %idxprom29
  %29 = load double, double* %arrayidx30, align 8, !tbaa !7
  %sub = fsub double -0.000000e+00, %29
  %30 = load i32, i32* %ifqstep_inv, align 4, !tbaa !5
  %conv31 = sitofp i32 %30 to double
  %mul = fmul double %sub, %conv31
  %add32 = fadd double %mul, 7.500000e-01
  %add33 = fadd double %add32, 1.000000e-04
  %call = call double @floor(double %add33) #6
  %conv34 = fptosi double %call to i32
  %31 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom35 = sext i32 %31 to i64
  %32 = load i32*, i32** %scalefac.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i32, i32* %32, i64 %idxprom35
  store i32 %conv34, i32* %arrayidx36, align 4, !tbaa !5
  %33 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %33, 11
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %for.body.28
  %34 = load i32, i32* %ifqstep_inv, align 4, !tbaa !5
  %conv40 = sitofp i32 %34 to double
  %div41 = fdiv double 1.500000e+01, %conv40
  store double %div41, double* %maxrange, align 8, !tbaa !7
  br label %if.end.44

if.else:                                          ; preds = %for.body.28
  %35 = load i32, i32* %ifqstep_inv, align 4, !tbaa !5
  %conv42 = sitofp i32 %35 to double
  %div43 = fdiv double 7.000000e+00, %conv42
  store double %div43, double* %maxrange, align 8, !tbaa !7
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.39
  %36 = load double, double* %maxrange, align 8, !tbaa !7
  %37 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds [21 x double], [21 x double]* %sf, i32 0, i64 %idxprom45
  %38 = load double, double* %arrayidx46, align 8, !tbaa !7
  %add47 = fadd double %36, %38
  %39 = load double, double* %maxover, align 8, !tbaa !7
  %cmp48 = fcmp ogt double %add47, %39
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.44
  %40 = load double, double* %maxrange, align 8, !tbaa !7
  %41 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom51 = sext i32 %41 to i64
  %arrayidx52 = getelementptr inbounds [21 x double], [21 x double]* %sf, i32 0, i64 %idxprom51
  %42 = load double, double* %arrayidx52, align 8, !tbaa !7
  %add53 = fadd double %40, %42
  store double %add53, double* %maxover, align 8, !tbaa !7
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.44
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %43 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc56 = add nsw i32 %43, 1
  store i32 %inc56, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.25

for.end.57:                                       ; preds = %for.cond.25
  %44 = load double, double* %maxover, align 8, !tbaa !7
  %45 = bitcast i32* %ifqstep_inv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast double* %maxover to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast double* %maxrange to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast [21 x double]* %sf to i8*
  call void @llvm.lifetime.end(i64 168, i8* %48) #1
  %49 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  ret double %44
}

; Function Attrs: nounwind uwtable
define void @VBR_iteration_loop_new(%struct.lame_global_flags* %gfp, [2 x double]* %pe, double* %ms_ener_ratio, [2 x [576 x double]]* %xr, [2 x %struct.III_psy_ratio]* %ratio, %struct.III_side_info_t* %l3_side, [2 x [576 x i32]]* %l3_enc, [2 x %struct.III_scalefac_t]* %scalefac) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %pe.addr = alloca [2 x double]*, align 8
  %ms_ener_ratio.addr = alloca double*, align 8
  %xr.addr = alloca [2 x [576 x double]]*, align 8
  %ratio.addr = alloca [2 x %struct.III_psy_ratio]*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %l3_enc.addr = alloca [2 x [576 x i32]]*, align 8
  %scalefac.addr = alloca [2 x %struct.III_scalefac_t]*, align 8
  %l3_xmin = alloca [2 x [2 x %struct.III_psy_xmin]], align 16
  %masking_lower_db = alloca double, align 8
  %ifqstep = alloca double, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %bw = alloca i32, align 4
  %sfb = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %over = alloca i32, align 4
  %vbrsf = alloca %struct.III_psy_xmin, align 8
  %vbrmax = alloca double, align 8
  %xr34 = alloca [576 x double], align 16
  %cod_info = alloca %struct.gr_info*, align 8
  %shortblock = alloca i32, align 4
  %temp = alloca double, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store [2 x double]* %pe, [2 x double]** %pe.addr, align 8, !tbaa !1
  store double* %ms_ener_ratio, double** %ms_ener_ratio.addr, align 8, !tbaa !1
  store [2 x [576 x double]]* %xr, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  store [2 x %struct.III_psy_ratio]* %ratio, [2 x %struct.III_psy_ratio]** %ratio.addr, align 8, !tbaa !1
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  store [2 x [576 x i32]]* %l3_enc, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  store [2 x %struct.III_scalefac_t]* %scalefac, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %0 = bitcast [2 x [2 x %struct.III_psy_xmin]]* %l3_xmin to i8*
  call void @llvm.lifetime.start(i64 1952, i8* %0) #1
  %1 = bitcast double* %masking_lower_db to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %ifqstep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %over to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast %struct.III_psy_xmin* %vbrsf to i8*
  call void @llvm.lifetime.start(i64 488, i8* %11) #1
  %12 = bitcast double* %vbrmax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %14 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %15 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  call void @iteration_init(%struct.lame_global_flags* %13, %struct.III_side_info_t* %14, [2 x [576 x i32]]* %15)
  %16 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %16, i32 0, i32 22
  %17 = load i32, i32* %VBR_q, align 4, !tbaa !12
  %mul = mul nsw i32 2, %17
  %add = add nsw i32 -10, %mul
  %conv = sitofp i32 %add to double
  store double %conv, double* %masking_lower_db, align 8, !tbaa !7
  %18 = load double, double* %masking_lower_db, align 8, !tbaa !7
  %div = fdiv double %18, 1.000000e+01
  %call = call double @pow(double 1.000000e+01, double %div) #1
  %conv1 = fptrunc double %call to float
  store float %conv1, float* @masking_lower, align 4, !tbaa !16
  store float 1.000000e+00, float* @masking_lower, align 4, !tbaa !16
  store i32 0, i32* %gr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.253, %entry
  %19 = load i32, i32* %gr, align 4, !tbaa !5
  %20 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %20, i32 0, i32 45
  %21 = load i32, i32* %mode_gr, align 4, !tbaa !17
  %cmp = icmp slt i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end.255

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* @convert_mdct, align 4, !tbaa !5
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %23 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %24 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %24, i64 %idxprom
  %arraydecay = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx, i32 0, i32 0
  %25 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom3 = sext i32 %25 to i64
  %26 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %26, i64 %idxprom3
  %arraydecay5 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx4, i32 0, i32 0
  call void @ms_convert([576 x double]* %arraydecay, [576 x double]* %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %ch, align 4, !tbaa !5
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.250, %if.end
  %27 = load i32, i32* %ch, align 4, !tbaa !5
  %28 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %28, i32 0, i32 46
  %29 = load i32, i32* %stereo, align 4, !tbaa !18
  %cmp7 = icmp slt i32 %27, %29
  br i1 %cmp7, label %for.body.9, label %for.end.252

for.body.9:                                       ; preds = %for.cond.6
  %30 = bitcast [576 x double]* %xr34 to i8*
  call void @llvm.lifetime.start(i64 4608, i8* %30) #1
  %31 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom10 = sext i32 %32 to i64
  %33 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom11 = sext i32 %33 to i64
  %34 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr12 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %34, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr12, i32 0, i64 %idxprom11
  %ch14 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch14, i32 0, i64 %idxprom10
  %tt = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx15, i32 0, i32 0
  store %struct.gr_info* %tt, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %35 = bitcast i32* %shortblock to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 0, i32* %over, align 4, !tbaa !5
  %36 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %36, i32 0, i32 6
  %37 = load i32, i32* %block_type, align 4, !tbaa !19
  %cmp16 = icmp eq i32 %37, 2
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %shortblock, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body.9
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %38, 576
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %39 = bitcast double* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %40 to i64
  %41 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom23 = sext i32 %41 to i64
  %42 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom24 = sext i32 %42 to i64
  %43 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %43, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx25, i32 0, i64 %idxprom23
  %arrayidx27 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx26, i32 0, i64 %idxprom22
  %44 = load double, double* %arrayidx27, align 8, !tbaa !7
  %call28 = call double @fabs(double %44) #6
  store double %call28, double* %temp, align 8, !tbaa !7
  %45 = load double, double* %temp, align 8, !tbaa !7
  %call29 = call double @sqrt(double %45) #1
  %46 = load double, double* %temp, align 8, !tbaa !7
  %mul30 = fmul double %call29, %46
  %call31 = call double @sqrt(double %mul30) #1
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %47 to i64
  %arrayidx33 = getelementptr inbounds [576 x double], [576 x double]* %xr34, i32 0, i64 %idxprom32
  store double %call31, double* %arrayidx33, align 8, !tbaa !7
  %48 = bitcast double* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %50 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %51 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom34 = sext i32 %51 to i64
  %52 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom35 = sext i32 %52 to i64
  %53 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %53, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx36, i32 0, i64 %idxprom34
  %arraydecay38 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx37, i32 0, i32 0
  %54 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom39 = sext i32 %54 to i64
  %55 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom40 = sext i32 %55 to i64
  %56 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %ratio.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %56, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %arrayidx41, i32 0, i64 %idxprom39
  %57 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %58 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom43 = sext i32 %58 to i64
  %59 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom44 = sext i32 %59 to i64
  %arrayidx45 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %l3_xmin, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %arrayidx45, i32 0, i64 %idxprom43
  %call47 = call i32 @calc_xmin(%struct.lame_global_flags* %50, double* %arraydecay38, %struct.III_psy_ratio* %arrayidx42, %struct.gr_info* %57, %struct.III_psy_xmin* %arrayidx46)
  store double 0.000000e+00, double* %vbrmax, align 8, !tbaa !7
  %60 = load i32, i32* %shortblock, align 4, !tbaa !5
  %tobool48 = icmp ne i32 %60, 0
  br i1 %tobool48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %for.end
  store i32 0, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.108, %if.then.49
  %61 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %61, 12
  br i1 %cmp51, label %for.body.53, label %for.end.110

for.body.53:                                      ; preds = %for.cond.50
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.105, %for.body.53
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %62, 3
  br i1 %cmp55, label %for.body.57, label %for.end.107

for.body.57:                                      ; preds = %for.cond.54
  %63 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom58 = sext i32 %63 to i64
  %arrayidx59 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom58
  %64 = load i32, i32* %arrayidx59, align 4, !tbaa !5
  store i32 %64, i32* %start, align 4, !tbaa !5
  %65 = load i32, i32* %sfb, align 4, !tbaa !5
  %add60 = add nsw i32 %65, 1
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom61
  %66 = load i32, i32* %arrayidx62, align 4, !tbaa !5
  store i32 %66, i32* %end, align 4, !tbaa !5
  %67 = load i32, i32* %end, align 4, !tbaa !5
  %68 = load i32, i32* %start, align 4, !tbaa !5
  %sub = sub nsw i32 %67, %68
  store i32 %sub, i32* %bw, align 4, !tbaa !5
  %69 = load i32, i32* %start, align 4, !tbaa !5
  %mul63 = mul nsw i32 3, %69
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %add64 = add nsw i32 %mul63, %70
  %idxprom65 = sext i32 %add64 to i64
  %71 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom66 = sext i32 %71 to i64
  %72 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom67 = sext i32 %72 to i64
  %73 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %73, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx68, i32 0, i64 %idxprom66
  %arrayidx70 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx69, i32 0, i64 %idxprom65
  %74 = load i32, i32* %start, align 4, !tbaa !5
  %mul71 = mul nsw i32 3, %74
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %add72 = add nsw i32 %mul71, %75
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [576 x double], [576 x double]* %xr34, i32 0, i64 %idxprom73
  %76 = load i32, i32* %sfb, align 4, !tbaa !5
  %77 = load float, float* @masking_lower, align 4, !tbaa !16
  %conv75 = fpext float %77 to double
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %78 to i64
  %79 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom77 = sext i32 %79 to i64
  %80 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom78 = sext i32 %80 to i64
  %81 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom79 = sext i32 %81 to i64
  %arrayidx80 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %l3_xmin, i32 0, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %arrayidx80, i32 0, i64 %idxprom78
  %s = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx81, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s, i32 0, i64 %idxprom77
  %arrayidx83 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx82, i32 0, i64 %idxprom76
  %82 = load double, double* %arrayidx83, align 8, !tbaa !7
  %mul84 = fmul double %conv75, %82
  %83 = load i32, i32* %bw, align 4, !tbaa !5
  %call85 = call double @find_scalefac(double* %arrayidx70, double* %arrayidx74, i32 3, i32 %76, double %mul84, i32 %83)
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom86 = sext i32 %84 to i64
  %85 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom87 = sext i32 %85 to i64
  %s88 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s88, i32 0, i64 %idxprom87
  %arrayidx90 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx89, i32 0, i64 %idxprom86
  store double %call85, double* %arrayidx90, align 8, !tbaa !7
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom91 = sext i32 %86 to i64
  %87 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom92 = sext i32 %87 to i64
  %s93 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s93, i32 0, i64 %idxprom92
  %arrayidx95 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx94, i32 0, i64 %idxprom91
  %88 = load double, double* %arrayidx95, align 8, !tbaa !7
  %89 = load double, double* %vbrmax, align 8, !tbaa !7
  %cmp96 = fcmp ogt double %88, %89
  br i1 %cmp96, label %if.then.98, label %if.end.104

if.then.98:                                       ; preds = %for.body.57
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom99 = sext i32 %90 to i64
  %91 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom100 = sext i32 %91 to i64
  %s101 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s101, i32 0, i64 %idxprom100
  %arrayidx103 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx102, i32 0, i64 %idxprom99
  %92 = load double, double* %arrayidx103, align 8, !tbaa !7
  store double %92, double* %vbrmax, align 8, !tbaa !7
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.98, %for.body.57
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %inc106 = add nsw i32 %93, 1
  store i32 %inc106, i32* %i, align 4, !tbaa !5
  br label %for.cond.54

for.end.107:                                      ; preds = %for.cond.54
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.107
  %94 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc109 = add nsw i32 %94, 1
  store i32 %inc109, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.50

for.end.110:                                      ; preds = %for.cond.50
  br label %if.end.154

if.else:                                          ; preds = %for.end
  store i32 0, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.151, %if.else
  %95 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %95, 21
  br i1 %cmp112, label %for.body.114, label %for.end.153

for.body.114:                                     ; preds = %for.cond.111
  %96 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom115 = sext i32 %96 to i64
  %arrayidx116 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom115
  %97 = load i32, i32* %arrayidx116, align 4, !tbaa !5
  store i32 %97, i32* %start, align 4, !tbaa !5
  %98 = load i32, i32* %sfb, align 4, !tbaa !5
  %add117 = add nsw i32 %98, 1
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom118
  %99 = load i32, i32* %arrayidx119, align 4, !tbaa !5
  store i32 %99, i32* %end, align 4, !tbaa !5
  %100 = load i32, i32* %end, align 4, !tbaa !5
  %101 = load i32, i32* %start, align 4, !tbaa !5
  %sub120 = sub nsw i32 %100, %101
  store i32 %sub120, i32* %bw, align 4, !tbaa !5
  %102 = load i32, i32* %start, align 4, !tbaa !5
  %idxprom121 = sext i32 %102 to i64
  %103 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom122 = sext i32 %103 to i64
  %104 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom123 = sext i32 %104 to i64
  %105 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %105, i64 %idxprom123
  %arrayidx125 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx124, i32 0, i64 %idxprom122
  %arrayidx126 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx125, i32 0, i64 %idxprom121
  %106 = load i32, i32* %start, align 4, !tbaa !5
  %idxprom127 = sext i32 %106 to i64
  %arrayidx128 = getelementptr inbounds [576 x double], [576 x double]* %xr34, i32 0, i64 %idxprom127
  %107 = load i32, i32* %sfb, align 4, !tbaa !5
  %108 = load float, float* @masking_lower, align 4, !tbaa !16
  %conv129 = fpext float %108 to double
  %109 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom130 = sext i32 %109 to i64
  %110 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom131 = sext i32 %110 to i64
  %111 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom132 = sext i32 %111 to i64
  %arrayidx133 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], [2 x [2 x %struct.III_psy_xmin]]* %l3_xmin, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %arrayidx133, i32 0, i64 %idxprom131
  %l = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx134, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [22 x double], [22 x double]* %l, i32 0, i64 %idxprom130
  %112 = load double, double* %arrayidx135, align 8, !tbaa !7
  %mul136 = fmul double %conv129, %112
  %113 = load i32, i32* %bw, align 4, !tbaa !5
  %call137 = call double @find_scalefac(double* %arrayidx126, double* %arrayidx128, i32 1, i32 %107, double %mul136, i32 %113)
  %114 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom138 = sext i32 %114 to i64
  %l139 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [22 x double], [22 x double]* %l139, i32 0, i64 %idxprom138
  store double %call137, double* %arrayidx140, align 8, !tbaa !7
  %115 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom141 = sext i32 %115 to i64
  %l142 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [22 x double], [22 x double]* %l142, i32 0, i64 %idxprom141
  %116 = load double, double* %arrayidx143, align 8, !tbaa !7
  %117 = load double, double* %vbrmax, align 8, !tbaa !7
  %cmp144 = fcmp ogt double %116, %117
  br i1 %cmp144, label %if.then.146, label %if.end.150

if.then.146:                                      ; preds = %for.body.114
  %118 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom147 = sext i32 %118 to i64
  %l148 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [22 x double], [22 x double]* %l148, i32 0, i64 %idxprom147
  %119 = load double, double* %arrayidx149, align 8, !tbaa !7
  store double %119, double* %vbrmax, align 8, !tbaa !7
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.146, %for.body.114
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150
  %120 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc152 = add nsw i32 %120, 1
  store i32 %inc152, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.111

for.end.153:                                      ; preds = %for.cond.111
  br label %if.end.154

if.end.154:                                       ; preds = %for.end.153, %for.end.110
  %121 = load double, double* %vbrmax, align 8, !tbaa !7
  %mul155 = fmul double 4.000000e+00, %121
  %add156 = fadd double %mul155, 2.100000e+02
  %add157 = fadd double %add156, 5.000000e-01
  %call158 = call double @floor(double %add157) #6
  %conv159 = fptoui double %call158 to i32
  %122 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %global_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %122, i32 0, i32 3
  store i32 %conv159, i32* %global_gain, align 4, !tbaa !20
  %123 = load i32, i32* %shortblock, align 4, !tbaa !5
  %tobool160 = icmp ne i32 %123, 0
  br i1 %tobool160, label %if.then.161, label %if.else.209

if.then.161:                                      ; preds = %if.end.154
  store i32 0, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.179, %if.then.161
  %124 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp163 = icmp slt i32 %124, 12
  br i1 %cmp163, label %for.body.165, label %for.end.181

for.body.165:                                     ; preds = %for.cond.162
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.176, %for.body.165
  %125 = load i32, i32* %i, align 4, !tbaa !5
  %cmp167 = icmp slt i32 %125, 3
  br i1 %cmp167, label %for.body.169, label %for.end.178

for.body.169:                                     ; preds = %for.cond.166
  %126 = load double, double* %vbrmax, align 8, !tbaa !7
  %127 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom170 = sext i32 %127 to i64
  %128 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom171 = sext i32 %128 to i64
  %s172 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s172, i32 0, i64 %idxprom171
  %arrayidx174 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx173, i32 0, i64 %idxprom170
  %129 = load double, double* %arrayidx174, align 8, !tbaa !7
  %sub175 = fsub double %129, %126
  store double %sub175, double* %arrayidx174, align 8, !tbaa !7
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.169
  %130 = load i32, i32* %i, align 4, !tbaa !5
  %inc177 = add nsw i32 %130, 1
  store i32 %inc177, i32* %i, align 4, !tbaa !5
  br label %for.cond.166

for.end.178:                                      ; preds = %for.cond.166
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.end.178
  %131 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc180 = add nsw i32 %131, 1
  store i32 %inc180, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.162

for.end.181:                                      ; preds = %for.cond.162
  %132 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %scalefac_scale = getelementptr inbounds %struct.gr_info, %struct.gr_info* %132, i32 0, i32 13
  store i32 0, i32* %scalefac_scale, align 4, !tbaa !9
  %s182 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 1
  %arraydecay183 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s182, i32 0, i32 0
  %133 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %134 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom184 = sext i32 %134 to i64
  %135 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom185 = sext i32 %135 to i64
  %136 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %136, i64 %idxprom185
  %arrayidx187 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx186, i32 0, i64 %idxprom184
  %s188 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx187, i32 0, i32 1
  %arraydecay189 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s188, i32 0, i32 0
  %call190 = call double @compute_scalefacs_short([3 x double]* %arraydecay183, %struct.gr_info* %133, [3 x i32]* %arraydecay189)
  %cmp191 = fcmp ogt double %call190, 0.000000e+00
  br i1 %cmp191, label %if.then.193, label %if.end.208

if.then.193:                                      ; preds = %for.end.181
  %137 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %scalefac_scale194 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %137, i32 0, i32 13
  store i32 1, i32* %scalefac_scale194, align 4, !tbaa !9
  %s195 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 1
  %arraydecay196 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s195, i32 0, i32 0
  %138 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %139 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom197 = sext i32 %139 to i64
  %140 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom198 = sext i32 %140 to i64
  %141 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %141, i64 %idxprom198
  %arrayidx200 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx199, i32 0, i64 %idxprom197
  %s201 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx200, i32 0, i32 1
  %arraydecay202 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s201, i32 0, i32 0
  %call203 = call double @compute_scalefacs_short([3 x double]* %arraydecay196, %struct.gr_info* %138, [3 x i32]* %arraydecay202)
  %cmp204 = fcmp ogt double %call203, 0.000000e+00
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.then.193
  call void @exit(i32 32) #7
  unreachable

if.end.207:                                       ; preds = %if.then.193
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %for.end.181
  br label %if.end.249

if.else.209:                                      ; preds = %if.end.154
  store i32 0, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.218, %if.else.209
  %142 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp211 = icmp slt i32 %142, 21
  br i1 %cmp211, label %for.body.213, label %for.end.220

for.body.213:                                     ; preds = %for.cond.210
  %143 = load double, double* %vbrmax, align 8, !tbaa !7
  %144 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom214 = sext i32 %144 to i64
  %l215 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [22 x double], [22 x double]* %l215, i32 0, i64 %idxprom214
  %145 = load double, double* %arrayidx216, align 8, !tbaa !7
  %sub217 = fsub double %145, %143
  store double %sub217, double* %arrayidx216, align 8, !tbaa !7
  br label %for.inc.218

for.inc.218:                                      ; preds = %for.body.213
  %146 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc219 = add nsw i32 %146, 1
  store i32 %inc219, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.210

for.end.220:                                      ; preds = %for.cond.210
  %147 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %scalefac_scale221 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %147, i32 0, i32 13
  store i32 0, i32* %scalefac_scale221, align 4, !tbaa !9
  %l222 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 0
  %arraydecay223 = getelementptr inbounds [22 x double], [22 x double]* %l222, i32 0, i32 0
  %148 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %149 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom224 = sext i32 %149 to i64
  %150 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom225 = sext i32 %150 to i64
  %151 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %151, i64 %idxprom225
  %arrayidx227 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx226, i32 0, i64 %idxprom224
  %l228 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx227, i32 0, i32 0
  %arraydecay229 = getelementptr inbounds [22 x i32], [22 x i32]* %l228, i32 0, i32 0
  %call230 = call double @compute_scalefacs_long(double* %arraydecay223, %struct.gr_info* %148, i32* %arraydecay229)
  %cmp231 = fcmp ogt double %call230, 0.000000e+00
  br i1 %cmp231, label %if.then.233, label %if.end.248

if.then.233:                                      ; preds = %for.end.220
  %152 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %scalefac_scale234 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %152, i32 0, i32 13
  store i32 1, i32* %scalefac_scale234, align 4, !tbaa !9
  %l235 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %vbrsf, i32 0, i32 0
  %arraydecay236 = getelementptr inbounds [22 x double], [22 x double]* %l235, i32 0, i32 0
  %153 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %154 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom237 = sext i32 %154 to i64
  %155 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom238 = sext i32 %155 to i64
  %156 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %156, i64 %idxprom238
  %arrayidx240 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx239, i32 0, i64 %idxprom237
  %l241 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx240, i32 0, i32 0
  %arraydecay242 = getelementptr inbounds [22 x i32], [22 x i32]* %l241, i32 0, i32 0
  %call243 = call double @compute_scalefacs_long(double* %arraydecay236, %struct.gr_info* %153, i32* %arraydecay242)
  %cmp244 = fcmp ogt double %call243, 0.000000e+00
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.then.233
  call void @exit(i32 32) #7
  unreachable

if.end.247:                                       ; preds = %if.then.233
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %for.end.220
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.208
  %157 = bitcast i32* %shortblock to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast [576 x double]* %xr34 to i8*
  call void @llvm.lifetime.end(i64 4608, i8* %159) #1
  br label %for.inc.250

for.inc.250:                                      ; preds = %if.end.249
  %160 = load i32, i32* %ch, align 4, !tbaa !5
  %inc251 = add nsw i32 %160, 1
  store i32 %inc251, i32* %ch, align 4, !tbaa !5
  br label %for.cond.6

for.end.252:                                      ; preds = %for.cond.6
  br label %for.inc.253

for.inc.253:                                      ; preds = %for.end.252
  %161 = load i32, i32* %gr, align 4, !tbaa !5
  %inc254 = add nsw i32 %161, 1
  store i32 %inc254, i32* %gr, align 4, !tbaa !5
  br label %for.cond

for.end.255:                                      ; preds = %for.cond
  %162 = bitcast double* %vbrmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %struct.III_psy_xmin* %vbrsf to i8*
  call void @llvm.lifetime.end(i64 488, i8* %163) #1
  %164 = bitcast i32* %over to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast double* %ifqstep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast double* %masking_lower_db to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast [2 x [2 x %struct.III_psy_xmin]]* %l3_xmin to i8*
  call void @llvm.lifetime.end(i64 1952, i8* %174) #1
  ret void
}

declare void @iteration_init(%struct.lame_global_flags*, %struct.III_side_info_t*, [2 x [576 x i32]]*) #4

declare void @ms_convert([576 x double]*, [576 x double]*) #4

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare i32 @calc_xmin(%struct.lame_global_flags*, double*, %struct.III_psy_ratio*, %struct.gr_info*, %struct.III_psy_xmin*) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!10, !6, i64 68}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32, !3, i64 44, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !2, i64 96, !3, i64 104}
!11 = !{!10, !6, i64 64}
!12 = !{!13, !6, i64 92}
!13 = !{!"", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !3, i64 120, !6, i64 124, !2, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !15, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !14, i64 168, !14, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !15, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !15, i64 232, !15, i64 236, !15, i64 240, !15, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!14 = !{!"long", !3, i64 0}
!15 = !{!"float", !3, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!13, !6, i64 200}
!18 = !{!13, !6, i64 204}
!19 = !{!10, !6, i64 24}
!20 = !{!10, !6, i64 12}
