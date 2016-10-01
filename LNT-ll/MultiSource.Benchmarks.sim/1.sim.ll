; ModuleID = './MultiSource.Benchmarks.sim/1.sim.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NODE = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ONE = type { i32, %struct.ONE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Output/sim.res\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Can not open Output/sim.res\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tob.38-44\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"liv.42-48\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"specified 0 alignments\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@name1 = internal global i8* null, align 8
@name2 = internal global i8* null, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"argument %d has improper form\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"options are M, I, V, O and E.\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\09\09SIM output with parameters:\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\09\09M = %g, I = %g, V = %g\0A\09\09O = %g, E = %g\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"  Run Line: %s %s %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"#######################################################\0A\00", align 1
@low = global %struct.NODE* null, align 8
@most = global %struct.NODE* null, align 8
@CC = internal global i32* null, align 8
@DD = internal global i32* null, align 8
@RR = internal global i32* null, align 8
@SS = internal global i32* null, align 8
@EE = internal global i32* null, align 8
@FF = internal global i32* null, align 8
@HH = internal global i32* null, align 8
@WW = internal global i32* null, align 8
@II = internal global i32* null, align 8
@JJ = internal global i32* null, align 8
@XX = internal global i32* null, align 8
@YY = internal global i32* null, align 8
@row = common global %struct.ONE** null, align 8
@z = common global %struct.ONE* null, align 8
@v = internal global [256 x i32]* null, align 8
@q = internal global i32 0, align 4
@r = internal global i32 0, align 4
@qr = internal global i32 0, align 4
@LIST = common global %struct.NODE** null, align 8
@.str.16 = private unnamed_addr constant [38 x i8] c"                 Upper Sequence : %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"                         Length : %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"                 Lower Sequence : %s\0A\00", align 1
@min = internal global i32 0, align 4
@numnode = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [47 x i8] c"The number of alignments computed is too large\00", align 1
@m1 = internal global i32 0, align 4
@mm = internal global i32 0, align 4
@n1 = internal global i32 0, align 4
@nn = internal global i32 0, align 4
@rl = internal global i32 0, align 4
@cl = internal global i32 0, align 4
@I = internal global i32 0, align 4
@J = internal global i32 0, align 4
@sapp = internal global i32* null, align 8
@last = internal global i32 0, align 4
@al_len = internal global i32 0, align 4
@no_mat = internal global i32 0, align 4
@no_mis = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [60 x i8] c"\0A*********************************************************\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"      Number %d Local Alignment\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"      Similarity Score : %g\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"      Match Percentage : %d%%\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"      Number of Matches : %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"      Number of Mismatches : %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"      Total Length of Gaps : %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"      Begins at (%d, %d) and Ends at (%d, %d)\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@flag = internal global i16 0, align 2
@tt = internal global i16 0, align 2
@zero = internal global i32 0, align 4
@ALINE = internal global [51 x i8] zeroinitializer, align 16
@BLINE = internal global [51 x i8] zeroinitializer, align 16
@CLINE = internal global [51 x i8] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [6 x i8] c"\0A%5d \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"    .    :\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"    .\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"\0A%5d %s\0A      %s\0A%5d %s\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Cannot open %s.\00", align 1
@rusage = common global %struct.rusage zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %K = alloca i32, align 4
  %A = alloca i8*, align 8
  %B = alloca i8*, align 8
  %symbol = alloca i32, align 4
  %V = alloca [256 x [256 x i32]], align 16
  %Q = alloca i32, align 4
  %R = alloca i32, align 4
  %starttime = alloca double, align 8
  %benchtime = alloca double, align 8
  %parm_M = alloca double, align 8
  %parm_I = alloca double, align 8
  %parm_V = alloca double, align 8
  %parm_O = alloca double, align 8
  %parm_E = alloca double, align 8
  %v = alloca double, align 8
  %Bp = alloca %struct._IO_FILE*, align 8
  %Ap = alloca %struct._IO_FILE*, align 8
  %Cp = alloca %struct._IO_FILE*, align 8
  %arg1 = alloca i8*, align 8
  %arg2 = alloca i8*, align 8
  %arg3 = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %Cp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call double @dtime()
  store double %call2, double* %starttime, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp3 = icmp slt i32 %0, 4
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %arg1, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8** %arg2, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8** %arg3, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %arg1, align 8
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %3, i64 2
  %4 = load i8*, i8** %arrayidx5, align 8
  store i8* %4, i8** %arg2, align 8
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %5, i64 3
  %6 = load i8*, i8** %arrayidx6, align 8
  store i8* %6, i8** %arg3, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %7 = load i8*, i8** %arg1, align 8
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %K) #6
  %8 = load i32, i32* %K, align 4
  %cmp9 = icmp eq i32 %8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %call11 = call i32 @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %9 = load i8*, i8** %arg2, align 8
  %call13 = call %struct._IO_FILE* @ckopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %Ap, align 8
  store i32 0, i32* %M, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.18, %if.end.12
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %Ap, align 8
  %call14 = call i32 @_IO_getc(%struct._IO_FILE* %10)
  store i32 %call14, i32* %symbol, align 4
  %cmp15 = icmp ne i32 %call14, -1
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %symbol, align 4
  %cmp16 = icmp ne i32 %11, 10
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  %12 = load i32, i32* %M, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %M, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %Ap, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %13)
  %14 = load i8*, i8** %arg2, align 8
  store i8* %14, i8** @name1, align 8
  %15 = load i32, i32* %M, align 4
  %add = add nsw i32 %15, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call20 = call noalias i8* @malloc(i64 %mul) #6
  store i8* %call20, i8** %A, align 8
  %16 = load i8*, i8** %arg2, align 8
  %call21 = call %struct._IO_FILE* @ckopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %Ap, align 8
  store i32 0, i32* %M, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %if.end.33, %for.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %Ap, align 8
  %call23 = call i32 @_IO_getc(%struct._IO_FILE* %17)
  store i32 %call23, i32* %symbol, align 4
  %cmp24 = icmp ne i32 %call23, -1
  br i1 %cmp24, label %for.body.26, label %for.end.34

for.body.26:                                      ; preds = %for.cond.22
  %18 = load i32, i32* %symbol, align 4
  %cmp27 = icmp ne i32 %18, 10
  br i1 %cmp27, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %for.body.26
  %19 = load i32, i32* %symbol, align 4
  %conv30 = trunc i32 %19 to i8
  %20 = load i32, i32* %M, align 4
  %inc31 = add nsw i32 %20, 1
  store i32 %inc31, i32* %M, align 4
  %idxprom = sext i32 %inc31 to i64
  %21 = load i8*, i8** %A, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %21, i64 %idxprom
  store i8 %conv30, i8* %arrayidx32, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %for.body.26
  br label %for.cond.22

for.end.34:                                       ; preds = %for.cond.22
  %22 = load i8*, i8** %arg2, align 8
  %23 = load i8*, i8** %arg3, align 8
  %call35 = call i32 @strcmp(i8* %22, i8* %23) #7
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %if.then.36, label %if.end.69

if.then.36:                                       ; preds = %for.end.34
  %24 = load i8*, i8** %arg3, align 8
  %call37 = call %struct._IO_FILE* @ckopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call37, %struct._IO_FILE** %Bp, align 8
  store i32 0, i32* %N, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %if.end.47, %if.then.36
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %Bp, align 8
  %call39 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %call39, i32* %symbol, align 4
  %cmp40 = icmp ne i32 %call39, -1
  br i1 %cmp40, label %for.body.42, label %for.end.48

for.body.42:                                      ; preds = %for.cond.38
  %26 = load i32, i32* %symbol, align 4
  %cmp43 = icmp ne i32 %26, 10
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %for.body.42
  %27 = load i32, i32* %N, align 4
  %inc46 = add nsw i32 %27, 1
  store i32 %inc46, i32* %N, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %for.body.42
  br label %for.cond.38

for.end.48:                                       ; preds = %for.cond.38
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %Bp, align 8
  %call49 = call i32 @fclose(%struct._IO_FILE* %28)
  %29 = load i8*, i8** %arg3, align 8
  store i8* %29, i8** @name2, align 8
  %30 = load i32, i32* %N, align 4
  %add50 = add nsw i32 %30, 1
  %conv51 = sext i32 %add50 to i64
  %mul52 = mul i64 %conv51, 1
  %call53 = call noalias i8* @malloc(i64 %mul52) #6
  store i8* %call53, i8** %B, align 8
  %31 = load i8*, i8** %arg3, align 8
  %call54 = call %struct._IO_FILE* @ckopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call54, %struct._IO_FILE** %Bp, align 8
  store i32 0, i32* %N, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %if.end.67, %for.end.48
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %Bp, align 8
  %call56 = call i32 @_IO_getc(%struct._IO_FILE* %32)
  store i32 %call56, i32* %symbol, align 4
  %cmp57 = icmp ne i32 %call56, -1
  br i1 %cmp57, label %for.body.59, label %for.end.68

for.body.59:                                      ; preds = %for.cond.55
  %33 = load i32, i32* %symbol, align 4
  %cmp60 = icmp ne i32 %33, 10
  br i1 %cmp60, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %for.body.59
  %34 = load i32, i32* %symbol, align 4
  %conv63 = trunc i32 %34 to i8
  %35 = load i32, i32* %N, align 4
  %inc64 = add nsw i32 %35, 1
  store i32 %inc64, i32* %N, align 4
  %idxprom65 = sext i32 %inc64 to i64
  %36 = load i8*, i8** %B, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %36, i64 %idxprom65
  store i8 %conv63, i8* %arrayidx66, align 1
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %for.body.59
  br label %for.cond.55

for.end.68:                                       ; preds = %for.cond.55
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %for.end.34
  store double 1.000000e+00, double* %parm_M, align 8
  store double -1.000000e+00, double* %parm_I, align 8
  store double -1.000000e+00, double* %parm_V, align 8
  store double 6.000000e+00, double* %parm_O, align 8
  store double 2.000000e-01, double* %parm_E, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.69
  %37 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %argc.addr, align 4
  %cmp70 = icmp sgt i32 %dec, 3
  br i1 %cmp70, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load i32, i32* %argc.addr, align 4
  %idxprom72 = sext i32 %38 to i64
  %39 = load i8**, i8*** %argv.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %39, i64 %idxprom72
  %40 = load i8*, i8** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %41 to i32
  %cmp76 = icmp ne i32 %conv75, 61
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %while.body
  %42 = load i32, i32* %argc.addr, align 4
  %call79 = call i32 (i8*, i32, ...) bitcast (i32 (i8*, i8*)* @fatalf to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %42)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %while.body
  %43 = load i32, i32* %argc.addr, align 4
  %idxprom81 = sext i32 %43 to i64
  %44 = load i8**, i8*** %argv.addr, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %44, i64 %idxprom81
  %45 = load i8*, i8** %arrayidx82, align 8
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 2
  %call83 = call double @atof(i8* %add.ptr) #7
  store double %call83, double* %v, align 8
  %46 = load i32, i32* %argc.addr, align 4
  %idxprom84 = sext i32 %46 to i64
  %47 = load i8**, i8*** %argv.addr, align 8
  %arrayidx85 = getelementptr inbounds i8*, i8** %47, i64 %idxprom84
  %48 = load i8*, i8** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %49 to i32
  switch i32 %conv87, label %sw.default [
    i32 77, label %sw.bb
    i32 73, label %sw.bb.88
    i32 86, label %sw.bb.89
    i32 79, label %sw.bb.90
    i32 69, label %sw.bb.91
  ]

sw.bb:                                            ; preds = %if.end.80
  %50 = load double, double* %v, align 8
  store double %50, double* %parm_M, align 8
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.end.80
  %51 = load double, double* %v, align 8
  store double %51, double* %parm_I, align 8
  br label %sw.epilog

sw.bb.89:                                         ; preds = %if.end.80
  %52 = load double, double* %v, align 8
  store double %52, double* %parm_V, align 8
  br label %sw.epilog

sw.bb.90:                                         ; preds = %if.end.80
  %53 = load double, double* %v, align 8
  store double %53, double* %parm_O, align 8
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.end.80
  %54 = load double, double* %v, align 8
  store double %54, double* %parm_E, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.80
  %call92 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.91, %sw.bb.90, %sw.bb.89, %sw.bb.88, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0))
  %55 = load double, double* %parm_M, align 8
  %56 = load double, double* %parm_I, align 8
  %57 = load double, double* %parm_V, align 8
  %58 = load double, double* %parm_O, align 8
  %59 = load double, double* %parm_E, align 8
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), double %55, double %56, double %57, double %58, double %59)
  %60 = load double, double* %parm_M, align 8
  %mul95 = fmul double 1.000000e+01, %60
  %cmp96 = fcmp ogt double %mul95, 0.000000e+00
  br i1 %cmp96, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %61 = load double, double* %parm_M, align 8
  %mul98 = fmul double 1.000000e+01, %61
  %add99 = fadd double %mul98, 5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %62 = load double, double* %parm_M, align 8
  %mul100 = fmul double 1.000000e+01, %62
  %sub = fsub double %mul100, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add99, %cond.true ], [ %sub, %cond.false ]
  %conv101 = fptosi double %cond to i32
  %arrayidx102 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 84
  %arrayidx103 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx102, i32 0, i64 84
  store i32 %conv101, i32* %arrayidx103, align 4
  %arrayidx104 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 71
  %arrayidx105 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx104, i32 0, i64 71
  store i32 %conv101, i32* %arrayidx105, align 4
  %arrayidx106 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 67
  %arrayidx107 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx106, i32 0, i64 67
  store i32 %conv101, i32* %arrayidx107, align 4
  %arrayidx108 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 65
  %arrayidx109 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx108, i32 0, i64 65
  store i32 %conv101, i32* %arrayidx109, align 4
  %63 = load double, double* %parm_I, align 8
  %mul110 = fmul double 1.000000e+01, %63
  %cmp111 = fcmp ogt double %mul110, 0.000000e+00
  br i1 %cmp111, label %cond.true.113, label %cond.false.116

cond.true.113:                                    ; preds = %cond.end
  %64 = load double, double* %parm_I, align 8
  %mul114 = fmul double 1.000000e+01, %64
  %add115 = fadd double %mul114, 5.000000e-01
  br label %cond.end.119

cond.false.116:                                   ; preds = %cond.end
  %65 = load double, double* %parm_I, align 8
  %mul117 = fmul double 1.000000e+01, %65
  %sub118 = fsub double %mul117, 5.000000e-01
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.116, %cond.true.113
  %cond120 = phi double [ %add115, %cond.true.113 ], [ %sub118, %cond.false.116 ]
  %conv121 = fptosi double %cond120 to i32
  %arrayidx122 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 84
  %arrayidx123 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx122, i32 0, i64 67
  store i32 %conv121, i32* %arrayidx123, align 4
  %arrayidx124 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 67
  %arrayidx125 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx124, i32 0, i64 84
  store i32 %conv121, i32* %arrayidx125, align 4
  %arrayidx126 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 71
  %arrayidx127 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx126, i32 0, i64 65
  store i32 %conv121, i32* %arrayidx127, align 4
  %arrayidx128 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 65
  %arrayidx129 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx128, i32 0, i64 71
  store i32 %conv121, i32* %arrayidx129, align 4
  %66 = load double, double* %parm_V, align 8
  %mul130 = fmul double 1.000000e+01, %66
  %cmp131 = fcmp ogt double %mul130, 0.000000e+00
  br i1 %cmp131, label %cond.true.133, label %cond.false.136

cond.true.133:                                    ; preds = %cond.end.119
  %67 = load double, double* %parm_V, align 8
  %mul134 = fmul double 1.000000e+01, %67
  %add135 = fadd double %mul134, 5.000000e-01
  br label %cond.end.139

cond.false.136:                                   ; preds = %cond.end.119
  %68 = load double, double* %parm_V, align 8
  %mul137 = fmul double 1.000000e+01, %68
  %sub138 = fsub double %mul137, 5.000000e-01
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.136, %cond.true.133
  %cond140 = phi double [ %add135, %cond.true.133 ], [ %sub138, %cond.false.136 ]
  %conv141 = fptosi double %cond140 to i32
  %arrayidx142 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 84
  %arrayidx143 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx142, i32 0, i64 71
  store i32 %conv141, i32* %arrayidx143, align 4
  %arrayidx144 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 84
  %arrayidx145 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx144, i32 0, i64 65
  store i32 %conv141, i32* %arrayidx145, align 4
  %arrayidx146 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 71
  %arrayidx147 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx146, i32 0, i64 84
  store i32 %conv141, i32* %arrayidx147, align 4
  %arrayidx148 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 71
  %arrayidx149 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx148, i32 0, i64 67
  store i32 %conv141, i32* %arrayidx149, align 4
  %arrayidx150 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 67
  %arrayidx151 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx150, i32 0, i64 71
  store i32 %conv141, i32* %arrayidx151, align 4
  %arrayidx152 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 67
  %arrayidx153 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx152, i32 0, i64 65
  store i32 %conv141, i32* %arrayidx153, align 4
  %arrayidx154 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 65
  %arrayidx155 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx154, i32 0, i64 84
  store i32 %conv141, i32* %arrayidx155, align 4
  %arrayidx156 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i64 65
  %arrayidx157 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx156, i32 0, i64 67
  store i32 %conv141, i32* %arrayidx157, align 4
  %69 = load double, double* %parm_O, align 8
  %mul158 = fmul double 1.000000e+01, %69
  %cmp159 = fcmp ogt double %mul158, 0.000000e+00
  br i1 %cmp159, label %cond.true.161, label %cond.false.164

cond.true.161:                                    ; preds = %cond.end.139
  %70 = load double, double* %parm_O, align 8
  %mul162 = fmul double 1.000000e+01, %70
  %add163 = fadd double %mul162, 5.000000e-01
  br label %cond.end.167

cond.false.164:                                   ; preds = %cond.end.139
  %71 = load double, double* %parm_O, align 8
  %mul165 = fmul double 1.000000e+01, %71
  %sub166 = fsub double %mul165, 5.000000e-01
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.164, %cond.true.161
  %cond168 = phi double [ %add163, %cond.true.161 ], [ %sub166, %cond.false.164 ]
  %conv169 = fptosi double %cond168 to i32
  store i32 %conv169, i32* %Q, align 4
  %72 = load double, double* %parm_E, align 8
  %mul170 = fmul double 1.000000e+01, %72
  %cmp171 = fcmp ogt double %mul170, 0.000000e+00
  br i1 %cmp171, label %cond.true.173, label %cond.false.176

cond.true.173:                                    ; preds = %cond.end.167
  %73 = load double, double* %parm_E, align 8
  %mul174 = fmul double 1.000000e+01, %73
  %add175 = fadd double %mul174, 5.000000e-01
  br label %cond.end.179

cond.false.176:                                   ; preds = %cond.end.167
  %74 = load double, double* %parm_E, align 8
  %mul177 = fmul double 1.000000e+01, %74
  %sub178 = fsub double %mul177, 5.000000e-01
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.176, %cond.true.173
  %cond180 = phi double [ %add175, %cond.true.173 ], [ %sub178, %cond.false.176 ]
  %conv181 = fptosi double %cond180 to i32
  store i32 %conv181, i32* %R, align 4
  %75 = load i8*, i8** %arg2, align 8
  %76 = load i8*, i8** %arg3, align 8
  %call182 = call i32 @strcmp(i8* %75, i8* %76) #7
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.184, label %if.else.186

if.then.184:                                      ; preds = %cond.end.179
  %77 = load i8*, i8** %A, align 8
  %78 = load i8*, i8** %B, align 8
  %79 = load i32, i32* %M, align 4
  %80 = load i32, i32* %N, align 4
  %81 = load i32, i32* %K, align 4
  %arraydecay = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i32 0
  %82 = load i32, i32* %Q, align 4
  %83 = load i32, i32* %R, align 4
  %call185 = call i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i64, ...) bitcast (i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i32)* @SIM to i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i64, ...)*)(i8* %77, i8* %78, i32 %79, i32 %80, i32 %81, [256 x i32]* %arraydecay, i32 %82, i32 %83, i64 2)
  br label %if.end.189

if.else.186:                                      ; preds = %cond.end.179
  %84 = load i8*, i8** %A, align 8
  %85 = load i8*, i8** %A, align 8
  %86 = load i32, i32* %M, align 4
  %87 = load i32, i32* %M, align 4
  %88 = load i32, i32* %K, align 4
  %arraydecay187 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %V, i32 0, i32 0
  %89 = load i32, i32* %Q, align 4
  %90 = load i32, i32* %R, align 4
  %call188 = call i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i64, ...) bitcast (i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i32)* @SIM to i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i64, ...)*)(i8* %84, i8* %85, i32 %86, i32 %87, i32 %88, [256 x i32]* %arraydecay187, i32 %89, i32 %90, i64 1)
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.186, %if.then.184
  %call190 = call double @dtime()
  %91 = load double, double* %starttime, align 8
  %sub191 = fsub double %call190, %91
  store double %sub191, double* %benchtime, align 8
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %Cp, align 8
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %Cp, align 8
  %94 = load i8*, i8** %arg1, align 8
  %95 = load i8*, i8** %arg2, align 8
  %96 = load i8*, i8** %arg3, align 8
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* %94, i8* %95, i8* %96)
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %Cp, align 8
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i32 0, i32 0))
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %Cp, align 8
  %call195 = call i32 @fclose(%struct._IO_FILE* %98)
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %99 = load i32, i32* %retval
  ret i32 %99
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare double @atof(i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @SIM(i8* %A, i8* %B, i32 %M, i32 %N, i32 %K, [256 x i32]* %V, i32 %Q, i32 %R, i32 %nseq) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %V.addr = alloca [256 x i32]*, align 8
  %Q.addr = alloca i32, align 4
  %R.addr = alloca i32, align 4
  %nseq.addr = alloca i32, align 4
  %endi = alloca i32, align 4
  %endj = alloca i32, align 4
  %stari = alloca i32, align 4
  %starj = alloca i32, align 4
  %score = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %S = alloca i32*, align 8
  %cur = alloca %struct.NODE*, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %K, i32* %K.addr, align 4
  store [256 x i32]* %V, [256 x i32]** %V.addr, align 8
  store i32 %Q, i32* %Q.addr, align 4
  store i32 %R, i32* %R.addr, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %j, align 4
  %1 = load i32, i32* %j, align 4
  %conv2 = sext i32 %1 to i64
  %call = call noalias i8* @malloc(i64 %conv2) #6
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** @CC, align 8
  %3 = load i32, i32* %j, align 4
  %conv3 = sext i32 %3 to i64
  %call4 = call noalias i8* @malloc(i64 %conv3) #6
  %4 = bitcast i8* %call4 to i32*
  store i32* %4, i32** @DD, align 8
  %5 = load i32, i32* %j, align 4
  %conv5 = sext i32 %5 to i64
  %call6 = call noalias i8* @malloc(i64 %conv5) #6
  %6 = bitcast i8* %call6 to i32*
  store i32* %6, i32** @RR, align 8
  %7 = load i32, i32* %j, align 4
  %conv7 = sext i32 %7 to i64
  %call8 = call noalias i8* @malloc(i64 %conv7) #6
  %8 = bitcast i8* %call8 to i32*
  store i32* %8, i32** @SS, align 8
  %9 = load i32, i32* %j, align 4
  %conv9 = sext i32 %9 to i64
  %call10 = call noalias i8* @malloc(i64 %conv9) #6
  %10 = bitcast i8* %call10 to i32*
  store i32* %10, i32** @EE, align 8
  %11 = load i32, i32* %j, align 4
  %conv11 = sext i32 %11 to i64
  %call12 = call noalias i8* @malloc(i64 %conv11) #6
  %12 = bitcast i8* %call12 to i32*
  store i32* %12, i32** @FF, align 8
  %13 = load i32, i32* %M.addr, align 4
  %add13 = add nsw i32 %13, 1
  %conv14 = sext i32 %add13 to i64
  %mul15 = mul i64 %conv14, 4
  %conv16 = trunc i64 %mul15 to i32
  store i32 %conv16, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %conv17 = sext i32 %14 to i64
  %call18 = call noalias i8* @malloc(i64 %conv17) #6
  %15 = bitcast i8* %call18 to i32*
  store i32* %15, i32** @HH, align 8
  %16 = load i32, i32* %i, align 4
  %conv19 = sext i32 %16 to i64
  %call20 = call noalias i8* @malloc(i64 %conv19) #6
  %17 = bitcast i8* %call20 to i32*
  store i32* %17, i32** @WW, align 8
  %18 = load i32, i32* %i, align 4
  %conv21 = sext i32 %18 to i64
  %call22 = call noalias i8* @malloc(i64 %conv21) #6
  %19 = bitcast i8* %call22 to i32*
  store i32* %19, i32** @II, align 8
  %20 = load i32, i32* %i, align 4
  %conv23 = sext i32 %20 to i64
  %call24 = call noalias i8* @malloc(i64 %conv23) #6
  %21 = bitcast i8* %call24 to i32*
  store i32* %21, i32** @JJ, align 8
  %22 = load i32, i32* %i, align 4
  %conv25 = sext i32 %22 to i64
  %call26 = call noalias i8* @malloc(i64 %conv25) #6
  %23 = bitcast i8* %call26 to i32*
  store i32* %23, i32** @XX, align 8
  %24 = load i32, i32* %i, align 4
  %conv27 = sext i32 %24 to i64
  %call28 = call noalias i8* @malloc(i64 %conv27) #6
  %25 = bitcast i8* %call28 to i32*
  store i32* %25, i32** @YY, align 8
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %26, %27
  %conv30 = sext i32 %add29 to i64
  %call31 = call noalias i8* @malloc(i64 %conv30) #6
  %28 = bitcast i8* %call31 to i32*
  store i32* %28, i32** %S, align 8
  %29 = load i32, i32* %M.addr, align 4
  %add32 = add nsw i32 %29, 1
  %conv33 = sext i32 %add32 to i64
  %mul34 = mul i64 %conv33, 8
  %call35 = call noalias i8* @malloc(i64 %mul34) #6
  %30 = bitcast i8* %call35 to %struct.ONE**
  store %struct.ONE** %30, %struct.ONE*** @row, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %M.addr, align 4
  %cmp = icmp sle i32 %31, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %nseq.addr, align 4
  %cmp37 = icmp eq i32 %33, 2
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx = getelementptr inbounds %struct.ONE*, %struct.ONE** %35, i64 %idxprom
  store %struct.ONE* null, %struct.ONE** %arrayidx, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %call39 = call noalias i8* @malloc(i64 16) #6
  %36 = bitcast i8* %call39 to %struct.ONE*
  store %struct.ONE* %36, %struct.ONE** @z, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %37 to i64
  %38 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx41 = getelementptr inbounds %struct.ONE*, %struct.ONE** %38, i64 %idxprom40
  store %struct.ONE* %36, %struct.ONE** %arrayidx41, align 8
  %39 = load i32, i32* %i, align 4
  %40 = load %struct.ONE*, %struct.ONE** @z, align 8
  %COL = getelementptr inbounds %struct.ONE, %struct.ONE* %40, i32 0, i32 0
  store i32 %39, i32* %COL, align 4
  %41 = load %struct.ONE*, %struct.ONE** @z, align 8
  %NEXT = getelementptr inbounds %struct.ONE, %struct.ONE* %41, i32 0, i32 1
  store %struct.ONE* null, %struct.ONE** %NEXT, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load [256 x i32]*, [256 x i32]** %V.addr, align 8
  store [256 x i32]* %43, [256 x i32]** @v, align 8
  %44 = load i32, i32* %Q.addr, align 4
  store i32 %44, i32* @q, align 4
  %45 = load i32, i32* %R.addr, align 4
  store i32 %45, i32* @r, align 4
  %46 = load i32, i32* @q, align 4
  %47 = load i32, i32* @r, align 4
  %add42 = add nsw i32 %46, %47
  store i32 %add42, i32* @qr, align 4
  %48 = load i32, i32* %K.addr, align 4
  %conv43 = sext i32 %48 to i64
  %mul44 = mul i64 %conv43, 8
  %call45 = call noalias i8* @malloc(i64 %mul44) #6
  %49 = bitcast i8* %call45 to %struct.NODE**
  store %struct.NODE** %49, %struct.NODE*** @LIST, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.53, %for.end
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %K.addr, align 4
  %cmp47 = icmp slt i32 %50, %51
  br i1 %cmp47, label %for.body.49, label %for.end.55

for.body.49:                                      ; preds = %for.cond.46
  %call50 = call noalias i8* @malloc(i64 36) #6
  %52 = bitcast i8* %call50 to %struct.NODE*
  %53 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %53 to i64
  %54 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx52 = getelementptr inbounds %struct.NODE*, %struct.NODE** %54, i64 %idxprom51
  store %struct.NODE* %52, %struct.NODE** %arrayidx52, align 8
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.49
  %55 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %55, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.46

for.end.55:                                       ; preds = %for.cond.46
  %56 = load i8*, i8** @name1, align 8
  %call56 = call i8* @mybasename(i8* %56)
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i8* %call56)
  %57 = load i32, i32* %M.addr, align 4
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0), i32 %57)
  %58 = load i8*, i8** @name2, align 8
  %call59 = call i8* @mybasename(i8* %58)
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), i8* %call59)
  %59 = load i32, i32* %N.addr, align 4
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0), i32 %59)
  store i32 0, i32* @min, align 4
  store i32 0, i32* @numnode, align 4
  %60 = load i8*, i8** %A.addr, align 8
  %61 = load i8*, i8** %B.addr, align 8
  %62 = load i32, i32* %M.addr, align 4
  %63 = load i32, i32* %N.addr, align 4
  %64 = load i32, i32* %K.addr, align 4
  %65 = load i32, i32* %nseq.addr, align 4
  %call62 = call i32 @big_pass(i8* %60, i8* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %66 = load i32, i32* %K.addr, align 4
  %sub = sub nsw i32 %66, 1
  store i32 %sub, i32* %count, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.116, %for.end.55
  %67 = load i32, i32* %count, align 4
  %cmp64 = icmp sge i32 %67, 0
  br i1 %cmp64, label %for.body.66, label %for.end.117

for.body.66:                                      ; preds = %for.cond.63
  %68 = load i32, i32* @numnode, align 4
  %cmp67 = icmp eq i32 %68, 0
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %for.body.66
  %call70 = call i32 @fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %for.body.66
  %call72 = call %struct.NODE* @findmax()
  store %struct.NODE* %call72, %struct.NODE** %cur, align 8
  %69 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %SCORE = getelementptr inbounds %struct.NODE, %struct.NODE* %69, i32 0, i32 0
  %70 = load i32, i32* %SCORE, align 4
  store i32 %70, i32* %score, align 4
  %71 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %STARI = getelementptr inbounds %struct.NODE, %struct.NODE* %71, i32 0, i32 1
  %72 = load i32, i32* %STARI, align 4
  %inc73 = add nsw i32 %72, 1
  store i32 %inc73, i32* %STARI, align 4
  store i32 %inc73, i32* %stari, align 4
  %73 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %STARJ = getelementptr inbounds %struct.NODE, %struct.NODE* %73, i32 0, i32 2
  %74 = load i32, i32* %STARJ, align 4
  %inc74 = add nsw i32 %74, 1
  store i32 %inc74, i32* %STARJ, align 4
  store i32 %inc74, i32* %starj, align 4
  %75 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %ENDI = getelementptr inbounds %struct.NODE, %struct.NODE* %75, i32 0, i32 3
  %76 = load i32, i32* %ENDI, align 4
  store i32 %76, i32* %endi, align 4
  %77 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %ENDJ = getelementptr inbounds %struct.NODE, %struct.NODE* %77, i32 0, i32 4
  %78 = load i32, i32* %ENDJ, align 4
  store i32 %78, i32* %endj, align 4
  %79 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %TOP = getelementptr inbounds %struct.NODE, %struct.NODE* %79, i32 0, i32 5
  %80 = load i32, i32* %TOP, align 4
  store i32 %80, i32* @m1, align 4
  %81 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %BOT = getelementptr inbounds %struct.NODE, %struct.NODE* %81, i32 0, i32 6
  %82 = load i32, i32* %BOT, align 4
  store i32 %82, i32* @mm, align 4
  %83 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %LEFT = getelementptr inbounds %struct.NODE, %struct.NODE* %83, i32 0, i32 7
  %84 = load i32, i32* %LEFT, align 4
  store i32 %84, i32* @n1, align 4
  %85 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %RIGHT = getelementptr inbounds %struct.NODE, %struct.NODE* %85, i32 0, i32 8
  %86 = load i32, i32* %RIGHT, align 4
  store i32 %86, i32* @nn, align 4
  %87 = load i32, i32* %endi, align 4
  %88 = load i32, i32* %stari, align 4
  %sub75 = sub nsw i32 %87, %88
  %add76 = add nsw i32 %sub75, 1
  store i32 %add76, i32* @rl, align 4
  %89 = load i32, i32* %endj, align 4
  %90 = load i32, i32* %starj, align 4
  %sub77 = sub nsw i32 %89, %90
  %add78 = add nsw i32 %sub77, 1
  store i32 %add78, i32* @cl, align 4
  %91 = load i32, i32* %stari, align 4
  %sub79 = sub nsw i32 %91, 1
  store i32 %sub79, i32* @I, align 4
  %92 = load i32, i32* %starj, align 4
  %sub80 = sub nsw i32 %92, 1
  store i32 %sub80, i32* @J, align 4
  %93 = load i32*, i32** %S, align 8
  store i32* %93, i32** @sapp, align 8
  store i32 0, i32* @last, align 4
  store i32 0, i32* @al_len, align 4
  store i32 0, i32* @no_mat, align 4
  store i32 0, i32* @no_mis, align 4
  %94 = load i32, i32* %stari, align 4
  %idxprom81 = sext i32 %94 to i64
  %95 = load i8*, i8** %A.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %95, i64 %idxprom81
  %add.ptr = getelementptr inbounds i8, i8* %arrayidx82, i64 -1
  %96 = load i32, i32* %starj, align 4
  %idxprom83 = sext i32 %96 to i64
  %97 = load i8*, i8** %B.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %97, i64 %idxprom83
  %add.ptr85 = getelementptr inbounds i8, i8* %arrayidx84, i64 -1
  %98 = load i32, i32* @rl, align 4
  %99 = load i32, i32* @cl, align 4
  %100 = load i32, i32* @q, align 4
  %101 = load i32, i32* @q, align 4
  %call86 = call i32 @diff(i8* %add.ptr, i8* %add.ptr85, i32 %98, i32 %99, i32 %100, i32 %101)
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i32 0, i32 0))
  %102 = load i32, i32* %K.addr, align 4
  %103 = load i32, i32* %count, align 4
  %sub88 = sub nsw i32 %102, %103
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 %sub88)
  %104 = load i32, i32* %score, align 4
  %conv90 = sitofp i32 %104 to double
  %div = fdiv double %conv90, 1.000000e+01
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), double %div)
  %105 = load i32, i32* @no_mat, align 4
  %mul92 = mul nsw i32 100, %105
  %106 = load i32, i32* @al_len, align 4
  %div93 = sdiv i32 %mul92, %106
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0), i32 %div93)
  %107 = load i32, i32* @no_mat, align 4
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i32 %107)
  %108 = load i32, i32* @no_mis, align 4
  %call96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i32 %108)
  %109 = load i32, i32* @al_len, align 4
  %110 = load i32, i32* @no_mat, align 4
  %sub97 = sub nsw i32 %109, %110
  %111 = load i32, i32* @no_mis, align 4
  %sub98 = sub nsw i32 %sub97, %111
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0), i32 %sub98)
  %112 = load i32, i32* %stari, align 4
  %113 = load i32, i32* %starj, align 4
  %114 = load i32, i32* %endi, align 4
  %115 = load i32, i32* %endj, align 4
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), i32 %112, i32 %113, i32 %114, i32 %115)
  %116 = load i32, i32* %stari, align 4
  %idxprom101 = sext i32 %116 to i64
  %117 = load i8*, i8** %A.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %117, i64 %idxprom101
  %add.ptr103 = getelementptr inbounds i8, i8* %arrayidx102, i64 -1
  %118 = load i32, i32* %starj, align 4
  %idxprom104 = sext i32 %118 to i64
  %119 = load i8*, i8** %B.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %119, i64 %idxprom104
  %add.ptr106 = getelementptr inbounds i8, i8* %arrayidx105, i64 -1
  %120 = load i32, i32* @rl, align 4
  %121 = load i32, i32* @cl, align 4
  %122 = load i32*, i32** %S, align 8
  %123 = load i32, i32* %stari, align 4
  %124 = load i32, i32* %starj, align 4
  %call107 = call i32 @display(i8* %add.ptr103, i8* %add.ptr106, i32 %120, i32 %121, i32* %122, i32 %123, i32 %124)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call108 = call i32 @fflush(%struct._IO_FILE* %125)
  %126 = load i32, i32* %count, align 4
  %tobool = icmp ne i32 %126, 0
  br i1 %tobool, label %if.then.109, label %if.end.115

if.then.109:                                      ; preds = %if.end.71
  store i16 0, i16* @flag, align 2
  %127 = load i8*, i8** %A.addr, align 8
  %128 = load i8*, i8** %B.addr, align 8
  %129 = load i32, i32* %nseq.addr, align 4
  %call110 = call i32 @locate(i8* %127, i8* %128, i32 %129)
  %130 = load i16, i16* @flag, align 2
  %tobool111 = icmp ne i16 %130, 0
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.then.109
  %131 = load i8*, i8** %A.addr, align 8
  %132 = load i8*, i8** %B.addr, align 8
  %133 = load i32, i32* %count, align 4
  %134 = load i32, i32* %nseq.addr, align 4
  %call113 = call i32 @small_pass(i8* %131, i8* %132, i32 %133, i32 %134)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.then.109
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.71
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %135 = load i32, i32* %count, align 4
  %dec = add nsw i32 %135, -1
  store i32 %dec, i32* %count, align 4
  br label %for.cond.63

for.end.117:                                      ; preds = %for.cond.63
  %136 = load i32, i32* %retval
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #7
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @big_pass(i8* %A, i8* %B, i32 %M, i32 %N, i32 %K, i32 %nseq) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %nseq.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %f = alloca i32, align 4
  %d = alloca i32, align 4
  %p = alloca i32, align 4
  %ci = alloca i32, align 4
  %cj = alloca i32, align 4
  %di = alloca i32, align 4
  %dj = alloca i32, align 4
  %fi = alloca i32, align 4
  %fj = alloca i32, align 4
  %pi = alloca i32, align 4
  %pj = alloca i32, align 4
  %va = alloca i32*, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %K, i32* %K.addr, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** @CC, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %4 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** @RR, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i32*, i32** @EE, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  store i32 %6, i32* %arrayidx4, align 4
  %9 = load i32, i32* @q, align 4
  %sub = sub nsw i32 0, %9
  %10 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** @DD, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  store i32 %sub, i32* %arrayidx6, align 4
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i32*, i32** @SS, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  store i32 0, i32* %arrayidx8, align 4
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32*, i32** @FF, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  store i32 %14, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.155, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %M.addr, align 4
  %cmp12 = icmp sle i32 %18, %19
  br i1 %cmp12, label %for.body.13, label %for.end.157

for.body.13:                                      ; preds = %for.cond.11
  store i32 0, i32* %c, align 4
  %20 = load i32, i32* @q, align 4
  %sub14 = sub nsw i32 0, %20
  store i32 %sub14, i32* %f, align 4
  %21 = load i32, i32* %i, align 4
  store i32 %21, i32* %fi, align 4
  store i32 %21, i32* %ci, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load i8*, i8** %A.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %23, i64 %idxprom15
  %24 = load i8, i8* %arrayidx16, align 1
  %idxprom17 = sext i8 %24 to i64
  %25 = load [256 x i32]*, [256 x i32]** @v, align 8
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* %25, i64 %idxprom17
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx18, i32 0, i32 0
  store i32* %arraydecay, i32** %va, align 8
  %26 = load i32, i32* %nseq.addr, align 4
  %cmp19 = icmp eq i32 %26, 2
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.13
  store i32 0, i32* %p, align 4
  %27 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %27, 1
  store i32 %sub20, i32* %pi, align 4
  store i32 0, i32* %pj, align 4
  store i32 0, i32* %fj, align 4
  store i32 0, i32* %cj, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.13
  %28 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load i32*, i32** @CC, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %29, i64 %idxprom21
  %30 = load i32, i32* %arrayidx22, align 4
  store i32 %30, i32* %p, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load i32*, i32** @RR, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %32, i64 %idxprom23
  %33 = load i32, i32* %arrayidx24, align 4
  store i32 %33, i32* %pi, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %34 to i64
  %35 = load i32*, i32** @EE, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %35, i64 %idxprom25
  %36 = load i32, i32* %arrayidx26, align 4
  store i32 %36, i32* %pj, align 4
  %37 = load i32, i32* %i, align 4
  store i32 %37, i32* %fj, align 4
  store i32 %37, i32* %cj, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %38 = load i32, i32* %nseq.addr, align 4
  %cmp27 = icmp eq i32 %38, 2
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %39 = load i32, i32* %i, align 4
  %add = add nsw i32 %39, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.152, %cond.end
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %N.addr, align 4
  %cmp29 = icmp sle i32 %40, %41
  br i1 %cmp29, label %for.body.30, label %for.end.154

for.body.30:                                      ; preds = %for.cond.28
  %42 = load i32, i32* %f, align 4
  %43 = load i32, i32* @r, align 4
  %sub31 = sub nsw i32 %42, %43
  store i32 %sub31, i32* %f, align 4
  %44 = load i32, i32* %c, align 4
  %45 = load i32, i32* @qr, align 4
  %sub32 = sub nsw i32 %44, %45
  store i32 %sub32, i32* %c, align 4
  %46 = load i32, i32* %f, align 4
  %47 = load i32, i32* %c, align 4
  %cmp33 = icmp slt i32 %46, %47
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %for.body.30
  %48 = load i32, i32* %c, align 4
  store i32 %48, i32* %f, align 4
  %49 = load i32, i32* %ci, align 4
  store i32 %49, i32* %fi, align 4
  %50 = load i32, i32* %cj, align 4
  store i32 %50, i32* %fj, align 4
  br label %if.end.47

if.else.35:                                       ; preds = %for.body.30
  %51 = load i32, i32* %f, align 4
  %52 = load i32, i32* %c, align 4
  %cmp36 = icmp eq i32 %51, %52
  br i1 %cmp36, label %if.then.37, label %if.end.46

if.then.37:                                       ; preds = %if.else.35
  %53 = load i32, i32* %fi, align 4
  %54 = load i32, i32* %ci, align 4
  %cmp38 = icmp slt i32 %53, %54
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.then.37
  %55 = load i32, i32* %ci, align 4
  store i32 %55, i32* %fi, align 4
  %56 = load i32, i32* %cj, align 4
  store i32 %56, i32* %fj, align 4
  br label %if.end.45

if.else.40:                                       ; preds = %if.then.37
  %57 = load i32, i32* %fi, align 4
  %58 = load i32, i32* %ci, align 4
  %cmp41 = icmp eq i32 %57, %58
  br i1 %cmp41, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.else.40
  %59 = load i32, i32* %fj, align 4
  %60 = load i32, i32* %cj, align 4
  %cmp42 = icmp slt i32 %59, %60
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true
  %61 = load i32, i32* %cj, align 4
  store i32 %61, i32* %fj, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true, %if.else.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.39
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.else.35
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.34
  %62 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %62 to i64
  %63 = load i32*, i32** @CC, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %63, i64 %idxprom48
  %64 = load i32, i32* %arrayidx49, align 4
  %65 = load i32, i32* @qr, align 4
  %sub50 = sub nsw i32 %64, %65
  store i32 %sub50, i32* %c, align 4
  %66 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %66 to i64
  %67 = load i32*, i32** @RR, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %67, i64 %idxprom51
  %68 = load i32, i32* %arrayidx52, align 4
  store i32 %68, i32* %ci, align 4
  %69 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %69 to i64
  %70 = load i32*, i32** @EE, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %70, i64 %idxprom53
  %71 = load i32, i32* %arrayidx54, align 4
  store i32 %71, i32* %cj, align 4
  %72 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %72 to i64
  %73 = load i32*, i32** @DD, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %73, i64 %idxprom55
  %74 = load i32, i32* %arrayidx56, align 4
  %75 = load i32, i32* @r, align 4
  %sub57 = sub nsw i32 %74, %75
  store i32 %sub57, i32* %d, align 4
  %76 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %76 to i64
  %77 = load i32*, i32** @SS, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %77, i64 %idxprom58
  %78 = load i32, i32* %arrayidx59, align 4
  store i32 %78, i32* %di, align 4
  %79 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %79 to i64
  %80 = load i32*, i32** @FF, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %80, i64 %idxprom60
  %81 = load i32, i32* %arrayidx61, align 4
  store i32 %81, i32* %dj, align 4
  %82 = load i32, i32* %d, align 4
  %83 = load i32, i32* %c, align 4
  %cmp62 = icmp slt i32 %82, %83
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.47
  %84 = load i32, i32* %c, align 4
  store i32 %84, i32* %d, align 4
  %85 = load i32, i32* %ci, align 4
  store i32 %85, i32* %di, align 4
  %86 = load i32, i32* %cj, align 4
  store i32 %86, i32* %dj, align 4
  br label %if.end.77

if.else.64:                                       ; preds = %if.end.47
  %87 = load i32, i32* %d, align 4
  %88 = load i32, i32* %c, align 4
  %cmp65 = icmp eq i32 %87, %88
  br i1 %cmp65, label %if.then.66, label %if.end.76

if.then.66:                                       ; preds = %if.else.64
  %89 = load i32, i32* %di, align 4
  %90 = load i32, i32* %ci, align 4
  %cmp67 = icmp slt i32 %89, %90
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %if.then.66
  %91 = load i32, i32* %ci, align 4
  store i32 %91, i32* %di, align 4
  %92 = load i32, i32* %cj, align 4
  store i32 %92, i32* %dj, align 4
  br label %if.end.75

if.else.69:                                       ; preds = %if.then.66
  %93 = load i32, i32* %di, align 4
  %94 = load i32, i32* %ci, align 4
  %cmp70 = icmp eq i32 %93, %94
  br i1 %cmp70, label %land.lhs.true.71, label %if.end.74

land.lhs.true.71:                                 ; preds = %if.else.69
  %95 = load i32, i32* %dj, align 4
  %96 = load i32, i32* %cj, align 4
  %cmp72 = icmp slt i32 %95, %96
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true.71
  %97 = load i32, i32* %cj, align 4
  store i32 %97, i32* %dj, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %land.lhs.true.71, %if.else.69
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.68
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.else.64
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.63
  store i32 0, i32* %c, align 4
  store i16 1, i16* @tt, align 2
  %98 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %98 to i64
  %99 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx79 = getelementptr inbounds %struct.ONE*, %struct.ONE** %99, i64 %idxprom78
  %100 = load %struct.ONE*, %struct.ONE** %arrayidx79, align 8
  store %struct.ONE* %100, %struct.ONE** @z, align 8
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.86, %if.end.77
  %101 = load %struct.ONE*, %struct.ONE** @z, align 8
  %cmp81 = icmp ne %struct.ONE* %101, null
  br i1 %cmp81, label %for.body.82, label %for.end.87

for.body.82:                                      ; preds = %for.cond.80
  %102 = load %struct.ONE*, %struct.ONE** @z, align 8
  %COL = getelementptr inbounds %struct.ONE, %struct.ONE* %102, i32 0, i32 0
  %103 = load i32, i32* %COL, align 4
  %104 = load i32, i32* %j, align 4
  %cmp83 = icmp eq i32 %103, %104
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.body.82
  store i16 0, i16* @tt, align 2
  br label %for.end.87

if.end.85:                                        ; preds = %for.body.82
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %105 = load %struct.ONE*, %struct.ONE** @z, align 8
  %NEXT = getelementptr inbounds %struct.ONE, %struct.ONE* %105, i32 0, i32 1
  %106 = load %struct.ONE*, %struct.ONE** %NEXT, align 8
  store %struct.ONE* %106, %struct.ONE** @z, align 8
  br label %for.cond.80

for.end.87:                                       ; preds = %if.then.84, %for.cond.80
  %107 = load i16, i16* @tt, align 2
  %tobool = icmp ne i16 %107, 0
  br i1 %tobool, label %if.then.88, label %if.end.94

if.then.88:                                       ; preds = %for.end.87
  %108 = load i32, i32* %p, align 4
  %109 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %109 to i64
  %110 = load i8*, i8** %B.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %110, i64 %idxprom89
  %111 = load i8, i8* %arrayidx90, align 1
  %idxprom91 = sext i8 %111 to i64
  %112 = load i32*, i32** %va, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %112, i64 %idxprom91
  %113 = load i32, i32* %arrayidx92, align 4
  %add93 = add nsw i32 %108, %113
  store i32 %add93, i32* %c, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.88, %for.end.87
  %114 = load i32, i32* %c, align 4
  %cmp95 = icmp sle i32 %114, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.end.94
  store i32 0, i32* %c, align 4
  %115 = load i32, i32* %i, align 4
  store i32 %115, i32* %ci, align 4
  %116 = load i32, i32* %j, align 4
  store i32 %116, i32* %cj, align 4
  br label %if.end.98

if.else.97:                                       ; preds = %if.end.94
  %117 = load i32, i32* %pi, align 4
  store i32 %117, i32* %ci, align 4
  %118 = load i32, i32* %pj, align 4
  store i32 %118, i32* %cj, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.97, %if.then.96
  %119 = load i32, i32* %c, align 4
  %120 = load i32, i32* %d, align 4
  %cmp99 = icmp slt i32 %119, %120
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.end.98
  %121 = load i32, i32* %d, align 4
  store i32 %121, i32* %c, align 4
  %122 = load i32, i32* %di, align 4
  store i32 %122, i32* %ci, align 4
  %123 = load i32, i32* %dj, align 4
  store i32 %123, i32* %cj, align 4
  br label %if.end.114

if.else.101:                                      ; preds = %if.end.98
  %124 = load i32, i32* %c, align 4
  %125 = load i32, i32* %d, align 4
  %cmp102 = icmp eq i32 %124, %125
  br i1 %cmp102, label %if.then.103, label %if.end.113

if.then.103:                                      ; preds = %if.else.101
  %126 = load i32, i32* %ci, align 4
  %127 = load i32, i32* %di, align 4
  %cmp104 = icmp slt i32 %126, %127
  br i1 %cmp104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.then.103
  %128 = load i32, i32* %di, align 4
  store i32 %128, i32* %ci, align 4
  %129 = load i32, i32* %dj, align 4
  store i32 %129, i32* %cj, align 4
  br label %if.end.112

if.else.106:                                      ; preds = %if.then.103
  %130 = load i32, i32* %ci, align 4
  %131 = load i32, i32* %di, align 4
  %cmp107 = icmp eq i32 %130, %131
  br i1 %cmp107, label %land.lhs.true.108, label %if.end.111

land.lhs.true.108:                                ; preds = %if.else.106
  %132 = load i32, i32* %cj, align 4
  %133 = load i32, i32* %dj, align 4
  %cmp109 = icmp slt i32 %132, %133
  br i1 %cmp109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %land.lhs.true.108
  %134 = load i32, i32* %dj, align 4
  store i32 %134, i32* %cj, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %land.lhs.true.108, %if.else.106
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.105
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.else.101
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.100
  %135 = load i32, i32* %c, align 4
  %136 = load i32, i32* %f, align 4
  %cmp115 = icmp slt i32 %135, %136
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.end.114
  %137 = load i32, i32* %f, align 4
  store i32 %137, i32* %c, align 4
  %138 = load i32, i32* %fi, align 4
  store i32 %138, i32* %ci, align 4
  %139 = load i32, i32* %fj, align 4
  store i32 %139, i32* %cj, align 4
  br label %if.end.130

if.else.117:                                      ; preds = %if.end.114
  %140 = load i32, i32* %c, align 4
  %141 = load i32, i32* %f, align 4
  %cmp118 = icmp eq i32 %140, %141
  br i1 %cmp118, label %if.then.119, label %if.end.129

if.then.119:                                      ; preds = %if.else.117
  %142 = load i32, i32* %ci, align 4
  %143 = load i32, i32* %fi, align 4
  %cmp120 = icmp slt i32 %142, %143
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %if.then.119
  %144 = load i32, i32* %fi, align 4
  store i32 %144, i32* %ci, align 4
  %145 = load i32, i32* %fj, align 4
  store i32 %145, i32* %cj, align 4
  br label %if.end.128

if.else.122:                                      ; preds = %if.then.119
  %146 = load i32, i32* %ci, align 4
  %147 = load i32, i32* %fi, align 4
  %cmp123 = icmp eq i32 %146, %147
  br i1 %cmp123, label %land.lhs.true.124, label %if.end.127

land.lhs.true.124:                                ; preds = %if.else.122
  %148 = load i32, i32* %cj, align 4
  %149 = load i32, i32* %fj, align 4
  %cmp125 = icmp slt i32 %148, %149
  br i1 %cmp125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %land.lhs.true.124
  %150 = load i32, i32* %fj, align 4
  store i32 %150, i32* %cj, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %land.lhs.true.124, %if.else.122
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.121
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.else.117
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.116
  %151 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %151 to i64
  %152 = load i32*, i32** @CC, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %152, i64 %idxprom131
  %153 = load i32, i32* %arrayidx132, align 4
  store i32 %153, i32* %p, align 4
  %154 = load i32, i32* %c, align 4
  %155 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %155 to i64
  %156 = load i32*, i32** @CC, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %156, i64 %idxprom133
  store i32 %154, i32* %arrayidx134, align 4
  %157 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %157 to i64
  %158 = load i32*, i32** @RR, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %158, i64 %idxprom135
  %159 = load i32, i32* %arrayidx136, align 4
  store i32 %159, i32* %pi, align 4
  %160 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %160 to i64
  %161 = load i32*, i32** @EE, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %161, i64 %idxprom137
  %162 = load i32, i32* %arrayidx138, align 4
  store i32 %162, i32* %pj, align 4
  %163 = load i32, i32* %ci, align 4
  %164 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %164 to i64
  %165 = load i32*, i32** @RR, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %165, i64 %idxprom139
  store i32 %163, i32* %arrayidx140, align 4
  %166 = load i32, i32* %cj, align 4
  %167 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %167 to i64
  %168 = load i32*, i32** @EE, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %168, i64 %idxprom141
  store i32 %166, i32* %arrayidx142, align 4
  %169 = load i32, i32* %d, align 4
  %170 = load i32, i32* %j, align 4
  %idxprom143 = sext i32 %170 to i64
  %171 = load i32*, i32** @DD, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %171, i64 %idxprom143
  store i32 %169, i32* %arrayidx144, align 4
  %172 = load i32, i32* %di, align 4
  %173 = load i32, i32* %j, align 4
  %idxprom145 = sext i32 %173 to i64
  %174 = load i32*, i32** @SS, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %174, i64 %idxprom145
  store i32 %172, i32* %arrayidx146, align 4
  %175 = load i32, i32* %dj, align 4
  %176 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %176 to i64
  %177 = load i32*, i32** @FF, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %177, i64 %idxprom147
  store i32 %175, i32* %arrayidx148, align 4
  %178 = load i32, i32* %c, align 4
  %179 = load i32, i32* @min, align 4
  %cmp149 = icmp sgt i32 %178, %179
  br i1 %cmp149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.130
  %180 = load i32, i32* %c, align 4
  %181 = load i32, i32* %ci, align 4
  %182 = load i32, i32* %cj, align 4
  %183 = load i32, i32* %i, align 4
  %184 = load i32, i32* %j, align 4
  %185 = load i32, i32* %K.addr, align 4
  %186 = load i32, i32* @min, align 4
  %call = call i32 @addnode(i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186)
  store i32 %call, i32* @min, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.end.130
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.151
  %187 = load i32, i32* %j, align 4
  %inc153 = add nsw i32 %187, 1
  store i32 %inc153, i32* %j, align 4
  br label %for.cond.28

for.end.154:                                      ; preds = %for.cond.28
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.end.154
  %188 = load i32, i32* %i, align 4
  %inc156 = add nsw i32 %188, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond.11

for.end.157:                                      ; preds = %for.cond.11
  %189 = load i32, i32* %retval
  ret i32 %189
}

; Function Attrs: nounwind uwtable
define i32 @locate(i8* %A, i8* %B, i32 %nseq) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  %nseq.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %f = alloca i32, align 4
  %d = alloca i32, align 4
  %p = alloca i32, align 4
  %ci = alloca i32, align 4
  %cj = alloca i32, align 4
  %di = alloca i32, align 4
  %dj = alloca i32, align 4
  %fi = alloca i32, align 4
  %fj = alloca i32, align 4
  %pi = alloca i32, align 4
  %pj = alloca i32, align 4
  %cflag = alloca i16, align 2
  %rflag = alloca i16, align 2
  %va = alloca i32*, align 8
  %limit = alloca i32, align 4
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  %0 = load i32, i32* @nn, align 4
  store i32 %0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* @n1, align 4
  %cmp = icmp sge i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** @CC, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i32*, i32** @EE, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  store i32 %5, i32* %arrayidx2, align 4
  %8 = load i32, i32* @q, align 4
  %sub = sub nsw i32 0, %8
  %9 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i32*, i32** @DD, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  store i32 %sub, i32* %arrayidx4, align 4
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load i32*, i32** @FF, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  store i32 %11, i32* %arrayidx6, align 4
  %14 = load i32, i32* %nseq.addr, align 4
  %cmp7 = icmp eq i32 %14, 2
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* @mm, align 4
  %cmp8 = icmp sgt i32 %15, %16
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %17 = load i32, i32* @mm, align 4
  %add = add nsw i32 %17, 1
  %18 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load i32*, i32** @SS, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 %idxprom9
  store i32 %add, i32* %arrayidx10, align 4
  %20 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load i32*, i32** @RR, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 %idxprom11
  store i32 %add, i32* %arrayidx12, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load i32*, i32** @SS, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %24, i64 %idxprom13
  store i32 %22, i32* %arrayidx14, align 4
  %25 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load i32*, i32** @RR, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %26, i64 %idxprom15
  store i32 %22, i32* %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %j, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* @mm, align 4
  store i32 %28, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.190, %for.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* @m1, align 4
  %cmp18 = icmp sge i32 %29, %30
  br i1 %cmp18, label %for.body.19, label %for.end.192

for.body.19:                                      ; preds = %for.cond.17
  store i32 0, i32* %p, align 4
  store i32 0, i32* %c, align 4
  %31 = load i32, i32* @q, align 4
  %sub20 = sub nsw i32 0, %31
  store i32 %sub20, i32* %f, align 4
  %32 = load i32, i32* %i, align 4
  store i32 %32, i32* %fi, align 4
  store i32 %32, i32* %ci, align 4
  %33 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %33, 1
  store i32 %add21, i32* %pi, align 4
  %34 = load i32, i32* @nn, align 4
  %add22 = add nsw i32 %34, 1
  store i32 %add22, i32* %pj, align 4
  store i32 %add22, i32* %fj, align 4
  store i32 %add22, i32* %cj, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %35 to i64
  %36 = load i8*, i8** %A.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %36, i64 %idxprom23
  %37 = load i8, i8* %arrayidx24, align 1
  %idxprom25 = sext i8 %37 to i64
  %38 = load [256 x i32]*, [256 x i32]** @v, align 8
  %arrayidx26 = getelementptr inbounds [256 x i32], [256 x i32]* %38, i64 %idxprom25
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx26, i32 0, i32 0
  store i32* %arraydecay, i32** %va, align 8
  %39 = load i32, i32* %nseq.addr, align 4
  %cmp27 = icmp eq i32 %39, 2
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %for.body.19
  %40 = load i32, i32* @n1, align 4
  %41 = load i32, i32* %i, align 4
  %cmp29 = icmp sgt i32 %40, %41
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %lor.lhs.false.28, %for.body.19
  %42 = load i32, i32* @n1, align 4
  store i32 %42, i32* %limit, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %lor.lhs.false.28
  %43 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %43, 1
  store i32 %add32, i32* %limit, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  %44 = load i32, i32* @nn, align 4
  store i32 %44, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.158, %if.end.33
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %limit, align 4
  %cmp35 = icmp sge i32 %45, %46
  br i1 %cmp35, label %for.body.36, label %for.end.160

for.body.36:                                      ; preds = %for.cond.34
  %47 = load i32, i32* %f, align 4
  %48 = load i32, i32* @r, align 4
  %sub37 = sub nsw i32 %47, %48
  store i32 %sub37, i32* %f, align 4
  %49 = load i32, i32* %c, align 4
  %50 = load i32, i32* @qr, align 4
  %sub38 = sub nsw i32 %49, %50
  store i32 %sub38, i32* %c, align 4
  %51 = load i32, i32* %f, align 4
  %52 = load i32, i32* %c, align 4
  %cmp39 = icmp slt i32 %51, %52
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %for.body.36
  %53 = load i32, i32* %c, align 4
  store i32 %53, i32* %f, align 4
  %54 = load i32, i32* %ci, align 4
  store i32 %54, i32* %fi, align 4
  %55 = load i32, i32* %cj, align 4
  store i32 %55, i32* %fj, align 4
  br label %if.end.53

if.else.41:                                       ; preds = %for.body.36
  %56 = load i32, i32* %f, align 4
  %57 = load i32, i32* %c, align 4
  %cmp42 = icmp eq i32 %56, %57
  br i1 %cmp42, label %if.then.43, label %if.end.52

if.then.43:                                       ; preds = %if.else.41
  %58 = load i32, i32* %fi, align 4
  %59 = load i32, i32* %ci, align 4
  %cmp44 = icmp slt i32 %58, %59
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.then.43
  %60 = load i32, i32* %ci, align 4
  store i32 %60, i32* %fi, align 4
  %61 = load i32, i32* %cj, align 4
  store i32 %61, i32* %fj, align 4
  br label %if.end.51

if.else.46:                                       ; preds = %if.then.43
  %62 = load i32, i32* %fi, align 4
  %63 = load i32, i32* %ci, align 4
  %cmp47 = icmp eq i32 %62, %63
  br i1 %cmp47, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.else.46
  %64 = load i32, i32* %fj, align 4
  %65 = load i32, i32* %cj, align 4
  %cmp48 = icmp slt i32 %64, %65
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true
  %66 = load i32, i32* %cj, align 4
  store i32 %66, i32* %fj, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %land.lhs.true, %if.else.46
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.45
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.else.41
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.40
  %67 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %67 to i64
  %68 = load i32*, i32** @CC, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %68, i64 %idxprom54
  %69 = load i32, i32* %arrayidx55, align 4
  %70 = load i32, i32* @qr, align 4
  %sub56 = sub nsw i32 %69, %70
  store i32 %sub56, i32* %c, align 4
  %71 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %71 to i64
  %72 = load i32*, i32** @RR, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %72, i64 %idxprom57
  %73 = load i32, i32* %arrayidx58, align 4
  store i32 %73, i32* %ci, align 4
  %74 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %74 to i64
  %75 = load i32*, i32** @EE, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %75, i64 %idxprom59
  %76 = load i32, i32* %arrayidx60, align 4
  store i32 %76, i32* %cj, align 4
  %77 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %77 to i64
  %78 = load i32*, i32** @DD, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %78, i64 %idxprom61
  %79 = load i32, i32* %arrayidx62, align 4
  %80 = load i32, i32* @r, align 4
  %sub63 = sub nsw i32 %79, %80
  store i32 %sub63, i32* %d, align 4
  %81 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %81 to i64
  %82 = load i32*, i32** @SS, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %82, i64 %idxprom64
  %83 = load i32, i32* %arrayidx65, align 4
  store i32 %83, i32* %di, align 4
  %84 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %84 to i64
  %85 = load i32*, i32** @FF, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %85, i64 %idxprom66
  %86 = load i32, i32* %arrayidx67, align 4
  store i32 %86, i32* %dj, align 4
  %87 = load i32, i32* %d, align 4
  %88 = load i32, i32* %c, align 4
  %cmp68 = icmp slt i32 %87, %88
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.end.53
  %89 = load i32, i32* %c, align 4
  store i32 %89, i32* %d, align 4
  %90 = load i32, i32* %ci, align 4
  store i32 %90, i32* %di, align 4
  %91 = load i32, i32* %cj, align 4
  store i32 %91, i32* %dj, align 4
  br label %if.end.83

if.else.70:                                       ; preds = %if.end.53
  %92 = load i32, i32* %d, align 4
  %93 = load i32, i32* %c, align 4
  %cmp71 = icmp eq i32 %92, %93
  br i1 %cmp71, label %if.then.72, label %if.end.82

if.then.72:                                       ; preds = %if.else.70
  %94 = load i32, i32* %di, align 4
  %95 = load i32, i32* %ci, align 4
  %cmp73 = icmp slt i32 %94, %95
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.then.72
  %96 = load i32, i32* %ci, align 4
  store i32 %96, i32* %di, align 4
  %97 = load i32, i32* %cj, align 4
  store i32 %97, i32* %dj, align 4
  br label %if.end.81

if.else.75:                                       ; preds = %if.then.72
  %98 = load i32, i32* %di, align 4
  %99 = load i32, i32* %ci, align 4
  %cmp76 = icmp eq i32 %98, %99
  br i1 %cmp76, label %land.lhs.true.77, label %if.end.80

land.lhs.true.77:                                 ; preds = %if.else.75
  %100 = load i32, i32* %dj, align 4
  %101 = load i32, i32* %cj, align 4
  %cmp78 = icmp slt i32 %100, %101
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true.77
  %102 = load i32, i32* %cj, align 4
  store i32 %102, i32* %dj, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %land.lhs.true.77, %if.else.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.74
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.else.70
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.69
  store i32 0, i32* %c, align 4
  store i16 1, i16* @tt, align 2
  %103 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %103 to i64
  %104 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx85 = getelementptr inbounds %struct.ONE*, %struct.ONE** %104, i64 %idxprom84
  %105 = load %struct.ONE*, %struct.ONE** %arrayidx85, align 8
  store %struct.ONE* %105, %struct.ONE** @z, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.92, %if.end.83
  %106 = load %struct.ONE*, %struct.ONE** @z, align 8
  %cmp87 = icmp ne %struct.ONE* %106, null
  br i1 %cmp87, label %for.body.88, label %for.end.93

for.body.88:                                      ; preds = %for.cond.86
  %107 = load %struct.ONE*, %struct.ONE** @z, align 8
  %COL = getelementptr inbounds %struct.ONE, %struct.ONE* %107, i32 0, i32 0
  %108 = load i32, i32* %COL, align 4
  %109 = load i32, i32* %j, align 4
  %cmp89 = icmp eq i32 %108, %109
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %for.body.88
  store i16 0, i16* @tt, align 2
  br label %for.end.93

if.end.91:                                        ; preds = %for.body.88
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %110 = load %struct.ONE*, %struct.ONE** @z, align 8
  %NEXT = getelementptr inbounds %struct.ONE, %struct.ONE* %110, i32 0, i32 1
  %111 = load %struct.ONE*, %struct.ONE** %NEXT, align 8
  store %struct.ONE* %111, %struct.ONE** @z, align 8
  br label %for.cond.86

for.end.93:                                       ; preds = %if.then.90, %for.cond.86
  %112 = load i16, i16* @tt, align 2
  %tobool = icmp ne i16 %112, 0
  br i1 %tobool, label %if.then.94, label %if.end.100

if.then.94:                                       ; preds = %for.end.93
  %113 = load i32, i32* %p, align 4
  %114 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %114 to i64
  %115 = load i8*, i8** %B.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %115, i64 %idxprom95
  %116 = load i8, i8* %arrayidx96, align 1
  %idxprom97 = sext i8 %116 to i64
  %117 = load i32*, i32** %va, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %117, i64 %idxprom97
  %118 = load i32, i32* %arrayidx98, align 4
  %add99 = add nsw i32 %113, %118
  store i32 %add99, i32* %c, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.94, %for.end.93
  %119 = load i32, i32* %c, align 4
  %cmp101 = icmp sle i32 %119, 0
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %if.end.100
  store i32 0, i32* %c, align 4
  %120 = load i32, i32* %i, align 4
  store i32 %120, i32* %ci, align 4
  %121 = load i32, i32* %j, align 4
  store i32 %121, i32* %cj, align 4
  br label %if.end.104

if.else.103:                                      ; preds = %if.end.100
  %122 = load i32, i32* %pi, align 4
  store i32 %122, i32* %ci, align 4
  %123 = load i32, i32* %pj, align 4
  store i32 %123, i32* %cj, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.then.102
  %124 = load i32, i32* %c, align 4
  %125 = load i32, i32* %d, align 4
  %cmp105 = icmp slt i32 %124, %125
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %if.end.104
  %126 = load i32, i32* %d, align 4
  store i32 %126, i32* %c, align 4
  %127 = load i32, i32* %di, align 4
  store i32 %127, i32* %ci, align 4
  %128 = load i32, i32* %dj, align 4
  store i32 %128, i32* %cj, align 4
  br label %if.end.120

if.else.107:                                      ; preds = %if.end.104
  %129 = load i32, i32* %c, align 4
  %130 = load i32, i32* %d, align 4
  %cmp108 = icmp eq i32 %129, %130
  br i1 %cmp108, label %if.then.109, label %if.end.119

if.then.109:                                      ; preds = %if.else.107
  %131 = load i32, i32* %ci, align 4
  %132 = load i32, i32* %di, align 4
  %cmp110 = icmp slt i32 %131, %132
  br i1 %cmp110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %if.then.109
  %133 = load i32, i32* %di, align 4
  store i32 %133, i32* %ci, align 4
  %134 = load i32, i32* %dj, align 4
  store i32 %134, i32* %cj, align 4
  br label %if.end.118

if.else.112:                                      ; preds = %if.then.109
  %135 = load i32, i32* %ci, align 4
  %136 = load i32, i32* %di, align 4
  %cmp113 = icmp eq i32 %135, %136
  br i1 %cmp113, label %land.lhs.true.114, label %if.end.117

land.lhs.true.114:                                ; preds = %if.else.112
  %137 = load i32, i32* %cj, align 4
  %138 = load i32, i32* %dj, align 4
  %cmp115 = icmp slt i32 %137, %138
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %land.lhs.true.114
  %139 = load i32, i32* %dj, align 4
  store i32 %139, i32* %cj, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %land.lhs.true.114, %if.else.112
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.111
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.else.107
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.106
  %140 = load i32, i32* %c, align 4
  %141 = load i32, i32* %f, align 4
  %cmp121 = icmp slt i32 %140, %141
  br i1 %cmp121, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %if.end.120
  %142 = load i32, i32* %f, align 4
  store i32 %142, i32* %c, align 4
  %143 = load i32, i32* %fi, align 4
  store i32 %143, i32* %ci, align 4
  %144 = load i32, i32* %fj, align 4
  store i32 %144, i32* %cj, align 4
  br label %if.end.136

if.else.123:                                      ; preds = %if.end.120
  %145 = load i32, i32* %c, align 4
  %146 = load i32, i32* %f, align 4
  %cmp124 = icmp eq i32 %145, %146
  br i1 %cmp124, label %if.then.125, label %if.end.135

if.then.125:                                      ; preds = %if.else.123
  %147 = load i32, i32* %ci, align 4
  %148 = load i32, i32* %fi, align 4
  %cmp126 = icmp slt i32 %147, %148
  br i1 %cmp126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %if.then.125
  %149 = load i32, i32* %fi, align 4
  store i32 %149, i32* %ci, align 4
  %150 = load i32, i32* %fj, align 4
  store i32 %150, i32* %cj, align 4
  br label %if.end.134

if.else.128:                                      ; preds = %if.then.125
  %151 = load i32, i32* %ci, align 4
  %152 = load i32, i32* %fi, align 4
  %cmp129 = icmp eq i32 %151, %152
  br i1 %cmp129, label %land.lhs.true.130, label %if.end.133

land.lhs.true.130:                                ; preds = %if.else.128
  %153 = load i32, i32* %cj, align 4
  %154 = load i32, i32* %fj, align 4
  %cmp131 = icmp slt i32 %153, %154
  br i1 %cmp131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %land.lhs.true.130
  %155 = load i32, i32* %fj, align 4
  store i32 %155, i32* %cj, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %land.lhs.true.130, %if.else.128
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.127
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.else.123
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.122
  %156 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %156 to i64
  %157 = load i32*, i32** @CC, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %157, i64 %idxprom137
  %158 = load i32, i32* %arrayidx138, align 4
  store i32 %158, i32* %p, align 4
  %159 = load i32, i32* %c, align 4
  %160 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %160 to i64
  %161 = load i32*, i32** @CC, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %161, i64 %idxprom139
  store i32 %159, i32* %arrayidx140, align 4
  %162 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %162 to i64
  %163 = load i32*, i32** @RR, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %163, i64 %idxprom141
  %164 = load i32, i32* %arrayidx142, align 4
  store i32 %164, i32* %pi, align 4
  %165 = load i32, i32* %j, align 4
  %idxprom143 = sext i32 %165 to i64
  %166 = load i32*, i32** @EE, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %166, i64 %idxprom143
  %167 = load i32, i32* %arrayidx144, align 4
  store i32 %167, i32* %pj, align 4
  %168 = load i32, i32* %ci, align 4
  %169 = load i32, i32* %j, align 4
  %idxprom145 = sext i32 %169 to i64
  %170 = load i32*, i32** @RR, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %170, i64 %idxprom145
  store i32 %168, i32* %arrayidx146, align 4
  %171 = load i32, i32* %cj, align 4
  %172 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %172 to i64
  %173 = load i32*, i32** @EE, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %173, i64 %idxprom147
  store i32 %171, i32* %arrayidx148, align 4
  %174 = load i32, i32* %d, align 4
  %175 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %175 to i64
  %176 = load i32*, i32** @DD, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %176, i64 %idxprom149
  store i32 %174, i32* %arrayidx150, align 4
  %177 = load i32, i32* %di, align 4
  %178 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %178 to i64
  %179 = load i32*, i32** @SS, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %179, i64 %idxprom151
  store i32 %177, i32* %arrayidx152, align 4
  %180 = load i32, i32* %dj, align 4
  %181 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %181 to i64
  %182 = load i32*, i32** @FF, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %182, i64 %idxprom153
  store i32 %180, i32* %arrayidx154, align 4
  %183 = load i32, i32* %c, align 4
  %184 = load i32, i32* @min, align 4
  %cmp155 = icmp sgt i32 %183, %184
  br i1 %cmp155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.136
  store i16 1, i16* @flag, align 2
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.end.136
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157
  %185 = load i32, i32* %j, align 4
  %dec159 = add nsw i32 %185, -1
  store i32 %dec159, i32* %j, align 4
  br label %for.cond.34

for.end.160:                                      ; preds = %for.cond.34
  %186 = load i32, i32* %nseq.addr, align 4
  %cmp161 = icmp eq i32 %186, 2
  br i1 %cmp161, label %if.then.164, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %for.end.160
  %187 = load i32, i32* %i, align 4
  %188 = load i32, i32* @n1, align 4
  %cmp163 = icmp slt i32 %187, %188
  br i1 %cmp163, label %if.then.164, label %if.end.189

if.then.164:                                      ; preds = %lor.lhs.false.162, %for.end.160
  %189 = load i32, i32* @n1, align 4
  %idxprom165 = sext i32 %189 to i64
  %190 = load i32*, i32** @CC, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %190, i64 %idxprom165
  %191 = load i32, i32* %arrayidx166, align 4
  %192 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %192 to i64
  %193 = load i32*, i32** @HH, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %193, i64 %idxprom167
  store i32 %191, i32* %arrayidx168, align 4
  %194 = load i32, i32* @n1, align 4
  %idxprom169 = sext i32 %194 to i64
  %195 = load i32*, i32** @RR, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %195, i64 %idxprom169
  %196 = load i32, i32* %arrayidx170, align 4
  %197 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %197 to i64
  %198 = load i32*, i32** @II, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %198, i64 %idxprom171
  store i32 %196, i32* %arrayidx172, align 4
  %199 = load i32, i32* @n1, align 4
  %idxprom173 = sext i32 %199 to i64
  %200 = load i32*, i32** @EE, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %200, i64 %idxprom173
  %201 = load i32, i32* %arrayidx174, align 4
  %202 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %202 to i64
  %203 = load i32*, i32** @JJ, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %203, i64 %idxprom175
  store i32 %201, i32* %arrayidx176, align 4
  %204 = load i32, i32* @n1, align 4
  %idxprom177 = sext i32 %204 to i64
  %205 = load i32*, i32** @DD, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %205, i64 %idxprom177
  %206 = load i32, i32* %arrayidx178, align 4
  %207 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %207 to i64
  %208 = load i32*, i32** @WW, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %208, i64 %idxprom179
  store i32 %206, i32* %arrayidx180, align 4
  %209 = load i32, i32* @n1, align 4
  %idxprom181 = sext i32 %209 to i64
  %210 = load i32*, i32** @SS, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %210, i64 %idxprom181
  %211 = load i32, i32* %arrayidx182, align 4
  %212 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %212 to i64
  %213 = load i32*, i32** @XX, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %213, i64 %idxprom183
  store i32 %211, i32* %arrayidx184, align 4
  %214 = load i32, i32* @n1, align 4
  %idxprom185 = sext i32 %214 to i64
  %215 = load i32*, i32** @FF, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %215, i64 %idxprom185
  %216 = load i32, i32* %arrayidx186, align 4
  %217 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %217 to i64
  %218 = load i32*, i32** @YY, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %218, i64 %idxprom187
  store i32 %216, i32* %arrayidx188, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.164, %lor.lhs.false.162
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %219 = load i32, i32* %i, align 4
  %dec191 = add nsw i32 %219, -1
  store i32 %dec191, i32* %i, align 4
  br label %for.cond.17

for.end.192:                                      ; preds = %for.cond.17
  %220 = load i32, i32* @m1, align 4
  store i32 %220, i32* @rl, align 4
  %221 = load i32, i32* @n1, align 4
  store i32 %221, i32* @cl, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %if.end.714, %for.end.192
  store i16 1, i16* %cflag, align 2
  store i16 1, i16* %rflag, align 2
  br label %for.cond.194

for.cond.194:                                     ; preds = %if.end.704, %for.cond.193
  %222 = load i16, i16* %rflag, align 2
  %conv = sext i16 %222 to i32
  %tobool195 = icmp ne i32 %conv, 0
  br i1 %tobool195, label %land.lhs.true.196, label %lor.rhs

land.lhs.true.196:                                ; preds = %for.cond.194
  %223 = load i32, i32* @m1, align 4
  %cmp197 = icmp sgt i32 %223, 1
  br i1 %cmp197, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.196, %for.cond.194
  %224 = load i16, i16* %cflag, align 2
  %conv199 = sext i16 %224 to i32
  %tobool200 = icmp ne i32 %conv199, 0
  br i1 %tobool200, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %225 = load i32, i32* @n1, align 4
  %cmp201 = icmp sgt i32 %225, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %226 = phi i1 [ false, %lor.rhs ], [ %cmp201, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.196
  %227 = phi i1 [ true, %land.lhs.true.196 ], [ %226, %land.end ]
  br i1 %227, label %for.body.203, label %for.end.705

for.body.203:                                     ; preds = %lor.end
  %228 = load i16, i16* %rflag, align 2
  %conv204 = sext i16 %228 to i32
  %tobool205 = icmp ne i32 %conv204, 0
  br i1 %tobool205, label %land.lhs.true.206, label %if.end.441

land.lhs.true.206:                                ; preds = %for.body.203
  %229 = load i32, i32* @m1, align 4
  %cmp207 = icmp sgt i32 %229, 1
  br i1 %cmp207, label %if.then.209, label %if.end.441

if.then.209:                                      ; preds = %land.lhs.true.206
  store i16 0, i16* %rflag, align 2
  %230 = load i32, i32* @m1, align 4
  %dec210 = add nsw i32 %230, -1
  store i32 %dec210, i32* @m1, align 4
  store i32 0, i32* %p, align 4
  store i32 0, i32* %c, align 4
  %231 = load i32, i32* @q, align 4
  %sub211 = sub nsw i32 0, %231
  store i32 %sub211, i32* %f, align 4
  %232 = load i32, i32* @m1, align 4
  store i32 %232, i32* %fi, align 4
  store i32 %232, i32* %ci, align 4
  %233 = load i32, i32* @m1, align 4
  %add212 = add nsw i32 %233, 1
  store i32 %add212, i32* %pi, align 4
  %234 = load i32, i32* @nn, align 4
  %add213 = add nsw i32 %234, 1
  store i32 %add213, i32* %pj, align 4
  store i32 %add213, i32* %fj, align 4
  store i32 %add213, i32* %cj, align 4
  %235 = load i32, i32* @m1, align 4
  %idxprom214 = sext i32 %235 to i64
  %236 = load i8*, i8** %A.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %236, i64 %idxprom214
  %237 = load i8, i8* %arrayidx215, align 1
  %idxprom216 = sext i8 %237 to i64
  %238 = load [256 x i32]*, [256 x i32]** @v, align 8
  %arrayidx217 = getelementptr inbounds [256 x i32], [256 x i32]* %238, i64 %idxprom216
  %arraydecay218 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx217, i32 0, i32 0
  store i32* %arraydecay218, i32** %va, align 8
  %239 = load i32, i32* @nn, align 4
  store i32 %239, i32* %j, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.393, %if.then.209
  %240 = load i32, i32* %j, align 4
  %241 = load i32, i32* @n1, align 4
  %cmp220 = icmp sge i32 %240, %241
  br i1 %cmp220, label %for.body.222, label %for.end.395

for.body.222:                                     ; preds = %for.cond.219
  %242 = load i32, i32* %f, align 4
  %243 = load i32, i32* @r, align 4
  %sub223 = sub nsw i32 %242, %243
  store i32 %sub223, i32* %f, align 4
  %244 = load i32, i32* %c, align 4
  %245 = load i32, i32* @qr, align 4
  %sub224 = sub nsw i32 %244, %245
  store i32 %sub224, i32* %c, align 4
  %246 = load i32, i32* %f, align 4
  %247 = load i32, i32* %c, align 4
  %cmp225 = icmp slt i32 %246, %247
  br i1 %cmp225, label %if.then.227, label %if.else.228

if.then.227:                                      ; preds = %for.body.222
  %248 = load i32, i32* %c, align 4
  store i32 %248, i32* %f, align 4
  %249 = load i32, i32* %ci, align 4
  store i32 %249, i32* %fi, align 4
  %250 = load i32, i32* %cj, align 4
  store i32 %250, i32* %fj, align 4
  br label %if.end.245

if.else.228:                                      ; preds = %for.body.222
  %251 = load i32, i32* %f, align 4
  %252 = load i32, i32* %c, align 4
  %cmp229 = icmp eq i32 %251, %252
  br i1 %cmp229, label %if.then.231, label %if.end.244

if.then.231:                                      ; preds = %if.else.228
  %253 = load i32, i32* %fi, align 4
  %254 = load i32, i32* %ci, align 4
  %cmp232 = icmp slt i32 %253, %254
  br i1 %cmp232, label %if.then.234, label %if.else.235

if.then.234:                                      ; preds = %if.then.231
  %255 = load i32, i32* %ci, align 4
  store i32 %255, i32* %fi, align 4
  %256 = load i32, i32* %cj, align 4
  store i32 %256, i32* %fj, align 4
  br label %if.end.243

if.else.235:                                      ; preds = %if.then.231
  %257 = load i32, i32* %fi, align 4
  %258 = load i32, i32* %ci, align 4
  %cmp236 = icmp eq i32 %257, %258
  br i1 %cmp236, label %land.lhs.true.238, label %if.end.242

land.lhs.true.238:                                ; preds = %if.else.235
  %259 = load i32, i32* %fj, align 4
  %260 = load i32, i32* %cj, align 4
  %cmp239 = icmp slt i32 %259, %260
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %land.lhs.true.238
  %261 = load i32, i32* %cj, align 4
  store i32 %261, i32* %fj, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.241, %land.lhs.true.238, %if.else.235
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.234
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.else.228
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.then.227
  %262 = load i32, i32* %j, align 4
  %idxprom246 = sext i32 %262 to i64
  %263 = load i32*, i32** @CC, align 8
  %arrayidx247 = getelementptr inbounds i32, i32* %263, i64 %idxprom246
  %264 = load i32, i32* %arrayidx247, align 4
  %265 = load i32, i32* @qr, align 4
  %sub248 = sub nsw i32 %264, %265
  store i32 %sub248, i32* %c, align 4
  %266 = load i32, i32* %j, align 4
  %idxprom249 = sext i32 %266 to i64
  %267 = load i32*, i32** @RR, align 8
  %arrayidx250 = getelementptr inbounds i32, i32* %267, i64 %idxprom249
  %268 = load i32, i32* %arrayidx250, align 4
  store i32 %268, i32* %ci, align 4
  %269 = load i32, i32* %j, align 4
  %idxprom251 = sext i32 %269 to i64
  %270 = load i32*, i32** @EE, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %270, i64 %idxprom251
  %271 = load i32, i32* %arrayidx252, align 4
  store i32 %271, i32* %cj, align 4
  %272 = load i32, i32* %j, align 4
  %idxprom253 = sext i32 %272 to i64
  %273 = load i32*, i32** @DD, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %273, i64 %idxprom253
  %274 = load i32, i32* %arrayidx254, align 4
  %275 = load i32, i32* @r, align 4
  %sub255 = sub nsw i32 %274, %275
  store i32 %sub255, i32* %d, align 4
  %276 = load i32, i32* %j, align 4
  %idxprom256 = sext i32 %276 to i64
  %277 = load i32*, i32** @SS, align 8
  %arrayidx257 = getelementptr inbounds i32, i32* %277, i64 %idxprom256
  %278 = load i32, i32* %arrayidx257, align 4
  store i32 %278, i32* %di, align 4
  %279 = load i32, i32* %j, align 4
  %idxprom258 = sext i32 %279 to i64
  %280 = load i32*, i32** @FF, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %280, i64 %idxprom258
  %281 = load i32, i32* %arrayidx259, align 4
  store i32 %281, i32* %dj, align 4
  %282 = load i32, i32* %d, align 4
  %283 = load i32, i32* %c, align 4
  %cmp260 = icmp slt i32 %282, %283
  br i1 %cmp260, label %if.then.262, label %if.else.263

if.then.262:                                      ; preds = %if.end.245
  %284 = load i32, i32* %c, align 4
  store i32 %284, i32* %d, align 4
  %285 = load i32, i32* %ci, align 4
  store i32 %285, i32* %di, align 4
  %286 = load i32, i32* %cj, align 4
  store i32 %286, i32* %dj, align 4
  br label %if.end.280

if.else.263:                                      ; preds = %if.end.245
  %287 = load i32, i32* %d, align 4
  %288 = load i32, i32* %c, align 4
  %cmp264 = icmp eq i32 %287, %288
  br i1 %cmp264, label %if.then.266, label %if.end.279

if.then.266:                                      ; preds = %if.else.263
  %289 = load i32, i32* %di, align 4
  %290 = load i32, i32* %ci, align 4
  %cmp267 = icmp slt i32 %289, %290
  br i1 %cmp267, label %if.then.269, label %if.else.270

if.then.269:                                      ; preds = %if.then.266
  %291 = load i32, i32* %ci, align 4
  store i32 %291, i32* %di, align 4
  %292 = load i32, i32* %cj, align 4
  store i32 %292, i32* %dj, align 4
  br label %if.end.278

if.else.270:                                      ; preds = %if.then.266
  %293 = load i32, i32* %di, align 4
  %294 = load i32, i32* %ci, align 4
  %cmp271 = icmp eq i32 %293, %294
  br i1 %cmp271, label %land.lhs.true.273, label %if.end.277

land.lhs.true.273:                                ; preds = %if.else.270
  %295 = load i32, i32* %dj, align 4
  %296 = load i32, i32* %cj, align 4
  %cmp274 = icmp slt i32 %295, %296
  br i1 %cmp274, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %land.lhs.true.273
  %297 = load i32, i32* %cj, align 4
  store i32 %297, i32* %dj, align 4
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.276, %land.lhs.true.273, %if.else.270
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.then.269
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.else.263
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.then.262
  store i32 0, i32* %c, align 4
  store i16 1, i16* @tt, align 2
  %298 = load i32, i32* @m1, align 4
  %idxprom281 = sext i32 %298 to i64
  %299 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx282 = getelementptr inbounds %struct.ONE*, %struct.ONE** %299, i64 %idxprom281
  %300 = load %struct.ONE*, %struct.ONE** %arrayidx282, align 8
  store %struct.ONE* %300, %struct.ONE** @z, align 8
  br label %for.cond.283

for.cond.283:                                     ; preds = %for.inc.292, %if.end.280
  %301 = load %struct.ONE*, %struct.ONE** @z, align 8
  %cmp284 = icmp ne %struct.ONE* %301, null
  br i1 %cmp284, label %for.body.286, label %for.end.294

for.body.286:                                     ; preds = %for.cond.283
  %302 = load %struct.ONE*, %struct.ONE** @z, align 8
  %COL287 = getelementptr inbounds %struct.ONE, %struct.ONE* %302, i32 0, i32 0
  %303 = load i32, i32* %COL287, align 4
  %304 = load i32, i32* %j, align 4
  %cmp288 = icmp eq i32 %303, %304
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %for.body.286
  store i16 0, i16* @tt, align 2
  br label %for.end.294

if.end.291:                                       ; preds = %for.body.286
  br label %for.inc.292

for.inc.292:                                      ; preds = %if.end.291
  %305 = load %struct.ONE*, %struct.ONE** @z, align 8
  %NEXT293 = getelementptr inbounds %struct.ONE, %struct.ONE* %305, i32 0, i32 1
  %306 = load %struct.ONE*, %struct.ONE** %NEXT293, align 8
  store %struct.ONE* %306, %struct.ONE** @z, align 8
  br label %for.cond.283

for.end.294:                                      ; preds = %if.then.290, %for.cond.283
  %307 = load i16, i16* @tt, align 2
  %tobool295 = icmp ne i16 %307, 0
  br i1 %tobool295, label %if.then.296, label %if.end.302

if.then.296:                                      ; preds = %for.end.294
  %308 = load i32, i32* %p, align 4
  %309 = load i32, i32* %j, align 4
  %idxprom297 = sext i32 %309 to i64
  %310 = load i8*, i8** %B.addr, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %310, i64 %idxprom297
  %311 = load i8, i8* %arrayidx298, align 1
  %idxprom299 = sext i8 %311 to i64
  %312 = load i32*, i32** %va, align 8
  %arrayidx300 = getelementptr inbounds i32, i32* %312, i64 %idxprom299
  %313 = load i32, i32* %arrayidx300, align 4
  %add301 = add nsw i32 %308, %313
  store i32 %add301, i32* %c, align 4
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.296, %for.end.294
  %314 = load i32, i32* %c, align 4
  %cmp303 = icmp sle i32 %314, 0
  br i1 %cmp303, label %if.then.305, label %if.else.306

if.then.305:                                      ; preds = %if.end.302
  store i32 0, i32* %c, align 4
  %315 = load i32, i32* @m1, align 4
  store i32 %315, i32* %ci, align 4
  %316 = load i32, i32* %j, align 4
  store i32 %316, i32* %cj, align 4
  br label %if.end.307

if.else.306:                                      ; preds = %if.end.302
  %317 = load i32, i32* %pi, align 4
  store i32 %317, i32* %ci, align 4
  %318 = load i32, i32* %pj, align 4
  store i32 %318, i32* %cj, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.306, %if.then.305
  %319 = load i32, i32* %c, align 4
  %320 = load i32, i32* %d, align 4
  %cmp308 = icmp slt i32 %319, %320
  br i1 %cmp308, label %if.then.310, label %if.else.311

if.then.310:                                      ; preds = %if.end.307
  %321 = load i32, i32* %d, align 4
  store i32 %321, i32* %c, align 4
  %322 = load i32, i32* %di, align 4
  store i32 %322, i32* %ci, align 4
  %323 = load i32, i32* %dj, align 4
  store i32 %323, i32* %cj, align 4
  br label %if.end.328

if.else.311:                                      ; preds = %if.end.307
  %324 = load i32, i32* %c, align 4
  %325 = load i32, i32* %d, align 4
  %cmp312 = icmp eq i32 %324, %325
  br i1 %cmp312, label %if.then.314, label %if.end.327

if.then.314:                                      ; preds = %if.else.311
  %326 = load i32, i32* %ci, align 4
  %327 = load i32, i32* %di, align 4
  %cmp315 = icmp slt i32 %326, %327
  br i1 %cmp315, label %if.then.317, label %if.else.318

if.then.317:                                      ; preds = %if.then.314
  %328 = load i32, i32* %di, align 4
  store i32 %328, i32* %ci, align 4
  %329 = load i32, i32* %dj, align 4
  store i32 %329, i32* %cj, align 4
  br label %if.end.326

if.else.318:                                      ; preds = %if.then.314
  %330 = load i32, i32* %ci, align 4
  %331 = load i32, i32* %di, align 4
  %cmp319 = icmp eq i32 %330, %331
  br i1 %cmp319, label %land.lhs.true.321, label %if.end.325

land.lhs.true.321:                                ; preds = %if.else.318
  %332 = load i32, i32* %cj, align 4
  %333 = load i32, i32* %dj, align 4
  %cmp322 = icmp slt i32 %332, %333
  br i1 %cmp322, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %land.lhs.true.321
  %334 = load i32, i32* %dj, align 4
  store i32 %334, i32* %cj, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.324, %land.lhs.true.321, %if.else.318
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.then.317
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.else.311
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.then.310
  %335 = load i32, i32* %c, align 4
  %336 = load i32, i32* %f, align 4
  %cmp329 = icmp slt i32 %335, %336
  br i1 %cmp329, label %if.then.331, label %if.else.332

if.then.331:                                      ; preds = %if.end.328
  %337 = load i32, i32* %f, align 4
  store i32 %337, i32* %c, align 4
  %338 = load i32, i32* %fi, align 4
  store i32 %338, i32* %ci, align 4
  %339 = load i32, i32* %fj, align 4
  store i32 %339, i32* %cj, align 4
  br label %if.end.349

if.else.332:                                      ; preds = %if.end.328
  %340 = load i32, i32* %c, align 4
  %341 = load i32, i32* %f, align 4
  %cmp333 = icmp eq i32 %340, %341
  br i1 %cmp333, label %if.then.335, label %if.end.348

if.then.335:                                      ; preds = %if.else.332
  %342 = load i32, i32* %ci, align 4
  %343 = load i32, i32* %fi, align 4
  %cmp336 = icmp slt i32 %342, %343
  br i1 %cmp336, label %if.then.338, label %if.else.339

if.then.338:                                      ; preds = %if.then.335
  %344 = load i32, i32* %fi, align 4
  store i32 %344, i32* %ci, align 4
  %345 = load i32, i32* %fj, align 4
  store i32 %345, i32* %cj, align 4
  br label %if.end.347

if.else.339:                                      ; preds = %if.then.335
  %346 = load i32, i32* %ci, align 4
  %347 = load i32, i32* %fi, align 4
  %cmp340 = icmp eq i32 %346, %347
  br i1 %cmp340, label %land.lhs.true.342, label %if.end.346

land.lhs.true.342:                                ; preds = %if.else.339
  %348 = load i32, i32* %cj, align 4
  %349 = load i32, i32* %fj, align 4
  %cmp343 = icmp slt i32 %348, %349
  br i1 %cmp343, label %if.then.345, label %if.end.346

if.then.345:                                      ; preds = %land.lhs.true.342
  %350 = load i32, i32* %fj, align 4
  store i32 %350, i32* %cj, align 4
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.345, %land.lhs.true.342, %if.else.339
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %if.then.338
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347, %if.else.332
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %if.then.331
  %351 = load i32, i32* %j, align 4
  %idxprom350 = sext i32 %351 to i64
  %352 = load i32*, i32** @CC, align 8
  %arrayidx351 = getelementptr inbounds i32, i32* %352, i64 %idxprom350
  %353 = load i32, i32* %arrayidx351, align 4
  store i32 %353, i32* %p, align 4
  %354 = load i32, i32* %c, align 4
  %355 = load i32, i32* %j, align 4
  %idxprom352 = sext i32 %355 to i64
  %356 = load i32*, i32** @CC, align 8
  %arrayidx353 = getelementptr inbounds i32, i32* %356, i64 %idxprom352
  store i32 %354, i32* %arrayidx353, align 4
  %357 = load i32, i32* %j, align 4
  %idxprom354 = sext i32 %357 to i64
  %358 = load i32*, i32** @RR, align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %358, i64 %idxprom354
  %359 = load i32, i32* %arrayidx355, align 4
  store i32 %359, i32* %pi, align 4
  %360 = load i32, i32* %j, align 4
  %idxprom356 = sext i32 %360 to i64
  %361 = load i32*, i32** @EE, align 8
  %arrayidx357 = getelementptr inbounds i32, i32* %361, i64 %idxprom356
  %362 = load i32, i32* %arrayidx357, align 4
  store i32 %362, i32* %pj, align 4
  %363 = load i32, i32* %ci, align 4
  %364 = load i32, i32* %j, align 4
  %idxprom358 = sext i32 %364 to i64
  %365 = load i32*, i32** @RR, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %365, i64 %idxprom358
  store i32 %363, i32* %arrayidx359, align 4
  %366 = load i32, i32* %cj, align 4
  %367 = load i32, i32* %j, align 4
  %idxprom360 = sext i32 %367 to i64
  %368 = load i32*, i32** @EE, align 8
  %arrayidx361 = getelementptr inbounds i32, i32* %368, i64 %idxprom360
  store i32 %366, i32* %arrayidx361, align 4
  %369 = load i32, i32* %d, align 4
  %370 = load i32, i32* %j, align 4
  %idxprom362 = sext i32 %370 to i64
  %371 = load i32*, i32** @DD, align 8
  %arrayidx363 = getelementptr inbounds i32, i32* %371, i64 %idxprom362
  store i32 %369, i32* %arrayidx363, align 4
  %372 = load i32, i32* %di, align 4
  %373 = load i32, i32* %j, align 4
  %idxprom364 = sext i32 %373 to i64
  %374 = load i32*, i32** @SS, align 8
  %arrayidx365 = getelementptr inbounds i32, i32* %374, i64 %idxprom364
  store i32 %372, i32* %arrayidx365, align 4
  %375 = load i32, i32* %dj, align 4
  %376 = load i32, i32* %j, align 4
  %idxprom366 = sext i32 %376 to i64
  %377 = load i32*, i32** @FF, align 8
  %arrayidx367 = getelementptr inbounds i32, i32* %377, i64 %idxprom366
  store i32 %375, i32* %arrayidx367, align 4
  %378 = load i32, i32* %c, align 4
  %379 = load i32, i32* @min, align 4
  %cmp368 = icmp sgt i32 %378, %379
  br i1 %cmp368, label %if.then.370, label %if.end.371

if.then.370:                                      ; preds = %if.end.349
  store i16 1, i16* @flag, align 2
  br label %if.end.371

if.end.371:                                       ; preds = %if.then.370, %if.end.349
  %380 = load i16, i16* %rflag, align 2
  %tobool372 = icmp ne i16 %380, 0
  br i1 %tobool372, label %if.end.392, label %land.lhs.true.373

land.lhs.true.373:                                ; preds = %if.end.371
  %381 = load i32, i32* %ci, align 4
  %382 = load i32, i32* @rl, align 4
  %cmp374 = icmp sgt i32 %381, %382
  br i1 %cmp374, label %land.lhs.true.376, label %lor.lhs.false.379

land.lhs.true.376:                                ; preds = %land.lhs.true.373
  %383 = load i32, i32* %cj, align 4
  %384 = load i32, i32* @cl, align 4
  %cmp377 = icmp sgt i32 %383, %384
  br i1 %cmp377, label %if.then.391, label %lor.lhs.false.379

lor.lhs.false.379:                                ; preds = %land.lhs.true.376, %land.lhs.true.373
  %385 = load i32, i32* %di, align 4
  %386 = load i32, i32* @rl, align 4
  %cmp380 = icmp sgt i32 %385, %386
  br i1 %cmp380, label %land.lhs.true.382, label %lor.lhs.false.385

land.lhs.true.382:                                ; preds = %lor.lhs.false.379
  %387 = load i32, i32* %dj, align 4
  %388 = load i32, i32* @cl, align 4
  %cmp383 = icmp sgt i32 %387, %388
  br i1 %cmp383, label %if.then.391, label %lor.lhs.false.385

lor.lhs.false.385:                                ; preds = %land.lhs.true.382, %lor.lhs.false.379
  %389 = load i32, i32* %fi, align 4
  %390 = load i32, i32* @rl, align 4
  %cmp386 = icmp sgt i32 %389, %390
  br i1 %cmp386, label %land.lhs.true.388, label %if.end.392

land.lhs.true.388:                                ; preds = %lor.lhs.false.385
  %391 = load i32, i32* %fj, align 4
  %392 = load i32, i32* @cl, align 4
  %cmp389 = icmp sgt i32 %391, %392
  br i1 %cmp389, label %if.then.391, label %if.end.392

if.then.391:                                      ; preds = %land.lhs.true.388, %land.lhs.true.382, %land.lhs.true.376
  store i16 1, i16* %rflag, align 2
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.391, %land.lhs.true.388, %lor.lhs.false.385, %if.end.371
  br label %for.inc.393

for.inc.393:                                      ; preds = %if.end.392
  %393 = load i32, i32* %j, align 4
  %dec394 = add nsw i32 %393, -1
  store i32 %dec394, i32* %j, align 4
  br label %for.cond.219

for.end.395:                                      ; preds = %for.cond.219
  %394 = load i32, i32* @n1, align 4
  %idxprom396 = sext i32 %394 to i64
  %395 = load i32*, i32** @CC, align 8
  %arrayidx397 = getelementptr inbounds i32, i32* %395, i64 %idxprom396
  %396 = load i32, i32* %arrayidx397, align 4
  %397 = load i32, i32* @m1, align 4
  %idxprom398 = sext i32 %397 to i64
  %398 = load i32*, i32** @HH, align 8
  %arrayidx399 = getelementptr inbounds i32, i32* %398, i64 %idxprom398
  store i32 %396, i32* %arrayidx399, align 4
  %399 = load i32, i32* @n1, align 4
  %idxprom400 = sext i32 %399 to i64
  %400 = load i32*, i32** @RR, align 8
  %arrayidx401 = getelementptr inbounds i32, i32* %400, i64 %idxprom400
  %401 = load i32, i32* %arrayidx401, align 4
  %402 = load i32, i32* @m1, align 4
  %idxprom402 = sext i32 %402 to i64
  %403 = load i32*, i32** @II, align 8
  %arrayidx403 = getelementptr inbounds i32, i32* %403, i64 %idxprom402
  store i32 %401, i32* %arrayidx403, align 4
  %404 = load i32, i32* @n1, align 4
  %idxprom404 = sext i32 %404 to i64
  %405 = load i32*, i32** @EE, align 8
  %arrayidx405 = getelementptr inbounds i32, i32* %405, i64 %idxprom404
  %406 = load i32, i32* %arrayidx405, align 4
  %407 = load i32, i32* @m1, align 4
  %idxprom406 = sext i32 %407 to i64
  %408 = load i32*, i32** @JJ, align 8
  %arrayidx407 = getelementptr inbounds i32, i32* %408, i64 %idxprom406
  store i32 %406, i32* %arrayidx407, align 4
  %409 = load i32, i32* @n1, align 4
  %idxprom408 = sext i32 %409 to i64
  %410 = load i32*, i32** @DD, align 8
  %arrayidx409 = getelementptr inbounds i32, i32* %410, i64 %idxprom408
  %411 = load i32, i32* %arrayidx409, align 4
  %412 = load i32, i32* @m1, align 4
  %idxprom410 = sext i32 %412 to i64
  %413 = load i32*, i32** @WW, align 8
  %arrayidx411 = getelementptr inbounds i32, i32* %413, i64 %idxprom410
  store i32 %411, i32* %arrayidx411, align 4
  %414 = load i32, i32* @n1, align 4
  %idxprom412 = sext i32 %414 to i64
  %415 = load i32*, i32** @SS, align 8
  %arrayidx413 = getelementptr inbounds i32, i32* %415, i64 %idxprom412
  %416 = load i32, i32* %arrayidx413, align 4
  %417 = load i32, i32* @m1, align 4
  %idxprom414 = sext i32 %417 to i64
  %418 = load i32*, i32** @XX, align 8
  %arrayidx415 = getelementptr inbounds i32, i32* %418, i64 %idxprom414
  store i32 %416, i32* %arrayidx415, align 4
  %419 = load i32, i32* @n1, align 4
  %idxprom416 = sext i32 %419 to i64
  %420 = load i32*, i32** @FF, align 8
  %arrayidx417 = getelementptr inbounds i32, i32* %420, i64 %idxprom416
  %421 = load i32, i32* %arrayidx417, align 4
  %422 = load i32, i32* @m1, align 4
  %idxprom418 = sext i32 %422 to i64
  %423 = load i32*, i32** @YY, align 8
  %arrayidx419 = getelementptr inbounds i32, i32* %423, i64 %idxprom418
  store i32 %421, i32* %arrayidx419, align 4
  %424 = load i16, i16* %cflag, align 2
  %tobool420 = icmp ne i16 %424, 0
  br i1 %tobool420, label %if.end.440, label %land.lhs.true.421

land.lhs.true.421:                                ; preds = %for.end.395
  %425 = load i32, i32* %ci, align 4
  %426 = load i32, i32* @rl, align 4
  %cmp422 = icmp sgt i32 %425, %426
  br i1 %cmp422, label %land.lhs.true.424, label %lor.lhs.false.427

land.lhs.true.424:                                ; preds = %land.lhs.true.421
  %427 = load i32, i32* %cj, align 4
  %428 = load i32, i32* @cl, align 4
  %cmp425 = icmp sgt i32 %427, %428
  br i1 %cmp425, label %if.then.439, label %lor.lhs.false.427

lor.lhs.false.427:                                ; preds = %land.lhs.true.424, %land.lhs.true.421
  %429 = load i32, i32* %di, align 4
  %430 = load i32, i32* @rl, align 4
  %cmp428 = icmp sgt i32 %429, %430
  br i1 %cmp428, label %land.lhs.true.430, label %lor.lhs.false.433

land.lhs.true.430:                                ; preds = %lor.lhs.false.427
  %431 = load i32, i32* %dj, align 4
  %432 = load i32, i32* @cl, align 4
  %cmp431 = icmp sgt i32 %431, %432
  br i1 %cmp431, label %if.then.439, label %lor.lhs.false.433

lor.lhs.false.433:                                ; preds = %land.lhs.true.430, %lor.lhs.false.427
  %433 = load i32, i32* %fi, align 4
  %434 = load i32, i32* @rl, align 4
  %cmp434 = icmp sgt i32 %433, %434
  br i1 %cmp434, label %land.lhs.true.436, label %if.end.440

land.lhs.true.436:                                ; preds = %lor.lhs.false.433
  %435 = load i32, i32* %fj, align 4
  %436 = load i32, i32* @cl, align 4
  %cmp437 = icmp sgt i32 %435, %436
  br i1 %cmp437, label %if.then.439, label %if.end.440

if.then.439:                                      ; preds = %land.lhs.true.436, %land.lhs.true.430, %land.lhs.true.424
  store i16 1, i16* %cflag, align 2
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.439, %land.lhs.true.436, %lor.lhs.false.433, %for.end.395
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %land.lhs.true.206, %for.body.203
  %437 = load i32, i32* %nseq.addr, align 4
  %cmp442 = icmp eq i32 %437, 1
  br i1 %cmp442, label %land.lhs.true.444, label %if.end.451

land.lhs.true.444:                                ; preds = %if.end.441
  %438 = load i32, i32* @n1, align 4
  %439 = load i32, i32* @m1, align 4
  %add445 = add nsw i32 %439, 1
  %cmp446 = icmp eq i32 %438, %add445
  br i1 %cmp446, label %land.lhs.true.448, label %if.end.451

land.lhs.true.448:                                ; preds = %land.lhs.true.444
  %440 = load i16, i16* %rflag, align 2
  %tobool449 = icmp ne i16 %440, 0
  br i1 %tobool449, label %if.end.451, label %if.then.450

if.then.450:                                      ; preds = %land.lhs.true.448
  store i16 0, i16* %cflag, align 2
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.450, %land.lhs.true.448, %land.lhs.true.444, %if.end.441
  %441 = load i16, i16* %cflag, align 2
  %conv452 = sext i16 %441 to i32
  %tobool453 = icmp ne i32 %conv452, 0
  br i1 %tobool453, label %land.lhs.true.454, label %if.end.704

land.lhs.true.454:                                ; preds = %if.end.451
  %442 = load i32, i32* @n1, align 4
  %cmp455 = icmp sgt i32 %442, 1
  br i1 %cmp455, label %if.then.457, label %if.end.704

if.then.457:                                      ; preds = %land.lhs.true.454
  store i16 0, i16* %cflag, align 2
  %443 = load i32, i32* @n1, align 4
  %dec458 = add nsw i32 %443, -1
  store i32 %dec458, i32* @n1, align 4
  store i32 0, i32* %c, align 4
  %444 = load i32, i32* @q, align 4
  %sub459 = sub nsw i32 0, %444
  store i32 %sub459, i32* %f, align 4
  %445 = load i32, i32* @n1, align 4
  store i32 %445, i32* %fj, align 4
  store i32 %445, i32* %cj, align 4
  %446 = load i32, i32* @n1, align 4
  %idxprom460 = sext i32 %446 to i64
  %447 = load i8*, i8** %B.addr, align 8
  %arrayidx461 = getelementptr inbounds i8, i8* %447, i64 %idxprom460
  %448 = load i8, i8* %arrayidx461, align 1
  %idxprom462 = sext i8 %448 to i64
  %449 = load [256 x i32]*, [256 x i32]** @v, align 8
  %arrayidx463 = getelementptr inbounds [256 x i32], [256 x i32]* %449, i64 %idxprom462
  %arraydecay464 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx463, i32 0, i32 0
  store i32* %arraydecay464, i32** %va, align 8
  %450 = load i32, i32* %nseq.addr, align 4
  %cmp465 = icmp eq i32 %450, 2
  br i1 %cmp465, label %if.then.470, label %lor.lhs.false.467

lor.lhs.false.467:                                ; preds = %if.then.457
  %451 = load i32, i32* @mm, align 4
  %452 = load i32, i32* @n1, align 4
  %cmp468 = icmp slt i32 %451, %452
  br i1 %cmp468, label %if.then.470, label %if.else.473

if.then.470:                                      ; preds = %lor.lhs.false.467, %if.then.457
  store i32 0, i32* %p, align 4
  %453 = load i32, i32* @mm, align 4
  %add471 = add nsw i32 %453, 1
  store i32 %add471, i32* %pi, align 4
  store i32 %add471, i32* %fi, align 4
  store i32 %add471, i32* %ci, align 4
  %454 = load i32, i32* @n1, align 4
  %add472 = add nsw i32 %454, 1
  store i32 %add472, i32* %pj, align 4
  %455 = load i32, i32* @mm, align 4
  store i32 %455, i32* %limit, align 4
  br label %if.end.481

if.else.473:                                      ; preds = %lor.lhs.false.467
  %456 = load i32, i32* @n1, align 4
  %idxprom474 = sext i32 %456 to i64
  %457 = load i32*, i32** @HH, align 8
  %arrayidx475 = getelementptr inbounds i32, i32* %457, i64 %idxprom474
  %458 = load i32, i32* %arrayidx475, align 4
  store i32 %458, i32* %p, align 4
  %459 = load i32, i32* @n1, align 4
  %idxprom476 = sext i32 %459 to i64
  %460 = load i32*, i32** @II, align 8
  %arrayidx477 = getelementptr inbounds i32, i32* %460, i64 %idxprom476
  %461 = load i32, i32* %arrayidx477, align 4
  store i32 %461, i32* %pi, align 4
  %462 = load i32, i32* @n1, align 4
  %idxprom478 = sext i32 %462 to i64
  %463 = load i32*, i32** @JJ, align 8
  %arrayidx479 = getelementptr inbounds i32, i32* %463, i64 %idxprom478
  %464 = load i32, i32* %arrayidx479, align 4
  store i32 %464, i32* %pj, align 4
  %465 = load i32, i32* @n1, align 4
  store i32 %465, i32* %fi, align 4
  store i32 %465, i32* %ci, align 4
  %466 = load i32, i32* @n1, align 4
  %sub480 = sub nsw i32 %466, 1
  store i32 %sub480, i32* %limit, align 4
  br label %if.end.481

if.end.481:                                       ; preds = %if.else.473, %if.then.470
  %467 = load i32, i32* %limit, align 4
  store i32 %467, i32* %i, align 4
  br label %for.cond.482

for.cond.482:                                     ; preds = %for.inc.656, %if.end.481
  %468 = load i32, i32* %i, align 4
  %469 = load i32, i32* @m1, align 4
  %cmp483 = icmp sge i32 %468, %469
  br i1 %cmp483, label %for.body.485, label %for.end.658

for.body.485:                                     ; preds = %for.cond.482
  %470 = load i32, i32* %f, align 4
  %471 = load i32, i32* @r, align 4
  %sub486 = sub nsw i32 %470, %471
  store i32 %sub486, i32* %f, align 4
  %472 = load i32, i32* %c, align 4
  %473 = load i32, i32* @qr, align 4
  %sub487 = sub nsw i32 %472, %473
  store i32 %sub487, i32* %c, align 4
  %474 = load i32, i32* %f, align 4
  %475 = load i32, i32* %c, align 4
  %cmp488 = icmp slt i32 %474, %475
  br i1 %cmp488, label %if.then.490, label %if.else.491

if.then.490:                                      ; preds = %for.body.485
  %476 = load i32, i32* %c, align 4
  store i32 %476, i32* %f, align 4
  %477 = load i32, i32* %ci, align 4
  store i32 %477, i32* %fi, align 4
  %478 = load i32, i32* %cj, align 4
  store i32 %478, i32* %fj, align 4
  br label %if.end.508

if.else.491:                                      ; preds = %for.body.485
  %479 = load i32, i32* %f, align 4
  %480 = load i32, i32* %c, align 4
  %cmp492 = icmp eq i32 %479, %480
  br i1 %cmp492, label %if.then.494, label %if.end.507

if.then.494:                                      ; preds = %if.else.491
  %481 = load i32, i32* %fi, align 4
  %482 = load i32, i32* %ci, align 4
  %cmp495 = icmp slt i32 %481, %482
  br i1 %cmp495, label %if.then.497, label %if.else.498

if.then.497:                                      ; preds = %if.then.494
  %483 = load i32, i32* %ci, align 4
  store i32 %483, i32* %fi, align 4
  %484 = load i32, i32* %cj, align 4
  store i32 %484, i32* %fj, align 4
  br label %if.end.506

if.else.498:                                      ; preds = %if.then.494
  %485 = load i32, i32* %fi, align 4
  %486 = load i32, i32* %ci, align 4
  %cmp499 = icmp eq i32 %485, %486
  br i1 %cmp499, label %land.lhs.true.501, label %if.end.505

land.lhs.true.501:                                ; preds = %if.else.498
  %487 = load i32, i32* %fj, align 4
  %488 = load i32, i32* %cj, align 4
  %cmp502 = icmp slt i32 %487, %488
  br i1 %cmp502, label %if.then.504, label %if.end.505

if.then.504:                                      ; preds = %land.lhs.true.501
  %489 = load i32, i32* %cj, align 4
  store i32 %489, i32* %fj, align 4
  br label %if.end.505

if.end.505:                                       ; preds = %if.then.504, %land.lhs.true.501, %if.else.498
  br label %if.end.506

if.end.506:                                       ; preds = %if.end.505, %if.then.497
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.506, %if.else.491
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %if.then.490
  %490 = load i32, i32* %i, align 4
  %idxprom509 = sext i32 %490 to i64
  %491 = load i32*, i32** @HH, align 8
  %arrayidx510 = getelementptr inbounds i32, i32* %491, i64 %idxprom509
  %492 = load i32, i32* %arrayidx510, align 4
  %493 = load i32, i32* @qr, align 4
  %sub511 = sub nsw i32 %492, %493
  store i32 %sub511, i32* %c, align 4
  %494 = load i32, i32* %i, align 4
  %idxprom512 = sext i32 %494 to i64
  %495 = load i32*, i32** @II, align 8
  %arrayidx513 = getelementptr inbounds i32, i32* %495, i64 %idxprom512
  %496 = load i32, i32* %arrayidx513, align 4
  store i32 %496, i32* %ci, align 4
  %497 = load i32, i32* %i, align 4
  %idxprom514 = sext i32 %497 to i64
  %498 = load i32*, i32** @JJ, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %498, i64 %idxprom514
  %499 = load i32, i32* %arrayidx515, align 4
  store i32 %499, i32* %cj, align 4
  %500 = load i32, i32* %i, align 4
  %idxprom516 = sext i32 %500 to i64
  %501 = load i32*, i32** @WW, align 8
  %arrayidx517 = getelementptr inbounds i32, i32* %501, i64 %idxprom516
  %502 = load i32, i32* %arrayidx517, align 4
  %503 = load i32, i32* @r, align 4
  %sub518 = sub nsw i32 %502, %503
  store i32 %sub518, i32* %d, align 4
  %504 = load i32, i32* %i, align 4
  %idxprom519 = sext i32 %504 to i64
  %505 = load i32*, i32** @XX, align 8
  %arrayidx520 = getelementptr inbounds i32, i32* %505, i64 %idxprom519
  %506 = load i32, i32* %arrayidx520, align 4
  store i32 %506, i32* %di, align 4
  %507 = load i32, i32* %i, align 4
  %idxprom521 = sext i32 %507 to i64
  %508 = load i32*, i32** @YY, align 8
  %arrayidx522 = getelementptr inbounds i32, i32* %508, i64 %idxprom521
  %509 = load i32, i32* %arrayidx522, align 4
  store i32 %509, i32* %dj, align 4
  %510 = load i32, i32* %d, align 4
  %511 = load i32, i32* %c, align 4
  %cmp523 = icmp slt i32 %510, %511
  br i1 %cmp523, label %if.then.525, label %if.else.526

if.then.525:                                      ; preds = %if.end.508
  %512 = load i32, i32* %c, align 4
  store i32 %512, i32* %d, align 4
  %513 = load i32, i32* %ci, align 4
  store i32 %513, i32* %di, align 4
  %514 = load i32, i32* %cj, align 4
  store i32 %514, i32* %dj, align 4
  br label %if.end.543

if.else.526:                                      ; preds = %if.end.508
  %515 = load i32, i32* %d, align 4
  %516 = load i32, i32* %c, align 4
  %cmp527 = icmp eq i32 %515, %516
  br i1 %cmp527, label %if.then.529, label %if.end.542

if.then.529:                                      ; preds = %if.else.526
  %517 = load i32, i32* %di, align 4
  %518 = load i32, i32* %ci, align 4
  %cmp530 = icmp slt i32 %517, %518
  br i1 %cmp530, label %if.then.532, label %if.else.533

if.then.532:                                      ; preds = %if.then.529
  %519 = load i32, i32* %ci, align 4
  store i32 %519, i32* %di, align 4
  %520 = load i32, i32* %cj, align 4
  store i32 %520, i32* %dj, align 4
  br label %if.end.541

if.else.533:                                      ; preds = %if.then.529
  %521 = load i32, i32* %di, align 4
  %522 = load i32, i32* %ci, align 4
  %cmp534 = icmp eq i32 %521, %522
  br i1 %cmp534, label %land.lhs.true.536, label %if.end.540

land.lhs.true.536:                                ; preds = %if.else.533
  %523 = load i32, i32* %dj, align 4
  %524 = load i32, i32* %cj, align 4
  %cmp537 = icmp slt i32 %523, %524
  br i1 %cmp537, label %if.then.539, label %if.end.540

if.then.539:                                      ; preds = %land.lhs.true.536
  %525 = load i32, i32* %cj, align 4
  store i32 %525, i32* %dj, align 4
  br label %if.end.540

if.end.540:                                       ; preds = %if.then.539, %land.lhs.true.536, %if.else.533
  br label %if.end.541

if.end.541:                                       ; preds = %if.end.540, %if.then.532
  br label %if.end.542

if.end.542:                                       ; preds = %if.end.541, %if.else.526
  br label %if.end.543

if.end.543:                                       ; preds = %if.end.542, %if.then.525
  store i32 0, i32* %c, align 4
  store i16 1, i16* @tt, align 2
  %526 = load i32, i32* %i, align 4
  %idxprom544 = sext i32 %526 to i64
  %527 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx545 = getelementptr inbounds %struct.ONE*, %struct.ONE** %527, i64 %idxprom544
  %528 = load %struct.ONE*, %struct.ONE** %arrayidx545, align 8
  store %struct.ONE* %528, %struct.ONE** @z, align 8
  br label %for.cond.546

for.cond.546:                                     ; preds = %for.inc.555, %if.end.543
  %529 = load %struct.ONE*, %struct.ONE** @z, align 8
  %cmp547 = icmp ne %struct.ONE* %529, null
  br i1 %cmp547, label %for.body.549, label %for.end.557

for.body.549:                                     ; preds = %for.cond.546
  %530 = load %struct.ONE*, %struct.ONE** @z, align 8
  %COL550 = getelementptr inbounds %struct.ONE, %struct.ONE* %530, i32 0, i32 0
  %531 = load i32, i32* %COL550, align 4
  %532 = load i32, i32* @n1, align 4
  %cmp551 = icmp eq i32 %531, %532
  br i1 %cmp551, label %if.then.553, label %if.end.554

if.then.553:                                      ; preds = %for.body.549
  store i16 0, i16* @tt, align 2
  br label %for.end.557

if.end.554:                                       ; preds = %for.body.549
  br label %for.inc.555

for.inc.555:                                      ; preds = %if.end.554
  %533 = load %struct.ONE*, %struct.ONE** @z, align 8
  %NEXT556 = getelementptr inbounds %struct.ONE, %struct.ONE* %533, i32 0, i32 1
  %534 = load %struct.ONE*, %struct.ONE** %NEXT556, align 8
  store %struct.ONE* %534, %struct.ONE** @z, align 8
  br label %for.cond.546

for.end.557:                                      ; preds = %if.then.553, %for.cond.546
  %535 = load i16, i16* @tt, align 2
  %tobool558 = icmp ne i16 %535, 0
  br i1 %tobool558, label %if.then.559, label %if.end.565

if.then.559:                                      ; preds = %for.end.557
  %536 = load i32, i32* %p, align 4
  %537 = load i32, i32* %i, align 4
  %idxprom560 = sext i32 %537 to i64
  %538 = load i8*, i8** %A.addr, align 8
  %arrayidx561 = getelementptr inbounds i8, i8* %538, i64 %idxprom560
  %539 = load i8, i8* %arrayidx561, align 1
  %idxprom562 = sext i8 %539 to i64
  %540 = load i32*, i32** %va, align 8
  %arrayidx563 = getelementptr inbounds i32, i32* %540, i64 %idxprom562
  %541 = load i32, i32* %arrayidx563, align 4
  %add564 = add nsw i32 %536, %541
  store i32 %add564, i32* %c, align 4
  br label %if.end.565

if.end.565:                                       ; preds = %if.then.559, %for.end.557
  %542 = load i32, i32* %c, align 4
  %cmp566 = icmp sle i32 %542, 0
  br i1 %cmp566, label %if.then.568, label %if.else.569

if.then.568:                                      ; preds = %if.end.565
  store i32 0, i32* %c, align 4
  %543 = load i32, i32* %i, align 4
  store i32 %543, i32* %ci, align 4
  %544 = load i32, i32* @n1, align 4
  store i32 %544, i32* %cj, align 4
  br label %if.end.570

if.else.569:                                      ; preds = %if.end.565
  %545 = load i32, i32* %pi, align 4
  store i32 %545, i32* %ci, align 4
  %546 = load i32, i32* %pj, align 4
  store i32 %546, i32* %cj, align 4
  br label %if.end.570

if.end.570:                                       ; preds = %if.else.569, %if.then.568
  %547 = load i32, i32* %c, align 4
  %548 = load i32, i32* %d, align 4
  %cmp571 = icmp slt i32 %547, %548
  br i1 %cmp571, label %if.then.573, label %if.else.574

if.then.573:                                      ; preds = %if.end.570
  %549 = load i32, i32* %d, align 4
  store i32 %549, i32* %c, align 4
  %550 = load i32, i32* %di, align 4
  store i32 %550, i32* %ci, align 4
  %551 = load i32, i32* %dj, align 4
  store i32 %551, i32* %cj, align 4
  br label %if.end.591

if.else.574:                                      ; preds = %if.end.570
  %552 = load i32, i32* %c, align 4
  %553 = load i32, i32* %d, align 4
  %cmp575 = icmp eq i32 %552, %553
  br i1 %cmp575, label %if.then.577, label %if.end.590

if.then.577:                                      ; preds = %if.else.574
  %554 = load i32, i32* %ci, align 4
  %555 = load i32, i32* %di, align 4
  %cmp578 = icmp slt i32 %554, %555
  br i1 %cmp578, label %if.then.580, label %if.else.581

if.then.580:                                      ; preds = %if.then.577
  %556 = load i32, i32* %di, align 4
  store i32 %556, i32* %ci, align 4
  %557 = load i32, i32* %dj, align 4
  store i32 %557, i32* %cj, align 4
  br label %if.end.589

if.else.581:                                      ; preds = %if.then.577
  %558 = load i32, i32* %ci, align 4
  %559 = load i32, i32* %di, align 4
  %cmp582 = icmp eq i32 %558, %559
  br i1 %cmp582, label %land.lhs.true.584, label %if.end.588

land.lhs.true.584:                                ; preds = %if.else.581
  %560 = load i32, i32* %cj, align 4
  %561 = load i32, i32* %dj, align 4
  %cmp585 = icmp slt i32 %560, %561
  br i1 %cmp585, label %if.then.587, label %if.end.588

if.then.587:                                      ; preds = %land.lhs.true.584
  %562 = load i32, i32* %dj, align 4
  store i32 %562, i32* %cj, align 4
  br label %if.end.588

if.end.588:                                       ; preds = %if.then.587, %land.lhs.true.584, %if.else.581
  br label %if.end.589

if.end.589:                                       ; preds = %if.end.588, %if.then.580
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.589, %if.else.574
  br label %if.end.591

if.end.591:                                       ; preds = %if.end.590, %if.then.573
  %563 = load i32, i32* %c, align 4
  %564 = load i32, i32* %f, align 4
  %cmp592 = icmp slt i32 %563, %564
  br i1 %cmp592, label %if.then.594, label %if.else.595

if.then.594:                                      ; preds = %if.end.591
  %565 = load i32, i32* %f, align 4
  store i32 %565, i32* %c, align 4
  %566 = load i32, i32* %fi, align 4
  store i32 %566, i32* %ci, align 4
  %567 = load i32, i32* %fj, align 4
  store i32 %567, i32* %cj, align 4
  br label %if.end.612

if.else.595:                                      ; preds = %if.end.591
  %568 = load i32, i32* %c, align 4
  %569 = load i32, i32* %f, align 4
  %cmp596 = icmp eq i32 %568, %569
  br i1 %cmp596, label %if.then.598, label %if.end.611

if.then.598:                                      ; preds = %if.else.595
  %570 = load i32, i32* %ci, align 4
  %571 = load i32, i32* %fi, align 4
  %cmp599 = icmp slt i32 %570, %571
  br i1 %cmp599, label %if.then.601, label %if.else.602

if.then.601:                                      ; preds = %if.then.598
  %572 = load i32, i32* %fi, align 4
  store i32 %572, i32* %ci, align 4
  %573 = load i32, i32* %fj, align 4
  store i32 %573, i32* %cj, align 4
  br label %if.end.610

if.else.602:                                      ; preds = %if.then.598
  %574 = load i32, i32* %ci, align 4
  %575 = load i32, i32* %fi, align 4
  %cmp603 = icmp eq i32 %574, %575
  br i1 %cmp603, label %land.lhs.true.605, label %if.end.609

land.lhs.true.605:                                ; preds = %if.else.602
  %576 = load i32, i32* %cj, align 4
  %577 = load i32, i32* %fj, align 4
  %cmp606 = icmp slt i32 %576, %577
  br i1 %cmp606, label %if.then.608, label %if.end.609

if.then.608:                                      ; preds = %land.lhs.true.605
  %578 = load i32, i32* %fj, align 4
  store i32 %578, i32* %cj, align 4
  br label %if.end.609

if.end.609:                                       ; preds = %if.then.608, %land.lhs.true.605, %if.else.602
  br label %if.end.610

if.end.610:                                       ; preds = %if.end.609, %if.then.601
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.610, %if.else.595
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.611, %if.then.594
  %579 = load i32, i32* %i, align 4
  %idxprom613 = sext i32 %579 to i64
  %580 = load i32*, i32** @HH, align 8
  %arrayidx614 = getelementptr inbounds i32, i32* %580, i64 %idxprom613
  %581 = load i32, i32* %arrayidx614, align 4
  store i32 %581, i32* %p, align 4
  %582 = load i32, i32* %c, align 4
  %583 = load i32, i32* %i, align 4
  %idxprom615 = sext i32 %583 to i64
  %584 = load i32*, i32** @HH, align 8
  %arrayidx616 = getelementptr inbounds i32, i32* %584, i64 %idxprom615
  store i32 %582, i32* %arrayidx616, align 4
  %585 = load i32, i32* %i, align 4
  %idxprom617 = sext i32 %585 to i64
  %586 = load i32*, i32** @II, align 8
  %arrayidx618 = getelementptr inbounds i32, i32* %586, i64 %idxprom617
  %587 = load i32, i32* %arrayidx618, align 4
  store i32 %587, i32* %pi, align 4
  %588 = load i32, i32* %i, align 4
  %idxprom619 = sext i32 %588 to i64
  %589 = load i32*, i32** @JJ, align 8
  %arrayidx620 = getelementptr inbounds i32, i32* %589, i64 %idxprom619
  %590 = load i32, i32* %arrayidx620, align 4
  store i32 %590, i32* %pj, align 4
  %591 = load i32, i32* %ci, align 4
  %592 = load i32, i32* %i, align 4
  %idxprom621 = sext i32 %592 to i64
  %593 = load i32*, i32** @II, align 8
  %arrayidx622 = getelementptr inbounds i32, i32* %593, i64 %idxprom621
  store i32 %591, i32* %arrayidx622, align 4
  %594 = load i32, i32* %cj, align 4
  %595 = load i32, i32* %i, align 4
  %idxprom623 = sext i32 %595 to i64
  %596 = load i32*, i32** @JJ, align 8
  %arrayidx624 = getelementptr inbounds i32, i32* %596, i64 %idxprom623
  store i32 %594, i32* %arrayidx624, align 4
  %597 = load i32, i32* %d, align 4
  %598 = load i32, i32* %i, align 4
  %idxprom625 = sext i32 %598 to i64
  %599 = load i32*, i32** @WW, align 8
  %arrayidx626 = getelementptr inbounds i32, i32* %599, i64 %idxprom625
  store i32 %597, i32* %arrayidx626, align 4
  %600 = load i32, i32* %di, align 4
  %601 = load i32, i32* %i, align 4
  %idxprom627 = sext i32 %601 to i64
  %602 = load i32*, i32** @XX, align 8
  %arrayidx628 = getelementptr inbounds i32, i32* %602, i64 %idxprom627
  store i32 %600, i32* %arrayidx628, align 4
  %603 = load i32, i32* %dj, align 4
  %604 = load i32, i32* %i, align 4
  %idxprom629 = sext i32 %604 to i64
  %605 = load i32*, i32** @YY, align 8
  %arrayidx630 = getelementptr inbounds i32, i32* %605, i64 %idxprom629
  store i32 %603, i32* %arrayidx630, align 4
  %606 = load i32, i32* %c, align 4
  %607 = load i32, i32* @min, align 4
  %cmp631 = icmp sgt i32 %606, %607
  br i1 %cmp631, label %if.then.633, label %if.end.634

if.then.633:                                      ; preds = %if.end.612
  store i16 1, i16* @flag, align 2
  br label %if.end.634

if.end.634:                                       ; preds = %if.then.633, %if.end.612
  %608 = load i16, i16* %cflag, align 2
  %tobool635 = icmp ne i16 %608, 0
  br i1 %tobool635, label %if.end.655, label %land.lhs.true.636

land.lhs.true.636:                                ; preds = %if.end.634
  %609 = load i32, i32* %ci, align 4
  %610 = load i32, i32* @rl, align 4
  %cmp637 = icmp sgt i32 %609, %610
  br i1 %cmp637, label %land.lhs.true.639, label %lor.lhs.false.642

land.lhs.true.639:                                ; preds = %land.lhs.true.636
  %611 = load i32, i32* %cj, align 4
  %612 = load i32, i32* @cl, align 4
  %cmp640 = icmp sgt i32 %611, %612
  br i1 %cmp640, label %if.then.654, label %lor.lhs.false.642

lor.lhs.false.642:                                ; preds = %land.lhs.true.639, %land.lhs.true.636
  %613 = load i32, i32* %di, align 4
  %614 = load i32, i32* @rl, align 4
  %cmp643 = icmp sgt i32 %613, %614
  br i1 %cmp643, label %land.lhs.true.645, label %lor.lhs.false.648

land.lhs.true.645:                                ; preds = %lor.lhs.false.642
  %615 = load i32, i32* %dj, align 4
  %616 = load i32, i32* @cl, align 4
  %cmp646 = icmp sgt i32 %615, %616
  br i1 %cmp646, label %if.then.654, label %lor.lhs.false.648

lor.lhs.false.648:                                ; preds = %land.lhs.true.645, %lor.lhs.false.642
  %617 = load i32, i32* %fi, align 4
  %618 = load i32, i32* @rl, align 4
  %cmp649 = icmp sgt i32 %617, %618
  br i1 %cmp649, label %land.lhs.true.651, label %if.end.655

land.lhs.true.651:                                ; preds = %lor.lhs.false.648
  %619 = load i32, i32* %fj, align 4
  %620 = load i32, i32* @cl, align 4
  %cmp652 = icmp sgt i32 %619, %620
  br i1 %cmp652, label %if.then.654, label %if.end.655

if.then.654:                                      ; preds = %land.lhs.true.651, %land.lhs.true.645, %land.lhs.true.639
  store i16 1, i16* %cflag, align 2
  br label %if.end.655

if.end.655:                                       ; preds = %if.then.654, %land.lhs.true.651, %lor.lhs.false.648, %if.end.634
  br label %for.inc.656

for.inc.656:                                      ; preds = %if.end.655
  %621 = load i32, i32* %i, align 4
  %dec657 = add nsw i32 %621, -1
  store i32 %dec657, i32* %i, align 4
  br label %for.cond.482

for.end.658:                                      ; preds = %for.cond.482
  %622 = load i32, i32* @m1, align 4
  %idxprom659 = sext i32 %622 to i64
  %623 = load i32*, i32** @HH, align 8
  %arrayidx660 = getelementptr inbounds i32, i32* %623, i64 %idxprom659
  %624 = load i32, i32* %arrayidx660, align 4
  %625 = load i32, i32* @n1, align 4
  %idxprom661 = sext i32 %625 to i64
  %626 = load i32*, i32** @CC, align 8
  %arrayidx662 = getelementptr inbounds i32, i32* %626, i64 %idxprom661
  store i32 %624, i32* %arrayidx662, align 4
  %627 = load i32, i32* @m1, align 4
  %idxprom663 = sext i32 %627 to i64
  %628 = load i32*, i32** @II, align 8
  %arrayidx664 = getelementptr inbounds i32, i32* %628, i64 %idxprom663
  %629 = load i32, i32* %arrayidx664, align 4
  %630 = load i32, i32* @n1, align 4
  %idxprom665 = sext i32 %630 to i64
  %631 = load i32*, i32** @RR, align 8
  %arrayidx666 = getelementptr inbounds i32, i32* %631, i64 %idxprom665
  store i32 %629, i32* %arrayidx666, align 4
  %632 = load i32, i32* @m1, align 4
  %idxprom667 = sext i32 %632 to i64
  %633 = load i32*, i32** @JJ, align 8
  %arrayidx668 = getelementptr inbounds i32, i32* %633, i64 %idxprom667
  %634 = load i32, i32* %arrayidx668, align 4
  %635 = load i32, i32* @n1, align 4
  %idxprom669 = sext i32 %635 to i64
  %636 = load i32*, i32** @EE, align 8
  %arrayidx670 = getelementptr inbounds i32, i32* %636, i64 %idxprom669
  store i32 %634, i32* %arrayidx670, align 4
  %637 = load i32, i32* @m1, align 4
  %idxprom671 = sext i32 %637 to i64
  %638 = load i32*, i32** @WW, align 8
  %arrayidx672 = getelementptr inbounds i32, i32* %638, i64 %idxprom671
  %639 = load i32, i32* %arrayidx672, align 4
  %640 = load i32, i32* @n1, align 4
  %idxprom673 = sext i32 %640 to i64
  %641 = load i32*, i32** @DD, align 8
  %arrayidx674 = getelementptr inbounds i32, i32* %641, i64 %idxprom673
  store i32 %639, i32* %arrayidx674, align 4
  %642 = load i32, i32* @m1, align 4
  %idxprom675 = sext i32 %642 to i64
  %643 = load i32*, i32** @XX, align 8
  %arrayidx676 = getelementptr inbounds i32, i32* %643, i64 %idxprom675
  %644 = load i32, i32* %arrayidx676, align 4
  %645 = load i32, i32* @n1, align 4
  %idxprom677 = sext i32 %645 to i64
  %646 = load i32*, i32** @SS, align 8
  %arrayidx678 = getelementptr inbounds i32, i32* %646, i64 %idxprom677
  store i32 %644, i32* %arrayidx678, align 4
  %647 = load i32, i32* @m1, align 4
  %idxprom679 = sext i32 %647 to i64
  %648 = load i32*, i32** @YY, align 8
  %arrayidx680 = getelementptr inbounds i32, i32* %648, i64 %idxprom679
  %649 = load i32, i32* %arrayidx680, align 4
  %650 = load i32, i32* @n1, align 4
  %idxprom681 = sext i32 %650 to i64
  %651 = load i32*, i32** @FF, align 8
  %arrayidx682 = getelementptr inbounds i32, i32* %651, i64 %idxprom681
  store i32 %649, i32* %arrayidx682, align 4
  %652 = load i16, i16* %rflag, align 2
  %tobool683 = icmp ne i16 %652, 0
  br i1 %tobool683, label %if.end.703, label %land.lhs.true.684

land.lhs.true.684:                                ; preds = %for.end.658
  %653 = load i32, i32* %ci, align 4
  %654 = load i32, i32* @rl, align 4
  %cmp685 = icmp sgt i32 %653, %654
  br i1 %cmp685, label %land.lhs.true.687, label %lor.lhs.false.690

land.lhs.true.687:                                ; preds = %land.lhs.true.684
  %655 = load i32, i32* %cj, align 4
  %656 = load i32, i32* @cl, align 4
  %cmp688 = icmp sgt i32 %655, %656
  br i1 %cmp688, label %if.then.702, label %lor.lhs.false.690

lor.lhs.false.690:                                ; preds = %land.lhs.true.687, %land.lhs.true.684
  %657 = load i32, i32* %di, align 4
  %658 = load i32, i32* @rl, align 4
  %cmp691 = icmp sgt i32 %657, %658
  br i1 %cmp691, label %land.lhs.true.693, label %lor.lhs.false.696

land.lhs.true.693:                                ; preds = %lor.lhs.false.690
  %659 = load i32, i32* %dj, align 4
  %660 = load i32, i32* @cl, align 4
  %cmp694 = icmp sgt i32 %659, %660
  br i1 %cmp694, label %if.then.702, label %lor.lhs.false.696

lor.lhs.false.696:                                ; preds = %land.lhs.true.693, %lor.lhs.false.690
  %661 = load i32, i32* %fi, align 4
  %662 = load i32, i32* @rl, align 4
  %cmp697 = icmp sgt i32 %661, %662
  br i1 %cmp697, label %land.lhs.true.699, label %if.end.703

land.lhs.true.699:                                ; preds = %lor.lhs.false.696
  %663 = load i32, i32* %fj, align 4
  %664 = load i32, i32* @cl, align 4
  %cmp700 = icmp sgt i32 %663, %664
  br i1 %cmp700, label %if.then.702, label %if.end.703

if.then.702:                                      ; preds = %land.lhs.true.699, %land.lhs.true.693, %land.lhs.true.687
  store i16 1, i16* %rflag, align 2
  br label %if.end.703

if.end.703:                                       ; preds = %if.then.702, %land.lhs.true.699, %lor.lhs.false.696, %for.end.658
  br label %if.end.704

if.end.704:                                       ; preds = %if.end.703, %land.lhs.true.454, %if.end.451
  br label %for.cond.194

for.end.705:                                      ; preds = %lor.end
  %665 = load i32, i32* @m1, align 4
  %cmp706 = icmp eq i32 %665, 1
  br i1 %cmp706, label %land.lhs.true.708, label %lor.lhs.false.711

land.lhs.true.708:                                ; preds = %for.end.705
  %666 = load i32, i32* @n1, align 4
  %cmp709 = icmp eq i32 %666, 1
  br i1 %cmp709, label %if.then.713, label %lor.lhs.false.711

lor.lhs.false.711:                                ; preds = %land.lhs.true.708, %for.end.705
  %call = call i32 @no_cross()
  %tobool712 = icmp ne i32 %call, 0
  br i1 %tobool712, label %if.then.713, label %if.end.714

if.then.713:                                      ; preds = %lor.lhs.false.711, %land.lhs.true.708
  br label %for.end.715

if.end.714:                                       ; preds = %lor.lhs.false.711
  br label %for.cond.193

for.end.715:                                      ; preds = %if.then.713
  %667 = load i32, i32* @m1, align 4
  %dec716 = add nsw i32 %667, -1
  store i32 %dec716, i32* @m1, align 4
  %668 = load i32, i32* @n1, align 4
  %dec717 = add nsw i32 %668, -1
  store i32 %dec717, i32* @n1, align 4
  %669 = load i32, i32* %retval
  ret i32 %669
}

; Function Attrs: nounwind uwtable
define i32 @small_pass(i8* %A, i8* %B, i32 %count, i32 %nseq) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %nseq.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %f = alloca i32, align 4
  %d = alloca i32, align 4
  %p = alloca i32, align 4
  %ci = alloca i32, align 4
  %cj = alloca i32, align 4
  %di = alloca i32, align 4
  %dj = alloca i32, align 4
  %fi = alloca i32, align 4
  %fj = alloca i32, align 4
  %pi = alloca i32, align 4
  %pj = alloca i32, align 4
  %va = alloca i32*, align 8
  %limit = alloca i32, align 4
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  %0 = load i32, i32* @n1, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* @nn, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** @CC, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %5 = load i32, i32* @m1, align 4
  %6 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i32*, i32** @RR, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  store i32 %5, i32* %arrayidx2, align 4
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i32*, i32** @EE, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  store i32 %8, i32* %arrayidx4, align 4
  %11 = load i32, i32* @q, align 4
  %sub = sub nsw i32 0, %11
  %12 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load i32*, i32** @DD, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  store i32 %sub, i32* %arrayidx6, align 4
  %14 = load i32, i32* @m1, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load i32*, i32** @SS, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom7
  store i32 %14, i32* %arrayidx8, align 4
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load i32*, i32** @FF, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 %idxprom9
  store i32 %17, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* @m1, align 4
  %add11 = add nsw i32 %21, 1
  store i32 %add11, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.158, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* @mm, align 4
  %cmp13 = icmp sle i32 %22, %23
  br i1 %cmp13, label %for.body.14, label %for.end.160

for.body.14:                                      ; preds = %for.cond.12
  store i32 0, i32* %c, align 4
  %24 = load i32, i32* @q, align 4
  %sub15 = sub nsw i32 0, %24
  store i32 %sub15, i32* %f, align 4
  %25 = load i32, i32* %i, align 4
  store i32 %25, i32* %fi, align 4
  store i32 %25, i32* %ci, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %26 to i64
  %27 = load i8*, i8** %A.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom16
  %28 = load i8, i8* %arrayidx17, align 1
  %idxprom18 = sext i8 %28 to i64
  %29 = load [256 x i32]*, [256 x i32]** @v, align 8
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* %29, i64 %idxprom18
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx19, i32 0, i32 0
  store i32* %arraydecay, i32** %va, align 8
  %30 = load i32, i32* %nseq.addr, align 4
  %cmp20 = icmp eq i32 %30, 2
  br i1 %cmp20, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.14
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* @n1, align 4
  %cmp21 = icmp sle i32 %31, %32
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body.14
  store i32 0, i32* %p, align 4
  %33 = load i32, i32* %i, align 4
  %sub22 = sub nsw i32 %33, 1
  store i32 %sub22, i32* %pi, align 4
  %34 = load i32, i32* @n1, align 4
  store i32 %34, i32* %pj, align 4
  store i32 %34, i32* %fj, align 4
  store i32 %34, i32* %cj, align 4
  %35 = load i32, i32* @n1, align 4
  %add23 = add nsw i32 %35, 1
  store i32 %add23, i32* %limit, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %36 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %36 to i64
  %37 = load i32*, i32** @CC, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %37, i64 %idxprom24
  %38 = load i32, i32* %arrayidx25, align 4
  store i32 %38, i32* %p, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %39 to i64
  %40 = load i32*, i32** @RR, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %40, i64 %idxprom26
  %41 = load i32, i32* %arrayidx27, align 4
  store i32 %41, i32* %pi, align 4
  %42 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %42 to i64
  %43 = load i32*, i32** @EE, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %43, i64 %idxprom28
  %44 = load i32, i32* %arrayidx29, align 4
  store i32 %44, i32* %pj, align 4
  %45 = load i32, i32* %i, align 4
  store i32 %45, i32* %fj, align 4
  store i32 %45, i32* %cj, align 4
  %46 = load i32, i32* %i, align 4
  %add30 = add nsw i32 %46, 1
  store i32 %add30, i32* %limit, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %47 = load i32, i32* %limit, align 4
  store i32 %47, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.155, %if.end
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* @nn, align 4
  %cmp32 = icmp sle i32 %48, %49
  br i1 %cmp32, label %for.body.33, label %for.end.157

for.body.33:                                      ; preds = %for.cond.31
  %50 = load i32, i32* %f, align 4
  %51 = load i32, i32* @r, align 4
  %sub34 = sub nsw i32 %50, %51
  store i32 %sub34, i32* %f, align 4
  %52 = load i32, i32* %c, align 4
  %53 = load i32, i32* @qr, align 4
  %sub35 = sub nsw i32 %52, %53
  store i32 %sub35, i32* %c, align 4
  %54 = load i32, i32* %f, align 4
  %55 = load i32, i32* %c, align 4
  %cmp36 = icmp slt i32 %54, %55
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %for.body.33
  %56 = load i32, i32* %c, align 4
  store i32 %56, i32* %f, align 4
  %57 = load i32, i32* %ci, align 4
  store i32 %57, i32* %fi, align 4
  %58 = load i32, i32* %cj, align 4
  store i32 %58, i32* %fj, align 4
  br label %if.end.50

if.else.38:                                       ; preds = %for.body.33
  %59 = load i32, i32* %f, align 4
  %60 = load i32, i32* %c, align 4
  %cmp39 = icmp eq i32 %59, %60
  br i1 %cmp39, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %if.else.38
  %61 = load i32, i32* %fi, align 4
  %62 = load i32, i32* %ci, align 4
  %cmp41 = icmp slt i32 %61, %62
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.then.40
  %63 = load i32, i32* %ci, align 4
  store i32 %63, i32* %fi, align 4
  %64 = load i32, i32* %cj, align 4
  store i32 %64, i32* %fj, align 4
  br label %if.end.48

if.else.43:                                       ; preds = %if.then.40
  %65 = load i32, i32* %fi, align 4
  %66 = load i32, i32* %ci, align 4
  %cmp44 = icmp eq i32 %65, %66
  br i1 %cmp44, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.else.43
  %67 = load i32, i32* %fj, align 4
  %68 = load i32, i32* %cj, align 4
  %cmp45 = icmp slt i32 %67, %68
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true
  %69 = load i32, i32* %cj, align 4
  store i32 %69, i32* %fj, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %land.lhs.true, %if.else.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.else.38
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.37
  %70 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %70 to i64
  %71 = load i32*, i32** @CC, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %71, i64 %idxprom51
  %72 = load i32, i32* %arrayidx52, align 4
  %73 = load i32, i32* @qr, align 4
  %sub53 = sub nsw i32 %72, %73
  store i32 %sub53, i32* %c, align 4
  %74 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %74 to i64
  %75 = load i32*, i32** @RR, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %75, i64 %idxprom54
  %76 = load i32, i32* %arrayidx55, align 4
  store i32 %76, i32* %ci, align 4
  %77 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %77 to i64
  %78 = load i32*, i32** @EE, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %78, i64 %idxprom56
  %79 = load i32, i32* %arrayidx57, align 4
  store i32 %79, i32* %cj, align 4
  %80 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %80 to i64
  %81 = load i32*, i32** @DD, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %81, i64 %idxprom58
  %82 = load i32, i32* %arrayidx59, align 4
  %83 = load i32, i32* @r, align 4
  %sub60 = sub nsw i32 %82, %83
  store i32 %sub60, i32* %d, align 4
  %84 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %84 to i64
  %85 = load i32*, i32** @SS, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %85, i64 %idxprom61
  %86 = load i32, i32* %arrayidx62, align 4
  store i32 %86, i32* %di, align 4
  %87 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %87 to i64
  %88 = load i32*, i32** @FF, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %88, i64 %idxprom63
  %89 = load i32, i32* %arrayidx64, align 4
  store i32 %89, i32* %dj, align 4
  %90 = load i32, i32* %d, align 4
  %91 = load i32, i32* %c, align 4
  %cmp65 = icmp slt i32 %90, %91
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.end.50
  %92 = load i32, i32* %c, align 4
  store i32 %92, i32* %d, align 4
  %93 = load i32, i32* %ci, align 4
  store i32 %93, i32* %di, align 4
  %94 = load i32, i32* %cj, align 4
  store i32 %94, i32* %dj, align 4
  br label %if.end.80

if.else.67:                                       ; preds = %if.end.50
  %95 = load i32, i32* %d, align 4
  %96 = load i32, i32* %c, align 4
  %cmp68 = icmp eq i32 %95, %96
  br i1 %cmp68, label %if.then.69, label %if.end.79

if.then.69:                                       ; preds = %if.else.67
  %97 = load i32, i32* %di, align 4
  %98 = load i32, i32* %ci, align 4
  %cmp70 = icmp slt i32 %97, %98
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.then.69
  %99 = load i32, i32* %ci, align 4
  store i32 %99, i32* %di, align 4
  %100 = load i32, i32* %cj, align 4
  store i32 %100, i32* %dj, align 4
  br label %if.end.78

if.else.72:                                       ; preds = %if.then.69
  %101 = load i32, i32* %di, align 4
  %102 = load i32, i32* %ci, align 4
  %cmp73 = icmp eq i32 %101, %102
  br i1 %cmp73, label %land.lhs.true.74, label %if.end.77

land.lhs.true.74:                                 ; preds = %if.else.72
  %103 = load i32, i32* %dj, align 4
  %104 = load i32, i32* %cj, align 4
  %cmp75 = icmp slt i32 %103, %104
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.74
  %105 = load i32, i32* %cj, align 4
  store i32 %105, i32* %dj, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %land.lhs.true.74, %if.else.72
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.71
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.else.67
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.66
  store i32 0, i32* %c, align 4
  store i16 1, i16* @tt, align 2
  %106 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %106 to i64
  %107 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx82 = getelementptr inbounds %struct.ONE*, %struct.ONE** %107, i64 %idxprom81
  %108 = load %struct.ONE*, %struct.ONE** %arrayidx82, align 8
  store %struct.ONE* %108, %struct.ONE** @z, align 8
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.89, %if.end.80
  %109 = load %struct.ONE*, %struct.ONE** @z, align 8
  %cmp84 = icmp ne %struct.ONE* %109, null
  br i1 %cmp84, label %for.body.85, label %for.end.90

for.body.85:                                      ; preds = %for.cond.83
  %110 = load %struct.ONE*, %struct.ONE** @z, align 8
  %COL = getelementptr inbounds %struct.ONE, %struct.ONE* %110, i32 0, i32 0
  %111 = load i32, i32* %COL, align 4
  %112 = load i32, i32* %j, align 4
  %cmp86 = icmp eq i32 %111, %112
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body.85
  store i16 0, i16* @tt, align 2
  br label %for.end.90

if.end.88:                                        ; preds = %for.body.85
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %113 = load %struct.ONE*, %struct.ONE** @z, align 8
  %NEXT = getelementptr inbounds %struct.ONE, %struct.ONE* %113, i32 0, i32 1
  %114 = load %struct.ONE*, %struct.ONE** %NEXT, align 8
  store %struct.ONE* %114, %struct.ONE** @z, align 8
  br label %for.cond.83

for.end.90:                                       ; preds = %if.then.87, %for.cond.83
  %115 = load i16, i16* @tt, align 2
  %tobool = icmp ne i16 %115, 0
  br i1 %tobool, label %if.then.91, label %if.end.97

if.then.91:                                       ; preds = %for.end.90
  %116 = load i32, i32* %p, align 4
  %117 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %117 to i64
  %118 = load i8*, i8** %B.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %118, i64 %idxprom92
  %119 = load i8, i8* %arrayidx93, align 1
  %idxprom94 = sext i8 %119 to i64
  %120 = load i32*, i32** %va, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %120, i64 %idxprom94
  %121 = load i32, i32* %arrayidx95, align 4
  %add96 = add nsw i32 %116, %121
  store i32 %add96, i32* %c, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.91, %for.end.90
  %122 = load i32, i32* %c, align 4
  %cmp98 = icmp sle i32 %122, 0
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.end.97
  store i32 0, i32* %c, align 4
  %123 = load i32, i32* %i, align 4
  store i32 %123, i32* %ci, align 4
  %124 = load i32, i32* %j, align 4
  store i32 %124, i32* %cj, align 4
  br label %if.end.101

if.else.100:                                      ; preds = %if.end.97
  %125 = load i32, i32* %pi, align 4
  store i32 %125, i32* %ci, align 4
  %126 = load i32, i32* %pj, align 4
  store i32 %126, i32* %cj, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.100, %if.then.99
  %127 = load i32, i32* %c, align 4
  %128 = load i32, i32* %d, align 4
  %cmp102 = icmp slt i32 %127, %128
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.end.101
  %129 = load i32, i32* %d, align 4
  store i32 %129, i32* %c, align 4
  %130 = load i32, i32* %di, align 4
  store i32 %130, i32* %ci, align 4
  %131 = load i32, i32* %dj, align 4
  store i32 %131, i32* %cj, align 4
  br label %if.end.117

if.else.104:                                      ; preds = %if.end.101
  %132 = load i32, i32* %c, align 4
  %133 = load i32, i32* %d, align 4
  %cmp105 = icmp eq i32 %132, %133
  br i1 %cmp105, label %if.then.106, label %if.end.116

if.then.106:                                      ; preds = %if.else.104
  %134 = load i32, i32* %ci, align 4
  %135 = load i32, i32* %di, align 4
  %cmp107 = icmp slt i32 %134, %135
  br i1 %cmp107, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %if.then.106
  %136 = load i32, i32* %di, align 4
  store i32 %136, i32* %ci, align 4
  %137 = load i32, i32* %dj, align 4
  store i32 %137, i32* %cj, align 4
  br label %if.end.115

if.else.109:                                      ; preds = %if.then.106
  %138 = load i32, i32* %ci, align 4
  %139 = load i32, i32* %di, align 4
  %cmp110 = icmp eq i32 %138, %139
  br i1 %cmp110, label %land.lhs.true.111, label %if.end.114

land.lhs.true.111:                                ; preds = %if.else.109
  %140 = load i32, i32* %cj, align 4
  %141 = load i32, i32* %dj, align 4
  %cmp112 = icmp slt i32 %140, %141
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.111
  %142 = load i32, i32* %dj, align 4
  store i32 %142, i32* %cj, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %land.lhs.true.111, %if.else.109
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.108
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.else.104
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.103
  %143 = load i32, i32* %c, align 4
  %144 = load i32, i32* %f, align 4
  %cmp118 = icmp slt i32 %143, %144
  br i1 %cmp118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.end.117
  %145 = load i32, i32* %f, align 4
  store i32 %145, i32* %c, align 4
  %146 = load i32, i32* %fi, align 4
  store i32 %146, i32* %ci, align 4
  %147 = load i32, i32* %fj, align 4
  store i32 %147, i32* %cj, align 4
  br label %if.end.133

if.else.120:                                      ; preds = %if.end.117
  %148 = load i32, i32* %c, align 4
  %149 = load i32, i32* %f, align 4
  %cmp121 = icmp eq i32 %148, %149
  br i1 %cmp121, label %if.then.122, label %if.end.132

if.then.122:                                      ; preds = %if.else.120
  %150 = load i32, i32* %ci, align 4
  %151 = load i32, i32* %fi, align 4
  %cmp123 = icmp slt i32 %150, %151
  br i1 %cmp123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %if.then.122
  %152 = load i32, i32* %fi, align 4
  store i32 %152, i32* %ci, align 4
  %153 = load i32, i32* %fj, align 4
  store i32 %153, i32* %cj, align 4
  br label %if.end.131

if.else.125:                                      ; preds = %if.then.122
  %154 = load i32, i32* %ci, align 4
  %155 = load i32, i32* %fi, align 4
  %cmp126 = icmp eq i32 %154, %155
  br i1 %cmp126, label %land.lhs.true.127, label %if.end.130

land.lhs.true.127:                                ; preds = %if.else.125
  %156 = load i32, i32* %cj, align 4
  %157 = load i32, i32* %fj, align 4
  %cmp128 = icmp slt i32 %156, %157
  br i1 %cmp128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %land.lhs.true.127
  %158 = load i32, i32* %fj, align 4
  store i32 %158, i32* %cj, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %land.lhs.true.127, %if.else.125
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.124
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.else.120
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.119
  %159 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %159 to i64
  %160 = load i32*, i32** @CC, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %160, i64 %idxprom134
  %161 = load i32, i32* %arrayidx135, align 4
  store i32 %161, i32* %p, align 4
  %162 = load i32, i32* %c, align 4
  %163 = load i32, i32* %j, align 4
  %idxprom136 = sext i32 %163 to i64
  %164 = load i32*, i32** @CC, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %164, i64 %idxprom136
  store i32 %162, i32* %arrayidx137, align 4
  %165 = load i32, i32* %j, align 4
  %idxprom138 = sext i32 %165 to i64
  %166 = load i32*, i32** @RR, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %166, i64 %idxprom138
  %167 = load i32, i32* %arrayidx139, align 4
  store i32 %167, i32* %pi, align 4
  %168 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %168 to i64
  %169 = load i32*, i32** @EE, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %169, i64 %idxprom140
  %170 = load i32, i32* %arrayidx141, align 4
  store i32 %170, i32* %pj, align 4
  %171 = load i32, i32* %ci, align 4
  %172 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %172 to i64
  %173 = load i32*, i32** @RR, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %173, i64 %idxprom142
  store i32 %171, i32* %arrayidx143, align 4
  %174 = load i32, i32* %cj, align 4
  %175 = load i32, i32* %j, align 4
  %idxprom144 = sext i32 %175 to i64
  %176 = load i32*, i32** @EE, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %176, i64 %idxprom144
  store i32 %174, i32* %arrayidx145, align 4
  %177 = load i32, i32* %d, align 4
  %178 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %178 to i64
  %179 = load i32*, i32** @DD, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %179, i64 %idxprom146
  store i32 %177, i32* %arrayidx147, align 4
  %180 = load i32, i32* %di, align 4
  %181 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %181 to i64
  %182 = load i32*, i32** @SS, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %182, i64 %idxprom148
  store i32 %180, i32* %arrayidx149, align 4
  %183 = load i32, i32* %dj, align 4
  %184 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %184 to i64
  %185 = load i32*, i32** @FF, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %185, i64 %idxprom150
  store i32 %183, i32* %arrayidx151, align 4
  %186 = load i32, i32* %c, align 4
  %187 = load i32, i32* @min, align 4
  %cmp152 = icmp sgt i32 %186, %187
  br i1 %cmp152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.end.133
  %188 = load i32, i32* %c, align 4
  %189 = load i32, i32* %ci, align 4
  %190 = load i32, i32* %cj, align 4
  %191 = load i32, i32* %i, align 4
  %192 = load i32, i32* %j, align 4
  %193 = load i32, i32* %count.addr, align 4
  %194 = load i32, i32* @min, align 4
  %call = call i32 @addnode(i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194)
  store i32 %call, i32* @min, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %if.end.133
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %195 = load i32, i32* %j, align 4
  %inc156 = add nsw i32 %195, 1
  store i32 %inc156, i32* %j, align 4
  br label %for.cond.31

for.end.157:                                      ; preds = %for.cond.31
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.end.157
  %196 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %196, 1
  store i32 %inc159, i32* %i, align 4
  br label %for.cond.12

for.end.160:                                      ; preds = %for.cond.12
  %197 = load i32, i32* %retval
  ret i32 %197
}

; Function Attrs: nounwind uwtable
define i32 @addnode(i32 %c, i32 %ci, i32 %cj, i32 %i, i32 %j, i32 %K, i32 %cost) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %ci.addr = alloca i32, align 4
  %cj.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %cost.addr = alloca i32, align 4
  %found = alloca i16, align 2
  %d = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %ci, i32* %ci.addr, align 4
  store i32 %cj, i32* %cj.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %K, i32* %K.addr, align 4
  store i32 %cost, i32* %cost.addr, align 4
  store i16 0, i16* %found, align 2
  %0 = load %struct.NODE*, %struct.NODE** @most, align 8
  %cmp = icmp ne %struct.NODE* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.NODE*, %struct.NODE** @most, align 8
  %STARI = getelementptr inbounds %struct.NODE, %struct.NODE* %1, i32 0, i32 1
  %2 = load i32, i32* %STARI, align 4
  %3 = load i32, i32* %ci.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.NODE*, %struct.NODE** @most, align 8
  %STARJ = getelementptr inbounds %struct.NODE, %struct.NODE* %4, i32 0, i32 2
  %5 = load i32, i32* %STARJ, align 4
  %6 = load i32, i32* %cj.addr, align 4
  %cmp3 = icmp eq i32 %5, %6
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  store i16 1, i16* %found, align 2
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i32, i32* %d, align 4
  %8 = load i32, i32* @numnode, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %d, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx = getelementptr inbounds %struct.NODE*, %struct.NODE** %10, i64 %idxprom
  %11 = load %struct.NODE*, %struct.NODE** %arrayidx, align 8
  store %struct.NODE* %11, %struct.NODE** @most, align 8
  %12 = load %struct.NODE*, %struct.NODE** @most, align 8
  %STARI5 = getelementptr inbounds %struct.NODE, %struct.NODE* %12, i32 0, i32 1
  %13 = load i32, i32* %STARI5, align 4
  %14 = load i32, i32* %ci.addr, align 4
  %cmp6 = icmp eq i32 %13, %14
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %for.body
  %15 = load %struct.NODE*, %struct.NODE** @most, align 8
  %STARJ8 = getelementptr inbounds %struct.NODE, %struct.NODE* %15, i32 0, i32 2
  %16 = load i32, i32* %STARJ8, align 4
  %17 = load i32, i32* %cj.addr, align 4
  %cmp9 = icmp eq i32 %16, %17
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true.7
  store i16 1, i16* %found, align 2
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %d, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %if.then
  %19 = load i16, i16* %found, align 2
  %tobool = icmp ne i16 %19, 0
  br i1 %tobool, label %if.then.12, label %if.else.33

if.then.12:                                       ; preds = %if.end.11
  %20 = load %struct.NODE*, %struct.NODE** @most, align 8
  %SCORE = getelementptr inbounds %struct.NODE, %struct.NODE* %20, i32 0, i32 0
  %21 = load i32, i32* %SCORE, align 4
  %22 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.12
  %23 = load i32, i32* %c.addr, align 4
  %24 = load %struct.NODE*, %struct.NODE** @most, align 8
  %SCORE15 = getelementptr inbounds %struct.NODE, %struct.NODE* %24, i32 0, i32 0
  store i32 %23, i32* %SCORE15, align 4
  %25 = load i32, i32* %i.addr, align 4
  %26 = load %struct.NODE*, %struct.NODE** @most, align 8
  %ENDI = getelementptr inbounds %struct.NODE, %struct.NODE* %26, i32 0, i32 3
  store i32 %25, i32* %ENDI, align 4
  %27 = load i32, i32* %j.addr, align 4
  %28 = load %struct.NODE*, %struct.NODE** @most, align 8
  %ENDJ = getelementptr inbounds %struct.NODE, %struct.NODE* %28, i32 0, i32 4
  store i32 %27, i32* %ENDJ, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.12
  %29 = load %struct.NODE*, %struct.NODE** @most, align 8
  %TOP = getelementptr inbounds %struct.NODE, %struct.NODE* %29, i32 0, i32 5
  %30 = load i32, i32* %TOP, align 4
  %31 = load i32, i32* %i.addr, align 4
  %cmp17 = icmp sgt i32 %30, %31
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %32 = load i32, i32* %i.addr, align 4
  %33 = load %struct.NODE*, %struct.NODE** @most, align 8
  %TOP19 = getelementptr inbounds %struct.NODE, %struct.NODE* %33, i32 0, i32 5
  store i32 %32, i32* %TOP19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %34 = load %struct.NODE*, %struct.NODE** @most, align 8
  %BOT = getelementptr inbounds %struct.NODE, %struct.NODE* %34, i32 0, i32 6
  %35 = load i32, i32* %BOT, align 4
  %36 = load i32, i32* %i.addr, align 4
  %cmp21 = icmp slt i32 %35, %36
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %37 = load i32, i32* %i.addr, align 4
  %38 = load %struct.NODE*, %struct.NODE** @most, align 8
  %BOT23 = getelementptr inbounds %struct.NODE, %struct.NODE* %38, i32 0, i32 6
  store i32 %37, i32* %BOT23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %39 = load %struct.NODE*, %struct.NODE** @most, align 8
  %LEFT = getelementptr inbounds %struct.NODE, %struct.NODE* %39, i32 0, i32 7
  %40 = load i32, i32* %LEFT, align 4
  %41 = load i32, i32* %j.addr, align 4
  %cmp25 = icmp sgt i32 %40, %41
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %42 = load i32, i32* %j.addr, align 4
  %43 = load %struct.NODE*, %struct.NODE** @most, align 8
  %LEFT27 = getelementptr inbounds %struct.NODE, %struct.NODE* %43, i32 0, i32 7
  store i32 %42, i32* %LEFT27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %44 = load %struct.NODE*, %struct.NODE** @most, align 8
  %RIGHT = getelementptr inbounds %struct.NODE, %struct.NODE* %44, i32 0, i32 8
  %45 = load i32, i32* %RIGHT, align 4
  %46 = load i32, i32* %j.addr, align 4
  %cmp29 = icmp slt i32 %45, %46
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %47 = load i32, i32* %j.addr, align 4
  %48 = load %struct.NODE*, %struct.NODE** @most, align 8
  %RIGHT31 = getelementptr inbounds %struct.NODE, %struct.NODE* %48, i32 0, i32 8
  store i32 %47, i32* %RIGHT31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  br label %if.end.50

if.else.33:                                       ; preds = %if.end.11
  %49 = load i32, i32* @numnode, align 4
  %50 = load i32, i32* %K.addr, align 4
  %cmp34 = icmp eq i32 %49, %50
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.33
  %51 = load %struct.NODE*, %struct.NODE** @low, align 8
  store %struct.NODE* %51, %struct.NODE** @most, align 8
  br label %if.end.40

if.else.36:                                       ; preds = %if.else.33
  %52 = load i32, i32* @numnode, align 4
  %inc37 = add nsw i32 %52, 1
  store i32 %inc37, i32* @numnode, align 4
  %idxprom38 = sext i32 %52 to i64
  %53 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx39 = getelementptr inbounds %struct.NODE*, %struct.NODE** %53, i64 %idxprom38
  %54 = load %struct.NODE*, %struct.NODE** %arrayidx39, align 8
  store %struct.NODE* %54, %struct.NODE** @most, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.36, %if.then.35
  %55 = load i32, i32* %c.addr, align 4
  %56 = load %struct.NODE*, %struct.NODE** @most, align 8
  %SCORE41 = getelementptr inbounds %struct.NODE, %struct.NODE* %56, i32 0, i32 0
  store i32 %55, i32* %SCORE41, align 4
  %57 = load i32, i32* %ci.addr, align 4
  %58 = load %struct.NODE*, %struct.NODE** @most, align 8
  %STARI42 = getelementptr inbounds %struct.NODE, %struct.NODE* %58, i32 0, i32 1
  store i32 %57, i32* %STARI42, align 4
  %59 = load i32, i32* %cj.addr, align 4
  %60 = load %struct.NODE*, %struct.NODE** @most, align 8
  %STARJ43 = getelementptr inbounds %struct.NODE, %struct.NODE* %60, i32 0, i32 2
  store i32 %59, i32* %STARJ43, align 4
  %61 = load i32, i32* %i.addr, align 4
  %62 = load %struct.NODE*, %struct.NODE** @most, align 8
  %ENDI44 = getelementptr inbounds %struct.NODE, %struct.NODE* %62, i32 0, i32 3
  store i32 %61, i32* %ENDI44, align 4
  %63 = load i32, i32* %j.addr, align 4
  %64 = load %struct.NODE*, %struct.NODE** @most, align 8
  %ENDJ45 = getelementptr inbounds %struct.NODE, %struct.NODE* %64, i32 0, i32 4
  store i32 %63, i32* %ENDJ45, align 4
  %65 = load i32, i32* %i.addr, align 4
  %66 = load %struct.NODE*, %struct.NODE** @most, align 8
  %BOT46 = getelementptr inbounds %struct.NODE, %struct.NODE* %66, i32 0, i32 6
  store i32 %65, i32* %BOT46, align 4
  %67 = load %struct.NODE*, %struct.NODE** @most, align 8
  %TOP47 = getelementptr inbounds %struct.NODE, %struct.NODE* %67, i32 0, i32 5
  store i32 %65, i32* %TOP47, align 4
  %68 = load i32, i32* %j.addr, align 4
  %69 = load %struct.NODE*, %struct.NODE** @most, align 8
  %RIGHT48 = getelementptr inbounds %struct.NODE, %struct.NODE* %69, i32 0, i32 8
  store i32 %68, i32* %RIGHT48, align 4
  %70 = load %struct.NODE*, %struct.NODE** @most, align 8
  %LEFT49 = getelementptr inbounds %struct.NODE, %struct.NODE* %70, i32 0, i32 7
  store i32 %68, i32* %LEFT49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.40, %if.end.32
  %71 = load i32, i32* @numnode, align 4
  %72 = load i32, i32* %K.addr, align 4
  %cmp51 = icmp eq i32 %71, %72
  br i1 %cmp51, label %if.then.52, label %if.else.74

if.then.52:                                       ; preds = %if.end.50
  %73 = load %struct.NODE*, %struct.NODE** @low, align 8
  %74 = load %struct.NODE*, %struct.NODE** @most, align 8
  %cmp53 = icmp eq %struct.NODE* %73, %74
  br i1 %cmp53, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.52
  %75 = load %struct.NODE*, %struct.NODE** @low, align 8
  %tobool54 = icmp ne %struct.NODE* %75, null
  br i1 %tobool54, label %if.end.72, label %if.then.55

if.then.55:                                       ; preds = %lor.lhs.false, %if.then.52
  %76 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx56 = getelementptr inbounds %struct.NODE*, %struct.NODE** %76, i64 0
  %77 = load %struct.NODE*, %struct.NODE** %arrayidx56, align 8
  store %struct.NODE* %77, %struct.NODE** @low, align 8
  store i32 1, i32* %d, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.69, %if.then.55
  %78 = load i32, i32* %d, align 4
  %79 = load i32, i32* @numnode, align 4
  %cmp58 = icmp slt i32 %78, %79
  br i1 %cmp58, label %for.body.59, label %for.end.71

for.body.59:                                      ; preds = %for.cond.57
  %80 = load i32, i32* %d, align 4
  %idxprom60 = sext i32 %80 to i64
  %81 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx61 = getelementptr inbounds %struct.NODE*, %struct.NODE** %81, i64 %idxprom60
  %82 = load %struct.NODE*, %struct.NODE** %arrayidx61, align 8
  %SCORE62 = getelementptr inbounds %struct.NODE, %struct.NODE* %82, i32 0, i32 0
  %83 = load i32, i32* %SCORE62, align 4
  %84 = load %struct.NODE*, %struct.NODE** @low, align 8
  %SCORE63 = getelementptr inbounds %struct.NODE, %struct.NODE* %84, i32 0, i32 0
  %85 = load i32, i32* %SCORE63, align 4
  %cmp64 = icmp slt i32 %83, %85
  br i1 %cmp64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %for.body.59
  %86 = load i32, i32* %d, align 4
  %idxprom66 = sext i32 %86 to i64
  %87 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx67 = getelementptr inbounds %struct.NODE*, %struct.NODE** %87, i64 %idxprom66
  %88 = load %struct.NODE*, %struct.NODE** %arrayidx67, align 8
  store %struct.NODE* %88, %struct.NODE** @low, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %for.body.59
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %89 = load i32, i32* %d, align 4
  %inc70 = add nsw i32 %89, 1
  store i32 %inc70, i32* %d, align 4
  br label %for.cond.57

for.end.71:                                       ; preds = %for.cond.57
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.71, %lor.lhs.false
  %90 = load %struct.NODE*, %struct.NODE** @low, align 8
  %SCORE73 = getelementptr inbounds %struct.NODE, %struct.NODE* %90, i32 0, i32 0
  %91 = load i32, i32* %SCORE73, align 4
  store i32 %91, i32* %retval
  br label %return

if.else.74:                                       ; preds = %if.end.50
  %92 = load i32, i32* %cost.addr, align 4
  store i32 %92, i32* %retval
  br label %return

return:                                           ; preds = %if.else.74, %if.end.72
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define %struct.NODE* @findmax() #0 {
entry:
  %cur = alloca %struct.NODE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @numnode, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx = getelementptr inbounds %struct.NODE*, %struct.NODE** %3, i64 %idxprom
  %4 = load %struct.NODE*, %struct.NODE** %arrayidx, align 8
  %SCORE = getelementptr inbounds %struct.NODE, %struct.NODE* %4, i32 0, i32 0
  %5 = load i32, i32* %SCORE, align 4
  %6 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx2 = getelementptr inbounds %struct.NODE*, %struct.NODE** %7, i64 %idxprom1
  %8 = load %struct.NODE*, %struct.NODE** %arrayidx2, align 8
  %SCORE3 = getelementptr inbounds %struct.NODE, %struct.NODE* %8, i32 0, i32 0
  %9 = load i32, i32* %SCORE3, align 4
  %cmp4 = icmp sgt i32 %5, %9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx6 = getelementptr inbounds %struct.NODE*, %struct.NODE** %13, i64 %idxprom5
  %14 = load %struct.NODE*, %struct.NODE** %arrayidx6, align 8
  store %struct.NODE* %14, %struct.NODE** %cur, align 8
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* @numnode, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* @numnode, align 4
  %cmp7 = icmp ne i32 %15, %dec
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %for.end
  %17 = load i32, i32* @numnode, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx10 = getelementptr inbounds %struct.NODE*, %struct.NODE** %18, i64 %idxprom9
  %19 = load %struct.NODE*, %struct.NODE** %arrayidx10, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx12 = getelementptr inbounds %struct.NODE*, %struct.NODE** %21, i64 %idxprom11
  store %struct.NODE* %19, %struct.NODE** %arrayidx12, align 8
  %22 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %23 = load i32, i32* @numnode, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx14 = getelementptr inbounds %struct.NODE*, %struct.NODE** %24, i64 %idxprom13
  store %struct.NODE* %22, %struct.NODE** %arrayidx14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.8, %for.end
  %25 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx16 = getelementptr inbounds %struct.NODE*, %struct.NODE** %25, i64 0
  %26 = load %struct.NODE*, %struct.NODE** %arrayidx16, align 8
  store %struct.NODE* %26, %struct.NODE** @most, align 8
  %27 = load %struct.NODE*, %struct.NODE** @low, align 8
  %28 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %cmp17 = icmp eq %struct.NODE* %27, %28
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %29 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx19 = getelementptr inbounds %struct.NODE*, %struct.NODE** %29, i64 0
  %30 = load %struct.NODE*, %struct.NODE** %arrayidx19, align 8
  store %struct.NODE* %30, %struct.NODE** @low, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %31 = load %struct.NODE*, %struct.NODE** %cur, align 8
  ret %struct.NODE* %31
}

; Function Attrs: nounwind uwtable
define i32 @no_cross() #0 {
entry:
  %retval = alloca i32, align 4
  %cur = alloca %struct.NODE*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @numnode, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %arrayidx = getelementptr inbounds %struct.NODE*, %struct.NODE** %3, i64 %idxprom
  %4 = load %struct.NODE*, %struct.NODE** %arrayidx, align 8
  store %struct.NODE* %4, %struct.NODE** %cur, align 8
  %5 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %STARI = getelementptr inbounds %struct.NODE, %struct.NODE* %5, i32 0, i32 1
  %6 = load i32, i32* %STARI, align 4
  %7 = load i32, i32* @mm, align 4
  %cmp1 = icmp sle i32 %6, %7
  br i1 %cmp1, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %STARJ = getelementptr inbounds %struct.NODE, %struct.NODE* %8, i32 0, i32 2
  %9 = load i32, i32* %STARJ, align 4
  %10 = load i32, i32* @nn, align 4
  %cmp2 = icmp sle i32 %9, %10
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.22

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %11 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %BOT = getelementptr inbounds %struct.NODE, %struct.NODE* %11, i32 0, i32 6
  %12 = load i32, i32* %BOT, align 4
  %13 = load i32, i32* @m1, align 4
  %sub = sub nsw i32 %13, 1
  %cmp4 = icmp sge i32 %12, %sub
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.22

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %14 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %RIGHT = getelementptr inbounds %struct.NODE, %struct.NODE* %14, i32 0, i32 8
  %15 = load i32, i32* %RIGHT, align 4
  %16 = load i32, i32* @n1, align 4
  %sub6 = sub nsw i32 %16, 1
  %cmp7 = icmp sge i32 %15, %sub6
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.22

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %17 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %STARI9 = getelementptr inbounds %struct.NODE, %struct.NODE* %17, i32 0, i32 1
  %18 = load i32, i32* %STARI9, align 4
  %19 = load i32, i32* @rl, align 4
  %cmp10 = icmp slt i32 %18, %19
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %20 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %STARJ11 = getelementptr inbounds %struct.NODE, %struct.NODE* %20, i32 0, i32 2
  %21 = load i32, i32* %STARJ11, align 4
  %22 = load i32, i32* @cl, align 4
  %cmp12 = icmp slt i32 %21, %22
  br i1 %cmp12, label %if.then, label %if.end.22

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.8
  %23 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %STARI13 = getelementptr inbounds %struct.NODE, %struct.NODE* %23, i32 0, i32 1
  %24 = load i32, i32* %STARI13, align 4
  %25 = load i32, i32* @rl, align 4
  %cmp14 = icmp slt i32 %24, %25
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %26 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %STARI16 = getelementptr inbounds %struct.NODE, %struct.NODE* %26, i32 0, i32 1
  %27 = load i32, i32* %STARI16, align 4
  store i32 %27, i32* @rl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  %28 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %STARJ17 = getelementptr inbounds %struct.NODE, %struct.NODE* %28, i32 0, i32 2
  %29 = load i32, i32* %STARJ17, align 4
  %30 = load i32, i32* @cl, align 4
  %cmp18 = icmp slt i32 %29, %30
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end
  %31 = load %struct.NODE*, %struct.NODE** %cur, align 8
  %STARJ20 = getelementptr inbounds %struct.NODE, %struct.NODE* %31, i32 0, i32 2
  %32 = load i32, i32* %STARJ20, align 4
  store i32 %32, i32* @cl, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end
  store i16 1, i16* @flag, align 2
  br label %for.end

if.end.22:                                        ; preds = %lor.lhs.false, %land.lhs.true.5, %land.lhs.true.3, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.21, %for.cond
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* @numnode, align 4
  %cmp23 = icmp eq i32 %34, %35
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.24
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @diff(i8* %A, i8* %B, i32 %M, i32 %N, i32 %tb, i32 %te) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %tb.addr = alloca i32, align 4
  %te.addr = alloca i32, align 4
  %midi = alloca i32, align 4
  %midj = alloca i32, align 4
  %type = alloca i32, align 4
  %midc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %e = alloca i32, align 4
  %d = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %va = alloca i32*, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %tb, i32* %tb.addr, align 4
  store i32 %te, i32* %te.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %M.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %2 = load i32, i32* %M.addr, align 4
  %3 = load i32, i32* @I, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* @I, align 4
  %4 = load i32, i32* %M.addr, align 4
  %5 = load i32, i32* @al_len, align 4
  %add3 = add nsw i32 %5, %4
  store i32 %add3, i32* @al_len, align 4
  %6 = load i32, i32* @last, align 4
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %7 = load i32, i32* %M.addr, align 4
  %8 = load i32*, i32** @sapp, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 -1
  %9 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %9, %7
  store i32 %sub, i32* %arrayidx, align 4
  store i32 %sub, i32* @last, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %10 = load i32, i32* %M.addr, align 4
  %sub6 = sub nsw i32 0, %10
  %11 = load i32*, i32** @sapp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** @sapp, align 8
  store i32 %sub6, i32* %11, align 4
  store i32 %sub6, i32* @last, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %M.addr, align 4
  %cmp8 = icmp sle i32 %12, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %13 = load i32, i32* @q, align 4
  %14 = load i32, i32* @r, align 4
  %15 = load i32, i32* %M.addr, align 4
  %mul = mul nsw i32 %14, %15
  %add9 = add nsw i32 %13, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add9, %cond.false ]
  %sub10 = sub nsw i32 0, %cond
  store i32 %sub10, i32* %retval
  br label %return

if.end.11:                                        ; preds = %entry
  %16 = load i32, i32* %M.addr, align 4
  %cmp12 = icmp sle i32 %16, 1
  br i1 %cmp12, label %if.then.13, label %if.end.168

if.then.13:                                       ; preds = %if.end.11
  %17 = load i32, i32* %M.addr, align 4
  %cmp14 = icmp sle i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.end.33

if.then.15:                                       ; preds = %if.then.13
  %18 = load i32, i32* %N.addr, align 4
  %19 = load i32, i32* @J, align 4
  %add16 = add nsw i32 %19, %18
  store i32 %add16, i32* @J, align 4
  %20 = load i32, i32* %N.addr, align 4
  %21 = load i32, i32* @al_len, align 4
  %add17 = add nsw i32 %21, %20
  store i32 %add17, i32* @al_len, align 4
  %22 = load i32, i32* @last, align 4
  %cmp18 = icmp slt i32 %22, 0
  br i1 %cmp18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.then.15
  %23 = load i32, i32* %N.addr, align 4
  %24 = load i32*, i32** @sapp, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %24, i64 -1
  store i32 %23, i32* %arrayidx20, align 4
  %25 = load i32, i32* @last, align 4
  %26 = load i32*, i32** @sapp, align 8
  %incdec.ptr21 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %incdec.ptr21, i32** @sapp, align 8
  store i32 %25, i32* %26, align 4
  br label %if.end.24

if.else.22:                                       ; preds = %if.then.15
  %27 = load i32, i32* %N.addr, align 4
  %28 = load i32*, i32** @sapp, align 8
  %incdec.ptr23 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr23, i32** @sapp, align 8
  store i32 %27, i32* %28, align 4
  store i32 %27, i32* @last, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.19
  %29 = load i32, i32* %N.addr, align 4
  %cmp25 = icmp sle i32 %29, 0
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.end.24
  br label %cond.end.30

cond.false.27:                                    ; preds = %if.end.24
  %30 = load i32, i32* @q, align 4
  %31 = load i32, i32* @r, align 4
  %32 = load i32, i32* %N.addr, align 4
  %mul28 = mul nsw i32 %31, %32
  %add29 = add nsw i32 %30, %mul28
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.27, %cond.true.26
  %cond31 = phi i32 [ 0, %cond.true.26 ], [ %add29, %cond.false.27 ]
  %sub32 = sub nsw i32 0, %cond31
  store i32 %sub32, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.13
  %33 = load i32, i32* %tb.addr, align 4
  %34 = load i32, i32* %te.addr, align 4
  %cmp34 = icmp sgt i32 %33, %34
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  %35 = load i32, i32* %te.addr, align 4
  store i32 %35, i32* %tb.addr, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  %36 = load i32, i32* %tb.addr, align 4
  %37 = load i32, i32* @r, align 4
  %add37 = add nsw i32 %36, %37
  %38 = load i32, i32* %N.addr, align 4
  %cmp38 = icmp sle i32 %38, 0
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %if.end.36
  br label %cond.end.43

cond.false.40:                                    ; preds = %if.end.36
  %39 = load i32, i32* @q, align 4
  %40 = load i32, i32* @r, align 4
  %41 = load i32, i32* %N.addr, align 4
  %mul41 = mul nsw i32 %40, %41
  %add42 = add nsw i32 %39, %mul41
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.40, %cond.true.39
  %cond44 = phi i32 [ 0, %cond.true.39 ], [ %add42, %cond.false.40 ]
  %add45 = add nsw i32 %add37, %cond44
  %sub46 = sub nsw i32 0, %add45
  store i32 %sub46, i32* %midc, align 4
  store i32 0, i32* %midj, align 4
  %42 = load i8*, i8** %A.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx47, align 1
  %idxprom = sext i8 %43 to i64
  %44 = load [256 x i32]*, [256 x i32]** @v, align 8
  %arrayidx48 = getelementptr inbounds [256 x i32], [256 x i32]* %44, i64 %idxprom
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx48, i32 0, i32 0
  store i32* %arraydecay, i32** %va, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %cond.end.43
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %N.addr, align 4
  %cmp49 = icmp sle i32 %45, %46
  br i1 %cmp49, label %for.body, label %for.end.90

for.body:                                         ; preds = %for.cond
  store i16 1, i16* @tt, align 2
  %47 = load i32, i32* @I, align 4
  %add50 = add nsw i32 %47, 1
  %idxprom51 = sext i32 %add50 to i64
  %48 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx52 = getelementptr inbounds %struct.ONE*, %struct.ONE** %48, i64 %idxprom51
  %49 = load %struct.ONE*, %struct.ONE** %arrayidx52, align 8
  store %struct.ONE* %49, %struct.ONE** @z, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %for.body
  %50 = load %struct.ONE*, %struct.ONE** @z, align 8
  %cmp54 = icmp ne %struct.ONE* %50, null
  br i1 %cmp54, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %for.cond.53
  %51 = load %struct.ONE*, %struct.ONE** @z, align 8
  %COL = getelementptr inbounds %struct.ONE, %struct.ONE* %51, i32 0, i32 0
  %52 = load i32, i32* %COL, align 4
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* @J, align 4
  %add56 = add nsw i32 %53, %54
  %cmp57 = icmp eq i32 %52, %add56
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.body.55
  store i16 0, i16* @tt, align 2
  br label %for.end

if.end.59:                                        ; preds = %for.body.55
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %55 = load %struct.ONE*, %struct.ONE** @z, align 8
  %NEXT = getelementptr inbounds %struct.ONE, %struct.ONE* %55, i32 0, i32 1
  %56 = load %struct.ONE*, %struct.ONE** %NEXT, align 8
  store %struct.ONE* %56, %struct.ONE** @z, align 8
  br label %for.cond.53

for.end:                                          ; preds = %if.then.58, %for.cond.53
  %57 = load i16, i16* @tt, align 2
  %tobool = icmp ne i16 %57, 0
  br i1 %tobool, label %if.then.60, label %if.end.88

if.then.60:                                       ; preds = %for.end
  %58 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %58 to i64
  %59 = load i8*, i8** %B.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %59, i64 %idxprom61
  %60 = load i8, i8* %arrayidx62, align 1
  %idxprom63 = sext i8 %60 to i64
  %61 = load i32*, i32** %va, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %61, i64 %idxprom63
  %62 = load i32, i32* %arrayidx64, align 4
  %63 = load i32, i32* %j, align 4
  %sub65 = sub nsw i32 %63, 1
  %cmp66 = icmp sle i32 %sub65, 0
  br i1 %cmp66, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %if.then.60
  br label %cond.end.72

cond.false.68:                                    ; preds = %if.then.60
  %64 = load i32, i32* @q, align 4
  %65 = load i32, i32* @r, align 4
  %66 = load i32, i32* %j, align 4
  %sub69 = sub nsw i32 %66, 1
  %mul70 = mul nsw i32 %65, %sub69
  %add71 = add nsw i32 %64, %mul70
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.68, %cond.true.67
  %cond73 = phi i32 [ 0, %cond.true.67 ], [ %add71, %cond.false.68 ]
  %67 = load i32, i32* %N.addr, align 4
  %68 = load i32, i32* %j, align 4
  %sub74 = sub nsw i32 %67, %68
  %cmp75 = icmp sle i32 %sub74, 0
  br i1 %cmp75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.end.72
  br label %cond.end.81

cond.false.77:                                    ; preds = %cond.end.72
  %69 = load i32, i32* @q, align 4
  %70 = load i32, i32* @r, align 4
  %71 = load i32, i32* %N.addr, align 4
  %72 = load i32, i32* %j, align 4
  %sub78 = sub nsw i32 %71, %72
  %mul79 = mul nsw i32 %70, %sub78
  %add80 = add nsw i32 %69, %mul79
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.77, %cond.true.76
  %cond82 = phi i32 [ 0, %cond.true.76 ], [ %add80, %cond.false.77 ]
  %add83 = add nsw i32 %cond73, %cond82
  %sub84 = sub nsw i32 %62, %add83
  store i32 %sub84, i32* %c, align 4
  %73 = load i32, i32* %c, align 4
  %74 = load i32, i32* %midc, align 4
  %cmp85 = icmp sgt i32 %73, %74
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %cond.end.81
  %75 = load i32, i32* %c, align 4
  store i32 %75, i32* %midc, align 4
  %76 = load i32, i32* %j, align 4
  store i32 %76, i32* %midj, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %cond.end.81
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %for.end
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %77 = load i32, i32* %j, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end.90:                                       ; preds = %for.cond
  %78 = load i32, i32* %midj, align 4
  %cmp91 = icmp eq i32 %78, 0
  br i1 %cmp91, label %if.then.92, label %if.else.111

if.then.92:                                       ; preds = %for.end.90
  %79 = load i32, i32* %N.addr, align 4
  %80 = load i32, i32* @J, align 4
  %add93 = add nsw i32 %80, %79
  store i32 %add93, i32* @J, align 4
  %81 = load i32, i32* %N.addr, align 4
  %82 = load i32, i32* @al_len, align 4
  %add94 = add nsw i32 %82, %81
  store i32 %add94, i32* @al_len, align 4
  %83 = load i32, i32* @last, align 4
  %cmp95 = icmp slt i32 %83, 0
  br i1 %cmp95, label %if.then.96, label %if.else.99

if.then.96:                                       ; preds = %if.then.92
  %84 = load i32, i32* %N.addr, align 4
  %85 = load i32*, i32** @sapp, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %85, i64 -1
  store i32 %84, i32* %arrayidx97, align 4
  %86 = load i32, i32* @last, align 4
  %87 = load i32*, i32** @sapp, align 8
  %incdec.ptr98 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %incdec.ptr98, i32** @sapp, align 8
  store i32 %86, i32* %87, align 4
  br label %if.end.101

if.else.99:                                       ; preds = %if.then.92
  %88 = load i32, i32* %N.addr, align 4
  %89 = load i32*, i32** @sapp, align 8
  %incdec.ptr100 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %incdec.ptr100, i32** @sapp, align 8
  store i32 %88, i32* %89, align 4
  store i32 %88, i32* @last, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.99, %if.then.96
  %90 = load i32, i32* @I, align 4
  %add102 = add nsw i32 %90, 1
  store i32 %add102, i32* @I, align 4
  %91 = load i32, i32* @al_len, align 4
  %add103 = add nsw i32 %91, 1
  store i32 %add103, i32* @al_len, align 4
  %92 = load i32, i32* @last, align 4
  %cmp104 = icmp slt i32 %92, 0
  br i1 %cmp104, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %if.end.101
  %93 = load i32*, i32** @sapp, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %93, i64 -1
  %94 = load i32, i32* %arrayidx106, align 4
  %sub107 = sub nsw i32 %94, 1
  store i32 %sub107, i32* %arrayidx106, align 4
  store i32 %sub107, i32* @last, align 4
  br label %if.end.110

if.else.108:                                      ; preds = %if.end.101
  %95 = load i32*, i32** @sapp, align 8
  %incdec.ptr109 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %incdec.ptr109, i32** @sapp, align 8
  store i32 -1, i32* %95, align 4
  store i32 -1, i32* @last, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.then.105
  br label %if.end.167

if.else.111:                                      ; preds = %for.end.90
  %96 = load i32, i32* %midj, align 4
  %cmp112 = icmp sgt i32 %96, 1
  br i1 %cmp112, label %if.then.113, label %if.end.127

if.then.113:                                      ; preds = %if.else.111
  %97 = load i32, i32* %midj, align 4
  %sub114 = sub nsw i32 %97, 1
  %98 = load i32, i32* @J, align 4
  %add115 = add nsw i32 %98, %sub114
  store i32 %add115, i32* @J, align 4
  %99 = load i32, i32* %midj, align 4
  %sub116 = sub nsw i32 %99, 1
  %100 = load i32, i32* @al_len, align 4
  %add117 = add nsw i32 %100, %sub116
  store i32 %add117, i32* @al_len, align 4
  %101 = load i32, i32* @last, align 4
  %cmp118 = icmp slt i32 %101, 0
  br i1 %cmp118, label %if.then.119, label %if.else.123

if.then.119:                                      ; preds = %if.then.113
  %102 = load i32, i32* %midj, align 4
  %sub120 = sub nsw i32 %102, 1
  %103 = load i32*, i32** @sapp, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %103, i64 -1
  store i32 %sub120, i32* %arrayidx121, align 4
  %104 = load i32, i32* @last, align 4
  %105 = load i32*, i32** @sapp, align 8
  %incdec.ptr122 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %incdec.ptr122, i32** @sapp, align 8
  store i32 %104, i32* %105, align 4
  br label %if.end.126

if.else.123:                                      ; preds = %if.then.113
  %106 = load i32, i32* %midj, align 4
  %sub124 = sub nsw i32 %106, 1
  %107 = load i32*, i32** @sapp, align 8
  %incdec.ptr125 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %incdec.ptr125, i32** @sapp, align 8
  store i32 %sub124, i32* %107, align 4
  store i32 %sub124, i32* @last, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.119
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.else.111
  %108 = load i32*, i32** @sapp, align 8
  %incdec.ptr128 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %incdec.ptr128, i32** @sapp, align 8
  store i32 0, i32* %108, align 4
  store i32 0, i32* @last, align 4
  %109 = load i32, i32* @al_len, align 4
  %add129 = add nsw i32 %109, 1
  store i32 %add129, i32* @al_len, align 4
  %110 = load i8*, i8** %A.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %110, i64 1
  %111 = load i8, i8* %arrayidx130, align 1
  %conv = sext i8 %111 to i32
  %112 = load i32, i32* %midj, align 4
  %idxprom131 = sext i32 %112 to i64
  %113 = load i8*, i8** %B.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %113, i64 %idxprom131
  %114 = load i8, i8* %arrayidx132, align 1
  %conv133 = sext i8 %114 to i32
  %cmp134 = icmp eq i32 %conv, %conv133
  br i1 %cmp134, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %if.end.127
  %115 = load i32, i32* @no_mat, align 4
  %add137 = add nsw i32 %115, 1
  store i32 %add137, i32* @no_mat, align 4
  br label %if.end.140

if.else.138:                                      ; preds = %if.end.127
  %116 = load i32, i32* @no_mis, align 4
  %add139 = add nsw i32 %116, 1
  store i32 %add139, i32* @no_mis, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.138, %if.then.136
  %117 = load i32, i32* @I, align 4
  %inc141 = add nsw i32 %117, 1
  store i32 %inc141, i32* @I, align 4
  %118 = load i32, i32* @J, align 4
  %inc142 = add nsw i32 %118, 1
  store i32 %inc142, i32* @J, align 4
  %call = call noalias i8* @malloc(i64 16) #6
  %119 = bitcast i8* %call to %struct.ONE*
  store %struct.ONE* %119, %struct.ONE** @z, align 8
  %120 = load i32, i32* @J, align 4
  %121 = load %struct.ONE*, %struct.ONE** @z, align 8
  %COL143 = getelementptr inbounds %struct.ONE, %struct.ONE* %121, i32 0, i32 0
  store i32 %120, i32* %COL143, align 4
  %122 = load i32, i32* @I, align 4
  %idxprom144 = sext i32 %122 to i64
  %123 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx145 = getelementptr inbounds %struct.ONE*, %struct.ONE** %123, i64 %idxprom144
  %124 = load %struct.ONE*, %struct.ONE** %arrayidx145, align 8
  %125 = load %struct.ONE*, %struct.ONE** @z, align 8
  %NEXT146 = getelementptr inbounds %struct.ONE, %struct.ONE* %125, i32 0, i32 1
  store %struct.ONE* %124, %struct.ONE** %NEXT146, align 8
  %126 = load %struct.ONE*, %struct.ONE** @z, align 8
  %127 = load i32, i32* @I, align 4
  %idxprom147 = sext i32 %127 to i64
  %128 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx148 = getelementptr inbounds %struct.ONE*, %struct.ONE** %128, i64 %idxprom147
  store %struct.ONE* %126, %struct.ONE** %arrayidx148, align 8
  %129 = load i32, i32* %midj, align 4
  %130 = load i32, i32* %N.addr, align 4
  %cmp149 = icmp slt i32 %129, %130
  br i1 %cmp149, label %if.then.151, label %if.end.166

if.then.151:                                      ; preds = %if.end.140
  %131 = load i32, i32* %N.addr, align 4
  %132 = load i32, i32* %midj, align 4
  %sub152 = sub nsw i32 %131, %132
  %133 = load i32, i32* @J, align 4
  %add153 = add nsw i32 %133, %sub152
  store i32 %add153, i32* @J, align 4
  %134 = load i32, i32* %N.addr, align 4
  %135 = load i32, i32* %midj, align 4
  %sub154 = sub nsw i32 %134, %135
  %136 = load i32, i32* @al_len, align 4
  %add155 = add nsw i32 %136, %sub154
  store i32 %add155, i32* @al_len, align 4
  %137 = load i32, i32* @last, align 4
  %cmp156 = icmp slt i32 %137, 0
  br i1 %cmp156, label %if.then.158, label %if.else.162

if.then.158:                                      ; preds = %if.then.151
  %138 = load i32, i32* %N.addr, align 4
  %139 = load i32, i32* %midj, align 4
  %sub159 = sub nsw i32 %138, %139
  %140 = load i32*, i32** @sapp, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %140, i64 -1
  store i32 %sub159, i32* %arrayidx160, align 4
  %141 = load i32, i32* @last, align 4
  %142 = load i32*, i32** @sapp, align 8
  %incdec.ptr161 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %incdec.ptr161, i32** @sapp, align 8
  store i32 %141, i32* %142, align 4
  br label %if.end.165

if.else.162:                                      ; preds = %if.then.151
  %143 = load i32, i32* %N.addr, align 4
  %144 = load i32, i32* %midj, align 4
  %sub163 = sub nsw i32 %143, %144
  %145 = load i32*, i32** @sapp, align 8
  %incdec.ptr164 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %incdec.ptr164, i32** @sapp, align 8
  store i32 %sub163, i32* %145, align 4
  store i32 %sub163, i32* @last, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.162, %if.then.158
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.140
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.110
  %146 = load i32, i32* %midc, align 4
  store i32 %146, i32* %retval
  br label %return

if.end.168:                                       ; preds = %if.end.11
  %147 = load i32, i32* %M.addr, align 4
  %div = sdiv i32 %147, 2
  store i32 %div, i32* %midi, align 4
  %148 = load i32*, i32** @CC, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 0, i32* %arrayidx169, align 4
  %149 = load i32, i32* @q, align 4
  %sub170 = sub nsw i32 0, %149
  store i32 %sub170, i32* %t, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.181, %if.end.168
  %150 = load i32, i32* %j, align 4
  %151 = load i32, i32* %N.addr, align 4
  %cmp172 = icmp sle i32 %150, %151
  br i1 %cmp172, label %for.body.174, label %for.end.183

for.body.174:                                     ; preds = %for.cond.171
  %152 = load i32, i32* %t, align 4
  %153 = load i32, i32* @r, align 4
  %sub175 = sub nsw i32 %152, %153
  store i32 %sub175, i32* %t, align 4
  %154 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %154 to i64
  %155 = load i32*, i32** @CC, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %155, i64 %idxprom176
  store i32 %sub175, i32* %arrayidx177, align 4
  %156 = load i32, i32* %t, align 4
  %157 = load i32, i32* @q, align 4
  %sub178 = sub nsw i32 %156, %157
  %158 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %158 to i64
  %159 = load i32*, i32** @DD, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %159, i64 %idxprom179
  store i32 %sub178, i32* %arrayidx180, align 4
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.174
  %160 = load i32, i32* %j, align 4
  %inc182 = add nsw i32 %160, 1
  store i32 %inc182, i32* %j, align 4
  br label %for.cond.171

for.end.183:                                      ; preds = %for.cond.171
  %161 = load i32, i32* %tb.addr, align 4
  %sub184 = sub nsw i32 0, %161
  store i32 %sub184, i32* %t, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.259, %for.end.183
  %162 = load i32, i32* %i, align 4
  %163 = load i32, i32* %midi, align 4
  %cmp186 = icmp sle i32 %162, %163
  br i1 %cmp186, label %for.body.188, label %for.end.261

for.body.188:                                     ; preds = %for.cond.185
  %164 = load i32*, i32** @CC, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %164, i64 0
  %165 = load i32, i32* %arrayidx189, align 4
  store i32 %165, i32* %s, align 4
  %166 = load i32, i32* %t, align 4
  %167 = load i32, i32* @r, align 4
  %sub190 = sub nsw i32 %166, %167
  store i32 %sub190, i32* %t, align 4
  store i32 %sub190, i32* %c, align 4
  %168 = load i32*, i32** @CC, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %168, i64 0
  store i32 %sub190, i32* %arrayidx191, align 4
  %169 = load i32, i32* %t, align 4
  %170 = load i32, i32* @q, align 4
  %sub192 = sub nsw i32 %169, %170
  store i32 %sub192, i32* %e, align 4
  %171 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %171 to i64
  %172 = load i8*, i8** %A.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %172, i64 %idxprom193
  %173 = load i8, i8* %arrayidx194, align 1
  %idxprom195 = sext i8 %173 to i64
  %174 = load [256 x i32]*, [256 x i32]** @v, align 8
  %arrayidx196 = getelementptr inbounds [256 x i32], [256 x i32]* %174, i64 %idxprom195
  %arraydecay197 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx196, i32 0, i32 0
  store i32* %arraydecay197, i32** %va, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.256, %for.body.188
  %175 = load i32, i32* %j, align 4
  %176 = load i32, i32* %N.addr, align 4
  %cmp199 = icmp sle i32 %175, %176
  br i1 %cmp199, label %for.body.201, label %for.end.258

for.body.201:                                     ; preds = %for.cond.198
  %177 = load i32, i32* %c, align 4
  %178 = load i32, i32* @qr, align 4
  %sub202 = sub nsw i32 %177, %178
  store i32 %sub202, i32* %c, align 4
  %179 = load i32, i32* %e, align 4
  %180 = load i32, i32* @r, align 4
  %sub203 = sub nsw i32 %179, %180
  store i32 %sub203, i32* %e, align 4
  %cmp204 = icmp sgt i32 %sub202, %sub203
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %for.body.201
  %181 = load i32, i32* %c, align 4
  store i32 %181, i32* %e, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %for.body.201
  %182 = load i32, i32* %j, align 4
  %idxprom208 = sext i32 %182 to i64
  %183 = load i32*, i32** @CC, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %183, i64 %idxprom208
  %184 = load i32, i32* %arrayidx209, align 4
  %185 = load i32, i32* @qr, align 4
  %sub210 = sub nsw i32 %184, %185
  store i32 %sub210, i32* %c, align 4
  %186 = load i32, i32* %j, align 4
  %idxprom211 = sext i32 %186 to i64
  %187 = load i32*, i32** @DD, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %187, i64 %idxprom211
  %188 = load i32, i32* %arrayidx212, align 4
  %189 = load i32, i32* @r, align 4
  %sub213 = sub nsw i32 %188, %189
  store i32 %sub213, i32* %d, align 4
  %cmp214 = icmp sgt i32 %sub210, %sub213
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.end.207
  %190 = load i32, i32* %c, align 4
  store i32 %190, i32* %d, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.216, %if.end.207
  store i16 1, i16* @tt, align 2
  %191 = load i32, i32* %i, align 4
  %192 = load i32, i32* @I, align 4
  %add218 = add nsw i32 %191, %192
  %idxprom219 = sext i32 %add218 to i64
  %193 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx220 = getelementptr inbounds %struct.ONE*, %struct.ONE** %193, i64 %idxprom219
  %194 = load %struct.ONE*, %struct.ONE** %arrayidx220, align 8
  store %struct.ONE* %194, %struct.ONE** @z, align 8
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.231, %if.end.217
  %195 = load %struct.ONE*, %struct.ONE** @z, align 8
  %cmp222 = icmp ne %struct.ONE* %195, null
  br i1 %cmp222, label %for.body.224, label %for.end.233

for.body.224:                                     ; preds = %for.cond.221
  %196 = load %struct.ONE*, %struct.ONE** @z, align 8
  %COL225 = getelementptr inbounds %struct.ONE, %struct.ONE* %196, i32 0, i32 0
  %197 = load i32, i32* %COL225, align 4
  %198 = load i32, i32* %j, align 4
  %199 = load i32, i32* @J, align 4
  %add226 = add nsw i32 %198, %199
  %cmp227 = icmp eq i32 %197, %add226
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %for.body.224
  store i16 0, i16* @tt, align 2
  br label %for.end.233

if.end.230:                                       ; preds = %for.body.224
  br label %for.inc.231

for.inc.231:                                      ; preds = %if.end.230
  %200 = load %struct.ONE*, %struct.ONE** @z, align 8
  %NEXT232 = getelementptr inbounds %struct.ONE, %struct.ONE* %200, i32 0, i32 1
  %201 = load %struct.ONE*, %struct.ONE** %NEXT232, align 8
  store %struct.ONE* %201, %struct.ONE** @z, align 8
  br label %for.cond.221

for.end.233:                                      ; preds = %if.then.229, %for.cond.221
  %202 = load i16, i16* @tt, align 2
  %tobool234 = icmp ne i16 %202, 0
  br i1 %tobool234, label %if.then.235, label %if.end.241

if.then.235:                                      ; preds = %for.end.233
  %203 = load i32, i32* %s, align 4
  %204 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %204 to i64
  %205 = load i8*, i8** %B.addr, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %205, i64 %idxprom236
  %206 = load i8, i8* %arrayidx237, align 1
  %idxprom238 = sext i8 %206 to i64
  %207 = load i32*, i32** %va, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %207, i64 %idxprom238
  %208 = load i32, i32* %arrayidx239, align 4
  %add240 = add nsw i32 %203, %208
  store i32 %add240, i32* %c, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.235, %for.end.233
  %209 = load i32, i32* %c, align 4
  %210 = load i32, i32* %d, align 4
  %cmp242 = icmp slt i32 %209, %210
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.end.241
  %211 = load i32, i32* %d, align 4
  store i32 %211, i32* %c, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %if.end.241
  %212 = load i32, i32* %c, align 4
  %213 = load i32, i32* %e, align 4
  %cmp246 = icmp slt i32 %212, %213
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.end.245
  %214 = load i32, i32* %e, align 4
  store i32 %214, i32* %c, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.248, %if.end.245
  %215 = load i32, i32* %j, align 4
  %idxprom250 = sext i32 %215 to i64
  %216 = load i32*, i32** @CC, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %216, i64 %idxprom250
  %217 = load i32, i32* %arrayidx251, align 4
  store i32 %217, i32* %s, align 4
  %218 = load i32, i32* %c, align 4
  %219 = load i32, i32* %j, align 4
  %idxprom252 = sext i32 %219 to i64
  %220 = load i32*, i32** @CC, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %220, i64 %idxprom252
  store i32 %218, i32* %arrayidx253, align 4
  %221 = load i32, i32* %d, align 4
  %222 = load i32, i32* %j, align 4
  %idxprom254 = sext i32 %222 to i64
  %223 = load i32*, i32** @DD, align 8
  %arrayidx255 = getelementptr inbounds i32, i32* %223, i64 %idxprom254
  store i32 %221, i32* %arrayidx255, align 4
  br label %for.inc.256

for.inc.256:                                      ; preds = %if.end.249
  %224 = load i32, i32* %j, align 4
  %inc257 = add nsw i32 %224, 1
  store i32 %inc257, i32* %j, align 4
  br label %for.cond.198

for.end.258:                                      ; preds = %for.cond.198
  br label %for.inc.259

for.inc.259:                                      ; preds = %for.end.258
  %225 = load i32, i32* %i, align 4
  %inc260 = add nsw i32 %225, 1
  store i32 %inc260, i32* %i, align 4
  br label %for.cond.185

for.end.261:                                      ; preds = %for.cond.185
  %226 = load i32*, i32** @CC, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %226, i64 0
  %227 = load i32, i32* %arrayidx262, align 4
  %228 = load i32*, i32** @DD, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %228, i64 0
  store i32 %227, i32* %arrayidx263, align 4
  %229 = load i32, i32* %N.addr, align 4
  %idxprom264 = sext i32 %229 to i64
  %230 = load i32*, i32** @RR, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %230, i64 %idxprom264
  store i32 0, i32* %arrayidx265, align 4
  %231 = load i32, i32* @q, align 4
  %sub266 = sub nsw i32 0, %231
  store i32 %sub266, i32* %t, align 4
  %232 = load i32, i32* %N.addr, align 4
  %sub267 = sub nsw i32 %232, 1
  store i32 %sub267, i32* %j, align 4
  br label %for.cond.268

for.cond.268:                                     ; preds = %for.inc.278, %for.end.261
  %233 = load i32, i32* %j, align 4
  %cmp269 = icmp sge i32 %233, 0
  br i1 %cmp269, label %for.body.271, label %for.end.279

for.body.271:                                     ; preds = %for.cond.268
  %234 = load i32, i32* %t, align 4
  %235 = load i32, i32* @r, align 4
  %sub272 = sub nsw i32 %234, %235
  store i32 %sub272, i32* %t, align 4
  %236 = load i32, i32* %j, align 4
  %idxprom273 = sext i32 %236 to i64
  %237 = load i32*, i32** @RR, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %237, i64 %idxprom273
  store i32 %sub272, i32* %arrayidx274, align 4
  %238 = load i32, i32* %t, align 4
  %239 = load i32, i32* @q, align 4
  %sub275 = sub nsw i32 %238, %239
  %240 = load i32, i32* %j, align 4
  %idxprom276 = sext i32 %240 to i64
  %241 = load i32*, i32** @SS, align 8
  %arrayidx277 = getelementptr inbounds i32, i32* %241, i64 %idxprom276
  store i32 %sub275, i32* %arrayidx277, align 4
  br label %for.inc.278

for.inc.278:                                      ; preds = %for.body.271
  %242 = load i32, i32* %j, align 4
  %dec = add nsw i32 %242, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.268

for.end.279:                                      ; preds = %for.cond.268
  %243 = load i32, i32* %te.addr, align 4
  %sub280 = sub nsw i32 0, %243
  store i32 %sub280, i32* %t, align 4
  %244 = load i32, i32* %M.addr, align 4
  %sub281 = sub nsw i32 %244, 1
  store i32 %sub281, i32* %i, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.363, %for.end.279
  %245 = load i32, i32* %i, align 4
  %246 = load i32, i32* %midi, align 4
  %cmp283 = icmp sge i32 %245, %246
  br i1 %cmp283, label %for.body.285, label %for.end.365

for.body.285:                                     ; preds = %for.cond.282
  %247 = load i32, i32* %N.addr, align 4
  %idxprom286 = sext i32 %247 to i64
  %248 = load i32*, i32** @RR, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %248, i64 %idxprom286
  %249 = load i32, i32* %arrayidx287, align 4
  store i32 %249, i32* %s, align 4
  %250 = load i32, i32* %t, align 4
  %251 = load i32, i32* @r, align 4
  %sub288 = sub nsw i32 %250, %251
  store i32 %sub288, i32* %t, align 4
  store i32 %sub288, i32* %c, align 4
  %252 = load i32, i32* %N.addr, align 4
  %idxprom289 = sext i32 %252 to i64
  %253 = load i32*, i32** @RR, align 8
  %arrayidx290 = getelementptr inbounds i32, i32* %253, i64 %idxprom289
  store i32 %sub288, i32* %arrayidx290, align 4
  %254 = load i32, i32* %t, align 4
  %255 = load i32, i32* @q, align 4
  %sub291 = sub nsw i32 %254, %255
  store i32 %sub291, i32* %e, align 4
  %256 = load i32, i32* %i, align 4
  %add292 = add nsw i32 %256, 1
  %idxprom293 = sext i32 %add292 to i64
  %257 = load i8*, i8** %A.addr, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %257, i64 %idxprom293
  %258 = load i8, i8* %arrayidx294, align 1
  %idxprom295 = sext i8 %258 to i64
  %259 = load [256 x i32]*, [256 x i32]** @v, align 8
  %arrayidx296 = getelementptr inbounds [256 x i32], [256 x i32]* %259, i64 %idxprom295
  %arraydecay297 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx296, i32 0, i32 0
  store i32* %arraydecay297, i32** %va, align 8
  %260 = load i32, i32* %N.addr, align 4
  %sub298 = sub nsw i32 %260, 1
  store i32 %sub298, i32* %j, align 4
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.360, %for.body.285
  %261 = load i32, i32* %j, align 4
  %cmp300 = icmp sge i32 %261, 0
  br i1 %cmp300, label %for.body.302, label %for.end.362

for.body.302:                                     ; preds = %for.cond.299
  %262 = load i32, i32* %c, align 4
  %263 = load i32, i32* @qr, align 4
  %sub303 = sub nsw i32 %262, %263
  store i32 %sub303, i32* %c, align 4
  %264 = load i32, i32* %e, align 4
  %265 = load i32, i32* @r, align 4
  %sub304 = sub nsw i32 %264, %265
  store i32 %sub304, i32* %e, align 4
  %cmp305 = icmp sgt i32 %sub303, %sub304
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %for.body.302
  %266 = load i32, i32* %c, align 4
  store i32 %266, i32* %e, align 4
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %for.body.302
  %267 = load i32, i32* %j, align 4
  %idxprom309 = sext i32 %267 to i64
  %268 = load i32*, i32** @RR, align 8
  %arrayidx310 = getelementptr inbounds i32, i32* %268, i64 %idxprom309
  %269 = load i32, i32* %arrayidx310, align 4
  %270 = load i32, i32* @qr, align 4
  %sub311 = sub nsw i32 %269, %270
  store i32 %sub311, i32* %c, align 4
  %271 = load i32, i32* %j, align 4
  %idxprom312 = sext i32 %271 to i64
  %272 = load i32*, i32** @SS, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %272, i64 %idxprom312
  %273 = load i32, i32* %arrayidx313, align 4
  %274 = load i32, i32* @r, align 4
  %sub314 = sub nsw i32 %273, %274
  store i32 %sub314, i32* %d, align 4
  %cmp315 = icmp sgt i32 %sub311, %sub314
  br i1 %cmp315, label %if.then.317, label %if.end.318

if.then.317:                                      ; preds = %if.end.308
  %275 = load i32, i32* %c, align 4
  store i32 %275, i32* %d, align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.317, %if.end.308
  store i16 1, i16* @tt, align 2
  %276 = load i32, i32* %i, align 4
  %add319 = add nsw i32 %276, 1
  %277 = load i32, i32* @I, align 4
  %add320 = add nsw i32 %add319, %277
  %idxprom321 = sext i32 %add320 to i64
  %278 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %arrayidx322 = getelementptr inbounds %struct.ONE*, %struct.ONE** %278, i64 %idxprom321
  %279 = load %struct.ONE*, %struct.ONE** %arrayidx322, align 8
  store %struct.ONE* %279, %struct.ONE** @z, align 8
  br label %for.cond.323

for.cond.323:                                     ; preds = %for.inc.334, %if.end.318
  %280 = load %struct.ONE*, %struct.ONE** @z, align 8
  %cmp324 = icmp ne %struct.ONE* %280, null
  br i1 %cmp324, label %for.body.326, label %for.end.336

for.body.326:                                     ; preds = %for.cond.323
  %281 = load %struct.ONE*, %struct.ONE** @z, align 8
  %COL327 = getelementptr inbounds %struct.ONE, %struct.ONE* %281, i32 0, i32 0
  %282 = load i32, i32* %COL327, align 4
  %283 = load i32, i32* %j, align 4
  %add328 = add nsw i32 %283, 1
  %284 = load i32, i32* @J, align 4
  %add329 = add nsw i32 %add328, %284
  %cmp330 = icmp eq i32 %282, %add329
  br i1 %cmp330, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %for.body.326
  store i16 0, i16* @tt, align 2
  br label %for.end.336

if.end.333:                                       ; preds = %for.body.326
  br label %for.inc.334

for.inc.334:                                      ; preds = %if.end.333
  %285 = load %struct.ONE*, %struct.ONE** @z, align 8
  %NEXT335 = getelementptr inbounds %struct.ONE, %struct.ONE* %285, i32 0, i32 1
  %286 = load %struct.ONE*, %struct.ONE** %NEXT335, align 8
  store %struct.ONE* %286, %struct.ONE** @z, align 8
  br label %for.cond.323

for.end.336:                                      ; preds = %if.then.332, %for.cond.323
  %287 = load i16, i16* @tt, align 2
  %tobool337 = icmp ne i16 %287, 0
  br i1 %tobool337, label %if.then.338, label %if.end.345

if.then.338:                                      ; preds = %for.end.336
  %288 = load i32, i32* %s, align 4
  %289 = load i32, i32* %j, align 4
  %add339 = add nsw i32 %289, 1
  %idxprom340 = sext i32 %add339 to i64
  %290 = load i8*, i8** %B.addr, align 8
  %arrayidx341 = getelementptr inbounds i8, i8* %290, i64 %idxprom340
  %291 = load i8, i8* %arrayidx341, align 1
  %idxprom342 = sext i8 %291 to i64
  %292 = load i32*, i32** %va, align 8
  %arrayidx343 = getelementptr inbounds i32, i32* %292, i64 %idxprom342
  %293 = load i32, i32* %arrayidx343, align 4
  %add344 = add nsw i32 %288, %293
  store i32 %add344, i32* %c, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.338, %for.end.336
  %294 = load i32, i32* %c, align 4
  %295 = load i32, i32* %d, align 4
  %cmp346 = icmp slt i32 %294, %295
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %if.end.345
  %296 = load i32, i32* %d, align 4
  store i32 %296, i32* %c, align 4
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.348, %if.end.345
  %297 = load i32, i32* %c, align 4
  %298 = load i32, i32* %e, align 4
  %cmp350 = icmp slt i32 %297, %298
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %if.end.349
  %299 = load i32, i32* %e, align 4
  store i32 %299, i32* %c, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.352, %if.end.349
  %300 = load i32, i32* %j, align 4
  %idxprom354 = sext i32 %300 to i64
  %301 = load i32*, i32** @RR, align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %301, i64 %idxprom354
  %302 = load i32, i32* %arrayidx355, align 4
  store i32 %302, i32* %s, align 4
  %303 = load i32, i32* %c, align 4
  %304 = load i32, i32* %j, align 4
  %idxprom356 = sext i32 %304 to i64
  %305 = load i32*, i32** @RR, align 8
  %arrayidx357 = getelementptr inbounds i32, i32* %305, i64 %idxprom356
  store i32 %303, i32* %arrayidx357, align 4
  %306 = load i32, i32* %d, align 4
  %307 = load i32, i32* %j, align 4
  %idxprom358 = sext i32 %307 to i64
  %308 = load i32*, i32** @SS, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %308, i64 %idxprom358
  store i32 %306, i32* %arrayidx359, align 4
  br label %for.inc.360

for.inc.360:                                      ; preds = %if.end.353
  %309 = load i32, i32* %j, align 4
  %dec361 = add nsw i32 %309, -1
  store i32 %dec361, i32* %j, align 4
  br label %for.cond.299

for.end.362:                                      ; preds = %for.cond.299
  br label %for.inc.363

for.inc.363:                                      ; preds = %for.end.362
  %310 = load i32, i32* %i, align 4
  %dec364 = add nsw i32 %310, -1
  store i32 %dec364, i32* %i, align 4
  br label %for.cond.282

for.end.365:                                      ; preds = %for.cond.282
  %311 = load i32, i32* %N.addr, align 4
  %idxprom366 = sext i32 %311 to i64
  %312 = load i32*, i32** @RR, align 8
  %arrayidx367 = getelementptr inbounds i32, i32* %312, i64 %idxprom366
  %313 = load i32, i32* %arrayidx367, align 4
  %314 = load i32, i32* %N.addr, align 4
  %idxprom368 = sext i32 %314 to i64
  %315 = load i32*, i32** @SS, align 8
  %arrayidx369 = getelementptr inbounds i32, i32* %315, i64 %idxprom368
  store i32 %313, i32* %arrayidx369, align 4
  %316 = load i32*, i32** @CC, align 8
  %arrayidx370 = getelementptr inbounds i32, i32* %316, i64 0
  %317 = load i32, i32* %arrayidx370, align 4
  %318 = load i32*, i32** @RR, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %318, i64 0
  %319 = load i32, i32* %arrayidx371, align 4
  %add372 = add nsw i32 %317, %319
  store i32 %add372, i32* %midc, align 4
  store i32 0, i32* %midj, align 4
  store i32 1, i32* %type, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.373

for.cond.373:                                     ; preds = %for.inc.402, %for.end.365
  %320 = load i32, i32* %j, align 4
  %321 = load i32, i32* %N.addr, align 4
  %cmp374 = icmp sle i32 %320, %321
  br i1 %cmp374, label %for.body.376, label %for.end.404

for.body.376:                                     ; preds = %for.cond.373
  %322 = load i32, i32* %j, align 4
  %idxprom377 = sext i32 %322 to i64
  %323 = load i32*, i32** @CC, align 8
  %arrayidx378 = getelementptr inbounds i32, i32* %323, i64 %idxprom377
  %324 = load i32, i32* %arrayidx378, align 4
  %325 = load i32, i32* %j, align 4
  %idxprom379 = sext i32 %325 to i64
  %326 = load i32*, i32** @RR, align 8
  %arrayidx380 = getelementptr inbounds i32, i32* %326, i64 %idxprom379
  %327 = load i32, i32* %arrayidx380, align 4
  %add381 = add nsw i32 %324, %327
  store i32 %add381, i32* %c, align 4
  %328 = load i32, i32* %midc, align 4
  %cmp382 = icmp sge i32 %add381, %328
  br i1 %cmp382, label %if.then.384, label %if.end.401

if.then.384:                                      ; preds = %for.body.376
  %329 = load i32, i32* %c, align 4
  %330 = load i32, i32* %midc, align 4
  %cmp385 = icmp sgt i32 %329, %330
  br i1 %cmp385, label %if.then.399, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.384
  %331 = load i32, i32* %j, align 4
  %idxprom387 = sext i32 %331 to i64
  %332 = load i32*, i32** @CC, align 8
  %arrayidx388 = getelementptr inbounds i32, i32* %332, i64 %idxprom387
  %333 = load i32, i32* %arrayidx388, align 4
  %334 = load i32, i32* %j, align 4
  %idxprom389 = sext i32 %334 to i64
  %335 = load i32*, i32** @DD, align 8
  %arrayidx390 = getelementptr inbounds i32, i32* %335, i64 %idxprom389
  %336 = load i32, i32* %arrayidx390, align 4
  %cmp391 = icmp ne i32 %333, %336
  br i1 %cmp391, label %land.lhs.true, label %if.end.400

land.lhs.true:                                    ; preds = %lor.lhs.false
  %337 = load i32, i32* %j, align 4
  %idxprom393 = sext i32 %337 to i64
  %338 = load i32*, i32** @RR, align 8
  %arrayidx394 = getelementptr inbounds i32, i32* %338, i64 %idxprom393
  %339 = load i32, i32* %arrayidx394, align 4
  %340 = load i32, i32* %j, align 4
  %idxprom395 = sext i32 %340 to i64
  %341 = load i32*, i32** @SS, align 8
  %arrayidx396 = getelementptr inbounds i32, i32* %341, i64 %idxprom395
  %342 = load i32, i32* %arrayidx396, align 4
  %cmp397 = icmp eq i32 %339, %342
  br i1 %cmp397, label %if.then.399, label %if.end.400

if.then.399:                                      ; preds = %land.lhs.true, %if.then.384
  %343 = load i32, i32* %c, align 4
  store i32 %343, i32* %midc, align 4
  %344 = load i32, i32* %j, align 4
  store i32 %344, i32* %midj, align 4
  br label %if.end.400

if.end.400:                                       ; preds = %if.then.399, %land.lhs.true, %lor.lhs.false
  br label %if.end.401

if.end.401:                                       ; preds = %if.end.400, %for.body.376
  br label %for.inc.402

for.inc.402:                                      ; preds = %if.end.401
  %345 = load i32, i32* %j, align 4
  %inc403 = add nsw i32 %345, 1
  store i32 %inc403, i32* %j, align 4
  br label %for.cond.373

for.end.404:                                      ; preds = %for.cond.373
  %346 = load i32, i32* %N.addr, align 4
  store i32 %346, i32* %j, align 4
  br label %for.cond.405

for.cond.405:                                     ; preds = %for.inc.419, %for.end.404
  %347 = load i32, i32* %j, align 4
  %cmp406 = icmp sge i32 %347, 0
  br i1 %cmp406, label %for.body.408, label %for.end.421

for.body.408:                                     ; preds = %for.cond.405
  %348 = load i32, i32* %j, align 4
  %idxprom409 = sext i32 %348 to i64
  %349 = load i32*, i32** @DD, align 8
  %arrayidx410 = getelementptr inbounds i32, i32* %349, i64 %idxprom409
  %350 = load i32, i32* %arrayidx410, align 4
  %351 = load i32, i32* %j, align 4
  %idxprom411 = sext i32 %351 to i64
  %352 = load i32*, i32** @SS, align 8
  %arrayidx412 = getelementptr inbounds i32, i32* %352, i64 %idxprom411
  %353 = load i32, i32* %arrayidx412, align 4
  %add413 = add nsw i32 %350, %353
  %354 = load i32, i32* @q, align 4
  %add414 = add nsw i32 %add413, %354
  store i32 %add414, i32* %c, align 4
  %355 = load i32, i32* %midc, align 4
  %cmp415 = icmp sgt i32 %add414, %355
  br i1 %cmp415, label %if.then.417, label %if.end.418

if.then.417:                                      ; preds = %for.body.408
  %356 = load i32, i32* %c, align 4
  store i32 %356, i32* %midc, align 4
  %357 = load i32, i32* %j, align 4
  store i32 %357, i32* %midj, align 4
  store i32 2, i32* %type, align 4
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.417, %for.body.408
  br label %for.inc.419

for.inc.419:                                      ; preds = %if.end.418
  %358 = load i32, i32* %j, align 4
  %dec420 = add nsw i32 %358, -1
  store i32 %dec420, i32* %j, align 4
  br label %for.cond.405

for.end.421:                                      ; preds = %for.cond.405
  %359 = load i32, i32* %type, align 4
  %cmp422 = icmp eq i32 %359, 1
  br i1 %cmp422, label %if.then.424, label %if.else.431

if.then.424:                                      ; preds = %for.end.421
  %360 = load i8*, i8** %A.addr, align 8
  %361 = load i8*, i8** %B.addr, align 8
  %362 = load i32, i32* %midi, align 4
  %363 = load i32, i32* %midj, align 4
  %364 = load i32, i32* %tb.addr, align 4
  %365 = load i32, i32* @q, align 4
  %call425 = call i32 @diff(i8* %360, i8* %361, i32 %362, i32 %363, i32 %364, i32 %365)
  %366 = load i8*, i8** %A.addr, align 8
  %367 = load i32, i32* %midi, align 4
  %idx.ext = sext i32 %367 to i64
  %add.ptr = getelementptr inbounds i8, i8* %366, i64 %idx.ext
  %368 = load i8*, i8** %B.addr, align 8
  %369 = load i32, i32* %midj, align 4
  %idx.ext426 = sext i32 %369 to i64
  %add.ptr427 = getelementptr inbounds i8, i8* %368, i64 %idx.ext426
  %370 = load i32, i32* %M.addr, align 4
  %371 = load i32, i32* %midi, align 4
  %sub428 = sub nsw i32 %370, %371
  %372 = load i32, i32* %N.addr, align 4
  %373 = load i32, i32* %midj, align 4
  %sub429 = sub nsw i32 %372, %373
  %374 = load i32, i32* @q, align 4
  %375 = load i32, i32* %te.addr, align 4
  %call430 = call i32 @diff(i8* %add.ptr, i8* %add.ptr427, i32 %sub428, i32 %sub429, i32 %374, i32 %375)
  br label %if.end.453

if.else.431:                                      ; preds = %for.end.421
  %376 = load i8*, i8** %A.addr, align 8
  %377 = load i8*, i8** %B.addr, align 8
  %378 = load i32, i32* %midi, align 4
  %sub432 = sub nsw i32 %378, 1
  %379 = load i32, i32* %midj, align 4
  %380 = load i32, i32* %tb.addr, align 4
  %381 = load i32, i32* @zero, align 4
  %call433 = call i32 @diff(i8* %376, i8* %377, i32 %sub432, i32 %379, i32 %380, i32 %381)
  %382 = load i32, i32* @I, align 4
  %add434 = add nsw i32 %382, 2
  store i32 %add434, i32* @I, align 4
  %383 = load i32, i32* @al_len, align 4
  %add435 = add nsw i32 %383, 2
  store i32 %add435, i32* @al_len, align 4
  %384 = load i32, i32* @last, align 4
  %cmp436 = icmp slt i32 %384, 0
  br i1 %cmp436, label %if.then.438, label %if.else.441

if.then.438:                                      ; preds = %if.else.431
  %385 = load i32*, i32** @sapp, align 8
  %arrayidx439 = getelementptr inbounds i32, i32* %385, i64 -1
  %386 = load i32, i32* %arrayidx439, align 4
  %sub440 = sub nsw i32 %386, 2
  store i32 %sub440, i32* %arrayidx439, align 4
  store i32 %sub440, i32* @last, align 4
  br label %if.end.443

if.else.441:                                      ; preds = %if.else.431
  %387 = load i32*, i32** @sapp, align 8
  %incdec.ptr442 = getelementptr inbounds i32, i32* %387, i32 1
  store i32* %incdec.ptr442, i32** @sapp, align 8
  store i32 -2, i32* %387, align 4
  store i32 -2, i32* @last, align 4
  br label %if.end.443

if.end.443:                                       ; preds = %if.else.441, %if.then.438
  %388 = load i8*, i8** %A.addr, align 8
  %389 = load i32, i32* %midi, align 4
  %idx.ext444 = sext i32 %389 to i64
  %add.ptr445 = getelementptr inbounds i8, i8* %388, i64 %idx.ext444
  %add.ptr446 = getelementptr inbounds i8, i8* %add.ptr445, i64 1
  %390 = load i8*, i8** %B.addr, align 8
  %391 = load i32, i32* %midj, align 4
  %idx.ext447 = sext i32 %391 to i64
  %add.ptr448 = getelementptr inbounds i8, i8* %390, i64 %idx.ext447
  %392 = load i32, i32* %M.addr, align 4
  %393 = load i32, i32* %midi, align 4
  %sub449 = sub nsw i32 %392, %393
  %sub450 = sub nsw i32 %sub449, 1
  %394 = load i32, i32* %N.addr, align 4
  %395 = load i32, i32* %midj, align 4
  %sub451 = sub nsw i32 %394, %395
  %396 = load i32, i32* @zero, align 4
  %397 = load i32, i32* %te.addr, align 4
  %call452 = call i32 @diff(i8* %add.ptr446, i8* %add.ptr448, i32 %sub450, i32 %sub451, i32 %396, i32 %397)
  br label %if.end.453

if.end.453:                                       ; preds = %if.end.443, %if.then.424
  %398 = load i32, i32* %midc, align 4
  store i32 %398, i32* %retval
  br label %return

return:                                           ; preds = %if.end.453, %if.end.167, %cond.end.30, %cond.end
  %399 = load i32, i32* %retval
  ret i32 %399
}

; Function Attrs: nounwind uwtable
define i32 @display(i8* %A, i8* %B, i32 %M, i32 %N, i32* %S, i32 %AP, i32 %BP) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %S.addr = alloca i32*, align 8
  %AP.addr = alloca i32, align 4
  %BP.addr = alloca i32, align 4
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %c = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %op = alloca i32, align 4
  %lines = alloca i32, align 4
  %ap = alloca i32, align 4
  %bp = alloca i32, align 4
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %z = alloca i8, align 1
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32* %S, i32** %S.addr, align 8
  store i32 %AP, i32* %AP.addr, align 4
  store i32 %BP, i32* %BP.addr, align 4
  store i32 0, i32* %lines, align 4
  store i32 0, i32* %op, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* %AP.addr, align 4
  store i32 %0, i32* %ap, align 4
  %1 = load i32, i32* %BP.addr, align 4
  store i32 %1, i32* %bp, align 4
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i32 0, i32 0), i8** %a, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i32 0, i32 0), i8** %b, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i32 0, i32 0), i8** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.90, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %M.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %N.addr, align 4
  %cmp1 = icmp slt i32 %4, %5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load i32, i32* %op, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %8 = load i32*, i32** %S.addr, align 8
  %9 = load i32, i32* %8, align 4
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32*, i32** %S.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %S.addr, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %op, align 4
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %inc to i64
  %13 = load i8*, i8** %A.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %15 = load i8*, i8** %a, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i32, i32* %j, align 4
  %inc4 = add nsw i32 %16, 1
  store i32 %inc4, i32* %j, align 4
  %idxprom5 = sext i32 %inc4 to i64
  %17 = load i8*, i8** %B.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %17, i64 %idxprom5
  %18 = load i8, i8* %arrayidx6, align 1
  %19 = load i8*, i8** %b, align 8
  store i8 %18, i8* %19, align 1
  %20 = load i8*, i8** %a, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr7, i8** %a, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %x, align 1
  %22 = load i8*, i8** %b, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr8, i8** %b, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %y, align 1
  store i8 32, i8* %z, align 1
  %24 = load i8, i8* %x, align 1
  %conv = sext i8 %24 to i32
  %25 = load i8, i8* %y, align 1
  %conv9 = sext i8 %25 to i32
  %cmp10 = icmp eq i32 %conv, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  store i8 124, i8* %z, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %26 = load i8, i8* %x, align 1
  %conv13 = sext i8 %26 to i32
  %cmp14 = icmp eq i32 %conv13, 65
  br i1 %cmp14, label %land.lhs.true.16, label %lor.lhs.false

land.lhs.true.16:                                 ; preds = %if.end
  %27 = load i8, i8* %y, align 1
  %conv17 = sext i8 %27 to i32
  %cmp18 = icmp eq i32 %conv17, 71
  br i1 %cmp18, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16, %if.end
  %28 = load i8, i8* %x, align 1
  %conv20 = sext i8 %28 to i32
  %cmp21 = icmp eq i32 %conv20, 67
  br i1 %cmp21, label %land.lhs.true.23, label %lor.lhs.false.27

land.lhs.true.23:                                 ; preds = %lor.lhs.false
  %29 = load i8, i8* %y, align 1
  %conv24 = sext i8 %29 to i32
  %cmp25 = icmp eq i32 %conv24, 84
  br i1 %cmp25, label %if.then.43, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.23, %lor.lhs.false
  %30 = load i8, i8* %x, align 1
  %conv28 = sext i8 %30 to i32
  %cmp29 = icmp eq i32 %conv28, 71
  br i1 %cmp29, label %land.lhs.true.31, label %lor.lhs.false.35

land.lhs.true.31:                                 ; preds = %lor.lhs.false.27
  %31 = load i8, i8* %y, align 1
  %conv32 = sext i8 %31 to i32
  %cmp33 = icmp eq i32 %conv32, 65
  br i1 %cmp33, label %if.then.43, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.31, %lor.lhs.false.27
  %32 = load i8, i8* %x, align 1
  %conv36 = sext i8 %32 to i32
  %cmp37 = icmp eq i32 %conv36, 84
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.44

land.lhs.true.39:                                 ; preds = %lor.lhs.false.35
  %33 = load i8, i8* %y, align 1
  %conv40 = sext i8 %33 to i32
  %cmp41 = icmp eq i32 %conv40, 67
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true.39, %land.lhs.true.31, %land.lhs.true.23, %land.lhs.true.16
  store i8 58, i8* %z, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true.39, %lor.lhs.false.35
  %34 = load i8, i8* %z, align 1
  %35 = load i8*, i8** %c, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr45, i8** %c, align 8
  store i8 %34, i8* %35, align 1
  br label %if.end.68

if.else:                                          ; preds = %land.lhs.true, %while.body
  %36 = load i32, i32* %op, align 4
  %cmp46 = icmp eq i32 %36, 0
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.else
  %37 = load i32*, i32** %S.addr, align 8
  %incdec.ptr49 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr49, i32** %S.addr, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %op, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.else
  %39 = load i32, i32* %op, align 4
  %cmp51 = icmp sgt i32 %39, 0
  br i1 %cmp51, label %if.then.53, label %if.else.59

if.then.53:                                       ; preds = %if.end.50
  %40 = load i8*, i8** %a, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr54, i8** %a, align 8
  store i8 32, i8* %40, align 1
  %41 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %41, 1
  store i32 %inc55, i32* %j, align 4
  %idxprom56 = sext i32 %inc55 to i64
  %42 = load i8*, i8** %B.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %42, i64 %idxprom56
  %43 = load i8, i8* %arrayidx57, align 1
  %44 = load i8*, i8** %b, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr58, i8** %b, align 8
  store i8 %43, i8* %44, align 1
  %45 = load i32, i32* %op, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %op, align 4
  br label %if.end.66

if.else.59:                                       ; preds = %if.end.50
  %46 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %46, 1
  store i32 %inc60, i32* %i, align 4
  %idxprom61 = sext i32 %inc60 to i64
  %47 = load i8*, i8** %A.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %47, i64 %idxprom61
  %48 = load i8, i8* %arrayidx62, align 1
  %49 = load i8*, i8** %a, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr63, i8** %a, align 8
  store i8 %48, i8* %49, align 1
  %50 = load i8*, i8** %b, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr64, i8** %b, align 8
  store i8 32, i8* %50, align 1
  %51 = load i32, i32* %op, align 4
  %inc65 = add nsw i32 %51, 1
  store i32 %inc65, i32* %op, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.59, %if.then.53
  %52 = load i8*, i8** %c, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr67, i8** %c, align 8
  store i8 45, i8* %52, align 1
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.66, %if.end.44
  %53 = load i8*, i8** %a, align 8
  %cmp69 = icmp uge i8* %53, getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i32 0, i64 50)
  br i1 %cmp69, label %if.then.77, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.end.68
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %M.addr, align 4
  %cmp72 = icmp sge i32 %54, %55
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.90

land.lhs.true.74:                                 ; preds = %lor.lhs.false.71
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %N.addr, align 4
  %cmp75 = icmp sge i32 %56, %57
  br i1 %cmp75, label %if.then.77, label %if.end.90

if.then.77:                                       ; preds = %land.lhs.true.74, %if.end.68
  %58 = load i8*, i8** %c, align 8
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %b, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %a, align 8
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %lines, align 4
  %inc78 = add nsw i32 %61, 1
  store i32 %inc78, i32* %lines, align 4
  %mul = mul nsw i32 50, %61
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %mul)
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i32 0, i64 10), i8** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.77
  %62 = load i8*, i8** %b, align 8
  %63 = load i8*, i8** %a, align 8
  %cmp79 = icmp ule i8* %62, %63
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i8*, i8** %b, align 8
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 10
  store i8* %add.ptr, i8** %b, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load i8*, i8** %b, align 8
  %66 = load i8*, i8** %a, align 8
  %add.ptr82 = getelementptr inbounds i8, i8* %66, i64 5
  %cmp83 = icmp ule i8* %65, %add.ptr82
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %for.end
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %for.end
  %67 = load i32, i32* %ap, align 4
  %68 = load i32, i32* %bp, align 4
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i32 0, i32 0), i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i32 0, i32 0))
  %69 = load i32, i32* %AP.addr, align 4
  %70 = load i32, i32* %i, align 4
  %add = add nsw i32 %69, %70
  store i32 %add, i32* %ap, align 4
  %71 = load i32, i32* %BP.addr, align 4
  %72 = load i32, i32* %j, align 4
  %add89 = add nsw i32 %71, %72
  store i32 %add89, i32* %bp, align 4
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i32 0, i32 0), i8** %a, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i32 0, i32 0), i8** %b, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i32 0, i32 0), i8** %c, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.87, %land.lhs.true.74, %lor.lhs.false.71
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define i32 @fatal(i8* %msg) #0 {
entry:
  %retval = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* %1)
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @fatalf(i8* %msg, i8* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %2 = load i8*, i8** %val.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1, i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @ckopen(i8* %name, i8* %mode) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 @fatalf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  ret %struct._IO_FILE* %3
}

; Function Attrs: nounwind uwtable
define double @dtime() #0 {
entry:
  %q = alloca double, align 8
  %call = call i32 @getrusage(i32 0, %struct.rusage* @rusage) #6
  %0 = load i64, i64* getelementptr inbounds (%struct.rusage, %struct.rusage* @rusage, i32 0, i32 0, i32 0), align 8
  %conv = sitofp i64 %0 to double
  store double %conv, double* %q, align 8
  %1 = load double, double* %q, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.rusage, %struct.rusage* @rusage, i32 0, i32 0, i32 1), align 8
  %conv1 = sitofp i64 %2 to double
  %mul = fmul double %conv1, 1.000000e-06
  %add = fadd double %1, %mul
  store double %add, double* %q, align 8
  %3 = load double, double* %q, align 8
  ret double %3
}

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
