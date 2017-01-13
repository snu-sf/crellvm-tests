; ModuleID = './MultiSource.Benchmarks.mediabench/94.mpeg2.mpeg2dec.idctref.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = internal global [8 x [8 x double]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @Initialize_Reference_IDCT() #0 {
entry:
  %freq = alloca i32, align 4
  %time = alloca i32, align 4
  %scale = alloca double, align 8
  store i32 0, i32* %freq, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %0 = load i32, i32* %freq, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %freq, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %call = call double @sqrt(double 1.250000e-01) #3
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call, %cond.true ], [ 5.000000e-01, %cond.false ]
  store double %cond, double* %scale, align 8
  store i32 0, i32* %time, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %cond.end
  %2 = load i32, i32* %time, align 4
  %cmp3 = icmp slt i32 %2, 8
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %3 = load double, double* %scale, align 8
  %4 = load i32, i32* %freq, align 4
  %conv = sitofp i32 %4 to double
  %mul = fmul double 0x3FD921FB54442D18, %conv
  %5 = load i32, i32* %time, align 4
  %conv5 = sitofp i32 %5 to double
  %add = fadd double %conv5, 5.000000e-01
  %mul6 = fmul double %mul, %add
  %call7 = call double @cos(double %mul6) #3
  %mul8 = fmul double %3, %call7
  %6 = load i32, i32* %time, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %freq, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i32 0, i64 %idxprom9
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i32 0, i64 %idxprom
  store double %mul8, double* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %8 = load i32, i32* %time, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %time, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %9 = load i32, i32* %freq, align 4
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, i32* %freq, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind uwtable
define void @Reference_IDCT(i16* %block) #0 {
entry:
  %block.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %v = alloca i32, align 4
  %partial_product = alloca double, align 8
  %tmp = alloca [64 x double], align 16
  store i16* %block, i16** %block.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.18, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body.3, label %for.end.20

for.body.3:                                       ; preds = %for.cond.1
  store double 0.000000e+00, double* %partial_product, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 8
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i32 0, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx8, align 8
  %6 = load i32, i32* %i, align 4
  %mul = mul nsw i32 8, %6
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %mul, %7
  %idxprom9 = sext i32 %add to i64
  %8 = load i16*, i16** %block.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %8, i64 %idxprom9
  %9 = load i16, i16* %arrayidx10, align 2
  %conv = sext i16 %9 to i32
  %conv11 = sitofp i32 %conv to double
  %mul12 = fmul double %5, %conv11
  %10 = load double, double* %partial_product, align 8
  %add13 = fadd double %10, %mul12
  store double %add13, double* %partial_product, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %12 = load double, double* %partial_product, align 8
  %13 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 8, %13
  %14 = load i32, i32* %j, align 4
  %add15 = add nsw i32 %mul14, %14
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [64 x double], [64 x double]* %tmp, i32 0, i64 %idxprom16
  store double %12, double* %arrayidx17, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %15 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %15, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond.1

for.end.20:                                       ; preds = %for.cond.1
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end.20
  %16 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.67, %for.end.23
  %17 = load i32, i32* %j, align 4
  %cmp25 = icmp slt i32 %17, 8
  br i1 %cmp25, label %for.body.27, label %for.end.69

for.body.27:                                      ; preds = %for.cond.24
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.64, %for.body.27
  %18 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %18, 8
  br i1 %cmp29, label %for.body.31, label %for.end.66

for.body.31:                                      ; preds = %for.cond.28
  store double 0.000000e+00, double* %partial_product, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.46, %for.body.31
  %19 = load i32, i32* %k, align 4
  %cmp33 = icmp slt i32 %19, 8
  br i1 %cmp33, label %for.body.35, label %for.end.48

for.body.35:                                      ; preds = %for.cond.32
  %20 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %20 to i64
  %21 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %21 to i64
  %arrayidx38 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx38, i32 0, i64 %idxprom36
  %22 = load double, double* %arrayidx39, align 8
  %23 = load i32, i32* %k, align 4
  %mul40 = mul nsw i32 8, %23
  %24 = load i32, i32* %j, align 4
  %add41 = add nsw i32 %mul40, %24
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [64 x double], [64 x double]* %tmp, i32 0, i64 %idxprom42
  %25 = load double, double* %arrayidx43, align 8
  %mul44 = fmul double %22, %25
  %26 = load double, double* %partial_product, align 8
  %add45 = fadd double %26, %mul44
  store double %add45, double* %partial_product, align 8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.35
  %27 = load i32, i32* %k, align 4
  %inc47 = add nsw i32 %27, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond.32

for.end.48:                                       ; preds = %for.cond.32
  %28 = load double, double* %partial_product, align 8
  %add49 = fadd double %28, 5.000000e-01
  %call = call double @floor(double %add49) #4
  %conv50 = fptosi double %call to i32
  store i32 %conv50, i32* %v, align 4
  %29 = load i32, i32* %v, align 4
  %cmp51 = icmp slt i32 %29, -256
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.48
  br label %cond.end.57

cond.false:                                       ; preds = %for.end.48
  %30 = load i32, i32* %v, align 4
  %cmp53 = icmp sgt i32 %30, 255
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.false
  br label %cond.end

cond.false.56:                                    ; preds = %cond.false
  %31 = load i32, i32* %v, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.56, %cond.true.55
  %cond = phi i32 [ 255, %cond.true.55 ], [ %31, %cond.false.56 ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end, %cond.true
  %cond58 = phi i32 [ -256, %cond.true ], [ %cond, %cond.end ]
  %conv59 = trunc i32 %cond58 to i16
  %32 = load i32, i32* %i, align 4
  %mul60 = mul nsw i32 8, %32
  %33 = load i32, i32* %j, align 4
  %add61 = add nsw i32 %mul60, %33
  %idxprom62 = sext i32 %add61 to i64
  %34 = load i16*, i16** %block.addr, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %34, i64 %idxprom62
  store i16 %conv59, i16* %arrayidx63, align 2
  br label %for.inc.64

for.inc.64:                                       ; preds = %cond.end.57
  %35 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %35, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.28

for.end.66:                                       ; preds = %for.cond.28
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.66
  %36 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %36, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond.24

for.end.69:                                       ; preds = %for.cond.24
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
