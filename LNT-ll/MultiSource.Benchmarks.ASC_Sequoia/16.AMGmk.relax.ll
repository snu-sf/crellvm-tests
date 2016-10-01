; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/16.AMGmk.relax.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_BoomerAMGSeqRelax(%struct.hypre_CSRMatrix* %A, %struct.hypre_Vector* %f, %struct.hypre_Vector* %u) #0 {
entry:
  %A.addr = alloca %struct.hypre_CSRMatrix*, align 8
  %f.addr = alloca %struct.hypre_Vector*, align 8
  %u.addr = alloca %struct.hypre_Vector*, align 8
  %A_diag_data = alloca double*, align 8
  %A_diag_i = alloca i32*, align 8
  %A_diag_j = alloca i32*, align 8
  %n = alloca i32, align 4
  %u_data = alloca double*, align 8
  %f_data = alloca double*, align 8
  %tmp_data = alloca double*, align 8
  %res = alloca double, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %ns = alloca i32, align 4
  %ne = alloca i32, align 4
  %size = alloca i32, align 4
  %rest = alloca i32, align 4
  %relax_error = alloca i32, align 4
  %num_threads = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %A, %struct.hypre_CSRMatrix** %A.addr, align 8
  store %struct.hypre_Vector* %f, %struct.hypre_Vector** %f.addr, align 8
  store %struct.hypre_Vector* %u, %struct.hypre_Vector** %u.addr, align 8
  %0 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i32 0, i32 0
  %1 = load double*, double** %data, align 8
  store double* %1, double** %A_diag_data, align 8
  %2 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %2, i32 0, i32 1
  %3 = load i32*, i32** %i, align 8
  store i32* %3, i32** %A_diag_i, align 8
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %4, i32 0, i32 2
  %5 = load i32*, i32** %j, align 8
  store i32* %5, i32** %A_diag_j, align 8
  %6 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A.addr, align 8
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %6, i32 0, i32 3
  %7 = load i32, i32* %num_rows, align 4
  store i32 %7, i32* %n, align 4
  %8 = load %struct.hypre_Vector*, %struct.hypre_Vector** %u.addr, align 8
  %data1 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %8, i32 0, i32 0
  %9 = load double*, double** %data1, align 8
  store double* %9, double** %u_data, align 8
  %10 = load %struct.hypre_Vector*, %struct.hypre_Vector** %f.addr, align 8
  %data2 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %10, i32 0, i32 0
  %11 = load double*, double** %data2, align 8
  store double* %11, double** %f_data, align 8
  store i32 0, i32* %relax_error, align 4
  store i32 1, i32* %num_threads, align 4
  %12 = load i32, i32* %n, align 4
  %call = call i8* @hypre_CAlloc(i32 %12, i32 8)
  %13 = bitcast i8* %call to double*
  store double* %13, double** %tmp_data, align 8
  store i32 1, i32* %num_threads, align 4
  store i32 0, i32* %i3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i3, align 4
  %15 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i3, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load double*, double** %u_data, align 8
  %arrayidx = getelementptr inbounds double, double* %17, i64 %idxprom
  %18 = load double, double* %arrayidx, align 8
  %19 = load i32, i32* %i3, align 4
  %idxprom5 = sext i32 %19 to i64
  %20 = load double*, double** %tmp_data, align 8
  %arrayidx6 = getelementptr inbounds double, double* %20, i64 %idxprom5
  store double %18, double* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i3, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i3, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j4, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.74, %for.end
  %22 = load i32, i32* %j4, align 4
  %23 = load i32, i32* %num_threads, align 4
  %cmp8 = icmp slt i32 %22, %23
  br i1 %cmp8, label %for.body.9, label %for.end.76

for.body.9:                                       ; preds = %for.cond.7
  %24 = load i32, i32* %n, align 4
  %25 = load i32, i32* %num_threads, align 4
  %div = sdiv i32 %24, %25
  store i32 %div, i32* %size, align 4
  %26 = load i32, i32* %n, align 4
  %27 = load i32, i32* %size, align 4
  %28 = load i32, i32* %num_threads, align 4
  %mul = mul nsw i32 %27, %28
  %sub = sub nsw i32 %26, %mul
  store i32 %sub, i32* %rest, align 4
  %29 = load i32, i32* %j4, align 4
  %30 = load i32, i32* %rest, align 4
  %cmp10 = icmp slt i32 %29, %30
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.9
  %31 = load i32, i32* %j4, align 4
  %32 = load i32, i32* %size, align 4
  %mul11 = mul nsw i32 %31, %32
  %33 = load i32, i32* %j4, align 4
  %add = add nsw i32 %mul11, %33
  store i32 %add, i32* %ns, align 4
  %34 = load i32, i32* %j4, align 4
  %add12 = add nsw i32 %34, 1
  %35 = load i32, i32* %size, align 4
  %mul13 = mul nsw i32 %add12, %35
  %36 = load i32, i32* %j4, align 4
  %add14 = add nsw i32 %mul13, %36
  %add15 = add nsw i32 %add14, 1
  store i32 %add15, i32* %ne, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.9
  %37 = load i32, i32* %j4, align 4
  %38 = load i32, i32* %size, align 4
  %mul16 = mul nsw i32 %37, %38
  %39 = load i32, i32* %rest, align 4
  %add17 = add nsw i32 %mul16, %39
  store i32 %add17, i32* %ns, align 4
  %40 = load i32, i32* %j4, align 4
  %add18 = add nsw i32 %40, 1
  %41 = load i32, i32* %size, align 4
  %mul19 = mul nsw i32 %add18, %41
  %42 = load i32, i32* %rest, align 4
  %add20 = add nsw i32 %mul19, %42
  store i32 %add20, i32* %ne, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %43 = load i32, i32* %ns, align 4
  store i32 %43, i32* %i3, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.71, %if.end
  %44 = load i32, i32* %i3, align 4
  %45 = load i32, i32* %ne, align 4
  %cmp22 = icmp slt i32 %44, %45
  br i1 %cmp22, label %for.body.23, label %for.end.73

for.body.23:                                      ; preds = %for.cond.21
  %46 = load i32, i32* %i3, align 4
  %idxprom24 = sext i32 %46 to i64
  %47 = load i32*, i32** %A_diag_i, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %47, i64 %idxprom24
  %48 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %48 to i64
  %49 = load double*, double** %A_diag_data, align 8
  %arrayidx27 = getelementptr inbounds double, double* %49, i64 %idxprom26
  %50 = load double, double* %arrayidx27, align 8
  %cmp28 = fcmp une double %50, 0.000000e+00
  br i1 %cmp28, label %if.then.29, label %if.end.70

if.then.29:                                       ; preds = %for.body.23
  %51 = load i32, i32* %i3, align 4
  %idxprom30 = sext i32 %51 to i64
  %52 = load double*, double** %f_data, align 8
  %arrayidx31 = getelementptr inbounds double, double* %52, i64 %idxprom30
  %53 = load double, double* %arrayidx31, align 8
  store double %53, double* %res, align 8
  %54 = load i32, i32* %i3, align 4
  %idxprom32 = sext i32 %54 to i64
  %55 = load i32*, i32** %A_diag_i, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %55, i64 %idxprom32
  %56 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %56, 1
  store i32 %add34, i32* %jj, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.60, %if.then.29
  %57 = load i32, i32* %jj, align 4
  %58 = load i32, i32* %i3, align 4
  %add36 = add nsw i32 %58, 1
  %idxprom37 = sext i32 %add36 to i64
  %59 = load i32*, i32** %A_diag_i, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %59, i64 %idxprom37
  %60 = load i32, i32* %arrayidx38, align 4
  %cmp39 = icmp slt i32 %57, %60
  br i1 %cmp39, label %for.body.40, label %for.end.62

for.body.40:                                      ; preds = %for.cond.35
  %61 = load i32, i32* %jj, align 4
  %idxprom41 = sext i32 %61 to i64
  %62 = load i32*, i32** %A_diag_j, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %62, i64 %idxprom41
  %63 = load i32, i32* %arrayidx42, align 4
  store i32 %63, i32* %ii, align 4
  %64 = load i32, i32* %ii, align 4
  %65 = load i32, i32* %ns, align 4
  %cmp43 = icmp sge i32 %64, %65
  br i1 %cmp43, label %land.lhs.true, label %if.else.52

land.lhs.true:                                    ; preds = %for.body.40
  %66 = load i32, i32* %ii, align 4
  %67 = load i32, i32* %ne, align 4
  %cmp44 = icmp slt i32 %66, %67
  br i1 %cmp44, label %if.then.45, label %if.else.52

if.then.45:                                       ; preds = %land.lhs.true
  %68 = load i32, i32* %jj, align 4
  %idxprom46 = sext i32 %68 to i64
  %69 = load double*, double** %A_diag_data, align 8
  %arrayidx47 = getelementptr inbounds double, double* %69, i64 %idxprom46
  %70 = load double, double* %arrayidx47, align 8
  %71 = load i32, i32* %ii, align 4
  %idxprom48 = sext i32 %71 to i64
  %72 = load double*, double** %u_data, align 8
  %arrayidx49 = getelementptr inbounds double, double* %72, i64 %idxprom48
  %73 = load double, double* %arrayidx49, align 8
  %mul50 = fmul double %70, %73
  %74 = load double, double* %res, align 8
  %sub51 = fsub double %74, %mul50
  store double %sub51, double* %res, align 8
  br label %if.end.59

if.else.52:                                       ; preds = %land.lhs.true, %for.body.40
  %75 = load i32, i32* %jj, align 4
  %idxprom53 = sext i32 %75 to i64
  %76 = load double*, double** %A_diag_data, align 8
  %arrayidx54 = getelementptr inbounds double, double* %76, i64 %idxprom53
  %77 = load double, double* %arrayidx54, align 8
  %78 = load i32, i32* %ii, align 4
  %idxprom55 = sext i32 %78 to i64
  %79 = load double*, double** %tmp_data, align 8
  %arrayidx56 = getelementptr inbounds double, double* %79, i64 %idxprom55
  %80 = load double, double* %arrayidx56, align 8
  %mul57 = fmul double %77, %80
  %81 = load double, double* %res, align 8
  %sub58 = fsub double %81, %mul57
  store double %sub58, double* %res, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.52, %if.then.45
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %82 = load i32, i32* %jj, align 4
  %inc61 = add nsw i32 %82, 1
  store i32 %inc61, i32* %jj, align 4
  br label %for.cond.35

for.end.62:                                       ; preds = %for.cond.35
  %83 = load double, double* %res, align 8
  %84 = load i32, i32* %i3, align 4
  %idxprom63 = sext i32 %84 to i64
  %85 = load i32*, i32** %A_diag_i, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %85, i64 %idxprom63
  %86 = load i32, i32* %arrayidx64, align 4
  %idxprom65 = sext i32 %86 to i64
  %87 = load double*, double** %A_diag_data, align 8
  %arrayidx66 = getelementptr inbounds double, double* %87, i64 %idxprom65
  %88 = load double, double* %arrayidx66, align 8
  %div67 = fdiv double %83, %88
  %89 = load i32, i32* %i3, align 4
  %idxprom68 = sext i32 %89 to i64
  %90 = load double*, double** %u_data, align 8
  %arrayidx69 = getelementptr inbounds double, double* %90, i64 %idxprom68
  store double %div67, double* %arrayidx69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.62, %for.body.23
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %91 = load i32, i32* %i3, align 4
  %inc72 = add nsw i32 %91, 1
  store i32 %inc72, i32* %i3, align 4
  br label %for.cond.21

for.end.73:                                       ; preds = %for.cond.21
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.73
  %92 = load i32, i32* %j4, align 4
  %inc75 = add nsw i32 %92, 1
  store i32 %inc75, i32* %j4, align 4
  br label %for.cond.7

for.end.76:                                       ; preds = %for.cond.7
  %93 = load double*, double** %tmp_data, align 8
  %94 = bitcast double* %93 to i8*
  call void @hypre_Free(i8* %94)
  store double* null, double** %tmp_data, align 8
  %95 = load i32, i32* %relax_error, align 4
  ret i32 %95
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare void @hypre_Free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
