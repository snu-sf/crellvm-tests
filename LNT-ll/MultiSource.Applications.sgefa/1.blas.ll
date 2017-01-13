; ModuleID = './MultiSource.Applications.sgefa/1.blas.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @isamax(i32 %n, float* %sx, i32 %incx) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %sx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %smax = alloca float, align 4
  %i = alloca i32, align 4
  %istmp = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %sx, float** %sx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  store float 0.000000e+00, float* %smax, align 4
  store i32 0, i32* %istmp, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %istmp, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %incx.addr, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.36

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %incx.addr, align 4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.2
  %4 = load float*, float** %sx.addr, align 8
  %5 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %5
  %add = add nsw i32 %sub, 1
  %6 = load i32, i32* %incx.addr, align 4
  %mul = mul nsw i32 %add, %6
  %add5 = add nsw i32 %mul, 1
  %idx.ext = sext i32 %add5 to i64
  %add.ptr = getelementptr inbounds float, float* %4, i64 %idx.ext
  store float* %add.ptr, float** %sx.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.2
  store i32 0, i32* %istmp, align 4
  %7 = load float*, float** %sx.addr, align 8
  %8 = load float, float* %7, align 4
  %conv = fpext float %8 to double
  %cmp7 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %9 = load float*, float** %sx.addr, align 8
  %10 = load float, float* %9, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %11 = load float*, float** %sx.addr, align 8
  %12 = load float, float* %11, align 4
  %sub9 = fsub float -0.000000e+00, %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %10, %cond.true ], [ %sub9, %cond.false ]
  store float %cond, float* %smax, align 4
  %13 = load i32, i32* %incx.addr, align 4
  %14 = load float*, float** %sx.addr, align 8
  %idx.ext10 = sext i32 %13 to i64
  %add.ptr11 = getelementptr inbounds float, float* %14, i64 %idx.ext10
  store float* %add.ptr11, float** %sx.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n.addr, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load float*, float** %sx.addr, align 8
  %18 = load float, float* %17, align 4
  %conv14 = fpext float %18 to double
  %cmp15 = fcmp ogt double %conv14, 0.000000e+00
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %for.body
  %19 = load float*, float** %sx.addr, align 8
  %20 = load float, float* %19, align 4
  br label %cond.end.20

cond.false.18:                                    ; preds = %for.body
  %21 = load float*, float** %sx.addr, align 8
  %22 = load float, float* %21, align 4
  %sub19 = fsub float -0.000000e+00, %22
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.17
  %cond21 = phi float [ %20, %cond.true.17 ], [ %sub19, %cond.false.18 ]
  %23 = load float, float* %smax, align 4
  %cmp22 = fcmp ogt float %cond21, %23
  br i1 %cmp22, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %cond.end.20
  %24 = load i32, i32* %i, align 4
  store i32 %24, i32* %istmp, align 4
  %25 = load float*, float** %sx.addr, align 8
  %26 = load float, float* %25, align 4
  %conv25 = fpext float %26 to double
  %cmp26 = fcmp ogt double %conv25, 0.000000e+00
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.then.24
  %27 = load float*, float** %sx.addr, align 8
  %28 = load float, float* %27, align 4
  br label %cond.end.31

cond.false.29:                                    ; preds = %if.then.24
  %29 = load float*, float** %sx.addr, align 8
  %30 = load float, float* %29, align 4
  %sub30 = fsub float -0.000000e+00, %30
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.28
  %cond32 = phi float [ %28, %cond.true.28 ], [ %sub30, %cond.false.29 ]
  store float %cond32, float* %smax, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.31, %cond.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  %32 = load i32, i32* %incx.addr, align 4
  %33 = load float*, float** %sx.addr, align 8
  %idx.ext34 = sext i32 %32 to i64
  %add.ptr35 = getelementptr inbounds float, float* %33, i64 %idx.ext34
  store float* %add.ptr35, float** %sx.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %istmp, align 4
  store i32 %34, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end
  store i32 0, i32* %istmp, align 4
  %35 = load float*, float** %sx.addr, align 8
  %36 = load float, float* %35, align 4
  %conv37 = fpext float %36 to double
  %cmp38 = fcmp ogt double %conv37, 0.000000e+00
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.end.36
  %37 = load float*, float** %sx.addr, align 8
  %38 = load float, float* %37, align 4
  br label %cond.end.43

cond.false.41:                                    ; preds = %if.end.36
  %39 = load float*, float** %sx.addr, align 8
  %40 = load float, float* %39, align 4
  %sub42 = fsub float -0.000000e+00, %40
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.40
  %cond44 = phi float [ %38, %cond.true.40 ], [ %sub42, %cond.false.41 ]
  store float %cond44, float* %smax, align 4
  %41 = load float*, float** %sx.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %41, i32 1
  store float* %incdec.ptr, float** %sx.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.69, %cond.end.43
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %n.addr, align 4
  %cmp46 = icmp slt i32 %42, %43
  br i1 %cmp46, label %for.body.48, label %for.end.72

for.body.48:                                      ; preds = %for.cond.45
  %44 = load float*, float** %sx.addr, align 8
  %45 = load float, float* %44, align 4
  %conv49 = fpext float %45 to double
  %cmp50 = fcmp ogt double %conv49, 0.000000e+00
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %for.body.48
  %46 = load float*, float** %sx.addr, align 8
  %47 = load float, float* %46, align 4
  br label %cond.end.55

cond.false.53:                                    ; preds = %for.body.48
  %48 = load float*, float** %sx.addr, align 8
  %49 = load float, float* %48, align 4
  %sub54 = fsub float -0.000000e+00, %49
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.52
  %cond56 = phi float [ %47, %cond.true.52 ], [ %sub54, %cond.false.53 ]
  %50 = load float, float* %smax, align 4
  %cmp57 = fcmp ogt float %cond56, %50
  br i1 %cmp57, label %if.then.59, label %if.end.68

if.then.59:                                       ; preds = %cond.end.55
  %51 = load i32, i32* %i, align 4
  store i32 %51, i32* %istmp, align 4
  %52 = load float*, float** %sx.addr, align 8
  %53 = load float, float* %52, align 4
  %conv60 = fpext float %53 to double
  %cmp61 = fcmp ogt double %conv60, 0.000000e+00
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %if.then.59
  %54 = load float*, float** %sx.addr, align 8
  %55 = load float, float* %54, align 4
  br label %cond.end.66

cond.false.64:                                    ; preds = %if.then.59
  %56 = load float*, float** %sx.addr, align 8
  %57 = load float, float* %56, align 4
  %sub65 = fsub float -0.000000e+00, %57
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.63
  %cond67 = phi float [ %55, %cond.true.63 ], [ %sub65, %cond.false.64 ]
  store float %cond67, float* %smax, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %cond.end.66, %cond.end.55
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %58 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %58, 1
  store i32 %inc70, i32* %i, align 4
  %59 = load float*, float** %sx.addr, align 8
  %incdec.ptr71 = getelementptr inbounds float, float* %59, i32 1
  store float* %incdec.ptr71, float** %sx.addr, align 8
  br label %for.cond.45

for.end.72:                                       ; preds = %for.cond.45
  %60 = load i32, i32* %istmp, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %for.end.72, %for.end, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define void @saxpy(i32 %n, double, float* %sx, i32 %incx, float* %sy, i32 %incy) #0 {
entry:
  %n.addr = alloca i32, align 4
  %sa.addr = alloca float, align 4
  %sx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %sy.addr = alloca float*, align 8
  %incy.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sa = fptrunc double %0 to float
  store i32 %n, i32* %n.addr, align 4
  store float %sa, float* %sa.addr, align 4
  store float* %sx, float** %sx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  store float* %sy, float** %sy.addr, align 8
  store i32 %incy, i32* %incy.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load float, float* %sa.addr, align 4
  %conv = fpext float %2 to double
  %cmp1 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end.60

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %incx.addr, align 4
  %4 = load i32, i32* %incy.addr, align 4
  %cmp3 = icmp eq i32 %3, %4
  br i1 %cmp3, label %if.then.5, label %if.end.28

if.then.5:                                        ; preds = %if.end
  %5 = load i32, i32* %incx.addr, align 4
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.then.5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp slt i32 %6, %7
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load float, float* %sa.addr, align 4
  %9 = load float*, float** %sx.addr, align 8
  %10 = load float, float* %9, align 4
  %mul = fmul float %8, %10
  %11 = load float*, float** %sy.addr, align 8
  %12 = load float, float* %11, align 4
  %add = fadd float %12, %mul
  store float %add, float* %11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  %14 = load float*, float** %sy.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %14, i32 1
  store float* %incdec.ptr, float** %sy.addr, align 8
  %15 = load float*, float** %sx.addr, align 8
  %incdec.ptr11 = getelementptr inbounds float, float* %15, i32 1
  store float* %incdec.ptr11, float** %sx.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.end.60

if.end.12:                                        ; preds = %if.then.5
  %16 = load i32, i32* %incx.addr, align 4
  %cmp13 = icmp sgt i32 %16, 0
  br i1 %cmp13, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %if.end.12
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.22, %if.then.15
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %17, %18
  br i1 %cmp17, label %for.body.19, label %for.end.26

for.body.19:                                      ; preds = %for.cond.16
  %19 = load float, float* %sa.addr, align 4
  %20 = load float*, float** %sx.addr, align 8
  %21 = load float, float* %20, align 4
  %mul20 = fmul float %19, %21
  %22 = load float*, float** %sy.addr, align 8
  %23 = load float, float* %22, align 4
  %add21 = fadd float %23, %mul20
  store float %add21, float* %22, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.19
  %24 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, i32* %i, align 4
  %25 = load i32, i32* %incx.addr, align 4
  %26 = load float*, float** %sx.addr, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds float, float* %26, i64 %idx.ext
  store float* %add.ptr, float** %sx.addr, align 8
  %27 = load i32, i32* %incx.addr, align 4
  %28 = load float*, float** %sy.addr, align 8
  %idx.ext24 = sext i32 %27 to i64
  %add.ptr25 = getelementptr inbounds float, float* %28, i64 %idx.ext24
  store float* %add.ptr25, float** %sy.addr, align 8
  br label %for.cond.16

for.end.26:                                       ; preds = %for.cond.16
  br label %for.end.60

if.end.27:                                        ; preds = %if.end.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %29 = load i32, i32* %incx.addr, align 4
  %cmp29 = icmp slt i32 %29, 0
  br i1 %cmp29, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %if.end.28
  %30 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %30
  %add32 = add nsw i32 %sub, 1
  %31 = load i32, i32* %incx.addr, align 4
  %mul33 = mul nsw i32 %add32, %31
  %add34 = add nsw i32 %mul33, 1
  %32 = load float*, float** %sx.addr, align 8
  %idx.ext35 = sext i32 %add34 to i64
  %add.ptr36 = getelementptr inbounds float, float* %32, i64 %idx.ext35
  store float* %add.ptr36, float** %sx.addr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.31, %if.end.28
  %33 = load i32, i32* %incy.addr, align 4
  %cmp38 = icmp slt i32 %33, 0
  br i1 %cmp38, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %if.end.37
  %34 = load i32, i32* %n.addr, align 4
  %sub41 = sub nsw i32 0, %34
  %add42 = add nsw i32 %sub41, 1
  %35 = load i32, i32* %incy.addr, align 4
  %mul43 = mul nsw i32 %add42, %35
  %add44 = add nsw i32 %mul43, 1
  %36 = load float*, float** %sy.addr, align 8
  %idx.ext45 = sext i32 %add44 to i64
  %add.ptr46 = getelementptr inbounds float, float* %36, i64 %idx.ext45
  store float* %add.ptr46, float** %sy.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.40, %if.end.37
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.54, %if.end.47
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %37, %38
  br i1 %cmp49, label %for.body.51, label %for.end.60

for.body.51:                                      ; preds = %for.cond.48
  %39 = load float, float* %sa.addr, align 4
  %40 = load float*, float** %sx.addr, align 8
  %41 = load float, float* %40, align 4
  %mul52 = fmul float %39, %41
  %42 = load float*, float** %sy.addr, align 8
  %43 = load float, float* %42, align 4
  %add53 = fadd float %43, %mul52
  store float %add53, float* %42, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.51
  %44 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %44, 1
  store i32 %inc55, i32* %i, align 4
  %45 = load i32, i32* %incx.addr, align 4
  %46 = load float*, float** %sx.addr, align 8
  %idx.ext56 = sext i32 %45 to i64
  %add.ptr57 = getelementptr inbounds float, float* %46, i64 %idx.ext56
  store float* %add.ptr57, float** %sx.addr, align 8
  %47 = load i32, i32* %incy.addr, align 4
  %48 = load float*, float** %sy.addr, align 8
  %idx.ext58 = sext i32 %47 to i64
  %add.ptr59 = getelementptr inbounds float, float* %48, i64 %idx.ext58
  store float* %add.ptr59, float** %sy.addr, align 8
  br label %for.cond.48

for.end.60:                                       ; preds = %if.then, %for.end, %for.end.26, %for.cond.48
  ret void
}

; Function Attrs: nounwind uwtable
define void @saxpyx(i32 %n, double, float* %sx, i32 %incx, float* %sy, i32 %incy) #0 {
entry:
  %n.addr = alloca i32, align 4
  %sa.addr = alloca float, align 4
  %sx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %sy.addr = alloca float*, align 8
  %incy.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sa = fptrunc double %0 to float
  store i32 %n, i32* %n.addr, align 4
  store float %sa, float* %sa.addr, align 4
  store float* %sx, float** %sx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  store float* %sy, float** %sy.addr, align 8
  store i32 %incy, i32* %incy.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load float, float* %sa.addr, align 4
  %conv = fpext float %2 to double
  %cmp1 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end.60

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %incx.addr, align 4
  %4 = load i32, i32* %incy.addr, align 4
  %cmp3 = icmp eq i32 %3, %4
  br i1 %cmp3, label %if.then.5, label %if.end.28

if.then.5:                                        ; preds = %if.end
  %5 = load i32, i32* %incx.addr, align 4
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.then.5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp slt i32 %6, %7
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load float*, float** %sy.addr, align 8
  %9 = load float, float* %8, align 4
  %10 = load float, float* %sa.addr, align 4
  %11 = load float*, float** %sx.addr, align 8
  %12 = load float, float* %11, align 4
  %mul = fmul float %10, %12
  %add = fadd float %9, %mul
  %13 = load float*, float** %sx.addr, align 8
  store float %add, float* %13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load float*, float** %sx.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %15, i32 1
  store float* %incdec.ptr, float** %sx.addr, align 8
  %16 = load float*, float** %sy.addr, align 8
  %incdec.ptr11 = getelementptr inbounds float, float* %16, i32 1
  store float* %incdec.ptr11, float** %sy.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.end.60

if.end.12:                                        ; preds = %if.then.5
  %17 = load i32, i32* %incx.addr, align 4
  %cmp13 = icmp sgt i32 %17, 0
  br i1 %cmp13, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %if.end.12
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.22, %if.then.15
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %18, %19
  br i1 %cmp17, label %for.body.19, label %for.end.26

for.body.19:                                      ; preds = %for.cond.16
  %20 = load float*, float** %sy.addr, align 8
  %21 = load float, float* %20, align 4
  %22 = load float, float* %sa.addr, align 4
  %23 = load float*, float** %sx.addr, align 8
  %24 = load float, float* %23, align 4
  %mul20 = fmul float %22, %24
  %add21 = fadd float %21, %mul20
  %25 = load float*, float** %sx.addr, align 8
  store float %add21, float* %25, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.19
  %26 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %26, 1
  store i32 %inc23, i32* %i, align 4
  %27 = load i32, i32* %incx.addr, align 4
  %28 = load float*, float** %sx.addr, align 8
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds float, float* %28, i64 %idx.ext
  store float* %add.ptr, float** %sx.addr, align 8
  %29 = load i32, i32* %incx.addr, align 4
  %30 = load float*, float** %sy.addr, align 8
  %idx.ext24 = sext i32 %29 to i64
  %add.ptr25 = getelementptr inbounds float, float* %30, i64 %idx.ext24
  store float* %add.ptr25, float** %sy.addr, align 8
  br label %for.cond.16

for.end.26:                                       ; preds = %for.cond.16
  br label %for.end.60

if.end.27:                                        ; preds = %if.end.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %31 = load i32, i32* %incx.addr, align 4
  %cmp29 = icmp slt i32 %31, 0
  br i1 %cmp29, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %if.end.28
  %32 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %32
  %add32 = add nsw i32 %sub, 1
  %33 = load i32, i32* %incx.addr, align 4
  %mul33 = mul nsw i32 %add32, %33
  %add34 = add nsw i32 %mul33, 1
  %34 = load float*, float** %sx.addr, align 8
  %idx.ext35 = sext i32 %add34 to i64
  %add.ptr36 = getelementptr inbounds float, float* %34, i64 %idx.ext35
  store float* %add.ptr36, float** %sx.addr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.31, %if.end.28
  %35 = load i32, i32* %incy.addr, align 4
  %cmp38 = icmp slt i32 %35, 0
  br i1 %cmp38, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %if.end.37
  %36 = load i32, i32* %n.addr, align 4
  %sub41 = sub nsw i32 0, %36
  %add42 = add nsw i32 %sub41, 1
  %37 = load i32, i32* %incy.addr, align 4
  %mul43 = mul nsw i32 %add42, %37
  %add44 = add nsw i32 %mul43, 1
  %38 = load float*, float** %sy.addr, align 8
  %idx.ext45 = sext i32 %add44 to i64
  %add.ptr46 = getelementptr inbounds float, float* %38, i64 %idx.ext45
  store float* %add.ptr46, float** %sy.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.40, %if.end.37
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.54, %if.end.47
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %39, %40
  br i1 %cmp49, label %for.body.51, label %for.end.60

for.body.51:                                      ; preds = %for.cond.48
  %41 = load float*, float** %sy.addr, align 8
  %42 = load float, float* %41, align 4
  %43 = load float, float* %sa.addr, align 4
  %44 = load float*, float** %sx.addr, align 8
  %45 = load float, float* %44, align 4
  %mul52 = fmul float %43, %45
  %add53 = fadd float %42, %mul52
  %46 = load float*, float** %sx.addr, align 8
  store float %add53, float* %46, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.51
  %47 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %47, 1
  store i32 %inc55, i32* %i, align 4
  %48 = load i32, i32* %incx.addr, align 4
  %49 = load float*, float** %sx.addr, align 8
  %idx.ext56 = sext i32 %48 to i64
  %add.ptr57 = getelementptr inbounds float, float* %49, i64 %idx.ext56
  store float* %add.ptr57, float** %sx.addr, align 8
  %50 = load i32, i32* %incy.addr, align 4
  %51 = load float*, float** %sy.addr, align 8
  %idx.ext58 = sext i32 %50 to i64
  %add.ptr59 = getelementptr inbounds float, float* %51, i64 %idx.ext58
  store float* %add.ptr59, float** %sy.addr, align 8
  br label %for.cond.48

for.end.60:                                       ; preds = %if.then, %for.end, %for.end.26, %for.cond.48
  ret void
}

; Function Attrs: nounwind uwtable
define void @scopy(i32 %n, float* %sx, i32 %incx, float* %sy, i32 %incy) #0 {
entry:
  %n.addr = alloca i32, align 4
  %sx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %sy.addr = alloca float*, align 8
  %incy.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %sx, float** %sx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  store float* %sy, float** %sy.addr, align 8
  store i32 %incy, i32* %incy.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %incx.addr, align 4
  %2 = load i32, i32* %incy.addr, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.19

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %incx.addr, align 4
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load float*, float** %sx.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %6, i32 1
  store float* %incdec.ptr, float** %sx.addr, align 8
  %7 = load float, float* %6, align 4
  %8 = load float*, float** %sy.addr, align 8
  %incdec.ptr6 = getelementptr inbounds float, float* %8, i32 1
  store float* %incdec.ptr6, float** %sy.addr, align 8
  store float %7, float* %8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

if.end.7:                                         ; preds = %if.then.2
  %10 = load i32, i32* %incx.addr, align 4
  %cmp8 = icmp sgt i32 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.13, %if.then.9
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n.addr, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body.12, label %for.end.17

for.body.12:                                      ; preds = %for.cond.10
  %13 = load float*, float** %sx.addr, align 8
  %14 = load float, float* %13, align 4
  %15 = load float*, float** %sy.addr, align 8
  store float %14, float* %15, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.12
  %16 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %i, align 4
  %17 = load i32, i32* %incx.addr, align 4
  %18 = load float*, float** %sx.addr, align 8
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds float, float* %18, i64 %idx.ext
  store float* %add.ptr, float** %sx.addr, align 8
  %19 = load i32, i32* %incx.addr, align 4
  %20 = load float*, float** %sy.addr, align 8
  %idx.ext15 = sext i32 %19 to i64
  %add.ptr16 = getelementptr inbounds float, float* %20, i64 %idx.ext15
  store float* %add.ptr16, float** %sy.addr, align 8
  br label %for.cond.10

for.end.17:                                       ; preds = %for.cond.10
  br label %return

if.end.18:                                        ; preds = %if.end.7
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %21 = load i32, i32* %incx.addr, align 4
  %cmp20 = icmp slt i32 %21, 0
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.19
  %22 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %22
  %add = add nsw i32 %sub, 1
  %23 = load i32, i32* %incx.addr, align 4
  %mul = mul nsw i32 %add, %23
  %add22 = add nsw i32 %mul, 1
  %24 = load float*, float** %sx.addr, align 8
  %idx.ext23 = sext i32 %add22 to i64
  %add.ptr24 = getelementptr inbounds float, float* %24, i64 %idx.ext23
  store float* %add.ptr24, float** %sx.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.19
  %25 = load i32, i32* %incy.addr, align 4
  %cmp26 = icmp slt i32 %25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %if.end.25
  %26 = load i32, i32* %n.addr, align 4
  %sub28 = sub nsw i32 0, %26
  %add29 = add nsw i32 %sub28, 1
  %27 = load i32, i32* %incy.addr, align 4
  %mul30 = mul nsw i32 %add29, %27
  %add31 = add nsw i32 %mul30, 1
  %28 = load float*, float** %sy.addr, align 8
  %idx.ext32 = sext i32 %add31 to i64
  %add.ptr33 = getelementptr inbounds float, float* %28, i64 %idx.ext32
  store float* %add.ptr33, float** %sy.addr, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %if.end.25
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.38, %if.end.34
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %n.addr, align 4
  %cmp36 = icmp slt i32 %29, %30
  br i1 %cmp36, label %for.body.37, label %for.end.44

for.body.37:                                      ; preds = %for.cond.35
  %31 = load float*, float** %sy.addr, align 8
  %32 = load float, float* %31, align 4
  %33 = load float*, float** %sx.addr, align 8
  store float %32, float* %33, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.37
  %34 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %34, 1
  store i32 %inc39, i32* %i, align 4
  %35 = load i32, i32* %incx.addr, align 4
  %36 = load float*, float** %sx.addr, align 8
  %idx.ext40 = sext i32 %35 to i64
  %add.ptr41 = getelementptr inbounds float, float* %36, i64 %idx.ext40
  store float* %add.ptr41, float** %sx.addr, align 8
  %37 = load i32, i32* %incy.addr, align 4
  %38 = load float*, float** %sy.addr, align 8
  %idx.ext42 = sext i32 %37 to i64
  %add.ptr43 = getelementptr inbounds float, float* %38, i64 %idx.ext42
  store float* %add.ptr43, float** %sy.addr, align 8
  br label %for.cond.35

for.end.44:                                       ; preds = %for.cond.35
  br label %return

return:                                           ; preds = %for.end.44, %for.end.17, %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define double @sdot(i32 %n, float* %sx, i32 %incx, float* %sy, i32 %incy) #0 {
entry:
  %retval = alloca double, align 8
  %n.addr = alloca i32, align 4
  %sx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %sy.addr = alloca float*, align 8
  %incy.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %stemp = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %sx, float** %sx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  store float* %sy, float** %sy.addr, align 8
  store i32 %incy, i32* %incy.addr, align 4
  store float 0.000000e+00, float* %stemp, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float, float* %stemp, align 4
  %conv = fpext float %1 to double
  store double %conv, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %incx.addr, align 4
  %3 = load i32, i32* %incy.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then.3, label %if.end.28

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %incx.addr, align 4
  %cmp4 = icmp eq i32 %4, 1
  br i1 %cmp4, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.then.3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load float*, float** %sx.addr, align 8
  %8 = load float, float* %7, align 4
  %9 = load float*, float** %sy.addr, align 8
  %10 = load float, float* %9, align 4
  %mul = fmul float %8, %10
  %11 = load float, float* %stemp, align 4
  %add = fadd float %11, %mul
  store float %add, float* %stemp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %13 = load float*, float** %sx.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %13, i32 1
  store float* %incdec.ptr, float** %sx.addr, align 8
  %14 = load float*, float** %sy.addr, align 8
  %incdec.ptr9 = getelementptr inbounds float, float* %14, i32 1
  store float* %incdec.ptr9, float** %sy.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load float, float* %stemp, align 4
  %conv10 = fpext float %15 to double
  store double %conv10, double* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.3
  %16 = load i32, i32* %incx.addr, align 4
  %cmp12 = icmp sgt i32 %16, 0
  br i1 %cmp12, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %if.end.11
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.21, %if.then.14
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n.addr, align 4
  %cmp16 = icmp slt i32 %17, %18
  br i1 %cmp16, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.15
  %19 = load float*, float** %sx.addr, align 8
  %20 = load float, float* %19, align 4
  %21 = load float*, float** %sy.addr, align 8
  %22 = load float, float* %21, align 4
  %mul19 = fmul float %20, %22
  %23 = load float, float* %stemp, align 4
  %add20 = fadd float %23, %mul19
  store float %add20, float* %stemp, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.18
  %24 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %24, 1
  store i32 %inc22, i32* %i, align 4
  %25 = load i32, i32* %incx.addr, align 4
  %26 = load float*, float** %sx.addr, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds float, float* %26, i64 %idx.ext
  store float* %add.ptr, float** %sx.addr, align 8
  %27 = load i32, i32* %incx.addr, align 4
  %28 = load float*, float** %sy.addr, align 8
  %idx.ext23 = sext i32 %27 to i64
  %add.ptr24 = getelementptr inbounds float, float* %28, i64 %idx.ext23
  store float* %add.ptr24, float** %sy.addr, align 8
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  %29 = load float, float* %stemp, align 4
  %conv26 = fpext float %29 to double
  store double %conv26, double* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.11
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %30 = load i32, i32* %incx.addr, align 4
  %cmp29 = icmp slt i32 %30, 0
  br i1 %cmp29, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %if.end.28
  %31 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %31
  %add32 = add nsw i32 %sub, 1
  %32 = load i32, i32* %incx.addr, align 4
  %mul33 = mul nsw i32 %add32, %32
  %add34 = add nsw i32 %mul33, 1
  %33 = load float*, float** %sx.addr, align 8
  %idx.ext35 = sext i32 %add34 to i64
  %add.ptr36 = getelementptr inbounds float, float* %33, i64 %idx.ext35
  store float* %add.ptr36, float** %sx.addr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.31, %if.end.28
  %34 = load i32, i32* %incy.addr, align 4
  %cmp38 = icmp slt i32 %34, 0
  br i1 %cmp38, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %if.end.37
  %35 = load i32, i32* %n.addr, align 4
  %sub41 = sub nsw i32 0, %35
  %add42 = add nsw i32 %sub41, 1
  %36 = load i32, i32* %incy.addr, align 4
  %mul43 = mul nsw i32 %add42, %36
  %add44 = add nsw i32 %mul43, 1
  %37 = load float*, float** %sy.addr, align 8
  %idx.ext45 = sext i32 %add44 to i64
  %add.ptr46 = getelementptr inbounds float, float* %37, i64 %idx.ext45
  store float* %add.ptr46, float** %sy.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.40, %if.end.37
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.54, %if.end.47
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %38, %39
  br i1 %cmp49, label %for.body.51, label %for.end.60

for.body.51:                                      ; preds = %for.cond.48
  %40 = load float*, float** %sx.addr, align 8
  %41 = load float, float* %40, align 4
  %42 = load float*, float** %sy.addr, align 8
  %43 = load float, float* %42, align 4
  %mul52 = fmul float %41, %43
  %44 = load float, float* %stemp, align 4
  %add53 = fadd float %44, %mul52
  store float %add53, float* %stemp, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.51
  %45 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %45, 1
  store i32 %inc55, i32* %i, align 4
  %46 = load i32, i32* %incx.addr, align 4
  %47 = load float*, float** %sx.addr, align 8
  %idx.ext56 = sext i32 %46 to i64
  %add.ptr57 = getelementptr inbounds float, float* %47, i64 %idx.ext56
  store float* %add.ptr57, float** %sx.addr, align 8
  %48 = load i32, i32* %incy.addr, align 4
  %49 = load float*, float** %sy.addr, align 8
  %idx.ext58 = sext i32 %48 to i64
  %add.ptr59 = getelementptr inbounds float, float* %49, i64 %idx.ext58
  store float* %add.ptr59, float** %sy.addr, align 8
  br label %for.cond.48

for.end.60:                                       ; preds = %for.cond.48
  %50 = load float, float* %stemp, align 4
  %conv61 = fpext float %50 to double
  store double %conv61, double* %retval
  br label %return

return:                                           ; preds = %for.end.60, %for.end.25, %for.end, %if.then
  %51 = load double, double* %retval
  ret double %51
}

; Function Attrs: nounwind uwtable
define double @snrm2(i32 %n, float* %sx, i32 %incx) #0 {
entry:
  %retval = alloca double, align 8
  %n.addr = alloca i32, align 4
  %sx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %phase = alloca i32, align 4
  %sum = alloca double, align 8
  %cutlo = alloca double, align 8
  %cuthi = alloca double, align 8
  %hitst = alloca double, align 8
  %xmax = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %sx, float** %sx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  store i32 3, i32* %phase, align 4
  store double 0.000000e+00, double* %sum, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %incx.addr, align 4
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load double, double* %sum, align 8
  store double %2, double* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call double @r1mach()
  %div = fdiv double 1.000000e-45, %call
  %call2 = call double @sqrt(double %div) #2
  store double %call2, double* %cutlo, align 8
  %call3 = call double @sqrt(double 1.000000e+38) #2
  store double %call3, double* %cuthi, align 8
  %3 = load double, double* %cuthi, align 8
  %4 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %4 to double
  %div4 = fdiv double %3, %conv
  store double %div4, double* %hitst, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load float*, float** %sx.addr, align 8
  %8 = load float, float* %7, align 4
  %conv7 = fpext float %8 to double
  %cmp8 = fcmp oeq double %conv7, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  %11 = load i32, i32* %incx.addr, align 4
  %12 = load float*, float** %sx.addr, align 8
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds float, float* %12, i64 %idx.ext
  store float* %add.ptr, float** %sx.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n.addr, align 4
  %cmp10 = icmp sge i32 %13, %14
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.end
  %15 = load double, double* %sum, align 8
  store double %15, double* %retval
  br label %return

if.end.13:                                        ; preds = %while.end
  br label %START

START:                                            ; preds = %if.then.68, %if.end.13
  %16 = load float*, float** %sx.addr, align 8
  %17 = load float, float* %16, align 4
  %conv14 = fpext float %17 to double
  %cmp15 = fcmp ogt double %conv14, 0.000000e+00
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %START
  %18 = load float*, float** %sx.addr, align 8
  %19 = load float, float* %18, align 4
  br label %cond.end

cond.false:                                       ; preds = %START
  %20 = load float*, float** %sx.addr, align 8
  %21 = load float, float* %20, align 4
  %sub = fsub float -0.000000e+00, %21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %19, %cond.true ], [ %sub, %cond.false ]
  %conv17 = fpext float %cond to double
  %22 = load double, double* %cutlo, align 8
  %cmp18 = fcmp ogt double %conv17, %22
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %cond.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp slt i32 %23, %24
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load float*, float** %sx.addr, align 8
  %26 = load float, float* %25, align 4
  %conv23 = fpext float %26 to double
  %cmp24 = fcmp ogt double %conv23, 0.000000e+00
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %for.body
  %27 = load float*, float** %sx.addr, align 8
  %28 = load float, float* %27, align 4
  br label %cond.end.29

cond.false.27:                                    ; preds = %for.body
  %29 = load float*, float** %sx.addr, align 8
  %30 = load float, float* %29, align 4
  %sub28 = fsub float -0.000000e+00, %30
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.26
  %cond30 = phi float [ %28, %cond.true.26 ], [ %sub28, %cond.false.27 ]
  %conv31 = fpext float %cond30 to double
  %31 = load double, double* %hitst, align 8
  %cmp32 = fcmp ogt double %conv31, %31
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %cond.end.29
  br label %GOT_LARGE

if.end.35:                                        ; preds = %cond.end.29
  %32 = load float*, float** %sx.addr, align 8
  %33 = load float, float* %32, align 4
  %34 = load float*, float** %sx.addr, align 8
  %35 = load float, float* %34, align 4
  %mul = fmul float %33, %35
  %conv36 = fpext float %mul to double
  %36 = load double, double* %sum, align 8
  %add = fadd double %36, %conv36
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %37 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, i32* %i, align 4
  %38 = load i32, i32* %incx.addr, align 4
  %39 = load float*, float** %sx.addr, align 8
  %idx.ext38 = sext i32 %38 to i64
  %add.ptr39 = getelementptr inbounds float, float* %39, i64 %idx.ext38
  store float* %add.ptr39, float** %sx.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load double, double* %sum, align 8
  %call40 = call double @sqrt(double %40) #2
  store double %call40, double* %sum, align 8
  %41 = load double, double* %sum, align 8
  store double %41, double* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %42 = load float*, float** %sx.addr, align 8
  %43 = load float, float* %42, align 4
  %conv41 = fpext float %43 to double
  %cmp42 = fcmp ogt double %conv41, 0.000000e+00
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.else
  %44 = load float*, float** %sx.addr, align 8
  %45 = load float, float* %44, align 4
  br label %cond.end.47

cond.false.45:                                    ; preds = %if.else
  %46 = load float*, float** %sx.addr, align 8
  %47 = load float, float* %46, align 4
  %sub46 = fsub float -0.000000e+00, %47
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.44
  %cond48 = phi float [ %45, %cond.true.44 ], [ %sub46, %cond.false.45 ]
  store float %cond48, float* %xmax, align 4
  %48 = load i32, i32* %incx.addr, align 4
  %49 = load float*, float** %sx.addr, align 8
  %idx.ext49 = sext i32 %48 to i64
  %add.ptr50 = getelementptr inbounds float, float* %49, i64 %idx.ext49
  store float* %add.ptr50, float** %sx.addr, align 8
  %50 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %50, 1
  store i32 %inc51, i32* %i, align 4
  %51 = load double, double* %sum, align 8
  %add52 = fadd double %51, 1.000000e+00
  store double %add52, double* %sum, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.106, %cond.end.47
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %n.addr, align 4
  %cmp54 = icmp slt i32 %52, %53
  br i1 %cmp54, label %for.body.56, label %for.end.110

for.body.56:                                      ; preds = %for.cond.53
  %54 = load float*, float** %sx.addr, align 8
  %55 = load float, float* %54, align 4
  %conv57 = fpext float %55 to double
  %cmp58 = fcmp ogt double %conv57, 0.000000e+00
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %for.body.56
  %56 = load float*, float** %sx.addr, align 8
  %57 = load float, float* %56, align 4
  br label %cond.end.63

cond.false.61:                                    ; preds = %for.body.56
  %58 = load float*, float** %sx.addr, align 8
  %59 = load float, float* %58, align 4
  %sub62 = fsub float -0.000000e+00, %59
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.true.60
  %cond64 = phi float [ %57, %cond.true.60 ], [ %sub62, %cond.false.61 ]
  %conv65 = fpext float %cond64 to double
  %60 = load double, double* %cutlo, align 8
  %cmp66 = fcmp ogt double %conv65, %60
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %cond.end.63
  %61 = load double, double* %sum, align 8
  %62 = load float, float* %xmax, align 4
  %conv69 = fpext float %62 to double
  %mul70 = fmul double %61, %conv69
  %63 = load float, float* %xmax, align 4
  %conv71 = fpext float %63 to double
  %mul72 = fmul double %mul70, %conv71
  store double %mul72, double* %sum, align 8
  br label %START

if.end.73:                                        ; preds = %cond.end.63
  %64 = load float*, float** %sx.addr, align 8
  %65 = load float, float* %64, align 4
  %conv74 = fpext float %65 to double
  %cmp75 = fcmp ogt double %conv74, 0.000000e+00
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %if.end.73
  %66 = load float*, float** %sx.addr, align 8
  %67 = load float, float* %66, align 4
  br label %cond.end.80

cond.false.78:                                    ; preds = %if.end.73
  %68 = load float*, float** %sx.addr, align 8
  %69 = load float, float* %68, align 4
  %sub79 = fsub float -0.000000e+00, %69
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.78, %cond.true.77
  %cond81 = phi float [ %67, %cond.true.77 ], [ %sub79, %cond.false.78 ]
  %70 = load float, float* %xmax, align 4
  %cmp82 = fcmp ogt float %cond81, %70
  br i1 %cmp82, label %if.then.84, label %if.end.100

if.then.84:                                       ; preds = %cond.end.80
  %71 = load double, double* %sum, align 8
  %72 = load float, float* %xmax, align 4
  %73 = load float*, float** %sx.addr, align 8
  %74 = load float, float* %73, align 4
  %div85 = fdiv float %72, %74
  %conv86 = fpext float %div85 to double
  %mul87 = fmul double %71, %conv86
  %75 = load float, float* %xmax, align 4
  %76 = load float*, float** %sx.addr, align 8
  %77 = load float, float* %76, align 4
  %div88 = fdiv float %75, %77
  %conv89 = fpext float %div88 to double
  %mul90 = fmul double %mul87, %conv89
  %add91 = fadd double 1.000000e+00, %mul90
  store double %add91, double* %sum, align 8
  %78 = load float*, float** %sx.addr, align 8
  %79 = load float, float* %78, align 4
  %conv92 = fpext float %79 to double
  %cmp93 = fcmp ogt double %conv92, 0.000000e+00
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %if.then.84
  %80 = load float*, float** %sx.addr, align 8
  %81 = load float, float* %80, align 4
  br label %cond.end.98

cond.false.96:                                    ; preds = %if.then.84
  %82 = load float*, float** %sx.addr, align 8
  %83 = load float, float* %82, align 4
  %sub97 = fsub float -0.000000e+00, %83
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.96, %cond.true.95
  %cond99 = phi float [ %81, %cond.true.95 ], [ %sub97, %cond.false.96 ]
  store float %cond99, float* %xmax, align 4
  br label %for.inc.106

if.end.100:                                       ; preds = %cond.end.80
  %84 = load float*, float** %sx.addr, align 8
  %85 = load float, float* %84, align 4
  %86 = load float, float* %xmax, align 4
  %div101 = fdiv float %85, %86
  %87 = load float*, float** %sx.addr, align 8
  %88 = load float, float* %87, align 4
  %89 = load float, float* %xmax, align 4
  %div102 = fdiv float %88, %89
  %mul103 = fmul float %div101, %div102
  %conv104 = fpext float %mul103 to double
  %90 = load double, double* %sum, align 8
  %add105 = fadd double %90, %conv104
  store double %add105, double* %sum, align 8
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.100, %cond.end.98
  %91 = load i32, i32* %i, align 4
  %inc107 = add nsw i32 %91, 1
  store i32 %inc107, i32* %i, align 4
  %92 = load i32, i32* %incx.addr, align 4
  %93 = load float*, float** %sx.addr, align 8
  %idx.ext108 = sext i32 %92 to i64
  %add.ptr109 = getelementptr inbounds float, float* %93, i64 %idx.ext108
  store float* %add.ptr109, float** %sx.addr, align 8
  br label %for.cond.53

for.end.110:                                      ; preds = %for.cond.53
  %94 = load float, float* %xmax, align 4
  %conv111 = fpext float %94 to double
  %95 = load double, double* %sum, align 8
  %call112 = call double @sqrt(double %95) #2
  %mul113 = fmul double %conv111, %call112
  store double %mul113, double* %retval
  br label %return

GOT_LARGE:                                        ; preds = %if.then.34
  %96 = load double, double* %sum, align 8
  %97 = load float*, float** %sx.addr, align 8
  %98 = load float, float* %97, align 4
  %conv114 = fpext float %98 to double
  %div115 = fdiv double %96, %conv114
  %99 = load float*, float** %sx.addr, align 8
  %100 = load float, float* %99, align 4
  %conv116 = fpext float %100 to double
  %div117 = fdiv double %div115, %conv116
  %add118 = fadd double 1.000000e+00, %div117
  store double %add118, double* %sum, align 8
  %101 = load float*, float** %sx.addr, align 8
  %102 = load float, float* %101, align 4
  %conv119 = fpext float %102 to double
  %cmp120 = fcmp ogt double %conv119, 0.000000e+00
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %GOT_LARGE
  %103 = load float*, float** %sx.addr, align 8
  %104 = load float, float* %103, align 4
  br label %cond.end.125

cond.false.123:                                   ; preds = %GOT_LARGE
  %105 = load float*, float** %sx.addr, align 8
  %106 = load float, float* %105, align 4
  %sub124 = fsub float -0.000000e+00, %106
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.122
  %cond126 = phi float [ %104, %cond.true.122 ], [ %sub124, %cond.false.123 ]
  store float %cond126, float* %xmax, align 4
  %107 = load i32, i32* %incx.addr, align 4
  %108 = load float*, float** %sx.addr, align 8
  %idx.ext127 = sext i32 %107 to i64
  %add.ptr128 = getelementptr inbounds float, float* %108, i64 %idx.ext127
  store float* %add.ptr128, float** %sx.addr, align 8
  %109 = load i32, i32* %i, align 4
  %inc129 = add nsw i32 %109, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.166, %cond.end.125
  %110 = load i32, i32* %i, align 4
  %111 = load i32, i32* %n.addr, align 4
  %cmp131 = icmp slt i32 %110, %111
  br i1 %cmp131, label %for.body.133, label %for.end.170

for.body.133:                                     ; preds = %for.cond.130
  %112 = load float*, float** %sx.addr, align 8
  %113 = load float, float* %112, align 4
  %conv134 = fpext float %113 to double
  %cmp135 = fcmp ogt double %conv134, 0.000000e+00
  br i1 %cmp135, label %cond.true.137, label %cond.false.138

cond.true.137:                                    ; preds = %for.body.133
  %114 = load float*, float** %sx.addr, align 8
  %115 = load float, float* %114, align 4
  br label %cond.end.140

cond.false.138:                                   ; preds = %for.body.133
  %116 = load float*, float** %sx.addr, align 8
  %117 = load float, float* %116, align 4
  %sub139 = fsub float -0.000000e+00, %117
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.138, %cond.true.137
  %cond141 = phi float [ %115, %cond.true.137 ], [ %sub139, %cond.false.138 ]
  %118 = load float, float* %xmax, align 4
  %cmp142 = fcmp ogt float %cond141, %118
  br i1 %cmp142, label %if.then.144, label %if.end.160

if.then.144:                                      ; preds = %cond.end.140
  %119 = load double, double* %sum, align 8
  %120 = load float, float* %xmax, align 4
  %121 = load float*, float** %sx.addr, align 8
  %122 = load float, float* %121, align 4
  %div145 = fdiv float %120, %122
  %conv146 = fpext float %div145 to double
  %mul147 = fmul double %119, %conv146
  %123 = load float, float* %xmax, align 4
  %124 = load float*, float** %sx.addr, align 8
  %125 = load float, float* %124, align 4
  %div148 = fdiv float %123, %125
  %conv149 = fpext float %div148 to double
  %mul150 = fmul double %mul147, %conv149
  %add151 = fadd double 1.000000e+00, %mul150
  store double %add151, double* %sum, align 8
  %126 = load float*, float** %sx.addr, align 8
  %127 = load float, float* %126, align 4
  %conv152 = fpext float %127 to double
  %cmp153 = fcmp ogt double %conv152, 0.000000e+00
  br i1 %cmp153, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %if.then.144
  %128 = load float*, float** %sx.addr, align 8
  %129 = load float, float* %128, align 4
  br label %cond.end.158

cond.false.156:                                   ; preds = %if.then.144
  %130 = load float*, float** %sx.addr, align 8
  %131 = load float, float* %130, align 4
  %sub157 = fsub float -0.000000e+00, %131
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.156, %cond.true.155
  %cond159 = phi float [ %129, %cond.true.155 ], [ %sub157, %cond.false.156 ]
  store float %cond159, float* %xmax, align 4
  br label %for.inc.166

if.end.160:                                       ; preds = %cond.end.140
  %132 = load float*, float** %sx.addr, align 8
  %133 = load float, float* %132, align 4
  %134 = load float, float* %xmax, align 4
  %div161 = fdiv float %133, %134
  %135 = load float*, float** %sx.addr, align 8
  %136 = load float, float* %135, align 4
  %137 = load float, float* %xmax, align 4
  %div162 = fdiv float %136, %137
  %mul163 = fmul float %div161, %div162
  %conv164 = fpext float %mul163 to double
  %138 = load double, double* %sum, align 8
  %add165 = fadd double %138, %conv164
  store double %add165, double* %sum, align 8
  br label %for.inc.166

for.inc.166:                                      ; preds = %if.end.160, %cond.end.158
  %139 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %139, 1
  store i32 %inc167, i32* %i, align 4
  %140 = load i32, i32* %incx.addr, align 4
  %141 = load float*, float** %sx.addr, align 8
  %idx.ext168 = sext i32 %140 to i64
  %add.ptr169 = getelementptr inbounds float, float* %141, i64 %idx.ext168
  store float* %add.ptr169, float** %sx.addr, align 8
  br label %for.cond.130

for.end.170:                                      ; preds = %for.cond.130
  %142 = load float, float* %xmax, align 4
  %conv171 = fpext float %142 to double
  %143 = load double, double* %sum, align 8
  %call172 = call double @sqrt(double %143) #2
  %mul173 = fmul double %conv171, %call172
  store double %mul173, double* %retval
  br label %return

return:                                           ; preds = %for.end.170, %for.end.110, %for.end, %if.then.12, %if.then
  %144 = load double, double* %retval
  ret double %144
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define double @r1mach() #0 {
entry:
  %u = alloca float, align 4
  %comp = alloca float, align 4
  store float 1.000000e+00, float* %u, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load float, float* %u, align 4
  %conv = fpext float %0 to double
  %mul = fmul double %conv, 5.000000e-01
  %conv1 = fptrunc double %mul to float
  store float %conv1, float* %u, align 4
  %1 = load float, float* %u, align 4
  %conv2 = fpext float %1 to double
  %add = fadd double 1.000000e+00, %conv2
  %conv3 = fptrunc double %add to float
  store float %conv3, float* %comp, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load float, float* %comp, align 4
  %conv4 = fpext float %2 to double
  %cmp = fcmp une double %conv4, 1.000000e+00
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load float, float* %u, align 4
  %conv6 = fpext float %3 to double
  %mul7 = fmul double %conv6, 2.000000e+00
  ret double %mul7
}

; Function Attrs: nounwind uwtable
define i32 @min0(i32 %n, i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h, i32 %i, i32 %j, i32 %k, i32 %l, i32 %m, i32 %o, i32 %p) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %o.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %mt = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 %e, i32* %e.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  store i32 %g, i32* %g.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %o, i32* %o.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %1, 15
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %a.addr, align 4
  store i32 %2, i32* %mt, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %mt, align 4
  store i32 %4, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i32, i32* %mt, align 4
  %6 = load i32, i32* %b.addr, align 4
  %cmp5 = icmp sgt i32 %5, %6
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %7 = load i32, i32* %b.addr, align 4
  store i32 %7, i32* %mt, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %8 = load i32, i32* %n.addr, align 4
  %cmp8 = icmp eq i32 %8, 2
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %9 = load i32, i32* %mt, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %10 = load i32, i32* %mt, align 4
  %11 = load i32, i32* %c.addr, align 4
  %cmp11 = icmp sgt i32 %10, %11
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %12 = load i32, i32* %c.addr, align 4
  store i32 %12, i32* %mt, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %13 = load i32, i32* %n.addr, align 4
  %cmp14 = icmp eq i32 %13, 3
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %14 = load i32, i32* %mt, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  %15 = load i32, i32* %mt, align 4
  %16 = load i32, i32* %d.addr, align 4
  %cmp17 = icmp sgt i32 %15, %16
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %17 = load i32, i32* %d.addr, align 4
  store i32 %17, i32* %mt, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %18 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp eq i32 %18, 4
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %19 = load i32, i32* %mt, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %20 = load i32, i32* %mt, align 4
  %21 = load i32, i32* %e.addr, align 4
  %cmp23 = icmp sgt i32 %20, %21
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %22 = load i32, i32* %e.addr, align 4
  store i32 %22, i32* %mt, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %23 = load i32, i32* %n.addr, align 4
  %cmp26 = icmp eq i32 %23, 5
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %24 = load i32, i32* %mt, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.25
  %25 = load i32, i32* %mt, align 4
  %26 = load i32, i32* %f.addr, align 4
  %cmp29 = icmp sgt i32 %25, %26
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %27 = load i32, i32* %f.addr, align 4
  store i32 %27, i32* %mt, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %28 = load i32, i32* %n.addr, align 4
  %cmp32 = icmp eq i32 %28, 6
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %29 = load i32, i32* %mt, align 4
  store i32 %29, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.31
  %30 = load i32, i32* %mt, align 4
  %31 = load i32, i32* %g.addr, align 4
  %cmp35 = icmp sgt i32 %30, %31
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %32 = load i32, i32* %g.addr, align 4
  store i32 %32, i32* %mt, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  %33 = load i32, i32* %n.addr, align 4
  %cmp38 = icmp eq i32 %33, 7
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  %34 = load i32, i32* %mt, align 4
  store i32 %34, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.37
  %35 = load i32, i32* %mt, align 4
  %36 = load i32, i32* %h.addr, align 4
  %cmp41 = icmp sgt i32 %35, %36
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  %37 = load i32, i32* %h.addr, align 4
  store i32 %37, i32* %mt, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.40
  %38 = load i32, i32* %n.addr, align 4
  %cmp44 = icmp eq i32 %38, 8
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  %39 = load i32, i32* %mt, align 4
  store i32 %39, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.43
  %40 = load i32, i32* %mt, align 4
  %41 = load i32, i32* %i.addr, align 4
  %cmp47 = icmp sgt i32 %40, %41
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  %42 = load i32, i32* %i.addr, align 4
  store i32 %42, i32* %mt, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.46
  %43 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp eq i32 %43, 9
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.49
  %44 = load i32, i32* %mt, align 4
  store i32 %44, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.49
  %45 = load i32, i32* %mt, align 4
  %46 = load i32, i32* %j.addr, align 4
  %cmp53 = icmp sgt i32 %45, %46
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.52
  %47 = load i32, i32* %j.addr, align 4
  store i32 %47, i32* %mt, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.52
  %48 = load i32, i32* %n.addr, align 4
  %cmp56 = icmp eq i32 %48, 10
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  %49 = load i32, i32* %mt, align 4
  store i32 %49, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.55
  %50 = load i32, i32* %mt, align 4
  %51 = load i32, i32* %k.addr, align 4
  %cmp59 = icmp sgt i32 %50, %51
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  %52 = load i32, i32* %k.addr, align 4
  store i32 %52, i32* %mt, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.58
  %53 = load i32, i32* %n.addr, align 4
  %cmp62 = icmp eq i32 %53, 11
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.61
  %54 = load i32, i32* %mt, align 4
  store i32 %54, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.61
  %55 = load i32, i32* %mt, align 4
  %56 = load i32, i32* %l.addr, align 4
  %cmp65 = icmp sgt i32 %55, %56
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  %57 = load i32, i32* %l.addr, align 4
  store i32 %57, i32* %mt, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.64
  %58 = load i32, i32* %n.addr, align 4
  %cmp68 = icmp eq i32 %58, 12
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.67
  %59 = load i32, i32* %mt, align 4
  store i32 %59, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.67
  %60 = load i32, i32* %mt, align 4
  %61 = load i32, i32* %m.addr, align 4
  %cmp71 = icmp sgt i32 %60, %61
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.70
  %62 = load i32, i32* %m.addr, align 4
  store i32 %62, i32* %mt, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.70
  %63 = load i32, i32* %n.addr, align 4
  %cmp74 = icmp eq i32 %63, 13
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.73
  %64 = load i32, i32* %mt, align 4
  store i32 %64, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.end.73
  %65 = load i32, i32* %mt, align 4
  %66 = load i32, i32* %o.addr, align 4
  %cmp77 = icmp sgt i32 %65, %66
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.76
  %67 = load i32, i32* %o.addr, align 4
  store i32 %67, i32* %mt, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.76
  %68 = load i32, i32* %n.addr, align 4
  %cmp80 = icmp eq i32 %68, 14
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.79
  %69 = load i32, i32* %mt, align 4
  store i32 %69, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.end.79
  %70 = load i32, i32* %mt, align 4
  %71 = load i32, i32* %p.addr, align 4
  %cmp83 = icmp sgt i32 %70, %71
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.82
  %72 = load i32, i32* %p.addr, align 4
  store i32 %72, i32* %mt, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.82
  %73 = load i32, i32* %mt, align 4
  store i32 %73, i32* %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.then.81, %if.then.75, %if.then.69, %if.then.63, %if.then.57, %if.then.51, %if.then.45, %if.then.39, %if.then.33, %if.then.27, %if.then.21, %if.then.15, %if.then.9, %if.then.3, %if.then
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define i32 @sscal(i32 %n, double, float* %sx, i32 %incx) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %sa.addr = alloca float, align 4
  %sx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sa = fptrunc double %0 to float
  store i32 %n, i32* %n.addr, align 4
  store float %sa, float* %sa.addr, align 4
  store float* %sx, float** %sx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %incx.addr, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %incx.addr, align 4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  %4 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %4
  %add = add nsw i32 %sub, 1
  %5 = load i32, i32* %incx.addr, align 4
  %mul = mul nsw i32 %add, %5
  %6 = load float*, float** %sx.addr, align 8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, float* %6, i64 %idx.ext
  store float* %add.ptr, float** %sx.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load float, float* %sa.addr, align 4
  %10 = load float*, float** %sx.addr, align 8
  %11 = load float, float* %10, align 4
  %mul7 = fmul float %11, %9
  store float %mul7, float* %10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %13 = load i32, i32* %incx.addr, align 4
  %14 = load float*, float** %sx.addr, align 8
  %idx.ext8 = sext i32 %13 to i64
  %add.ptr9 = getelementptr inbounds float, float* %14, i64 %idx.ext8
  store float* %add.ptr9, float** %sx.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.15, %if.end.10
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n.addr, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %for.body.13, label %for.end.17

for.body.13:                                      ; preds = %for.cond.11
  %17 = load float, float* %sa.addr, align 4
  %18 = load float*, float** %sx.addr, align 8
  %19 = load float, float* %18, align 4
  %mul14 = fmul float %19, %17
  store float %mul14, float* %18, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.13
  %20 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %20, 1
  store i32 %inc16, i32* %i, align 4
  %21 = load float*, float** %sx.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %21, i32 1
  store float* %incdec.ptr, float** %sx.addr, align 8
  br label %for.cond.11

for.end.17:                                       ; preds = %for.cond.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.17, %for.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define void @vexopy(i32 %n, float* %v, float* %x, float* %y, i32 %itype) #0 {
entry:
  %n.addr = alloca i32, align 4
  %v.addr = alloca float*, align 8
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %itype.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %v, float** %v.addr, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store i32 %itype, i32* %itype.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.15

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %itype.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load float*, float** %x.addr, align 8
  %5 = load float, float* %4, align 4
  %6 = load float*, float** %y.addr, align 8
  %7 = load float, float* %6, align 4
  %add = fadd float %5, %7
  %8 = load float*, float** %v.addr, align 8
  store float %add, float* %8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %10 = load float*, float** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %10, i32 1
  store float* %incdec.ptr, float** %x.addr, align 8
  %11 = load float*, float** %y.addr, align 8
  %incdec.ptr4 = getelementptr inbounds float, float* %11, i32 1
  store float* %incdec.ptr4, float** %y.addr, align 8
  %12 = load float*, float** %v.addr, align 8
  %incdec.ptr5 = getelementptr inbounds float, float* %12, i32 1
  store float* %incdec.ptr5, float** %v.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.9, %if.else
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %for.body.8, label %for.end.14

for.body.8:                                       ; preds = %for.cond.6
  %15 = load float*, float** %x.addr, align 8
  %16 = load float, float* %15, align 4
  %17 = load float*, float** %y.addr, align 8
  %18 = load float, float* %17, align 4
  %sub = fsub float %16, %18
  %19 = load float*, float** %v.addr, align 8
  store float %sub, float* %19, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.8
  %20 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %20, 1
  store i32 %inc10, i32* %i, align 4
  %21 = load float*, float** %x.addr, align 8
  %incdec.ptr11 = getelementptr inbounds float, float* %21, i32 1
  store float* %incdec.ptr11, float** %x.addr, align 8
  %22 = load float*, float** %y.addr, align 8
  %incdec.ptr12 = getelementptr inbounds float, float* %22, i32 1
  store float* %incdec.ptr12, float** %y.addr, align 8
  %23 = load float*, float** %v.addr, align 8
  %incdec.ptr13 = getelementptr inbounds float, float* %23, i32 1
  store float* %incdec.ptr13, float** %v.addr, align 8
  br label %for.cond.6

for.end.14:                                       ; preds = %for.cond.6
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %for.end.14, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @vfill(i32 %n, float* %v, double) #0 {
entry:
  %n.addr = alloca i32, align 4
  %v.addr = alloca float*, align 8
  %val.addr = alloca float, align 4
  %i = alloca i32, align 4
  %val = fptrunc double %0 to float
  store i32 %n, i32* %n.addr, align 4
  store float* %v, float** %v.addr, align 8
  store float %val, float* %val.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load float, float* %val.addr, align 4
  %5 = load float*, float** %v.addr, align 8
  store float %4, float* %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  %7 = load float*, float** %v.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %7, i32 1
  store float* %incdec.ptr, float** %v.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
