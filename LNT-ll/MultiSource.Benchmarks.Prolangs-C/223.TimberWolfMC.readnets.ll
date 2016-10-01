; ModuleID = './MultiSource.Benchmarks.Prolangs-C/223.TimberWolfMC.readnets.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"allnets\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"The keyword allnets was \00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"not properly entered in the .net file\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"HVweights\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"The keyword HVweights was \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%lf %lf\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"The net weights for allnets were \00", align 1
@numnets = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8
@Hdefault = common global double 0.000000e+00, align 8
@Vdefault = common global double 0.000000e+00, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"The net named: %s  in the .net file\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"was not encountered while reading\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"the .cel file --- FATAL error\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"The critical net weights were \00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"not properly entered\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"in the .net file after net: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Neither the keyword HVweights nor \00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"the keyword nofeeds was entered\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"unexpected keyword in the .net file\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @readnets(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %net = alloca i32, align 4
  %test = alloca i32, align 4
  %status = alloca i32, align 4
  %Hweight = alloca double, align 8
  %Vweight = alloca double, align 8
  %input = alloca [1024 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #4
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay5)
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call8 = call i32 @strcmp(i8* %arraydecay7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end.13:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double* %Hweight, double* %Vweight)
  store i32 %call14, i32* %test, align 4
  %7 = load i32, i32* %test, align 4
  %cmp15 = icmp ne i32 %7, 2
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.13
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end.19:                                        ; preds = %if.end.13
  store i32 1, i32* %net, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %10 = load i32, i32* %net, align 4
  %11 = load i32, i32* @numnets, align 4
  %cmp20 = icmp sle i32 %10, %11
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load double, double* %Hweight, align 8
  %13 = load i32, i32* %net, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %14, i64 %idxprom
  %15 = load %struct.dimbox*, %struct.dimbox** %arrayidx, align 8
  %Hweight21 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i32 0, i32 11
  store double %12, double* %Hweight21, align 8
  %16 = load double, double* %Vweight, align 8
  %17 = load i32, i32* %net, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx23 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %18, i64 %idxprom22
  %19 = load %struct.dimbox*, %struct.dimbox** %arrayidx23, align 8
  %Vweight24 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %19, i32 0, i32 12
  store double %16, double* %Vweight24, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %net, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %net, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load double, double* %Hweight, align 8
  store double %21, double* @Hdefault, align 8
  %22 = load double, double* %Vweight, align 8
  store double %22, double* @Vdefault, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.70, %for.end
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay25)
  %cmp27 = icmp eq i32 %call26, 1
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call29 = call i32 @strcmp(i8* %arraydecay28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #4
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.68

if.then.31:                                       ; preds = %while.body
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay32)
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call35 = call i32 @hashfind(i8* %arraydecay34)
  store i32 %call35, i32* %status, align 4
  %25 = load i32, i32* %status, align 4
  %cmp36 = icmp eq i32 %25, 0
  br i1 %cmp36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.then.31
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay38)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end.42:                                        ; preds = %if.then.31
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay43)
  %arraydecay45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call46 = call i32 @strcmp(i8* %arraydecay45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #4
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.42
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double* %Hweight, double* %Vweight)
  store i32 %call49, i32* %test, align 4
  %31 = load i32, i32* %test, align 4
  %cmp50 = icmp ne i32 %31, 2
  br i1 %cmp50, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.then.48
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay54)
  call void @exit(i32 0) #5
  unreachable

if.end.56:                                        ; preds = %if.then.48
  %35 = load double, double* %Hweight, align 8
  %36 = load i32, i32* %status, align 4
  %idxprom57 = sext i32 %36 to i64
  %37 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx58 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %37, i64 %idxprom57
  %38 = load %struct.dimbox*, %struct.dimbox** %arrayidx58, align 8
  %Hweight59 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %38, i32 0, i32 11
  store double %35, double* %Hweight59, align 8
  %39 = load double, double* %Vweight, align 8
  %40 = load i32, i32* %status, align 4
  %idxprom60 = sext i32 %40 to i64
  %41 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx61 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %41, i64 %idxprom60
  %42 = load %struct.dimbox*, %struct.dimbox** %arrayidx61, align 8
  %Vweight62 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %42, i32 0, i32 12
  store double %39, double* %Vweight62, align 8
  br label %if.end.67

if.else:                                          ; preds = %if.end.42
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay65)
  call void @exit(i32 0) #5
  unreachable

if.end.67:                                        ; preds = %if.end.56
  br label %if.end.70

if.else.68:                                       ; preds = %while.body
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end.70:                                        ; preds = %if.end.67
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @hashfind(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
