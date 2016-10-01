; ModuleID = './MultiSource.Benchmarks.Prolangs-C/228.TimberWolfMC.twstats.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [50 x i8] c"\0AInitial Wiring Cost: %d   Final Wiring Cost: %d\0A\00", align 1
@icost = external global i32, align 4
@fcost = external global i32, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"############ Percent Wire Cost Reduction: %d\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\0AInitial Wire Length: %d   Final Wire Length: %d\0A\00", align 1
@iwire = external global i32, align 4
@fwire = external global i32, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"*********** Percent Wire Length Reduction: %d\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\0AInitial Horiz. Wire: %d   Final Horiz. Wire: %d\0A\00", align 1
@iwirex = external global i32, align 4
@fwirex = external global i32, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"$$$$$$$$$ Percent H-Wire Length Reduction: %d\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\0AInitial Vert. Wire: %d   Final Vert. Wire: %d\0A\00", align 1
@iwirey = external global i32, align 4
@fwirey = external global i32, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"@@@@@@@@@ Percent V-Wire Length Reduction: %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\0AStatistics:\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Number of Cells: %d\0A\00", align 1
@numcells = external global i32, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"Number of Pads: %d\0A\00", align 1
@numpads = external global i32, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"Number of Nets: %d \0A\00", align 1
@numnets = external global i32, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"Number of Pins: %d \0A\00", align 1
@maxterm = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @twstats() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %1 = load i32, i32* @icost, align 4
  %2 = load i32, i32* @fcost, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %2)
  %3 = load i32, i32* @icost, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %5 = load i32, i32* @fcost, align 4
  %conv = sitofp i32 %5 to double
  %6 = load i32, i32* @icost, align 4
  %conv1 = sitofp i32 %6 to double
  %div = fdiv double %conv, %conv1
  %mul = fmul double %div, 1.000000e+02
  %conv2 = fptosi double %mul to i32
  %sub = sub nsw i32 100, %conv2
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %8 = load i32, i32* @iwire, align 4
  %9 = load i32, i32* @fwire, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i32 %8, i32 %9)
  %10 = load i32, i32* @icost, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %12 = load i32, i32* @fwire, align 4
  %conv8 = sitofp i32 %12 to double
  %13 = load i32, i32* @iwire, align 4
  %conv9 = sitofp i32 %13 to double
  %div10 = fdiv double %conv8, %conv9
  %mul11 = fmul double %div10, 1.000000e+02
  %conv12 = fptosi double %mul11 to i32
  %sub13 = sub nsw i32 100, %conv12
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i32 %sub13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.7, %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %15 = load i32, i32* @iwirex, align 4
  %16 = load i32, i32* @fwirex, align 4
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0), i32 %15, i32 %16)
  %17 = load i32, i32* @iwirex, align 4
  %cmp17 = icmp ne i32 %17, 0
  br i1 %cmp17, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.end.15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %19 = load i32, i32* @fwirex, align 4
  %conv20 = sitofp i32 %19 to double
  %20 = load i32, i32* @iwirex, align 4
  %conv21 = sitofp i32 %20 to double
  %div22 = fdiv double %conv20, %conv21
  %mul23 = fmul double %div22, 1.000000e+02
  %conv24 = fptosi double %mul23 to i32
  %sub25 = sub nsw i32 100, %conv24
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i32 %sub25)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.19, %if.end.15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %22 = load i32, i32* @iwirey, align 4
  %23 = load i32, i32* @fwirey, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0), i32 %22, i32 %23)
  %24 = load i32, i32* @iwirey, align 4
  %cmp29 = icmp ne i32 %24, 0
  br i1 %cmp29, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %if.end.27
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %26 = load i32, i32* @fwirey, align 4
  %conv32 = sitofp i32 %26 to double
  %27 = load i32, i32* @iwirey, align 4
  %conv33 = sitofp i32 %27 to double
  %div34 = fdiv double %conv32, %conv33
  %mul35 = fmul double %div34, 1.000000e+02
  %conv36 = fptosi double %mul35 to i32
  %sub37 = sub nsw i32 100, %conv36
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0), i32 %sub37)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.31, %if.end.27
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %30 = load i32, i32* @numcells, align 4
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %32 = load i32, i32* @numpads, align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %34 = load i32, i32* @numnets, align 4
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %36 = load i32, i32* @maxterm, align 4
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i32 %36)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
