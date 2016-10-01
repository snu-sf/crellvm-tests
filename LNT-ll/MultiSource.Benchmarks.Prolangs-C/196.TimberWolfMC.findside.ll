; ModuleID = './MultiSource.Benchmarks.Prolangs-C/196.TimberWolfMC.findside.bc'
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
define i32 @findside(%struct.cellbox* %cellptr, i32 %x, i32 %y) #0 {
entry:
  %cellptr.addr = alloca %struct.cellbox*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %min = alloca i32, align 4
  %kmin = alloca i32, align 4
  store %struct.cellbox* %cellptr, %struct.cellbox** %cellptr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 10000000, i32* %min, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %numsides = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1, i32 0, i32 7
  %2 = load i32, i32* %numsides, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx = getelementptr inbounds %struct.psidebox, %struct.psidebox* %4, i64 %idxprom
  %vertical = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx, i32 0, i32 2
  %5 = load i32, i32* %vertical, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx3 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %8, i64 %idxprom2
  %position = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx3, i32 0, i32 3
  %9 = load i32, i32* %position, align 4
  %sub = sub nsw i32 %6, %9
  %cmp4 = icmp sge i32 %sub, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx6 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %12, i64 %idxprom5
  %position7 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx6, i32 0, i32 3
  %13 = load i32, i32* %position7, align 4
  %sub8 = sub nsw i32 %10, %13
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx10 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %16, i64 %idxprom9
  %position11 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx10, i32 0, i32 3
  %17 = load i32, i32* %position11, align 4
  %sub12 = sub nsw i32 %14, %17
  %sub13 = sub nsw i32 0, %sub12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub8, %cond.true ], [ %sub13, %cond.false ]
  %18 = load i32, i32* %min, align 4
  %cmp14 = icmp slt i32 %cond, %18
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %cond.end
  %19 = load i32, i32* %x.addr, align 4
  %20 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx17 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %21, i64 %idxprom16
  %position18 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx17, i32 0, i32 3
  %22 = load i32, i32* %position18, align 4
  %sub19 = sub nsw i32 %19, %22
  %cmp20 = icmp sge i32 %sub19, 0
  br i1 %cmp20, label %cond.true.21, label %cond.false.26

cond.true.21:                                     ; preds = %if.then.15
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx23 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %25, i64 %idxprom22
  %position24 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx23, i32 0, i32 3
  %26 = load i32, i32* %position24, align 4
  %sub25 = sub nsw i32 %23, %26
  br label %cond.end.32

cond.false.26:                                    ; preds = %if.then.15
  %27 = load i32, i32* %x.addr, align 4
  %28 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %28 to i64
  %29 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx28 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %29, i64 %idxprom27
  %position29 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx28, i32 0, i32 3
  %30 = load i32, i32* %position29, align 4
  %sub30 = sub nsw i32 %27, %30
  %sub31 = sub nsw i32 0, %sub30
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.26, %cond.true.21
  %cond33 = phi i32 [ %sub25, %cond.true.21 ], [ %sub31, %cond.false.26 ]
  store i32 %cond33, i32* %min, align 4
  %31 = load i32, i32* %k, align 4
  store i32 %31, i32* %kmin, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.32, %cond.end
  br label %if.end.73

if.else:                                          ; preds = %for.body
  %32 = load i32, i32* %y.addr, align 4
  %33 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %33 to i64
  %34 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx35 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %34, i64 %idxprom34
  %position36 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx35, i32 0, i32 3
  %35 = load i32, i32* %position36, align 4
  %sub37 = sub nsw i32 %32, %35
  %cmp38 = icmp sge i32 %sub37, 0
  br i1 %cmp38, label %cond.true.39, label %cond.false.44

cond.true.39:                                     ; preds = %if.else
  %36 = load i32, i32* %y.addr, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %37 to i64
  %38 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx41 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %38, i64 %idxprom40
  %position42 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx41, i32 0, i32 3
  %39 = load i32, i32* %position42, align 4
  %sub43 = sub nsw i32 %36, %39
  br label %cond.end.50

cond.false.44:                                    ; preds = %if.else
  %40 = load i32, i32* %y.addr, align 4
  %41 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %41 to i64
  %42 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx46 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %42, i64 %idxprom45
  %position47 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx46, i32 0, i32 3
  %43 = load i32, i32* %position47, align 4
  %sub48 = sub nsw i32 %40, %43
  %sub49 = sub nsw i32 0, %sub48
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.44, %cond.true.39
  %cond51 = phi i32 [ %sub43, %cond.true.39 ], [ %sub49, %cond.false.44 ]
  %44 = load i32, i32* %min, align 4
  %cmp52 = icmp slt i32 %cond51, %44
  br i1 %cmp52, label %if.then.53, label %if.end.72

if.then.53:                                       ; preds = %cond.end.50
  %45 = load i32, i32* %y.addr, align 4
  %46 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %46 to i64
  %47 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx55 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %47, i64 %idxprom54
  %position56 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx55, i32 0, i32 3
  %48 = load i32, i32* %position56, align 4
  %sub57 = sub nsw i32 %45, %48
  %cmp58 = icmp sge i32 %sub57, 0
  br i1 %cmp58, label %cond.true.59, label %cond.false.64

cond.true.59:                                     ; preds = %if.then.53
  %49 = load i32, i32* %y.addr, align 4
  %50 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %50 to i64
  %51 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx61 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %51, i64 %idxprom60
  %position62 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx61, i32 0, i32 3
  %52 = load i32, i32* %position62, align 4
  %sub63 = sub nsw i32 %49, %52
  br label %cond.end.70

cond.false.64:                                    ; preds = %if.then.53
  %53 = load i32, i32* %y.addr, align 4
  %54 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %54 to i64
  %55 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx66 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %55, i64 %idxprom65
  %position67 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx66, i32 0, i32 3
  %56 = load i32, i32* %position67, align 4
  %sub68 = sub nsw i32 %53, %56
  %sub69 = sub nsw i32 0, %sub68
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.64, %cond.true.59
  %cond71 = phi i32 [ %sub63, %cond.true.59 ], [ %sub69, %cond.false.64 ]
  store i32 %cond71, i32* %min, align 4
  %57 = load i32, i32* %k, align 4
  store i32 %57, i32* %kmin, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %cond.end.70, %cond.end.50
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.73
  %58 = load i32, i32* %k, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load i32, i32* %kmin, align 4
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define void @loadside(i32 %side, double %factor) #0 {
entry:
  %side.addr = alloca i32, align 4
  %factor.addr = alloca double, align 8
  store i32 %side, i32* %side.addr, align 4
  store double %factor, double* %factor.addr, align 8
  %0 = load double, double* %factor.addr, align 8
  %1 = load i32, i32* %side.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %arrayidx = getelementptr inbounds %struct.psidebox, %struct.psidebox* %2, i64 %idxprom
  %pincount = getelementptr inbounds %struct.psidebox, %struct.psidebox* %arrayidx, i32 0, i32 1
  %3 = load double, double* %pincount, align 8
  %add = fadd double %3, %0
  store double %add, double* %pincount, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
