; ModuleID = './MultiSource.Benchmarks.Prolangs-C/248.TimberWolfMC.setpwates.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@pinsPerLen = external global double, align 8

; Function Attrs: nounwind uwtable
define void @setpwates() #0 {
entry:
  %tileptr = alloca %struct.tilebox*, align 8
  %cell = alloca i32, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %4, i32 0, i32 21
  %arrayidx1 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 0
  %5 = load %struct.tilebox*, %struct.tilebox** %arrayidx1, align 8
  store %struct.tilebox* %5, %struct.tilebox** %tileptr, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %cmp3 = icmp ne %struct.tilebox* %6, null
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %7 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %7, i32 0, i32 1
  %8 = load double, double* %lweight, align 8
  %9 = load double, double* @pinsPerLen, align 8
  %cmp5 = fcmp ogt double %8, %9
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.4
  %10 = load double, double* @pinsPerLen, align 8
  %11 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight6 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %11, i32 0, i32 1
  %12 = load double, double* %lweight6, align 8
  %div = fdiv double %12, %10
  store double %div, double* %lweight6, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.4
  %13 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight7 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %13, i32 0, i32 1
  store double 1.000000e+00, double* %lweight7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i32 0, i32 2
  %15 = load double, double* %rweight, align 8
  %16 = load double, double* @pinsPerLen, align 8
  %cmp8 = fcmp ogt double %15, %16
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.end
  %17 = load double, double* @pinsPerLen, align 8
  %18 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight10 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %18, i32 0, i32 2
  %19 = load double, double* %rweight10, align 8
  %div11 = fdiv double %19, %17
  store double %div11, double* %rweight10, align 8
  br label %if.end.14

if.else.12:                                       ; preds = %if.end
  %20 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight13 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 2
  store double 1.000000e+00, double* %rweight13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.9
  %21 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %21, i32 0, i32 3
  %22 = load double, double* %bweight, align 8
  %23 = load double, double* @pinsPerLen, align 8
  %cmp15 = fcmp ogt double %22, %23
  br i1 %cmp15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.end.14
  %24 = load double, double* @pinsPerLen, align 8
  %25 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight17 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %25, i32 0, i32 3
  %26 = load double, double* %bweight17, align 8
  %div18 = fdiv double %26, %24
  store double %div18, double* %bweight17, align 8
  br label %if.end.21

if.else.19:                                       ; preds = %if.end.14
  %27 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight20 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 3
  store double 1.000000e+00, double* %bweight20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.16
  %28 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %28, i32 0, i32 4
  %29 = load double, double* %tweight, align 8
  %30 = load double, double* @pinsPerLen, align 8
  %cmp22 = fcmp ogt double %29, %30
  br i1 %cmp22, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.end.21
  %31 = load double, double* @pinsPerLen, align 8
  %32 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight24 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %32, i32 0, i32 4
  %33 = load double, double* %tweight24, align 8
  %div25 = fdiv double %33, %31
  store double %div25, double* %tweight24, align 8
  br label %if.end.28

if.else.26:                                       ; preds = %if.end.21
  %34 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight27 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %34, i32 0, i32 4
  store double 1.000000e+00, double* %tweight27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %35 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 0
  %36 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %36, %struct.tilebox** %tileptr, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %37 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %cell, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
