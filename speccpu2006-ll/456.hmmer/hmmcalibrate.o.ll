; ModuleID = 'hmmcalibrate.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_s = type { i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hmmfile_s = type { %struct._IO_FILE*, %struct.ssifile_s*, i32 (%struct.hmmfile_s*, %struct.plan7_s**)*, i32, i32, i32, i32, %struct.ssioffset_s }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.histogram_s = type { i32*, i32, i32, i32, i32, i32, i32, float*, i32, [3 x float], float, float }
%struct.stopwatch_s = type { i64, i64, double, double, double }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@OPTIONS = internal global [9 x %struct.opt_s] [%struct.opt_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 4 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 1 }, %struct.opt_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0 }, %struct.opt_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 2 }, %struct.opt_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 1 }], align 16
@usage = internal global [130 x i8] c"Usage: hmmcalibrate [-options] <hmmfile>\0AAvailable options are:\0A  -h             : print short usage and version info, then exit\0A\00", align 16
@.str = private unnamed_addr constant [6 x i8] c"--cpu\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--fixed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--histfile\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--mean\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"--num\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"--pvm\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"--sd\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"--seed\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@banner = internal global [48 x i8] c"hmmcalibrate -- calibrate HMM search statistics\00", align 16
@experts = internal global [456 x i8] c"  --cpu <n>      : run <n> threads in parallel (if threaded)\0A  --fixed <n>    : fix random sequence length at <n>\0A  --histfile <f> : save histogram(s) to file <f>\0A  --mean <x>     : set random seq length mean at <x> [350]\0A  --num <n>      : set number of sampled seqs to <n> [5000]\0A  --pvm          : run on a Parallel Virtual Machine (PVM)\0A  --sd <x>       : set random seq length std. dev to <x> [350]\0A  --seed <n>     : set random seed to <n> [time()]\0A\00", align 16
@.str.9 = private unnamed_addr constant [35 x i8] c"Incorrect number of arguments.\0A%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"PVM support is not compiled into HMMER; --pvm doesn't work.\00", align 1
@.str.11 = private unnamed_addr constant [80 x i8] c"Posix threads support is not compiled into HMMER; --cpu doesn't have any effect\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"failed to open HMM file %s for reading.\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Failed to open histogram save file %s for writing\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"hmmcalibrate.c\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c".new\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"HMM file:                 %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Length fixed to:          %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Length distribution mean: %.0f\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Length distribution s.d.: %.0f\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Number of samples:        %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"random seed:              %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"histogram(s) saved to:    %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"[not saved]\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"PVM:                      ACTIVE\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"POSIX threads:            %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"HMM file may be corrupt or in incorrect format; parse failed\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"wait. that can't happen. I didn't do anything.\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"fit failed; --num may be set too small?\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"HMM    : %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"mu     : %12f\0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"lambda : %12f\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"max    : %12f\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"HMM: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"Ouch. Temporary file %s appeared during the run.\00", align 1
@.str.39 = private unnamed_addr constant [56 x i8] c"Ouch. Temporary file %s couldn't be opened for writing.\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Ran out of HMMs too early in pass 2\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"HMM file %s was corrupted? Parse failed in pass 2\00", align 1
@Alphabet = external global [25 x i8], align 16
@Alphabet_size = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @hmmcalibrate(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %hmmfile = alloca i8*, align 8
  %tmpfile = alloca i8*, align 8
  %hmmfp = alloca %struct.hmmfile_s*, align 8
  %outfp = alloca %struct._IO_FILE*, align 8
  %mode = alloca i8*, align 8
  %hmm = alloca %struct.plan7_s*, align 8
  %idx = alloca i32, align 4
  %nhmm = alloca i32, align 4
  %hist = alloca %struct.histogram_s*, align 8
  %max = alloca float, align 4
  %histfile = alloca i8*, align 8
  %hfp = alloca %struct._IO_FILE*, align 8
  %stopwatch = alloca %struct.stopwatch_s, align 8
  %extrawatch = alloca %struct.stopwatch_s, align 8
  %mu = alloca float*, align 8
  %lambda = alloca float*, align 8
  %mu_lumpsize = alloca i32, align 4
  %nsample = alloca i32, align 4
  %seed = alloca i32, align 4
  %fixedlen = alloca i32, align 4
  %lenmean = alloca float, align 4
  %lensd = alloca float, align 4
  %do_pvm = alloca i32, align 4
  %pvm_lumpsize = alloca i32, align 4
  %pvm_nslaves = alloca i32, align 4
  %optname = alloca i8*, align 8
  %optarg = alloca i8*, align 8
  %optind = alloca i32, align 4
  %num_threads = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 5000, i32* %nsample, align 4
  store i32 0, i32* %fixedlen, align 4
  store float 3.250000e+02, float* %lenmean, align 4
  store float 2.000000e+02, float* %lensd, align 4
  %call = call i64 @time(i64* null) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %seed, align 4
  store i8* null, i8** %histfile, align 8
  store i32 0, i32* %do_pvm, align 4
  store i32 20, i32* %pvm_lumpsize, align 4
  store i32 100, i32* %mu_lumpsize, align 4
  store i32 0, i32* %num_threads, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.60, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call1 = call i32 @Getopt(i32 %0, i8** %1, %struct.opt_s* getelementptr inbounds ([9 x %struct.opt_s], [9 x %struct.opt_s]* @OPTIONS, i32 0, i32 0), i32 9, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @usage, i32 0, i32 0), i32* %optind, i8** %optname, i8** %optarg)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %optname, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %optarg, align 8
  %call4 = call i32 @atoi(i8* %3) #6
  store i32 %call4, i32* %num_threads, align 4
  br label %if.end.60

if.else:                                          ; preds = %while.body
  %4 = load i8*, i8** %optname, align 8
  %call5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %5 = load i8*, i8** %optarg, align 8
  %call9 = call i32 @atoi(i8* %5) #6
  store i32 %call9, i32* %fixedlen, align 4
  br label %if.end.59

if.else.10:                                       ; preds = %if.else
  %6 = load i8*, i8** %optname, align 8
  %call11 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #6
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.10
  %7 = load i8*, i8** %optarg, align 8
  store i8* %7, i8** %histfile, align 8
  br label %if.end.58

if.else.15:                                       ; preds = %if.else.10
  %8 = load i8*, i8** %optname, align 8
  %call16 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #6
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.else.15
  %9 = load i8*, i8** %optarg, align 8
  %call20 = call double @atof(i8* %9) #6
  %conv21 = fptrunc double %call20 to float
  store float %conv21, float* %lenmean, align 4
  br label %if.end.57

if.else.22:                                       ; preds = %if.else.15
  %10 = load i8*, i8** %optname, align 8
  %call23 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #6
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.22
  %11 = load i8*, i8** %optarg, align 8
  %call27 = call i32 @atoi(i8* %11) #6
  store i32 %call27, i32* %nsample, align 4
  br label %if.end.56

if.else.28:                                       ; preds = %if.else.22
  %12 = load i8*, i8** %optname, align 8
  %call29 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #6
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.28
  store i32 1, i32* %do_pvm, align 4
  br label %if.end.55

if.else.33:                                       ; preds = %if.else.28
  %13 = load i8*, i8** %optname, align 8
  %call34 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #6
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %if.else.33
  %14 = load i8*, i8** %optarg, align 8
  %call38 = call double @atof(i8* %14) #6
  %conv39 = fptrunc double %call38 to float
  store float %conv39, float* %lensd, align 4
  br label %if.end.54

if.else.40:                                       ; preds = %if.else.33
  %15 = load i8*, i8** %optname, align 8
  %call41 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)) #6
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.else.40
  %16 = load i8*, i8** %optarg, align 8
  %call45 = call i32 @atoi(i8* %16) #6
  store i32 %call45, i32* %seed, align 4
  br label %if.end.53

if.else.46:                                       ; preds = %if.else.40
  %17 = load i8*, i8** %optname, align 8
  %call47 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #6
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end

if.then.50:                                       ; preds = %if.else.46
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @HMMERBanner(%struct._IO_FILE* %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @banner, i32 0, i32 0))
  %call51 = call i32 @puts(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @usage, i32 0, i32 0))
  %call52 = call i32 @puts(i8* getelementptr inbounds ([456 x i8], [456 x i8]* @experts, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

if.end:                                           ; preds = %if.else.46
  br label %if.end.53

if.end.53:                                        ; preds = %if.end, %if.then.44
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.37
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.32
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.26
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.19
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.14
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.8
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %argc.addr, align 4
  %20 = load i32, i32* %optind, align 4
  %sub = sub nsw i32 %19, %20
  %cmp61 = icmp ne i32 %sub, 1
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %while.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([130 x i8], [130 x i8]* @usage, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %while.end
  %21 = load i32, i32* %optind, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %optind, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8
  store i8* %23, i8** %hmmfile, align 8
  %24 = load i32, i32* %do_pvm, align 4
  %tobool65 = icmp ne i32 %24, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.64
  %25 = load i32, i32* %num_threads, align 4
  %tobool68 = icmp ne i32 %25, 0
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.67
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.67
  %26 = load i8*, i8** %hmmfile, align 8
  %call71 = call %struct.hmmfile_s* @HMMFileOpen(i8* %26, i8* null)
  store %struct.hmmfile_s* %call71, %struct.hmmfile_s** %hmmfp, align 8
  %cmp72 = icmp eq %struct.hmmfile_s* %call71, null
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.70
  %27 = load i8*, i8** %hmmfile, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i8* %27)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.end.70
  store %struct._IO_FILE* null, %struct._IO_FILE** %hfp, align 8
  %28 = load i8*, i8** %histfile, align 8
  %cmp76 = icmp ne i8* %28, null
  br i1 %cmp76, label %if.then.78, label %if.end.84

if.then.78:                                       ; preds = %if.end.75
  %29 = load i8*, i8** %histfile, align 8
  %call79 = call %struct._IO_FILE* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %call79, %struct._IO_FILE** %hfp, align 8
  %cmp80 = icmp eq %struct._IO_FILE* %call79, null
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.78
  %30 = load i8*, i8** %histfile, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0), i8* %30)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.then.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.75
  %31 = load i8*, i8** %hmmfile, align 8
  %call85 = call i64 @strlen(i8* %31) #6
  %add = add i64 %call85, 5
  %call86 = call i8* @sre_malloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 265, i64 %add)
  store i8* %call86, i8** %tmpfile, align 8
  %32 = load i8*, i8** %tmpfile, align 8
  %33 = load i8*, i8** %hmmfile, align 8
  %call87 = call i8* @strcpy(i8* %32, i8* %33) #5
  %34 = load i8*, i8** %tmpfile, align 8
  %call88 = call i8* @strcat(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #5
  %35 = load i8*, i8** %tmpfile, align 8
  %call89 = call i32 @FileExists(i8* %35)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.97

if.then.91:                                       ; preds = %if.end.84
  %36 = load i8*, i8** %tmpfile, align 8
  %call92 = call i32 @remove(i8* %36) #5
  %cmp93 = icmp ne i32 %call92, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.then.91
  call void @Panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 270)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.then.91
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.84
  %37 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %37, i32 0, i32 3
  %38 = load i32, i32* %is_binary, align 4
  %tobool98 = icmp ne i32 %38, 0
  br i1 %tobool98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.end.97
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8** %mode, align 8
  br label %if.end.101

if.else.100:                                      ; preds = %if.end.97
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8** %mode, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.100, %if.then.99
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @HMMERBanner(%struct._IO_FILE* %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @banner, i32 0, i32 0))
  %40 = load i8*, i8** %hmmfile, align 8
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* %40)
  %41 = load i32, i32* %fixedlen, align 4
  %tobool103 = icmp ne i32 %41, 0
  br i1 %tobool103, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.end.101
  %42 = load i32, i32* %fixedlen, align 4
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i32 %42)
  br label %if.end.111

if.else.106:                                      ; preds = %if.end.101
  %43 = load float, float* %lenmean, align 4
  %conv107 = fpext float %43 to double
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0), double %conv107)
  %44 = load float, float* %lensd, align 4
  %conv109 = fpext float %44 to double
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0), double %conv109)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.106, %if.then.104
  %45 = load i32, i32* %nsample, align 4
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0), i32 %45)
  %46 = load i32, i32* %seed, align 4
  %call113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), i32 %46)
  %47 = load i8*, i8** %histfile, align 8
  %cmp114 = icmp ne i8* %47, null
  br i1 %cmp114, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.111
  %48 = load i8*, i8** %histfile, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.111
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %48, %cond.true ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), %cond.false ]
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i8* %cond)
  %49 = load i32, i32* %do_pvm, align 4
  %tobool117 = icmp ne i32 %49, 0
  br i1 %tobool117, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %cond.end
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.126

if.else.120:                                      ; preds = %cond.end
  %50 = load i32, i32* %num_threads, align 4
  %cmp121 = icmp sgt i32 %50, 0
  br i1 %cmp121, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %if.else.120
  %51 = load i32, i32* %num_threads, align 4
  %call124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0), i32 %51)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.123, %if.else.120
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.118
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* %nhmm, align 4
  %52 = load i32, i32* %mu_lumpsize, align 4
  %conv128 = sext i32 %52 to i64
  %mul = mul i64 4, %conv128
  %call129 = call i8* @sre_malloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 308, i64 %mul)
  %53 = bitcast i8* %call129 to float*
  store float* %53, float** %mu, align 8
  %54 = load i32, i32* %mu_lumpsize, align 4
  %conv130 = sext i32 %54 to i64
  %mul131 = mul i64 4, %conv130
  %call132 = call i8* @sre_malloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 309, i64 %mul131)
  %55 = bitcast i8* %call132 to float*
  store float* %55, float** %lambda, align 8
  br label %while.cond.133

while.cond.133:                                   ; preds = %if.end.189, %if.end.126
  %56 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %call134 = call i32 @HMMFileRead(%struct.hmmfile_s* %56, %struct.plan7_s** %hmm)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %while.body.136, label %while.end.190

while.body.136:                                   ; preds = %while.cond.133
  %57 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cmp137 = icmp eq %struct.plan7_s* %57, null
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %while.body.136
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %while.body.136
  %58 = load i32, i32* %do_pvm, align 4
  %tobool141 = icmp ne i32 %58, 0
  br i1 %tobool141, label %if.else.145, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.140
  %59 = load i32, i32* %num_threads, align 4
  %cmp142 = icmp eq i32 %59, 0
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %land.lhs.true
  %60 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %61 = load i32, i32* %seed, align 4
  %62 = load i32, i32* %nsample, align 4
  %63 = load float, float* %lenmean, align 4
  %64 = load float, float* %lensd, align 4
  %65 = load i32, i32* %fixedlen, align 4
  call void @main_loop_serial(%struct.plan7_s* %60, i32 %61, i32 %62, float %63, float %64, i32 %65, %struct.histogram_s** %hist, float* %max)
  br label %if.end.146

if.else.145:                                      ; preds = %land.lhs.true, %if.end.140
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.then.144
  %66 = load %struct.histogram_s*, %struct.histogram_s** %hist, align 8
  %call147 = call i32 @ExtremeValueFitHistogram(%struct.histogram_s* %66, i32 1, float 9.999000e+03)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %if.end.146
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.end.146
  %67 = load %struct.histogram_s*, %struct.histogram_s** %hist, align 8
  %param = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %67, i32 0, i32 9
  %arrayidx151 = getelementptr inbounds [3 x float], [3 x float]* %param, i32 0, i64 0
  %68 = load float, float* %arrayidx151, align 4
  %69 = load i32, i32* %nhmm, align 4
  %idxprom152 = sext i32 %69 to i64
  %70 = load float*, float** %mu, align 8
  %arrayidx153 = getelementptr inbounds float, float* %70, i64 %idxprom152
  store float %68, float* %arrayidx153, align 4
  %71 = load %struct.histogram_s*, %struct.histogram_s** %hist, align 8
  %param154 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %71, i32 0, i32 9
  %arrayidx155 = getelementptr inbounds [3 x float], [3 x float]* %param154, i32 0, i64 1
  %72 = load float, float* %arrayidx155, align 4
  %73 = load i32, i32* %nhmm, align 4
  %idxprom156 = sext i32 %73 to i64
  %74 = load float*, float** %lambda, align 8
  %arrayidx157 = getelementptr inbounds float, float* %74, i64 %idxprom156
  store float %72, float* %arrayidx157, align 4
  %75 = load i32, i32* %nhmm, align 4
  %inc158 = add nsw i32 %75, 1
  store i32 %inc158, i32* %nhmm, align 4
  %76 = load i32, i32* %nhmm, align 4
  %rem = srem i32 %76, 100
  %cmp159 = icmp eq i32 %rem, 0
  br i1 %cmp159, label %if.then.161, label %if.end.170

if.then.161:                                      ; preds = %if.end.150
  %77 = load float*, float** %mu, align 8
  %78 = bitcast float* %77 to i8*
  %79 = load i32, i32* %nhmm, align 4
  %80 = load i32, i32* %mu_lumpsize, align 4
  %add162 = add nsw i32 %79, %80
  %conv163 = sext i32 %add162 to i64
  %mul164 = mul i64 4, %conv163
  %call165 = call i8* @sre_realloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 348, i8* %78, i64 %mul164)
  %81 = bitcast i8* %call165 to float*
  store float* %81, float** %mu, align 8
  %82 = load float*, float** %lambda, align 8
  %83 = bitcast float* %82 to i8*
  %84 = load i32, i32* %nhmm, align 4
  %85 = load i32, i32* %mu_lumpsize, align 4
  %add166 = add nsw i32 %84, %85
  %conv167 = sext i32 %add166 to i64
  %mul168 = mul i64 4, %conv167
  %call169 = call i8* @sre_realloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 349, i8* %83, i64 %mul168)
  %86 = bitcast i8* %call169 to float*
  store float* %86, float** %lambda, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.161, %if.end.150
  %87 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %87, i32 0, i32 0
  %88 = load i8*, i8** %name, align 8
  %call171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* %88)
  %89 = load %struct.histogram_s*, %struct.histogram_s** %hist, align 8
  %param172 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %89, i32 0, i32 9
  %arrayidx173 = getelementptr inbounds [3 x float], [3 x float]* %param172, i32 0, i64 0
  %90 = load float, float* %arrayidx173, align 4
  %conv174 = fpext float %90 to double
  %call175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), double %conv174)
  %91 = load %struct.histogram_s*, %struct.histogram_s** %hist, align 8
  %param176 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %91, i32 0, i32 9
  %arrayidx177 = getelementptr inbounds [3 x float], [3 x float]* %param176, i32 0, i64 1
  %92 = load float, float* %arrayidx177, align 4
  %conv178 = fpext float %92 to double
  %call179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), double %conv178)
  %93 = load float, float* %max, align 4
  %conv180 = fpext float %93 to double
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), double %conv180)
  %call182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0))
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %cmp183 = icmp ne %struct._IO_FILE* %94, null
  br i1 %cmp183, label %if.then.185, label %if.end.189

if.then.185:                                      ; preds = %if.end.170
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %96 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name186 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %96, i32 0, i32 0
  %97 = load i8*, i8** %name186, align 8
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* %97)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %99 = load %struct.histogram_s*, %struct.histogram_s** %hist, align 8
  call void @PrintASCIIHistogram(%struct._IO_FILE* %98, %struct.histogram_s* %99)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %call188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.185, %if.end.170
  %101 = load %struct.histogram_s*, %struct.histogram_s** %hist, align 8
  call void @FreeHistogram(%struct.histogram_s* %101)
  %102 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @FreePlan7(%struct.plan7_s* %102)
  br label %while.cond.133

while.end.190:                                    ; preds = %while.cond.133
  %103 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  call void @HMMFileRewind(%struct.hmmfile_s* %103)
  %104 = load i8*, i8** %tmpfile, align 8
  %call191 = call i32 @FileExists(i8* %104)
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %while.end.190
  %105 = load i8*, i8** %tmpfile, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i32 0, i32 0), i8* %105)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %while.end.190
  %106 = load i8*, i8** %tmpfile, align 8
  %107 = load i8*, i8** %mode, align 8
  %call195 = call %struct._IO_FILE* @fopen(i8* %106, i8* %107)
  store %struct._IO_FILE* %call195, %struct._IO_FILE** %outfp, align 8
  %cmp196 = icmp eq %struct._IO_FILE* %call195, null
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.end.194
  %108 = load i8*, i8** %tmpfile, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i32 0, i32 0), i8* %108)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %if.end.194
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.199
  %109 = load i32, i32* %idx, align 4
  %110 = load i32, i32* %nhmm, align 4
  %cmp200 = icmp slt i32 %109, %110
  br i1 %cmp200, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %111 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %call202 = call i32 @HMMFileRead(%struct.hmmfile_s* %111, %struct.plan7_s** %hmm)
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %if.end.205, label %if.then.204

if.then.204:                                      ; preds = %for.body
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.204, %for.body
  %112 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cmp206 = icmp eq %struct.plan7_s* %112, null
  br i1 %cmp206, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %if.end.205
  %113 = load i8*, i8** %hmmfile, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0), i8* %113)
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.208, %if.end.205
  %114 = load i32, i32* %idx, align 4
  %idxprom210 = sext i32 %114 to i64
  %115 = load float*, float** %mu, align 8
  %arrayidx211 = getelementptr inbounds float, float* %115, i64 %idxprom210
  %116 = load float, float* %arrayidx211, align 4
  %117 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mu212 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %117, i32 0, i32 45
  store float %116, float* %mu212, align 4
  %118 = load i32, i32* %idx, align 4
  %idxprom213 = sext i32 %118 to i64
  %119 = load float*, float** %lambda, align 8
  %arrayidx214 = getelementptr inbounds float, float* %119, i64 %idxprom213
  %120 = load float, float* %arrayidx214, align 4
  %121 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %lambda215 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %121, i32 0, i32 46
  store float %120, float* %lambda215, align 4
  %122 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %122, i32 0, i32 47
  %123 = load i32, i32* %flags, align 4
  %or = or i32 %123, 128
  store i32 %or, i32* %flags, align 4
  %124 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %125 = load i32, i32* %argc.addr, align 4
  %126 = load i8**, i8*** %argv.addr, align 8
  call void @Plan7ComlogAppend(%struct.plan7_s* %124, i32 %125, i8** %126)
  %127 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  %is_binary216 = getelementptr inbounds %struct.hmmfile_s, %struct.hmmfile_s* %127, i32 0, i32 3
  %128 = load i32, i32* %is_binary216, align 4
  %tobool217 = icmp ne i32 %128, 0
  br i1 %tobool217, label %if.then.218, label %if.else.219

if.then.218:                                      ; preds = %if.end.209
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %outfp, align 8
  %130 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @WriteBinHMM(%struct._IO_FILE* %129, %struct.plan7_s* %130)
  br label %if.end.220

if.else.219:                                      ; preds = %if.end.209
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %outfp, align 8
  %132 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @WriteAscHMM(%struct._IO_FILE* %131, %struct.plan7_s* %132)
  br label %if.end.220

if.end.220:                                       ; preds = %if.else.219, %if.then.218
  %133 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @FreePlan7(%struct.plan7_s* %133)
  br label %for.inc

for.inc:                                          ; preds = %if.end.220
  %134 = load i32, i32* %idx, align 4
  %inc221 = add nsw i32 %134, 1
  store i32 %inc221, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %135 = load %struct.hmmfile_s*, %struct.hmmfile_s** %hmmfp, align 8
  call void @HMMFileClose(%struct.hmmfile_s* %135)
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %outfp, align 8
  %call222 = call i32 @fclose(%struct._IO_FILE* %136)
  %cmp223 = icmp ne i32 %call222, 0
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %for.end
  call void @Panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 415)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.225, %for.end
  %137 = load i8*, i8** %tmpfile, align 8
  call void @free(i8* %137) #5
  %138 = load float*, float** %mu, align 8
  %139 = bitcast float* %138 to i8*
  call void @free(i8* %139) #5
  %140 = load float*, float** %lambda, align 8
  %141 = bitcast float* %140 to i8*
  call void @free(i8* %141) #5
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %cmp227 = icmp ne %struct._IO_FILE* %142, null
  br i1 %cmp227, label %if.then.229, label %if.end.231

if.then.229:                                      ; preds = %if.end.226
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %hfp, align 8
  %call230 = call i32 @fclose(%struct._IO_FILE* %143)
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %if.end.226
  call void @SqdClean()
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

declare i32 @Getopt(i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

declare void @HMMERBanner(%struct._IO_FILE*, i8*) #2

declare i32 @puts(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare void @Die(i8*, ...) #2

declare %struct.hmmfile_s* @HMMFileOpen(i8*, i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

declare i32 @FileExists(i8*) #2

; Function Attrs: nounwind
declare i32 @remove(i8*) #1

declare void @Panic(i8*, i32) #2

declare i32 @printf(i8*, ...) #2

declare i32 @HMMFileRead(%struct.hmmfile_s*, %struct.plan7_s**) #2

; Function Attrs: nounwind uwtable
define internal void @main_loop_serial(%struct.plan7_s* %hmm, i32 %seed, i32 %nsample, float %lenmean, float %lensd, i32 %fixedlen, %struct.histogram_s** %ret_hist, float* %ret_max) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %seed.addr = alloca i32, align 4
  %nsample.addr = alloca i32, align 4
  %lenmean.addr = alloca float, align 4
  %lensd.addr = alloca float, align 4
  %fixedlen.addr = alloca i32, align 4
  %ret_hist.addr = alloca %struct.histogram_s**, align 8
  %ret_max.addr = alloca float*, align 8
  %hist = alloca %struct.histogram_s*, align 8
  %mx = alloca %struct.dpmatrix_s*, align 8
  %randomseq = alloca [20 x float], align 16
  %p1 = alloca float, align 4
  %max = alloca float, align 4
  %seq = alloca i8*, align 8
  %dsq = alloca i8*, align 8
  %score = alloca float, align 4
  %sqlen = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 %seed, i32* %seed.addr, align 4
  store i32 %nsample, i32* %nsample.addr, align 4
  store float %lenmean, float* %lenmean.addr, align 4
  store float %lensd, float* %lensd.addr, align 4
  store i32 %fixedlen, i32* %fixedlen.addr, align 4
  store %struct.histogram_s** %ret_hist, %struct.histogram_s*** %ret_hist.addr, align 8
  store float* %ret_max, float** %ret_max.addr, align 8
  %0 = load i32, i32* %seed.addr, align 4
  call void @sre_srandom(i32 %0)
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @P7Logoddsify(%struct.plan7_s* %1, i32 1)
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %randomseq, i32 0, i32 0
  call void @P7DefaultNullModel(float* %arraydecay, float* %p1)
  %call = call %struct.histogram_s* @AllocHistogram(i32 -200, i32 200, i32 100)
  store %struct.histogram_s* %call, %struct.histogram_s** %hist, align 8
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 20
  %3 = load i32, i32* %M, align 4
  %call1 = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 1, i32 %3, i32 25, i32 0)
  store %struct.dpmatrix_s* %call1, %struct.dpmatrix_s** %mx, align 8
  store float 0xC7EFFFFFE0000000, float* %max, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %idx, align 4
  %5 = load i32, i32* %nsample.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %fixedlen.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %fixedlen.addr, align 4
  store i32 %7, i32* %sqlen, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %8 = load float, float* %lenmean.addr, align 4
  %conv = fpext float %8 to double
  %9 = load float, float* %lensd.addr, align 4
  %conv2 = fpext float %9 to double
  %call3 = call double @Gaussrandom(double %conv, double %conv2)
  %conv4 = fptosi double %call3 to i32
  store i32 %conv4, i32* %sqlen, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i32, i32* %sqlen, align 4
  %cmp5 = icmp slt i32 %10, 1
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %randomseq, i32 0, i32 0
  %11 = load i32, i32* @Alphabet_size, align 4
  %12 = load i32, i32* %sqlen, align 4
  %call8 = call i8* @RandomSequence(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), float* %arraydecay7, i32 %11, i32 %12)
  store i8* %call8, i8** %seq, align 8
  %13 = load i8*, i8** %seq, align 8
  %14 = load i32, i32* %sqlen, align 4
  %call9 = call i8* @DigitizeSequence(i8* %13, i32 %14)
  store i8* %call9, i8** %dsq, align 8
  %15 = load i32, i32* %sqlen, align 4
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 20
  %17 = load i32, i32* %M10, align 4
  %call11 = call i32 @P7ViterbiSize(i32 %15, i32 %17)
  %cmp12 = icmp sle i32 %call11, 1000
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.end
  %18 = load i8*, i8** %dsq, align 8
  %19 = load i32, i32* %sqlen, align 4
  %20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %21 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %call15 = call float @P7Viterbi(i8* %18, i32 %19, %struct.plan7_s* %20, %struct.dpmatrix_s* %21, %struct.p7trace_s** null)
  store float %call15, float* %score, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %if.end
  %22 = load i8*, i8** %dsq, align 8
  %23 = load i32, i32* %sqlen, align 4
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %25 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %call17 = call float @P7SmallViterbi(i8* %22, i32 %23, %struct.plan7_s* %24, %struct.dpmatrix_s* %25, %struct.p7trace_s** null)
  store float %call17, float* %score, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  %26 = load %struct.histogram_s*, %struct.histogram_s** %hist, align 8
  %27 = load float, float* %score, align 4
  call void @AddToHistogram(%struct.histogram_s* %26, float %27)
  %28 = load float, float* %score, align 4
  %29 = load float, float* %max, align 4
  %cmp19 = fcmp ogt float %28, %29
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %30 = load float, float* %score, align 4
  store float %30, float* %max, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  %31 = load i8*, i8** %dsq, align 8
  call void @free(i8* %31) #5
  %32 = load i8*, i8** %seq, align 8
  call void @free(i8* %32) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %33 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %34)
  %35 = load %struct.histogram_s*, %struct.histogram_s** %hist, align 8
  %36 = load %struct.histogram_s**, %struct.histogram_s*** %ret_hist.addr, align 8
  store %struct.histogram_s* %35, %struct.histogram_s** %36, align 8
  %37 = load float, float* %max, align 4
  %38 = load float*, float** %ret_max.addr, align 8
  store float %37, float* %38, align 4
  ret void
}

declare i32 @ExtremeValueFitHistogram(%struct.histogram_s*, i32, float) #2

declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @PrintASCIIHistogram(%struct._IO_FILE*, %struct.histogram_s*) #2

declare void @FreeHistogram(%struct.histogram_s*) #2

declare void @FreePlan7(%struct.plan7_s*) #2

declare void @HMMFileRewind(%struct.hmmfile_s*) #2

declare void @Plan7ComlogAppend(%struct.plan7_s*, i32, i8**) #2

declare void @WriteBinHMM(%struct._IO_FILE*, %struct.plan7_s*) #2

declare void @WriteAscHMM(%struct._IO_FILE*, %struct.plan7_s*) #2

declare void @HMMFileClose(%struct.hmmfile_s*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @SqdClean() #2

declare void @sre_srandom(i32) #2

declare void @P7Logoddsify(%struct.plan7_s*, i32) #2

declare void @P7DefaultNullModel(float*, float*) #2

declare %struct.histogram_s* @AllocHistogram(i32, i32, i32) #2

declare %struct.dpmatrix_s* @CreatePlan7Matrix(i32, i32, i32, i32) #2

declare double @Gaussrandom(double, double) #2

declare i8* @RandomSequence(i8*, float*, i32, i32) #2

declare i8* @DigitizeSequence(i8*, i32) #2

declare i32 @P7ViterbiSize(i32, i32) #2

declare float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #2

declare float @P7SmallViterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #2

declare void @AddToHistogram(%struct.histogram_s*, float) #2

declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
