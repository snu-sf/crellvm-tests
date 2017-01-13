; ModuleID = './MultiSource.Benchmarks.Prolangs-C/217.TimberWolfMC.utemp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@Tsave = external global double, align 8
@count = common global i32 0, align 4
@finalShot = external global i32, align 4
@T = external global double, align 8
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [45 x i8] c"THE ROUTE COST OF THE CURRENT PLACEMENT: %d\0A\00", align 1
@funccost = external global i32, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"THE CURRENT PENALTY IS: %d   \00", align 1
@penalty = external global i32, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"THE CURRENT TOTAL COST IS: %d\0A\00", align 1
@overfill = external global i32, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"THE CURRENT OVERFILL IS: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"TEMPERATURE = kT where k=1.0 and T=%g   \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"OFFSET: %d\0A\00", align 1
@offset = external global i32, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"ITERATION NUMBER:%8d\0A\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@doCompaction = external global i32, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"FINAL ROUTING COST OF THE PLACEMENT: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"FINAL VALUE OF PENALTY IS: %d   \00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"FINAL VALUE OF TOTAL COST IS: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"THE FINAL OVERFILL IS: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"MAX NUMBER OF ATTEMPTED FLIPS PER T:%8d\0A\00", align 1
@attmax = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @utemp() #0 {
entry:
  %Tfactor = alloca double, align 8
  %Tscale = alloca double, align 8
  %0 = load double, double* @Tsave, align 8
  %div = fdiv double %0, 1.000000e+05
  store double %div, double* %Tscale, align 8
  store i32 0, i32* @count, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.57, %entry
  %1 = load i32, i32* @finalShot, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else.13

if.then:                                          ; preds = %for.cond
  %2 = load double, double* @T, align 8
  %3 = load double, double* %Tscale, align 8
  %mul = fmul double 3.000000e+03, %3
  %cmp1 = fcmp ogt double %2, %mul
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store double 8.800000e-01, double* %Tfactor, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %4 = load double, double* @T, align 8
  %5 = load double, double* %Tscale, align 8
  %mul3 = fmul double 2.000000e+02, %5
  %cmp4 = fcmp ogt double %4, %mul3
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store double 9.550000e-01, double* %Tfactor, align 8
  br label %if.end.11

if.else.6:                                        ; preds = %if.else
  %6 = load double, double* @T, align 8
  %7 = load double, double* %Tscale, align 8
  %mul7 = fmul double 2.000000e+01, %7
  %cmp8 = fcmp ogt double %6, %mul7
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.6
  store double 8.500000e-01, double* %Tfactor, align 8
  br label %if.end

if.else.10:                                       ; preds = %if.else.6
  store double 8.000000e-01, double* %Tfactor, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.2
  call void @uloop()
  br label %if.end.23

if.else.13:                                       ; preds = %for.cond
  %8 = load double, double* @T, align 8
  %9 = load double, double* %Tscale, align 8
  %mul14 = fmul double 1.000000e+01, %9
  %cmp15 = fcmp olt double %8, %mul14
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.13
  store double 7.000000e-01, double* %Tfactor, align 8
  br label %if.end.18

if.else.17:                                       ; preds = %if.else.13
  store double 8.200000e-01, double* %Tfactor, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %10 = load i32, i32* @finalShot, align 4
  %cmp19 = icmp sge i32 %10, 1
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.18
  call void @fuloop()
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.18
  call void @uloop()
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.12
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %12 = load i32, i32* @funccost, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i32 %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %14 = load i32, i32* @penalty, align 4
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %16 = load i32, i32* @penalty, align 4
  %17 = load i32, i32* @overfill, align 4
  %add = add nsw i32 %16, %17
  %18 = load i32, i32* @funccost, align 4
  %add25 = add nsw i32 %add, %18
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 %add25)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %20 = load i32, i32* @overfill, align 4
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %22 = load double, double* @T, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), double %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %24 = load i32, i32* @offset, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %26 = load i32, i32* @count, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* @count, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 %inc)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call31 = call i32 @fflush(%struct._IO_FILE* %27)
  %28 = load i32, i32* @count, align 4
  %sub = sub nsw i32 %28, 1
  %rem = srem i32 %sub, 15
  %cmp32 = icmp eq i32 %rem, 0
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.23
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.23
  %29 = load i32, i32* @count, align 4
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call37 = call i32 @fflush(%struct._IO_FILE* %30)
  %31 = load double, double* %Tfactor, align 8
  %32 = load double, double* @T, align 8
  %mul38 = fmul double %31, %32
  store double %mul38, double* @T, align 8
  %33 = load i32, i32* @finalShot, align 4
  %34 = load i32, i32* @doCompaction, align 4
  %cmp39 = icmp slt i32 %33, %34
  br i1 %cmp39, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.35
  %35 = load double, double* @T, align 8
  %cmp40 = fcmp olt double %35, 8.000000e-01
  br i1 %cmp40, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.35
  %36 = load i32, i32* @finalShot, align 4
  %cmp41 = icmp eq i32 %36, 0
  br i1 %cmp41, label %land.lhs.true.42, label %lor.lhs.false.45

land.lhs.true.42:                                 ; preds = %lor.lhs.false
  %37 = load double, double* @T, align 8
  %38 = load double, double* %Tscale, align 8
  %mul43 = fmul double 5.000000e+00, %38
  %cmp44 = fcmp olt double %37, %mul43
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true.42, %lor.lhs.false
  %39 = load i32, i32* @finalShot, align 4
  %40 = load i32, i32* @doCompaction, align 4
  %cmp46 = icmp eq i32 %39, %40
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.57

land.lhs.true.47:                                 ; preds = %lor.lhs.false.45
  %41 = load double, double* @T, align 8
  %cmp48 = fcmp olt double %41, 2.000000e-01
  br i1 %cmp48, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %land.lhs.true.47, %land.lhs.true.42, %land.lhs.true
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %43 = load i32, i32* @funccost, align 4
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %45 = load i32, i32* @penalty, align 4
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), i32 %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %47 = load i32, i32* @funccost, align 4
  %48 = load i32, i32* @penalty, align 4
  %add52 = add nsw i32 %47, %48
  %49 = load i32, i32* @overfill, align 4
  %add53 = add nsw i32 %add52, %49
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0), i32 %add53)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %51 = load i32, i32* @overfill, align 4
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i32 %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %53 = load i32, i32* @attmax, align 4
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0), i32 %53)
  br label %for.end

if.end.57:                                        ; preds = %land.lhs.true.47, %lor.lhs.false.45
  br label %for.cond

for.end:                                          ; preds = %if.then.49
  ret void
}

declare void @uloop() #1

declare void @fuloop() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
