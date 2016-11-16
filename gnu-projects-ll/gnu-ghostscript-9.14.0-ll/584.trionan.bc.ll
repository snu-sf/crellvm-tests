; ModuleID = './trionan.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ieee_754_negzero_array = internal constant [8 x i8] c"\80\00\00\00\00\00\00\00", align 1
@trio_pinf.pinf_value = internal global double 0.000000e+00, align 8
@trio_ninf.ninf_value = internal global double 0.000000e+00, align 8
@trio_nan.nan_value = internal global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internalEndianMagic = internal constant double 0x706050403020100, align 8

; Function Attrs: nounwind uwtable
define i32 @trio_fpclassify_and_signbit(double %number, i32* %is_negative) #0 {
entry:
  %number.addr = alloca double, align 8
  %is_negative.addr = alloca i32*, align 8
  store double %number, double* %number.addr, align 8, !tbaa !1
  store i32* %is_negative, i32** %is_negative.addr, align 8, !tbaa !5
  %0 = load double, double* %number.addr, align 8, !tbaa !1
  %1 = load i32*, i32** %is_negative.addr, align 8, !tbaa !5
  %call = call i32 @c99_fpclassify_and_signbit(double %0, i32* %1) #5
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @c99_fpclassify_and_signbit(double %number, i32* %is_negative) #1 {
entry:
  %retval = alloca i32, align 4
  %number.addr = alloca double, align 8
  %is_negative.addr = alloca i32*, align 8
  store double %number, double* %number.addr, align 8, !tbaa !1
  store i32* %is_negative, i32** %is_negative.addr, align 8, !tbaa !5
  %0 = load double, double* %number.addr, align 8, !tbaa !1
  %call = call i32 @__signbit(double %0) #6
  %1 = load i32*, i32** %is_negative.addr, align 8, !tbaa !5
  store i32 %call, i32* %1, align 4, !tbaa !7
  %2 = load double, double* %number.addr, align 8, !tbaa !1
  %call1 = call i32 @__fpclassify(double %2) #6
  switch i32 %call1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @trio_isnan(double %number) #0 {
entry:
  %number.addr = alloca double, align 8
  %dummy = alloca i32, align 4
  store double %number, double* %number.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load double, double* %number.addr, align 8, !tbaa !1
  %call = call i32 @trio_fpclassify_and_signbit(double %1, i32* %dummy) #5
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  %2 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2) #2
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @trio_isinf(double %number) #0 {
entry:
  %retval = alloca i32, align 4
  %number.addr = alloca double, align 8
  %is_negative = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store double %number, double* %number.addr, align 8, !tbaa !1
  %0 = bitcast i32* %is_negative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load double, double* %number.addr, align 8, !tbaa !1
  %call = call i32 @trio_fpclassify_and_signbit(double %1, i32* %is_negative) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %is_negative, align 4, !tbaa !7
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 -1, i32 1
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %3 = bitcast i32* %is_negative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #2
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @trio_isfinite(double %number) #0 {
entry:
  %retval = alloca i32, align 4
  %number.addr = alloca double, align 8
  %dummy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store double %number, double* %number.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load double, double* %number.addr, align 8, !tbaa !1
  %call = call i32 @trio_fpclassify_and_signbit(double %1, i32* %dummy) #5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb
  %2 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2) #2
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @trio_signbit(double %number) #0 {
entry:
  %number.addr = alloca double, align 8
  %is_negative = alloca i32, align 4
  store double %number, double* %number.addr, align 8, !tbaa !1
  %0 = bitcast i32* %is_negative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load double, double* %number.addr, align 8, !tbaa !1
  %call = call i32 @trio_fpclassify_and_signbit(double %1, i32* %is_negative) #5
  %2 = load i32, i32* %is_negative, align 4, !tbaa !7
  %3 = bitcast i32* %is_negative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #2
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @trio_fpclassify(double %number) #0 {
entry:
  %number.addr = alloca double, align 8
  %dummy = alloca i32, align 4
  store double %number, double* %number.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load double, double* %number.addr, align 8, !tbaa !1
  %call = call i32 @trio_fpclassify_and_signbit(double %1, i32* %dummy) #5
  %2 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define double @trio_nzero() #0 {
entry:
  %call = call double @internal_make_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ieee_754_negzero_array, i32 0, i32 0)) #5
  ret double %call
}

; Function Attrs: nounwind uwtable
define internal double @internal_make_double(i8* %values) #0 {
entry:
  %values.addr = alloca i8*, align 8
  %result = alloca double, align 8
  %i = alloca i32, align 4
  store i8* %values, i8** %values.addr, align 8, !tbaa !5
  %0 = bitcast double* %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !7
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %values.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %6 = load i32, i32* %i, align 4, !tbaa !7
  %sub = sub nsw i32 7, %6
  %idxprom1 = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds i8, i8* bitcast (double* @internalEndianMagic to i8*), i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1, !tbaa !9
  %idxprom3 = zext i8 %7 to i64
  %8 = bitcast double* %result to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %idxprom3
  store volatile i8 %5, i8* %arrayidx4, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load volatile double, double* %result, align 8, !tbaa !1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast double* %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret double %10
}

; Function Attrs: nounwind uwtable
define double @trio_pinf() #0 {
entry:
  %0 = load double, double* @trio_pinf.pinf_value, align 8, !tbaa !1
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0x7FF0000000000000, double* @trio_pinf.pinf_value, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* @trio_pinf.pinf_value, align 8, !tbaa !1
  ret double %1
}

; Function Attrs: nounwind uwtable
define double @trio_ninf() #0 {
entry:
  %0 = load double, double* @trio_ninf.ninf_value, align 8, !tbaa !1
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call double @trio_pinf() #5
  %sub = fsub double -0.000000e+00, %call
  store double %sub, double* @trio_ninf.ninf_value, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* @trio_ninf.ninf_value, align 8, !tbaa !1
  ret double %1
}

; Function Attrs: nounwind uwtable
define double @trio_nan() #0 {
entry:
  %0 = load double, double* @trio_nan.nan_value, align 8, !tbaa !1
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call double @nan(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #6
  store double %call, double* @trio_nan.nan_value, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* @trio_nan.nan_value, align 8, !tbaa !1
  ret double %1
}

; Function Attrs: nounwind readnone
declare double @nan(i8*) #3

; Function Attrs: alwaysinline inlinehint nounwind readnone uwtable
define available_externally i32 @__signbit(double %__x) #4 {
entry:
  %__x.addr = alloca double, align 8
  %__m = alloca i32, align 4
  store double %__x, double* %__x.addr, align 8, !tbaa !1
  %0 = bitcast i32* %__m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load double, double* %__x.addr, align 8, !tbaa !1
  %2 = call i32 asm "pmovmskb $1, $0", "=r,x,~{dirflag},~{fpsr},~{flags}"(double %1) #7, !srcloc !10
  store i32 %2, i32* %__m, align 4, !tbaa !7
  %3 = load i32, i32* %__m, align 4, !tbaa !7
  %and = and i32 %3, 128
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %4 = bitcast i32* %__m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #2
  ret i32 %conv
}

; Function Attrs: nounwind readnone
declare i32 @__fpclassify(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline inlinehint nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{i32 61365}
