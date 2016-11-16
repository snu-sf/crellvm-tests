; ModuleID = '40.mail.local.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.servent = type { i8*, i8**, i32, i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.SM_MBDB_T = type { i32, i32, [256 x i8], [256 x i8], [4096 x i8], [4096 x i8] }

@EightBitMime = global i32 1, align 4
@ExitVal = global i32 0, align 4
@HoldErrs = global i32 0, align 4
@LMTPMode = global i32 0, align 4
@BounceQuota = global i32 0, align 4
@CloseMBDB = global i32 0, align 4
@HomeMailFile = global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"pw\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"mail.local\00", align 1
@SpoolPath = common global [4096 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"/var/mail\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"421\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Configuration error: _PATH_MAILDIR too large\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"7bdD:f:h:r:l\00", align 1
@optarg = external global i8*, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"Multiple -f options\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"-h: missing filename\00", align 1
@optind = external global i32, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"521\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Can not open mailbox database %s: %s\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"Users should not be specified in command line if LMTP required\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"MAILER-DAEMON\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"421 4.3.0\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Memory exhausted\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"550 5.1.1 User unknown\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"451 4.3.0 User database failure; retry later\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"550 5.3.0 User database failure\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"220 %s LMTP ready\0D\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"503 5.5.1\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"No recipients\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"lhlo \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"503\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"%s Duplicate LHLO\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"250-%s\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"250-8BITMIME\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"250-ENHANCEDSTATUSCODES\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"250 PIPELINING\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"mail \00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Nested MAIL command\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"from:\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"501 5.5.4\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Syntax error in parameters\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"250 2.5.0 Ok\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"250 2.0.0 Ok\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"221 2.0.0 Bye\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"rcpt \00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"Need MAIL command\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"to:\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"250 2.1.5 Ok\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"rset\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"vrfy \00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"252 2.3.3 Try RCPT to attempt delivery\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"500 5.5.2\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"Syntax error\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"/tmp/local.XXXXXX\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"451 4.3.0\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Unable to open temporary file\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"354 Go ahead\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"From %s %s\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"Temporary file write error\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"550 5.1.1\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"%s: User unknown\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"%s: User database failure; retry later\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"550 5.3.0\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"%s: User database failure\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"%s: Invalid mailbox path\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"%s: User missing home directory\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"551 5.3.0\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"lockmailbox %s failed; error code %d %s\00", align 1
@.str.69 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"550 5.2.0\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"%s: lstat: file changed after open\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"450 4.2.0\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"chown %u.%u: %s\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"%s: too many links\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"%s: irregular file\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"%s: wrong ownership (%d)\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"setreuid(0, %d): %s (r=%d, e=%d)\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"%s: fstat: file changed after open\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"%s@%lld\0A\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"Temporary file: %s\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"552 5.2.2\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"setreuid(0, 0): %s\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"250 2.1.5 %s Ok\0D\0A\00", align 1
@Locked = global i32 0, align 4
@LockName = common global [4096 x i8] zeroinitializer, align 16
@.str.85 = private unnamed_addr constant [8 x i8] c"%s.lock\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@notifybiff.initialized = internal global i32 0, align 4
@notifybiff.f = internal global i32 -1, align 4
@notifybiff.addr = internal global %struct.sockaddr_in zeroinitializer, align 4
@.str.87 = private unnamed_addr constant [5 x i8] c"biff\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.89 = private unnamed_addr constant [79 x i8] c"usage: mail.local [-7] [-b] [-d] [-l] [-f from|-r from] [-h filename] user ...\00", align 1
@ErrBuf = common global [10240 x i8] zeroinitializer, align 16
@.str.90 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.92 = private unnamed_addr constant [13 x i8] c"mail.local: \00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %pw = alloca %struct.passwd*, align 8
  %ch = alloca i32, align 4
  %fd = alloca i32, align 4
  %uid = alloca i32, align 4
  %from = alloca i8*, align 8
  %mbdbname = alloca i8*, align 8
  %err = alloca i32, align 4
  %errcode = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %uid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %mbdbname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %mbdbname, align 8, !tbaa !5
  %6 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 10, i32* %fd, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %fd, align 4, !tbaa !1
  %cmp = icmp slt i32 %7, 30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %fd, align 4, !tbaa !1
  %call = call i32 @close(i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %fd, align 4, !tbaa !1
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %fd, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @umask(i32 63) #1
  call void @openlog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 16)
  store i8* null, i8** %from, align 8, !tbaa !5
  %call2 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @SpoolPath, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 4096)
  %cmp3 = icmp uge i64 %call2, 4096
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  call void @sm_exit(i32 78)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %10 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %11 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %call4 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)) #1
  store i32 %call4, i32* %ch, align 4, !tbaa !1
  %cmp5 = icmp ne i32 %call4, -1
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %ch, align 4, !tbaa !1
  switch i32 %12, label %sw.default [
    i32 55, label %sw.bb
    i32 98, label %sw.bb.6
    i32 100, label %sw.epilog
    i32 68, label %sw.bb.7
    i32 102, label %sw.bb.8
    i32 114, label %sw.bb.8
    i32 104, label %sw.bb.12
    i32 108, label %sw.bb.18
    i32 63, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* @EightBitMime, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  store i32 1, i32* @BounceQuota, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  %13 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %13, i8** %mbdbname, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body, %while.body
  %14 = load i8*, i8** %from, align 8, !tbaa !5
  %cmp9 = icmp ne i8* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.8
  call void (i8*, i8*, ...) @mailerr(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  call void @usage()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb.8
  %15 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %15, i8** %from, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body
  %16 = load i8*, i8** @optarg, align 8, !tbaa !5
  %cmp13 = icmp ne i8* %16, null
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.12
  %17 = load i8*, i8** @optarg, align 8, !tbaa !5
  %18 = load i8, i8* %17, align 1, !tbaa !7
  %conv = sext i8 %18 to i32
  %cmp14 = icmp ne i32 %conv, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %lor.lhs.false, %sw.bb.12
  %19 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %19, i8** @HomeMailFile, align 8, !tbaa !5
  br label %if.end.17

if.else:                                          ; preds = %lor.lhs.false
  call void (i8*, i8*, ...) @mailerr(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  call void @usage()
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %sw.epilog

sw.bb.18:                                         ; preds = %while.body
  store i32 1, i32* @LMTPMode, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.19:                                         ; preds = %while.body
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb.19
  call void @usage()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.18, %if.end.17, %if.end.11, %sw.bb.7, %while.body, %sw.bb.6, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i32, i32* @optind, align 4, !tbaa !1
  %21 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %21, %20
  store i32 %sub, i32* %argc.addr, align 4, !tbaa !1
  %22 = load i32, i32* @optind, align 4, !tbaa !1
  %23 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %23, i64 %idx.ext
  store i8** %add.ptr, i8*** %argv.addr, align 8, !tbaa !5
  call void @notifybiff(i8* null)
  %24 = load i8*, i8** %mbdbname, align 8, !tbaa !5
  %call20 = call i32 @sm_mbdb_initialize(i8* %24)
  store i32 %call20, i32* %err, align 4, !tbaa !1
  %25 = load i32, i32* %err, align 4, !tbaa !1
  %cmp21 = icmp ne i32 %25, 0
  br i1 %cmp21, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %while.end
  %26 = bitcast i8** %errcode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8** %errcode, align 8, !tbaa !5
  %27 = load i32, i32* %err, align 4, !tbaa !1
  %cmp24 = icmp eq i32 %27, 75
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %errcode, align 8, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.23
  %28 = load i8*, i8** %errcode, align 8, !tbaa !5
  %29 = load i8*, i8** %mbdbname, align 8, !tbaa !5
  %30 = load i32, i32* %err, align 4, !tbaa !1
  %call28 = call i8* @sm_strexit(i32 %30)
  call void (i8*, i8*, ...) @mailerr(i8* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* %29, i8* %call28)
  %31 = load i32, i32* %err, align 4, !tbaa !1
  call void @sm_exit(i32 %31)
  %32 = bitcast i8** %errcode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.27, %while.end
  store i32 1, i32* @CloseMBDB, align 4, !tbaa !1
  %33 = load i32, i32* @LMTPMode, align 4, !tbaa !1
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.29
  %34 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp31 = icmp sgt i32 %34, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.30
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i32 0, i32 0))
  call void @sm_exit(i32 75)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.30
  call void @dolmtp()
  call void @sm_exit(i32 0)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.29
  %35 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %36 = load i8*, i8** %35, align 8, !tbaa !5
  %cmp36 = icmp eq i8* %36, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  call void @usage()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.35
  %call40 = call i32 @getuid() #1
  store i32 %call40, i32* %uid, align 4, !tbaa !1
  %37 = load i8*, i8** %from, align 8, !tbaa !5
  %cmp41 = icmp eq i8* %37, null
  br i1 %cmp41, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.end.39
  %call43 = call i8* @getlogin()
  store i8* %call43, i8** %from, align 8, !tbaa !5
  %cmp44 = icmp eq i8* %call43, null
  br i1 %cmp44, label %if.then.53, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %land.lhs.true
  %38 = load i8*, i8** %from, align 8, !tbaa !5
  %call47 = call %struct.passwd* @getpwnam(i8* %38)
  store %struct.passwd* %call47, %struct.passwd** %pw, align 8, !tbaa !5
  %cmp48 = icmp eq %struct.passwd* %call47, null
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.46
  %39 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 2
  %40 = load i32, i32* %pw_uid, align 4, !tbaa !8
  %41 = load i32, i32* %uid, align 4, !tbaa !1
  %cmp51 = icmp ne i32 %40, %41
  br i1 %cmp51, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.46, %land.lhs.true
  %42 = load i32, i32* %uid, align 4, !tbaa !1
  %call54 = call %struct.passwd* @getpwuid(i32 %42)
  store %struct.passwd* %call54, %struct.passwd** %pw, align 8, !tbaa !5
  %cmp55 = icmp ne %struct.passwd* %call54, null
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.53
  %43 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %43, i32 0, i32 0
  %44 = load i8*, i8** %pw_name, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %if.then.53
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %44, %cond.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %from, align 8, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %cond.end, %lor.lhs.false.50, %if.end.39
  store i32 1, i32* @HoldErrs, align 4, !tbaa !1
  %45 = load i8*, i8** %from, align 8, !tbaa !5
  %call58 = call i32 @store(i8* %45, i32* null)
  store i32 %call58, i32* %fd, align 4, !tbaa !1
  store i32 0, i32* @HoldErrs, align 4, !tbaa !1
  %46 = load i32, i32* %fd, align 4, !tbaa !1
  %cmp59 = icmp slt i32 %46, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.57
  call void @flush_error()
  %47 = load i32, i32* @ExitVal, align 4, !tbaa !1
  call void @sm_exit(i32 %47)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.57
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.67, %if.end.62
  %48 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %49 = load i8*, i8** %48, align 8, !tbaa !5
  %cmp64 = icmp ne i8* %49, null
  br i1 %cmp64, label %for.body.66, label %for.end.68

for.body.66:                                      ; preds = %for.cond.63
  %50 = load i32, i32* %fd, align 4, !tbaa !1
  %51 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %52 = load i8*, i8** %51, align 8, !tbaa !5
  call void @deliver(i32 %50, i8* %52)
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.66
  %53 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8, !tbaa !5
  br label %for.cond.63

for.end.68:                                       ; preds = %for.cond.63
  %54 = load i32, i32* @ExitVal, align 4, !tbaa !1
  call void @sm_exit(i32 %54)
  %55 = load i32, i32* @ExitVal, align 4, !tbaa !1
  %56 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i8** %mbdbname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %uid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  ret i32 %55
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @umask(i32) #3

declare void @openlog(i8*, i32, i32) #2

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @mailerr(i8* %hdr, i8* %fmt, ...) #0 {
entry:
  %hdr.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %hdr, i8** %hdr.addr, align 8, !tbaa !5
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !5
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %len, align 8, !tbaa !11
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %call = call i32* @__errno_location() #7
  %2 = load i32, i32* %call, align 4, !tbaa !1
  %call1 = call i32 @e_to_sys(i32 %2)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %3 = load i32, i32* @LMTPMode, align 4, !tbaa !1
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %hdr.addr, align 8, !tbaa !5
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %hdr.addr, align 8, !tbaa !5
  %call3 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @ErrBuf, i32 0, i32 0), i64 10240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* %5)
  %call4 = call i64 @strlen(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @ErrBuf, i32 0, i32 0)) #8
  store i64 %call4, i64* %len, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i64, i64* %len, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [10240 x i8], [10240 x i8]* @ErrBuf, i32 0, i64 %6
  %7 = load i64, i64* %len, align 8, !tbaa !11
  %sub = sub i64 10240, %7
  %8 = load i8*, i8** %fmt.addr, align 8, !tbaa !5
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call6 = call i32 @sm_vsnprintf(i8* %arrayidx, i64 %sub, i8* %8, %struct.__va_list_tag* %arraydecay5)
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay78 = bitcast %struct.__va_list_tag* %arraydecay7 to i8*
  call void @llvm.va_end(i8* %arraydecay78)
  %9 = load i32, i32* @HoldErrs, align 4, !tbaa !1
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  call void @flush_error()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %10 = load i32, i32* @LMTPMode, align 4, !tbaa !1
  %tobool12 = icmp ne i32 %10, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @ErrBuf, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %11 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %11) #1
  %12 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sm_exit(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4, !tbaa !1
  %0 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %status.addr, align 4, !tbaa !1
  call void @exit(i32 %1) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind uwtable
define void @usage() #0 {
entry:
  store i32 64, i32* @ExitVal, align 4, !tbaa !1
  call void (i8*, i8*, ...) @mailerr(i8* null, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.89, i32 0, i32 0))
  %0 = load i32, i32* @ExitVal, align 4, !tbaa !1
  call void @sm_exit(i32 %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @notifybiff(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %hp = alloca %struct.hostent*, align 8
  %sp = alloca %struct.servent*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !5
  %0 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* @notifybiff.initialized, align 4, !tbaa !1
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @notifybiff.initialized, align 4, !tbaa !1
  %call = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0))
  store %struct.servent* %call, %struct.servent** %sp, align 8, !tbaa !5
  %cmp = icmp eq %struct.servent* %call, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call1 = call %struct.hostent* @gethostbyname(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  store %struct.hostent* %call1, %struct.hostent** %hp, align 8, !tbaa !5
  %cmp2 = icmp eq %struct.hostent* %call1, null
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !5
  %h_length = getelementptr inbounds %struct.hostent, %struct.hostent* %4, i32 0, i32 3
  %5 = load i32, i32* %h_length, align 4, !tbaa !13
  %cmp4 = icmp ne i32 %5, 4
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.3
  %6 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !5
  %h_addrtype = getelementptr inbounds %struct.hostent, %struct.hostent* %6, i32 0, i32 2
  %7 = load i32, i32* %h_addrtype, align 4, !tbaa !15
  %conv = trunc i32 %7 to i16
  store i16 %conv, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @notifybiff.addr, i32 0, i32 0), align 2, !tbaa !16
  %8 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !5
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %8, i32 0, i32 4
  %9 = load i8**, i8*** %h_addr_list, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.in_addr* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @notifybiff.addr, i32 0, i32 2) to i8*), i8* %10, i64 4, i32 1, i1 false)
  %11 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !5
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %11, i32 0, i32 2
  %12 = load i32, i32* %s_port, align 4, !tbaa !21
  %conv6 = trunc i32 %12 to i16
  store i16 %conv6, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @notifybiff.addr, i32 0, i32 1), align 2, !tbaa !23
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %13 = load i8*, i8** %msg.addr, align 8, !tbaa !5
  %cmp8 = icmp eq i8* %13, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %14 = load i16, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @notifybiff.addr, i32 0, i32 0), align 2, !tbaa !16
  %conv12 = zext i16 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  %15 = load i32, i32* @notifybiff.f, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %15, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.16
  %call19 = call i32 @socket(i32 2, i32 2, i32 0) #1
  store i32 %call19, i32* @notifybiff.f, align 4, !tbaa !1
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %land.lhs.true, %if.end.16
  %16 = load i8*, i8** %msg.addr, align 8, !tbaa !5
  %call24 = call i64 @strlen(i8* %16) #8
  %add = add i64 %call24, 1
  %conv25 = trunc i64 %add to i32
  store i32 %conv25, i32* %len, align 4, !tbaa !1
  %17 = load i32, i32* @notifybiff.f, align 4, !tbaa !1
  %18 = load i8*, i8** %msg.addr, align 8, !tbaa !5
  %19 = load i32, i32* %len, align 4, !tbaa !1
  %conv26 = sext i32 %19 to i64
  %call27 = call i64 @sendto(i32 %17, i8* %18, i64 %conv26, i32 0, %struct.sockaddr* bitcast (%struct.sockaddr_in* @notifybiff.addr to %struct.sockaddr*), i32 16)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.22, %if.then.15, %if.then.10, %if.then.5
  %20 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @sm_mbdb_initialize(i8*) #2

declare i8* @sm_strexit(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @dolmtp() #0 {
entry:
  %return_path = alloca i8*, align 8
  %rcpt_addr = alloca i8**, align 8
  %rcpt_num = alloca i32, align 4
  %rcpt_alloc = alloca i32, align 4
  %gotlhlo = alloca i32, align 4
  %err = alloca i8*, align 8
  %msgfd = alloca i32, align 4
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %myhostname = alloca [1024 x i8], align 16
  %buf = alloca [4096 x i8], align 16
  %inbody = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i8** %return_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %return_path, align 8, !tbaa !5
  %1 = bitcast i8*** %rcpt_addr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8** null, i8*** %rcpt_addr, align 8, !tbaa !5
  %2 = bitcast i32* %rcpt_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %rcpt_num, align 4, !tbaa !1
  %3 = bitcast i32* %rcpt_alloc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %rcpt_alloc, align 4, !tbaa !1
  %4 = bitcast i32* %gotlhlo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %gotlhlo, align 4, !tbaa !1
  %5 = bitcast i8** %err to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %msgfd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast [1024 x i8]* %myhostname to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %9) #1
  %10 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %10) #1
  %11 = bitcast [1024 x i8]* %myhostname to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 1024, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %myhostname, i32 0, i32 0
  %call = call i32 @gethostname(i8* %arraydecay, i64 1023) #1
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %myhostname, i32 0, i64 0
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %myhostname, i32 0, i32 0
  %call3 = call i64 @sm_strlcpy(i8* %arraydecay2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i64 1024)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %myhostname, i32 0, i32 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay4)
  br label %for.cond

for.cond:                                         ; preds = %syntaxerr, %if.then.202, %if.end.194, %if.end.178, %if.then.177, %if.then.170, %if.then.140, %if.then.121, %if.end.113, %if.then.112, %if.then.100, %if.end.88, %if.then.80, %cleanup, %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %call6 = call i32 @fflush(%struct._IO_FILE* %13)
  %arraydecay7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call8 = call i8* @fgets(i8* %arraydecay7, i32 4095, %struct._IO_FILE* %14)
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.cond
  call void @sm_exit(i32 0)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.cond
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call15 = call i64 @strlen(i8* %arraydecay14) #8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay13, i64 %call15
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr16, i8** %p, align 8, !tbaa !5
  %15 = load i8*, i8** %p, align 8, !tbaa !5
  %arraydecay17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %cmp18 = icmp uge i8* %15, %arraydecay17
  br i1 %cmp18, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.12
  %16 = load i8*, i8** %p, align 8, !tbaa !5
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp eq i32 %conv20, 10
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true
  %18 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %18, align 1, !tbaa !7
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true, %if.end.12
  %19 = load i8*, i8** %p, align 8, !tbaa !5
  %arraydecay25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %cmp26 = icmp uge i8* %19, %arraydecay25
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.34

land.lhs.true.28:                                 ; preds = %if.end.24
  %20 = load i8*, i8** %p, align 8, !tbaa !5
  %21 = load i8, i8* %20, align 1, !tbaa !7
  %conv29 = sext i8 %21 to i32
  %cmp30 = icmp eq i32 %conv29, 13
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true.28
  %22 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr33 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr33, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %22, align 1, !tbaa !7
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true.28, %if.end.24
  %arrayidx35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i64 0
  %23 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = sext i8 %23 to i32
  switch i32 %conv36, label %sw.default [
    i32 100, label %sw.bb
    i32 68, label %sw.bb
    i32 108, label %sw.bb.73
    i32 76, label %sw.bb.73
    i32 109, label %sw.bb.92
    i32 77, label %sw.bb.92
    i32 110, label %sw.bb.116
    i32 78, label %sw.bb.116
    i32 113, label %sw.bb.124
    i32 81, label %sw.bb.124
    i32 114, label %sw.bb.132
    i32 82, label %sw.bb.132
    i32 118, label %sw.bb.197
    i32 86, label %sw.bb.197
  ]

sw.bb:                                            ; preds = %if.end.34, %if.end.34
  %arraydecay37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call38 = call i32 @sm_strcasecmp(i8* %arraydecay37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0))
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.72

if.then.41:                                       ; preds = %sw.bb
  %24 = bitcast i32* %inbody to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %inbody, align 4, !tbaa !1
  %25 = load i32, i32* %rcpt_num, align 4, !tbaa !1
  %cmp42 = icmp eq i32 %25, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.41
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0))
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.then.41
  store i32 1, i32* @HoldErrs, align 4, !tbaa !1
  %26 = load i8*, i8** %return_path, align 8, !tbaa !5
  %call46 = call i32 @store(i8* %26, i32* %inbody)
  store i32 %call46, i32* %msgfd, align 4, !tbaa !1
  store i32 0, i32* @HoldErrs, align 4, !tbaa !1
  %27 = load i32, i32* %msgfd, align 4, !tbaa !1
  %cmp47 = icmp slt i32 %27, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.51

land.lhs.true.49:                                 ; preds = %if.end.45
  %28 = load i32, i32* %inbody, align 4, !tbaa !1
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.49
  call void @flush_error()
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %land.lhs.true.49, %if.end.45
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %if.end.51
  %29 = load i32, i32* %i, align 4, !tbaa !1
  %30 = load i32, i32* %rcpt_num, align 4, !tbaa !1
  %cmp53 = icmp slt i32 %29, %30
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.52
  %31 = load i32, i32* %msgfd, align 4, !tbaa !1
  %cmp55 = icmp slt i32 %31, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.body
  call void @flush_error()
  br label %for.inc

if.end.58:                                        ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %32 to i64
  %33 = load i8**, i8*** %rcpt_addr, align 8, !tbaa !5
  %arrayidx59 = getelementptr inbounds i8*, i8** %33, i64 %idxprom
  %34 = load i8*, i8** %arrayidx59, align 8, !tbaa !5
  %call60 = call i8* @strchr(i8* %34, i32 43) #1
  store i8* %call60, i8** %p, align 8, !tbaa !5
  %35 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp61 = icmp ne i8* %35, null
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.58
  %36 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %36, align 1, !tbaa !7
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.58
  %37 = load i32, i32* %msgfd, align 4, !tbaa !1
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom65 = sext i32 %38 to i64
  %39 = load i8**, i8*** %rcpt_addr, align 8, !tbaa !5
  %arrayidx66 = getelementptr inbounds i8*, i8** %39, i64 %idxprom65
  %40 = load i8*, i8** %arrayidx66, align 8, !tbaa !5
  call void @deliver(i32 %37, i8* %40)
  br label %for.inc

for.inc:                                          ; preds = %if.end.64, %if.then.57
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond.52

for.end:                                          ; preds = %for.cond.52
  %42 = load i32, i32* %msgfd, align 4, !tbaa !1
  %cmp67 = icmp sge i32 %42, 0
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %for.end
  %43 = load i32, i32* %msgfd, align 4, !tbaa !1
  %call70 = call i32 @close(i32 %43)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %for.end
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.71, %if.then.50, %if.then.44
  %44 = bitcast i32* %inbody to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 3, label %for.cond
    i32 8, label %rset
  ]

if.end.72:                                        ; preds = %sw.bb
  br label %syntaxerr

sw.bb.73:                                         ; preds = %if.end.34, %if.end.34
  %arraydecay74 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call75 = call i32 @sm_strncasecmp(i8* %arraydecay74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i64 5)
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.91

if.then.78:                                       ; preds = %sw.bb.73
  %45 = load i32, i32* %gotlhlo, align 4, !tbaa !1
  %tobool79 = icmp ne i32 %45, 0
  br i1 %tobool79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.then.78
  %arraydecay81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %myhostname, i32 0, i32 0
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* %arraydecay81)
  br label %for.cond

if.end.82:                                        ; preds = %if.then.78
  store i32 1, i32* %gotlhlo, align 4, !tbaa !1
  %arraydecay83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %myhostname, i32 0, i32 0
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* %arraydecay83)
  %46 = load i32, i32* @EightBitMime, align 4, !tbaa !1
  %tobool85 = icmp ne i32 %46, 0
  br i1 %tobool85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.82
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.end.82
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0))
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0))
  br label %for.cond

if.end.91:                                        ; preds = %sw.bb.73
  br label %syntaxerr

sw.bb.92:                                         ; preds = %if.end.34, %if.end.34
  %arraydecay93 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call94 = call i32 @sm_strncasecmp(i8* %arraydecay93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i64 5)
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then.97, label %if.end.115

if.then.97:                                       ; preds = %sw.bb.92
  %47 = load i8*, i8** %return_path, align 8, !tbaa !5
  %cmp98 = icmp ne i8* %47, null
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.97
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0))
  br label %for.cond

if.end.101:                                       ; preds = %if.then.97
  %arraydecay102 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %add.ptr103 = getelementptr inbounds i8, i8* %arraydecay102, i64 5
  %call104 = call i32 @sm_strncasecmp(i8* %add.ptr103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i64 5)
  %cmp105 = icmp ne i32 %call104, 0
  br i1 %cmp105, label %if.then.112, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.101
  %arraydecay107 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %add.ptr108 = getelementptr inbounds i8, i8* %arraydecay107, i64 10
  %call109 = call i8* @parseaddr(i8* %add.ptr108, i32 0)
  store i8* %call109, i8** %return_path, align 8, !tbaa !5
  %cmp110 = icmp eq i8* %call109, null
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %lor.lhs.false, %if.end.101
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0))
  br label %for.cond

if.end.113:                                       ; preds = %lor.lhs.false
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0))
  br label %for.cond

if.end.115:                                       ; preds = %sw.bb.92
  br label %syntaxerr

sw.bb.116:                                        ; preds = %if.end.34, %if.end.34
  %arraydecay117 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call118 = call i32 @sm_strcasecmp(i8* %arraydecay117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %sw.bb.116
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0))
  br label %for.cond

if.end.123:                                       ; preds = %sw.bb.116
  br label %syntaxerr

sw.bb.124:                                        ; preds = %if.end.34, %if.end.34
  %arraydecay125 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call126 = call i32 @sm_strcasecmp(i8* %arraydecay125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0))
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %sw.bb.124
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0))
  call void @sm_exit(i32 0)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %sw.bb.124
  br label %syntaxerr

sw.bb.132:                                        ; preds = %if.end.34, %if.end.34
  %arraydecay133 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call134 = call i32 @sm_strncasecmp(i8* %arraydecay133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i64 5)
  %cmp135 = icmp eq i32 %call134, 0
  br i1 %cmp135, label %if.then.137, label %if.else

if.then.137:                                      ; preds = %sw.bb.132
  %48 = load i8*, i8** %return_path, align 8, !tbaa !5
  %cmp138 = icmp eq i8* %48, null
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.then.137
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0))
  br label %for.cond

if.end.141:                                       ; preds = %if.then.137
  %49 = load i32, i32* %rcpt_num, align 4, !tbaa !1
  %50 = load i32, i32* %rcpt_alloc, align 4, !tbaa !1
  %cmp142 = icmp sge i32 %49, %50
  br i1 %cmp142, label %if.then.144, label %if.end.156

if.then.144:                                      ; preds = %if.end.141
  %51 = load i32, i32* %rcpt_alloc, align 4, !tbaa !1
  %add = add nsw i32 %51, 30
  store i32 %add, i32* %rcpt_alloc, align 4, !tbaa !1
  %52 = load i8**, i8*** %rcpt_addr, align 8, !tbaa !5
  %53 = bitcast i8** %52 to i8*
  %cmp145 = icmp eq i8* %53, null
  br i1 %cmp145, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.144
  %54 = load i32, i32* %rcpt_alloc, align 4, !tbaa !1
  %conv147 = sext i32 %54 to i64
  %mul = mul i64 %conv147, 8
  %call148 = call noalias i8* @malloc(i64 %mul) #1
  br label %cond.end

cond.false:                                       ; preds = %if.then.144
  %55 = load i8**, i8*** %rcpt_addr, align 8, !tbaa !5
  %56 = bitcast i8** %55 to i8*
  %57 = load i32, i32* %rcpt_alloc, align 4, !tbaa !1
  %conv149 = sext i32 %57 to i64
  %mul150 = mul i64 %conv149, 8
  %call151 = call i8* @realloc(i8* %56, i64 %mul150) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call148, %cond.true ], [ %call151, %cond.false ]
  %58 = bitcast i8* %cond to i8**
  store i8** %58, i8*** %rcpt_addr, align 8, !tbaa !5
  %59 = load i8**, i8*** %rcpt_addr, align 8, !tbaa !5
  %cmp152 = icmp eq i8** %59, null
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %cond.end
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  call void @sm_exit(i32 75)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %cond.end
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.141
  %arraydecay157 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %add.ptr158 = getelementptr inbounds i8, i8* %arraydecay157, i64 5
  %call159 = call i32 @sm_strncasecmp(i8* %add.ptr158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i64 3)
  %cmp160 = icmp ne i32 %call159, 0
  br i1 %cmp160, label %if.then.170, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %if.end.156
  %arraydecay163 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %add.ptr164 = getelementptr inbounds i8, i8* %arraydecay163, i64 8
  %call165 = call i8* @parseaddr(i8* %add.ptr164, i32 1)
  %60 = load i32, i32* %rcpt_num, align 4, !tbaa !1
  %idxprom166 = sext i32 %60 to i64
  %61 = load i8**, i8*** %rcpt_addr, align 8, !tbaa !5
  %arrayidx167 = getelementptr inbounds i8*, i8** %61, i64 %idxprom166
  store i8* %call165, i8** %arrayidx167, align 8, !tbaa !5
  %cmp168 = icmp eq i8* %call165, null
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %lor.lhs.false.162, %if.end.156
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0))
  br label %for.cond

if.end.171:                                       ; preds = %lor.lhs.false.162
  %62 = load i32, i32* %rcpt_num, align 4, !tbaa !1
  %idxprom172 = sext i32 %62 to i64
  %63 = load i8**, i8*** %rcpt_addr, align 8, !tbaa !5
  %arrayidx173 = getelementptr inbounds i8*, i8** %63, i64 %idxprom172
  %64 = load i8*, i8** %arrayidx173, align 8, !tbaa !5
  %call174 = call i8* @process_recipient(i8* %64)
  store i8* %call174, i8** %err, align 8, !tbaa !5
  %65 = load i8*, i8** %err, align 8, !tbaa !5
  %cmp175 = icmp ne i8* %65, null
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.171
  %66 = load i8*, i8** %err, align 8, !tbaa !5
  call void (i8*, i8*, ...) @mailerr(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* %66)
  br label %for.cond

if.end.178:                                       ; preds = %if.end.171
  %67 = load i32, i32* %rcpt_num, align 4, !tbaa !1
  %inc179 = add nsw i32 %67, 1
  store i32 %inc179, i32* %rcpt_num, align 4, !tbaa !1
  %call180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0))
  br label %for.cond

if.else:                                          ; preds = %sw.bb.132
  %arraydecay181 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call182 = call i32 @sm_strcasecmp(i8* %arraydecay181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0))
  %cmp183 = icmp eq i32 %call182, 0
  br i1 %cmp183, label %if.then.185, label %if.end.195

if.then.185:                                      ; preds = %if.else
  %call186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0))
  br label %rset

rset:                                             ; preds = %if.then.185, %cleanup
  br label %while.cond

while.cond:                                       ; preds = %while.body, %rset
  %68 = load i32, i32* %rcpt_num, align 4, !tbaa !1
  %cmp187 = icmp sgt i32 %68, 0
  br i1 %cmp187, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %69 = load i32, i32* %rcpt_num, align 4, !tbaa !1
  %dec = add nsw i32 %69, -1
  store i32 %dec, i32* %rcpt_num, align 4, !tbaa !1
  %idxprom189 = sext i32 %dec to i64
  %70 = load i8**, i8*** %rcpt_addr, align 8, !tbaa !5
  %arrayidx190 = getelementptr inbounds i8*, i8** %70, i64 %idxprom189
  %71 = load i8*, i8** %arrayidx190, align 8, !tbaa !5
  call void @free(i8* %71) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = load i8*, i8** %return_path, align 8, !tbaa !5
  %cmp191 = icmp ne i8* %72, null
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %while.end
  %73 = load i8*, i8** %return_path, align 8, !tbaa !5
  call void @free(i8* %73) #1
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %while.end
  store i8* null, i8** %return_path, align 8, !tbaa !5
  br label %for.cond

if.end.195:                                       ; preds = %if.else
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195
  br label %syntaxerr

sw.bb.197:                                        ; preds = %if.end.34, %if.end.34
  %arraydecay198 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call199 = call i32 @sm_strncasecmp(i8* %arraydecay198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i64 5)
  %cmp200 = icmp eq i32 %call199, 0
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %sw.bb.197
  %call203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i32 0, i32 0))
  br label %for.cond

if.end.204:                                       ; preds = %sw.bb.197
  br label %syntaxerr

sw.default:                                       ; preds = %if.end.34
  br label %syntaxerr

syntaxerr:                                        ; preds = %sw.default, %if.end.204, %if.end.196, %if.end.131, %if.end.123, %if.end.115, %if.end.91, %if.end.72
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0))
  br label %for.cond

return:                                           ; No predecessors!
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i32 @getuid() #3

declare i8* @getlogin() #2

declare %struct.passwd* @getpwnam(i8*) #2

declare %struct.passwd* @getpwuid(i32) #2

; Function Attrs: nounwind uwtable
define i32 @store(i8* %from, i32* %inbody) #0 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca i8*, align 8
  %inbody.addr = alloca i32*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %tval = alloca i64, align 8
  %eline = alloca i32, align 4
  %fullline = alloca i32, align 4
  %prevfl = alloca i32, align 4
  %line = alloca [2048 x i8], align 16
  %fd = alloca i32, align 4
  %tmpbuf = alloca [19 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %line_len = alloca i64, align 8
  %peek = alloca i32, align 4
  store i8* %from, i8** %from.addr, align 8, !tbaa !5
  store i32* %inbody, i32** %inbody.addr, align 8, !tbaa !5
  %0 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %1 = bitcast i64* %tval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %eline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %fullline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %fullline, align 4, !tbaa !1
  %4 = bitcast i32* %prevfl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [2048 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %5) #1
  %6 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast [19 x i8]* %tmpbuf to i8*
  call void @llvm.lifetime.start(i64 19, i8* %7) #1
  %8 = load i32*, i32** %inbody.addr, align 8, !tbaa !5
  %cmp = icmp ne i32* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32*, i32** %inbody.addr, align 8, !tbaa !5
  store i32 0, i32* %9, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @umask(i32 63) #1
  %arraydecay = getelementptr inbounds [19 x i8], [19 x i8]* %tmpbuf, i32 0, i32 0
  %call1 = call i64 @sm_strlcpy(i8* %arraydecay, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i64 19)
  %arraydecay2 = getelementptr inbounds [19 x i8], [19 x i8]* %tmpbuf, i32 0, i32 0
  %call3 = call i32 @mkstemp(i8* %arraydecay2)
  store i32 %call3, i32* %fd, align 4, !tbaa !1
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %fd, align 4, !tbaa !1
  %call5 = call %struct._IO_FILE* @fdopen(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0)) #1
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %cmp6 = icmp eq %struct._IO_FILE* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %11 = load i32, i32* %fd, align 4, !tbaa !1
  %cmp8 = icmp sge i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.7
  %12 = load i32, i32* %fd, align 4, !tbaa !1
  %call10 = call i32 @close(i32 %12)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.7
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i32 0, i32 0))
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.181

if.end.12:                                        ; preds = %lor.lhs.false
  %arraydecay13 = getelementptr inbounds [19 x i8], [19 x i8]* %tmpbuf, i32 0, i32 0
  %call14 = call i32 @unlink(i8* %arraydecay13) #1
  %13 = load i32, i32* @LMTPMode, align 4, !tbaa !1
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %call17 = call i32 @fflush(%struct._IO_FILE* %14)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.12
  %15 = load i32*, i32** %inbody.addr, align 8, !tbaa !5
  %cmp19 = icmp ne i32* %15, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %16 = load i32*, i32** %inbody.addr, align 8, !tbaa !5
  store i32 1, i32* %16, align 4, !tbaa !1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %call22 = call i64 @time(i64* %tval) #1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %18 = load i8*, i8** %from.addr, align 8, !tbaa !5
  %call23 = call i8* @ctime(i64* %tval) #1
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* %18, i8* %call23)
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  store i32 1, i32* %eline, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end.21
  %arraydecay25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call26 = call i8* @fgets(i8* %arraydecay25, i32 2048, %struct._IO_FILE* %19)
  %cmp27 = icmp ne i8* %call26, null
  br i1 %cmp27, label %while.body, label %while.end.141

while.body:                                       ; preds = %while.cond
  %20 = bitcast i64* %line_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i64 0, i64* %line_len, align 8, !tbaa !11
  %21 = bitcast i32* %peek to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %fullline, align 4, !tbaa !1
  store i32 %22, i32* %prevfl, align 4, !tbaa !1
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.34, %while.body
  %23 = load i64, i64* %line_len, align 8, !tbaa !11
  %arrayidx29 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %23
  %24 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv = sext i8 %24 to i32
  %cmp30 = icmp ne i32 %conv, 10
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.28
  %25 = load i64, i64* %line_len, align 8, !tbaa !11
  %cmp32 = icmp ult i64 %25, 2046
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.28
  %26 = phi i1 [ false, %while.cond.28 ], [ %cmp32, %land.rhs ]
  br i1 %26, label %while.body.34, label %while.end

while.body.34:                                    ; preds = %land.end
  %27 = load i64, i64* %line_len, align 8, !tbaa !11
  %inc = add i64 %27, 1
  store i64 %inc, i64* %line_len, align 8, !tbaa !11
  br label %while.cond.28

while.end:                                        ; preds = %land.end
  %28 = load i64, i64* %line_len, align 8, !tbaa !11
  %inc35 = add i64 %28, 1
  store i64 %inc35, i64* %line_len, align 8, !tbaa !11
  %29 = load i32, i32* %prevfl, align 4, !tbaa !1
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %while.end
  %30 = load i32, i32* @LMTPMode, align 4, !tbaa !1
  %tobool37 = icmp ne i32 %30, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.61

land.lhs.true.38:                                 ; preds = %land.lhs.true
  %arrayidx39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 0
  %31 = load i8, i8* %arrayidx39, align 1, !tbaa !7
  %conv40 = sext i8 %31 to i32
  %cmp41 = icmp eq i32 %conv40, 46
  br i1 %cmp41, label %if.then.43, label %if.end.61

if.then.43:                                       ; preds = %land.lhs.true.38
  %arrayidx44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 1
  %32 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %conv45 = sext i8 %32 to i32
  %cmp46 = icmp eq i32 %conv45, 10
  br i1 %cmp46, label %if.then.58, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.then.43
  %arrayidx49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 1
  %33 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = sext i8 %33 to i32
  %cmp51 = icmp eq i32 %conv50, 13
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.59

land.lhs.true.53:                                 ; preds = %lor.lhs.false.48
  %arrayidx54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 2
  %34 = load i8, i8* %arrayidx54, align 1, !tbaa !7
  %conv55 = sext i8 %34 to i32
  %cmp56 = icmp eq i32 %conv55, 10
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.53, %if.then.43
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %land.lhs.true.53, %lor.lhs.false.48
  %35 = bitcast [2048 x i8]* %line to i8*
  %arraydecay60 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay60, i64 1
  %36 = load i64, i64* %line_len, align 8, !tbaa !11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %add.ptr, i64 %36, i32 1, i1 false)
  %37 = load i64, i64* %line_len, align 8, !tbaa !11
  %dec = add i64 %37, -1
  store i64 %dec, i64* %line_len, align 8, !tbaa !11
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.59, %land.lhs.true.38, %land.lhs.true, %while.end
  store i32 0, i32* %fullline, align 4, !tbaa !1
  %38 = load i64, i64* %line_len, align 8, !tbaa !11
  %cmp62 = icmp ugt i64 %38, 0
  br i1 %cmp62, label %if.then.64, label %if.else.102

if.then.64:                                       ; preds = %if.end.61
  %39 = load i64, i64* %line_len, align 8, !tbaa !11
  %sub = sub i64 %39, 1
  %arrayidx65 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %sub
  %40 = load i8, i8* %arrayidx65, align 1, !tbaa !7
  %conv66 = sext i8 %40 to i32
  %cmp67 = icmp eq i32 %conv66, 10
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.then.64
  %41 = load i64, i64* %line_len, align 8, !tbaa !11
  %cmp70 = icmp uge i64 %41, 2
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.84

land.lhs.true.72:                                 ; preds = %if.then.69
  %42 = load i64, i64* %line_len, align 8, !tbaa !11
  %sub73 = sub i64 %42, 2
  %arrayidx74 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %sub73
  %43 = load i8, i8* %arrayidx74, align 1, !tbaa !7
  %conv75 = sext i8 %43 to i32
  %cmp76 = icmp eq i32 %conv75, 13
  br i1 %cmp76, label %if.then.78, label %if.end.84

if.then.78:                                       ; preds = %land.lhs.true.72
  %44 = load i64, i64* %line_len, align 8, !tbaa !11
  %sub79 = sub i64 %44, 2
  %arrayidx80 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %sub79
  store i8 10, i8* %arrayidx80, align 1, !tbaa !7
  %45 = load i64, i64* %line_len, align 8, !tbaa !11
  %sub81 = sub i64 %45, 1
  %arrayidx82 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %sub81
  store i8 0, i8* %arrayidx82, align 1, !tbaa !7
  %46 = load i64, i64* %line_len, align 8, !tbaa !11
  %dec83 = add i64 %46, -1
  store i64 %dec83, i64* %line_len, align 8, !tbaa !11
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.78, %land.lhs.true.72, %if.then.69
  store i32 1, i32* %fullline, align 4, !tbaa !1
  br label %if.end.101

if.else:                                          ; preds = %if.then.64
  %47 = load i64, i64* %line_len, align 8, !tbaa !11
  %sub85 = sub i64 %47, 1
  %arrayidx86 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %sub85
  %48 = load i8, i8* %arrayidx86, align 1, !tbaa !7
  %conv87 = sext i8 %48 to i32
  %cmp88 = icmp eq i32 %conv87, 13
  br i1 %cmp88, label %if.then.90, label %if.end.100

if.then.90:                                       ; preds = %if.else
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call91 = call i32 @fgetc(%struct._IO_FILE* %49)
  store i32 %call91, i32* %peek, align 4, !tbaa !1
  %50 = load i32, i32* %peek, align 4, !tbaa !1
  %cmp92 = icmp eq i32 %50, 10
  br i1 %cmp92, label %if.then.94, label %if.else.97

if.then.94:                                       ; preds = %if.then.90
  %51 = load i64, i64* %line_len, align 8, !tbaa !11
  %sub95 = sub i64 %51, 1
  %arrayidx96 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %sub95
  store i8 10, i8* %arrayidx96, align 1, !tbaa !7
  store i32 1, i32* %fullline, align 4, !tbaa !1
  br label %if.end.99

if.else.97:                                       ; preds = %if.then.90
  %52 = load i32, i32* %peek, align 4, !tbaa !1
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call98 = call i32 @ungetc(i32 %52, %struct._IO_FILE* %53)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.94
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.else
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.84
  br label %if.end.103

if.else.102:                                      ; preds = %if.end.61
  store i32 1, i32* %fullline, align 4, !tbaa !1
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.102, %if.end.101
  %54 = load i32, i32* %prevfl, align 4, !tbaa !1
  %tobool104 = icmp ne i32 %54, 0
  br i1 %tobool104, label %land.lhs.true.105, label %if.else.111

land.lhs.true.105:                                ; preds = %if.end.103
  %arrayidx106 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 0
  %55 = load i8, i8* %arrayidx106, align 1, !tbaa !7
  %conv107 = sext i8 %55 to i32
  %cmp108 = icmp eq i32 %conv107, 10
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %land.lhs.true.105
  store i32 1, i32* %eline, align 4, !tbaa !1
  br label %if.end.128

if.else.111:                                      ; preds = %land.lhs.true.105, %if.end.103
  %56 = load i32, i32* %eline, align 4, !tbaa !1
  %tobool112 = icmp ne i32 %56, 0
  br i1 %tobool112, label %land.lhs.true.113, label %if.end.127

land.lhs.true.113:                                ; preds = %if.else.111
  %arrayidx114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 0
  %57 = load i8, i8* %arrayidx114, align 1, !tbaa !7
  %conv115 = sext i8 %57 to i32
  %cmp116 = icmp eq i32 %conv115, 70
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.127

land.lhs.true.118:                                ; preds = %land.lhs.true.113
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %cmp119 = icmp ne %struct._IO_FILE* %58, null
  br i1 %cmp119, label %land.lhs.true.121, label %if.end.127

land.lhs.true.121:                                ; preds = %land.lhs.true.118
  %arraydecay122 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %call123 = call i32 @memcmp(i8* %arraydecay122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i64 5) #8
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end.127, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true.121
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %call126 = call i32 @_IO_putc(i32 62, %struct._IO_FILE* %59)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %land.lhs.true.121, %land.lhs.true.118, %land.lhs.true.113, %if.else.111
  store i32 0, i32* %eline, align 4, !tbaa !1
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.110
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %cmp129 = icmp ne %struct._IO_FILE* %60, null
  br i1 %cmp129, label %if.then.131, label %if.end.139

if.then.131:                                      ; preds = %if.end.128
  %arraydecay132 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %61 = load i64, i64* %line_len, align 8, !tbaa !11
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %call133 = call i64 @fwrite(i8* %arraydecay132, i64 1, i64 %61, %struct._IO_FILE* %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %call134 = call i32 @ferror(%struct._IO_FILE* %63) #1
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.then.131
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0))
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %call137 = call i32 @fclose(%struct._IO_FILE* %64)
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.138:                                       ; preds = %if.then.131
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.128
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.58, %if.end.139, %if.then.136
  %65 = bitcast i32* %peek to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i64* %line_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.181 [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
    i32 6, label %lmtpdot
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.141:                                    ; preds = %while.cond
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %cmp142 = icmp eq %struct._IO_FILE* %67, null
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %while.end.141
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.181

if.end.145:                                       ; preds = %while.end.141
  %68 = load i32, i32* @LMTPMode, align 4, !tbaa !1
  %tobool146 = icmp ne i32 %68, 0
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.145
  call void @sm_exit(i32 0)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.end.145
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %cmp149 = icmp ne %struct._IO_FILE* %69, null
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.158

land.lhs.true.151:                                ; preds = %if.end.148
  %arraydecay152 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %call153 = call i8* @strchr(i8* %arraydecay152, i32 10) #1
  %cmp154 = icmp eq i8* %call153, null
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %land.lhs.true.151
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %call157 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %70)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %land.lhs.true.151, %if.end.148
  br label %lmtpdot

lmtpdot:                                          ; preds = %if.end.158, %cleanup
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %cmp159 = icmp ne %struct._IO_FILE* %71, null
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %lmtpdot
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %call162 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %72)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %lmtpdot
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %cmp164 = icmp eq %struct._IO_FILE* %73, null
  br i1 %cmp164, label %if.then.174, label %lor.lhs.false.166

lor.lhs.false.166:                                ; preds = %if.end.163
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %call167 = call i32 @fflush(%struct._IO_FILE* %74)
  %cmp168 = icmp eq i32 %call167, -1
  br i1 %cmp168, label %if.then.174, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %lor.lhs.false.166
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %call171 = call i32 @ferror(%struct._IO_FILE* %75) #1
  %cmp172 = icmp ne i32 %call171, 0
  br i1 %cmp172, label %if.then.174, label %if.end.180

if.then.174:                                      ; preds = %lor.lhs.false.170, %lor.lhs.false.166, %if.end.163
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0))
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %cmp175 = icmp ne %struct._IO_FILE* %76, null
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %if.then.174
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !5
  %call178 = call i32 @fclose(%struct._IO_FILE* %77)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %if.then.174
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.181

if.end.180:                                       ; preds = %lor.lhs.false.170
  %78 = load i32, i32* %fd, align 4, !tbaa !1
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.181

cleanup.181:                                      ; preds = %if.end.180, %if.end.179, %if.then.144, %cleanup, %if.end.11
  %79 = bitcast [19 x i8]* %tmpbuf to i8*
  call void @llvm.lifetime.end(i64 19, i8* %79) #1
  %80 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast [2048 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %81) #1
  %82 = bitcast i32* %prevfl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %fullline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %eline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i64* %tval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = load i32, i32* %retval
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define void @flush_error() #0 {
entry:
  %0 = load i32, i32* @LMTPMode, align 4, !tbaa !1
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @ErrBuf, i32 0, i32 0))
  br label %if.end.4

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @ExitVal, align 4, !tbaa !1
  %cmp = icmp ne i32 %1, 64
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.else
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @ErrBuf, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @deliver(i32 %fd, i8* %name) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %fsb = alloca %struct.stat, align 8
  %sb = alloca %struct.stat, align 8
  %path = alloca [4096 x i8], align 16
  %mbfd = alloca i32, align 4
  %nr = alloca i32, align 4
  %nw = alloca i32, align 4
  %off = alloca i32, align 4
  %exitval = alloca i32, align 4
  %p = alloca i8*, align 8
  %errcode = alloca i8*, align 8
  %curoff = alloca i64, align 8
  %cursize = alloca i64, align 8
  %biffmsg = alloca [100 x i8], align 16
  %buf = alloca [8192 x i8], align 16
  %user = alloca %struct.SM_MBDB_T, align 4
  %cleanup.dest.slot = alloca i32
  %save_errno = alloca i32, align 4
  %mode = alloca i32, align 4
  %gid = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !5
  %0 = bitcast %struct.stat* %fsb to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %1 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #1
  %2 = bitcast [4096 x i8]* %path to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %2) #1
  %3 = bitcast i32* %mbfd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -1, i32* %mbfd, align 4, !tbaa !1
  %4 = bitcast i32* %nr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %nr, align 4, !tbaa !1
  %5 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %exitval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %errcode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %curoff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %cursize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast [100 x i8]* %biffmsg to i8*
  call void @llvm.lifetime.start(i64 100, i8* %12) #1
  %13 = bitcast [8192 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 8192, i8* %13) #1
  %14 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.start(i64 8712, i8* %14) #1
  %15 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %call = call i32 @sm_mbdb_lookup(i8* %15, %struct.SM_MBDB_T* %user)
  store i32 %call, i32* %exitval, align 4, !tbaa !1
  %16 = load i32, i32* %exitval, align 4, !tbaa !1
  switch i32 %16, label %sw.default [
    i32 0, label %sw.epilog
    i32 67, label %sw.bb
    i32 75, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 69, i32* %exitval, align 4, !tbaa !1
  %17 = load i8*, i8** %name.addr, align 8, !tbaa !5
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0), i8* %17)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %18 = load i8*, i8** %name.addr, align 8, !tbaa !5
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.60, i32 0, i32 0), i8* %18)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 69, i32* %exitval, align 4, !tbaa !1
  %19 = load i8*, i8** %name.addr, align 8, !tbaa !5
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i32 0, i32 0), i8* %19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb, %entry
  %20 = load i32, i32* %exitval, align 4, !tbaa !1
  %cmp = icmp ne i32 %20, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %sw.epilog
  %21 = load i32, i32* @ExitVal, align 4, !tbaa !1
  %cmp2 = icmp ne i32 %21, 75
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %22 = load i32, i32* %exitval, align 4, !tbaa !1
  store i32 %22, i32* @ExitVal, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.338

if.end.4:                                         ; preds = %sw.epilog
  call void @endpwent()
  %23 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %call5 = call i64 @strlen(i8* %23) #8
  %cmp6 = icmp ugt i64 %call5, 40
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %24 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 40
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %25 = load i8*, i8** %name.addr, align 8, !tbaa !5
  store i8* %25, i8** %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %26 = load i8*, i8** %p, align 8, !tbaa !5
  %27 = load i8, i8* %26, align 1, !tbaa !7
  %conv = sext i8 %27 to i32
  %cmp9 = icmp ne i32 %conv, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %p, align 8, !tbaa !5
  %29 = load i8, i8* %28, align 1, !tbaa !7
  %conv11 = sext i8 %29 to i32
  %and = and i32 %conv11, -128
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %for.body
  %30 = load i8*, i8** %p, align 8, !tbaa !5
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %conv15 = sext i8 %31 to i32
  %and16 = and i32 %conv15, 127
  %conv17 = trunc i32 %and16 to i8
  store i8 %conv17, i8* %30, align 1, !tbaa !7
  br label %if.end.25

if.else:                                          ; preds = %for.body
  %32 = load i8*, i8** %p, align 8, !tbaa !5
  %33 = load i8, i8* %32, align 1, !tbaa !7
  %conv18 = sext i8 %33 to i32
  %idxprom = sext i32 %conv18 to i64
  %call19 = call i16** @__ctype_b_loc() #7
  %34 = load i16*, i16** %call19, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds i16, i16* %34, i64 %idxprom
  %35 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %conv21 = zext i16 %35 to i32
  %and22 = and i32 %conv21, 16384
  %tobool = icmp ne i32 %and22, 0
  br i1 %tobool, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.else
  %36 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 46, i8* %36, align 1, !tbaa !7
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %37 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i8*, i8** @HomeMailFile, align 8, !tbaa !5
  %cmp26 = icmp eq i8* %38, null
  br i1 %cmp26, label %if.then.28, label %if.else.34

if.then.28:                                       ; preds = %for.end
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %39 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %call29 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay, i64 4096, i32 3, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @SpoolPath, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), i8* %39)
  %cmp30 = icmp uge i64 %call29, 4096
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.28
  store i32 69, i32* %exitval, align 4, !tbaa !1
  %40 = load i8*, i8** %name.addr, align 8, !tbaa !5
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i32 0, i32 0), i8* %40)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.338

if.end.33:                                        ; preds = %if.then.28
  br label %if.end.51

if.else.34:                                       ; preds = %for.end
  %mbdb_homedir = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir, i32 0, i32 0
  %41 = load i8, i8* %arraydecay35, align 1, !tbaa !7
  %conv36 = sext i8 %41 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.34
  store i32 69, i32* %exitval, align 4, !tbaa !1
  %42 = load i8*, i8** %name.addr, align 8, !tbaa !5
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i32 0, i32 0), i8* %42)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.338

if.else.40:                                       ; preds = %if.else.34
  %arraydecay41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %mbdb_homedir42 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir42, i32 0, i32 0
  %43 = load i8*, i8** @HomeMailFile, align 8, !tbaa !5
  %call44 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay41, i64 4096, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* %arraydecay43, i8* %43)
  %conv45 = sext i32 %call44 to i64
  %cmp46 = icmp uge i64 %conv45, 4096
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else.40
  store i32 69, i32* %exitval, align 4, !tbaa !1
  %44 = load i8*, i8** %name.addr, align 8, !tbaa !5
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i32 0, i32 0), i8* %44)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.338

if.end.49:                                        ; preds = %if.else.40
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.33
  br label %tryagain

tryagain:                                         ; preds = %cleanup, %if.end.51
  %arraydecay52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  store i8* %arraydecay52, i8** %p, align 8, !tbaa !5
  %45 = load i8*, i8** %p, align 8, !tbaa !5
  %call53 = call i32 @lockmbox(i8* %45)
  store i32 %call53, i32* %off, align 4, !tbaa !1
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.70

if.then.56:                                       ; preds = %tryagain
  %46 = load i32, i32* %off, align 4, !tbaa !1
  %cmp57 = icmp eq i32 %46, 75
  br i1 %cmp57, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.56
  %47 = load i32, i32* %off, align 4, !tbaa !1
  %call59 = call i32 @e_to_sys(i32 %47)
  %cmp60 = icmp eq i32 %call59, 75
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %lor.lhs.false, %if.then.56
  store i32 75, i32* @ExitVal, align 4, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8** %errcode, align 8, !tbaa !5
  br label %if.end.64

if.else.63:                                       ; preds = %lor.lhs.false
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8** %errcode, align 8, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.62
  %48 = load i8*, i8** %errcode, align 8, !tbaa !5
  %49 = load i8*, i8** %p, align 8, !tbaa !5
  %50 = load i32, i32* %off, align 4, !tbaa !1
  %call65 = call i32* @__errno_location() #7
  %51 = load i32, i32* %call65, align 4, !tbaa !1
  %cmp66 = icmp sgt i32 %51, 0
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.64
  %call68 = call i32* @__errno_location() #7
  %52 = load i32, i32* %call68, align 4, !tbaa !1
  %call69 = call i8* @sm_errstring(i32 %52)
  br label %cond.end

cond.false:                                       ; preds = %if.end.64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call69, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.69, i32 0, i32 0), %cond.false ]
  call void (i8*, i8*, ...) @mailerr(i8* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.68, i32 0, i32 0), i8* %49, i32 %50, i8* %cond)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.338

if.end.70:                                        ; preds = %tryagain
  %arraydecay71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %call72 = call i32 @lstat(i8* %arraydecay71, %struct.stat* %sb) #1
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then.75, label %if.else.108

if.then.75:                                       ; preds = %if.end.70
  %53 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 384, i32* %mode, align 4, !tbaa !1
  %55 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %mbdb_gid = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 1
  %56 = load i32, i32* %mbdb_gid, align 4, !tbaa !25
  store i32 %56, i32* %gid, align 4, !tbaa !1
  %arraydecay76 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %57 = load i32, i32* %mode, align 4, !tbaa !1
  %call77 = call i32 (i8*, i32, ...) @open(i8* %arraydecay76, i32 1217, i32 %57)
  store i32 %call77, i32* %mbfd, align 4, !tbaa !1
  %call78 = call i32* @__errno_location() #7
  %58 = load i32, i32* %call78, align 4, !tbaa !1
  store i32 %58, i32* %save_errno, align 4, !tbaa !1
  %arraydecay79 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %call80 = call i32 @lstat(i8* %arraydecay79, %struct.stat* %sb) #1
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.then.75
  store i32 73, i32* @ExitVal, align 4, !tbaa !1
  %arraydecay84 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.71, i32 0, i32 0), i8* %arraydecay84)
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.then.75
  %59 = load i32, i32* %mbfd, align 4, !tbaa !1
  %cmp86 = icmp slt i32 %59, 0
  br i1 %cmp86, label %if.then.88, label %if.else.95

if.then.88:                                       ; preds = %if.end.85
  %60 = load i32, i32* %save_errno, align 4, !tbaa !1
  %cmp89 = icmp eq i32 %60, 17
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.88
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %if.then.88
  %arraydecay93 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %61 = load i32, i32* %save_errno, align 4, !tbaa !1
  %call94 = call i8* @sm_errstring(i32 %61)
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay93, i8* %call94)
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.else.95:                                       ; preds = %if.end.85
  %62 = load i32, i32* %mbfd, align 4, !tbaa !1
  %mbdb_uid = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %63 = load i32, i32* %mbdb_uid, align 4, !tbaa !27
  %64 = load i32, i32* %gid, align 4, !tbaa !1
  %call96 = call i32 @fchown(i32 %62, i32 %63, i32 %64) #1
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.else.95
  %mbdb_uid100 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %65 = load i32, i32* %mbdb_uid100, align 4, !tbaa !27
  %66 = load i32, i32* %gid, align 4, !tbaa !1
  %67 = load i8*, i8** %name.addr, align 8, !tbaa !5
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i32 %65, i32 %66, i8* %67)
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.else.101:                                      ; preds = %if.else.95
  %mbdb_uid102 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %68 = load i32, i32* %mbdb_uid102, align 4, !tbaa !27
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 4
  store i32 %68, i32* %st_uid, align 4, !tbaa !28
  %69 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call103 = call i32 @close(i32 %69)
  store i32 -1, i32* %mbfd, align 4, !tbaa !1
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.99, %if.end.92, %if.then.83, %if.end.105, %if.then.91
  %70 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.338 [
    i32 0, label %cleanup.cont
    i32 6, label %tryagain
    i32 7, label %err1
    i32 8, label %err0
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.130

if.else.108:                                      ; preds = %if.end.70
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 2
  %73 = load i64, i64* %st_nlink, align 8, !tbaa !31
  %cmp109 = icmp ne i64 %73, 1
  br i1 %cmp109, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %if.else.108
  %arraydecay112 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), i8* %arraydecay112)
  br label %err0

if.else.113:                                      ; preds = %if.else.108
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 3
  %74 = load i32, i32* %st_mode, align 4, !tbaa !32
  %and114 = and i32 %74, 61440
  %cmp115 = icmp eq i32 %and114, 32768
  br i1 %cmp115, label %if.else.119, label %if.then.117

if.then.117:                                      ; preds = %if.else.113
  %arraydecay118 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0), i8* %arraydecay118)
  br label %err0

if.else.119:                                      ; preds = %if.else.113
  %st_uid120 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 4
  %75 = load i32, i32* %st_uid120, align 4, !tbaa !28
  %mbdb_uid121 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %76 = load i32, i32* %mbdb_uid121, align 4, !tbaa !27
  %cmp122 = icmp ne i32 %75, %76
  br i1 %cmp122, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %if.else.119
  store i32 73, i32* @ExitVal, align 4, !tbaa !1
  %arraydecay125 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %st_uid126 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 4
  %77 = load i32, i32* %st_uid126, align 4, !tbaa !28
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.77, i32 0, i32 0), i8* %arraydecay125, i32 %77)
  br label %err0

if.end.127:                                       ; preds = %if.else.119
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %cleanup.cont
  %mbdb_uid131 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %78 = load i32, i32* %mbdb_uid131, align 4, !tbaa !27
  %call132 = call i32 @setreuid(i32 0, i32 %78) #1
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.then.135, label %if.end.141

if.then.135:                                      ; preds = %if.end.130
  %mbdb_uid136 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %79 = load i32, i32* %mbdb_uid136, align 4, !tbaa !27
  %call137 = call i32* @__errno_location() #7
  %80 = load i32, i32* %call137, align 4, !tbaa !1
  %call138 = call i8* @sm_errstring(i32 %80)
  %call139 = call i32 @getuid() #1
  %call140 = call i32 @geteuid() #1
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.78, i32 0, i32 0), i32 %79, i8* %call138, i32 %call139, i32 %call140)
  br label %err1

if.end.141:                                       ; preds = %if.end.130
  %arraydecay142 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %call143 = call i32 (i8*, i32, ...) @open(i8* %arraydecay142, i32 1025, i32 0)
  store i32 %call143, i32* %mbfd, align 4, !tbaa !1
  %81 = load i32, i32* %mbfd, align 4, !tbaa !1
  %cmp144 = icmp slt i32 %81, 0
  br i1 %cmp144, label %if.then.146, label %if.else.150

if.then.146:                                      ; preds = %if.end.141
  %arraydecay147 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %call148 = call i32* @__errno_location() #7
  %82 = load i32, i32* %call148, align 4, !tbaa !1
  %call149 = call i8* @sm_errstring(i32 %82)
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay147, i8* %call149)
  br label %err0

if.else.150:                                      ; preds = %if.end.141
  %83 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call151 = call i32 @fstat(i32 %83, %struct.stat* %fsb) #1
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %if.then.180, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %if.else.150
  %st_nlink155 = getelementptr inbounds %struct.stat, %struct.stat* %fsb, i32 0, i32 2
  %84 = load i64, i64* %st_nlink155, align 8, !tbaa !31
  %cmp156 = icmp ne i64 %84, 1
  br i1 %cmp156, label %if.then.180, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %lor.lhs.false.154
  %st_nlink159 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 2
  %85 = load i64, i64* %st_nlink159, align 8, !tbaa !31
  %cmp160 = icmp ne i64 %85, 1
  br i1 %cmp160, label %if.then.180, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %lor.lhs.false.158
  %st_mode163 = getelementptr inbounds %struct.stat, %struct.stat* %fsb, i32 0, i32 3
  %86 = load i32, i32* %st_mode163, align 4, !tbaa !32
  %and164 = and i32 %86, 61440
  %cmp165 = icmp eq i32 %and164, 32768
  br i1 %cmp165, label %lor.lhs.false.167, label %if.then.180

lor.lhs.false.167:                                ; preds = %lor.lhs.false.162
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 0
  %87 = load i64, i64* %st_dev, align 8, !tbaa !33
  %st_dev168 = getelementptr inbounds %struct.stat, %struct.stat* %fsb, i32 0, i32 0
  %88 = load i64, i64* %st_dev168, align 8, !tbaa !33
  %cmp169 = icmp ne i64 %87, %88
  br i1 %cmp169, label %if.then.180, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %lor.lhs.false.167
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 1
  %89 = load i64, i64* %st_ino, align 8, !tbaa !34
  %st_ino172 = getelementptr inbounds %struct.stat, %struct.stat* %fsb, i32 0, i32 1
  %90 = load i64, i64* %st_ino172, align 8, !tbaa !34
  %cmp173 = icmp ne i64 %89, %90
  br i1 %cmp173, label %if.then.180, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %lor.lhs.false.171
  %st_uid176 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 4
  %91 = load i32, i32* %st_uid176, align 4, !tbaa !28
  %st_uid177 = getelementptr inbounds %struct.stat, %struct.stat* %fsb, i32 0, i32 4
  %92 = load i32, i32* %st_uid177, align 4, !tbaa !28
  %cmp178 = icmp ne i32 %91, %92
  br i1 %cmp178, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %lor.lhs.false.175, %lor.lhs.false.171, %lor.lhs.false.167, %lor.lhs.false.162, %lor.lhs.false.158, %lor.lhs.false.154, %if.else.150
  store i32 75, i32* @ExitVal, align 4, !tbaa !1
  %arraydecay181 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i32 0, i32 0), i8* %arraydecay181)
  br label %err1

if.end.182:                                       ; preds = %lor.lhs.false.175
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182
  %93 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call184 = call i32 @flock(i32 %93, i32 2) #1
  %cmp185 = icmp slt i32 %call184, 0
  br i1 %cmp185, label %if.then.187, label %if.end.191

if.then.187:                                      ; preds = %if.end.183
  %arraydecay188 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %call189 = call i32* @__errno_location() #7
  %94 = load i32, i32* %call189, align 4, !tbaa !1
  %call190 = call i8* @sm_errstring(i32 %94)
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay188, i8* %call190)
  br label %err1

if.end.191:                                       ; preds = %if.end.183
  %95 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call192 = call i64 @lseek(i32 %95, i64 0, i32 2) #1
  store i64 %call192, i64* %curoff, align 8, !tbaa !11
  %arraydecay193 = getelementptr inbounds [100 x i8], [100 x i8]* %biffmsg, i32 0, i32 0
  %96 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %97 = load i64, i64* %curoff, align 8, !tbaa !11
  %call194 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay193, i64 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i8* %96, i64 %97)
  %98 = load i32, i32* %fd.addr, align 4, !tbaa !1
  %call195 = call i64 @lseek(i32 %98, i64 0, i32 0) #1
  %cmp196 = icmp eq i64 %call195, -1
  br i1 %cmp196, label %if.then.198, label %if.end.201

if.then.198:                                      ; preds = %if.end.191
  %call199 = call i32* @__errno_location() #7
  %99 = load i32, i32* %call199, align 4, !tbaa !1
  %call200 = call i8* @sm_errstring(i32 %99)
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i32 0, i32 0), i8* %call200)
  br label %err1

if.end.201:                                       ; preds = %if.end.191
  br label %while.cond

while.cond:                                       ; preds = %for.end.229, %if.end.201
  %100 = load i32, i32* %fd.addr, align 4, !tbaa !1
  %arraydecay202 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call203 = call i64 @read(i32 %100, i8* %arraydecay202, i64 8192)
  %conv204 = trunc i64 %call203 to i32
  store i32 %conv204, i32* %nr, align 4, !tbaa !1
  %cmp205 = icmp sgt i32 %conv204, 0
  br i1 %cmp205, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %off, align 4, !tbaa !1
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.228, %while.body
  %101 = load i32, i32* %off, align 4, !tbaa !1
  %102 = load i32, i32* %nr, align 4, !tbaa !1
  %cmp208 = icmp slt i32 %101, %102
  br i1 %cmp208, label %for.body.210, label %for.end.229

for.body.210:                                     ; preds = %for.cond.207
  %103 = load i32, i32* %mbfd, align 4, !tbaa !1
  %arraydecay211 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %104 = load i32, i32* %off, align 4, !tbaa !1
  %idx.ext = sext i32 %104 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay211, i64 %idx.ext
  %105 = load i32, i32* %nr, align 4, !tbaa !1
  %106 = load i32, i32* %off, align 4, !tbaa !1
  %sub = sub nsw i32 %105, %106
  %conv212 = sext i32 %sub to i64
  %call213 = call i64 @write(i32 %103, i8* %add.ptr, i64 %conv212)
  %conv214 = trunc i64 %call213 to i32
  store i32 %conv214, i32* %nw, align 4, !tbaa !1
  %cmp215 = icmp slt i32 %conv214, 0
  br i1 %cmp215, label %if.then.217, label %if.end.227

if.then.217:                                      ; preds = %for.body.210
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8** %errcode, align 8, !tbaa !5
  %call218 = call i32* @__errno_location() #7
  %107 = load i32, i32* %call218, align 4, !tbaa !1
  %cmp219 = icmp eq i32 %107, 122
  br i1 %cmp219, label %land.lhs.true, label %if.end.223

land.lhs.true:                                    ; preds = %if.then.217
  %108 = load i32, i32* @BounceQuota, align 4, !tbaa !1
  %tobool221 = icmp ne i32 %108, 0
  br i1 %tobool221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8** %errcode, align 8, !tbaa !5
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.222, %land.lhs.true, %if.then.217
  %109 = load i8*, i8** %errcode, align 8, !tbaa !5
  %arraydecay224 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %call225 = call i32* @__errno_location() #7
  %110 = load i32, i32* %call225, align 4, !tbaa !1
  %call226 = call i8* @sm_errstring(i32 %110)
  call void (i8*, i8*, ...) @mailerr(i8* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay224, i8* %call226)
  br label %err3

if.end.227:                                       ; preds = %for.body.210
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227
  %111 = load i32, i32* %nw, align 4, !tbaa !1
  %112 = load i32, i32* %off, align 4, !tbaa !1
  %add = add nsw i32 %112, %111
  store i32 %add, i32* %off, align 4, !tbaa !1
  br label %for.cond.207

for.end.229:                                      ; preds = %for.cond.207
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %113 = load i32, i32* %nr, align 4, !tbaa !1
  %cmp230 = icmp slt i32 %113, 0
  br i1 %cmp230, label %if.then.232, label %if.end.235

if.then.232:                                      ; preds = %while.end
  %call233 = call i32* @__errno_location() #7
  %114 = load i32, i32* %call233, align 4, !tbaa !1
  %call234 = call i8* @sm_errstring(i32 %114)
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i32 0, i32 0), i8* %call234)
  br label %err3

if.end.235:                                       ; preds = %while.end
  %115 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call236 = call i32 @fsync(i32 %115)
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %if.then.239, label %if.end.254

if.then.239:                                      ; preds = %if.end.235
  %arraydecay240 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %call241 = call i32* @__errno_location() #7
  %116 = load i32, i32* %call241, align 4, !tbaa !1
  %call242 = call i8* @sm_errstring(i32 %116)
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay240, i8* %call242)
  br label %err3

err3:                                             ; preds = %if.end.323, %if.then.239, %if.then.232, %if.end.223
  %117 = load i32, i32* %mbfd, align 4, !tbaa !1
  %cmp243 = icmp sge i32 %117, 0
  br i1 %cmp243, label %if.then.245, label %if.end.247

if.then.245:                                      ; preds = %err3
  %118 = load i32, i32* %mbfd, align 4, !tbaa !1
  %119 = load i64, i64* %curoff, align 8, !tbaa !11
  %call246 = call i32 @ftruncate(i32 %118, i64 %119) #1
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.245, %err3
  br label %err1

err1:                                             ; preds = %if.end.247, %cleanup, %if.then.198, %if.then.187, %if.then.180, %if.then.135
  %120 = load i32, i32* %mbfd, align 4, !tbaa !1
  %cmp248 = icmp sge i32 %120, 0
  br i1 %cmp248, label %if.then.250, label %if.end.252

if.then.250:                                      ; preds = %err1
  %121 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call251 = call i32 @close(i32 %121)
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.250, %err1
  br label %err0

err0:                                             ; preds = %if.then.330, %if.end.252, %cleanup, %if.then.146, %if.then.124, %if.then.117, %if.then.111
  %call253 = call i32 @setreuid(i32 0, i32 0) #1
  call void @unlockmbox()
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.338

if.end.254:                                       ; preds = %if.end.235
  %122 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call255 = call i32 @fstat(i32 %122, %struct.stat* %sb) #1
  %cmp256 = icmp slt i32 %call255, 0
  br i1 %cmp256, label %if.then.258, label %if.else.259

if.then.258:                                      ; preds = %if.end.254
  store i64 0, i64* %cursize, align 8, !tbaa !11
  br label %if.end.260

if.else.259:                                      ; preds = %if.end.254
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %123 = load i64, i64* %st_size, align 8, !tbaa !35
  store i64 %123, i64* %cursize, align 8, !tbaa !11
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.259, %if.then.258
  %124 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call261 = call i32 @close(i32 %124)
  %tobool262 = icmp ne i32 %call261, 0
  br i1 %tobool262, label %if.then.263, label %if.else.324

if.then.263:                                      ; preds = %if.end.260
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8** %errcode, align 8, !tbaa !5
  %call264 = call i32* @__errno_location() #7
  %125 = load i32, i32* %call264, align 4, !tbaa !1
  %cmp265 = icmp eq i32 %125, 122
  br i1 %cmp265, label %land.lhs.true.267, label %if.end.270

land.lhs.true.267:                                ; preds = %if.then.263
  %126 = load i32, i32* @BounceQuota, align 4, !tbaa !1
  %tobool268 = icmp ne i32 %126, 0
  br i1 %tobool268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %land.lhs.true.267
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8** %errcode, align 8, !tbaa !5
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %land.lhs.true.267, %if.then.263
  %127 = load i8*, i8** %errcode, align 8, !tbaa !5
  %arraydecay271 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %call272 = call i32* @__errno_location() #7
  %128 = load i32, i32* %call272, align 4, !tbaa !1
  %call273 = call i8* @sm_errstring(i32 %128)
  call void (i8*, i8*, ...) @mailerr(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay271, i8* %call273)
  %arraydecay274 = getelementptr inbounds [4096 x i8], [4096 x i8]* %path, i32 0, i32 0
  %call275 = call i32 (i8*, i32, ...) @open(i8* %arraydecay274, i32 1, i32 0)
  store i32 %call275, i32* %mbfd, align 4, !tbaa !1
  %129 = load i32, i32* %mbfd, align 4, !tbaa !1
  %cmp276 = icmp slt i32 %129, 0
  br i1 %cmp276, label %if.then.317, label %lor.lhs.false.278

lor.lhs.false.278:                                ; preds = %if.end.270
  %130 = load i64, i64* %cursize, align 8, !tbaa !11
  %cmp279 = icmp eq i64 %130, 0
  br i1 %cmp279, label %if.then.317, label %lor.lhs.false.281

lor.lhs.false.281:                                ; preds = %lor.lhs.false.278
  %131 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call282 = call i32 @flock(i32 %131, i32 2) #1
  %cmp283 = icmp slt i32 %call282, 0
  br i1 %cmp283, label %if.then.317, label %lor.lhs.false.285

lor.lhs.false.285:                                ; preds = %lor.lhs.false.281
  %132 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call286 = call i32 @fstat(i32 %132, %struct.stat* %sb) #1
  %cmp287 = icmp slt i32 %call286, 0
  br i1 %cmp287, label %if.then.317, label %lor.lhs.false.289

lor.lhs.false.289:                                ; preds = %lor.lhs.false.285
  %st_size290 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %133 = load i64, i64* %st_size290, align 8, !tbaa !35
  %134 = load i64, i64* %cursize, align 8, !tbaa !11
  %cmp291 = icmp ne i64 %133, %134
  br i1 %cmp291, label %if.then.317, label %lor.lhs.false.293

lor.lhs.false.293:                                ; preds = %lor.lhs.false.289
  %st_nlink294 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 2
  %135 = load i64, i64* %st_nlink294, align 8, !tbaa !31
  %cmp295 = icmp ne i64 %135, 1
  br i1 %cmp295, label %if.then.317, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %lor.lhs.false.293
  %st_mode298 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 3
  %136 = load i32, i32* %st_mode298, align 4, !tbaa !32
  %and299 = and i32 %136, 61440
  %cmp300 = icmp eq i32 %and299, 32768
  br i1 %cmp300, label %lor.lhs.false.302, label %if.then.317

lor.lhs.false.302:                                ; preds = %lor.lhs.false.297
  %st_dev303 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 0
  %137 = load i64, i64* %st_dev303, align 8, !tbaa !33
  %st_dev304 = getelementptr inbounds %struct.stat, %struct.stat* %fsb, i32 0, i32 0
  %138 = load i64, i64* %st_dev304, align 8, !tbaa !33
  %cmp305 = icmp ne i64 %137, %138
  br i1 %cmp305, label %if.then.317, label %lor.lhs.false.307

lor.lhs.false.307:                                ; preds = %lor.lhs.false.302
  %st_ino308 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 1
  %139 = load i64, i64* %st_ino308, align 8, !tbaa !34
  %st_ino309 = getelementptr inbounds %struct.stat, %struct.stat* %fsb, i32 0, i32 1
  %140 = load i64, i64* %st_ino309, align 8, !tbaa !34
  %cmp310 = icmp ne i64 %139, %140
  br i1 %cmp310, label %if.then.317, label %lor.lhs.false.312

lor.lhs.false.312:                                ; preds = %lor.lhs.false.307
  %st_uid313 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 4
  %141 = load i32, i32* %st_uid313, align 4, !tbaa !28
  %st_uid314 = getelementptr inbounds %struct.stat, %struct.stat* %fsb, i32 0, i32 4
  %142 = load i32, i32* %st_uid314, align 4, !tbaa !28
  %cmp315 = icmp ne i32 %141, %142
  br i1 %cmp315, label %if.then.317, label %if.end.323

if.then.317:                                      ; preds = %lor.lhs.false.312, %lor.lhs.false.307, %lor.lhs.false.302, %lor.lhs.false.297, %lor.lhs.false.293, %lor.lhs.false.289, %lor.lhs.false.285, %lor.lhs.false.281, %lor.lhs.false.278, %if.end.270
  %143 = load i32, i32* %mbfd, align 4, !tbaa !1
  %cmp318 = icmp sge i32 %143, 0
  br i1 %cmp318, label %if.then.320, label %if.end.322

if.then.320:                                      ; preds = %if.then.317
  %144 = load i32, i32* %mbfd, align 4, !tbaa !1
  %call321 = call i32 @close(i32 %144)
  store i32 -1, i32* %mbfd, align 4, !tbaa !1
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.320, %if.then.317
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %lor.lhs.false.312
  br label %err3

if.else.324:                                      ; preds = %if.end.260
  %arraydecay325 = getelementptr inbounds [100 x i8], [100 x i8]* %biffmsg, i32 0, i32 0
  call void @notifybiff(i8* %arraydecay325)
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.324
  %call327 = call i32 @setreuid(i32 0, i32 0) #1
  %cmp328 = icmp slt i32 %call327, 0
  br i1 %cmp328, label %if.then.330, label %if.end.333

if.then.330:                                      ; preds = %if.end.326
  %call331 = call i32* @__errno_location() #7
  %145 = load i32, i32* %call331, align 4, !tbaa !1
  %call332 = call i8* @sm_errstring(i32 %145)
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i32 0, i32 0), i8* %call332)
  br label %err0

if.end.333:                                       ; preds = %if.end.326
  call void @unlockmbox()
  %146 = load i32, i32* @LMTPMode, align 4, !tbaa !1
  %tobool334 = icmp ne i32 %146, 0
  br i1 %tobool334, label %if.then.335, label %if.end.337

if.then.335:                                      ; preds = %if.end.333
  %147 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %call336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i32 0, i32 0), i8* %147)
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.335, %if.end.333
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.338

cleanup.338:                                      ; preds = %if.end.337, %err0, %cleanup, %cond.end, %if.then.48, %if.then.39, %if.then.32, %if.end
  %148 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.end(i64 8712, i8* %148) #1
  %149 = bitcast [8192 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 8192, i8* %149) #1
  %150 = bitcast [100 x i8]* %biffmsg to i8*
  call void @llvm.lifetime.end(i64 100, i8* %150) #1
  %151 = bitcast i64* %cursize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i64* %curoff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i8** %errcode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i32* %exitval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %nr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %mbfd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast [4096 x i8]* %path to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %160) #1
  %161 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.end(i64 144, i8* %161) #1
  %162 = bitcast %struct.stat* %fsb to i8*
  call void @llvm.lifetime.end(i64 144, i8* %162) #1
  %cleanup.dest.353 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.353, label %unreachable [
    i32 0, label %cleanup.cont.354
    i32 1, label %cleanup.cont.354
  ]

cleanup.cont.354:                                 ; preds = %cleanup.338, %cleanup.338
  ret void

unreachable:                                      ; preds = %cleanup.338
  unreachable
}

; Function Attrs: nounwind uwtable
define i8* @parseaddr(i8* %s, i32 %rcpt) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %rcpt.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !5
  store i32 %rcpt, i32* %rcpt.addr, align 4, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !5
  %3 = load i8, i8* %2, align 1, !tbaa !7
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 60
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !tbaa !5
  store i8* %4, i8** %p, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end
  %5 = load i8*, i8** %p, align 8, !tbaa !5
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 64
  br i1 %cmp3, label %while.body, label %while.end.24

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr5 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr5, i8** %p, align 8, !tbaa !5
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.16, %while.body
  %8 = load i8*, i8** %p, align 8, !tbaa !5
  %9 = load i8, i8* %8, align 1, !tbaa !7
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp ne i32 %conv7, 44
  br i1 %cmp8, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.6
  %10 = load i8*, i8** %p, align 8, !tbaa !5
  %11 = load i8, i8* %10, align 1, !tbaa !7
  %conv10 = sext i8 %11 to i32
  %cmp11 = icmp ne i32 %conv10, 58
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %12 = load i8*, i8** %p, align 8, !tbaa !5
  %13 = load i8, i8* %12, align 1, !tbaa !7
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.6
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.6 ], [ %cmp14, %land.rhs ]
  br i1 %14, label %while.body.16, label %while.end

while.body.16:                                    ; preds = %land.end
  %15 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr17 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr17, i8** %p, align 8, !tbaa !5
  br label %while.cond.6

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %p, align 8, !tbaa !5
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %while.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %while.end
  %18 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr23 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8, !tbaa !5
  br label %while.cond

while.end.24:                                     ; preds = %while.cond
  %19 = load i8*, i8** %p, align 8, !tbaa !5
  store i8* %19, i8** %s.addr, align 8, !tbaa !5
  br label %while.cond.25

while.cond.25:                                    ; preds = %if.end.92, %while.end.24
  %20 = load i8*, i8** %p, align 8, !tbaa !5
  %21 = load i8, i8* %20, align 1, !tbaa !7
  %conv26 = sext i8 %21 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %land.lhs.true.29, label %land.end.37

land.lhs.true.29:                                 ; preds = %while.cond.25
  %22 = load i8*, i8** %p, align 8, !tbaa !5
  %23 = load i8, i8* %22, align 1, !tbaa !7
  %conv30 = sext i8 %23 to i32
  %cmp31 = icmp ne i32 %conv30, 64
  br i1 %cmp31, label %land.rhs.33, label %land.end.37

land.rhs.33:                                      ; preds = %land.lhs.true.29
  %24 = load i8*, i8** %p, align 8, !tbaa !5
  %25 = load i8, i8* %24, align 1, !tbaa !7
  %conv34 = sext i8 %25 to i32
  %cmp35 = icmp ne i32 %conv34, 62
  br label %land.end.37

land.end.37:                                      ; preds = %land.rhs.33, %land.lhs.true.29, %while.cond.25
  %26 = phi i1 [ false, %land.lhs.true.29 ], [ false, %while.cond.25 ], [ %cmp35, %land.rhs.33 ]
  br i1 %26, label %while.body.38, label %while.end.94

while.body.38:                                    ; preds = %land.end.37
  %27 = load i8*, i8** %p, align 8, !tbaa !5
  %28 = load i8, i8* %27, align 1, !tbaa !7
  %conv39 = sext i8 %28 to i32
  %cmp40 = icmp eq i32 %conv39, 92
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %while.body.38
  %29 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr43 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr43, i8** %p, align 8, !tbaa !5
  %30 = load i8, i8* %incdec.ptr43, align 1, !tbaa !7
  %conv44 = sext i8 %30 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.42
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.then.42
  br label %if.end.86

if.else:                                          ; preds = %while.body.38
  %31 = load i8*, i8** %p, align 8, !tbaa !5
  %32 = load i8, i8* %31, align 1, !tbaa !7
  %conv49 = sext i8 %32 to i32
  %cmp50 = icmp eq i32 %conv49, 34
  br i1 %cmp50, label %if.then.52, label %if.end.85

if.then.52:                                       ; preds = %if.else
  %33 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr53 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr53, i8** %p, align 8, !tbaa !5
  br label %while.cond.54

while.cond.54:                                    ; preds = %if.end.74, %if.then.52
  %34 = load i8*, i8** %p, align 8, !tbaa !5
  %35 = load i8, i8* %34, align 1, !tbaa !7
  %conv55 = sext i8 %35 to i32
  %cmp56 = icmp ne i32 %conv55, 0
  br i1 %cmp56, label %land.rhs.58, label %land.end.62

land.rhs.58:                                      ; preds = %while.cond.54
  %36 = load i8*, i8** %p, align 8, !tbaa !5
  %37 = load i8, i8* %36, align 1, !tbaa !7
  %conv59 = sext i8 %37 to i32
  %cmp60 = icmp ne i32 %conv59, 34
  br label %land.end.62

land.end.62:                                      ; preds = %land.rhs.58, %while.cond.54
  %38 = phi i1 [ false, %while.cond.54 ], [ %cmp60, %land.rhs.58 ]
  br i1 %38, label %while.body.63, label %while.end.76

while.body.63:                                    ; preds = %land.end.62
  %39 = load i8*, i8** %p, align 8, !tbaa !5
  %40 = load i8, i8* %39, align 1, !tbaa !7
  %conv64 = sext i8 %40 to i32
  %cmp65 = icmp eq i32 %conv64, 92
  br i1 %cmp65, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %while.body.63
  %41 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr68 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr68, i8** %p, align 8, !tbaa !5
  %42 = load i8, i8* %incdec.ptr68, align 1, !tbaa !7
  %conv69 = sext i8 %42 to i32
  %cmp70 = icmp eq i32 %conv69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.67
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.then.67
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %while.body.63
  %43 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr75 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr75, i8** %p, align 8, !tbaa !5
  br label %while.cond.54

while.end.76:                                     ; preds = %land.end.62
  %44 = load i8*, i8** %p, align 8, !tbaa !5
  %45 = load i8, i8* %44, align 1, !tbaa !7
  %conv77 = sext i8 %45 to i32
  %cmp78 = icmp eq i32 %conv77, 0
  br i1 %cmp78, label %if.then.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.76
  %46 = load i8*, i8** %p, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %add.ptr, align 1, !tbaa !7
  %conv80 = sext i8 %47 to i32
  %cmp81 = icmp eq i32 %conv80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false, %while.end.76
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %lor.lhs.false
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.48
  %48 = load i8*, i8** %p, align 8, !tbaa !5
  %49 = load i8, i8* %48, align 1, !tbaa !7
  %conv87 = sext i8 %49 to i32
  %cmp88 = icmp eq i32 %conv87, 43
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.92

land.lhs.true.90:                                 ; preds = %if.end.86
  %50 = load i32, i32* %rcpt.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %land.lhs.true.90
  %51 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %51, align 1, !tbaa !7
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %land.lhs.true.90, %if.end.86
  %52 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr93 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr93, i8** %p, align 8, !tbaa !5
  br label %while.cond.25

while.end.94:                                     ; preds = %land.end.37
  %53 = load i8*, i8** %p, align 8, !tbaa !5
  %54 = load i8, i8* %53, align 1, !tbaa !7
  %conv95 = sext i8 %54 to i32
  %cmp96 = icmp eq i32 %conv95, 64
  br i1 %cmp96, label %if.then.98, label %if.end.115

if.then.98:                                       ; preds = %while.end.94
  %55 = load i32, i32* %rcpt.addr, align 4, !tbaa !1
  %tobool99 = icmp ne i32 %55, 0
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.then.98
  %56 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr101 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr101, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %56, align 1, !tbaa !7
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.then.98
  br label %while.cond.103

while.cond.103:                                   ; preds = %while.body.112, %if.end.102
  %57 = load i8*, i8** %p, align 8, !tbaa !5
  %58 = load i8, i8* %57, align 1, !tbaa !7
  %conv104 = sext i8 %58 to i32
  %cmp105 = icmp ne i32 %conv104, 0
  br i1 %cmp105, label %land.rhs.107, label %land.end.111

land.rhs.107:                                     ; preds = %while.cond.103
  %59 = load i8*, i8** %p, align 8, !tbaa !5
  %60 = load i8, i8* %59, align 1, !tbaa !7
  %conv108 = sext i8 %60 to i32
  %cmp109 = icmp ne i32 %conv108, 62
  br label %land.end.111

land.end.111:                                     ; preds = %land.rhs.107, %while.cond.103
  %61 = phi i1 [ false, %while.cond.103 ], [ %cmp109, %land.rhs.107 ]
  br i1 %61, label %while.body.112, label %while.end.114

while.body.112:                                   ; preds = %land.end.111
  %62 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr113 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr113, i8** %p, align 8, !tbaa !5
  br label %while.cond.103

while.end.114:                                    ; preds = %land.end.111
  br label %if.end.115

if.end.115:                                       ; preds = %while.end.114, %while.end.94
  %63 = load i8*, i8** %p, align 8, !tbaa !5
  %64 = load i8, i8* %63, align 1, !tbaa !7
  %conv116 = sext i8 %64 to i32
  %cmp117 = icmp ne i32 %conv116, 62
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.end.115
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.120:                                      ; preds = %if.end.115
  %65 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %65, align 1, !tbaa !7
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120
  %66 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr122 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr122, i8** %p, align 8, !tbaa !5
  %67 = load i8*, i8** %p, align 8, !tbaa !5
  %68 = load i8, i8* %67, align 1, !tbaa !7
  %conv123 = sext i8 %68 to i32
  %cmp124 = icmp ne i32 %conv123, 0
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.131

land.lhs.true.126:                                ; preds = %if.end.121
  %69 = load i8*, i8** %p, align 8, !tbaa !5
  %70 = load i8, i8* %69, align 1, !tbaa !7
  %conv127 = sext i8 %70 to i32
  %cmp128 = icmp ne i32 %conv127, 32
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %land.lhs.true.126
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.131:                                       ; preds = %land.lhs.true.126, %if.end.121
  %71 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %72 = load i8, i8* %71, align 1, !tbaa !7
  %conv132 = sext i8 %72 to i32
  %cmp133 = icmp eq i32 %conv132, 0
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.131
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8** %s.addr, align 8, !tbaa !5
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.end.131
  %73 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %73) #8
  %add = add i64 %call, 1
  %conv137 = trunc i64 %add to i32
  store i32 %conv137, i32* %l, align 4, !tbaa !1
  %74 = load i32, i32* %l, align 4, !tbaa !1
  %cmp138 = icmp slt i32 %74, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.136
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.141:                                       ; preds = %if.end.136
  %75 = load i32, i32* %l, align 4, !tbaa !1
  %conv142 = sext i32 %75 to i64
  %call143 = call noalias i8* @malloc(i64 %conv142) #1
  store i8* %call143, i8** %p, align 8, !tbaa !5
  %76 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp144 = icmp eq i8* %76, null
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.141
  call void (i8*, i8*, ...) @mailerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  call void @sm_exit(i32 75)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.end.141
  %77 = load i8*, i8** %p, align 8, !tbaa !5
  %78 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %79 = load i32, i32* %l, align 4, !tbaa !1
  %conv148 = sext i32 %79 to i64
  %call149 = call i64 @sm_strlcpy(i8* %77, i8* %78, i64 %conv148)
  %80 = load i8*, i8** %p, align 8, !tbaa !5
  store i8* %80, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.147, %if.then.140, %if.then.130, %if.then.119, %if.then.83, %if.then.72, %if.then.47, %if.then.21, %if.then
  %81 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i8*, i8** %retval
  ret i8* %83
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define i8* @process_recipient(i8* %addr) #0 {
entry:
  %retval = alloca i8*, align 8
  %addr.addr = alloca i8*, align 8
  %user = alloca %struct.SM_MBDB_T, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %addr, i8** %addr.addr, align 8, !tbaa !5
  %0 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.start(i64 8712, i8* %0) #1
  %1 = load i8*, i8** %addr.addr, align 8, !tbaa !5
  %call = call i32 @sm_mbdb_lookup(i8* %1, %struct.SM_MBDB_T* %user)
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 67, label %sw.bb.1
    i32 75, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.end(i64 8712, i8* %2) #1
  %3 = load i8*, i8** %retval
  ret i8* %3
}

declare i32 @sm_mbdb_lookup(i8*, %struct.SM_MBDB_T*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #3

declare i32 @printf(i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @sm_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare i32 @sm_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @mkstemp(i8*) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #3

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @fgetc(%struct._IO_FILE*) #2

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @endpwent() #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #2

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @lockmbox(i8* %path) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %statfailed = alloca i32, align 4
  %start = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %fd = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %now = alloca i64, align 8
  store i8* %path, i8** %path.addr, align 8, !tbaa !5
  %0 = bitcast i32* %statfailed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %statfailed, align 4, !tbaa !1
  %1 = bitcast i64* %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* @Locked, align 4, !tbaa !1
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %path.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %3) #8
  %add = add i64 %call, 6
  %cmp = icmp ugt i64 %add, 4096
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end.2:                                         ; preds = %if.end
  %4 = load i8*, i8** %path.addr, align 8, !tbaa !5
  %call3 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @LockName, i32 0, i32 0), i64 4096, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* %4)
  %call4 = call i64 @time(i64* %start) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %5 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start(i64 144, i8* %6) #1
  %7 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %call5 = call i64 @time(i64* %now) #1
  %8 = load i64, i64* %now, align 8, !tbaa !11
  %9 = load i64, i64* %start, align 8, !tbaa !11
  %add6 = add nsw i64 %9, 400
  %cmp7 = icmp sgt i64 %8, %add6
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.cond
  %call9 = call i32* @__errno_location() #7
  store i32 0, i32* %call9, align 4, !tbaa !1
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %for.cond
  %call11 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @LockName, i32 0, i32 0), i32 193, i32 0)
  store i32 %call11, i32* %fd, align 4, !tbaa !1
  %10 = load i32, i32* %fd, align 4, !tbaa !1
  %cmp12 = icmp sge i32 %10, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %11 = load i32, i32* %fd, align 4, !tbaa !1
  %call14 = call i64 @write(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i64 2)
  store i32 1, i32* @Locked, align 4, !tbaa !1
  %12 = load i32, i32* %fd, align 4, !tbaa !1
  %call15 = call i32 @close(i32 %12)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.10
  %call17 = call i32 @stat(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @LockName, i32 0, i32 0), %struct.stat* %st) #1
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.16
  %13 = load i32, i32* %statfailed, align 4, !tbaa !1
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %statfailed, align 4, !tbaa !1
  %cmp20 = icmp sgt i32 %13, 5
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.19
  %call22 = call i32* @__errno_location() #7
  store i32 0, i32* %call22, align 4, !tbaa !1
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.19
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.16
  store i32 0, i32* %statfailed, align 4, !tbaa !1
  %call25 = call i64 @time(i64* %now) #1
  %14 = load i64, i64* %now, align 8, !tbaa !11
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 13
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 0
  %15 = load i64, i64* %tv_sec, align 8, !tbaa !36
  %add26 = add nsw i64 %15, 300
  %cmp27 = icmp slt i64 %14, %add26
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  %call30 = call i32 @unlink(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @LockName, i32 0, i32 0)) #1
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.29
  %call33 = call i32* @__errno_location() #7
  %16 = load i32, i32* %call33, align 4, !tbaa !1
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.32, %if.then.28, %if.end.23, %if.then.21, %if.then.13, %if.then.8
  %17 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.end(i64 144, i8* %18) #1
  %19 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.38 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %call37 = call i32 @sleep(i32 5)
  br label %for.cond

cleanup.38:                                       ; preds = %cleanup, %if.then.1, %if.then
  %20 = bitcast i64* %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast i32* %statfailed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @e_to_sys(i32 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4, !tbaa !1
  %0 = load i32, i32* @ExitVal, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, 75
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @ExitVal, align 4, !tbaa !1
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %num.addr, align 4, !tbaa !1
  switch i32 %2, label %sw.default [
    i32 122, label %sw.bb
    i32 11, label %sw.bb.3
    i32 16, label %sw.bb.3
    i32 87, label %sw.bb.3
    i32 103, label %sw.bb.3
    i32 111, label %sw.bb.3
    i32 104, label %sw.bb.3
    i32 35, label %sw.bb.3
    i32 27, label %sw.bb.3
    i32 112, label %sw.bb.3
    i32 113, label %sw.bb.3
    i32 24, label %sw.bb.3
    i32 100, label %sw.bb.3
    i32 102, label %sw.bb.3
    i32 101, label %sw.bb.3
    i32 23, label %sw.bb.3
    i32 105, label %sw.bb.3
    i32 12, label %sw.bb.3
    i32 28, label %sw.bb.3
    i32 30, label %sw.bb.3
    i32 116, label %sw.bb.3
    i32 110, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load i32, i32* @BounceQuota, align 4, !tbaa !1
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %sw.bb
  store i32 69, i32* @ExitVal, align 4, !tbaa !1
  br label %sw.epilog

if.end.2:                                         ; preds = %sw.bb
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end.2
  store i32 75, i32* @ExitVal, align 4, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 69, i32* @ExitVal, align 4, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %if.then.1
  %4 = load i32, i32* @ExitVal, align 4, !tbaa !1
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i8* @sm_errstring(i32) #2

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) #3

; Function Attrs: nounwind
declare i32 @setreuid(i32, i32) #3

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @flock(i32, i32) #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare i64 @read(i32, i8*, i64) #2

declare i64 @write(i32, i8*, i64) #2

declare i32 @fsync(i32) #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #3

; Function Attrs: nounwind uwtable
define void @unlockmbox() #0 {
entry:
  %0 = load i32, i32* @Locked, align 4, !tbaa !1
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @unlink(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @LockName, i32 0, i32 0)) #1
  store i32 0, i32* @Locked, align 4, !tbaa !1
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

declare i32 @sleep(i32) #2

declare %struct.servent* @getservbyname(i8*, i8*) #2

declare %struct.hostent* @gethostbyname(i8*) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare i32 @sm_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

declare void @syslog(i32, i8*, ...) #2

declare void @sm_mbdb_terminate() #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 16}
!9 = !{!"passwd", !6, i64 0, !6, i64 8, !2, i64 16, !2, i64 20, !6, i64 24, !6, i64 32, !6, i64 40}
!10 = !{!9, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !3, i64 0}
!13 = !{!14, !2, i64 20}
!14 = !{!"hostent", !6, i64 0, !6, i64 8, !2, i64 16, !2, i64 20, !6, i64 24}
!15 = !{!14, !2, i64 16}
!16 = !{!17, !18, i64 0}
!17 = !{!"sockaddr_in", !18, i64 0, !18, i64 2, !19, i64 4, !3, i64 8}
!18 = !{!"short", !3, i64 0}
!19 = !{!"in_addr", !2, i64 0}
!20 = !{!14, !6, i64 24}
!21 = !{!22, !2, i64 16}
!22 = !{!"servent", !6, i64 0, !6, i64 8, !2, i64 16, !6, i64 24}
!23 = !{!17, !18, i64 2}
!24 = !{!18, !18, i64 0}
!25 = !{!26, !2, i64 4}
!26 = !{!"", !2, i64 0, !2, i64 4, !3, i64 8, !3, i64 264, !3, i64 520, !3, i64 4616}
!27 = !{!26, !2, i64 0}
!28 = !{!29, !2, i64 28}
!29 = !{!"stat", !12, i64 0, !12, i64 8, !12, i64 16, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !30, i64 72, !30, i64 88, !30, i64 104, !3, i64 120}
!30 = !{!"timespec", !12, i64 0, !12, i64 8}
!31 = !{!29, !12, i64 16}
!32 = !{!29, !2, i64 24}
!33 = !{!29, !12, i64 0}
!34 = !{!29, !12, i64 8}
!35 = !{!29, !12, i64 48}
!36 = !{!29, !12, i64 104}
