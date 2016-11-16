; ModuleID = './lib/signame.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.num_abbrev = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"HUP\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Hangup\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Interrupt\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Quit\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ILL\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Illegal Instruction\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"TRAP\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Trace/breakpoint trap\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ABRT\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Aborted\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"IOT\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"IOT trap\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"FPE\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Floating point exception\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Killed\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"BUS\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Bus error\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"SEGV\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Segmentation fault\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"SYS\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Bad system call\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"PIPE\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Broken pipe\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ALRM\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Alarm clock\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Terminated\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"USR1\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"User defined signal 1\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"USR2\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"User defined signal 2\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"CHLD\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Child exited\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"CLD\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"PWR\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"Power failure\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"TSTP\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Stopped\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"TTIN\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"Stopped (tty input)\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"TTOU\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Stopped (tty output)\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"Stopped (signal)\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"XCPU\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"CPU time limit exceeded\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"XFSZ\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"File size limit exceeded\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"VTALRM\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Virtual timer expired\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"PROF\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"Profiling timer expired\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"WINCH\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Window changed\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"CONT\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"Continued\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"URG\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"Urgent I/O condition\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"I/O possible\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"POLL\00", align 1
@sig_table_nelts = internal global i32 0, align 4
@sig_table = internal global [130 x %struct.num_abbrev] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @signame_init() #0 {
entry:
  call void @init_sig(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  call void @init_sig(i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  call void @init_sig(i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  call void @init_sig(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  call void @init_sig(i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @init_sig(i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  call void @init_sig(i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  call void @init_sig(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0))
  call void @init_sig(i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  call void @init_sig(i32 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0))
  call void @init_sig(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  call void @init_sig(i32 31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0))
  call void @init_sig(i32 13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0))
  call void @init_sig(i32 14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0))
  call void @init_sig(i32 15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0))
  call void @init_sig(i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0))
  call void @init_sig(i32 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0))
  call void @init_sig(i32 17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0))
  call void @init_sig(i32 17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0))
  call void @init_sig(i32 30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0))
  call void @init_sig(i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0))
  call void @init_sig(i32 21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0))
  call void @init_sig(i32 22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0))
  call void @init_sig(i32 19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0))
  call void @init_sig(i32 24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0))
  call void @init_sig(i32 25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0))
  call void @init_sig(i32 26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0))
  call void @init_sig(i32 27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0))
  call void @init_sig(i32 28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0))
  call void @init_sig(i32 18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0))
  call void @init_sig(i32 23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i32 0, i32 0))
  call void @init_sig(i32 29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0))
  call void @init_sig(i32 29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_sig(i32 %number, i8* %abbrev, i8* %name) #0 {
entry:
  %number.addr = alloca i32, align 4
  %abbrev.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  store i32 %number, i32* %number.addr, align 4
  store i8* %abbrev, i8** %abbrev.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %number.addr, align 4
  %1 = load i32, i32* @sig_table_nelts, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [130 x %struct.num_abbrev], [130 x %struct.num_abbrev]* @sig_table, i32 0, i64 %idxprom
  %number1 = getelementptr inbounds %struct.num_abbrev, %struct.num_abbrev* %arrayidx, i32 0, i32 0
  store i32 %0, i32* %number1, align 4
  %2 = load i8*, i8** %abbrev.addr, align 8
  %3 = load i32, i32* @sig_table_nelts, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @sig_table_nelts, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [130 x %struct.num_abbrev], [130 x %struct.num_abbrev]* @sig_table, i32 0, i64 %idxprom2
  %abbrev4 = getelementptr inbounds %struct.num_abbrev, %struct.num_abbrev* %arrayidx3, i32 0, i32 1
  store i8* %2, i8** %abbrev4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @sig_abbrev(i32 %number) #0 {
entry:
  %retval = alloca i8*, align 8
  %number.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %number, i32* %number.addr, align 4
  %0 = load i32, i32* @sig_table_nelts, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @signame_init()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @sig_table_nelts, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [130 x %struct.num_abbrev], [130 x %struct.num_abbrev]* @sig_table, i32 0, i64 %idxprom
  %number2 = getelementptr inbounds %struct.num_abbrev, %struct.num_abbrev* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %number2, align 4
  %5 = load i32, i32* %number.addr, align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [130 x %struct.num_abbrev], [130 x %struct.num_abbrev]* @sig_table, i32 0, i64 %idxprom5
  %abbrev = getelementptr inbounds %struct.num_abbrev, %struct.num_abbrev* %arrayidx6, i32 0, i32 1
  %7 = load i8*, i8** %abbrev, align 8
  store i8* %7, i8** %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define i32 @sig_number(i8* %abbrev) #0 {
entry:
  %retval = alloca i32, align 4
  %abbrev.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %abbrev, i8** %abbrev.addr, align 8
  %0 = load i32, i32* @sig_table_nelts, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @signame_init()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %abbrev.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 83
  br i1 %cmp1, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %abbrev.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 73
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.13

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** %abbrev.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 71
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.7
  %7 = load i8*, i8** %abbrev.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 3
  store i8* %add.ptr, i8** %abbrev.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true.7, %land.lhs.true, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* @sig_table_nelts, align 4
  %cmp14 = icmp slt i32 %8, %9
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %abbrev.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %11 to i32
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [130 x %struct.num_abbrev], [130 x %struct.num_abbrev]* @sig_table, i32 0, i64 %idxprom
  %abbrev19 = getelementptr inbounds %struct.num_abbrev, %struct.num_abbrev* %arrayidx18, i32 0, i32 1
  %13 = load i8*, i8** %abbrev19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %14 to i32
  %cmp22 = icmp eq i32 %conv17, %conv21
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.33

land.lhs.true.24:                                 ; preds = %for.body
  %15 = load i8*, i8** %abbrev.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [130 x %struct.num_abbrev], [130 x %struct.num_abbrev]* @sig_table, i32 0, i64 %idxprom25
  %abbrev27 = getelementptr inbounds %struct.num_abbrev, %struct.num_abbrev* %arrayidx26, i32 0, i32 1
  %17 = load i8*, i8** %abbrev27, align 8
  %call = call i32 @strcmp(i8* %15, i8* %17) #2
  %cmp28 = icmp eq i32 %call, 0
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %land.lhs.true.24
  %18 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [130 x %struct.num_abbrev], [130 x %struct.num_abbrev]* @sig_table, i32 0, i64 %idxprom31
  %number = getelementptr inbounds %struct.num_abbrev, %struct.num_abbrev* %arrayidx32, i32 0, i32 0
  %19 = load i32, i32* %number, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.30
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
