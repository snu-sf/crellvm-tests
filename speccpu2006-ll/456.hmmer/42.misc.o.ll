; ModuleID = 'misc.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.threshold_s = type { float, double, float, double, i32, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s %s (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"HMMER\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"May 2003\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"Copyright (C) 1992-2003 HHMI/Washington University School of Medicine\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Freely distributed under the GNU General Public License (GPL)\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\00", align 1
@Getword.buffer = internal global [512 x i8] zeroinitializer, align 16
@Getword.sptr = internal global i8* null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Parse failed: expected string, got nothing\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Parse failed: expected integer, got %s\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Parse failed: expected real value, got %s\00", align 1

; Function Attrs: nounwind uwtable
define void @HMMERBanner(%struct._IO_FILE* %fp, i8* %banner) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %banner.addr = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %banner, i8** %banner.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %banner.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @Getword(%struct._IO_FILE* %fp, i32 %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %type.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i8*, i8** @Getword.sptr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #5
  store i8* %call, i8** @Getword.sptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %1 = load i8*, i8** @Getword.sptr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i8* @fgets(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @Getword.buffer, i32 0, i32 0), i32 512, %struct._IO_FILE* %2)
  store i8* %call2, i8** @Getword.sptr, align 8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %while.body
  %call6 = call i8* @strchr(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @Getword.buffer, i32 0, i32 0), i32 35) #6
  store i8* %call6, i8** @Getword.sptr, align 8
  %cmp7 = icmp ne i8* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %3 = load i8*, i8** @Getword.sptr, align 8
  store i8 0, i8* %3, align 1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %call10 = call i8* @strtok(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @Getword.buffer, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #5
  store i8* %call10, i8** @Getword.sptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %type.addr, align 4
  switch i32 %4, label %sw.epilog [
    i32 4, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %while.end
  %5 = load i8*, i8** @Getword.sptr, align 8
  %call11 = call i64 @strlen(i8* %5) #6
  %cmp12 = icmp eq i64 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.bb
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** @Getword.sptr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %sw.bb
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.end
  %6 = load i8*, i8** @Getword.sptr, align 8
  %call16 = call i32 @IsInt(i8* %6)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %sw.bb.15
  %7 = load i8*, i8** @Getword.sptr, align 8
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0), i8* %7)
  store i8* null, i8** @Getword.sptr, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %sw.bb.15
  br label %sw.epilog

sw.bb.19:                                         ; preds = %while.end
  %8 = load i8*, i8** @Getword.sptr, align 8
  %call20 = call i32 @IsReal(i8* %8)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %sw.bb.19
  %9 = load i8*, i8** @Getword.sptr, align 8
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i8* %9)
  store i8* null, i8** @Getword.sptr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %sw.bb.19
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %if.end.23, %if.end.18, %if.end.14
  %10 = load i8*, i8** @Getword.sptr, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.4
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @Warn(i8*, ...) #1

declare i32 @IsInt(i8*) #1

declare i32 @IsReal(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @Getline(i8* %s, i32 %n, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %first = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %0, i32 %1, %struct._IO_FILE* %2)
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %s.addr, align 8
  store i8* %3, i8** %first, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i8*, i8** %first, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %idxprom = sext i32 %conv to i64
  %call1 = call i16** @__ctype_b_loc() #7
  %6 = load i16*, i16** %call1, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %7 to i32
  %and = and i32 %conv2, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %first, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %first, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %9 = load i8*, i8** %first, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv3, 35
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %11 = load i8*, i8** %first, align 8
  %12 = load i8, i8* %11, align 1
  %conv6 = sext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %13 = phi i1 [ true, %do.cond ], [ %cmp7, %lor.rhs ]
  br i1 %13, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %14 = load i8*, i8** %s.addr, align 8
  store i8* %14, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define i32 @SetAutocuts(%struct.threshold_s* %thresh, %struct.plan7_s* %hmm) #0 {
entry:
  %retval = alloca i32, align 4
  %thresh.addr = alloca %struct.threshold_s*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  store %struct.threshold_s* %thresh, %struct.threshold_s** %thresh.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %0 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %autocut = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %0, i32 0, i32 4
  %1 = load i32, i32* %autocut, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 47
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ga1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 14
  %5 = load float, float* %ga1, align 4
  %6 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %globT = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %6, i32 0, i32 0
  store float %5, float* %globT, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ga2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 15
  %8 = load float, float* %ga2, align 4
  %9 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %domT = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %9, i32 0, i32 2
  store float %8, float* %domT, align 4
  %10 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %domE = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %10, i32 0, i32 3
  store double 0x47EFFFFFE0000000, double* %domE, align 8
  %11 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %globE = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %11, i32 0, i32 1
  store double 0x47EFFFFFE0000000, double* %globE, align 8
  br label %if.end.29

if.else:                                          ; preds = %entry
  %12 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %autocut2 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %12, i32 0, i32 4
  %13 = load i32, i32* %autocut2, align 4
  %cmp3 = icmp eq i32 %13, 2
  br i1 %cmp3, label %if.then.4, label %if.else.14

if.then.4:                                        ; preds = %if.else
  %14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %14, i32 0, i32 47
  %15 = load i32, i32* %flags5, align 4
  %and6 = and i32 %15, 4096
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.4
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.4
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %nc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 18
  %17 = load float, float* %nc1, align 4
  %18 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %globT10 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %18, i32 0, i32 0
  store float %17, float* %globT10, align 4
  %19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %nc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 19
  %20 = load float, float* %nc2, align 4
  %21 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %domT11 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %21, i32 0, i32 2
  store float %20, float* %domT11, align 4
  %22 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %domE12 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %22, i32 0, i32 3
  store double 0x47EFFFFFE0000000, double* %domE12, align 8
  %23 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %globE13 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %23, i32 0, i32 1
  store double 0x47EFFFFFE0000000, double* %globE13, align 8
  br label %if.end.28

if.else.14:                                       ; preds = %if.else
  %24 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %autocut15 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %24, i32 0, i32 4
  %25 = load i32, i32* %autocut15, align 4
  %cmp16 = icmp eq i32 %25, 3
  br i1 %cmp16, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %if.else.14
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 47
  %27 = load i32, i32* %flags18, align 4
  %and19 = and i32 %27, 2048
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.17
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.17
  %28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 16
  %29 = load float, float* %tc1, align 4
  %30 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %globT23 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %30, i32 0, i32 0
  store float %29, float* %globT23, align 4
  %31 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %31, i32 0, i32 17
  %32 = load float, float* %tc2, align 4
  %33 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %domT24 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %33, i32 0, i32 2
  store float %32, float* %domT24, align 4
  %34 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %domE25 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %34, i32 0, i32 3
  store double 0x47EFFFFFE0000000, double* %domE25, align 8
  %35 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %globE26 = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %35, i32 0, i32 1
  store double 0x47EFFFFFE0000000, double* %globE26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.22, %if.else.14
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.9
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.21, %if.then.8, %if.then.1
  %36 = load i32, i32* %retval
  ret i32 %36
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
