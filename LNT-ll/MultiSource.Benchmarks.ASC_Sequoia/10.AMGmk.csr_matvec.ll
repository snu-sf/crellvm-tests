; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/10.AMGmk.csr_matvec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_CSRMatrixMatvec(double %alpha, %struct.hypre_CSRMatrix* %A, %struct.hypre_Vector* %x, double %beta, %struct.hypre_Vector* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %A.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %x.addr = alloca %struct.hypre_Vector*, align 8
  %beta.addr = alloca double, align 8
  %y.addr = alloca %struct.hypre_Vector*, align 8
  %A_data = alloca double*, align 8
  %A_i = alloca i32*, align 8
  %A_j = alloca i32*, align 8
  %num_rows = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %A_rownnz = alloca i32*, align 8
  %num_rownnz = alloca i32, align 4
  %x_data = alloca double*, align 8
  %y_data = alloca double*, align 8
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  %idxstride_y = alloca i32, align 4
  %vecstride_y = alloca i32, align 4
  %idxstride_x = alloca i32, align 4
  %vecstride_x = alloca i32, align 4
  %temp = alloca double, align 8
  %tempx = alloca double, align 8
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %jj = alloca i32, align 4
  %m = alloca i32, align 4
  %xpar = alloca double, align 8
  %ierr = alloca i32, align 4
  store double %alpha, double* %alpha.addr, align 8
  store %struct.hypre_CSRMatrix* %A, %struct.hypre_CSRMatrix** %A.addr, align 8
  store %struct.hypre_Vector* %x, %struct.hypre_Vector** %x.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store %struct.hypre_Vector* %y, %struct.hypre_Vector** %y.addr, align 8
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i32 0, i32 0
  %1 = load double*, double** %data, align 8
  store double* %1, double** %A_data, align 8
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 1
  %3 = load i32*, i32** %i, align 8
  store i32* %3, i32** %A_i, align 8
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 2
  %5 = load i32*, i32** %j, align 8
  store i32* %5, i32** %A_j, align 8
  %6 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_rows1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %6, i32 0, i32 3
  %7 = load i32, i32* %num_rows1, align 4
  store i32 %7, i32* %num_rows, align 4
  %8 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_cols2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %8, i32 0, i32 4
  %9 = load i32, i32* %num_cols2, align 4
  store i32 %9, i32* %num_cols, align 4
  %10 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %rownnz = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %10, i32 0, i32 6
  %11 = load i32*, i32** %rownnz, align 8
  store i32* %11, i32** %A_rownnz, align 8
  %12 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_rownnz3 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %12, i32 0, i32 7
  %13 = load i32, i32* %num_rownnz3, align 4
  store i32 %13, i32* %num_rownnz, align 4
  %14 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %data4 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %14, i32 0, i32 0
  %15 = load double*, double** %data4, align 8
  store double* %15, double** %x_data, align 8
  %16 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %data5 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %16, i32 0, i32 0
  %17 = load double*, double** %data5, align 8
  store double* %17, double** %y_data, align 8
  %18 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %size = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %18, i32 0, i32 1
  %19 = load i32, i32* %size, align 4
  store i32 %19, i32* %x_size, align 4
  %20 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %size6 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %20, i32 0, i32 1
  %21 = load i32, i32* %size6, align 4
  store i32 %21, i32* %y_size, align 4
  %22 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %num_vectors7 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %22, i32 0, i32 3
  %23 = load i32, i32* %num_vectors7, align 4
  store i32 %23, i32* %num_vectors, align 4
  %24 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %idxstride = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %24, i32 0, i32 6
  %25 = load i32, i32* %idxstride, align 4
  store i32 %25, i32* %idxstride_y, align 4
  %26 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %vecstride = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %26, i32 0, i32 5
  %27 = load i32, i32* %vecstride, align 4
  store i32 %27, i32* %vecstride_y, align 4
  %28 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %idxstride8 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %28, i32 0, i32 6
  %29 = load i32, i32* %idxstride8, align 4
  store i32 %29, i32* %idxstride_x, align 4
  %30 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %vecstride9 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %30, i32 0, i32 5
  %31 = load i32, i32* %vecstride9, align 4
  store i32 %31, i32* %vecstride_x, align 4
  store double 7.000000e-01, double* %xpar, align 8
  store i32 0, i32* %ierr, align 4
  %32 = load i32, i32* %num_cols, align 4
  %33 = load i32, i32* %x_size, align 4
  %cmp = icmp ne i32 %32, %33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %ierr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load i32, i32* %num_rows, align 4
  %35 = load i32, i32* %y_size, align 4
  %cmp12 = icmp ne i32 %34, %35
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 2, i32* %ierr, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %36 = load i32, i32* %num_cols, align 4
  %37 = load i32, i32* %x_size, align 4
  %cmp15 = icmp ne i32 %36, %37
  br i1 %cmp15, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.14
  %38 = load i32, i32* %num_rows, align 4
  %39 = load i32, i32* %y_size, align 4
  %cmp16 = icmp ne i32 %38, %39
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  store i32 3, i32* %ierr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.end.14
  %40 = load double, double* %alpha.addr, align 8
  %cmp19 = fcmp oeq double %40, 0.000000e+00
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  store i32 0, i32* %i10, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %41 = load i32, i32* %i10, align 4
  %42 = load i32, i32* %num_rows, align 4
  %43 = load i32, i32* %num_vectors, align 4
  %mul = mul nsw i32 %42, %43
  %cmp21 = icmp slt i32 %41, %mul
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load double, double* %beta.addr, align 8
  %45 = load i32, i32* %i10, align 4
  %idxprom = sext i32 %45 to i64
  %46 = load double*, double** %y_data, align 8
  %arrayidx = getelementptr inbounds double, double* %46, i64 %idxprom
  %47 = load double, double* %arrayidx, align 8
  %mul22 = fmul double %47, %44
  store double %mul22, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i10, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i10, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i32, i32* %ierr, align 4
  store i32 %49, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %50 = load double, double* %beta.addr, align 8
  %51 = load double, double* %alpha.addr, align 8
  %div = fdiv double %50, %51
  store double %div, double* %temp, align 8
  %52 = load double, double* %temp, align 8
  %cmp24 = fcmp une double %52, 1.000000e+00
  br i1 %cmp24, label %if.then.25, label %if.end.48

if.then.25:                                       ; preds = %if.end.23
  %53 = load double, double* %temp, align 8
  %cmp26 = fcmp oeq double %53, 0.000000e+00
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.25
  store i32 0, i32* %i10, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.34, %if.then.27
  %54 = load i32, i32* %i10, align 4
  %55 = load i32, i32* %num_rows, align 4
  %56 = load i32, i32* %num_vectors, align 4
  %mul29 = mul nsw i32 %55, %56
  %cmp30 = icmp slt i32 %54, %mul29
  br i1 %cmp30, label %for.body.31, label %for.end.36

for.body.31:                                      ; preds = %for.cond.28
  %57 = load i32, i32* %i10, align 4
  %idxprom32 = sext i32 %57 to i64
  %58 = load double*, double** %y_data, align 8
  %arrayidx33 = getelementptr inbounds double, double* %58, i64 %idxprom32
  store double 0.000000e+00, double* %arrayidx33, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.31
  %59 = load i32, i32* %i10, align 4
  %inc35 = add nsw i32 %59, 1
  store i32 %inc35, i32* %i10, align 4
  br label %for.cond.28

for.end.36:                                       ; preds = %for.cond.28
  br label %if.end.47

if.else:                                          ; preds = %if.then.25
  store i32 0, i32* %i10, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.44, %if.else
  %60 = load i32, i32* %i10, align 4
  %61 = load i32, i32* %num_rows, align 4
  %62 = load i32, i32* %num_vectors, align 4
  %mul38 = mul nsw i32 %61, %62
  %cmp39 = icmp slt i32 %60, %mul38
  br i1 %cmp39, label %for.body.40, label %for.end.46

for.body.40:                                      ; preds = %for.cond.37
  %63 = load double, double* %temp, align 8
  %64 = load i32, i32* %i10, align 4
  %idxprom41 = sext i32 %64 to i64
  %65 = load double*, double** %y_data, align 8
  %arrayidx42 = getelementptr inbounds double, double* %65, i64 %idxprom41
  %66 = load double, double* %arrayidx42, align 8
  %mul43 = fmul double %66, %63
  store double %mul43, double* %arrayidx42, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.40
  %67 = load i32, i32* %i10, align 4
  %inc45 = add nsw i32 %67, 1
  store i32 %inc45, i32* %i10, align 4
  br label %for.cond.37

for.end.46:                                       ; preds = %for.cond.37
  br label %if.end.47

if.end.47:                                        ; preds = %for.end.46, %for.end.36
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.23
  %68 = load i32, i32* %num_rownnz, align 4
  %conv = sitofp i32 %68 to double
  %69 = load double, double* %xpar, align 8
  %70 = load i32, i32* %num_rows, align 4
  %conv49 = sitofp i32 %70 to double
  %mul50 = fmul double %69, %conv49
  %cmp51 = fcmp olt double %conv, %mul50
  br i1 %cmp51, label %if.then.53, label %if.else.131

if.then.53:                                       ; preds = %if.end.48
  store i32 0, i32* %i10, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.128, %if.then.53
  %71 = load i32, i32* %i10, align 4
  %72 = load i32, i32* %num_rownnz, align 4
  %cmp55 = icmp slt i32 %71, %72
  br i1 %cmp55, label %for.body.57, label %for.end.130

for.body.57:                                      ; preds = %for.cond.54
  %73 = load i32, i32* %i10, align 4
  %idxprom58 = sext i32 %73 to i64
  %74 = load i32*, i32** %A_rownnz, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %74, i64 %idxprom58
  %75 = load i32, i32* %arrayidx59, align 4
  store i32 %75, i32* %m, align 4
  %76 = load i32, i32* %num_vectors, align 4
  %cmp60 = icmp eq i32 %76, 1
  br i1 %cmp60, label %if.then.62, label %if.else.86

if.then.62:                                       ; preds = %for.body.57
  %77 = load i32, i32* %m, align 4
  %idxprom63 = sext i32 %77 to i64
  %78 = load double*, double** %y_data, align 8
  %arrayidx64 = getelementptr inbounds double, double* %78, i64 %idxprom63
  %79 = load double, double* %arrayidx64, align 8
  store double %79, double* %tempx, align 8
  %80 = load i32, i32* %m, align 4
  %idxprom65 = sext i32 %80 to i64
  %81 = load i32*, i32** %A_i, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %81, i64 %idxprom65
  %82 = load i32, i32* %arrayidx66, align 4
  store i32 %82, i32* %jj, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.81, %if.then.62
  %83 = load i32, i32* %jj, align 4
  %84 = load i32, i32* %m, align 4
  %add = add nsw i32 %84, 1
  %idxprom68 = sext i32 %add to i64
  %85 = load i32*, i32** %A_i, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %85, i64 %idxprom68
  %86 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp slt i32 %83, %86
  br i1 %cmp70, label %for.body.72, label %for.end.83

for.body.72:                                      ; preds = %for.cond.67
  %87 = load i32, i32* %jj, align 4
  %idxprom73 = sext i32 %87 to i64
  %88 = load double*, double** %A_data, align 8
  %arrayidx74 = getelementptr inbounds double, double* %88, i64 %idxprom73
  %89 = load double, double* %arrayidx74, align 8
  %90 = load i32, i32* %jj, align 4
  %idxprom75 = sext i32 %90 to i64
  %91 = load i32*, i32** %A_j, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %91, i64 %idxprom75
  %92 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %92 to i64
  %93 = load double*, double** %x_data, align 8
  %arrayidx78 = getelementptr inbounds double, double* %93, i64 %idxprom77
  %94 = load double, double* %arrayidx78, align 8
  %mul79 = fmul double %89, %94
  %95 = load double, double* %tempx, align 8
  %add80 = fadd double %95, %mul79
  store double %add80, double* %tempx, align 8
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.72
  %96 = load i32, i32* %jj, align 4
  %inc82 = add nsw i32 %96, 1
  store i32 %inc82, i32* %jj, align 4
  br label %for.cond.67

for.end.83:                                       ; preds = %for.cond.67
  %97 = load double, double* %tempx, align 8
  %98 = load i32, i32* %m, align 4
  %idxprom84 = sext i32 %98 to i64
  %99 = load double*, double** %y_data, align 8
  %arrayidx85 = getelementptr inbounds double, double* %99, i64 %idxprom84
  store double %97, double* %arrayidx85, align 8
  br label %if.end.127

if.else.86:                                       ; preds = %for.body.57
  store i32 0, i32* %j11, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.124, %if.else.86
  %100 = load i32, i32* %j11, align 4
  %101 = load i32, i32* %num_vectors, align 4
  %cmp88 = icmp slt i32 %100, %101
  br i1 %cmp88, label %for.body.90, label %for.end.126

for.body.90:                                      ; preds = %for.cond.87
  %102 = load i32, i32* %j11, align 4
  %103 = load i32, i32* %vecstride_y, align 4
  %mul91 = mul nsw i32 %102, %103
  %104 = load i32, i32* %m, align 4
  %105 = load i32, i32* %idxstride_y, align 4
  %mul92 = mul nsw i32 %104, %105
  %add93 = add nsw i32 %mul91, %mul92
  %idxprom94 = sext i32 %add93 to i64
  %106 = load double*, double** %y_data, align 8
  %arrayidx95 = getelementptr inbounds double, double* %106, i64 %idxprom94
  %107 = load double, double* %arrayidx95, align 8
  store double %107, double* %tempx, align 8
  %108 = load i32, i32* %m, align 4
  %idxprom96 = sext i32 %108 to i64
  %109 = load i32*, i32** %A_i, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %109, i64 %idxprom96
  %110 = load i32, i32* %arrayidx97, align 4
  store i32 %110, i32* %jj, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.116, %for.body.90
  %111 = load i32, i32* %jj, align 4
  %112 = load i32, i32* %m, align 4
  %add99 = add nsw i32 %112, 1
  %idxprom100 = sext i32 %add99 to i64
  %113 = load i32*, i32** %A_i, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %113, i64 %idxprom100
  %114 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp slt i32 %111, %114
  br i1 %cmp102, label %for.body.104, label %for.end.118

for.body.104:                                     ; preds = %for.cond.98
  %115 = load i32, i32* %jj, align 4
  %idxprom105 = sext i32 %115 to i64
  %116 = load double*, double** %A_data, align 8
  %arrayidx106 = getelementptr inbounds double, double* %116, i64 %idxprom105
  %117 = load double, double* %arrayidx106, align 8
  %118 = load i32, i32* %j11, align 4
  %119 = load i32, i32* %vecstride_x, align 4
  %mul107 = mul nsw i32 %118, %119
  %120 = load i32, i32* %jj, align 4
  %idxprom108 = sext i32 %120 to i64
  %121 = load i32*, i32** %A_j, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %121, i64 %idxprom108
  %122 = load i32, i32* %arrayidx109, align 4
  %123 = load i32, i32* %idxstride_x, align 4
  %mul110 = mul nsw i32 %122, %123
  %add111 = add nsw i32 %mul107, %mul110
  %idxprom112 = sext i32 %add111 to i64
  %124 = load double*, double** %x_data, align 8
  %arrayidx113 = getelementptr inbounds double, double* %124, i64 %idxprom112
  %125 = load double, double* %arrayidx113, align 8
  %mul114 = fmul double %117, %125
  %126 = load double, double* %tempx, align 8
  %add115 = fadd double %126, %mul114
  store double %add115, double* %tempx, align 8
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.104
  %127 = load i32, i32* %jj, align 4
  %inc117 = add nsw i32 %127, 1
  store i32 %inc117, i32* %jj, align 4
  br label %for.cond.98

for.end.118:                                      ; preds = %for.cond.98
  %128 = load double, double* %tempx, align 8
  %129 = load i32, i32* %j11, align 4
  %130 = load i32, i32* %vecstride_y, align 4
  %mul119 = mul nsw i32 %129, %130
  %131 = load i32, i32* %m, align 4
  %132 = load i32, i32* %idxstride_y, align 4
  %mul120 = mul nsw i32 %131, %132
  %add121 = add nsw i32 %mul119, %mul120
  %idxprom122 = sext i32 %add121 to i64
  %133 = load double*, double** %y_data, align 8
  %arrayidx123 = getelementptr inbounds double, double* %133, i64 %idxprom122
  store double %128, double* %arrayidx123, align 8
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.end.118
  %134 = load i32, i32* %j11, align 4
  %inc125 = add nsw i32 %134, 1
  store i32 %inc125, i32* %j11, align 4
  br label %for.cond.87

for.end.126:                                      ; preds = %for.cond.87
  br label %if.end.127

if.end.127:                                       ; preds = %for.end.126, %for.end.83
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %135 = load i32, i32* %i10, align 4
  %inc129 = add nsw i32 %135, 1
  store i32 %inc129, i32* %i10, align 4
  br label %for.cond.54

for.end.130:                                      ; preds = %for.cond.54
  br label %if.end.208

if.else.131:                                      ; preds = %if.end.48
  store i32 0, i32* %i10, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.205, %if.else.131
  %136 = load i32, i32* %i10, align 4
  %137 = load i32, i32* %num_rows, align 4
  %cmp133 = icmp slt i32 %136, %137
  br i1 %cmp133, label %for.body.135, label %for.end.207

for.body.135:                                     ; preds = %for.cond.132
  %138 = load i32, i32* %num_vectors, align 4
  %cmp136 = icmp eq i32 %138, 1
  br i1 %cmp136, label %if.then.138, label %if.else.163

if.then.138:                                      ; preds = %for.body.135
  %139 = load i32, i32* %i10, align 4
  %idxprom139 = sext i32 %139 to i64
  %140 = load double*, double** %y_data, align 8
  %arrayidx140 = getelementptr inbounds double, double* %140, i64 %idxprom139
  %141 = load double, double* %arrayidx140, align 8
  store double %141, double* %temp, align 8
  %142 = load i32, i32* %i10, align 4
  %idxprom141 = sext i32 %142 to i64
  %143 = load i32*, i32** %A_i, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %143, i64 %idxprom141
  %144 = load i32, i32* %arrayidx142, align 4
  store i32 %144, i32* %jj, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.158, %if.then.138
  %145 = load i32, i32* %jj, align 4
  %146 = load i32, i32* %i10, align 4
  %add144 = add nsw i32 %146, 1
  %idxprom145 = sext i32 %add144 to i64
  %147 = load i32*, i32** %A_i, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %147, i64 %idxprom145
  %148 = load i32, i32* %arrayidx146, align 4
  %cmp147 = icmp slt i32 %145, %148
  br i1 %cmp147, label %for.body.149, label %for.end.160

for.body.149:                                     ; preds = %for.cond.143
  %149 = load i32, i32* %jj, align 4
  %idxprom150 = sext i32 %149 to i64
  %150 = load double*, double** %A_data, align 8
  %arrayidx151 = getelementptr inbounds double, double* %150, i64 %idxprom150
  %151 = load double, double* %arrayidx151, align 8
  %152 = load i32, i32* %jj, align 4
  %idxprom152 = sext i32 %152 to i64
  %153 = load i32*, i32** %A_j, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %153, i64 %idxprom152
  %154 = load i32, i32* %arrayidx153, align 4
  %idxprom154 = sext i32 %154 to i64
  %155 = load double*, double** %x_data, align 8
  %arrayidx155 = getelementptr inbounds double, double* %155, i64 %idxprom154
  %156 = load double, double* %arrayidx155, align 8
  %mul156 = fmul double %151, %156
  %157 = load double, double* %temp, align 8
  %add157 = fadd double %157, %mul156
  store double %add157, double* %temp, align 8
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.body.149
  %158 = load i32, i32* %jj, align 4
  %inc159 = add nsw i32 %158, 1
  store i32 %inc159, i32* %jj, align 4
  br label %for.cond.143

for.end.160:                                      ; preds = %for.cond.143
  %159 = load double, double* %temp, align 8
  %160 = load i32, i32* %i10, align 4
  %idxprom161 = sext i32 %160 to i64
  %161 = load double*, double** %y_data, align 8
  %arrayidx162 = getelementptr inbounds double, double* %161, i64 %idxprom161
  store double %159, double* %arrayidx162, align 8
  br label %if.end.204

if.else.163:                                      ; preds = %for.body.135
  store i32 0, i32* %j11, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.201, %if.else.163
  %162 = load i32, i32* %j11, align 4
  %163 = load i32, i32* %num_vectors, align 4
  %cmp165 = icmp slt i32 %162, %163
  br i1 %cmp165, label %for.body.167, label %for.end.203

for.body.167:                                     ; preds = %for.cond.164
  %164 = load i32, i32* %j11, align 4
  %165 = load i32, i32* %vecstride_y, align 4
  %mul168 = mul nsw i32 %164, %165
  %166 = load i32, i32* %i10, align 4
  %167 = load i32, i32* %idxstride_y, align 4
  %mul169 = mul nsw i32 %166, %167
  %add170 = add nsw i32 %mul168, %mul169
  %idxprom171 = sext i32 %add170 to i64
  %168 = load double*, double** %y_data, align 8
  %arrayidx172 = getelementptr inbounds double, double* %168, i64 %idxprom171
  %169 = load double, double* %arrayidx172, align 8
  store double %169, double* %temp, align 8
  %170 = load i32, i32* %i10, align 4
  %idxprom173 = sext i32 %170 to i64
  %171 = load i32*, i32** %A_i, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %171, i64 %idxprom173
  %172 = load i32, i32* %arrayidx174, align 4
  store i32 %172, i32* %jj, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.193, %for.body.167
  %173 = load i32, i32* %jj, align 4
  %174 = load i32, i32* %i10, align 4
  %add176 = add nsw i32 %174, 1
  %idxprom177 = sext i32 %add176 to i64
  %175 = load i32*, i32** %A_i, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %175, i64 %idxprom177
  %176 = load i32, i32* %arrayidx178, align 4
  %cmp179 = icmp slt i32 %173, %176
  br i1 %cmp179, label %for.body.181, label %for.end.195

for.body.181:                                     ; preds = %for.cond.175
  %177 = load i32, i32* %jj, align 4
  %idxprom182 = sext i32 %177 to i64
  %178 = load double*, double** %A_data, align 8
  %arrayidx183 = getelementptr inbounds double, double* %178, i64 %idxprom182
  %179 = load double, double* %arrayidx183, align 8
  %180 = load i32, i32* %j11, align 4
  %181 = load i32, i32* %vecstride_x, align 4
  %mul184 = mul nsw i32 %180, %181
  %182 = load i32, i32* %jj, align 4
  %idxprom185 = sext i32 %182 to i64
  %183 = load i32*, i32** %A_j, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %183, i64 %idxprom185
  %184 = load i32, i32* %arrayidx186, align 4
  %185 = load i32, i32* %idxstride_x, align 4
  %mul187 = mul nsw i32 %184, %185
  %add188 = add nsw i32 %mul184, %mul187
  %idxprom189 = sext i32 %add188 to i64
  %186 = load double*, double** %x_data, align 8
  %arrayidx190 = getelementptr inbounds double, double* %186, i64 %idxprom189
  %187 = load double, double* %arrayidx190, align 8
  %mul191 = fmul double %179, %187
  %188 = load double, double* %temp, align 8
  %add192 = fadd double %188, %mul191
  store double %add192, double* %temp, align 8
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.181
  %189 = load i32, i32* %jj, align 4
  %inc194 = add nsw i32 %189, 1
  store i32 %inc194, i32* %jj, align 4
  br label %for.cond.175

for.end.195:                                      ; preds = %for.cond.175
  %190 = load double, double* %temp, align 8
  %191 = load i32, i32* %j11, align 4
  %192 = load i32, i32* %vecstride_y, align 4
  %mul196 = mul nsw i32 %191, %192
  %193 = load i32, i32* %i10, align 4
  %194 = load i32, i32* %idxstride_y, align 4
  %mul197 = mul nsw i32 %193, %194
  %add198 = add nsw i32 %mul196, %mul197
  %idxprom199 = sext i32 %add198 to i64
  %195 = load double*, double** %y_data, align 8
  %arrayidx200 = getelementptr inbounds double, double* %195, i64 %idxprom199
  store double %190, double* %arrayidx200, align 8
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.195
  %196 = load i32, i32* %j11, align 4
  %inc202 = add nsw i32 %196, 1
  store i32 %inc202, i32* %j11, align 4
  br label %for.cond.164

for.end.203:                                      ; preds = %for.cond.164
  br label %if.end.204

if.end.204:                                       ; preds = %for.end.203, %for.end.160
  br label %for.inc.205

for.inc.205:                                      ; preds = %if.end.204
  %197 = load i32, i32* %i10, align 4
  %inc206 = add nsw i32 %197, 1
  store i32 %inc206, i32* %i10, align 4
  br label %for.cond.132

for.end.207:                                      ; preds = %for.cond.132
  br label %if.end.208

if.end.208:                                       ; preds = %for.end.207, %for.end.130
  %198 = load double, double* %alpha.addr, align 8
  %cmp209 = fcmp une double %198, 1.000000e+00
  br i1 %cmp209, label %if.then.211, label %if.end.223

if.then.211:                                      ; preds = %if.end.208
  store i32 0, i32* %i10, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.220, %if.then.211
  %199 = load i32, i32* %i10, align 4
  %200 = load i32, i32* %num_rows, align 4
  %201 = load i32, i32* %num_vectors, align 4
  %mul213 = mul nsw i32 %200, %201
  %cmp214 = icmp slt i32 %199, %mul213
  br i1 %cmp214, label %for.body.216, label %for.end.222

for.body.216:                                     ; preds = %for.cond.212
  %202 = load double, double* %alpha.addr, align 8
  %203 = load i32, i32* %i10, align 4
  %idxprom217 = sext i32 %203 to i64
  %204 = load double*, double** %y_data, align 8
  %arrayidx218 = getelementptr inbounds double, double* %204, i64 %idxprom217
  %205 = load double, double* %arrayidx218, align 8
  %mul219 = fmul double %205, %202
  store double %mul219, double* %arrayidx218, align 8
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.body.216
  %206 = load i32, i32* %i10, align 4
  %inc221 = add nsw i32 %206, 1
  store i32 %inc221, i32* %i10, align 4
  br label %for.cond.212

for.end.222:                                      ; preds = %for.cond.212
  br label %if.end.223

if.end.223:                                       ; preds = %for.end.222, %if.end.208
  %207 = load i32, i32* %ierr, align 4
  store i32 %207, i32* %retval
  br label %return

return:                                           ; preds = %if.end.223, %for.end
  %208 = load i32, i32* %retval
  ret i32 %208
}

; Function Attrs: nounwind uwtable
define i32 @hypre_CSRMatrixMatvecT(double %alpha, %struct.hypre_CSRMatrix* %A, %struct.hypre_Vector* %x, double %beta, %struct.hypre_Vector* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %A.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %x.addr = alloca %struct.hypre_Vector*, align 8
  %beta.addr = alloca double, align 8
  %y.addr = alloca %struct.hypre_Vector*, align 8
  %A_data = alloca double*, align 8
  %A_i = alloca i32*, align 8
  %A_j = alloca i32*, align 8
  %num_rows = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %x_data = alloca double*, align 8
  %y_data = alloca double*, align 8
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  %idxstride_y = alloca i32, align 4
  %vecstride_y = alloca i32, align 4
  %idxstride_x = alloca i32, align 4
  %vecstride_x = alloca i32, align 4
  %temp = alloca double, align 8
  %i9 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j10 = alloca i32, align 4
  %jv = alloca i32, align 4
  %jj = alloca i32, align 4
  %ns = alloca i32, align 4
  %ne = alloca i32, align 4
  %size11 = alloca i32, align 4
  %rest = alloca i32, align 4
  %num_threads = alloca i32, align 4
  %ierr = alloca i32, align 4
  store double %alpha, double* %alpha.addr, align 8
  store %struct.hypre_CSRMatrix* %A, %struct.hypre_CSRMatrix** %A.addr, align 8
  store %struct.hypre_Vector* %x, %struct.hypre_Vector** %x.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store %struct.hypre_Vector* %y, %struct.hypre_Vector** %y.addr, align 8
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i32 0, i32 0
  %1 = load double*, double** %data, align 8
  store double* %1, double** %A_data, align 8
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 1
  %3 = load i32*, i32** %i, align 8
  store i32* %3, i32** %A_i, align 8
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 2
  %5 = load i32*, i32** %j, align 8
  store i32* %5, i32** %A_j, align 8
  %6 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_rows1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %6, i32 0, i32 3
  %7 = load i32, i32* %num_rows1, align 4
  store i32 %7, i32* %num_rows, align 4
  %8 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_cols2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %8, i32 0, i32 4
  %9 = load i32, i32* %num_cols2, align 4
  store i32 %9, i32* %num_cols, align 4
  %10 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %data3 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %10, i32 0, i32 0
  %11 = load double*, double** %data3, align 8
  store double* %11, double** %x_data, align 8
  %12 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %data4 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %12, i32 0, i32 0
  %13 = load double*, double** %data4, align 8
  store double* %13, double** %y_data, align 8
  %14 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %size = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %14, i32 0, i32 1
  %15 = load i32, i32* %size, align 4
  store i32 %15, i32* %x_size, align 4
  %16 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %size5 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %16, i32 0, i32 1
  %17 = load i32, i32* %size5, align 4
  store i32 %17, i32* %y_size, align 4
  %18 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %num_vectors6 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %18, i32 0, i32 3
  %19 = load i32, i32* %num_vectors6, align 4
  store i32 %19, i32* %num_vectors, align 4
  %20 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %idxstride = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %20, i32 0, i32 6
  %21 = load i32, i32* %idxstride, align 4
  store i32 %21, i32* %idxstride_y, align 4
  %22 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %vecstride = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %22, i32 0, i32 5
  %23 = load i32, i32* %vecstride, align 4
  store i32 %23, i32* %vecstride_y, align 4
  %24 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %idxstride7 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %24, i32 0, i32 6
  %25 = load i32, i32* %idxstride7, align 4
  store i32 %25, i32* %idxstride_x, align 4
  %26 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %vecstride8 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %26, i32 0, i32 5
  %27 = load i32, i32* %vecstride8, align 4
  store i32 %27, i32* %vecstride_x, align 4
  store i32 0, i32* %ierr, align 4
  %28 = load i32, i32* %num_rows, align 4
  %29 = load i32, i32* %x_size, align 4
  %cmp = icmp ne i32 %28, %29
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %ierr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load i32, i32* %num_cols, align 4
  %31 = load i32, i32* %y_size, align 4
  %cmp12 = icmp ne i32 %30, %31
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 2, i32* %ierr, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %32 = load i32, i32* %num_rows, align 4
  %33 = load i32, i32* %x_size, align 4
  %cmp15 = icmp ne i32 %32, %33
  br i1 %cmp15, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.14
  %34 = load i32, i32* %num_cols, align 4
  %35 = load i32, i32* %y_size, align 4
  %cmp16 = icmp ne i32 %34, %35
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  store i32 3, i32* %ierr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.end.14
  %36 = load double, double* %alpha.addr, align 8
  %cmp19 = fcmp oeq double %36, 0.000000e+00
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  store i32 0, i32* %i9, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %37 = load i32, i32* %i9, align 4
  %38 = load i32, i32* %num_cols, align 4
  %39 = load i32, i32* %num_vectors, align 4
  %mul = mul nsw i32 %38, %39
  %cmp21 = icmp slt i32 %37, %mul
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load double, double* %beta.addr, align 8
  %41 = load i32, i32* %i9, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load double*, double** %y_data, align 8
  %arrayidx = getelementptr inbounds double, double* %42, i64 %idxprom
  %43 = load double, double* %arrayidx, align 8
  %mul22 = fmul double %43, %40
  store double %mul22, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i9, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i9, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32, i32* %ierr, align 4
  store i32 %45, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %46 = load double, double* %beta.addr, align 8
  %47 = load double, double* %alpha.addr, align 8
  %div = fdiv double %46, %47
  store double %div, double* %temp, align 8
  %48 = load double, double* %temp, align 8
  %cmp24 = fcmp une double %48, 1.000000e+00
  br i1 %cmp24, label %if.then.25, label %if.end.48

if.then.25:                                       ; preds = %if.end.23
  %49 = load double, double* %temp, align 8
  %cmp26 = fcmp oeq double %49, 0.000000e+00
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.25
  store i32 0, i32* %i9, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.34, %if.then.27
  %50 = load i32, i32* %i9, align 4
  %51 = load i32, i32* %num_cols, align 4
  %52 = load i32, i32* %num_vectors, align 4
  %mul29 = mul nsw i32 %51, %52
  %cmp30 = icmp slt i32 %50, %mul29
  br i1 %cmp30, label %for.body.31, label %for.end.36

for.body.31:                                      ; preds = %for.cond.28
  %53 = load i32, i32* %i9, align 4
  %idxprom32 = sext i32 %53 to i64
  %54 = load double*, double** %y_data, align 8
  %arrayidx33 = getelementptr inbounds double, double* %54, i64 %idxprom32
  store double 0.000000e+00, double* %arrayidx33, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.31
  %55 = load i32, i32* %i9, align 4
  %inc35 = add nsw i32 %55, 1
  store i32 %inc35, i32* %i9, align 4
  br label %for.cond.28

for.end.36:                                       ; preds = %for.cond.28
  br label %if.end.47

if.else:                                          ; preds = %if.then.25
  store i32 0, i32* %i9, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.44, %if.else
  %56 = load i32, i32* %i9, align 4
  %57 = load i32, i32* %num_cols, align 4
  %58 = load i32, i32* %num_vectors, align 4
  %mul38 = mul nsw i32 %57, %58
  %cmp39 = icmp slt i32 %56, %mul38
  br i1 %cmp39, label %for.body.40, label %for.end.46

for.body.40:                                      ; preds = %for.cond.37
  %59 = load double, double* %temp, align 8
  %60 = load i32, i32* %i9, align 4
  %idxprom41 = sext i32 %60 to i64
  %61 = load double*, double** %y_data, align 8
  %arrayidx42 = getelementptr inbounds double, double* %61, i64 %idxprom41
  %62 = load double, double* %arrayidx42, align 8
  %mul43 = fmul double %62, %59
  store double %mul43, double* %arrayidx42, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.40
  %63 = load i32, i32* %i9, align 4
  %inc45 = add nsw i32 %63, 1
  store i32 %inc45, i32* %i9, align 4
  br label %for.cond.37

for.end.46:                                       ; preds = %for.cond.37
  br label %if.end.47

if.end.47:                                        ; preds = %for.end.46, %for.end.36
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.23
  store i32 1, i32* %num_threads, align 4
  %64 = load i32, i32* %num_threads, align 4
  %cmp49 = icmp sgt i32 %64, 1
  br i1 %cmp49, label %if.then.50, label %if.else.155

if.then.50:                                       ; preds = %if.end.48
  store i32 0, i32* %i1, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.152, %if.then.50
  %65 = load i32, i32* %i1, align 4
  %66 = load i32, i32* %num_threads, align 4
  %cmp52 = icmp slt i32 %65, %66
  br i1 %cmp52, label %for.body.53, label %for.end.154

for.body.53:                                      ; preds = %for.cond.51
  %67 = load i32, i32* %num_cols, align 4
  %68 = load i32, i32* %num_threads, align 4
  %div54 = sdiv i32 %67, %68
  store i32 %div54, i32* %size11, align 4
  %69 = load i32, i32* %num_cols, align 4
  %70 = load i32, i32* %size11, align 4
  %71 = load i32, i32* %num_threads, align 4
  %mul55 = mul nsw i32 %70, %71
  %sub = sub nsw i32 %69, %mul55
  store i32 %sub, i32* %rest, align 4
  %72 = load i32, i32* %i1, align 4
  %73 = load i32, i32* %rest, align 4
  %cmp56 = icmp slt i32 %72, %73
  br i1 %cmp56, label %if.then.57, label %if.else.64

if.then.57:                                       ; preds = %for.body.53
  %74 = load i32, i32* %i1, align 4
  %75 = load i32, i32* %size11, align 4
  %mul58 = mul nsw i32 %74, %75
  %76 = load i32, i32* %i1, align 4
  %add = add nsw i32 %mul58, %76
  %sub59 = sub nsw i32 %add, 1
  store i32 %sub59, i32* %ns, align 4
  %77 = load i32, i32* %i1, align 4
  %add60 = add nsw i32 %77, 1
  %78 = load i32, i32* %size11, align 4
  %mul61 = mul nsw i32 %add60, %78
  %79 = load i32, i32* %i1, align 4
  %add62 = add nsw i32 %mul61, %79
  %add63 = add nsw i32 %add62, 1
  store i32 %add63, i32* %ne, align 4
  br label %if.end.71

if.else.64:                                       ; preds = %for.body.53
  %80 = load i32, i32* %i1, align 4
  %81 = load i32, i32* %size11, align 4
  %mul65 = mul nsw i32 %80, %81
  %82 = load i32, i32* %rest, align 4
  %add66 = add nsw i32 %mul65, %82
  %sub67 = sub nsw i32 %add66, 1
  store i32 %sub67, i32* %ns, align 4
  %83 = load i32, i32* %i1, align 4
  %add68 = add nsw i32 %83, 1
  %84 = load i32, i32* %size11, align 4
  %mul69 = mul nsw i32 %add68, %84
  %85 = load i32, i32* %rest, align 4
  %add70 = add nsw i32 %mul69, %85
  store i32 %add70, i32* %ne, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.64, %if.then.57
  %86 = load i32, i32* %num_vectors, align 4
  %cmp72 = icmp eq i32 %86, 1
  br i1 %cmp72, label %if.then.73, label %if.else.106

if.then.73:                                       ; preds = %if.end.71
  store i32 0, i32* %i9, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.103, %if.then.73
  %87 = load i32, i32* %i9, align 4
  %88 = load i32, i32* %num_rows, align 4
  %cmp75 = icmp slt i32 %87, %88
  br i1 %cmp75, label %for.body.76, label %for.end.105

for.body.76:                                      ; preds = %for.cond.74
  %89 = load i32, i32* %i9, align 4
  %idxprom77 = sext i32 %89 to i64
  %90 = load i32*, i32** %A_i, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %90, i64 %idxprom77
  %91 = load i32, i32* %arrayidx78, align 4
  store i32 %91, i32* %jj, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.100, %for.body.76
  %92 = load i32, i32* %jj, align 4
  %93 = load i32, i32* %i9, align 4
  %add80 = add nsw i32 %93, 1
  %idxprom81 = sext i32 %add80 to i64
  %94 = load i32*, i32** %A_i, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %94, i64 %idxprom81
  %95 = load i32, i32* %arrayidx82, align 4
  %cmp83 = icmp slt i32 %92, %95
  br i1 %cmp83, label %for.body.84, label %for.end.102

for.body.84:                                      ; preds = %for.cond.79
  %96 = load i32, i32* %jj, align 4
  %idxprom85 = sext i32 %96 to i64
  %97 = load i32*, i32** %A_j, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %97, i64 %idxprom85
  %98 = load i32, i32* %arrayidx86, align 4
  store i32 %98, i32* %j10, align 4
  %99 = load i32, i32* %j10, align 4
  %100 = load i32, i32* %ns, align 4
  %cmp87 = icmp sgt i32 %99, %100
  br i1 %cmp87, label %land.lhs.true.88, label %if.end.99

land.lhs.true.88:                                 ; preds = %for.body.84
  %101 = load i32, i32* %j10, align 4
  %102 = load i32, i32* %ne, align 4
  %cmp89 = icmp slt i32 %101, %102
  br i1 %cmp89, label %if.then.90, label %if.end.99

if.then.90:                                       ; preds = %land.lhs.true.88
  %103 = load i32, i32* %jj, align 4
  %idxprom91 = sext i32 %103 to i64
  %104 = load double*, double** %A_data, align 8
  %arrayidx92 = getelementptr inbounds double, double* %104, i64 %idxprom91
  %105 = load double, double* %arrayidx92, align 8
  %106 = load i32, i32* %i9, align 4
  %idxprom93 = sext i32 %106 to i64
  %107 = load double*, double** %x_data, align 8
  %arrayidx94 = getelementptr inbounds double, double* %107, i64 %idxprom93
  %108 = load double, double* %arrayidx94, align 8
  %mul95 = fmul double %105, %108
  %109 = load i32, i32* %j10, align 4
  %idxprom96 = sext i32 %109 to i64
  %110 = load double*, double** %y_data, align 8
  %arrayidx97 = getelementptr inbounds double, double* %110, i64 %idxprom96
  %111 = load double, double* %arrayidx97, align 8
  %add98 = fadd double %111, %mul95
  store double %add98, double* %arrayidx97, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.90, %land.lhs.true.88, %for.body.84
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %112 = load i32, i32* %jj, align 4
  %inc101 = add nsw i32 %112, 1
  store i32 %inc101, i32* %jj, align 4
  br label %for.cond.79

for.end.102:                                      ; preds = %for.cond.79
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end.102
  %113 = load i32, i32* %i9, align 4
  %inc104 = add nsw i32 %113, 1
  store i32 %inc104, i32* %i9, align 4
  br label %for.cond.74

for.end.105:                                      ; preds = %for.cond.74
  br label %if.end.151

if.else.106:                                      ; preds = %if.end.71
  store i32 0, i32* %i9, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.148, %if.else.106
  %114 = load i32, i32* %i9, align 4
  %115 = load i32, i32* %num_rows, align 4
  %cmp108 = icmp slt i32 %114, %115
  br i1 %cmp108, label %for.body.109, label %for.end.150

for.body.109:                                     ; preds = %for.cond.107
  store i32 0, i32* %jv, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.145, %for.body.109
  %116 = load i32, i32* %jv, align 4
  %117 = load i32, i32* %num_vectors, align 4
  %cmp111 = icmp slt i32 %116, %117
  br i1 %cmp111, label %for.body.112, label %for.end.147

for.body.112:                                     ; preds = %for.cond.110
  %118 = load i32, i32* %i9, align 4
  %idxprom113 = sext i32 %118 to i64
  %119 = load i32*, i32** %A_i, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %119, i64 %idxprom113
  %120 = load i32, i32* %arrayidx114, align 4
  store i32 %120, i32* %jj, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.142, %for.body.112
  %121 = load i32, i32* %jj, align 4
  %122 = load i32, i32* %i9, align 4
  %add116 = add nsw i32 %122, 1
  %idxprom117 = sext i32 %add116 to i64
  %123 = load i32*, i32** %A_i, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %123, i64 %idxprom117
  %124 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp slt i32 %121, %124
  br i1 %cmp119, label %for.body.120, label %for.end.144

for.body.120:                                     ; preds = %for.cond.115
  %125 = load i32, i32* %jj, align 4
  %idxprom121 = sext i32 %125 to i64
  %126 = load i32*, i32** %A_j, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %126, i64 %idxprom121
  %127 = load i32, i32* %arrayidx122, align 4
  store i32 %127, i32* %j10, align 4
  %128 = load i32, i32* %j10, align 4
  %129 = load i32, i32* %ns, align 4
  %cmp123 = icmp sgt i32 %128, %129
  br i1 %cmp123, label %land.lhs.true.124, label %if.end.141

land.lhs.true.124:                                ; preds = %for.body.120
  %130 = load i32, i32* %j10, align 4
  %131 = load i32, i32* %ne, align 4
  %cmp125 = icmp slt i32 %130, %131
  br i1 %cmp125, label %if.then.126, label %if.end.141

if.then.126:                                      ; preds = %land.lhs.true.124
  %132 = load i32, i32* %jj, align 4
  %idxprom127 = sext i32 %132 to i64
  %133 = load double*, double** %A_data, align 8
  %arrayidx128 = getelementptr inbounds double, double* %133, i64 %idxprom127
  %134 = load double, double* %arrayidx128, align 8
  %135 = load i32, i32* %i9, align 4
  %136 = load i32, i32* %idxstride_x, align 4
  %mul129 = mul nsw i32 %135, %136
  %137 = load i32, i32* %jv, align 4
  %138 = load i32, i32* %vecstride_x, align 4
  %mul130 = mul nsw i32 %137, %138
  %add131 = add nsw i32 %mul129, %mul130
  %idxprom132 = sext i32 %add131 to i64
  %139 = load double*, double** %x_data, align 8
  %arrayidx133 = getelementptr inbounds double, double* %139, i64 %idxprom132
  %140 = load double, double* %arrayidx133, align 8
  %mul134 = fmul double %134, %140
  %141 = load i32, i32* %j10, align 4
  %142 = load i32, i32* %idxstride_y, align 4
  %mul135 = mul nsw i32 %141, %142
  %143 = load i32, i32* %jv, align 4
  %144 = load i32, i32* %vecstride_y, align 4
  %mul136 = mul nsw i32 %143, %144
  %add137 = add nsw i32 %mul135, %mul136
  %idxprom138 = sext i32 %add137 to i64
  %145 = load double*, double** %y_data, align 8
  %arrayidx139 = getelementptr inbounds double, double* %145, i64 %idxprom138
  %146 = load double, double* %arrayidx139, align 8
  %add140 = fadd double %146, %mul134
  store double %add140, double* %arrayidx139, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.126, %land.lhs.true.124, %for.body.120
  br label %for.inc.142

for.inc.142:                                      ; preds = %if.end.141
  %147 = load i32, i32* %jj, align 4
  %inc143 = add nsw i32 %147, 1
  store i32 %inc143, i32* %jj, align 4
  br label %for.cond.115

for.end.144:                                      ; preds = %for.cond.115
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.end.144
  %148 = load i32, i32* %jv, align 4
  %inc146 = add nsw i32 %148, 1
  store i32 %inc146, i32* %jv, align 4
  br label %for.cond.110

for.end.147:                                      ; preds = %for.cond.110
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.end.147
  %149 = load i32, i32* %i9, align 4
  %inc149 = add nsw i32 %149, 1
  store i32 %inc149, i32* %i9, align 4
  br label %for.cond.107

for.end.150:                                      ; preds = %for.cond.107
  br label %if.end.151

if.end.151:                                       ; preds = %for.end.150, %for.end.105
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.151
  %150 = load i32, i32* %i1, align 4
  %inc153 = add nsw i32 %150, 1
  store i32 %inc153, i32* %i1, align 4
  br label %for.cond.51

for.end.154:                                      ; preds = %for.cond.51
  br label %if.end.220

if.else.155:                                      ; preds = %if.end.48
  store i32 0, i32* %i9, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.217, %if.else.155
  %151 = load i32, i32* %i9, align 4
  %152 = load i32, i32* %num_rows, align 4
  %cmp157 = icmp slt i32 %151, %152
  br i1 %cmp157, label %for.body.158, label %for.end.219

for.body.158:                                     ; preds = %for.cond.156
  %153 = load i32, i32* %num_vectors, align 4
  %cmp159 = icmp eq i32 %153, 1
  br i1 %cmp159, label %if.then.160, label %if.else.182

if.then.160:                                      ; preds = %for.body.158
  %154 = load i32, i32* %i9, align 4
  %idxprom161 = sext i32 %154 to i64
  %155 = load i32*, i32** %A_i, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %155, i64 %idxprom161
  %156 = load i32, i32* %arrayidx162, align 4
  store i32 %156, i32* %jj, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.179, %if.then.160
  %157 = load i32, i32* %jj, align 4
  %158 = load i32, i32* %i9, align 4
  %add164 = add nsw i32 %158, 1
  %idxprom165 = sext i32 %add164 to i64
  %159 = load i32*, i32** %A_i, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %159, i64 %idxprom165
  %160 = load i32, i32* %arrayidx166, align 4
  %cmp167 = icmp slt i32 %157, %160
  br i1 %cmp167, label %for.body.168, label %for.end.181

for.body.168:                                     ; preds = %for.cond.163
  %161 = load i32, i32* %jj, align 4
  %idxprom169 = sext i32 %161 to i64
  %162 = load i32*, i32** %A_j, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %162, i64 %idxprom169
  %163 = load i32, i32* %arrayidx170, align 4
  store i32 %163, i32* %j10, align 4
  %164 = load i32, i32* %jj, align 4
  %idxprom171 = sext i32 %164 to i64
  %165 = load double*, double** %A_data, align 8
  %arrayidx172 = getelementptr inbounds double, double* %165, i64 %idxprom171
  %166 = load double, double* %arrayidx172, align 8
  %167 = load i32, i32* %i9, align 4
  %idxprom173 = sext i32 %167 to i64
  %168 = load double*, double** %x_data, align 8
  %arrayidx174 = getelementptr inbounds double, double* %168, i64 %idxprom173
  %169 = load double, double* %arrayidx174, align 8
  %mul175 = fmul double %166, %169
  %170 = load i32, i32* %j10, align 4
  %idxprom176 = sext i32 %170 to i64
  %171 = load double*, double** %y_data, align 8
  %arrayidx177 = getelementptr inbounds double, double* %171, i64 %idxprom176
  %172 = load double, double* %arrayidx177, align 8
  %add178 = fadd double %172, %mul175
  store double %add178, double* %arrayidx177, align 8
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.body.168
  %173 = load i32, i32* %jj, align 4
  %inc180 = add nsw i32 %173, 1
  store i32 %inc180, i32* %jj, align 4
  br label %for.cond.163

for.end.181:                                      ; preds = %for.cond.163
  br label %if.end.216

if.else.182:                                      ; preds = %for.body.158
  store i32 0, i32* %jv, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.213, %if.else.182
  %174 = load i32, i32* %jv, align 4
  %175 = load i32, i32* %num_vectors, align 4
  %cmp184 = icmp slt i32 %174, %175
  br i1 %cmp184, label %for.body.185, label %for.end.215

for.body.185:                                     ; preds = %for.cond.183
  %176 = load i32, i32* %i9, align 4
  %idxprom186 = sext i32 %176 to i64
  %177 = load i32*, i32** %A_i, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %177, i64 %idxprom186
  %178 = load i32, i32* %arrayidx187, align 4
  store i32 %178, i32* %jj, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.210, %for.body.185
  %179 = load i32, i32* %jj, align 4
  %180 = load i32, i32* %i9, align 4
  %add189 = add nsw i32 %180, 1
  %idxprom190 = sext i32 %add189 to i64
  %181 = load i32*, i32** %A_i, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %181, i64 %idxprom190
  %182 = load i32, i32* %arrayidx191, align 4
  %cmp192 = icmp slt i32 %179, %182
  br i1 %cmp192, label %for.body.193, label %for.end.212

for.body.193:                                     ; preds = %for.cond.188
  %183 = load i32, i32* %jj, align 4
  %idxprom194 = sext i32 %183 to i64
  %184 = load i32*, i32** %A_j, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %184, i64 %idxprom194
  %185 = load i32, i32* %arrayidx195, align 4
  store i32 %185, i32* %j10, align 4
  %186 = load i32, i32* %jj, align 4
  %idxprom196 = sext i32 %186 to i64
  %187 = load double*, double** %A_data, align 8
  %arrayidx197 = getelementptr inbounds double, double* %187, i64 %idxprom196
  %188 = load double, double* %arrayidx197, align 8
  %189 = load i32, i32* %i9, align 4
  %190 = load i32, i32* %idxstride_x, align 4
  %mul198 = mul nsw i32 %189, %190
  %191 = load i32, i32* %jv, align 4
  %192 = load i32, i32* %vecstride_x, align 4
  %mul199 = mul nsw i32 %191, %192
  %add200 = add nsw i32 %mul198, %mul199
  %idxprom201 = sext i32 %add200 to i64
  %193 = load double*, double** %x_data, align 8
  %arrayidx202 = getelementptr inbounds double, double* %193, i64 %idxprom201
  %194 = load double, double* %arrayidx202, align 8
  %mul203 = fmul double %188, %194
  %195 = load i32, i32* %j10, align 4
  %196 = load i32, i32* %idxstride_y, align 4
  %mul204 = mul nsw i32 %195, %196
  %197 = load i32, i32* %jv, align 4
  %198 = load i32, i32* %vecstride_y, align 4
  %mul205 = mul nsw i32 %197, %198
  %add206 = add nsw i32 %mul204, %mul205
  %idxprom207 = sext i32 %add206 to i64
  %199 = load double*, double** %y_data, align 8
  %arrayidx208 = getelementptr inbounds double, double* %199, i64 %idxprom207
  %200 = load double, double* %arrayidx208, align 8
  %add209 = fadd double %200, %mul203
  store double %add209, double* %arrayidx208, align 8
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.body.193
  %201 = load i32, i32* %jj, align 4
  %inc211 = add nsw i32 %201, 1
  store i32 %inc211, i32* %jj, align 4
  br label %for.cond.188

for.end.212:                                      ; preds = %for.cond.188
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.end.212
  %202 = load i32, i32* %jv, align 4
  %inc214 = add nsw i32 %202, 1
  store i32 %inc214, i32* %jv, align 4
  br label %for.cond.183

for.end.215:                                      ; preds = %for.cond.183
  br label %if.end.216

if.end.216:                                       ; preds = %for.end.215, %for.end.181
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216
  %203 = load i32, i32* %i9, align 4
  %inc218 = add nsw i32 %203, 1
  store i32 %inc218, i32* %i9, align 4
  br label %for.cond.156

for.end.219:                                      ; preds = %for.cond.156
  br label %if.end.220

if.end.220:                                       ; preds = %for.end.219, %for.end.154
  %204 = load double, double* %alpha.addr, align 8
  %cmp221 = fcmp une double %204, 1.000000e+00
  br i1 %cmp221, label %if.then.222, label %if.end.233

if.then.222:                                      ; preds = %if.end.220
  store i32 0, i32* %i9, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.230, %if.then.222
  %205 = load i32, i32* %i9, align 4
  %206 = load i32, i32* %num_cols, align 4
  %207 = load i32, i32* %num_vectors, align 4
  %mul224 = mul nsw i32 %206, %207
  %cmp225 = icmp slt i32 %205, %mul224
  br i1 %cmp225, label %for.body.226, label %for.end.232

for.body.226:                                     ; preds = %for.cond.223
  %208 = load double, double* %alpha.addr, align 8
  %209 = load i32, i32* %i9, align 4
  %idxprom227 = sext i32 %209 to i64
  %210 = load double*, double** %y_data, align 8
  %arrayidx228 = getelementptr inbounds double, double* %210, i64 %idxprom227
  %211 = load double, double* %arrayidx228, align 8
  %mul229 = fmul double %211, %208
  store double %mul229, double* %arrayidx228, align 8
  br label %for.inc.230

for.inc.230:                                      ; preds = %for.body.226
  %212 = load i32, i32* %i9, align 4
  %inc231 = add nsw i32 %212, 1
  store i32 %inc231, i32* %i9, align 4
  br label %for.cond.223

for.end.232:                                      ; preds = %for.cond.223
  br label %if.end.233

if.end.233:                                       ; preds = %for.end.232, %if.end.220
  %213 = load i32, i32* %ierr, align 4
  store i32 %213, i32* %retval
  br label %return

return:                                           ; preds = %if.end.233, %for.end
  %214 = load i32, i32* %retval
  ret i32 %214
}

; Function Attrs: nounwind uwtable
define i32 @hypre_CSRMatrixMatvec_FF(double %alpha, %struct.hypre_CSRMatrix* %A, %struct.hypre_Vector* %x, double %beta, %struct.hypre_Vector* %y, i32* %CF_marker_x, i32* %CF_marker_y, i32 %fpt) #0 {
entry:
  %retval = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %A.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %x.addr = alloca %struct.hypre_Vector*, align 8
  %beta.addr = alloca double, align 8
  %y.addr = alloca %struct.hypre_Vector*, align 8
  %CF_marker_x.addr = alloca i32*, align 8
  %CF_marker_y.addr = alloca i32*, align 8
  %fpt.addr = alloca i32, align 4
  %A_data = alloca double*, align 8
  %A_i = alloca i32*, align 8
  %A_j = alloca i32*, align 8
  %num_rows = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %x_data = alloca double*, align 8
  %y_data = alloca double*, align 8
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %temp = alloca double, align 8
  %i6 = alloca i32, align 4
  %jj = alloca i32, align 4
  %ierr = alloca i32, align 4
  store double %alpha, double* %alpha.addr, align 8
  store %struct.hypre_CSRMatrix* %A, %struct.hypre_CSRMatrix** %A.addr, align 8
  store %struct.hypre_Vector* %x, %struct.hypre_Vector** %x.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store %struct.hypre_Vector* %y, %struct.hypre_Vector** %y.addr, align 8
  store i32* %CF_marker_x, i32** %CF_marker_x.addr, align 8
  store i32* %CF_marker_y, i32** %CF_marker_y.addr, align 8
  store i32 %fpt, i32* %fpt.addr, align 4
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i32 0, i32 0
  %1 = load double*, double** %data, align 8
  store double* %1, double** %A_data, align 8
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 1
  %3 = load i32*, i32** %i, align 8
  store i32* %3, i32** %A_i, align 8
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 2
  %5 = load i32*, i32** %j, align 8
  store i32* %5, i32** %A_j, align 8
  %6 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_rows1 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %6, i32 0, i32 3
  %7 = load i32, i32* %num_rows1, align 4
  store i32 %7, i32* %num_rows, align 4
  %8 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_cols2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %8, i32 0, i32 4
  %9 = load i32, i32* %num_cols2, align 4
  store i32 %9, i32* %num_cols, align 4
  %10 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %data3 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %10, i32 0, i32 0
  %11 = load double*, double** %data3, align 8
  store double* %11, double** %x_data, align 8
  %12 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %data4 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %12, i32 0, i32 0
  %13 = load double*, double** %data4, align 8
  store double* %13, double** %y_data, align 8
  %14 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x.addr, align 8
  %size = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %14, i32 0, i32 1
  %15 = load i32, i32* %size, align 4
  store i32 %15, i32* %x_size, align 4
  %16 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y.addr, align 8
  %size5 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %16, i32 0, i32 1
  %17 = load i32, i32* %size5, align 4
  store i32 %17, i32* %y_size, align 4
  store i32 0, i32* %ierr, align 4
  %18 = load i32, i32* %num_cols, align 4
  %19 = load i32, i32* %x_size, align 4
  %cmp = icmp ne i32 %18, %19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %ierr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load i32, i32* %num_rows, align 4
  %21 = load i32, i32* %y_size, align 4
  %cmp7 = icmp ne i32 %20, %21
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 2, i32* %ierr, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %22 = load i32, i32* %num_cols, align 4
  %23 = load i32, i32* %x_size, align 4
  %cmp10 = icmp ne i32 %22, %23
  br i1 %cmp10, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.9
  %24 = load i32, i32* %num_rows, align 4
  %25 = load i32, i32* %y_size, align 4
  %cmp11 = icmp ne i32 %24, %25
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 3, i32* %ierr, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.9
  %26 = load double, double* %alpha.addr, align 8
  %cmp14 = fcmp oeq double %26, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* %i6, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %27 = load i32, i32* %i6, align 4
  %28 = load i32, i32* %num_rows, align 4
  %cmp16 = icmp slt i32 %27, %28
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i6, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i32*, i32** %CF_marker_x.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %30, i64 %idxprom
  %31 = load i32, i32* %arrayidx, align 4
  %32 = load i32, i32* %fpt.addr, align 4
  %cmp17 = icmp eq i32 %31, %32
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %for.body
  %33 = load double, double* %beta.addr, align 8
  %34 = load i32, i32* %i6, align 4
  %idxprom19 = sext i32 %34 to i64
  %35 = load double*, double** %y_data, align 8
  %arrayidx20 = getelementptr inbounds double, double* %35, i64 %idxprom19
  %36 = load double, double* %arrayidx20, align 8
  %mul = fmul double %36, %33
  store double %mul, double* %arrayidx20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %37 = load i32, i32* %i6, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i6, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %ierr, align 4
  store i32 %38, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.13
  %39 = load double, double* %beta.addr, align 8
  %40 = load double, double* %alpha.addr, align 8
  %div = fdiv double %39, %40
  store double %div, double* %temp, align 8
  %41 = load double, double* %temp, align 8
  %cmp23 = fcmp une double %41, 1.000000e+00
  br i1 %cmp23, label %if.then.24, label %if.end.55

if.then.24:                                       ; preds = %if.end.22
  %42 = load double, double* %temp, align 8
  %cmp25 = fcmp oeq double %42, 0.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then.24
  store i32 0, i32* %i6, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.37, %if.then.26
  %43 = load i32, i32* %i6, align 4
  %44 = load i32, i32* %num_rows, align 4
  %cmp28 = icmp slt i32 %43, %44
  br i1 %cmp28, label %for.body.29, label %for.end.39

for.body.29:                                      ; preds = %for.cond.27
  %45 = load i32, i32* %i6, align 4
  %idxprom30 = sext i32 %45 to i64
  %46 = load i32*, i32** %CF_marker_x.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %46, i64 %idxprom30
  %47 = load i32, i32* %arrayidx31, align 4
  %48 = load i32, i32* %fpt.addr, align 4
  %cmp32 = icmp eq i32 %47, %48
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %for.body.29
  %49 = load i32, i32* %i6, align 4
  %idxprom34 = sext i32 %49 to i64
  %50 = load double*, double** %y_data, align 8
  %arrayidx35 = getelementptr inbounds double, double* %50, i64 %idxprom34
  store double 0.000000e+00, double* %arrayidx35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %for.body.29
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %51 = load i32, i32* %i6, align 4
  %inc38 = add nsw i32 %51, 1
  store i32 %inc38, i32* %i6, align 4
  br label %for.cond.27

for.end.39:                                       ; preds = %for.cond.27
  br label %if.end.54

if.else:                                          ; preds = %if.then.24
  store i32 0, i32* %i6, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.51, %if.else
  %52 = load i32, i32* %i6, align 4
  %53 = load i32, i32* %num_rows, align 4
  %cmp41 = icmp slt i32 %52, %53
  br i1 %cmp41, label %for.body.42, label %for.end.53

for.body.42:                                      ; preds = %for.cond.40
  %54 = load i32, i32* %i6, align 4
  %idxprom43 = sext i32 %54 to i64
  %55 = load i32*, i32** %CF_marker_x.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %55, i64 %idxprom43
  %56 = load i32, i32* %arrayidx44, align 4
  %57 = load i32, i32* %fpt.addr, align 4
  %cmp45 = icmp eq i32 %56, %57
  br i1 %cmp45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %for.body.42
  %58 = load double, double* %temp, align 8
  %59 = load i32, i32* %i6, align 4
  %idxprom47 = sext i32 %59 to i64
  %60 = load double*, double** %y_data, align 8
  %arrayidx48 = getelementptr inbounds double, double* %60, i64 %idxprom47
  %61 = load double, double* %arrayidx48, align 8
  %mul49 = fmul double %61, %58
  store double %mul49, double* %arrayidx48, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %for.body.42
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %62 = load i32, i32* %i6, align 4
  %inc52 = add nsw i32 %62, 1
  store i32 %inc52, i32* %i6, align 4
  br label %for.cond.40

for.end.53:                                       ; preds = %for.cond.40
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.53, %for.end.39
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.22
  store i32 0, i32* %i6, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.93, %if.end.55
  %63 = load i32, i32* %i6, align 4
  %64 = load i32, i32* %num_rows, align 4
  %cmp57 = icmp slt i32 %63, %64
  br i1 %cmp57, label %for.body.58, label %for.end.95

for.body.58:                                      ; preds = %for.cond.56
  %65 = load i32, i32* %i6, align 4
  %idxprom59 = sext i32 %65 to i64
  %66 = load i32*, i32** %CF_marker_x.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %66, i64 %idxprom59
  %67 = load i32, i32* %arrayidx60, align 4
  %68 = load i32, i32* %fpt.addr, align 4
  %cmp61 = icmp eq i32 %67, %68
  br i1 %cmp61, label %if.then.62, label %if.end.92

if.then.62:                                       ; preds = %for.body.58
  %69 = load i32, i32* %i6, align 4
  %idxprom63 = sext i32 %69 to i64
  %70 = load double*, double** %y_data, align 8
  %arrayidx64 = getelementptr inbounds double, double* %70, i64 %idxprom63
  %71 = load double, double* %arrayidx64, align 8
  store double %71, double* %temp, align 8
  %72 = load i32, i32* %i6, align 4
  %idxprom65 = sext i32 %72 to i64
  %73 = load i32*, i32** %A_i, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %73, i64 %idxprom65
  %74 = load i32, i32* %arrayidx66, align 4
  store i32 %74, i32* %jj, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.87, %if.then.62
  %75 = load i32, i32* %jj, align 4
  %76 = load i32, i32* %i6, align 4
  %add = add nsw i32 %76, 1
  %idxprom68 = sext i32 %add to i64
  %77 = load i32*, i32** %A_i, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %77, i64 %idxprom68
  %78 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp slt i32 %75, %78
  br i1 %cmp70, label %for.body.71, label %for.end.89

for.body.71:                                      ; preds = %for.cond.67
  %79 = load i32, i32* %jj, align 4
  %idxprom72 = sext i32 %79 to i64
  %80 = load i32*, i32** %A_j, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %80, i64 %idxprom72
  %81 = load i32, i32* %arrayidx73, align 4
  %idxprom74 = sext i32 %81 to i64
  %82 = load i32*, i32** %CF_marker_y.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %82, i64 %idxprom74
  %83 = load i32, i32* %arrayidx75, align 4
  %84 = load i32, i32* %fpt.addr, align 4
  %cmp76 = icmp eq i32 %83, %84
  br i1 %cmp76, label %if.then.77, label %if.end.86

if.then.77:                                       ; preds = %for.body.71
  %85 = load i32, i32* %jj, align 4
  %idxprom78 = sext i32 %85 to i64
  %86 = load double*, double** %A_data, align 8
  %arrayidx79 = getelementptr inbounds double, double* %86, i64 %idxprom78
  %87 = load double, double* %arrayidx79, align 8
  %88 = load i32, i32* %jj, align 4
  %idxprom80 = sext i32 %88 to i64
  %89 = load i32*, i32** %A_j, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %89, i64 %idxprom80
  %90 = load i32, i32* %arrayidx81, align 4
  %idxprom82 = sext i32 %90 to i64
  %91 = load double*, double** %x_data, align 8
  %arrayidx83 = getelementptr inbounds double, double* %91, i64 %idxprom82
  %92 = load double, double* %arrayidx83, align 8
  %mul84 = fmul double %87, %92
  %93 = load double, double* %temp, align 8
  %add85 = fadd double %93, %mul84
  store double %add85, double* %temp, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.77, %for.body.71
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %94 = load i32, i32* %jj, align 4
  %inc88 = add nsw i32 %94, 1
  store i32 %inc88, i32* %jj, align 4
  br label %for.cond.67

for.end.89:                                       ; preds = %for.cond.67
  %95 = load double, double* %temp, align 8
  %96 = load i32, i32* %i6, align 4
  %idxprom90 = sext i32 %96 to i64
  %97 = load double*, double** %y_data, align 8
  %arrayidx91 = getelementptr inbounds double, double* %97, i64 %idxprom90
  store double %95, double* %arrayidx91, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %for.end.89, %for.body.58
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %98 = load i32, i32* %i6, align 4
  %inc94 = add nsw i32 %98, 1
  store i32 %inc94, i32* %i6, align 4
  br label %for.cond.56

for.end.95:                                       ; preds = %for.cond.56
  %99 = load double, double* %alpha.addr, align 8
  %cmp96 = fcmp une double %99, 1.000000e+00
  br i1 %cmp96, label %if.then.97, label %if.end.112

if.then.97:                                       ; preds = %for.end.95
  store i32 0, i32* %i6, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.109, %if.then.97
  %100 = load i32, i32* %i6, align 4
  %101 = load i32, i32* %num_rows, align 4
  %cmp99 = icmp slt i32 %100, %101
  br i1 %cmp99, label %for.body.100, label %for.end.111

for.body.100:                                     ; preds = %for.cond.98
  %102 = load i32, i32* %i6, align 4
  %idxprom101 = sext i32 %102 to i64
  %103 = load i32*, i32** %CF_marker_x.addr, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %103, i64 %idxprom101
  %104 = load i32, i32* %arrayidx102, align 4
  %105 = load i32, i32* %fpt.addr, align 4
  %cmp103 = icmp eq i32 %104, %105
  br i1 %cmp103, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %for.body.100
  %106 = load double, double* %alpha.addr, align 8
  %107 = load i32, i32* %i6, align 4
  %idxprom105 = sext i32 %107 to i64
  %108 = load double*, double** %y_data, align 8
  %arrayidx106 = getelementptr inbounds double, double* %108, i64 %idxprom105
  %109 = load double, double* %arrayidx106, align 8
  %mul107 = fmul double %109, %106
  store double %mul107, double* %arrayidx106, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.104, %for.body.100
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %110 = load i32, i32* %i6, align 4
  %inc110 = add nsw i32 %110, 1
  store i32 %inc110, i32* %i6, align 4
  br label %for.cond.98

for.end.111:                                      ; preds = %for.cond.98
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.111, %for.end.95
  %111 = load i32, i32* %ierr, align 4
  store i32 %111, i32* %retval
  br label %return

return:                                           ; preds = %if.end.112, %for.end
  %112 = load i32, i32* %retval
  ret i32 %112
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
