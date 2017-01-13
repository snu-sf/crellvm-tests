; ModuleID = './MultiSource.Benchmarks.SciMark2-C/7.array.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double** @new_Array2D_double(i32 %M, i32 %N) #0 {
entry:
  %retval = alloca double**, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %failed = alloca i32, align 4
  %A = alloca double**, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %failed, align 4
  %0 = load i32, i32* %M.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @malloc(i64 %mul) #2
  %1 = bitcast i8* %call to double**
  store double** %1, double*** %A, align 8
  %2 = load double**, double*** %A, align 8
  %cmp = icmp eq double** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double** null, double*** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %M.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %N.addr, align 4
  %conv4 = sext i32 %5 to i64
  %mul5 = mul i64 %conv4, 8
  %call6 = call noalias i8* @malloc(i64 %mul5) #2
  %6 = bitcast i8* %call6 to double*
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load double**, double*** %A, align 8
  %arrayidx = getelementptr inbounds double*, double** %8, i64 %idxprom
  store double* %6, double** %arrayidx, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load double**, double*** %A, align 8
  %arrayidx8 = getelementptr inbounds double*, double** %10, i64 %idxprom7
  %11 = load double*, double** %arrayidx8, align 8
  %cmp9 = icmp eq double* %11, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  store i32 1, i32* %failed, align 4
  br label %for.end

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %for.cond
  %13 = load i32, i32* %failed, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.20, %if.then.13
  %15 = load i32, i32* %i, align 4
  %cmp15 = icmp sle i32 %15, 0
  br i1 %cmp15, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %for.cond.14
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load double**, double*** %A, align 8
  %arrayidx19 = getelementptr inbounds double*, double** %17, i64 %idxprom18
  %18 = load double*, double** %arrayidx19, align 8
  %19 = bitcast double* %18 to i8*
  call void @free(i8* %19) #2
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %20 = load i32, i32* %i, align 4
  %dec21 = add nsw i32 %20, -1
  store i32 %dec21, i32* %i, align 4
  br label %for.cond.14

for.end.22:                                       ; preds = %for.cond.14
  %21 = load double**, double*** %A, align 8
  %22 = bitcast double** %21 to i8*
  call void @free(i8* %22) #2
  store double** null, double*** %retval
  br label %return

if.else:                                          ; preds = %for.end
  %23 = load double**, double*** %A, align 8
  store double** %23, double*** %retval
  br label %return

return:                                           ; preds = %if.else, %for.end.22, %if.then
  %24 = load double**, double*** %retval
  ret double** %24
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @Array2D_double_delete(i32 %M, i32 %N, double** %A) #0 {
entry:
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %A.addr = alloca double**, align 8
  %i = alloca i32, align 4
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store double** %A, double*** %A.addr, align 8
  %0 = load double**, double*** %A.addr, align 8
  %cmp = icmp eq double** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %M.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %4, i64 %idxprom
  %5 = load double*, double** %arrayidx, align 8
  %6 = bitcast double* %5 to i8*
  call void @free(i8* %6) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load double**, double*** %A.addr, align 8
  %9 = bitcast double** %8 to i8*
  call void @free(i8* %9) #2
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Array2D_double_copy(i32 %M, i32 %N, double** %B, double** %A) #0 {
entry:
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %B.addr = alloca double**, align 8
  %A.addr = alloca double**, align 8
  %remainder = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Bi = alloca double*, align 8
  %Ai = alloca double*, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store double** %B, double*** %B.addr, align 8
  store double** %A, double*** %A.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %and = and i32 %0, 3
  store i32 %and, i32* %remainder, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %M.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double**, double*** %B.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %4, i64 %idxprom
  %5 = load double*, double** %arrayidx, align 8
  store double* %5, double** %Bi, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load double**, double*** %A.addr, align 8
  %arrayidx2 = getelementptr inbounds double*, double** %7, i64 %idxprom1
  %8 = load double*, double** %arrayidx2, align 8
  store double* %8, double** %Ai, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %remainder, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load double*, double** %Ai, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 %idxprom6
  %13 = load double, double* %arrayidx7, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load double*, double** %Bi, align 8
  %arrayidx9 = getelementptr inbounds double, double* %15, i64 %idxprom8
  store double %13, double* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %17 = load i32, i32* %remainder, align 4
  store i32 %17, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.34, %for.end
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %N.addr, align 4
  %cmp11 = icmp slt i32 %18, %19
  br i1 %cmp11, label %for.body.12, label %for.end.36

for.body.12:                                      ; preds = %for.cond.10
  %20 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load double*, double** %Ai, align 8
  %arrayidx14 = getelementptr inbounds double, double* %21, i64 %idxprom13
  %22 = load double, double* %arrayidx14, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load double*, double** %Bi, align 8
  %arrayidx16 = getelementptr inbounds double, double* %24, i64 %idxprom15
  store double %22, double* %arrayidx16, align 8
  %25 = load i32, i32* %j, align 4
  %add = add nsw i32 %25, 1
  %idxprom17 = sext i32 %add to i64
  %26 = load double*, double** %Ai, align 8
  %arrayidx18 = getelementptr inbounds double, double* %26, i64 %idxprom17
  %27 = load double, double* %arrayidx18, align 8
  %28 = load i32, i32* %j, align 4
  %add19 = add nsw i32 %28, 1
  %idxprom20 = sext i32 %add19 to i64
  %29 = load double*, double** %Bi, align 8
  %arrayidx21 = getelementptr inbounds double, double* %29, i64 %idxprom20
  store double %27, double* %arrayidx21, align 8
  %30 = load i32, i32* %j, align 4
  %add22 = add nsw i32 %30, 2
  %idxprom23 = sext i32 %add22 to i64
  %31 = load double*, double** %Ai, align 8
  %arrayidx24 = getelementptr inbounds double, double* %31, i64 %idxprom23
  %32 = load double, double* %arrayidx24, align 8
  %33 = load i32, i32* %j, align 4
  %add25 = add nsw i32 %33, 2
  %idxprom26 = sext i32 %add25 to i64
  %34 = load double*, double** %Bi, align 8
  %arrayidx27 = getelementptr inbounds double, double* %34, i64 %idxprom26
  store double %32, double* %arrayidx27, align 8
  %35 = load i32, i32* %j, align 4
  %add28 = add nsw i32 %35, 3
  %idxprom29 = sext i32 %add28 to i64
  %36 = load double*, double** %Ai, align 8
  %arrayidx30 = getelementptr inbounds double, double* %36, i64 %idxprom29
  %37 = load double, double* %arrayidx30, align 8
  %38 = load i32, i32* %j, align 4
  %add31 = add nsw i32 %38, 3
  %idxprom32 = sext i32 %add31 to i64
  %39 = load double*, double** %Bi, align 8
  %arrayidx33 = getelementptr inbounds double, double* %39, i64 %idxprom32
  store double %37, double* %arrayidx33, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.12
  %40 = load i32, i32* %j, align 4
  %add35 = add nsw i32 %40, 4
  store i32 %add35, i32* %j, align 4
  br label %for.cond.10

for.end.36:                                       ; preds = %for.cond.10
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %41 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %41, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
