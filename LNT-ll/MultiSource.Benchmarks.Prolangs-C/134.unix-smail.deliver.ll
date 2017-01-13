; ModuleID = './MultiSource.Benchmarks.Prolangs-C/134.unix-smail.deliver.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@spoolfp = external global %struct._IO_FILE*, align 8
@stderrfile = common global [20 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"/tmp/stderrXXXXXX\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@debug = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@uuxargs = external global i8*, align 8
@maxnoqueue = external global i32, align 4
@queuecost = external global i32, align 4
@routing = external global i32, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"/bin/lmail\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s -a%s %s - %s!rmail\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"/usr/bin/uux\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s %s %s -f %s \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"/bin/smail\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@spoolfile = external global i8*, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" '%s!%s'\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" '(%s)'\00", align 1
@deliver.errbuf = internal global [512 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [40 x i8] c"address resolution ('%s' @ '%s') failed\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"COMMAND: %s\0A\00", align 1
@exitstat = external global i32, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"couldn't execute %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"From %s %.24s\0A\00", align 1
@nows = external global [0 x i8], align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"From %s  %.24s remote from %s\0A\00", align 1
@hostname = external global [0 x i8], align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Received: by %s (%s)\0A\09id AA%05d; %s\0A\00", align 1
@hostdomain = external global [0 x i8], align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"smail2.5\00", align 1
@arpanows = external global [0 x i8], align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"%s failed (%d)\0Atrying %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"%s failed (%d)\0A\00", align 1
@spoolmaster = external global i32, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Date: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"From: MAILER-DAEMON@%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Subject: failed mail\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"To: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"=======     command failed      =======\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" COMMAND: %s\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"======= standard error follows  =======\0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"======= text of message follows =======\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"From %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @deliver(i32 %argc, i8** %hostv, i8** %userv, i32* %formv, i32* %costv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %hostv.addr = alloca i8**, align 8
  %userv.addr = alloca i8**, align 8
  %formv.addr = alloca i32*, align 8
  %costv.addr = alloca i32*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %from = alloca [512 x i8], align 16
  %lcommand = alloca [512 x i8], align 16
  %rcommand = alloca [512 x i8], align 16
  %scommand = alloca [512 x i8], align 16
  %command = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %form = alloca i32, align 4
  %size = alloca i64, align 8
  %flags = alloca i8*, align 8
  %sflag = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %status = alloca i32, align 4
  %retrying = alloca i32, align 4
  %c = alloca i8*, align 8
  %failcount = alloca i32, align 4
  %noqcnt = alloca i32, align 4
  %uux_noqueue = alloca i8*, align 8
  %uux_queue = alloca i8*, align 8
  %message = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %lend = alloca i8*, align 8
  %rend = alloca i8*, align 8
  %send = alloca i8*, align 8
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %p = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %hostv, i8*** %hostv.addr, align 8
  store i8** %userv, i8*** %userv.addr, align 8
  store i32* %formv, i32** %formv.addr, align 8
  store i32* %costv, i32** %costv.addr, align 8
  store i32 0, i32* %failcount, align 4
  store i32 0, i32* %noqcnt, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %uux_noqueue, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %uux_queue, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 0, i32 0)
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %1)
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  %call3 = call i8* @strchr(i8* %arraydecay2, i32 10) #4
  store i8* %call3, i8** %c, align 8
  %cmp = icmp ne i8* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %c, align 8
  store i8 0, i8* %2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call4 = call i64 @ftell(%struct._IO_FILE* %3)
  store i64 %call4, i64* %message, align 8
  store i8 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i32 0, i64 0), align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.267, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %argc.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end.269

for.body:                                         ; preds = %for.cond
  %arraydecay6 = getelementptr inbounds [512 x i8], [512 x i8]* %lcommand, i32 0, i32 0
  store i8* %arraydecay6, i8** %lend, align 8
  %arraydecay7 = getelementptr inbounds [512 x i8], [512 x i8]* %rcommand, i32 0, i32 0
  store i8* %arraydecay7, i8** %rend, align 8
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %scommand, i32 0, i32 0
  store i8* %arraydecay8, i8** %send, align 8
  %call9 = call i32 @unlink(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i32 0, i32 0)) #5
  %call10 = call i8* @strcpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #5
  %call11 = call i8* (i8*, ...) bitcast (i8* (...)* @mktemp to i8* (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load i32, i32* @debug, align 4
  %cmp13 = icmp ne i32 %7, 2
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %8)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %for.body
  %9 = load i8*, i8** %send, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %rend, align 8
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** %lend, align 8
  store i8 0, i8* %11, align 1
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32*, i32** %formv.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  store i32 %14, i32* %form, align 4
  %15 = load i32, i32* %form, align 4
  %cmp17 = icmp eq i32 %15, 5
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  br label %for.inc.267

if.end.19:                                        ; preds = %if.end.16
  %16 = load i8*, i8** @uuxargs, align 8
  %cmp20 = icmp eq i8* %16, null
  br i1 %cmp20, label %if.then.21, label %if.else.28

if.then.21:                                       ; preds = %if.end.19
  %17 = load i32, i32* %noqcnt, align 4
  %18 = load i32, i32* @maxnoqueue, align 4
  %cmp22 = icmp slt i32 %17, %18
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.21
  %19 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %19 to i64
  %20 = load i32*, i32** %costv.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %20, i64 %idxprom23
  %21 = load i32, i32* %arrayidx24, align 4
  %22 = load i32, i32* @queuecost, align 4
  %cmp25 = icmp sle i32 %21, %22
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %land.lhs.true
  %23 = load i8*, i8** %uux_noqueue, align 8
  store i8* %23, i8** %flags, align 8
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %if.then.21
  %24 = load i8*, i8** %uux_queue, align 8
  store i8* %24, i8** %flags, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  br label %if.end.29

if.else.28:                                       ; preds = %if.end.19
  %25 = load i8*, i8** @uuxargs, align 8
  store i8* %25, i8** %flags, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.end.27
  store i32 0, i32* %retrying, align 4
  %26 = load i32, i32* @routing, align 4
  %cmp30 = icmp eq i32 %26, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %sflag, align 8
  br label %if.end.37

if.else.32:                                       ; preds = %if.end.29
  %27 = load i32, i32* @routing, align 4
  %cmp33 = icmp eq i32 %27, 1
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.32
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %sflag, align 8
  br label %if.end.36

if.else.35:                                       ; preds = %if.else.32
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %sflag, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.31
  %arraydecay38 = getelementptr inbounds [512 x i8], [512 x i8]* %lcommand, i32 0, i32 0
  %call39 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #5
  %arraydecay40 = getelementptr inbounds [512 x i8], [512 x i8]* %rcommand, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  %28 = load i8*, i8** %flags, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %29 to i64
  %30 = load i8**, i8*** %hostv.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %30, i64 %idxprom42
  %31 = load i8*, i8** %arrayidx43, align 8
  %call44 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay41, i8* %28, i8* %31) #5
  %32 = load i32, i32* %i, align 4
  store i32 %32, i32* %j, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %if.end.37
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %argc.addr, align 4
  %cmp46 = icmp slt i32 %33, %34
  br i1 %cmp46, label %for.body.47, label %for.end

for.body.47:                                      ; preds = %for.cond.45
  %35 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %35 to i64
  %36 = load i32*, i32** %formv.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %36, i64 %idxprom48
  %37 = load i32, i32* %arrayidx49, align 4
  %38 = load i32, i32* %form, align 4
  %cmp50 = icmp ne i32 %37, %38
  br i1 %cmp50, label %if.then.69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.47
  %39 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %39 to i64
  %40 = load i8**, i8*** %hostv.addr, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %40, i64 %idxprom51
  %41 = load i8*, i8** %arrayidx52, align 8
  %42 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %42 to i64
  %43 = load i8**, i8*** %hostv.addr, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %43, i64 %idxprom53
  %44 = load i8*, i8** %arrayidx54, align 8
  %call55 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %41, i8* %44)
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then.69, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false
  %45 = load i8*, i8** %lend, align 8
  %arraydecay58 = getelementptr inbounds [512 x i8], [512 x i8]* %lcommand, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay58 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %tmp1, align 4
  %cmp59 = icmp sgt i32 %conv, 128
  br i1 %cmp59, label %if.then.69, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.57
  %46 = load i8*, i8** %rend, align 8
  %arraydecay62 = getelementptr inbounds [512 x i8], [512 x i8]* %rcommand, i32 0, i32 0
  %sub.ptr.lhs.cast63 = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast64 = ptrtoint i8* %arraydecay62 to i64
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64
  %conv66 = trunc i64 %sub.ptr.sub65 to i32
  store i32 %conv66, i32* %tmp2, align 4
  %cmp67 = icmp sgt i32 %conv66, 128
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %lor.lhs.false.61, %lor.lhs.false.57, %lor.lhs.false, %for.body.47
  br label %for.inc

if.end.70:                                        ; preds = %lor.lhs.false.61
  %47 = load i8*, i8** %send, align 8
  %call71 = call i64 @strlen(i8* %47) #4
  %48 = load i8*, i8** %send, align 8
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %call71
  store i8* %add.ptr, i8** %send, align 8
  %49 = load i8*, i8** %send, align 8
  %arraydecay72 = getelementptr inbounds [512 x i8], [512 x i8]* %scommand, i32 0, i32 0
  %cmp73 = icmp ne i8* %49, %arraydecay72
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.70
  %50 = load i8*, i8** %send, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %send, align 8
  store i8 59, i8* %50, align 1
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.70
  %51 = load i8*, i8** %send, align 8
  %52 = load i32, i32* @debug, align 4
  %cmp77 = icmp eq i32 %52, 1
  %cond = select i1 %cmp77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)
  %53 = load i8*, i8** %sflag, align 8
  %54 = load i8*, i8** @spoolfile, align 8
  %call79 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* %cond, i8* %53, i8* %54) #5
  %55 = load i8*, i8** %send, align 8
  %call80 = call i64 @strlen(i8* %55) #4
  %56 = load i8*, i8** %send, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %56, i64 %call80
  store i8* %add.ptr81, i8** %send, align 8
  %57 = load i8*, i8** %lend, align 8
  %call82 = call i64 @strlen(i8* %57) #4
  %58 = load i8*, i8** %lend, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %58, i64 %call82
  store i8* %add.ptr83, i8** %lend, align 8
  %59 = load i8*, i8** %rend, align 8
  %call84 = call i64 @strlen(i8* %59) #4
  %60 = load i8*, i8** %rend, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %60, i64 %call84
  store i8* %add.ptr85, i8** %rend, align 8
  %61 = load i32, i32* %form, align 4
  %cmp86 = icmp eq i32 %61, 1
  br i1 %cmp86, label %if.then.88, label %if.else.97

if.then.88:                                       ; preds = %if.end.76
  %62 = load i8*, i8** %lend, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %63 to i64
  %64 = load i8**, i8*** %userv.addr, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %64, i64 %idxprom89
  %65 = load i8*, i8** %arrayidx90, align 8
  %call91 = call i8* @postmaster(i8* %65)
  %call92 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %call91) #5
  %66 = load i8*, i8** %send, align 8
  %67 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %67 to i64
  %68 = load i8**, i8*** %userv.addr, align 8
  %arrayidx94 = getelementptr inbounds i8*, i8** %68, i64 %idxprom93
  %69 = load i8*, i8** %arrayidx94, align 8
  %call95 = call i8* @postmaster(i8* %69)
  %call96 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %call95) #5
  br label %if.end.108

if.else.97:                                       ; preds = %if.end.76
  %70 = load i8*, i8** %lend, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %71 to i64
  %72 = load i8**, i8*** %hostv.addr, align 8
  %arrayidx99 = getelementptr inbounds i8*, i8** %72, i64 %idxprom98
  %73 = load i8*, i8** %arrayidx99, align 8
  %74 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %74 to i64
  %75 = load i8**, i8*** %userv.addr, align 8
  %arrayidx101 = getelementptr inbounds i8*, i8** %75, i64 %idxprom100
  %76 = load i8*, i8** %arrayidx101, align 8
  %call102 = call i32 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* %73, i8* %76) #5
  %77 = load i8*, i8** %send, align 8
  %78 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %78 to i64
  %79 = load i8**, i8*** %hostv.addr, align 8
  %arrayidx104 = getelementptr inbounds i8*, i8** %79, i64 %idxprom103
  %80 = load i8*, i8** %arrayidx104, align 8
  %81 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %81 to i64
  %82 = load i8**, i8*** %userv.addr, align 8
  %arrayidx106 = getelementptr inbounds i8*, i8** %82, i64 %idxprom105
  %83 = load i8*, i8** %arrayidx106, align 8
  %call107 = call i32 (i8*, i8*, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* %80, i8* %83) #5
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.97, %if.then.88
  %84 = load i8*, i8** %rend, align 8
  %85 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %85 to i64
  %86 = load i8**, i8*** %userv.addr, align 8
  %arrayidx110 = getelementptr inbounds i8*, i8** %86, i64 %idxprom109
  %87 = load i8*, i8** %arrayidx110, align 8
  %call111 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* %87) #5
  %88 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %88 to i64
  %89 = load i32*, i32** %formv.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %89, i64 %idxprom112
  store i32 5, i32* %arrayidx113, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.108, %if.then.69
  %90 = load i32, i32* %j, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  br label %retry

retry:                                            ; preds = %if.end.249, %for.end
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %92 = load i64, i64* %message, align 8
  %call114 = call i32 @fseek(%struct._IO_FILE* %91, i64 %92, i32 0)
  %93 = load i32, i32* %form, align 4
  %cmp115 = icmp eq i32 %93, 0
  br i1 %cmp115, label %if.then.117, label %if.end.123

if.then.117:                                      ; preds = %retry
  %94 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %94 to i64
  %95 = load i8**, i8*** %userv.addr, align 8
  %arrayidx119 = getelementptr inbounds i8*, i8** %95, i64 %idxprom118
  %96 = load i8*, i8** %arrayidx119, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %97 to i64
  %98 = load i8**, i8*** %hostv.addr, align 8
  %arrayidx121 = getelementptr inbounds i8*, i8** %98, i64 %idxprom120
  %99 = load i8*, i8** %arrayidx121, align 8
  %call122 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @deliver.errbuf, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0), i8* %96, i8* %99) #5
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @deliver.errbuf, i32 0, i32 0), i8** %command, align 8
  store i64 0, i64* %size, align 8
  br label %form_error

if.end.123:                                       ; preds = %retry
  %100 = load i32, i32* %retrying, align 4
  %tobool = icmp ne i32 %100, 0
  br i1 %tobool, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %if.end.123
  %arraydecay125 = getelementptr inbounds [512 x i8], [512 x i8]* %scommand, i32 0, i32 0
  store i8* %arraydecay125, i8** %command, align 8
  br label %if.end.139

if.else.126:                                      ; preds = %if.end.123
  %101 = load i32, i32* %form, align 4
  %cmp127 = icmp eq i32 %101, 1
  br i1 %cmp127, label %if.then.129, label %if.else.131

if.then.129:                                      ; preds = %if.else.126
  %arraydecay130 = getelementptr inbounds [512 x i8], [512 x i8]* %lcommand, i32 0, i32 0
  store i8* %arraydecay130, i8** %command, align 8
  br label %if.end.138

if.else.131:                                      ; preds = %if.else.126
  %arraydecay132 = getelementptr inbounds [512 x i8], [512 x i8]* %rcommand, i32 0, i32 0
  store i8* %arraydecay132, i8** %command, align 8
  %102 = load i8*, i8** %flags, align 8
  %103 = load i8*, i8** %uux_noqueue, align 8
  %cmp133 = icmp eq i8* %102, %103
  br i1 %cmp133, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.else.131
  %104 = load i32, i32* %noqcnt, align 4
  %inc136 = add nsw i32 %104, 1
  store i32 %inc136, i32* %noqcnt, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.else.131
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.129
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.124
  %105 = load i32, i32* @debug, align 4
  %cmp140 = icmp ne i32 %105, 0
  br i1 %cmp140, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.end.139
  %106 = load i8*, i8** %command, align 8
  %call143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* %106)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.end.139
  %call145 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  %107 = load i32, i32* @debug, align 4
  %cmp146 = icmp eq i32 %107, 2
  br i1 %cmp146, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %if.end.144
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %108, %struct._IO_FILE** %out, align 8
  br label %if.end.158

if.else.149:                                      ; preds = %if.end.144
  store i32 0, i32* %failcount, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.149
  %109 = load i8*, i8** %command, align 8
  %call150 = call %struct._IO_FILE* @popen(i8* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call150, %struct._IO_FILE** %out, align 8
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %tobool151 = icmp ne %struct._IO_FILE* %110, null
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %do.body
  br label %do.end

if.end.153:                                       ; preds = %do.body
  %call154 = call i32 @sleep(i32 60)
  br label %do.cond

do.cond:                                          ; preds = %if.end.153
  %111 = load i32, i32* %failcount, align 4
  %inc155 = add nsw i32 %111, 1
  store i32 %inc155, i32* %failcount, align 4
  %cmp156 = icmp slt i32 %inc155, 10
  br i1 %cmp156, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.152
  br label %if.end.158

if.end.158:                                       ; preds = %do.end, %if.then.148
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %cmp159 = icmp eq %struct._IO_FILE* %112, null
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.end.158
  store i32 69, i32* @exitstat, align 4
  %113 = load i8*, i8** %command, align 8
  %call162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* %113)
  br label %for.inc.267

if.end.163:                                       ; preds = %if.end.158
  store i64 0, i64* %size, align 8
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call164 = call i32 @fileno(%struct._IO_FILE* %114) #5
  %call165 = call i32 @fstat(i32 %call164, %struct.stat* %st) #5
  %cmp166 = icmp sge i32 %call165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.163
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %115 = load i64, i64* %st_size, align 8
  %116 = load i64, i64* %message, align 8
  %sub = sub nsw i64 %115, %116
  store i64 %sub, i64* %size, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.end.163
  %117 = load i32, i32* %form, align 4
  %cmp170 = icmp eq i32 %117, 1
  br i1 %cmp170, label %if.then.172, label %if.else.196

if.then.172:                                      ; preds = %if.end.169
  %arraydecay173 = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  %call174 = call i8* @strchr(i8* %arraydecay173, i32 33) #4
  store i8* %call174, i8** %p, align 8
  %cmp175 = icmp eq i8* %call174, null
  br i1 %cmp175, label %if.then.177, label %if.else.185

if.then.177:                                      ; preds = %if.then.172
  %arraydecay178 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %arraydecay179 = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  %call180 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay178, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay179, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @nows, i32 0, i32 0)) #5
  %arraydecay181 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call182 = call i64 @strlen(i8* %arraydecay181) #4
  %118 = load i64, i64* %size, align 8
  %add = add i64 %118, %call182
  store i64 %add, i64* %size, align 8
  %arraydecay183 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call184 = call i32 @fputs(i8* %arraydecay183, %struct._IO_FILE* %119)
  br label %if.end.195

if.else.185:                                      ; preds = %if.then.172
  %120 = load i8*, i8** %p, align 8
  store i8 0, i8* %120, align 1
  %arraydecay186 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %121 = load i8*, i8** %p, align 8
  %add.ptr187 = getelementptr inbounds i8, i8* %121, i64 1
  %arraydecay188 = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  %call189 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay186, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* %add.ptr187, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @nows, i32 0, i32 0), i8* %arraydecay188) #5
  %arraydecay190 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call191 = call i64 @strlen(i8* %arraydecay190) #4
  %122 = load i64, i64* %size, align 8
  %add192 = add i64 %122, %call191
  store i64 %add192, i64* %size, align 8
  %arraydecay193 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call194 = call i32 @fputs(i8* %arraydecay193, %struct._IO_FILE* %123)
  %124 = load i8*, i8** %p, align 8
  store i8 33, i8* %124, align 1
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.185, %if.then.177
  br label %if.end.205

if.else.196:                                      ; preds = %if.end.169
  %arraydecay197 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %arraydecay198 = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  %call199 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay198, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @nows, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0)) #5
  %arraydecay200 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call201 = call i64 @strlen(i8* %arraydecay200) #4
  %125 = load i64, i64* %size, align 8
  %add202 = add i64 %125, %call201
  store i64 %add202, i64* %size, align 8
  %arraydecay203 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call204 = call i32 @fputs(i8* %arraydecay203, %struct._IO_FILE* %126)
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.196, %if.end.195
  %arraydecay206 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call207 = call i32 @getpid() #5
  %call208 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay206, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %call207, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @arpanows, i32 0, i32 0)) #5
  %arraydecay209 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call210 = call i64 @strlen(i8* %arraydecay209) #4
  %127 = load i64, i64* %size, align 8
  %add211 = add i64 %127, %call210
  store i64 %add211, i64* %size, align 8
  %arraydecay212 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call213 = call i32 @fputs(i8* %arraydecay212, %struct._IO_FILE* %128)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.205
  %arraydecay214 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call215 = call i8* @fgets(i8* %arraydecay214, i32 512, %struct._IO_FILE* %129)
  %cmp216 = icmp ne i8* %call215, null
  br i1 %cmp216, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay218 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call219 = call i32 @fputs(i8* %arraydecay218, %struct._IO_FILE* %130)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %form_error

form_error:                                       ; preds = %while.end, %if.then.117
  %131 = load i32, i32* @debug, align 4
  %cmp220 = icmp ne i32 %131, 2
  br i1 %cmp220, label %if.then.222, label %if.end.266

if.then.222:                                      ; preds = %form_error
  %132 = load i32, i32* %form, align 4
  %cmp223 = icmp eq i32 %132, 0
  br i1 %cmp223, label %if.then.225, label %if.else.226

if.then.225:                                      ; preds = %if.then.222
  store i32 68, i32* @exitstat, align 4
  br label %if.end.231

if.else.226:                                      ; preds = %if.then.222
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call227 = call i32 @pclose(%struct._IO_FILE* %133)
  store i32 %call227, i32* %status, align 4
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.else.226
  %134 = load i32, i32* %status, align 4
  %shr = ashr i32 %134, 8
  store i32 %shr, i32* @exitstat, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.229, %if.else.226
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.225
  %135 = load i32, i32* @exitstat, align 4
  %cmp232 = icmp ne i32 %135, 0
  br i1 %cmp232, label %if.then.234, label %if.end.265

if.then.234:                                      ; preds = %if.end.231
  %136 = load i32, i32* %retrying, align 4
  %cmp235 = icmp eq i32 %136, 0
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.250

land.lhs.true.237:                                ; preds = %if.then.234
  %137 = load i32, i32* @routing, align 4
  %cmp238 = icmp ne i32 %137, 2
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.250

land.lhs.true.240:                                ; preds = %land.lhs.true.237
  %138 = load i32, i32* %form, align 4
  %cmp241 = icmp ne i32 %138, 1
  br i1 %cmp241, label %if.then.243, label %if.end.250

if.then.243:                                      ; preds = %land.lhs.true.240
  %139 = load i32, i32* @debug, align 4
  %cmp244 = icmp ne i32 %139, 0
  br i1 %cmp244, label %if.then.246, label %if.end.249

if.then.246:                                      ; preds = %if.then.243
  %140 = load i8*, i8** %command, align 8
  %141 = load i32, i32* @exitstat, align 4
  %arraydecay247 = getelementptr inbounds [512 x i8], [512 x i8]* %scommand, i32 0, i32 0
  %call248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i8* %140, i32 %141, i8* %arraydecay247)
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.246, %if.then.243
  store i32 0, i32* @exitstat, align 4
  store i32 1, i32* %retrying, align 4
  store i32 5, i32* %form, align 4
  br label %retry

if.end.250:                                       ; preds = %land.lhs.true.240, %land.lhs.true.237, %if.then.234
  %142 = load i32, i32* @routing, align 4
  %cmp251 = icmp eq i32 %142, 2
  br i1 %cmp251, label %if.then.256, label %lor.lhs.false.253

lor.lhs.false.253:                                ; preds = %if.end.250
  %143 = load i32, i32* %form, align 4
  %cmp254 = icmp eq i32 %143, 1
  br i1 %cmp254, label %if.then.256, label %if.end.264

if.then.256:                                      ; preds = %lor.lhs.false.253, %if.end.250
  %144 = load i32, i32* @debug, align 4
  %cmp257 = icmp ne i32 %144, 0
  br i1 %cmp257, label %if.then.259, label %if.end.261

if.then.259:                                      ; preds = %if.then.256
  %145 = load i8*, i8** %command, align 8
  %146 = load i32, i32* @exitstat, align 4
  %call260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* %145, i32 %146)
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.259, %if.then.256
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %148 = load i64, i64* %message, align 8
  %call262 = call i32 @fseek(%struct._IO_FILE* %147, i64 %148, i32 0)
  %arraydecay263 = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  %149 = load i8*, i8** %command, align 8
  call void @return_mail(i8* %arraydecay263, i8* %149)
  store i32 0, i32* @exitstat, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.261, %lor.lhs.false.253
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.231
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %form_error
  br label %for.inc.267

for.inc.267:                                      ; preds = %if.end.266, %if.then.161, %if.then.18
  %150 = load i32, i32* %i, align 4
  %inc268 = add nsw i32 %150, 1
  store i32 %inc268, i32* %i, align 4
  br label %for.cond

for.end.269:                                      ; preds = %for.cond
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call270 = call i32 @fclose(%struct._IO_FILE* %151)
  %152 = load i32, i32* @spoolmaster, align 4
  %tobool271 = icmp ne i32 %152, 0
  br i1 %tobool271, label %if.then.272, label %if.end.274

if.then.272:                                      ; preds = %for.end.269
  %153 = load i8*, i8** @spoolfile, align 8
  %call273 = call i32 @unlink(i8* %153) #5
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.272, %for.end.269
  %call275 = call i32 @unlink(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i32 0, i32 0)) #5
  ret void
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i8* @mktemp(...) #1

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @strcmpic(...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @postmaster(i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare %struct._IO_FILE* @popen(i8*, i8*) #1

declare i32 @sleep(i32) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @getpid() #3

declare i32 @pclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @return_mail(i8* %from, i8* %fcommand) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %fcommand.addr = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %domain = alloca [512 x i8], align 16
  %user = alloca [512 x i8], align 16
  %r = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store i8* %from, i8** %from.addr, align 8
  store i8* %fcommand, i8** %fcommand.addr, align 8
  store i32 0, i32* %i, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %r, align 8
  %0 = load i8*, i8** %r, align 8
  %1 = load i32, i32* @debug, align 4
  %cmp = icmp eq i32 %1, 1
  %cond = select i1 %cmp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* %cond) #5
  %2 = load i8*, i8** %r, align 8
  %call1 = call i64 @strlen(i8* %2) #4
  %3 = load i8*, i8** %r, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %call1
  store i8* %add.ptr, i8** %r, align 8
  %4 = load i8*, i8** %from.addr, align 8
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %domain, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [512 x i8], [512 x i8]* %user, i32 0, i32 0
  %call4 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %4, i8* %arraydecay2, i8* %arraydecay3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %r, align 8
  %arraydecay5 = getelementptr inbounds [512 x i8], [512 x i8]* %user, i32 0, i32 0
  %call6 = call i8* @postmaster(i8* %arraydecay5)
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %call6) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %r, align 8
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %domain, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [512 x i8], [512 x i8]* %user, i32 0, i32 0
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay8, i8* %arraydecay9) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %arraydecay11 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call12 = call %struct._IO_FILE* @popen(i8* %arraydecay11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %out, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %tobool13 = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.body
  br label %do.end

if.end.15:                                        ; preds = %do.body
  %call16 = call i32 @sleep(i32 60)
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  %cmp17 = icmp slt i32 %inc, 10
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.14
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %cmp18 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %do.end
  %arraydecay20 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay20)
  br label %return

if.end.22:                                        ; preds = %do.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @arpanows, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %14 = load i8*, i8** %from.addr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %18 = load i8*, i8** %fcommand.addr, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call31 = call i32 @fflush(%struct._IO_FILE* %20)
  %call32 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  store %struct._IO_FILE* %call32, %struct._IO_FILE** %fp, align 8
  %cmp33 = icmp ne %struct._IO_FILE* %call32, null
  br i1 %cmp33, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %if.end.22
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.34
  %arraydecay35 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call36 = call i8* @fgets(i8* %arraydecay35, i32 512, %struct._IO_FILE* %21)
  %cmp37 = icmp ne i8* %call36, null
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay38 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call39 = call i32 @fputs(i8* %arraydecay38, %struct._IO_FILE* %22)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.40

if.end.40:                                        ; preds = %while.end, %if.end.22
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call41 = call i32 @fclose(%struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %26 = load i8*, i8** %from.addr, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* %26)
  br label %while.cond.44

while.cond.44:                                    ; preds = %while.body.48, %if.end.40
  %arraydecay45 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call46 = call i8* @fgets(i8* %arraydecay45, i32 512, %struct._IO_FILE* %27)
  %cmp47 = icmp ne i8* %call46, null
  br i1 %cmp47, label %while.body.48, label %while.end.51

while.body.48:                                    ; preds = %while.cond.44
  %arraydecay49 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call50 = call i32 @fputs(i8* %arraydecay49, %struct._IO_FILE* %28)
  br label %while.cond.44

while.end.51:                                     ; preds = %while.cond.44
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call52 = call i32 @pclose(%struct._IO_FILE* %29)
  br label %return

return:                                           ; preds = %while.end.51, %if.then.19
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @islocal(...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
