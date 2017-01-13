; ModuleID = './MultiSource.Benchmarks.MiBench/35.consumer-lame.tabinit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cos64 = internal global [16 x double] zeroinitializer, align 16
@cos32 = internal global [8 x double] zeroinitializer, align 16
@cos16 = internal global [4 x double] zeroinitializer, align 16
@cos8 = internal global [2 x double] zeroinitializer, align 16
@cos4 = internal global [1 x double] zeroinitializer, align 8
@pnts = global [5 x double*] [double* getelementptr inbounds ([16 x double], [16 x double]* @cos64, i32 0, i32 0), double* getelementptr inbounds ([8 x double], [8 x double]* @cos32, i32 0, i32 0), double* getelementptr inbounds ([4 x double], [4 x double]* @cos16, i32 0, i32 0), double* getelementptr inbounds ([2 x double], [2 x double]* @cos8, i32 0, i32 0), double* getelementptr inbounds ([1 x double], [1 x double]* @cos4, i32 0, i32 0)], align 16
@decwin = common global [544 x double] zeroinitializer, align 16
@intwinbase = internal global [257 x i64] [i64 0, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -2, i64 -2, i64 -2, i64 -2, i64 -3, i64 -3, i64 -4, i64 -4, i64 -5, i64 -5, i64 -6, i64 -7, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -13, i64 -14, i64 -16, i64 -17, i64 -19, i64 -21, i64 -24, i64 -26, i64 -29, i64 -31, i64 -35, i64 -38, i64 -41, i64 -45, i64 -49, i64 -53, i64 -58, i64 -63, i64 -68, i64 -73, i64 -79, i64 -85, i64 -91, i64 -97, i64 -104, i64 -111, i64 -117, i64 -125, i64 -132, i64 -139, i64 -147, i64 -154, i64 -161, i64 -169, i64 -176, i64 -183, i64 -190, i64 -196, i64 -202, i64 -208, i64 -213, i64 -218, i64 -222, i64 -225, i64 -227, i64 -228, i64 -228, i64 -227, i64 -224, i64 -221, i64 -215, i64 -208, i64 -200, i64 -189, i64 -177, i64 -163, i64 -146, i64 -127, i64 -106, i64 -83, i64 -57, i64 -29, i64 2, i64 36, i64 72, i64 111, i64 153, i64 197, i64 244, i64 294, i64 347, i64 401, i64 459, i64 519, i64 581, i64 645, i64 711, i64 779, i64 848, i64 919, i64 991, i64 1064, i64 1137, i64 1210, i64 1283, i64 1356, i64 1428, i64 1498, i64 1567, i64 1634, i64 1698, i64 1759, i64 1817, i64 1870, i64 1919, i64 1962, i64 2001, i64 2032, i64 2057, i64 2075, i64 2085, i64 2087, i64 2080, i64 2063, i64 2037, i64 2000, i64 1952, i64 1893, i64 1822, i64 1739, i64 1644, i64 1535, i64 1414, i64 1280, i64 1131, i64 970, i64 794, i64 605, i64 402, i64 185, i64 -45, i64 -288, i64 -545, i64 -814, i64 -1095, i64 -1388, i64 -1692, i64 -2006, i64 -2330, i64 -2663, i64 -3004, i64 -3351, i64 -3705, i64 -4063, i64 -4425, i64 -4788, i64 -5153, i64 -5517, i64 -5879, i64 -6237, i64 -6589, i64 -6935, i64 -7271, i64 -7597, i64 -7910, i64 -8209, i64 -8491, i64 -8755, i64 -8998, i64 -9219, i64 -9416, i64 -9585, i64 -9727, i64 -9838, i64 -9916, i64 -9959, i64 -9966, i64 -9935, i64 -9863, i64 -9750, i64 -9592, i64 -9389, i64 -9139, i64 -8840, i64 -8492, i64 -8092, i64 -7640, i64 -7134, i64 -6574, i64 -5959, i64 -5288, i64 -4561, i64 -3776, i64 -2935, i64 -2037, i64 -1082, i64 -70, i64 998, i64 2122, i64 3300, i64 4533, i64 5818, i64 7154, i64 8540, i64 9975, i64 11455, i64 12980, i64 14548, i64 16155, i64 17799, i64 19478, i64 21189, i64 22929, i64 24694, i64 26482, i64 28289, i64 30112, i64 31947, i64 33791, i64 35640, i64 37489, i64 39336, i64 41176, i64 43006, i64 44821, i64 46617, i64 48390, i64 50137, i64 51853, i64 53534, i64 55178, i64 56778, i64 58333, i64 59838, i64 61289, i64 62684, i64 64019, i64 65290, i64 66494, i64 67629, i64 68692, i64 69679, i64 70590, i64 71420, i64 72169, i64 72835, i64 73415, i64 73908, i64 74313, i64 74630, i64 74856, i64 74992, i64 75038], align 16

; Function Attrs: nounwind uwtable
define void @make_decode_tables(i64 %scaleval) #0 {
entry:
  %scaleval.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %kr = alloca i32, align 4
  %divv = alloca i32, align 4
  %table = alloca double*, align 8
  %costab = alloca double*, align 8
  store i64 %scaleval, i64* %scaleval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %kr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %divv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast double** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double** %costab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 5
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %shr = ashr i32 16, %8
  store i32 %shr, i32* %kr, align 4, !tbaa !5
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %shr1 = ashr i32 64, %9
  store i32 %shr1, i32* %divv, align 4, !tbaa !5
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [5 x double*], [5 x double*]* @pnts, i32 0, i64 %idxprom
  %11 = load double*, double** %arrayidx, align 8, !tbaa !7
  store double* %11, double** %costab, align 8, !tbaa !7
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %k, align 4, !tbaa !5
  %13 = load i32, i32* %kr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %12, %13
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %14 = load i32, i32* %k, align 4, !tbaa !5
  %conv = sitofp i32 %14 to double
  %mul = fmul double %conv, 2.000000e+00
  %add = fadd double %mul, 1.000000e+00
  %mul5 = fmul double 0x400921FB54442D18, %add
  %15 = load i32, i32* %divv, align 4, !tbaa !5
  %conv6 = sitofp i32 %15 to double
  %div = fdiv double %mul5, %conv6
  %call = call double @cos(double %div) #1
  %mul7 = fmul double 2.000000e+00, %call
  %div8 = fdiv double 1.000000e+00, %mul7
  %16 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %16 to i64
  %17 = load double*, double** %costab, align 8, !tbaa !7
  %arrayidx10 = getelementptr inbounds double, double* %17, i64 %idxprom9
  store double %div8, double* %arrayidx10, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %18 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store double* getelementptr inbounds ([544 x double], [544 x double]* @decwin, i32 0, i32 0), double** %table, align 8, !tbaa !7
  %20 = load i64, i64* %scaleval.addr, align 8, !tbaa !1
  %sub = sub nsw i64 0, %20
  store i64 %sub, i64* %scaleval.addr, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.38, %for.end.13
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %21, 256
  br i1 %cmp15, label %for.body.17, label %for.end.42

for.body.17:                                      ; preds = %for.cond.14
  %22 = load double*, double** %table, align 8, !tbaa !7
  %cmp18 = icmp ult double* %22, getelementptr inbounds ([544 x double], [544 x double]* @decwin, i32 0, i64 528)
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.17
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds [257 x i64], [257 x i64]* @intwinbase, i32 0, i64 %idxprom20
  %24 = load i64, i64* %arrayidx21, align 8, !tbaa !1
  %conv22 = sitofp i64 %24 to double
  %div23 = fdiv double %conv22, 6.553600e+04
  %25 = load i64, i64* %scaleval.addr, align 8, !tbaa !1
  %conv24 = sitofp i64 %25 to double
  %mul25 = fmul double %div23, %conv24
  %26 = load double*, double** %table, align 8, !tbaa !7
  %arrayidx26 = getelementptr inbounds double, double* %26, i64 0
  store double %mul25, double* %arrayidx26, align 8, !tbaa !9
  %27 = load double*, double** %table, align 8, !tbaa !7
  %arrayidx27 = getelementptr inbounds double, double* %27, i64 16
  store double %mul25, double* %arrayidx27, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.17
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %rem = srem i32 %28, 32
  %cmp28 = icmp eq i32 %rem, 31
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end
  %29 = load double*, double** %table, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds double, double* %29, i64 -1023
  store double* %add.ptr, double** %table, align 8, !tbaa !7
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %rem32 = srem i32 %30, 64
  %cmp33 = icmp eq i32 %rem32, 63
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.31
  %31 = load i64, i64* %scaleval.addr, align 8, !tbaa !1
  %sub36 = sub nsw i64 0, %31
  store i64 %sub36, i64* %scaleval.addr, align 8, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.31
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %32, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !5
  %33 = load i32, i32* %j, align 4, !tbaa !5
  %inc40 = add nsw i32 %33, 1
  store i32 %inc40, i32* %j, align 4, !tbaa !5
  %34 = load double*, double** %table, align 8, !tbaa !7
  %add.ptr41 = getelementptr inbounds double, double* %34, i64 32
  store double* %add.ptr41, double** %table, align 8, !tbaa !7
  br label %for.cond.14

for.end.42:                                       ; preds = %for.cond.14
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.71, %for.end.42
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %35, 512
  br i1 %cmp44, label %for.body.46, label %for.end.74

for.body.46:                                      ; preds = %for.cond.43
  %36 = load double*, double** %table, align 8, !tbaa !7
  %cmp47 = icmp ult double* %36, getelementptr inbounds ([544 x double], [544 x double]* @decwin, i32 0, i64 528)
  br i1 %cmp47, label %if.then.49, label %if.end.58

if.then.49:                                       ; preds = %for.body.46
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds [257 x i64], [257 x i64]* @intwinbase, i32 0, i64 %idxprom50
  %38 = load i64, i64* %arrayidx51, align 8, !tbaa !1
  %conv52 = sitofp i64 %38 to double
  %div53 = fdiv double %conv52, 6.553600e+04
  %39 = load i64, i64* %scaleval.addr, align 8, !tbaa !1
  %conv54 = sitofp i64 %39 to double
  %mul55 = fmul double %div53, %conv54
  %40 = load double*, double** %table, align 8, !tbaa !7
  %arrayidx56 = getelementptr inbounds double, double* %40, i64 0
  store double %mul55, double* %arrayidx56, align 8, !tbaa !9
  %41 = load double*, double** %table, align 8, !tbaa !7
  %arrayidx57 = getelementptr inbounds double, double* %41, i64 16
  store double %mul55, double* %arrayidx57, align 8, !tbaa !9
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.49, %for.body.46
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %rem59 = srem i32 %42, 32
  %cmp60 = icmp eq i32 %rem59, 31
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.58
  %43 = load double*, double** %table, align 8, !tbaa !7
  %add.ptr63 = getelementptr inbounds double, double* %43, i64 -1023
  store double* %add.ptr63, double** %table, align 8, !tbaa !7
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.58
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %rem65 = srem i32 %44, 64
  %cmp66 = icmp eq i32 %rem65, 63
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.64
  %45 = load i64, i64* %scaleval.addr, align 8, !tbaa !1
  %sub69 = sub nsw i64 0, %45
  store i64 %sub69, i64* %scaleval.addr, align 8, !tbaa !1
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.64
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %inc72 = add nsw i32 %46, 1
  store i32 %inc72, i32* %i, align 4, !tbaa !5
  %47 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  %48 = load double*, double** %table, align 8, !tbaa !7
  %add.ptr73 = getelementptr inbounds double, double* %48, i64 32
  store double* %add.ptr73, double** %table, align 8, !tbaa !7
  br label %for.cond.43

for.end.74:                                       ; preds = %for.cond.43
  %49 = bitcast double** %costab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast double** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %divv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %kr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !3, i64 0}
