; ModuleID = './MultiSource.Applications.sgefa/2.sgefa.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FULL = type { i32, i32, [1000 x float*] }

; Function Attrs: nounwind uwtable
define i32 @sgefa(%struct.FULL* %a, i32* %ipvt) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.FULL*, align 8
  %ipvt.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %nm1 = alloca i32, align 4
  %info = alloca i32, align 4
  %n = alloca i32, align 4
  %t = alloca float, align 4
  %akk = alloca float*, align 8
  %alk = alloca float*, align 8
  %aij = alloca float*, align 8
  %mik = alloca float*, align 8
  store %struct.FULL* %a, %struct.FULL** %a.addr, align 8
  store i32* %ipvt, i32** %ipvt.addr, align 8
  %0 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i32 0, i32 0
  %1 = load i32, i32* %cd, align 4
  %2 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %rd = getelementptr inbounds %struct.FULL, %struct.FULL* %2, i32 0, i32 1
  %3 = load i32, i32* %rd, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd1 = getelementptr inbounds %struct.FULL, %struct.FULL* %4, i32 0, i32 0
  %5 = load i32, i32* %cd1, align 4
  store i32 %5, i32* %n, align 4
  %6 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %nm1, align 4
  %7 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd = getelementptr inbounds %struct.FULL, %struct.FULL* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd, i32 0, i64 0
  %8 = load float*, float** %arrayidx, align 8
  store float* %8, float** %akk, align 8
  store i32 0, i32* %info, align 4
  %9 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %9, 2
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %CLEAN_UP

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %if.end.4
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %nm1, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body, label %for.end.89

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %k, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd6 = getelementptr inbounds %struct.FULL, %struct.FULL* %13, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd6, i32 0, i64 %idxprom
  %14 = load float*, float** %arrayidx7, align 8
  %15 = load i32, i32* %k, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds float, float* %14, i64 %idx.ext
  store float* %add.ptr, float** %akk, align 8
  %16 = load i32, i32* %n, align 4
  %17 = load i32, i32* %k, align 4
  %sub8 = sub nsw i32 %16, %17
  %18 = load float*, float** %akk, align 8
  %call = call i32 (i32, float*, i32, ...) bitcast (i32 (...)* @isamax to i32 (i32, float*, i32, ...)*)(i32 %sub8, float* %18, i32 1)
  %19 = load i32, i32* %k, align 4
  %add = add nsw i32 %call, %19
  store i32 %add, i32* %l, align 4
  %20 = load i32, i32* %l, align 4
  %21 = load i32*, i32** %ipvt.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd10 = getelementptr inbounds %struct.FULL, %struct.FULL* %23, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd10, i32 0, i64 %idxprom9
  %24 = load float*, float** %arrayidx11, align 8
  %25 = load i32, i32* %l, align 4
  %idx.ext12 = sext i32 %25 to i64
  %add.ptr13 = getelementptr inbounds float, float* %24, i64 %idx.ext12
  store float* %add.ptr13, float** %alk, align 8
  %26 = load float*, float** %alk, align 8
  %27 = load float, float* %26, align 4
  %conv = fpext float %27 to double
  %cmp14 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  %28 = load i32, i32* %k, align 4
  store i32 %28, i32* %info, align 4
  br label %for.inc.86

if.end.17:                                        ; preds = %for.body
  %29 = load i32, i32* %l, align 4
  %30 = load i32, i32* %k, align 4
  %cmp18 = icmp ne i32 %29, %30
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  %31 = load float*, float** %alk, align 8
  %32 = load float, float* %31, align 4
  store float %32, float* %t, align 4
  %33 = load float*, float** %akk, align 8
  %34 = load float, float* %33, align 4
  %35 = load float*, float** %alk, align 8
  store float %34, float* %35, align 4
  %36 = load float, float* %t, align 4
  %37 = load float*, float** %akk, align 8
  store float %36, float* %37, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.17
  %38 = load float*, float** %akk, align 8
  %39 = load float, float* %38, align 4
  %conv22 = fpext float %39 to double
  %div = fdiv double -1.000000e+00, %conv22
  %conv23 = fptrunc double %div to float
  store float %conv23, float* %t, align 4
  %40 = load i32, i32* %k, align 4
  %add24 = add nsw i32 %40, 1
  store i32 %add24, i32* %i, align 4
  %41 = load float*, float** %akk, align 8
  %add.ptr25 = getelementptr inbounds float, float* %41, i64 1
  store float* %add.ptr25, float** %mik, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.end.21
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %n, align 4
  %cmp27 = icmp slt i32 %42, %43
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.26
  %44 = load float, float* %t, align 4
  %45 = load float*, float** %mik, align 8
  %46 = load float, float* %45, align 4
  %mul = fmul float %46, %44
  store float %mul, float* %45, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  %48 = load float*, float** %mik, align 8
  %incdec.ptr = getelementptr inbounds float, float* %48, i32 1
  store float* %incdec.ptr, float** %mik, align 8
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  %49 = load i32, i32* %k, align 4
  %add30 = add nsw i32 %49, 1
  store i32 %add30, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.83, %for.end
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %n, align 4
  %cmp32 = icmp slt i32 %50, %51
  br i1 %cmp32, label %for.body.34, label %for.end.85

for.body.34:                                      ; preds = %for.cond.31
  %52 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %52 to i64
  %53 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd36 = getelementptr inbounds %struct.FULL, %struct.FULL* %53, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd36, i32 0, i64 %idxprom35
  %54 = load float*, float** %arrayidx37, align 8
  %55 = load i32, i32* %k, align 4
  %idx.ext38 = sext i32 %55 to i64
  %add.ptr39 = getelementptr inbounds float, float* %54, i64 %idx.ext38
  %56 = load float, float* %add.ptr39, align 4
  store float %56, float* %t, align 4
  %57 = load i32, i32* %l, align 4
  %58 = load i32, i32* %k, align 4
  %cmp40 = icmp ne i32 %57, %58
  br i1 %cmp40, label %if.then.42, label %if.end.63

if.then.42:                                       ; preds = %for.body.34
  %59 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %59 to i64
  %60 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd44 = getelementptr inbounds %struct.FULL, %struct.FULL* %60, i32 0, i32 2
  %arrayidx45 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd44, i32 0, i64 %idxprom43
  %61 = load float*, float** %arrayidx45, align 8
  %62 = load i32, i32* %l, align 4
  %idx.ext46 = sext i32 %62 to i64
  %add.ptr47 = getelementptr inbounds float, float* %61, i64 %idx.ext46
  %63 = load float, float* %add.ptr47, align 4
  %64 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %64 to i64
  %65 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd49 = getelementptr inbounds %struct.FULL, %struct.FULL* %65, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd49, i32 0, i64 %idxprom48
  %66 = load float*, float** %arrayidx50, align 8
  %67 = load i32, i32* %k, align 4
  %idx.ext51 = sext i32 %67 to i64
  %add.ptr52 = getelementptr inbounds float, float* %66, i64 %idx.ext51
  store float %63, float* %add.ptr52, align 4
  %68 = load float, float* %t, align 4
  %69 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %69 to i64
  %70 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd54 = getelementptr inbounds %struct.FULL, %struct.FULL* %70, i32 0, i32 2
  %arrayidx55 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd54, i32 0, i64 %idxprom53
  %71 = load float*, float** %arrayidx55, align 8
  %72 = load i32, i32* %l, align 4
  %idx.ext56 = sext i32 %72 to i64
  %add.ptr57 = getelementptr inbounds float, float* %71, i64 %idx.ext56
  store float %68, float* %add.ptr57, align 4
  %73 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %73 to i64
  %74 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd59 = getelementptr inbounds %struct.FULL, %struct.FULL* %74, i32 0, i32 2
  %arrayidx60 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd59, i32 0, i64 %idxprom58
  %75 = load float*, float** %arrayidx60, align 8
  %76 = load i32, i32* %k, align 4
  %idx.ext61 = sext i32 %76 to i64
  %add.ptr62 = getelementptr inbounds float, float* %75, i64 %idx.ext61
  %77 = load float, float* %add.ptr62, align 4
  store float %77, float* %t, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.42, %for.body.34
  %78 = load i32, i32* %k, align 4
  %add64 = add nsw i32 %78, 1
  store i32 %add64, i32* %i, align 4
  %79 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %79 to i64
  %80 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd66 = getelementptr inbounds %struct.FULL, %struct.FULL* %80, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd66, i32 0, i64 %idxprom65
  %81 = load float*, float** %arrayidx67, align 8
  %82 = load i32, i32* %k, align 4
  %idx.ext68 = sext i32 %82 to i64
  %add.ptr69 = getelementptr inbounds float, float* %81, i64 %idx.ext68
  %add.ptr70 = getelementptr inbounds float, float* %add.ptr69, i64 1
  store float* %add.ptr70, float** %aij, align 8
  %83 = load float*, float** %akk, align 8
  %add.ptr71 = getelementptr inbounds float, float* %83, i64 1
  store float* %add.ptr71, float** %mik, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.78, %if.end.63
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %n, align 4
  %cmp73 = icmp slt i32 %84, %85
  br i1 %cmp73, label %for.body.75, label %for.end.82

for.body.75:                                      ; preds = %for.cond.72
  %86 = load float, float* %t, align 4
  %87 = load float*, float** %mik, align 8
  %88 = load float, float* %87, align 4
  %mul76 = fmul float %86, %88
  %89 = load float*, float** %aij, align 8
  %90 = load float, float* %89, align 4
  %add77 = fadd float %90, %mul76
  store float %add77, float* %89, align 4
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.75
  %91 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %91, 1
  store i32 %inc79, i32* %i, align 4
  %92 = load float*, float** %aij, align 8
  %incdec.ptr80 = getelementptr inbounds float, float* %92, i32 1
  store float* %incdec.ptr80, float** %aij, align 8
  %93 = load float*, float** %mik, align 8
  %incdec.ptr81 = getelementptr inbounds float, float* %93, i32 1
  store float* %incdec.ptr81, float** %mik, align 8
  br label %for.cond.72

for.end.82:                                       ; preds = %for.cond.72
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.82
  %94 = load i32, i32* %j, align 4
  %inc84 = add nsw i32 %94, 1
  store i32 %inc84, i32* %j, align 4
  br label %for.cond.31

for.end.85:                                       ; preds = %for.cond.31
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end.85, %if.then.16
  %95 = load i32, i32* %k, align 4
  %inc87 = add nsw i32 %95, 1
  store i32 %inc87, i32* %k, align 4
  %96 = load i32*, i32** %ipvt.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %incdec.ptr88, i32** %ipvt.addr, align 8
  br label %for.cond

for.end.89:                                       ; preds = %for.cond
  br label %CLEAN_UP

CLEAN_UP:                                         ; preds = %for.end.89, %if.then.3
  %97 = load i32, i32* %nm1, align 4
  %98 = load i32*, i32** %ipvt.addr, align 8
  store i32 %97, i32* %98, align 4
  %99 = load float*, float** %akk, align 8
  %100 = load float, float* %99, align 4
  %conv90 = fpext float %100 to double
  %cmp91 = fcmp oeq double %conv90, 0.000000e+00
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %CLEAN_UP
  %101 = load i32, i32* %n, align 4
  store i32 %101, i32* %info, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %CLEAN_UP
  %102 = load i32, i32* %info, align 4
  store i32 %102, i32* %retval
  br label %return

return:                                           ; preds = %if.end.94, %if.then
  %103 = load i32, i32* %retval
  ret i32 %103
}

declare i32 @isamax(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
