; ModuleID = './MultiSource.Benchmarks.Prolangs-C/239.TimberWolfMC.wireest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blockmx = external global i32, align 4
@blockl = external global i32, align 4
@blockr = external global i32, align 4
@blockmy = external global i32, align 4
@blockt = external global i32, align 4
@blockb = external global i32, align 4
@slopeX = external global double, align 8
@basefactor = external global double, align 8
@slopeY = external global double, align 8
@aveChanWid = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @wireestx(i32 %xc, i32 %yy1, i32 %yy2, double %factor3) #0 {
entry:
  %xc.addr = alloca i32, align 4
  %yy1.addr = alloca i32, align 4
  %yy2.addr = alloca i32, align 4
  %factor3.addr = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %factor1 = alloca double, align 8
  %factor2 = alloca double, align 8
  store i32 %xc, i32* %xc.addr, align 4
  store i32 %yy1, i32* %yy1.addr, align 4
  store i32 %yy2, i32* %yy2.addr, align 4
  store double %factor3, double* %factor3.addr, align 8
  %0 = load i32, i32* %xc.addr, align 4
  %1 = load i32, i32* @blockmx, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %xc.addr, align 4
  %3 = load i32, i32* @blockl, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %x, align 4
  %4 = load i32, i32* %x, align 4
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.7

if.else:                                          ; preds = %entry
  %5 = load i32, i32* @blockr, align 4
  %6 = load i32, i32* %xc.addr, align 4
  %sub3 = sub nsw i32 %5, %6
  store i32 %sub3, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %x, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %8 = load i32, i32* %yy2.addr, align 4
  %9 = load i32, i32* @blockmy, align 4
  %cmp8 = icmp sge i32 %8, %9
  br i1 %cmp8, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.end.7
  %10 = load i32, i32* %yy1.addr, align 4
  %11 = load i32, i32* @blockmy, align 4
  %cmp9 = icmp sle i32 %10, %11
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* @blockt, align 4
  %13 = load i32, i32* @blockb, align 4
  %sub11 = sub nsw i32 %12, %13
  %div = sdiv i32 %sub11, 2
  store i32 %div, i32* %y, align 4
  br label %if.end.39

if.else.12:                                       ; preds = %land.lhs.true, %if.end.7
  %14 = load i32, i32* %yy1.addr, align 4
  %15 = load i32, i32* @blockmy, align 4
  %sub13 = sub nsw i32 %14, %15
  %cmp14 = icmp sge i32 %sub13, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.12
  %16 = load i32, i32* %yy1.addr, align 4
  %17 = load i32, i32* @blockmy, align 4
  %sub15 = sub nsw i32 %16, %17
  br label %cond.end

cond.false:                                       ; preds = %if.else.12
  %18 = load i32, i32* %yy1.addr, align 4
  %19 = load i32, i32* @blockmy, align 4
  %sub16 = sub nsw i32 %18, %19
  %sub17 = sub nsw i32 0, %sub16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub15, %cond.true ], [ %sub17, %cond.false ]
  %20 = load i32, i32* %yy2.addr, align 4
  %21 = load i32, i32* @blockmy, align 4
  %sub18 = sub nsw i32 %20, %21
  %cmp19 = icmp sge i32 %sub18, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.end
  %22 = load i32, i32* %yy2.addr, align 4
  %23 = load i32, i32* @blockmy, align 4
  %sub21 = sub nsw i32 %22, %23
  br label %cond.end.25

cond.false.22:                                    ; preds = %cond.end
  %24 = load i32, i32* %yy2.addr, align 4
  %25 = load i32, i32* @blockmy, align 4
  %sub23 = sub nsw i32 %24, %25
  %sub24 = sub nsw i32 0, %sub23
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.20
  %cond26 = phi i32 [ %sub21, %cond.true.20 ], [ %sub24, %cond.false.22 ]
  %cmp27 = icmp sle i32 %cond, %cond26
  br i1 %cmp27, label %if.then.28, label %if.else.33

if.then.28:                                       ; preds = %cond.end.25
  %26 = load i32, i32* @blockt, align 4
  %27 = load i32, i32* %yy1.addr, align 4
  %sub29 = sub nsw i32 %26, %27
  store i32 %sub29, i32* %y, align 4
  %28 = load i32, i32* %y, align 4
  %cmp30 = icmp slt i32 %28, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  store i32 0, i32* %y, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.28
  br label %if.end.38

if.else.33:                                       ; preds = %cond.end.25
  %29 = load i32, i32* %yy2.addr, align 4
  %30 = load i32, i32* @blockb, align 4
  %sub34 = sub nsw i32 %29, %30
  store i32 %sub34, i32* %y, align 4
  %31 = load i32, i32* %y, align 4
  %cmp35 = icmp slt i32 %31, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else.33
  store i32 0, i32* %y, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.else.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.10
  %32 = load double, double* @slopeX, align 8
  %33 = load i32, i32* %x, align 4
  %conv = sitofp i32 %33 to double
  %mul = fmul double %32, %conv
  %34 = load double, double* @basefactor, align 8
  %add = fadd double %mul, %34
  store double %add, double* %factor1, align 8
  %35 = load double, double* @slopeY, align 8
  %36 = load i32, i32* %y, align 4
  %conv40 = sitofp i32 %36 to double
  %mul41 = fmul double %35, %conv40
  %37 = load double, double* @basefactor, align 8
  %add42 = fadd double %mul41, %37
  store double %add42, double* %factor2, align 8
  %38 = load double, double* %factor1, align 8
  %39 = load double, double* %factor2, align 8
  %mul43 = fmul double %38, %39
  %40 = load double, double* %factor3.addr, align 8
  %mul44 = fmul double %mul43, %40
  %41 = load i32, i32* @aveChanWid, align 4
  %conv45 = sitofp i32 %41 to double
  %mul46 = fmul double %mul44, %conv45
  %mul47 = fmul double 5.000000e-01, %mul46
  %conv48 = fptosi double %mul47 to i32
  ret i32 %conv48
}

; Function Attrs: nounwind uwtable
define i32 @wireesty(i32 %yc, i32 %xx1, i32 %xx2, double %factor3) #0 {
entry:
  %yc.addr = alloca i32, align 4
  %xx1.addr = alloca i32, align 4
  %xx2.addr = alloca i32, align 4
  %factor3.addr = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %factor1 = alloca double, align 8
  %factor2 = alloca double, align 8
  store i32 %yc, i32* %yc.addr, align 4
  store i32 %xx1, i32* %xx1.addr, align 4
  store i32 %xx2, i32* %xx2.addr, align 4
  store double %factor3, double* %factor3.addr, align 8
  %0 = load i32, i32* %yc.addr, align 4
  %1 = load i32, i32* @blockmy, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %yc.addr, align 4
  %3 = load i32, i32* @blockb, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %y, align 4
  %4 = load i32, i32* %y, align 4
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.7

if.else:                                          ; preds = %entry
  %5 = load i32, i32* @blockt, align 4
  %6 = load i32, i32* %yc.addr, align 4
  %sub3 = sub nsw i32 %5, %6
  store i32 %sub3, i32* %y, align 4
  %7 = load i32, i32* %y, align 4
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %y, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %8 = load i32, i32* %xx2.addr, align 4
  %9 = load i32, i32* @blockmx, align 4
  %cmp8 = icmp sge i32 %8, %9
  br i1 %cmp8, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.end.7
  %10 = load i32, i32* %xx1.addr, align 4
  %11 = load i32, i32* @blockmx, align 4
  %cmp9 = icmp sle i32 %10, %11
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* @blockr, align 4
  %13 = load i32, i32* @blockl, align 4
  %sub11 = sub nsw i32 %12, %13
  %div = sdiv i32 %sub11, 2
  store i32 %div, i32* %x, align 4
  br label %if.end.39

if.else.12:                                       ; preds = %land.lhs.true, %if.end.7
  %14 = load i32, i32* %xx1.addr, align 4
  %15 = load i32, i32* @blockmx, align 4
  %sub13 = sub nsw i32 %14, %15
  %cmp14 = icmp sge i32 %sub13, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.12
  %16 = load i32, i32* %xx1.addr, align 4
  %17 = load i32, i32* @blockmx, align 4
  %sub15 = sub nsw i32 %16, %17
  br label %cond.end

cond.false:                                       ; preds = %if.else.12
  %18 = load i32, i32* %xx1.addr, align 4
  %19 = load i32, i32* @blockmx, align 4
  %sub16 = sub nsw i32 %18, %19
  %sub17 = sub nsw i32 0, %sub16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub15, %cond.true ], [ %sub17, %cond.false ]
  %20 = load i32, i32* %xx2.addr, align 4
  %21 = load i32, i32* @blockmx, align 4
  %sub18 = sub nsw i32 %20, %21
  %cmp19 = icmp sge i32 %sub18, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.end
  %22 = load i32, i32* %xx2.addr, align 4
  %23 = load i32, i32* @blockmx, align 4
  %sub21 = sub nsw i32 %22, %23
  br label %cond.end.25

cond.false.22:                                    ; preds = %cond.end
  %24 = load i32, i32* %xx2.addr, align 4
  %25 = load i32, i32* @blockmx, align 4
  %sub23 = sub nsw i32 %24, %25
  %sub24 = sub nsw i32 0, %sub23
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.20
  %cond26 = phi i32 [ %sub21, %cond.true.20 ], [ %sub24, %cond.false.22 ]
  %cmp27 = icmp sle i32 %cond, %cond26
  br i1 %cmp27, label %if.then.28, label %if.else.33

if.then.28:                                       ; preds = %cond.end.25
  %26 = load i32, i32* @blockr, align 4
  %27 = load i32, i32* %xx1.addr, align 4
  %sub29 = sub nsw i32 %26, %27
  store i32 %sub29, i32* %x, align 4
  %28 = load i32, i32* %x, align 4
  %cmp30 = icmp slt i32 %28, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  store i32 0, i32* %x, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.28
  br label %if.end.38

if.else.33:                                       ; preds = %cond.end.25
  %29 = load i32, i32* %xx2.addr, align 4
  %30 = load i32, i32* @blockl, align 4
  %sub34 = sub nsw i32 %29, %30
  store i32 %sub34, i32* %x, align 4
  %31 = load i32, i32* %x, align 4
  %cmp35 = icmp slt i32 %31, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else.33
  store i32 0, i32* %x, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.else.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.10
  %32 = load double, double* @slopeX, align 8
  %33 = load i32, i32* %x, align 4
  %conv = sitofp i32 %33 to double
  %mul = fmul double %32, %conv
  %34 = load double, double* @basefactor, align 8
  %add = fadd double %mul, %34
  store double %add, double* %factor1, align 8
  %35 = load double, double* @slopeY, align 8
  %36 = load i32, i32* %y, align 4
  %conv40 = sitofp i32 %36 to double
  %mul41 = fmul double %35, %conv40
  %37 = load double, double* @basefactor, align 8
  %add42 = fadd double %mul41, %37
  store double %add42, double* %factor2, align 8
  %38 = load double, double* %factor1, align 8
  %39 = load double, double* %factor2, align 8
  %mul43 = fmul double %38, %39
  %40 = load double, double* %factor3.addr, align 8
  %mul44 = fmul double %mul43, %40
  %41 = load i32, i32* @aveChanWid, align 4
  %conv45 = sitofp i32 %41 to double
  %mul46 = fmul double %mul44, %conv45
  %mul47 = fmul double 5.000000e-01, %mul46
  %conv48 = fptosi double %mul47 to i32
  ret i32 %conv48
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
