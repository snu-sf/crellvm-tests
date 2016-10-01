; ModuleID = './MultiSource.Benchmarks.Prolangs-C/220.TimberWolfMC.watesides.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psidebox = type { i32, double, i32, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@pSideArray = external global %struct.psidebox*, align 8

; Function Attrs: nounwind uwtable
define void @watesides(%struct.cellbox* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %side = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %bottom = alloca i32, align 4
  %top = alloca i32, align 4
  store %struct.cellbox* %ptr, %struct.cellbox** %ptr.addr, align 8
  %0 = load %struct.cellbox*, %struct.cellbox** %ptr.addr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i32 0, i32 21
  %arrayidx = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 0
  %1 = load %struct.tilebox*, %struct.tilebox** %arrayidx, align 8
  store %struct.tilebox* %1, %struct.tilebox** %tileptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.118, %entry
  %2 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %cmp = icmp ne %struct.tilebox* %2, null
  br i1 %cmp, label %for.body, label %for.end.119

for.body:                                         ; preds = %for.cond
  %3 = load %struct.cellbox*, %struct.cellbox** %ptr.addr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %3, i32 0, i32 2
  %4 = load i32, i32* %xcenter, align 4
  %5 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left1 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %5, i32 0, i32 9
  %6 = load i32, i32* %left1, align 4
  %add = add nsw i32 %4, %6
  store i32 %add, i32* %left, align 4
  %7 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %7, i32 0, i32 1
  store double -1.000000e+00, double* %lweight, align 8
  store i32 1, i32* %side, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %side, align 4
  %9 = load %struct.cellbox*, %struct.cellbox** %ptr.addr, align 8
  %numsides = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 7
  %10 = load i32, i32* %numsides, align 4
  %cmp3 = icmp sle i32 %8, %10
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %side, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx5 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %12, i64 %idxprom
  %vertical = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx5, i32 0, i32 2
  %13 = load i32, i32* %vertical, align 4
  %cmp6 = icmp eq i32 %13, 1
  br i1 %cmp6, label %if.then, label %if.end.16

if.then:                                          ; preds = %for.body.4
  %14 = load i32, i32* %side, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx8 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %15, i64 %idxprom7
  %position = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx8, i32 0, i32 3
  %16 = load i32, i32* %position, align 4
  %17 = load i32, i32* %left, align 4
  %cmp9 = icmp eq i32 %16, %17
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %18 = load i32, i32* %side, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx12 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %19, i64 %idxprom11
  %pincount = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx12, i32 0, i32 1
  %20 = load double, double* %pincount, align 8
  %21 = load i32, i32* %side, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx14 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %22, i64 %idxprom13
  %length = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx14, i32 0, i32 0
  %23 = load i32, i32* %length, align 4
  %conv = sitofp i32 %23 to double
  %div = fdiv double %20, %conv
  %24 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight15 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 1
  store double %div, double* %lweight15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %25 = load i32, i32* %side, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %side, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %26 = load %struct.cellbox*, %struct.cellbox** %ptr.addr, align 8
  %xcenter17 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 2
  %27 = load i32, i32* %xcenter17, align 4
  %28 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right18 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %28, i32 0, i32 10
  %29 = load i32, i32* %right18, align 4
  %add19 = add nsw i32 %27, %29
  store i32 %add19, i32* %right, align 4
  %30 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %30, i32 0, i32 2
  store double -1.000000e+00, double* %rweight, align 8
  store i32 1, i32* %side, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.48, %for.end
  %31 = load i32, i32* %side, align 4
  %32 = load %struct.cellbox*, %struct.cellbox** %ptr.addr, align 8
  %numsides21 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i32 0, i32 7
  %33 = load i32, i32* %numsides21, align 4
  %cmp22 = icmp sle i32 %31, %33
  br i1 %cmp22, label %for.body.24, label %for.end.50

for.body.24:                                      ; preds = %for.cond.20
  %34 = load i32, i32* %side, align 4
  %idxprom25 = sext i32 %34 to i64
  %35 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx26 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %35, i64 %idxprom25
  %vertical27 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx26, i32 0, i32 2
  %36 = load i32, i32* %vertical27, align 4
  %cmp28 = icmp eq i32 %36, 1
  br i1 %cmp28, label %if.then.30, label %if.end.47

if.then.30:                                       ; preds = %for.body.24
  %37 = load i32, i32* %side, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx32 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %38, i64 %idxprom31
  %position33 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx32, i32 0, i32 3
  %39 = load i32, i32* %position33, align 4
  %40 = load i32, i32* %right, align 4
  %cmp34 = icmp eq i32 %39, %40
  br i1 %cmp34, label %if.then.36, label %if.end.46

if.then.36:                                       ; preds = %if.then.30
  %41 = load i32, i32* %side, align 4
  %idxprom37 = sext i32 %41 to i64
  %42 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx38 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %42, i64 %idxprom37
  %pincount39 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx38, i32 0, i32 1
  %43 = load double, double* %pincount39, align 8
  %44 = load i32, i32* %side, align 4
  %idxprom40 = sext i32 %44 to i64
  %45 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx41 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %45, i64 %idxprom40
  %length42 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx41, i32 0, i32 0
  %46 = load i32, i32* %length42, align 4
  %conv43 = sitofp i32 %46 to double
  %div44 = fdiv double %43, %conv43
  %47 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight45 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %47, i32 0, i32 2
  store double %div44, double* %rweight45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.36, %if.then.30
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %for.body.24
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %48 = load i32, i32* %side, align 4
  %inc49 = add nsw i32 %48, 1
  store i32 %inc49, i32* %side, align 4
  br label %for.cond.20

for.end.50:                                       ; preds = %for.cond.20
  %49 = load %struct.cellbox*, %struct.cellbox** %ptr.addr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %49, i32 0, i32 3
  %50 = load i32, i32* %ycenter, align 4
  %51 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom51 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %51, i32 0, i32 11
  %52 = load i32, i32* %bottom51, align 4
  %add52 = add nsw i32 %50, %52
  store i32 %add52, i32* %bottom, align 4
  %53 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %53, i32 0, i32 3
  store double -1.000000e+00, double* %bweight, align 8
  store i32 1, i32* %side, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.81, %for.end.50
  %54 = load i32, i32* %side, align 4
  %55 = load %struct.cellbox*, %struct.cellbox** %ptr.addr, align 8
  %numsides54 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %55, i32 0, i32 7
  %56 = load i32, i32* %numsides54, align 4
  %cmp55 = icmp sle i32 %54, %56
  br i1 %cmp55, label %for.body.57, label %for.end.83

for.body.57:                                      ; preds = %for.cond.53
  %57 = load i32, i32* %side, align 4
  %idxprom58 = sext i32 %57 to i64
  %58 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx59 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %58, i64 %idxprom58
  %vertical60 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx59, i32 0, i32 2
  %59 = load i32, i32* %vertical60, align 4
  %cmp61 = icmp eq i32 %59, 0
  br i1 %cmp61, label %if.then.63, label %if.end.80

if.then.63:                                       ; preds = %for.body.57
  %60 = load i32, i32* %side, align 4
  %idxprom64 = sext i32 %60 to i64
  %61 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx65 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %61, i64 %idxprom64
  %position66 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx65, i32 0, i32 3
  %62 = load i32, i32* %position66, align 4
  %63 = load i32, i32* %bottom, align 4
  %cmp67 = icmp eq i32 %62, %63
  br i1 %cmp67, label %if.then.69, label %if.end.79

if.then.69:                                       ; preds = %if.then.63
  %64 = load i32, i32* %side, align 4
  %idxprom70 = sext i32 %64 to i64
  %65 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx71 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %65, i64 %idxprom70
  %pincount72 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx71, i32 0, i32 1
  %66 = load double, double* %pincount72, align 8
  %67 = load i32, i32* %side, align 4
  %idxprom73 = sext i32 %67 to i64
  %68 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx74 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %68, i64 %idxprom73
  %length75 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx74, i32 0, i32 0
  %69 = load i32, i32* %length75, align 4
  %conv76 = sitofp i32 %69 to double
  %div77 = fdiv double %66, %conv76
  %70 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight78 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %70, i32 0, i32 3
  store double %div77, double* %bweight78, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.69, %if.then.63
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %for.body.57
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %71 = load i32, i32* %side, align 4
  %inc82 = add nsw i32 %71, 1
  store i32 %inc82, i32* %side, align 4
  br label %for.cond.53

for.end.83:                                       ; preds = %for.cond.53
  %72 = load %struct.cellbox*, %struct.cellbox** %ptr.addr, align 8
  %ycenter84 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %72, i32 0, i32 3
  %73 = load i32, i32* %ycenter84, align 4
  %74 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top85 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %74, i32 0, i32 12
  %75 = load i32, i32* %top85, align 4
  %add86 = add nsw i32 %73, %75
  store i32 %add86, i32* %top, align 4
  %76 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %76, i32 0, i32 4
  store double -1.000000e+00, double* %tweight, align 8
  store i32 1, i32* %side, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.115, %for.end.83
  %77 = load i32, i32* %side, align 4
  %78 = load %struct.cellbox*, %struct.cellbox** %ptr.addr, align 8
  %numsides88 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %78, i32 0, i32 7
  %79 = load i32, i32* %numsides88, align 4
  %cmp89 = icmp sle i32 %77, %79
  br i1 %cmp89, label %for.body.91, label %for.end.117

for.body.91:                                      ; preds = %for.cond.87
  %80 = load i32, i32* %side, align 4
  %idxprom92 = sext i32 %80 to i64
  %81 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx93 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %81, i64 %idxprom92
  %vertical94 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx93, i32 0, i32 2
  %82 = load i32, i32* %vertical94, align 4
  %cmp95 = icmp eq i32 %82, 0
  br i1 %cmp95, label %if.then.97, label %if.end.114

if.then.97:                                       ; preds = %for.body.91
  %83 = load i32, i32* %side, align 4
  %idxprom98 = sext i32 %83 to i64
  %84 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx99 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %84, i64 %idxprom98
  %position100 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx99, i32 0, i32 3
  %85 = load i32, i32* %position100, align 4
  %86 = load i32, i32* %top, align 4
  %cmp101 = icmp eq i32 %85, %86
  br i1 %cmp101, label %if.then.103, label %if.end.113

if.then.103:                                      ; preds = %if.then.97
  %87 = load i32, i32* %side, align 4
  %idxprom104 = sext i32 %87 to i64
  %88 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx105 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %88, i64 %idxprom104
  %pincount106 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx105, i32 0, i32 1
  %89 = load double, double* %pincount106, align 8
  %90 = load i32, i32* %side, align 4
  %idxprom107 = sext i32 %90 to i64
  %91 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx108 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %91, i64 %idxprom107
  %length109 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx108, i32 0, i32 0
  %92 = load i32, i32* %length109, align 4
  %conv110 = sitofp i32 %92 to double
  %div111 = fdiv double %89, %conv110
  %93 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight112 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %93, i32 0, i32 4
  store double %div111, double* %tweight112, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.103, %if.then.97
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %for.body.91
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %94 = load i32, i32* %side, align 4
  %inc116 = add nsw i32 %94, 1
  store i32 %inc116, i32* %side, align 4
  br label %for.cond.87

for.end.117:                                      ; preds = %for.cond.87
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.end.117
  %95 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %95, i32 0, i32 0
  %96 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %96, %struct.tilebox** %tileptr, align 8
  br label %for.cond

for.end.119:                                      ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
