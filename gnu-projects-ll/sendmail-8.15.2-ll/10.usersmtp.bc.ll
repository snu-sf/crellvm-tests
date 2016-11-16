; ModuleID = '10.usersmtp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [3 x i64], [3 x i32] }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.address = type { i8*, i8*, i8*, i8*, %struct.mailer*, i64, i32, i32, i8*, i8*, %struct.address*, %struct.address*, i8*, %struct.address*, %struct.address*, i8*, i8*, i8*, i8*, i64, i8*, i16, i8*, i32, i32, i8* }
%struct.mailer = type { i8*, i8*, i8*, i8*, i8*, [8 x i32], i16, i16, i8**, i16, i16, i16, i16, i8*, i64, i32, i32, i8*, i8*, i32, i32, i8*, i64, i32, i16 }
%struct.MACROS_T = type { %struct.SM_RPOOL_T*, [8 x i32], [256 x i8*] }
%struct.mailer_con_info = type { i64, i16, i16, i16, i16, i32, i64, %struct.sm_file*, %struct.sm_file*, i32, i8*, %struct.mailer*, i8*, i8*, i8*, i64, %struct.sm_file*, i8*, i64, i32, i8*, %struct.SM_RPOOL_T*, i32, %struct.address*, %struct.MACROS_T }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%struct.SM_RPOOL_T = type { i8*, void (i8*)**, i64, i64, i8*, i64, %struct.sm_poollink*, %struct.sm_resource*, i64, %struct.sm_rlist* }
%struct.sm_poollink = type { %struct.sm_poollink* }
%struct.sm_resource = type { void (i8*)*, i8* }
%struct.sm_rlist = type { [511 x %struct.sm_resource], %struct.sm_rlist* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"smtpinit \00", align 1
@SmtpError = external global [2048 x i8], align 16
@SmtpMsgBuffer = internal global [2048 x i8] zeroinitializer, align 16
@CurHostName = external global i8*, align 8
@MyHostName = external global i8*, align 8
@SmtpNeedIntro = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"451 4.4.0 smtpinit: state CLOSED (was %d)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"client greeting\00", align 1
@SmtpPhase = external global i8*, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"%s %s: %s\00", align 1
@TimeOuts = external global %struct.anon, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"LHLO %s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"client LHLO\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"EHLO %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"client EHLO\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"HELO %s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"client HELO\00", align 1
@SmtpReplyBuffer = internal global [2048 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [63 x i8] c"553 5.3.5 %s config error: mail loops back to me (MX problem?)\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"5.3.5\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"553 5.3.5 system config error\00", align 1
@UseMSP = external global i32, align 4
@Verbose = external global i32, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"VERB\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"4.4.2\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"4.5.0\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"5.5.0\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"smtpmailfrom: CurHost=%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c" SIZE=%ld\00", align 1
@MimeMode = external global i32, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"8BITMIME\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c" BODY=%s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"5.6.3\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"%s does not support 8BITMIME\00", align 1
@MsgBuf = external global [0 x i8], align 1
@.str.23 = private unnamed_addr constant [10 x i8] c" ENVID=%s\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c" RET=%s\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"HDRS\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"FULL\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c" AUTH=%s\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c" BY=%ld;%c%s\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\81g\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"MAIL From:<%s>%s\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"MAIL From:<@%s%c%s>%s\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"client MAIL\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"5.5.2\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"5.1.3\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"5.3.4\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"5.0.0\00", align 1
@LogLevel = external global i32, align 4
@.str.39 = private unnamed_addr constant [37 x i8] c"%.100s: SMTP MAIL protocol error: %s\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"5.5.1\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c" NOTIFY=\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"FAILURE\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"DELAY\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"NEVER\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c" ORCPT=%s\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"RCPT To:<%s>%s\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"client RCPT\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"client DATA 354\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"%.100s: SMTP DATA-1 protocol error: %s\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@TrafficLogFile = external global %struct.sm_file*, align 8
@.str.54 = private unnamed_addr constant [12 x i8] c"%05d >>> .\0A\00", align 1
@CurrentPid = external global i32, align 4
@.str.55 = private unnamed_addr constant [6 x i8] c">>> .\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"client DATA status\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"%.100s: SMTP DATA-2 protocol error: %s\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"+451 4.4.1 timeout writing message to %s\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"%.100s: SMTP DATA-3 protocol error: %s\00", align 1
@SuprErrs = external global i32, align 4
@.str.62 = private unnamed_addr constant [11 x i8] c"smtpquit:1\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"client QUIT\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.65 = private unnamed_addr constant [47 x i8] c"smtpquit: mailer%s%s exited with exit value %d\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"client RSET\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"RSET\00", align 1
@BlankEnvelope = external global %struct.envelope, align 8
@.str.69 = private unnamed_addr constant [13 x i8] c"client probe\00", align 1
@reply.enhstatcode = internal global [10 x i8] zeroinitializer, align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"reply\0A\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"reply:1\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"reply:2\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"421 4.4.1 Connection reset by %s\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@HoldErrs = external global i32, align 4
@.str.75 = private unnamed_addr constant [36 x i8] c"451 4.4.1 reply: read error from %s\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"%s... \00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"reply(%.100s) during %s\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"EHLO\00", align 1
@CurEnv = external global %struct.envelope*, align 8
@.str.79 = private unnamed_addr constant [26 x i8] c"... while talking to %s:\0A\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c">>> %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"STARTTLS dialogue\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"AUTH dialogue\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"<<< %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"050 %s\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c">>> %s\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"%05d >>> %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"smtpmessage: NULL mci_out\0A\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"ESMTP\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"8BIT-OK\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"8bitmime\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"expn\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"dsn\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"enhancedstatuscodes\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"pipelining\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"deliverby\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"5.1.1\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"5.1.6\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"%.100s: SMTP RCPT protocol error: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @smtpinit(%struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e, i32 %onlyhelo) #0 {
entry:
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %onlyhelo.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %state = alloca i32, align 4
  %p = alloca i8*, align 8
  %hn = alloca i8*, align 8
  %enhsc = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %onlyhelo, i32* %onlyhelo.addr, align 4, !tbaa !5
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %state to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %hn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* null, i8** %enhsc, align 8, !tbaa !1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 18), align 1, !tbaa !7
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %call = call %struct.sm_file* @sm_debug_file()
  %7 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_dump(%struct.sm_file* %call, %struct.mailer_con_info* %7, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i8 0, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpError, i32 0, i64 0), align 1, !tbaa !7
  store i8 0, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i64 0), align 1, !tbaa !7
  %8 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %8, i32 0, i32 12
  %9 = load i8*, i8** %mci_host, align 8, !tbaa !8
  store i8* %9, i8** @CurHostName, align 8, !tbaa !1
  %10 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %10, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  store i8* %11, i8** @CurHostName, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  store i32 1, i32* @SmtpNeedIntro, align 4, !tbaa !5
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %12, i32 0, i32 4
  %13 = load i16, i16* %mci_state, align 2, !tbaa !13
  %conv6 = sext i16 %13 to i32
  store i32 %conv6, i32* %state, align 4, !tbaa !5
  %14 = load i32, i32* %state, align 4, !tbaa !5
  switch i32 %14, label %sw.epilog [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 2, label %sw.bb.7
    i32 8, label %sw.bb.11
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.11
    i32 0, label %sw.bb.12
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end.5, %if.end.5, %if.end.5
  %15 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %16 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtprset(%struct.mailer* %15, %struct.mailer_con_info* %16, %struct.envelope* %17)
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %if.end.5, %sw.bb
  %18 = load i32, i32* %onlyhelo.addr, align 4, !tbaa !5
  %tobool8 = icmp ne i32 %18, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %sw.bb.7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %sw.bb.7
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end.5, %if.end.5, %if.end.5
  %19 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %20 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %19, %struct.mailer_con_info* %20, %struct.envelope* %21)
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %if.end.5, %sw.bb.11
  %22 = load i32, i32* %state, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i32 %22)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.5, %if.end.5, %if.end.10
  %23 = load i32, i32* %onlyhelo.addr, align 4, !tbaa !5
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.epilog
  br label %helo

if.end.15:                                        ; preds = %sw.epilog
  %24 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state16 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %24, i32 0, i32 4
  store i16 1, i16* %mci_state16, align 2, !tbaa !13
  %25 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @clrsessenvelope(%struct.envelope* %25)
  %26 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %26, i32 0, i32 10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8** %mci_phase, align 8, !tbaa !14
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call17 = call i8* @qid_printname(%struct.envelope* %28)
  %29 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %30 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase18 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %30, i32 0, i32 10
  %31 = load i8*, i8** %mci_phase18, align 8, !tbaa !14
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %call17, i8* %29, i8* %31)
  %32 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %33 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %34 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %35 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 0), align 8, !tbaa !15
  %call19 = call i32 @reply(%struct.mailer* %32, %struct.mailer_con_info* %33, %struct.envelope* %34, i64 %35, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* @esmtp_check, i8** null, i32 3)
  store i32 %call19, i32* %r, align 4, !tbaa !5
  %36 = load i32, i32* %r, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %36, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  br label %tempfail1

if.end.23:                                        ; preds = %if.end.15
  %37 = load i32, i32* %r, align 4, !tbaa !5
  %div = sdiv i32 %37, 100
  %cmp24 = icmp eq i32 %div, 4
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  br label %tempfail2

if.end.27:                                        ; preds = %if.end.23
  %38 = load i32, i32* %r, align 4, !tbaa !5
  %div28 = sdiv i32 %38, 100
  %cmp29 = icmp ne i32 %div28, 2
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  br label %unavailable

if.end.32:                                        ; preds = %if.end.27
  br label %helo

helo:                                             ; preds = %if.end.32, %if.then.14
  %39 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %39, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %40 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %and = and i32 %40, 2
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %helo
  %41 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags34 = getelementptr inbounds %struct.mailer, %struct.mailer* %41, i32 0, i32 5
  %arrayidx35 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags34, i32 0, i64 3
  %42 = load i32, i32* %arrayidx35, align 4, !tbaa !5
  %and36 = and i32 %42, 67108864
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %helo
  %43 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %43, i32 0, i32 0
  %44 = load i64, i64* %mci_flags, align 8, !tbaa !17
  %or = or i64 %44, 8
  store i64 %or, i64* %mci_flags, align 8, !tbaa !17
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %lor.lhs.false
  %45 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_heloname = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %45, i32 0, i32 17
  %46 = load i8*, i8** %mci_heloname, align 8, !tbaa !18
  %tobool40 = icmp ne i8* %46, null
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.39
  %47 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_heloname41 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %47, i32 0, i32 17
  %48 = load i8*, i8** %mci_heloname41, align 8, !tbaa !18
  br label %cond.end

cond.false:                                       ; preds = %if.end.39
  %49 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %48, %cond.true ], [ %49, %cond.false ]
  store i8* %cond, i8** %hn, align 8, !tbaa !1
  br label %tryhelo

tryhelo:                                          ; preds = %if.then.91, %cond.end
  %50 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags42 = getelementptr inbounds %struct.mailer, %struct.mailer* %50, i32 0, i32 5
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags42, i32 0, i64 3
  %51 = load i32, i32* %arrayidx43, align 4, !tbaa !5
  %and44 = and i32 %51, 67108864
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %tryhelo
  %52 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %53 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %hn, align 8, !tbaa !1
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.mailer* %52, %struct.mailer_con_info* %53, i8* %54)
  %55 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase47 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %55, i32 0, i32 10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8** %mci_phase47, align 8, !tbaa !14
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  br label %if.end.62

if.else:                                          ; preds = %tryhelo
  %56 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags48 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %56, i32 0, i32 0
  %57 = load i64, i64* %mci_flags48, align 8, !tbaa !17
  %and49 = and i64 %57, 8
  %cmp50 = icmp ne i64 %and49, 0
  br i1 %cmp50, label %land.lhs.true.52, label %if.else.59

land.lhs.true.52:                                 ; preds = %if.else
  %58 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags53 = getelementptr inbounds %struct.mailer, %struct.mailer* %58, i32 0, i32 5
  %arrayidx54 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags53, i32 0, i64 1
  %59 = load i32, i32* %arrayidx54, align 4, !tbaa !5
  %and55 = and i32 %59, 262144
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.else.59, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true.52
  %60 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %61 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %62 = load i8*, i8** %hn, align 8, !tbaa !1
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct.mailer* %60, %struct.mailer_con_info* %61, i8* %62)
  %63 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase58 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %63, i32 0, i32 10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8** %mci_phase58, align 8, !tbaa !14
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  br label %if.end.61

if.else.59:                                       ; preds = %land.lhs.true.52, %if.else
  %64 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %65 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %66 = load i8*, i8** %hn, align 8, !tbaa !1
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct.mailer* %64, %struct.mailer_con_info* %65, i8* %66)
  %67 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase60 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %67, i32 0, i32 10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8** %mci_phase60, align 8, !tbaa !14
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.57
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.46
  %68 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %69 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call63 = call i8* @qid_printname(%struct.envelope* %69)
  %70 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %71 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase64 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %71, i32 0, i32 10
  %72 = load i8*, i8** %mci_phase64, align 8, !tbaa !14
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %call63, i8* %70, i8* %72)
  %73 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %74 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %75 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %76 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags65 = getelementptr inbounds %struct.mailer, %struct.mailer* %76, i32 0, i32 5
  %arrayidx66 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags65, i32 0, i64 3
  %77 = load i32, i32* %arrayidx66, align 4, !tbaa !5
  %and67 = and i32 %77, 67108864
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %if.end.62
  %78 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 17), align 8, !tbaa !19
  br label %cond.end.71

cond.false.70:                                    ; preds = %if.end.62
  %79 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 11), align 8, !tbaa !20
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.69
  %cond72 = phi i64 [ %78, %cond.true.69 ], [ %79, %cond.false.70 ]
  %call73 = call i32 @reply(%struct.mailer* %73, %struct.mailer_con_info* %74, %struct.envelope* %75, i64 %cond72, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* @helo_options, i8** null, i32 4)
  store i32 %call73, i32* %r, align 4, !tbaa !5
  %80 = load i32, i32* %r, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %80, 0
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %cond.end.71
  br label %tempfail1

if.else.77:                                       ; preds = %cond.end.71
  %81 = load i32, i32* %r, align 4, !tbaa !5
  %div78 = sdiv i32 %81, 100
  %cmp79 = icmp eq i32 %div78, 5
  br i1 %cmp79, label %if.then.81, label %if.else.95

if.then.81:                                       ; preds = %if.else.77
  %82 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags82 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %82, i32 0, i32 0
  %83 = load i64, i64* %mci_flags82, align 8, !tbaa !17
  %and83 = and i64 %83, 8
  %cmp84 = icmp ne i64 %and83, 0
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.94

land.lhs.true.86:                                 ; preds = %if.then.81
  %84 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags87 = getelementptr inbounds %struct.mailer, %struct.mailer* %84, i32 0, i32 5
  %arrayidx88 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags87, i32 0, i64 3
  %85 = load i32, i32* %arrayidx88, align 4, !tbaa !5
  %and89 = and i32 %85, 67108864
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.end.94, label %if.then.91

if.then.91:                                       ; preds = %land.lhs.true.86
  %86 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags92 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %86, i32 0, i32 0
  %87 = load i64, i64* %mci_flags92, align 8, !tbaa !17
  %and93 = and i64 %87, -9
  store i64 %and93, i64* %mci_flags92, align 8, !tbaa !17
  br label %tryhelo

if.end.94:                                        ; preds = %land.lhs.true.86, %if.then.81
  br label %unavailable

if.else.95:                                       ; preds = %if.else.77
  %88 = load i32, i32* %r, align 4, !tbaa !5
  %div96 = sdiv i32 %88, 100
  %cmp97 = icmp ne i32 %div96, 2
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.else.95
  br label %tempfail2

if.end.100:                                       ; preds = %if.else.95
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101
  %call103 = call i8* @strchr(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i64 4), i32 32) #1
  store i8* %call103, i8** %p, align 8, !tbaa !1
  %89 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp104 = icmp ne i8* %89, null
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.102
  %90 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %90, align 1, !tbaa !7
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.102
  %91 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags108 = getelementptr inbounds %struct.mailer, %struct.mailer* %91, i32 0, i32 5
  %arrayidx109 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags108, i32 0, i64 3
  %92 = load i32, i32* %arrayidx109, align 4, !tbaa !5
  %and110 = and i32 %92, 2048
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.end.122, label %land.lhs.true.112

land.lhs.true.112:                                ; preds = %if.end.107
  %93 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags113 = getelementptr inbounds %struct.mailer, %struct.mailer* %93, i32 0, i32 5
  %arrayidx114 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags113, i32 0, i64 3
  %94 = load i32, i32* %arrayidx114, align 4, !tbaa !5
  %and115 = and i32 %94, 67108864
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.end.122, label %land.lhs.true.117

land.lhs.true.117:                                ; preds = %land.lhs.true.112
  %95 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %call118 = call i32 @sm_strcasecmp(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i64 4), i8* %95)
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %land.lhs.true.117
  %96 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i32 0, i32 0), i8* %96)
  %97 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %97, i32 78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  %98 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %98, i32 0, i32 1
  store i16 0, i16* %mci_errno, align 2, !tbaa !21
  %99 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %100 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %101 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %99, %struct.mailer_con_info* %100, %struct.envelope* %101)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.122:                                       ; preds = %land.lhs.true.117, %land.lhs.true.112, %if.end.107
  %102 = load i32, i32* @UseMSP, align 4, !tbaa !5
  %tobool123 = icmp ne i32 %102, 0
  br i1 %tobool123, label %land.lhs.true.124, label %lor.lhs.false.131

land.lhs.true.124:                                ; preds = %if.end.122
  %103 = load i32, i32* @Verbose, align 4, !tbaa !5
  %tobool125 = icmp ne i32 %103, 0
  br i1 %tobool125, label %land.lhs.true.126, label %lor.lhs.false.131

land.lhs.true.126:                                ; preds = %land.lhs.true.124
  %104 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags127 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %104, i32 0, i32 0
  %105 = load i64, i64* %mci_flags127, align 8, !tbaa !17
  %and128 = and i64 %105, 524288
  %cmp129 = icmp ne i64 %and128, 0
  br i1 %cmp129, label %if.then.136, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %land.lhs.true.126, %land.lhs.true.124, %if.end.122
  %106 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags132 = getelementptr inbounds %struct.mailer, %struct.mailer* %106, i32 0, i32 5
  %arrayidx133 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags132, i32 0, i64 2
  %107 = load i32, i32* %arrayidx133, align 4, !tbaa !5
  %and134 = and i32 %107, 512
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.142

if.then.136:                                      ; preds = %lor.lhs.false.131, %land.lhs.true.126
  %108 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %109 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct.mailer* %108, %struct.mailer_con_info* %109)
  %110 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %111 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %112 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %113 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 13), align 8, !tbaa !22
  %call137 = call i32 @reply(%struct.mailer* %110, %struct.mailer_con_info* %111, %struct.envelope* %112, i64 %113, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* null, i8** %enhsc, i32 0)
  store i32 %call137, i32* %r, align 4, !tbaa !5
  %114 = load i32, i32* %r, align 4, !tbaa !5
  %cmp138 = icmp slt i32 %114, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.then.136
  br label %tempfail1

if.end.141:                                       ; preds = %if.then.136
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %lor.lhs.false.131
  %115 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state143 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %115, i32 0, i32 4
  %116 = load i16, i16* %mci_state143, align 2, !tbaa !13
  %conv144 = sext i16 %116 to i32
  %cmp145 = icmp ne i32 %conv144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.end.142
  %117 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state148 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %117, i32 0, i32 4
  store i16 2, i16* %mci_state148, align 2, !tbaa !13
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.149:                                       ; preds = %if.end.142
  br label %tempfail1

tempfail1:                                        ; preds = %if.end.149, %if.then.140, %if.then.76, %if.then.22
  %118 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %119 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp150 = icmp eq i8* %119, null
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %tempfail1
  br label %cond.end.154

cond.false.153:                                   ; preds = %tempfail1
  %120 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.153, %cond.true.152
  %cond155 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), %cond.true.152 ], [ %120, %cond.false.153 ]
  call void @mci_setstat(%struct.mailer_con_info* %118, i32 75, i8* %cond155, i8* null)
  %121 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state156 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %121, i32 0, i32 4
  %122 = load i16, i16* %mci_state156, align 2, !tbaa !13
  %conv157 = sext i16 %122 to i32
  %cmp158 = icmp ne i32 %conv157, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %cond.end.154
  %123 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %124 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %125 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %123, %struct.mailer_con_info* %124, %struct.envelope* %125)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %cond.end.154
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

tempfail2:                                        ; preds = %if.then.99, %if.then.26
  %126 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %127 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp162 = icmp eq i8* %127, null
  br i1 %cmp162, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %tempfail2
  br label %cond.end.166

cond.false.165:                                   ; preds = %tempfail2
  %128 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.165, %cond.true.164
  %cond167 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %cond.true.164 ], [ %128, %cond.false.165 ]
  call void @mci_setstat(%struct.mailer_con_info* %126, i32 75, i8* %cond167, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  %129 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state168 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %129, i32 0, i32 4
  %130 = load i16, i16* %mci_state168, align 2, !tbaa !13
  %conv169 = sext i16 %130 to i32
  %cmp170 = icmp ne i32 %conv169, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %cond.end.166
  %131 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %132 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %133 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %131, %struct.mailer_con_info* %132, %struct.envelope* %133)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %cond.end.166
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

unavailable:                                      ; preds = %if.end.94, %if.then.31
  %134 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %134, i32 69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  %135 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %136 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %137 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %135, %struct.mailer_con_info* %136, %struct.envelope* %137)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %unavailable, %if.end.173, %if.end.161, %if.then.147, %if.then.121, %sw.bb.12, %if.then.9
  %138 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i8** %hn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i32* %state to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @sm_dprintf(i8*, ...) #2

declare void @mci_dump(%struct.sm_file*, %struct.mailer_con_info*, i32) #2

declare %struct.sm_file* @sm_debug_file() #2

; Function Attrs: nounwind uwtable
define void @smtprset(%struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e) #0 {
entry:
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %1, i32 0, i32 12
  %2 = load i8*, i8** %mci_host, align 8, !tbaa !8
  store i8* %2, i8** @CurHostName, align 8, !tbaa !1
  %3 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  store i8* %4, i8** @CurHostName, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_okrcpts = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %5, i32 0, i32 22
  store i32 0, i32* %mci_okrcpts, align 4, !tbaa !23
  %6 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %6, i32 0, i32 4
  %7 = load i16, i16* %mci_state, align 2, !tbaa !13
  %conv = sext i16 %7 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %8, i32 0, i32 1
  %9 = load i16, i16* %mci_errno, align 2, !tbaa !21
  %conv4 = sext i16 %9 to i32
  %call = call i32* @__errno_location() #8
  store i32 %conv4, i32* %call, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %10 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %struct.mailer* %10, %struct.mailer_con_info* %11)
  %12 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %13 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %15 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 10), align 8, !tbaa !24
  %call6 = call i32 @reply(%struct.mailer* %12, %struct.mailer_con_info* %13, %struct.envelope* %14, i64 %15, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* null, i8** null, i32 0)
  store i32 %call6, i32* %r, align 4, !tbaa !5
  %16 = load i32, i32* %r, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %16, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  %17 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state11 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %17, i32 0, i32 4
  %18 = load i16, i16* %mci_state11, align 2, !tbaa !13
  %conv12 = sext i16 %18 to i32
  %cmp13 = icmp ne i32 %conv12, 7
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.10
  %19 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state15 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %19, i32 0, i32 4
  %20 = load i16, i16* %mci_state15, align 2, !tbaa !13
  %conv16 = sext i16 %20 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state20 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %21, i32 0, i32 4
  store i16 2, i16* %mci_state20, align 2, !tbaa !13
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true, %if.end.10
  %22 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_exitstat = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %22, i32 0, i32 3
  %23 = load i16, i16* %mci_exitstat, align 2, !tbaa !25
  %conv21 = sext i16 %23 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %24 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %24, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* null)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.9, %if.then.3
  %25 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
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

; Function Attrs: nounwind uwtable
define void @smtpquit(%struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e) #0 {
entry:
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %oldSuprErrs = alloca i32, align 4
  %rcode = alloca i32, align 4
  %oldcurhost = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %mailer = alloca i8*, align 8
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %oldSuprErrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* @SuprErrs, align 4, !tbaa !5
  store i32 %1, i32* %oldSuprErrs, align 4, !tbaa !5
  %2 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %oldcurhost to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %4, i32 0, i32 4
  %5 = load i16, i16* %mci_state, align 2, !tbaa !13
  %conv = sext i16 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_close(%struct.mailer_con_info* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  store i8* %7, i8** %oldcurhost, align 8, !tbaa !1
  %8 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %8, i32 0, i32 12
  %9 = load i8*, i8** %mci_host, align 8, !tbaa !8
  store i8* %9, i8** @CurHostName, align 8, !tbaa !1
  %10 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %10, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  store i8* %11, i8** @CurHostName, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_okrcpts = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %12, i32 0, i32 22
  store i32 0, i32* %mci_okrcpts, align 4, !tbaa !23
  store i32 1, i32* @SuprErrs, align 4, !tbaa !5
  %13 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state6 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %13, i32 0, i32 4
  %14 = load i16, i16* %mci_state6, align 2, !tbaa !13
  %conv7 = sext i16 %14 to i32
  %cmp8 = icmp ne i32 %conv7, 8
  br i1 %cmp8, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.5
  %15 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state10 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %15, i32 0, i32 4
  %16 = load i16, i16* %mci_state10, align 2, !tbaa !13
  %conv11 = sext i16 %16 to i32
  %cmp12 = icmp ne i32 %conv11, 6
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %17 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state15 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %17, i32 0, i32 4
  store i16 6, i16* %mci_state15, align 2, !tbaa !13
  %18 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %19 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), %struct.mailer* %18, %struct.mailer_con_info* %19)
  %20 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %23 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 12), align 8, !tbaa !26
  %call = call i32 @reply(%struct.mailer* %20, %struct.mailer_con_info* %21, %struct.envelope* %22, i64 %23, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* null, i8** null, i32 10)
  %24 = load i32, i32* %oldSuprErrs, align 4, !tbaa !5
  store i32 %24, i32* @SuprErrs, align 4, !tbaa !5
  %25 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state16 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %25, i32 0, i32 4
  %26 = load i16, i16* %mci_state16, align 2, !tbaa !13
  %conv17 = sext i16 %26 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.14
  br label %end

if.end.21:                                        ; preds = %if.then.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true, %if.end.5
  %27 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call23 = call i32 @endmailer(%struct.mailer_con_info* %27, %struct.envelope* %28, i8** null)
  store i32 %call23, i32* %rcode, align 4, !tbaa !5
  %29 = load i32, i32* %rcode, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %29, 0
  br i1 %cmp24, label %if.then.26, label %if.end.42

if.then.26:                                       ; preds = %if.end.22
  %30 = bitcast i8** %mailer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i8* null, i8** %mailer, align 8, !tbaa !1
  %31 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %31, i32 0, i32 11
  %32 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !27
  %cmp27 = icmp ne %struct.mailer* %32, null
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.36

land.lhs.true.29:                                 ; preds = %if.then.26
  %33 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer30 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %33, i32 0, i32 11
  %34 = load %struct.mailer*, %struct.mailer** %mci_mailer30, align 8, !tbaa !27
  %m_name = getelementptr inbounds %struct.mailer, %struct.mailer* %34, i32 0, i32 0
  %35 = load i8*, i8** %m_name, align 8, !tbaa !28
  %cmp31 = icmp ne i8* %35, null
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %land.lhs.true.29
  %36 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer34 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %36, i32 0, i32 11
  %37 = load %struct.mailer*, %struct.mailer** %mci_mailer34, align 8, !tbaa !27
  %m_name35 = getelementptr inbounds %struct.mailer, %struct.mailer* %37, i32 0, i32 0
  %38 = load i8*, i8** %m_name35, align 8, !tbaa !28
  store i8* %38, i8** %mailer, align 8, !tbaa !1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %land.lhs.true.29, %if.then.26
  %39 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 25
  %40 = load i8*, i8** %e_id, align 8, !tbaa !30
  %41 = load i8*, i8** %mailer, align 8, !tbaa !1
  %cmp37 = icmp eq i8* %41, null
  %cond = select i1 %cmp37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0)
  %42 = load i8*, i8** %mailer, align 8, !tbaa !1
  %cmp39 = icmp eq i8* %42, null
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.36
  br label %cond.end

cond.false:                                       ; preds = %if.end.36
  %43 = load i8*, i8** %mailer, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond41 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0), %cond.true ], [ %43, %cond.false ]
  %44 = load i32, i32* %rcode, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.65, i32 0, i32 0), i8* %cond, i8* %cond41, i32 %44)
  %45 = bitcast i8** %mailer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  br label %if.end.42

if.end.42:                                        ; preds = %cond.end, %if.end.22
  %46 = load i32, i32* %oldSuprErrs, align 4, !tbaa !5
  store i32 %46, i32* @SuprErrs, align 4, !tbaa !5
  br label %end

end:                                              ; preds = %if.end.42, %if.then.20
  %47 = load i8*, i8** %oldcurhost, align 8, !tbaa !1
  store i8* %47, i8** @CurHostName, align 8, !tbaa !1
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then
  %48 = bitcast i8** %oldcurhost to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %oldSuprErrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  ret void
}

declare void @syserr(i8*, ...) #2

declare void @clrsessenvelope(%struct.envelope*) #2

declare void @sm_setproctitle(i32, %struct.envelope*, i8*, ...) #2

declare i8* @qid_printname(%struct.envelope*) #2

; Function Attrs: nounwind uwtable
define i32 @reply(%struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e, i64 %timeout, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* %pfunc, i8** %enhstat, i32 %rtype) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %timeout.addr = alloca i64, align 8
  %pfunc.addr = alloca void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)*, align 8
  %enhstat.addr = alloca i8**, align 8
  %rtype.addr = alloca i32, align 4
  %bufp = alloca i8*, align 8
  %r = alloca i32, align 4
  %firstline = alloca i32, align 4
  %junkbuf = alloca [2048 x i8], align 16
  %save_errno = alloca i32, align 4
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %oldholderrs = alloca i32, align 4
  %wbuf = alloca [2048 x i8], align 16
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i64 %timeout, i64* %timeout.addr, align 8, !tbaa !35
  store void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* %pfunc, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)** %pfunc.addr, align 8, !tbaa !1
  store i8** %enhstat, i8*** %enhstat.addr, align 8, !tbaa !1
  store i32 %rtype, i32* %rtype.addr, align 4, !tbaa !5
  %0 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %firstline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %firstline, align 4, !tbaa !5
  %3 = bitcast [2048 x i8]* %junkbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %3) #1
  %4 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %5, i32 0, i32 8
  %6 = load %struct.sm_file*, %struct.sm_file** %mci_out, align 8, !tbaa !36
  %cmp = icmp ne %struct.sm_file* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out1 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %7, i32 0, i32 8
  %8 = load %struct.sm_file*, %struct.sm_file** %mci_out1, align 8, !tbaa !36
  %call = call i32 @sm_io_flush(%struct.sm_file* %8, i32 -2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 18), align 1, !tbaa !7
  %conv = zext i8 %9 to i32
  %cmp2 = icmp sge i32 %conv, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %10 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0), i8** %bufp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %cleanup.247, %if.end.5
  %11 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 32
  %13 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !37
  %cmp6 = icmp ne %struct.sm_file* %13, null
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %for.cond
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp9 = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 32
  %15 = load %struct.sm_file*, %struct.sm_file** %e_xfp9, align 8, !tbaa !37
  %call10 = call i32 @sm_io_flush(%struct.sm_file* %15, i32 -2)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %for.cond
  %16 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %16, i32 0, i32 4
  %17 = load i16, i16* %mci_state, align 2, !tbaa !13
  %conv12 = sext i16 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 421, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.16:                                        ; preds = %if.end.11
  %18 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_in = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %18, i32 0, i32 7
  %19 = load %struct.sm_file*, %struct.sm_file** %mci_in, align 8, !tbaa !38
  %cmp17 = icmp eq %struct.sm_file* %19, null
  br i1 %cmp17, label %if.then.19, label %if.end.38

if.then.19:                                       ; preds = %if.end.16
  %20 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %20, i32 0, i32 1
  %21 = load i16, i16* %mci_errno, align 2, !tbaa !21
  %conv20 = sext i16 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.19
  %22 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno24 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %22, i32 0, i32 1
  store i16 9, i16* %mci_errno24, align 2, !tbaa !21
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.19
  %call26 = call i32 @strncmp(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i64 4) #9
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.end.25
  %23 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno30 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %23, i32 0, i32 1
  %24 = load i16, i16* %mci_errno30, align 2, !tbaa !21
  %conv31 = sext i16 %24 to i32
  %call32 = call i32* @__errno_location() #8
  store i32 %conv31, i32* %call32, align 4, !tbaa !5
  %25 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_close(%struct.mailer_con_info* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0))
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.33:                                        ; preds = %if.end.25
  %26 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state34 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %26, i32 0, i32 4
  store i16 8, i16* %mci_state34, align 2, !tbaa !13
  %27 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %28 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %27, %struct.mailer_con_info* %28, %struct.envelope* %29)
  %30 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno35 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %30, i32 0, i32 1
  %31 = load i16, i16* %mci_errno35, align 2, !tbaa !21
  %conv36 = sext i16 %31 to i32
  %call37 = call i32* @__errno_location() #8
  store i32 %conv36, i32* %call37, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.38:                                        ; preds = %if.end.16
  %32 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out39 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %32, i32 0, i32 8
  %33 = load %struct.sm_file*, %struct.sm_file** %mci_out39, align 8, !tbaa !36
  %cmp40 = icmp ne %struct.sm_file* %33, null
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.end.38
  %34 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out43 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %34, i32 0, i32 8
  %35 = load %struct.sm_file*, %struct.sm_file** %mci_out43, align 8, !tbaa !36
  %call44 = call i32 @sm_io_flush(%struct.sm_file* %35, i32 -2)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.end.38
  %36 = load i8*, i8** %bufp, align 8, !tbaa !1
  %37 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_in46 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %37, i32 0, i32 7
  %38 = load %struct.sm_file*, %struct.sm_file** %mci_in46, align 8, !tbaa !38
  %39 = load i64, i64* %timeout.addr, align 8, !tbaa !35
  %40 = load i8*, i8** @SmtpPhase, align 8, !tbaa !1
  %call47 = call i8* @sfgets(i8* %36, i32 2048, %struct.sm_file* %38, i64 %39, i8* %40)
  store i8* %call47, i8** %p, align 8, !tbaa !1
  %call48 = call i32* @__errno_location() #8
  %41 = load i32, i32* %call48, align 4, !tbaa !5
  store i32 %41, i32* %save_errno, align 4, !tbaa !5
  %call49 = call i64 @curtime()
  %42 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_lastuse = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %42, i32 0, i32 15
  store i64 %call49, i64* %mci_lastuse, align 8, !tbaa !39
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp50 = icmp eq i8* %43, null
  br i1 %cmp50, label %if.then.52, label %if.end.109

if.then.52:                                       ; preds = %if.end.45
  %44 = bitcast i32* %oldholderrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %call53 = call i32 @strncmp(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i64 4) #9
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.52
  %45 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_close(%struct.mailer_con_info* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0))
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.then.52
  %46 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call58 = call i32* @__errno_location() #8
  store i32 %46, i32* %call58, align 4, !tbaa !5
  %call59 = call i32* @__errno_location() #8
  %47 = load i32, i32* %call59, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %47, 0
  br i1 %cmp60, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %if.end.57
  %48 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp63 = icmp eq i8* %48, null
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.62
  br label %cond.end

cond.false:                                       ; preds = %if.then.62
  %49 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), %cond.true ], [ %49, %cond.false ]
  %call65 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0), i64 2048, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0), i8* %cond)
  %call66 = call i32* @__errno_location() #8
  store i32 104, i32* %call66, align 4, !tbaa !5
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end, %if.end.57
  %call68 = call i32* @__errno_location() #8
  %50 = load i32, i32* %call68, align 4, !tbaa !5
  %conv69 = trunc i32 %50 to i16
  %51 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno70 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %51, i32 0, i32 1
  store i16 %conv69, i16* %mci_errno70, align 2, !tbaa !21
  %52 = load i32, i32* @HoldErrs, align 4, !tbaa !5
  store i32 %52, i32* %oldholderrs, align 4, !tbaa !5
  store i32 1, i32* @HoldErrs, align 4, !tbaa !5
  %53 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp71 = icmp eq i8* %53, null
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %if.end.67
  br label %cond.end.75

cond.false.74:                                    ; preds = %if.end.67
  %54 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.73
  %cond76 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), %cond.true.73 ], [ %54, %cond.false.74 ]
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.75, i32 0, i32 0), i8* %cond76)
  %55 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %55, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @MsgBuf, i32 0, i32 0))
  %56 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 18), align 1, !tbaa !7
  %conv77 = zext i8 %56 to i32
  %cmp78 = icmp sge i32 %conv77, 100
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.84

land.lhs.true.80:                                 ; preds = %cond.end.75
  %57 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool81 = icmp ne i32 %57, 0
  br i1 %tobool81, label %if.end.84, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true.80
  %call83 = call i32 @pause()
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %land.lhs.true.80, %cond.end.75
  %58 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state85 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %58, i32 0, i32 4
  store i16 8, i16* %mci_state85, align 2, !tbaa !13
  %59 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %60 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %61 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %59, %struct.mailer_con_info* %60, %struct.envelope* %61)
  %62 = bitcast [2048 x i8]* %wbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %62) #1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %wbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  %63 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %63, i32 0, i32 3
  %64 = load i8*, i8** %e_to, align 8, !tbaa !40
  %cmp86 = icmp ne i8* %64, null
  br i1 %cmp86, label %if.then.88, label %if.end.94

if.then.88:                                       ; preds = %if.end.84
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %66 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay89 = getelementptr inbounds [2048 x i8], [2048 x i8]* %wbuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay89 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 2048, %sub.ptr.sub
  %67 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to90 = getelementptr inbounds %struct.envelope, %struct.envelope* %67, i32 0, i32 3
  %68 = load i8*, i8** %e_to90, align 8, !tbaa !40
  %call91 = call i8* @shortenstring(i8* %68, i64 203)
  %call92 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %65, i64 %sub, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* %call91)
  %69 = load i8*, i8** %p, align 8, !tbaa !1
  %call93 = call i64 @strlen(i8* %69) #9
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %70, i64 %call93
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.88, %if.end.84
  %71 = load i8*, i8** %p, align 8, !tbaa !1
  %72 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay95 = getelementptr inbounds [2048 x i8], [2048 x i8]* %wbuf, i32 0, i32 0
  %sub.ptr.lhs.cast96 = ptrtoint i8* %72 to i64
  %sub.ptr.rhs.cast97 = ptrtoint i8* %arraydecay95 to i64
  %sub.ptr.sub98 = sub i64 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast97
  %sub99 = sub i64 2048, %sub.ptr.sub98
  %73 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp100 = icmp eq i8* %73, null
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %if.end.94
  br label %cond.end.104

cond.false.103:                                   ; preds = %if.end.94
  %74 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.102
  %cond105 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), %cond.true.102 ], [ %74, %cond.false.103 ]
  %75 = load i8*, i8** @SmtpPhase, align 8, !tbaa !1
  %call106 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %71, i64 %sub99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.77, i32 0, i32 0), i8* %cond105, i8* %75)
  %arraydecay107 = getelementptr inbounds [2048 x i8], [2048 x i8]* %wbuf, i32 0, i32 0
  call void @checkfd012(i8* %arraydecay107)
  %76 = bitcast [2048 x i8]* %wbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %76) #1
  %77 = load i32, i32* %oldholderrs, align 4, !tbaa !5
  store i32 %77, i32* @HoldErrs, align 4, !tbaa !5
  %78 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call108 = call i32* @__errno_location() #8
  store i32 %78, i32* %call108, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.104, %if.then.56
  %79 = bitcast i32* %oldholderrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  br label %cleanup.247

if.end.109:                                       ; preds = %if.end.45
  %80 = load i8*, i8** %bufp, align 8, !tbaa !1
  call void @fixcrlf(i8* %80, i32 1)
  %81 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp110 = getelementptr inbounds %struct.envelope, %struct.envelope* %81, i32 0, i32 32
  %82 = load %struct.sm_file*, %struct.sm_file** %e_xfp110, align 8, !tbaa !37
  %cmp111 = icmp ne %struct.sm_file* %82, null
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.155

land.lhs.true.113:                                ; preds = %if.end.109
  %83 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv114 = sext i8 %84 to i32
  %cmp115 = icmp eq i32 %conv114, 52
  br i1 %cmp115, label %if.then.125, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.113
  %85 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i8, i8* %85, i64 0
  %86 = load i8, i8* %arrayidx117, align 1, !tbaa !7
  %conv118 = sext i8 %86 to i32
  %cmp119 = icmp eq i32 %conv118, 53
  br i1 %cmp119, label %land.lhs.true.121, label %if.end.155

land.lhs.true.121:                                ; preds = %lor.lhs.false
  %call122 = call i32 @strncmp(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i64 4) #9
  %cmp123 = icmp ne i32 %call122, 0
  br i1 %cmp123, label %if.then.125, label %if.end.155

if.then.125:                                      ; preds = %land.lhs.true.121, %land.lhs.true.113
  %87 = load i32, i32* @SmtpNeedIntro, align 4, !tbaa !5
  %tobool126 = icmp ne i32 %87, 0
  br i1 %tobool126, label %if.then.127, label %if.end.136

if.then.127:                                      ; preds = %if.then.125
  %88 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_xfp128 = getelementptr inbounds %struct.envelope, %struct.envelope* %88, i32 0, i32 32
  %89 = load %struct.sm_file*, %struct.sm_file** %e_xfp128, align 8, !tbaa !37
  %90 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp129 = icmp eq i8* %90, null
  br i1 %cmp129, label %cond.true.131, label %cond.false.132

cond.true.131:                                    ; preds = %if.then.127
  br label %cond.end.133

cond.false.132:                                   ; preds = %if.then.127
  %91 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.132, %cond.true.131
  %cond134 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), %cond.true.131 ], [ %91, %cond.false.132 ]
  %call135 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %89, i32 -2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0), i8* %cond134)
  store i32 0, i32* @SmtpNeedIntro, align 4, !tbaa !5
  br label %if.end.136

if.end.136:                                       ; preds = %cond.end.133, %if.then.125
  %92 = load i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i64 0), align 1, !tbaa !7
  %conv137 = sext i8 %92 to i32
  %cmp138 = icmp ne i32 %conv137, 0
  br i1 %cmp138, label %if.then.140, label %if.end.152

if.then.140:                                      ; preds = %if.end.136
  %93 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp141 = getelementptr inbounds %struct.envelope, %struct.envelope* %93, i32 0, i32 32
  %94 = load %struct.sm_file*, %struct.sm_file** %e_xfp141, align 8, !tbaa !37
  %95 = load i32, i32* %rtype.addr, align 4, !tbaa !5
  %cmp142 = icmp eq i32 %95, 1
  br i1 %cmp142, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %if.then.140
  br label %cond.end.149

cond.false.145:                                   ; preds = %if.then.140
  %96 = load i32, i32* %rtype.addr, align 4, !tbaa !5
  %cmp146 = icmp eq i32 %96, 2
  %cond148 = select i1 %cmp146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i32 0)
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.145, %cond.true.144
  %cond150 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0), %cond.true.144 ], [ %cond148, %cond.false.145 ]
  %call151 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %94, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* %cond150)
  store i8 0, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i64 0), align 1, !tbaa !7
  br label %if.end.152

if.end.152:                                       ; preds = %cond.end.149, %if.end.136
  %97 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp153 = getelementptr inbounds %struct.envelope, %struct.envelope* %97, i32 0, i32 32
  %98 = load %struct.sm_file*, %struct.sm_file** %e_xfp153, align 8, !tbaa !37
  %99 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call154 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %98, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* %99)
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.152, %land.lhs.true.121, %lor.lhs.false, %if.end.109
  %100 = load i32, i32* @Verbose, align 4, !tbaa !5
  %tobool156 = icmp ne i32 %100, 0
  br i1 %tobool156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.155
  %101 = load i8*, i8** %bufp, align 8, !tbaa !1
  call void (i8*, ...) @nmessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* %101)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.end.155
  %102 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i8, i8* %102, i64 0
  %103 = load i8, i8* %arrayidx159, align 1, !tbaa !7
  %conv160 = sext i8 %103 to i32
  %and = and i32 %conv160, -128
  %cmp161 = icmp eq i32 %and, 0
  br i1 %cmp161, label %land.lhs.true.163, label %if.then.216

land.lhs.true.163:                                ; preds = %if.end.158
  %104 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i8, i8* %104, i64 0
  %105 = load i8, i8* %arrayidx164, align 1, !tbaa !7
  %conv165 = sext i8 %105 to i32
  %idxprom = sext i32 %conv165 to i64
  %call166 = call i16** @__ctype_b_loc() #8
  %106 = load i16*, i16** %call166, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i16, i16* %106, i64 %idxprom
  %107 = load i16, i16* %arrayidx167, align 2, !tbaa !41
  %conv168 = zext i16 %107 to i32
  %and169 = and i32 %conv168, 2048
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %land.lhs.true.171, label %if.then.216

land.lhs.true.171:                                ; preds = %land.lhs.true.163
  %108 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i8, i8* %108, i64 1
  %109 = load i8, i8* %arrayidx172, align 1, !tbaa !7
  %conv173 = sext i8 %109 to i32
  %and174 = and i32 %conv173, -128
  %cmp175 = icmp eq i32 %and174, 0
  br i1 %cmp175, label %land.lhs.true.177, label %if.then.216

land.lhs.true.177:                                ; preds = %land.lhs.true.171
  %110 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %110, i64 1
  %111 = load i8, i8* %arrayidx178, align 1, !tbaa !7
  %conv179 = sext i8 %111 to i32
  %idxprom180 = sext i32 %conv179 to i64
  %call181 = call i16** @__ctype_b_loc() #8
  %112 = load i16*, i16** %call181, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i16, i16* %112, i64 %idxprom180
  %113 = load i16, i16* %arrayidx182, align 2, !tbaa !41
  %conv183 = zext i16 %113 to i32
  %and184 = and i32 %conv183, 2048
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %land.lhs.true.186, label %if.then.216

land.lhs.true.186:                                ; preds = %land.lhs.true.177
  %114 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i8, i8* %114, i64 2
  %115 = load i8, i8* %arrayidx187, align 1, !tbaa !7
  %conv188 = sext i8 %115 to i32
  %and189 = and i32 %conv188, -128
  %cmp190 = icmp eq i32 %and189, 0
  br i1 %cmp190, label %land.lhs.true.192, label %if.then.216

land.lhs.true.192:                                ; preds = %land.lhs.true.186
  %116 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i8, i8* %116, i64 2
  %117 = load i8, i8* %arrayidx193, align 1, !tbaa !7
  %conv194 = sext i8 %117 to i32
  %idxprom195 = sext i32 %conv194 to i64
  %call196 = call i16** @__ctype_b_loc() #8
  %118 = load i16*, i16** %call196, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i16, i16* %118, i64 %idxprom195
  %119 = load i16, i16* %arrayidx197, align 2, !tbaa !41
  %conv198 = zext i16 %119 to i32
  %and199 = and i32 %conv198, 2048
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %land.lhs.true.201, label %if.then.216

land.lhs.true.201:                                ; preds = %land.lhs.true.192
  %120 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i8, i8* %120, i64 3
  %121 = load i8, i8* %arrayidx202, align 1, !tbaa !7
  %conv203 = sext i8 %121 to i32
  %cmp204 = icmp eq i32 %conv203, 32
  br i1 %cmp204, label %if.end.217, label %lor.lhs.false.206

lor.lhs.false.206:                                ; preds = %land.lhs.true.201
  %122 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i8, i8* %122, i64 3
  %123 = load i8, i8* %arrayidx207, align 1, !tbaa !7
  %conv208 = sext i8 %123 to i32
  %cmp209 = icmp eq i32 %conv208, 45
  br i1 %cmp209, label %if.end.217, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %lor.lhs.false.206
  %124 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i8, i8* %124, i64 3
  %125 = load i8, i8* %arrayidx212, align 1, !tbaa !7
  %conv213 = sext i8 %125 to i32
  %cmp214 = icmp eq i32 %conv213, 0
  br i1 %cmp214, label %if.end.217, label %if.then.216

if.then.216:                                      ; preds = %lor.lhs.false.211, %land.lhs.true.192, %land.lhs.true.186, %land.lhs.true.177, %land.lhs.true.171, %land.lhs.true.163, %if.end.158
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.217:                                       ; preds = %lor.lhs.false.211, %lor.lhs.false.206, %land.lhs.true.201
  %126 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %126, i32 0, i32 0
  %127 = load i64, i64* %mci_flags, align 8, !tbaa !17
  %and218 = and i64 %127, 131072
  %cmp219 = icmp ne i64 %and218, 0
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.230

land.lhs.true.221:                                ; preds = %if.end.217
  %128 = load i8**, i8*** %enhstat.addr, align 8, !tbaa !1
  %cmp222 = icmp ne i8** %128, null
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.230

land.lhs.true.224:                                ; preds = %land.lhs.true.221
  %129 = load i8*, i8** %bufp, align 8, !tbaa !1
  %add.ptr225 = getelementptr inbounds i8, i8* %129, i64 4
  %call226 = call i32 @extenhsc(i8* %add.ptr225, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @reply.enhstatcode, i32 0, i32 0))
  %cmp227 = icmp sgt i32 %call226, 0
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %land.lhs.true.224
  %130 = load i8**, i8*** %enhstat.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @reply.enhstatcode, i32 0, i32 0), i8** %130, align 8, !tbaa !1
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.229, %land.lhs.true.224, %land.lhs.true.221, %if.end.217
  %131 = load void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)*, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)** %pfunc.addr, align 8, !tbaa !1
  %cmp231 = icmp ne void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* %131, null
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.end.230
  %132 = load void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)*, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)** %pfunc.addr, align 8, !tbaa !1
  %133 = load i8*, i8** %bufp, align 8, !tbaa !1
  %134 = load i32, i32* %firstline, align 4, !tbaa !5
  %135 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %136 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %137 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void %132(i8* %133, i32 %134, %struct.mailer* %135, %struct.mailer_con_info* %136, %struct.envelope* %137)
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %if.end.230
  %138 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call235 = call i32 @atoi(i8* %138) #9
  store i32 %call235, i32* %r, align 4, !tbaa !5
  %139 = load i32, i32* %r, align 4, !tbaa !5
  %cmp236 = icmp slt i32 %139, 100
  br i1 %cmp236, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.end.234
  store i32 0, i32* %firstline, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.239:                                       ; preds = %if.end.234
  store i32 0, i32* %firstline, align 4, !tbaa !5
  %140 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i8, i8* %140, i64 3
  %141 = load i8, i8* %arrayidx240, align 1, !tbaa !7
  %conv241 = sext i8 %141 to i32
  %cmp242 = icmp ne i32 %conv241, 45
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.end.239
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.245:                                       ; preds = %if.end.239
  %arraydecay246 = getelementptr inbounds [2048 x i8], [2048 x i8]* %junkbuf, i32 0, i32 0
  store i8* %arraydecay246, i8** %bufp, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.247

cleanup.247:                                      ; preds = %if.end.245, %if.then.244, %if.then.238, %if.then.216, %cleanup, %if.end.33, %if.then.29, %if.then.15
  %142 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.269 [
    i32 0, label %cleanup.cont
    i32 3, label %for.cond
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup.247
  br label %for.cond

for.end:                                          ; preds = %cleanup.247
  %143 = load i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i64 0), align 1, !tbaa !7
  %conv248 = sext i8 %143 to i32
  %cmp249 = icmp eq i32 %conv248, 52
  br i1 %cmp249, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %for.end
  %call252 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpError, i32 0, i32 0), i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0), i64 2048)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.251, %for.end
  %144 = load i32, i32* %r, align 4, !tbaa !5
  %cmp254 = icmp eq i32 %144, 421
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.268

land.lhs.true.256:                                ; preds = %if.end.253
  %145 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state257 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %145, i32 0, i32 4
  %146 = load i16, i16* %mci_state257, align 2, !tbaa !13
  %conv258 = sext i16 %146 to i32
  %cmp259 = icmp ne i32 %conv258, 7
  br i1 %cmp259, label %land.lhs.true.261, label %if.end.268

land.lhs.true.261:                                ; preds = %land.lhs.true.256
  %147 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state262 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %147, i32 0, i32 4
  %148 = load i16, i16* %mci_state262, align 2, !tbaa !13
  %conv263 = sext i16 %148 to i32
  %cmp264 = icmp ne i32 %conv263, 6
  br i1 %cmp264, label %if.then.266, label %if.end.268

if.then.266:                                      ; preds = %land.lhs.true.261
  %149 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state267 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %149, i32 0, i32 4
  store i16 7, i16* %mci_state267, align 2, !tbaa !13
  %150 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %151 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %152 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %150, %struct.mailer_con_info* %151, %struct.envelope* %152)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.266, %land.lhs.true.261, %land.lhs.true.256, %if.end.253
  %153 = load i32, i32* %r, align 4, !tbaa !5
  store i32 %153, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.269

cleanup.269:                                      ; preds = %if.end.268, %cleanup.247
  %154 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast [2048 x i8]* %junkbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %155) #1
  %156 = bitcast i32* %firstline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = load i32, i32* %retval
  ret i32 %159
}

; Function Attrs: nounwind uwtable
define internal void @esmtp_check(i8* %line, i32 %firstline, %struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %firstline.addr = alloca i32, align 4
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %firstline, i32* %firstline.addr, align 4, !tbaa !5
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0)) #9
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %1, i32 0, i32 0
  %2 = load i64, i64* %mci_flags, align 8, !tbaa !17
  %or = or i64 %2, 8
  store i64 %or, i64* %mci_flags, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call1 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0)) #9
  %cmp2 = icmp ne i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags4 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %4, i32 0, i32 0
  %5 = load i64, i64* %mci_flags4, align 8, !tbaa !17
  %or5 = or i64 %5, 4096
  store i64 %or5, i64* %mci_flags4, align 8, !tbaa !17
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @smtpmessage(i8* %f, %struct.mailer* %m, %struct.mailer_con_info* %mci, ...) #0 {
entry:
  %f.addr = alloca i8*, align 8
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %f, i8** %f.addr, align 8, !tbaa !1
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %1 = load i8*, i8** %f.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @sm_vsnprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i32 0), i64 2048, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 18), align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* @Verbose, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %4, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void (i8*, ...) @nmessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.sm_file* %5, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %6 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %7 = load i32, i32* @CurrentPid, align 4, !tbaa !5
  %call10 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %6, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i32 %7, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %8 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %8, i32 0, i32 8
  %9 = load %struct.sm_file*, %struct.sm_file** %mci_out, align 8, !tbaa !36
  %cmp12 = icmp ne %struct.sm_file* %9, null
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  %10 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out15 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %10, i32 0, i32 8
  %11 = load %struct.sm_file*, %struct.sm_file** %mci_out15, align 8, !tbaa !36
  %12 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.mailer* %12, null
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %13 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_eol = getelementptr inbounds %struct.mailer, %struct.mailer* %13, i32 0, i32 13
  %14 = load i8*, i8** %m_eol, align 8, !tbaa !42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), %cond.true ], [ %14, %cond.false ]
  %call18 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %11, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpMsgBuffer, i32 0, i32 0), i8* %cond)
  br label %if.end.26

if.else:                                          ; preds = %if.end.11
  %15 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 18), align 1, !tbaa !7
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp sge i32 %conv19, 1
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.25

land.lhs.true.22:                                 ; preds = %if.else
  %16 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool23 = icmp ne i32 %16, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.22, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %cond.end
  %17 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @helo_options(i8* %line, i32 %firstline, %struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %firstline.addr = alloca i32, align 4
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %__a0 = alloca i8, align 1
  %__a1 = alloca i8, align 1
  %__a2 = alloca i8, align 1
  %tmp = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %firstline, i32* %firstline.addr, align 4, !tbaa !5
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %firstline.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_clr_extensions(%struct.mailer_con_info* %2)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %3) #9
  %cmp = icmp ult i64 %call, 5
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %4 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 4
  store i8* %add.ptr, i8** %line.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %__a0) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.92 to i64)), i64 1), label %cond.true, label %cond.false.37

cond.true:                                        ; preds = %if.end.2
  %5 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), align 1, !tbaa !7
  store i8 %5, i8* %__a0, align 1, !tbaa !7
  %6 = load i8, i8* %__a0, align 1, !tbaa !7
  %conv = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %cond.true.5, label %cond.false

cond.true.5:                                      ; preds = %cond.true
  %7 = load i8*, i8** %line.addr, align 8, !tbaa !1
  br label %cond.end.35

cond.false:                                       ; preds = %cond.true
  %8 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i64 1), align 1, !tbaa !7
  store i8 %8, i8* %__a1, align 1, !tbaa !7
  %9 = load i8, i8* %__a1, align 1, !tbaa !7
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %cond.true.9, label %cond.false.12

cond.true.9:                                      ; preds = %cond.false
  %10 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %11 = load i8, i8* %__a0, align 1, !tbaa !7
  %conv10 = sext i8 %11 to i32
  %call11 = call i8* @strchr(i8* %10, i32 %conv10) #1
  br label %cond.end.33

cond.false.12:                                    ; preds = %cond.false
  %12 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i64 2), align 1, !tbaa !7
  store i8 %12, i8* %__a2, align 1, !tbaa !7
  %13 = load i8, i8* %__a2, align 1, !tbaa !7
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %cond.true.16, label %cond.false.20

cond.true.16:                                     ; preds = %cond.false.12
  %14 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %15 = load i8, i8* %__a0, align 1, !tbaa !7
  %conv17 = sext i8 %15 to i32
  %16 = load i8, i8* %__a1, align 1, !tbaa !7
  %conv18 = sext i8 %16 to i32
  %call19 = call i8* @__strpbrk_c2(i8* %14, i32 %conv17, i32 %conv18)
  br label %cond.end.31

cond.false.20:                                    ; preds = %cond.false.12
  %17 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i64 3), align 1, !tbaa !7
  %conv21 = sext i8 %17 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %cond.true.24, label %cond.false.29

cond.true.24:                                     ; preds = %cond.false.20
  %18 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %19 = load i8, i8* %__a0, align 1, !tbaa !7
  %conv25 = sext i8 %19 to i32
  %20 = load i8, i8* %__a1, align 1, !tbaa !7
  %conv26 = sext i8 %20 to i32
  %21 = load i8, i8* %__a2, align 1, !tbaa !7
  %conv27 = sext i8 %21 to i32
  %call28 = call i8* @__strpbrk_c3(i8* %18, i32 %conv25, i32 %conv26, i32 %conv27)
  br label %cond.end

cond.false.29:                                    ; preds = %cond.false.20
  %22 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call30 = call i8* @strpbrk(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.29, %cond.true.24
  %cond = phi i8* [ %call28, %cond.true.24 ], [ %call30, %cond.false.29 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end, %cond.true.16
  %cond32 = phi i8* [ %call19, %cond.true.16 ], [ %cond, %cond.end ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.9
  %cond34 = phi i8* [ %call11, %cond.true.9 ], [ %cond32, %cond.end.31 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.33, %cond.true.5
  %cond36 = phi i8* [ null, %cond.true.5 ], [ %cond34, %cond.end.33 ]
  br label %cond.end.39

cond.false.37:                                    ; preds = %if.end.2
  %23 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call38 = call i8* @strpbrk(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0)) #1
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.end.35
  %cond40 = phi i8* [ %cond36, %cond.end.35 ], [ %call38, %cond.false.37 ]
  store i8* %cond40, i8** %tmp, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %__a2) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0) #1
  %24 = load i8*, i8** %tmp, !tbaa !1
  store i8* %24, i8** %p, align 8, !tbaa !1
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp41 = icmp ne i8* %25, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %cond.end.39
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %26, align 1, !tbaa !7
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %cond.end.39
  %27 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call45 = call i32 @sm_strcasecmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0))
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.44
  %28 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %28, i32 0, i32 0
  %29 = load i64, i64* %mci_flags, align 8, !tbaa !17
  %or = or i64 %29, 32
  store i64 %or, i64* %mci_flags, align 8, !tbaa !17
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp49 = icmp ne i8* %30, null
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.then.48
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %call52 = call i64 @atol(i8* %31) #9
  %32 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_maxsize = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %32, i32 0, i32 6
  store i64 %call52, i64* %mci_maxsize, align 8, !tbaa !43
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.then.48
  br label %if.end.115

if.else:                                          ; preds = %if.end.44
  %33 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call54 = call i32 @sm_strcasecmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0))
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.else.61

if.then.57:                                       ; preds = %if.else
  %34 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags58 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %34, i32 0, i32 0
  %35 = load i64, i64* %mci_flags58, align 8, !tbaa !17
  %or59 = or i64 %35, 64
  store i64 %or59, i64* %mci_flags58, align 8, !tbaa !17
  %36 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags60 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %36, i32 0, i32 0
  %37 = load i64, i64* %mci_flags60, align 8, !tbaa !17
  %and = and i64 %37, -129
  store i64 %and, i64* %mci_flags60, align 8, !tbaa !17
  br label %if.end.114

if.else.61:                                       ; preds = %if.else
  %38 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call62 = call i32 @sm_strcasecmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0))
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.68

if.then.65:                                       ; preds = %if.else.61
  %39 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags66 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %39, i32 0, i32 0
  %40 = load i64, i64* %mci_flags66, align 8, !tbaa !17
  %or67 = or i64 %40, 16
  store i64 %or67, i64* %mci_flags66, align 8, !tbaa !17
  br label %if.end.113

if.else.68:                                       ; preds = %if.else.61
  %41 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call69 = call i32 @sm_strcasecmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0))
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then.72, label %if.else.75

if.then.72:                                       ; preds = %if.else.68
  %42 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags73 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %42, i32 0, i32 0
  %43 = load i64, i64* %mci_flags73, align 8, !tbaa !17
  %or74 = or i64 %43, 2048
  store i64 %or74, i64* %mci_flags73, align 8, !tbaa !17
  br label %if.end.112

if.else.75:                                       ; preds = %if.else.68
  %44 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call76 = call i32 @sm_strcasecmp(i8* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i32 0, i32 0))
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.else.82

if.then.79:                                       ; preds = %if.else.75
  %45 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags80 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %45, i32 0, i32 0
  %46 = load i64, i64* %mci_flags80, align 8, !tbaa !17
  %or81 = or i64 %46, 131072
  store i64 %or81, i64* %mci_flags80, align 8, !tbaa !17
  br label %if.end.111

if.else.82:                                       ; preds = %if.else.75
  %47 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call83 = call i32 @sm_strcasecmp(i8* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0))
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.89

if.then.86:                                       ; preds = %if.else.82
  %48 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags87 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %48, i32 0, i32 0
  %49 = load i64, i64* %mci_flags87, align 8, !tbaa !17
  %or88 = or i64 %49, 262144
  store i64 %or88, i64* %mci_flags87, align 8, !tbaa !17
  br label %if.end.110

if.else.89:                                       ; preds = %if.else.82
  %50 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call90 = call i32 @sm_strcasecmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0))
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.else.96

if.then.93:                                       ; preds = %if.else.89
  %51 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags94 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %51, i32 0, i32 0
  %52 = load i64, i64* %mci_flags94, align 8, !tbaa !17
  %or95 = or i64 %52, 524288
  store i64 %or95, i64* %mci_flags94, align 8, !tbaa !17
  br label %if.end.109

if.else.96:                                       ; preds = %if.else.89
  %53 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call97 = call i32 @sm_strcasecmp(i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0))
  %cmp98 = icmp eq i32 %call97, 0
  br i1 %cmp98, label %if.then.100, label %if.end.108

if.then.100:                                      ; preds = %if.else.96
  %54 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags101 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %54, i32 0, i32 0
  %55 = load i64, i64* %mci_flags101, align 8, !tbaa !17
  %or102 = or i64 %55, 4194304
  store i64 %or102, i64* %mci_flags101, align 8, !tbaa !17
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp103 = icmp ne i8* %56, null
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.then.100
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %call106 = call i64 @atol(i8* %57) #9
  %58 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_min_by = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %58, i32 0, i32 18
  store i64 %call106, i64* %mci_min_by, align 8, !tbaa !44
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.then.100
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.else.96
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.93
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.86
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.79
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.72
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.65
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.57
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.115, %if.then.1, %if.then
  %59 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
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

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare i32 @sm_strcasecmp(i8*, i8*) #2

declare void @mci_setstat(%struct.mailer_con_info*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @smtpmailfrom(%struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %r = alloca i32, align 4
  %bufp = alloca i8*, align 8
  %bodytype = alloca i8*, align 8
  %enhsc = alloca i8*, align 8
  %buf = alloca [257 x i8], align 16
  %optbuf = alloca [2048 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %dby = alloca i64, align 8
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %bodytype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %4) #1
  %5 = bitcast [2048 x i8]* %optbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %5) #1
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 18), align 1, !tbaa !7
  %conv = zext i8 %6 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i8* null, i8** %enhsc, align 8, !tbaa !1
  %9 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %9, i32 0, i32 4
  %10 = load i16, i16* %mci_state, align 2, !tbaa !13
  %conv2 = sext i16 %10 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %11, i32 0, i32 1
  %12 = load i16, i16* %mci_errno, align 2, !tbaa !21
  %conv6 = sext i16 %12 to i32
  %call = call i32* @__errno_location() #8
  store i32 %conv6, i32* %call, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %13 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %13, i32 0, i32 0
  %14 = load i64, i64* %mci_flags, align 8, !tbaa !17
  %and = and i64 %14, 32
  %cmp8 = icmp ne i64 %and, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %if.end.7
  %15 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %15, i32 0, i32 9
  %16 = load i64, i64* %e_msgsize, align 8, !tbaa !45
  %cmp11 = icmp sgt i64 %16, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true.10
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize14 = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 9
  %18 = load i64, i64* %e_msgsize14, align 8, !tbaa !45
  %call15 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 2048, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i64 %18)
  %arraydecay16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %call17 = call i64 @strlen(i8* %arraydecay16) #9
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i64 %call17
  store i8* %arrayidx, i8** %bufp, align 8, !tbaa !1
  br label %if.end.20

if.else:                                          ; preds = %land.lhs.true.10, %if.end.7
  %arrayidx18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i64 0
  store i8 0, i8* %arrayidx18, align 1, !tbaa !7
  %arraydecay19 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  store i8* %arraydecay19, i8** %bufp, align 8, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.13
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_bodytype = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 23
  %20 = load i8*, i8** %e_bodytype, align 8, !tbaa !46
  store i8* %20, i8** %bodytype, align 8, !tbaa !1
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags21 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %21, i32 0, i32 0
  %22 = load i64, i64* %mci_flags21, align 8, !tbaa !17
  %and22 = and i64 %22, 64
  %cmp23 = icmp ne i64 %and22, 0
  br i1 %cmp23, label %if.then.25, label %if.else.63

if.then.25:                                       ; preds = %if.end.20
  %23 = load i8*, i8** %bodytype, align 8, !tbaa !1
  %cmp26 = icmp eq i8* %23, null
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.46

land.lhs.true.28:                                 ; preds = %if.then.25
  %24 = load i32, i32* @MimeMode, align 4, !tbaa !5
  %and29 = and i32 %24, 4
  %cmp30 = icmp ne i32 %and29, 0
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.46

land.lhs.true.32:                                 ; preds = %land.lhs.true.28
  %25 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %25, i32 0, i32 11
  %26 = load i64, i64* %e_flags, align 8, !tbaa !47
  %and33 = and i64 %26, 131072
  %cmp34 = icmp ne i64 %and33, 0
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.46

land.lhs.true.36:                                 ; preds = %land.lhs.true.32
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags37 = getelementptr inbounds %struct.envelope, %struct.envelope* %27, i32 0, i32 11
  %28 = load i64, i64* %e_flags37, align 8, !tbaa !47
  %and38 = and i64 %28, 8388608
  %cmp39 = icmp ne i64 %and38, 0
  br i1 %cmp39, label %if.end.46, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %29 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %29, i32 0, i32 5
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 1
  %30 = load i32, i32* %arrayidx42, align 4, !tbaa !5
  %and43 = and i32 %30, 16777216
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.41
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8** %bodytype, align 8, !tbaa !1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true.41, %land.lhs.true.36, %land.lhs.true.32, %land.lhs.true.28, %if.then.25
  %31 = load i8*, i8** %bodytype, align 8, !tbaa !1
  %cmp47 = icmp ne i8* %31, null
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.62

land.lhs.true.49:                                 ; preds = %if.end.46
  %32 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 2048, %sub.ptr.sub
  %33 = load i8*, i8** %bodytype, align 8, !tbaa !1
  %call51 = call i64 @strlen(i8* %33) #9
  %add = add i64 %call51, 7
  %cmp52 = icmp ugt i64 %sub, %add
  br i1 %cmp52, label %if.then.54, label %if.end.62

if.then.54:                                       ; preds = %land.lhs.true.49
  %34 = load i8*, i8** %bufp, align 8, !tbaa !1
  %35 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay55 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast56 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %arraydecay55 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %sub59 = sub i64 2048, %sub.ptr.sub58
  %36 = load i8*, i8** %bodytype, align 8, !tbaa !1
  %call60 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %34, i64 %sub59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* %36)
  %37 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call61 = call i64 @strlen(i8* %37) #9
  %38 = load i8*, i8** %bufp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %call61
  store i8* %add.ptr, i8** %bufp, align 8, !tbaa !1
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.54, %land.lhs.true.49, %if.end.46
  br label %if.end.106

if.else.63:                                       ; preds = %if.end.20
  %39 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags64 = getelementptr inbounds %struct.mailer, %struct.mailer* %39, i32 0, i32 5
  %arrayidx65 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags64, i32 0, i64 1
  %40 = load i32, i32* %arrayidx65, align 4, !tbaa !5
  %and66 = and i32 %40, 16777216
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.63
  %41 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags68 = getelementptr inbounds %struct.envelope, %struct.envelope* %41, i32 0, i32 11
  %42 = load i64, i64* %e_flags68, align 8, !tbaa !47
  %and69 = and i64 %42, 131072
  %cmp70 = icmp ne i64 %and69, 0
  br i1 %cmp70, label %lor.lhs.false.72, label %if.then.77

lor.lhs.false.72:                                 ; preds = %lor.lhs.false
  %43 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags73 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %43, i32 0, i32 0
  %44 = load i64, i64* %mci_flags73, align 8, !tbaa !17
  %and74 = and i64 %44, 4096
  %cmp75 = icmp ne i64 %and74, 0
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false, %if.else.63
  br label %if.end.105

if.else.78:                                       ; preds = %lor.lhs.false.72
  %45 = load i32, i32* @MimeMode, align 4, !tbaa !5
  %and79 = and i32 %45, 1
  %cmp80 = icmp ne i32 %and79, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.else.98

land.lhs.true.82:                                 ; preds = %if.else.78
  %46 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags83 = getelementptr inbounds %struct.envelope, %struct.envelope* %46, i32 0, i32 11
  %47 = load i64, i64* %e_flags83, align 8, !tbaa !47
  %and84 = and i64 %47, 8388608
  %cmp85 = icmp ne i64 %and84, 0
  br i1 %cmp85, label %if.else.98, label %land.lhs.true.87

land.lhs.true.87:                                 ; preds = %land.lhs.true.82
  %48 = load i32, i32* @MimeMode, align 4, !tbaa !5
  %and88 = and i32 %48, 2
  %cmp89 = icmp ne i32 %and88, 0
  br i1 %cmp89, label %lor.lhs.false.91, label %if.then.96

lor.lhs.false.91:                                 ; preds = %land.lhs.true.87
  %49 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags92 = getelementptr inbounds %struct.envelope, %struct.envelope* %49, i32 0, i32 11
  %50 = load i64, i64* %e_flags92, align 8, !tbaa !47
  %and93 = and i64 %50, 4194304
  %cmp94 = icmp ne i64 %and93, 0
  br i1 %cmp94, label %if.then.96, label %if.else.98

if.then.96:                                       ; preds = %lor.lhs.false.91, %land.lhs.true.87
  %51 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags97 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %51, i32 0, i32 0
  %52 = load i64, i64* %mci_flags97, align 8, !tbaa !17
  %or = or i64 %52, 1024
  store i64 %or, i64* %mci_flags97, align 8, !tbaa !17
  br label %if.end.104

if.else.98:                                       ; preds = %lor.lhs.false.91, %land.lhs.true.82, %if.else.78
  %53 = load i32, i32* @MimeMode, align 4, !tbaa !5
  %and99 = and i32 %53, 2
  %cmp100 = icmp ne i32 %and99, 0
  br i1 %cmp100, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %if.else.98
  %54 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  call void (i8*, i8*, ...) @usrerrenh(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i8* %54)
  %55 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %55, i32 -5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @MsgBuf, i32 0, i32 0))
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.103:                                       ; preds = %if.else.98
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.96
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.77
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.62
  %56 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags107 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %56, i32 0, i32 0
  %57 = load i64, i64* %mci_flags107, align 8, !tbaa !17
  %and108 = and i64 %57, 2048
  %cmp109 = icmp ne i64 %and108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.162

if.then.111:                                      ; preds = %if.end.106
  %58 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_envid = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 40
  %59 = load i8*, i8** %e_envid, align 8, !tbaa !48
  %cmp112 = icmp ne i8* %59, null
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.135

land.lhs.true.114:                                ; preds = %if.then.111
  %60 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay115 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast116 = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast117 = ptrtoint i8* %arraydecay115 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %sub119 = sub i64 2048, %sub.ptr.sub118
  %61 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_envid120 = getelementptr inbounds %struct.envelope, %struct.envelope* %61, i32 0, i32 40
  %62 = load i8*, i8** %e_envid120, align 8, !tbaa !48
  %call121 = call i64 @strlen(i8* %62) #9
  %add122 = add i64 %call121, 7
  %cmp123 = icmp ugt i64 %sub119, %add122
  br i1 %cmp123, label %if.then.125, label %if.end.135

if.then.125:                                      ; preds = %land.lhs.true.114
  %63 = load i8*, i8** %bufp, align 8, !tbaa !1
  %64 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay126 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast127 = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast128 = ptrtoint i8* %arraydecay126 to i64
  %sub.ptr.sub129 = sub i64 %sub.ptr.lhs.cast127, %sub.ptr.rhs.cast128
  %sub130 = sub i64 2048, %sub.ptr.sub129
  %65 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_envid131 = getelementptr inbounds %struct.envelope, %struct.envelope* %65, i32 0, i32 40
  %66 = load i8*, i8** %e_envid131, align 8, !tbaa !48
  %call132 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %63, i64 %sub130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* %66)
  %67 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call133 = call i64 @strlen(i8* %67) #9
  %68 = load i8*, i8** %bufp, align 8, !tbaa !1
  %add.ptr134 = getelementptr inbounds i8, i8* %68, i64 %call133
  store i8* %add.ptr134, i8** %bufp, align 8, !tbaa !1
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.125, %land.lhs.true.114, %if.then.111
  %69 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags136 = getelementptr inbounds %struct.envelope, %struct.envelope* %69, i32 0, i32 11
  %70 = load i64, i64* %e_flags136, align 8, !tbaa !47
  %and137 = and i64 %70, 1048576
  %cmp138 = icmp ne i64 %and137, 0
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.161

land.lhs.true.140:                                ; preds = %if.end.135
  %71 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay141 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast142 = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast143 = ptrtoint i8* %arraydecay141 to i64
  %sub.ptr.sub144 = sub i64 %sub.ptr.lhs.cast142, %sub.ptr.rhs.cast143
  %sub145 = sub i64 2048, %sub.ptr.sub144
  %cmp146 = icmp ugt i64 %sub145, 9
  br i1 %cmp146, label %if.then.148, label %if.end.161

if.then.148:                                      ; preds = %land.lhs.true.140
  %72 = load i8*, i8** %bufp, align 8, !tbaa !1
  %73 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast150 = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast151 = ptrtoint i8* %arraydecay149 to i64
  %sub.ptr.sub152 = sub i64 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast151
  %sub153 = sub i64 2048, %sub.ptr.sub152
  %74 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags154 = getelementptr inbounds %struct.envelope, %struct.envelope* %74, i32 0, i32 11
  %75 = load i64, i64* %e_flags154, align 8, !tbaa !47
  %and155 = and i64 %75, 4
  %cmp156 = icmp ne i64 %and155, 0
  %cond = select i1 %cmp156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)
  %call158 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %72, i64 %sub153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* %cond)
  %76 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call159 = call i64 @strlen(i8* %76) #9
  %77 = load i8*, i8** %bufp, align 8, !tbaa !1
  %add.ptr160 = getelementptr inbounds i8, i8* %77, i64 %call159
  store i8* %add.ptr160, i8** %bufp, align 8, !tbaa !1
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.148, %land.lhs.true.140, %if.end.135
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.106
  %78 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags163 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %78, i32 0, i32 0
  %79 = load i64, i64* %mci_flags163, align 8, !tbaa !17
  %and164 = and i64 %79, 32768
  %cmp165 = icmp ne i64 %and164, 0
  br i1 %cmp165, label %land.lhs.true.167, label %if.end.191

land.lhs.true.167:                                ; preds = %if.end.162
  %80 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_auth_param = getelementptr inbounds %struct.envelope, %struct.envelope* %80, i32 0, i32 48
  %81 = load i8*, i8** %e_auth_param, align 8, !tbaa !49
  %cmp168 = icmp ne i8* %81, null
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.191

land.lhs.true.170:                                ; preds = %land.lhs.true.167
  %82 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay171 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast172 = ptrtoint i8* %82 to i64
  %sub.ptr.rhs.cast173 = ptrtoint i8* %arraydecay171 to i64
  %sub.ptr.sub174 = sub i64 %sub.ptr.lhs.cast172, %sub.ptr.rhs.cast173
  %sub175 = sub i64 2048, %sub.ptr.sub174
  %83 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_auth_param176 = getelementptr inbounds %struct.envelope, %struct.envelope* %83, i32 0, i32 48
  %84 = load i8*, i8** %e_auth_param176, align 8, !tbaa !49
  %call177 = call i64 @strlen(i8* %84) #9
  %add178 = add i64 %call177, 7
  %cmp179 = icmp ugt i64 %sub175, %add178
  br i1 %cmp179, label %if.then.181, label %if.end.191

if.then.181:                                      ; preds = %land.lhs.true.170
  %85 = load i8*, i8** %bufp, align 8, !tbaa !1
  %86 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay182 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast183 = ptrtoint i8* %86 to i64
  %sub.ptr.rhs.cast184 = ptrtoint i8* %arraydecay182 to i64
  %sub.ptr.sub185 = sub i64 %sub.ptr.lhs.cast183, %sub.ptr.rhs.cast184
  %sub186 = sub i64 2048, %sub.ptr.sub185
  %87 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_auth_param187 = getelementptr inbounds %struct.envelope, %struct.envelope* %87, i32 0, i32 48
  %88 = load i8*, i8** %e_auth_param187, align 8, !tbaa !49
  %call188 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %85, i64 %sub186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* %88)
  %89 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call189 = call i64 @strlen(i8* %89) #9
  %90 = load i8*, i8** %bufp, align 8, !tbaa !1
  %add.ptr190 = getelementptr inbounds i8, i8* %90, i64 %call189
  store i8* %add.ptr190, i8** %bufp, align 8, !tbaa !1
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.181, %land.lhs.true.170, %land.lhs.true.167, %if.end.162
  %91 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags192 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %91, i32 0, i32 0
  %92 = load i64, i64* %mci_flags192, align 8, !tbaa !17
  %and193 = and i64 %92, 4194304
  %cmp194 = icmp ne i64 %and193, 0
  br i1 %cmp194, label %land.lhs.true.196, label %if.end.242

land.lhs.true.196:                                ; preds = %if.end.191
  %93 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag = getelementptr inbounds %struct.envelope, %struct.envelope* %93, i32 0, i32 51
  %94 = load i32, i32* %e_dlvr_flag, align 4, !tbaa !50
  %cmp197 = icmp ne i32 %94, 0
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.242

land.lhs.true.199:                                ; preds = %land.lhs.true.196
  %95 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay200 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast201 = ptrtoint i8* %95 to i64
  %sub.ptr.rhs.cast202 = ptrtoint i8* %arraydecay200 to i64
  %sub.ptr.sub203 = sub i64 %sub.ptr.lhs.cast201, %sub.ptr.rhs.cast202
  %sub204 = sub i64 2048, %sub.ptr.sub203
  %cmp205 = icmp ugt i64 %sub204, 17
  br i1 %cmp205, label %if.then.207, label %if.end.242

if.then.207:                                      ; preds = %land.lhs.true.199
  %96 = bitcast i64* %dby to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  %97 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by = getelementptr inbounds %struct.envelope, %struct.envelope* %97, i32 0, i32 50
  %98 = load i64, i64* %e_deliver_by, align 8, !tbaa !51
  %call208 = call i64 @curtime()
  %99 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ctime = getelementptr inbounds %struct.envelope, %struct.envelope* %99, i32 0, i32 2
  %100 = load i64, i64* %e_ctime, align 8, !tbaa !52
  %sub209 = sub nsw i64 %call208, %100
  %sub210 = sub nsw i64 %98, %sub209
  store i64 %sub210, i64* %dby, align 8, !tbaa !35
  %101 = load i64, i64* %dby, align 8, !tbaa !35
  %cmp211 = icmp sle i64 %101, 0
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.223

land.lhs.true.213:                                ; preds = %if.then.207
  %102 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag214 = getelementptr inbounds %struct.envelope, %struct.envelope* %102, i32 0, i32 51
  %103 = load i32, i32* %e_dlvr_flag214, align 4, !tbaa !50
  %and215 = and i32 %103, 2
  %cmp216 = icmp ne i32 %and215, 0
  br i1 %cmp216, label %if.then.218, label %if.end.223

if.then.218:                                      ; preds = %land.lhs.true.213
  %104 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_min_by = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %104, i32 0, i32 18
  %105 = load i64, i64* %mci_min_by, align 8, !tbaa !44
  %cmp219 = icmp sle i64 %105, 0
  br i1 %cmp219, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.218
  br label %cond.end

cond.false:                                       ; preds = %if.then.218
  %106 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_min_by221 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %106, i32 0, i32 18
  %107 = load i64, i64* %mci_min_by221, align 8, !tbaa !44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond222 = phi i64 [ 1, %cond.true ], [ %107, %cond.false ]
  store i64 %cond222, i64* %dby, align 8, !tbaa !35
  br label %if.end.223

if.end.223:                                       ; preds = %cond.end, %land.lhs.true.213, %if.then.207
  %108 = load i8*, i8** %bufp, align 8, !tbaa !1
  %109 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay224 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast225 = ptrtoint i8* %109 to i64
  %sub.ptr.rhs.cast226 = ptrtoint i8* %arraydecay224 to i64
  %sub.ptr.sub227 = sub i64 %sub.ptr.lhs.cast225, %sub.ptr.rhs.cast226
  %sub228 = sub i64 2048, %sub.ptr.sub227
  %110 = load i64, i64* %dby, align 8, !tbaa !35
  %111 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag229 = getelementptr inbounds %struct.envelope, %struct.envelope* %111, i32 0, i32 51
  %112 = load i32, i32* %e_dlvr_flag229, align 4, !tbaa !50
  %and230 = and i32 %112, 2
  %cmp231 = icmp ne i32 %and230, 0
  %cond233 = select i1 %cmp231, i32 82, i32 78
  %113 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag234 = getelementptr inbounds %struct.envelope, %struct.envelope* %113, i32 0, i32 51
  %114 = load i32, i32* %e_dlvr_flag234, align 4, !tbaa !50
  %and235 = and i32 %114, 16
  %cmp236 = icmp ne i32 %and235, 0
  %cond238 = select i1 %cmp236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0)
  %call239 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %108, i64 %sub228, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i64 %110, i32 %cond233, i8* %cond238)
  %115 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call240 = call i64 @strlen(i8* %115) #9
  %116 = load i8*, i8** %bufp, align 8, !tbaa !1
  %add.ptr241 = getelementptr inbounds i8, i8* %116, i64 %call240
  store i8* %add.ptr241, i8** %bufp, align 8, !tbaa !1
  %117 = bitcast i64* %dby to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.223, %land.lhs.true.199, %land.lhs.true.196, %if.end.191
  %118 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state243 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %118, i32 0, i32 4
  store i16 3, i16* %mci_state243, align 2, !tbaa !13
  %119 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags244 = getelementptr inbounds %struct.envelope, %struct.envelope* %119, i32 0, i32 11
  %120 = load i64, i64* %e_flags244, align 8, !tbaa !47
  %and245 = and i64 %120, 128
  %cmp246 = icmp ne i64 %and245, 0
  br i1 %cmp246, label %land.lhs.true.248, label %if.else.255

land.lhs.true.248:                                ; preds = %if.end.242
  %121 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags249 = getelementptr inbounds %struct.mailer, %struct.mailer* %121, i32 0, i32 5
  %arrayidx250 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags249, i32 0, i64 3
  %122 = load i32, i32* %arrayidx250, align 4, !tbaa !5
  %and251 = and i32 %122, 128
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %if.else.255, label %if.then.253

if.then.253:                                      ; preds = %land.lhs.true.248
  %arrayidx254 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx254, align 1, !tbaa !7
  br label %if.end.257

if.else.255:                                      ; preds = %land.lhs.true.248, %if.end.242
  %arraydecay256 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %123 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* %arraydecay256, i64 257, %struct.envelope* %123)
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.255, %if.then.253
  %arrayidx258 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i64 0
  %124 = load i8, i8* %arrayidx258, align 1, !tbaa !7
  %conv259 = sext i8 %124 to i32
  %cmp260 = icmp eq i32 %conv259, 60
  br i1 %cmp260, label %if.then.262, label %if.else.273

if.then.262:                                      ; preds = %if.end.257
  %arraydecay263 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %call264 = call i64 @strlen(i8* %arraydecay263) #9
  %sub265 = sub i64 %call264, 1
  %arrayidx266 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i64 %sub265
  store i8* %arrayidx266, i8** %bufp, align 8, !tbaa !1
  %125 = load i8*, i8** %bufp, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !7
  %conv267 = sext i8 %126 to i32
  %cmp268 = icmp eq i32 %conv267, 62
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %if.then.262
  %127 = load i8*, i8** %bufp, align 8, !tbaa !1
  store i8 0, i8* %127, align 1, !tbaa !7
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.270, %if.then.262
  %arrayidx272 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i64 1
  store i8* %arrayidx272, i8** %bufp, align 8, !tbaa !1
  br label %if.end.275

if.else.273:                                      ; preds = %if.end.257
  %arraydecay274 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay274, i8** %bufp, align 8, !tbaa !1
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.273, %if.end.271
  %128 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %128, i32 0, i32 4
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %e_from, i32 0, i32 4
  %129 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !53
  %m_flags276 = getelementptr inbounds %struct.mailer, %struct.mailer* %129, i32 0, i32 5
  %arrayidx277 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags276, i32 0, i64 3
  %130 = load i32, i32* %arrayidx277, align 4, !tbaa !5
  %and278 = and i32 %130, 4096
  %tobool279 = icmp ne i32 %and278, 0
  br i1 %tobool279, label %if.then.285, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %if.end.275
  %131 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags281 = getelementptr inbounds %struct.mailer, %struct.mailer* %131, i32 0, i32 5
  %arrayidx282 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags281, i32 0, i64 3
  %132 = load i32, i32* %arrayidx282, align 4, !tbaa !5
  %and283 = and i32 %132, 65536
  %tobool284 = icmp ne i32 %and283, 0
  br i1 %tobool284, label %if.else.287, label %if.then.285

if.then.285:                                      ; preds = %lor.lhs.false.280, %if.end.275
  %133 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %134 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %135 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay286 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), %struct.mailer* %133, %struct.mailer_con_info* %134, i8* %135, i8* %arraydecay286)
  br label %if.end.293

if.else.287:                                      ; preds = %lor.lhs.false.280
  %136 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %137 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %138 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %139 = load i8*, i8** %bufp, align 8, !tbaa !1
  %140 = load i8, i8* %139, align 1, !tbaa !7
  %conv288 = sext i8 %140 to i32
  %cmp289 = icmp eq i32 %conv288, 64
  %cond291 = select i1 %cmp289, i32 44, i32 58
  %141 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay292 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), %struct.mailer* %136, %struct.mailer_con_info* %137, i8* %138, i32 %cond291, i8* %141, i8* %arraydecay292)
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.287, %if.then.285
  %142 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %142, i32 0, i32 10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8** %mci_phase, align 8, !tbaa !14
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %143 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %144 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call294 = call i8* @qid_printname(%struct.envelope* %144)
  %145 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %146 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase295 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %146, i32 0, i32 10
  %147 = load i8*, i8** %mci_phase295, align 8, !tbaa !14
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %call294, i8* %145, i8* %147)
  %148 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %149 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %150 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %151 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 1), align 8, !tbaa !54
  %call296 = call i32 @reply(%struct.mailer* %148, %struct.mailer_con_info* %149, %struct.envelope* %150, i64 %151, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* null, i8** %enhsc, i32 5)
  store i32 %call296, i32* %r, align 4, !tbaa !5
  %152 = load i32, i32* %r, align 4, !tbaa !5
  %cmp297 = icmp slt i32 %152, 0
  br i1 %cmp297, label %if.then.299, label %if.else.300

if.then.299:                                      ; preds = %if.end.293
  %153 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %153, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* null)
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.300:                                      ; preds = %if.end.293
  %154 = load i32, i32* %r, align 4, !tbaa !5
  %cmp301 = icmp eq i32 %154, 421
  br i1 %cmp301, label %if.then.303, label %if.else.304

if.then.303:                                      ; preds = %if.else.300
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.304:                                      ; preds = %if.else.300
  %155 = load i32, i32* %r, align 4, !tbaa !5
  %div = sdiv i32 %155, 100
  %cmp305 = icmp eq i32 %div, 4
  br i1 %cmp305, label %if.then.307, label %if.else.315

if.then.307:                                      ; preds = %if.else.304
  %156 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %157 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp308 = icmp eq i8* %157, null
  br i1 %cmp308, label %cond.true.310, label %cond.false.312

cond.true.310:                                    ; preds = %if.then.307
  %158 = load i32, i32* %r, align 4, !tbaa !5
  %call311 = call i8* @smtptodsn(i32 %158)
  br label %cond.end.313

cond.false.312:                                   ; preds = %if.then.307
  %159 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.false.312, %cond.true.310
  %cond314 = phi i8* [ %call311, %cond.true.310 ], [ %159, %cond.false.312 ]
  call void @mci_setstat(%struct.mailer_con_info* %156, i32 -5, i8* %cond314, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.315:                                      ; preds = %if.else.304
  %160 = load i32, i32* %r, align 4, !tbaa !5
  %div316 = sdiv i32 %160, 100
  %cmp317 = icmp eq i32 %div316, 2
  br i1 %cmp317, label %if.then.319, label %if.else.320

if.then.319:                                      ; preds = %if.else.315
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.320:                                      ; preds = %if.else.315
  %161 = load i32, i32* %r, align 4, !tbaa !5
  %cmp321 = icmp eq i32 %161, 501
  br i1 %cmp321, label %if.then.323, label %if.else.330

if.then.323:                                      ; preds = %if.else.320
  %162 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %163 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp324 = icmp eq i8* %163, null
  br i1 %cmp324, label %cond.true.326, label %cond.false.327

cond.true.326:                                    ; preds = %if.then.323
  br label %cond.end.328

cond.false.327:                                   ; preds = %if.then.323
  %164 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end.328

cond.end.328:                                     ; preds = %cond.false.327, %cond.true.326
  %cond329 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), %cond.true.326 ], [ %164, %cond.false.327 ]
  call void @mci_setstat(%struct.mailer_con_info* %162, i32 -5, i8* %cond329, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.330:                                      ; preds = %if.else.320
  %165 = load i32, i32* %r, align 4, !tbaa !5
  %cmp331 = icmp eq i32 %165, 553
  br i1 %cmp331, label %if.then.333, label %if.else.340

if.then.333:                                      ; preds = %if.else.330
  %166 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %167 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp334 = icmp eq i8* %167, null
  br i1 %cmp334, label %cond.true.336, label %cond.false.337

cond.true.336:                                    ; preds = %if.then.333
  br label %cond.end.338

cond.false.337:                                   ; preds = %if.then.333
  %168 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.337, %cond.true.336
  %cond339 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), %cond.true.336 ], [ %168, %cond.false.337 ]
  call void @mci_setstat(%struct.mailer_con_info* %166, i32 -5, i8* %cond339, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.340:                                      ; preds = %if.else.330
  %169 = load i32, i32* %r, align 4, !tbaa !5
  %cmp341 = icmp eq i32 %169, 552
  br i1 %cmp341, label %if.then.343, label %if.else.358

if.then.343:                                      ; preds = %if.else.340
  %170 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %171 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp344 = icmp eq i8* %171, null
  br i1 %cmp344, label %cond.true.346, label %cond.false.347

cond.true.346:                                    ; preds = %if.then.343
  br label %cond.end.348

cond.false.347:                                   ; preds = %if.then.343
  %172 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.347, %cond.true.346
  %cond349 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.true.346 ], [ %172, %cond.false.347 ]
  call void @mci_setstat(%struct.mailer_con_info* %170, i32 -5, i8* %cond349, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  %173 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags350 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %173, i32 0, i32 0
  %174 = load i64, i64* %mci_flags350, align 8, !tbaa !17
  %and351 = and i64 %174, 32
  %cmp352 = icmp ne i64 %and351, 0
  br i1 %cmp352, label %if.then.354, label %if.end.357

if.then.354:                                      ; preds = %cond.end.348
  %175 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags355 = getelementptr inbounds %struct.envelope, %struct.envelope* %175, i32 0, i32 11
  %176 = load i64, i64* %e_flags355, align 8, !tbaa !47
  %or356 = or i64 %176, 4
  store i64 %or356, i64* %e_flags355, align 8, !tbaa !47
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.354, %cond.end.348
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.358:                                      ; preds = %if.else.340
  %177 = load i32, i32* %r, align 4, !tbaa !5
  %div359 = sdiv i32 %177, 100
  %cmp360 = icmp eq i32 %div359, 5
  br i1 %cmp360, label %if.then.362, label %if.end.369

if.then.362:                                      ; preds = %if.else.358
  %178 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %179 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp363 = icmp eq i8* %179, null
  br i1 %cmp363, label %cond.true.365, label %cond.false.366

cond.true.365:                                    ; preds = %if.then.362
  br label %cond.end.367

cond.false.366:                                   ; preds = %if.then.362
  %180 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.false.366, %cond.true.365
  %cond368 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), %cond.true.365 ], [ %180, %cond.false.366 ]
  call void @mci_setstat(%struct.mailer_con_info* %178, i32 -5, i8* %cond368, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.369:                                       ; preds = %if.else.358
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370
  br label %if.end.372

if.end.372:                                       ; preds = %if.end.371
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375
  %181 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp377 = icmp sgt i32 %181, 1
  br i1 %cmp377, label %if.then.379, label %if.end.381

if.then.379:                                      ; preds = %if.end.376
  %182 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %182, i32 0, i32 25
  %183 = load i8*, i8** %e_id, align 8, !tbaa !30
  %184 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %call380 = call i8* @shortenstring(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0), i64 403)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 2, i8* %183, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0), i8* %184, i8* %call380)
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.379, %if.end.376
  %185 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %186 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp382 = icmp eq i8* %186, null
  br i1 %cmp382, label %cond.true.384, label %cond.false.385

cond.true.384:                                    ; preds = %if.end.381
  br label %cond.end.386

cond.false.385:                                   ; preds = %if.end.381
  %187 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end.386

cond.end.386:                                     ; preds = %cond.false.385, %cond.true.384
  %cond387 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), %cond.true.384 ], [ %187, %cond.false.385 ]
  call void @mci_setstat(%struct.mailer_con_info* %185, i32 76, i8* %cond387, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  %188 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %189 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %190 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %188, %struct.mailer_con_info* %189, %struct.envelope* %190)
  store i32 76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.386, %cond.end.367, %if.end.357, %cond.end.338, %cond.end.328, %if.then.319, %cond.end.313, %if.then.303, %if.then.299, %if.then.102, %if.then.5
  %191 = bitcast [2048 x i8]* %optbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %191) #1
  %192 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %192) #1
  %193 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i8** %bodytype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = load i32, i32* %retval
  ret i32 %197
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @usrerrenh(i8*, i8*, ...) #2

declare i64 @curtime() #2

declare void @expand(i8*, i8*, i64, %struct.envelope*) #2

declare i8* @smtptodsn(i32) #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

declare i8* @shortenstring(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @smtprcpt(%struct.address* %to, %struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e, %struct.address* %ctladdr, i64 %xstart) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca %struct.address*, align 8
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %ctladdr.addr = alloca %struct.address*, align 8
  %xstart.addr = alloca i64, align 8
  %bufp = alloca i8*, align 8
  %optbuf = alloca [2048 x i8], align 16
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %firstone = alloca i32, align 4
  store %struct.address* %to, %struct.address** %to.addr, align 8, !tbaa !1
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.address* %ctladdr, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  store i64 %xstart, i64* %xstart.addr, align 8, !tbaa !35
  %0 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [2048 x i8]* %optbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %1) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %2, i32 0, i32 23
  %3 = load %struct.address*, %struct.address** %mci_nextaddr, align 8, !tbaa !55
  %cmp = icmp ne %struct.address* %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_in = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %4, i32 0, i32 7
  %5 = load %struct.sm_file*, %struct.sm_file** %mci_in, align 8, !tbaa !38
  %call = call i32 @sm_io_getinfo(%struct.sm_file* %5, i32 6, i8* null)
  %cmp1 = icmp sgt i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr2 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %8, i32 0, i32 23
  %9 = load %struct.address*, %struct.address** %mci_nextaddr2, align 8, !tbaa !55
  %10 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call3 = call i32 @smtprcptstat(%struct.address* %9, %struct.mailer* %10, %struct.mailer_con_info* %11, %struct.envelope* %12)
  store i32 %call3, i32* %r, align 4, !tbaa !5
  %13 = load i32, i32* %r, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %13, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %15 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr5 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %15, i32 0, i32 23
  %16 = load %struct.address*, %struct.address** %mci_nextaddr5, align 8, !tbaa !55
  %17 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %18 = load i32, i32* %r, align 4, !tbaa !5
  call void @markfailure(%struct.envelope* %14, %struct.address* %16, %struct.mailer_con_info* %17, i32 %18, i32 0)
  %19 = load i32, i32* %r, align 4, !tbaa !5
  %20 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr6 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %20, i32 0, i32 23
  %21 = load %struct.address*, %struct.address** %mci_nextaddr6, align 8, !tbaa !55
  %q_status = getelementptr inbounds %struct.address, %struct.address* %21, i32 0, i32 17
  %22 = load i8*, i8** %q_status, align 8, !tbaa !56
  %23 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %24 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %25 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %26 = load i64, i64* %xstart.addr, align 8, !tbaa !35
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %28 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  call void @giveresponse(i32 %19, i8* %22, %struct.mailer* %23, %struct.mailer_con_info* %24, %struct.address* %25, i64 %26, %struct.envelope* %27, %struct.address* %28)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %29 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr7 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %29, i32 0, i32 23
  %30 = load %struct.address*, %struct.address** %mci_nextaddr7, align 8, !tbaa !55
  %q_pchain = getelementptr inbounds %struct.address, %struct.address* %30, i32 0, i32 14
  %31 = load %struct.address*, %struct.address** %q_pchain, align 8, !tbaa !57
  %32 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr8 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %32, i32 0, i32 23
  store %struct.address* %31, %struct.address** %mci_nextaddr8, align 8, !tbaa !55
  %33 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %34, i32 0, i32 4
  %35 = load i16, i16* %mci_state, align 2, !tbaa !13
  %conv = sext i16 %35 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %while.end
  %36 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %36, i32 0, i32 1
  %37 = load i16, i16* %mci_errno, align 2, !tbaa !21
  %conv12 = sext i16 %37 to i32
  %call13 = call i32* @__errno_location() #8
  store i32 %conv12, i32* %call13, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %while.end
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %bufp, align 8, !tbaa !1
  %38 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %38, i32 0, i32 0
  %39 = load i64, i64* %mci_flags, align 8, !tbaa !17
  %and = and i64 %39, 2048
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.then.17, label %if.end.118

if.then.17:                                       ; preds = %if.end.14
  %40 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 51
  %41 = load i32, i32* %e_dlvr_flag, align 4, !tbaa !50
  %and18 = and i32 %41, 1
  %cmp19 = icmp ne i32 %and18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.then.17
  %42 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags21 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %42, i32 0, i32 0
  %43 = load i64, i64* %mci_flags21, align 8, !tbaa !17
  %and22 = and i64 %43, 4194304
  %cmp23 = icmp ne i64 %and22, 0
  br i1 %cmp23, label %if.end.49, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true
  %44 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %44, i32 0, i32 5
  %45 = load i64, i64* %q_flags, align 8, !tbaa !58
  %and26 = and i64 %45, 512
  %cmp27 = icmp ne i64 %and26, 0
  br i1 %cmp27, label %if.else, label %if.then.29

if.then.29:                                       ; preds = %if.then.25
  %46 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags30 = getelementptr inbounds %struct.address, %struct.address* %46, i32 0, i32 5
  %47 = load i64, i64* %q_flags30, align 8, !tbaa !58
  %or = or i64 %47, 896
  store i64 %or, i64* %q_flags30, align 8, !tbaa !58
  br label %if.end.48

if.else:                                          ; preds = %if.then.25
  %48 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags31 = getelementptr inbounds %struct.address, %struct.address* %48, i32 0, i32 5
  %49 = load i64, i64* %q_flags31, align 8, !tbaa !58
  %and32 = and i64 %49, 64
  %cmp33 = icmp ne i64 %and32, 0
  br i1 %cmp33, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %50 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags35 = getelementptr inbounds %struct.address, %struct.address* %50, i32 0, i32 5
  %51 = load i64, i64* %q_flags35, align 8, !tbaa !58
  %and36 = and i64 %51, 128
  %cmp37 = icmp ne i64 %and36, 0
  br i1 %cmp37, label %if.then.44, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false
  %52 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags40 = getelementptr inbounds %struct.address, %struct.address* %52, i32 0, i32 5
  %53 = load i64, i64* %q_flags40, align 8, !tbaa !58
  %and41 = and i64 %53, 256
  %cmp42 = icmp ne i64 %and41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false, %if.else
  %54 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags45 = getelementptr inbounds %struct.address, %struct.address* %54, i32 0, i32 5
  %55 = load i64, i64* %q_flags45, align 8, !tbaa !58
  %or46 = or i64 %55, 256
  store i64 %or46, i64* %q_flags45, align 8, !tbaa !58
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %lor.lhs.false.39
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.29
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true, %if.then.17
  %56 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags50 = getelementptr inbounds %struct.address, %struct.address* %56, i32 0, i32 5
  %57 = load i64, i64* %q_flags50, align 8, !tbaa !58
  %and51 = and i64 %57, 512
  %cmp52 = icmp ne i64 %and51, 0
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.98

land.lhs.true.54:                                 ; preds = %if.end.49
  %58 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags55 = getelementptr inbounds %struct.address, %struct.address* %58, i32 0, i32 5
  %59 = load i64, i64* %q_flags55, align 8, !tbaa !58
  %and56 = and i64 %59, 2
  %cmp57 = icmp ne i64 %and56, 0
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.98

land.lhs.true.59:                                 ; preds = %land.lhs.true.54
  %60 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %60, i32 0, i32 5
  %arrayidx60 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %61 = load i32, i32* %arrayidx60, align 4, !tbaa !5
  %and61 = and i32 %61, 4096
  %tobool = icmp ne i32 %and61, 0
  br i1 %tobool, label %if.end.98, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.59
  %62 = bitcast i32* %firstone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  store i32 1, i32* %firstone, align 4, !tbaa !5
  %63 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call63 = call i64 @sm_strlcat(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i64 2048)
  %64 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags64 = getelementptr inbounds %struct.address, %struct.address* %64, i32 0, i32 5
  %65 = load i64, i64* %q_flags64, align 8, !tbaa !58
  %and65 = and i64 %65, 64
  %cmp66 = icmp ne i64 %and65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.62
  %66 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call69 = call i64 @sm_strlcat(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i64 2048)
  store i32 0, i32* %firstone, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.then.62
  %67 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags71 = getelementptr inbounds %struct.address, %struct.address* %67, i32 0, i32 5
  %68 = load i64, i64* %q_flags71, align 8, !tbaa !58
  %and72 = and i64 %68, 128
  %cmp73 = icmp ne i64 %and72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.81

if.then.75:                                       ; preds = %if.end.70
  %69 = load i32, i32* %firstone, align 4, !tbaa !5
  %tobool76 = icmp ne i32 %69, 0
  br i1 %tobool76, label %if.end.79, label %if.then.77

if.then.77:                                       ; preds = %if.then.75
  %70 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call78 = call i64 @sm_strlcat(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i64 2048)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.then.75
  %71 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call80 = call i64 @sm_strlcat(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i64 2048)
  store i32 0, i32* %firstone, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.79, %if.end.70
  %72 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_flags82 = getelementptr inbounds %struct.address, %struct.address* %72, i32 0, i32 5
  %73 = load i64, i64* %q_flags82, align 8, !tbaa !58
  %and83 = and i64 %73, 256
  %cmp84 = icmp ne i64 %and83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.92

if.then.86:                                       ; preds = %if.end.81
  %74 = load i32, i32* %firstone, align 4, !tbaa !5
  %tobool87 = icmp ne i32 %74, 0
  br i1 %tobool87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %if.then.86
  %75 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call89 = call i64 @sm_strlcat(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i64 2048)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.then.86
  %76 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call91 = call i64 @sm_strlcat(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i64 2048)
  store i32 0, i32* %firstone, align 4, !tbaa !5
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.90, %if.end.81
  %77 = load i32, i32* %firstone, align 4, !tbaa !5
  %tobool93 = icmp ne i32 %77, 0
  br i1 %tobool93, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.92
  %78 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call95 = call i64 @sm_strlcat(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i64 2048)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.end.92
  %79 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call97 = call i64 @strlen(i8* %79) #9
  %80 = load i8*, i8** %bufp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %80, i64 %call97
  store i8* %add.ptr, i8** %bufp, align 8, !tbaa !1
  %81 = bitcast i32* %firstone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.96, %land.lhs.true.59, %land.lhs.true.54, %if.end.49
  %82 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_orcpt = getelementptr inbounds %struct.address, %struct.address* %82, i32 0, i32 16
  %83 = load i8*, i8** %q_orcpt, align 8, !tbaa !59
  %cmp99 = icmp ne i8* %83, null
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.117

land.lhs.true.101:                                ; preds = %if.end.98
  %84 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay102 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %84 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay102 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 2048, %sub.ptr.sub
  %85 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_orcpt103 = getelementptr inbounds %struct.address, %struct.address* %85, i32 0, i32 16
  %86 = load i8*, i8** %q_orcpt103, align 8, !tbaa !59
  %call104 = call i64 @strlen(i8* %86) #9
  %add = add i64 %call104, 7
  %cmp105 = icmp ugt i64 %sub, %add
  br i1 %cmp105, label %if.then.107, label %if.end.117

if.then.107:                                      ; preds = %land.lhs.true.101
  %87 = load i8*, i8** %bufp, align 8, !tbaa !1
  %88 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay108 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  %sub.ptr.lhs.cast109 = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast110 = ptrtoint i8* %arraydecay108 to i64
  %sub.ptr.sub111 = sub i64 %sub.ptr.lhs.cast109, %sub.ptr.rhs.cast110
  %sub112 = sub i64 2048, %sub.ptr.sub111
  %89 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_orcpt113 = getelementptr inbounds %struct.address, %struct.address* %89, i32 0, i32 16
  %90 = load i8*, i8** %q_orcpt113, align 8, !tbaa !59
  %call114 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %87, i64 %sub112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* %90)
  %91 = load i8*, i8** %bufp, align 8, !tbaa !1
  %call115 = call i64 @strlen(i8* %91) #9
  %92 = load i8*, i8** %bufp, align 8, !tbaa !1
  %add.ptr116 = getelementptr inbounds i8, i8* %92, i64 %call115
  store i8* %add.ptr116, i8** %bufp, align 8, !tbaa !1
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.107, %land.lhs.true.101, %if.end.98
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.14
  %93 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %94 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %95 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %95, i32 0, i32 1
  %96 = load i8*, i8** %q_user, align 8, !tbaa !60
  %arraydecay119 = getelementptr inbounds [2048 x i8], [2048 x i8]* %optbuf, i32 0, i32 0
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), %struct.mailer* %93, %struct.mailer_con_info* %94, i8* %96, i8* %arraydecay119)
  %97 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state120 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %97, i32 0, i32 4
  store i16 4, i16* %mci_state120, align 2, !tbaa !13
  %98 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %98, i32 0, i32 10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8** %mci_phase, align 8, !tbaa !14
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %99 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %100 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call121 = call i8* @qid_printname(%struct.envelope* %100)
  %101 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %102 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase122 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %102, i32 0, i32 10
  %103 = load i8*, i8** %mci_phase122, align 8, !tbaa !14
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %call121, i8* %101, i8* %103)
  %104 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags123 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %104, i32 0, i32 0
  %105 = load i64, i64* %mci_flags123, align 8, !tbaa !17
  %and124 = and i64 %105, 262144
  %cmp125 = icmp ne i64 %and124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.118
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.128:                                       ; preds = %if.end.118
  %106 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %107 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %108 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %109 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call129 = call i32 @smtprcptstat(%struct.address* %106, %struct.mailer* %107, %struct.mailer_con_info* %108, %struct.envelope* %109)
  store i32 %call129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.128, %if.then.127, %if.then.11
  %110 = bitcast [2048 x i8]* %optbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %110) #1
  %111 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = load i32, i32* %retval
  ret i32 %112
}

declare i32 @sm_io_getinfo(%struct.sm_file*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @smtprcptstat(%struct.address* %to, %struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca %struct.address*, align 8
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %r = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %enhsc = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %t = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.address* %to, %struct.address** %to.addr, align 8, !tbaa !1
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %3, i32 0, i32 4
  %4 = load i16, i16* %mci_state, align 2, !tbaa !13
  %conv = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %5, i32 0, i32 1
  %6 = load i16, i16* %mci_errno, align 2, !tbaa !21
  %conv2 = sext i16 %6 to i32
  %call = call i32* @__errno_location() #8
  store i32 %conv2, i32* %call, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8* null, i8** %enhsc, align 8, !tbaa !1
  %7 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %8 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %10 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 2), align 8, !tbaa !61
  %call3 = call i32 @reply(%struct.mailer* %7, %struct.mailer_con_info* %8, %struct.envelope* %9, i64 %10, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* null, i8** %enhsc, i32 6)
  store i32 %call3, i32* %r, align 4, !tbaa !5
  %call4 = call i32* @__errno_location() #8
  %11 = load i32, i32* %call4, align 4, !tbaa !5
  store i32 %11, i32* %save_errno, align 4, !tbaa !5
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 52
  %13 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !62
  %call5 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %13, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  %14 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_rstatus = getelementptr inbounds %struct.address, %struct.address* %14, i32 0, i32 18
  store i8* %call5, i8** %q_rstatus, align 8, !tbaa !63
  %15 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %15, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load i32, i32* %r, align 4, !tbaa !5
  %call8 = call i8* @smtptodsn(i32 %16)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool9 = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 52
  %18 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool9, align 8, !tbaa !62
  %19 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %call10 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %18, i8* %19)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call8, %cond.true ], [ %call10, %cond.false ]
  %20 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_status = getelementptr inbounds %struct.address, %struct.address* %20, i32 0, i32 17
  store i8* %cond, i8** %q_status, align 8, !tbaa !56
  %21 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %21, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %22 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %and = and i32 %22, 67108864
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %cond.end
  %23 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %23, i32 0, i32 12
  %24 = load i8*, i8** %mci_host, align 8, !tbaa !8
  %25 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_statmta = getelementptr inbounds %struct.address, %struct.address* %25, i32 0, i32 20
  store i8* %24, i8** %q_statmta, align 8, !tbaa !64
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %cond.end
  %26 = load i32, i32* %r, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %26, 0
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %27 = load i32, i32* %r, align 4, !tbaa !5
  %div = sdiv i32 %27, 100
  %cmp15 = icmp eq i32 %div, 4
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  %28 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_retryrcpt = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %28, i32 0, i32 19
  store i32 1, i32* %mci_retryrcpt, align 4, !tbaa !65
  %29 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call18 = call i32* @__errno_location() #8
  store i32 %29, i32* %call18, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %30 = load i32, i32* %r, align 4, !tbaa !5
  %div19 = sdiv i32 %30, 100
  %cmp20 = icmp eq i32 %div19, 2
  br i1 %cmp20, label %if.then.22, label %if.else.33

if.then.22:                                       ; preds = %if.else
  %31 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_tolist = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %32, i32 0, i32 20
  %33 = load i8*, i8** %mci_tolist, align 8, !tbaa !66
  store i8* %33, i8** %t, align 8, !tbaa !1
  %cmp23 = icmp ne i8* %33, null
  br i1 %cmp23, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %if.then.22
  %34 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %t, align 8, !tbaa !1
  store i8 44, i8* %35, align 1, !tbaa !7
  %36 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %36, i32 0, i32 0
  %37 = load i8*, i8** %q_paddr, align 8, !tbaa !67
  store i8* %37, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !7
  %conv26 = sext i8 %39 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr29, i8** %p, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !7
  %42 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr30 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr30, i8** %t, align 8, !tbaa !1
  store i8 %41, i8* %42, align 1, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i8*, i8** %t, align 8, !tbaa !1
  store i8 0, i8* %43, align 1, !tbaa !7
  %44 = load i8*, i8** %t, align 8, !tbaa !1
  %45 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_tolist31 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %45, i32 0, i32 20
  store i8* %44, i8** %mci_tolist31, align 8, !tbaa !66
  %46 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %if.then.22
  %47 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_okrcpts = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %47, i32 0, i32 22
  %48 = load i32, i32* %mci_okrcpts, align 4, !tbaa !23
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %mci_okrcpts, align 4, !tbaa !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %49 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  br label %cleanup

if.else.33:                                       ; preds = %if.else
  %50 = load i32, i32* %r, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %50, 550
  br i1 %cmp34, label %if.then.36, label %if.else.46

if.then.36:                                       ; preds = %if.else.33
  %51 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp37 = icmp eq i8* %51, null
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %if.then.36
  br label %cond.end.43

cond.false.40:                                    ; preds = %if.then.36
  %52 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool41 = getelementptr inbounds %struct.envelope, %struct.envelope* %52, i32 0, i32 52
  %53 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool41, align 8, !tbaa !62
  %54 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %call42 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %53, i8* %54)
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.40, %cond.true.39
  %cond44 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), %cond.true.39 ], [ %call42, %cond.false.40 ]
  %55 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_status45 = getelementptr inbounds %struct.address, %struct.address* %55, i32 0, i32 17
  store i8* %cond44, i8** %q_status45, align 8, !tbaa !56
  store i32 67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.46:                                       ; preds = %if.else.33
  %56 = load i32, i32* %r, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %56, 551
  br i1 %cmp47, label %if.then.49, label %if.else.59

if.then.49:                                       ; preds = %if.else.46
  %57 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp50 = icmp eq i8* %57, null
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %if.then.49
  br label %cond.end.56

cond.false.53:                                    ; preds = %if.then.49
  %58 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool54 = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 52
  %59 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool54, align 8, !tbaa !62
  %60 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %call55 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %59, i8* %60)
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.53, %cond.true.52
  %cond57 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), %cond.true.52 ], [ %call55, %cond.false.53 ]
  %61 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_status58 = getelementptr inbounds %struct.address, %struct.address* %61, i32 0, i32 17
  store i8* %cond57, i8** %q_status58, align 8, !tbaa !56
  store i32 67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.59:                                       ; preds = %if.else.46
  %62 = load i32, i32* %r, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %62, 553
  br i1 %cmp60, label %if.then.62, label %if.else.72

if.then.62:                                       ; preds = %if.else.59
  %63 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp63 = icmp eq i8* %63, null
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %if.then.62
  br label %cond.end.69

cond.false.66:                                    ; preds = %if.then.62
  %64 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool67 = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 52
  %65 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool67, align 8, !tbaa !62
  %66 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %call68 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %65, i8* %66)
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.66, %cond.true.65
  %cond70 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), %cond.true.65 ], [ %call68, %cond.false.66 ]
  %67 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_status71 = getelementptr inbounds %struct.address, %struct.address* %67, i32 0, i32 17
  store i8* %cond70, i8** %q_status71, align 8, !tbaa !56
  store i32 67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.72:                                       ; preds = %if.else.59
  %68 = load i32, i32* %r, align 4, !tbaa !5
  %div73 = sdiv i32 %68, 100
  %cmp74 = icmp eq i32 %div73, 5
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.else.72
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %if.else.72
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81
  %69 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp83 = icmp sgt i32 %69, 1
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.82
  %70 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %70, i32 0, i32 25
  %71 = load i8*, i8** %e_id, align 8, !tbaa !30
  %72 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %call86 = call i8* @shortenstring(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0), i64 403)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 2, i8* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.103, i32 0, i32 0), i8* %72, i8* %call86)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end.82
  %73 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %74 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp88 = icmp eq i8* %74, null
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %if.end.87
  br label %cond.end.92

cond.false.91:                                    ; preds = %if.end.87
  %75 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.90
  %cond93 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), %cond.true.90 ], [ %75, %cond.false.91 ]
  call void @mci_setstat(%struct.mailer_con_info* %73, i32 76, i8* %cond93, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  store i32 76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.92, %if.then.76, %cond.end.69, %cond.end.56, %cond.end.43, %if.end.32, %if.then.17, %if.then
  %76 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

declare void @markfailure(%struct.envelope*, %struct.address*, %struct.mailer_con_info*, i32, i32) #2

declare void @giveresponse(i32, i8*, %struct.mailer*, %struct.mailer_con_info*, %struct.address*, i64, %struct.envelope*, %struct.address*) #2

declare i64 @sm_strlcat(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @smtpdata(%struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e, %struct.address* %ctladdr, i64 %xstart) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %ctladdr.addr = alloca %struct.address*, align 8
  %xstart.addr = alloca i64, align 8
  %r = alloca i32, align 4
  %rstat = alloca i32, align 4
  %xstat = alloca i32, align 4
  %timeout = alloca i32, align 4
  %enhsc = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %oldto = alloca i8*, align 8
  %r9 = alloca i32, align 4
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.address* %ctladdr, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  store i64 %xstart, i64* %xstart.addr, align 8, !tbaa !35
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %xstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %timeout to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %5, i32 0, i32 4
  %6 = load i16, i16* %mci_state, align 2, !tbaa !13
  %conv = sext i16 %6 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %7, i32 0, i32 1
  %8 = load i16, i16* %mci_errno, align 2, !tbaa !21
  %conv2 = sext i16 %8 to i32
  %call = call i32* @__errno_location() #8
  store i32 %conv2, i32* %call, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

if.end:                                           ; preds = %entry
  store i8* null, i8** %enhsc, align 8, !tbaa !1
  %9 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %10 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), %struct.mailer* %9, %struct.mailer_con_info* %10)
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %11, i32 0, i32 23
  %12 = load %struct.address*, %struct.address** %mci_nextaddr, align 8, !tbaa !55
  %cmp3 = icmp ne %struct.address* %12, null
  br i1 %cmp3, label %if.then.5, label %if.end.38

if.then.5:                                        ; preds = %if.end
  %13 = bitcast i8** %oldto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 3
  %15 = load i8*, i8** %e_to, align 8, !tbaa !40
  store i8* %15, i8** %oldto, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %if.then.5
  %16 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr6 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %16, i32 0, i32 23
  %17 = load %struct.address*, %struct.address** %mci_nextaddr6, align 8, !tbaa !55
  %cmp7 = icmp ne %struct.address* %17, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = bitcast i32* %r9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr10 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %19, i32 0, i32 23
  %20 = load %struct.address*, %struct.address** %mci_nextaddr10, align 8, !tbaa !55
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %20, i32 0, i32 0
  %21 = load i8*, i8** %q_paddr, align 8, !tbaa !67
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to11 = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 3
  store i8* %21, i8** %e_to11, align 8, !tbaa !40
  %23 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr12 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %23, i32 0, i32 23
  %24 = load %struct.address*, %struct.address** %mci_nextaddr12, align 8, !tbaa !55
  %25 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %26 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call13 = call i32 @smtprcptstat(%struct.address* %24, %struct.mailer* %25, %struct.mailer_con_info* %26, %struct.envelope* %27)
  store i32 %call13, i32* %r9, align 4, !tbaa !5
  %28 = load i32, i32* %r9, align 4, !tbaa !5
  %cmp14 = icmp ne i32 %28, 0
  br i1 %cmp14, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %while.body
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %30 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr17 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %30, i32 0, i32 23
  %31 = load %struct.address*, %struct.address** %mci_nextaddr17, align 8, !tbaa !55
  %32 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %33 = load i32, i32* %r9, align 4, !tbaa !5
  call void @markfailure(%struct.envelope* %29, %struct.address* %31, %struct.mailer_con_info* %32, i32 %33, i32 0)
  %34 = load i32, i32* %r9, align 4, !tbaa !5
  %35 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr18 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %35, i32 0, i32 23
  %36 = load %struct.address*, %struct.address** %mci_nextaddr18, align 8, !tbaa !55
  %q_status = getelementptr inbounds %struct.address, %struct.address* %36, i32 0, i32 17
  %37 = load i8*, i8** %q_status, align 8, !tbaa !56
  %38 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %39 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %40 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %41 = load i64, i64* %xstart.addr, align 8, !tbaa !35
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %43 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr19 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %43, i32 0, i32 23
  %44 = load %struct.address*, %struct.address** %mci_nextaddr19, align 8, !tbaa !55
  call void @giveresponse(i32 %34, i8* %37, %struct.mailer* %38, %struct.mailer_con_info* %39, %struct.address* %40, i64 %41, %struct.envelope* %42, %struct.address* %44)
  %45 = load i32, i32* %r9, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %45, 75
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.16
  %46 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr23 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %46, i32 0, i32 23
  %47 = load %struct.address*, %struct.address** %mci_nextaddr23, align 8, !tbaa !55
  %q_state = getelementptr inbounds %struct.address, %struct.address* %47, i32 0, i32 21
  store i16 4, i16* %q_state, align 2, !tbaa !68
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.16
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %while.body
  %48 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr26 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %48, i32 0, i32 23
  %49 = load %struct.address*, %struct.address** %mci_nextaddr26, align 8, !tbaa !55
  %q_pchain = getelementptr inbounds %struct.address, %struct.address* %49, i32 0, i32 14
  %50 = load %struct.address*, %struct.address** %q_pchain, align 8, !tbaa !57
  %51 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_nextaddr27 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %51, i32 0, i32 23
  store %struct.address* %50, %struct.address** %mci_nextaddr27, align 8, !tbaa !55
  %52 = bitcast i32* %r9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %53 = load i8*, i8** %oldto, align 8, !tbaa !1
  %54 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to28 = getelementptr inbounds %struct.envelope, %struct.envelope* %54, i32 0, i32 3
  store i8* %53, i8** %e_to28, align 8, !tbaa !40
  %55 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state29 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %55, i32 0, i32 4
  %56 = load i16, i16* %mci_state29, align 2, !tbaa !13
  %conv30 = sext i16 %56 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %while.end
  %57 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno34 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %57, i32 0, i32 1
  %58 = load i16, i16* %mci_errno34, align 2, !tbaa !21
  %conv35 = sext i16 %58 to i32
  %call36 = call i32* @__errno_location() #8
  store i32 %conv35, i32* %call36, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.33
  %59 = bitcast i8** %oldto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.244 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %if.end
  %60 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %60, i32 0, i32 10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8** %mci_phase, align 8, !tbaa !14
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %61 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state39 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %61, i32 0, i32 4
  store i16 5, i16* %mci_state39, align 2, !tbaa !13
  %62 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %63 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call40 = call i8* @qid_printname(%struct.envelope* %63)
  %64 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %65 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase41 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %65, i32 0, i32 10
  %66 = load i8*, i8** %mci_phase41, align 8, !tbaa !14
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %call40, i8* %64, i8* %66)
  %67 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %68 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %69 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %70 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 3), align 8, !tbaa !69
  %call42 = call i32 @reply(%struct.mailer* %67, %struct.mailer_con_info* %68, %struct.envelope* %69, i64 %70, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* null, i8** %enhsc, i32 7)
  store i32 %call42, i32* %r, align 4, !tbaa !5
  %71 = load i32, i32* %r, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %71, 0
  br i1 %cmp43, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.38
  %72 = load i32, i32* %r, align 4, !tbaa !5
  %div = sdiv i32 %72, 100
  %cmp45 = icmp eq i32 %div, 4
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %lor.lhs.false, %if.end.38
  %73 = load i32, i32* %r, align 4, !tbaa !5
  %cmp48 = icmp sge i32 %73, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.47
  %74 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %75 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %76 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %74, %struct.mailer_con_info* %75, %struct.envelope* %76)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.then.47
  %77 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno52 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %77, i32 0, i32 1
  %78 = load i16, i16* %mci_errno52, align 2, !tbaa !21
  %conv53 = sext i16 %78 to i32
  %call54 = call i32* @__errno_location() #8
  store i32 %conv53, i32* %call54, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

if.else:                                          ; preds = %lor.lhs.false
  %79 = load i32, i32* %r, align 4, !tbaa !5
  %div55 = sdiv i32 %79, 100
  %cmp56 = icmp eq i32 %div55, 5
  br i1 %cmp56, label %if.then.58, label %if.else.63

if.then.58:                                       ; preds = %if.else
  %80 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %81 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %82 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtprset(%struct.mailer* %80, %struct.mailer_con_info* %81, %struct.envelope* %82)
  %83 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_okrcpts = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %83, i32 0, i32 22
  %84 = load i32, i32* %mci_okrcpts, align 4, !tbaa !23
  %cmp59 = icmp sle i32 %84, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.58
  %85 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_retryrcpt = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %85, i32 0, i32 19
  %86 = load i32, i32* %mci_retryrcpt, align 4, !tbaa !65
  %tobool = icmp ne i32 %86, 0
  %cond = select i1 %tobool, i32 75, i32 69
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

if.end.62:                                        ; preds = %if.then.58
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

if.else.63:                                       ; preds = %if.else
  %87 = load i32, i32* %r, align 4, !tbaa !5
  %div64 = sdiv i32 %87, 100
  %cmp65 = icmp ne i32 %div64, 3
  br i1 %cmp65, label %if.then.67, label %if.end.84

if.then.67:                                       ; preds = %if.else.63
  %88 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp68 = icmp sgt i32 %88, 1
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.then.67
  %89 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %89, i32 0, i32 25
  %90 = load i8*, i8** %e_id, align 8, !tbaa !30
  %91 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %call71 = call i8* @shortenstring(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0), i64 403)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 2, i8* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i32 0, i32 0), i8* %91, i8* %call71)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.then.67
  %92 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %93 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %94 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtprset(%struct.mailer* %92, %struct.mailer_con_info* %93, %struct.envelope* %94)
  %95 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %96 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp73 = icmp eq i8* %96, null
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.72
  br label %cond.end

cond.false:                                       ; preds = %if.end.72
  %97 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond75 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), %cond.true ], [ %97, %cond.false ]
  call void @mci_setstat(%struct.mailer_con_info* %95, i32 76, i8* %cond75, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  %98 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_okrcpts76 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %98, i32 0, i32 22
  %99 = load i32, i32* %mci_okrcpts76, align 4, !tbaa !23
  %cmp77 = icmp sle i32 %99, 0
  br i1 %cmp77, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %cond.end
  %100 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_retryrcpt80 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %100, i32 0, i32 19
  %101 = load i32, i32* %mci_retryrcpt80, align 4, !tbaa !65
  %tobool81 = icmp ne i32 %101, 0
  %cond82 = select i1 %tobool81, i32 75, i32 76
  store i32 %cond82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

if.end.83:                                        ; preds = %cond.end
  store i32 76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

if.end.84:                                        ; preds = %if.else.63
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85
  %102 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_okrcpts87 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %102, i32 0, i32 22
  %103 = load i32, i32* %mci_okrcpts87, align 4, !tbaa !23
  %cmp88 = icmp sgt i32 %103, 0
  br i1 %cmp88, label %if.then.90, label %if.end.115

if.then.90:                                       ; preds = %if.end.86
  %104 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 18), align 1, !tbaa !7
  %conv91 = zext i8 %104 to i32
  %cmp92 = icmp sge i32 %conv91, 101
  br i1 %cmp92, label %land.lhs.true, label %if.else.96

land.lhs.true:                                    ; preds = %if.then.90
  %105 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool94 = icmp ne i32 %105, 0
  br i1 %tobool94, label %if.else.96, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true
  store i32 10, i32* %timeout, align 4, !tbaa !5
  br label %if.end.97

if.else.96:                                       ; preds = %land.lhs.true, %if.then.90
  store i32 300000, i32* %timeout, align 4, !tbaa !5
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.96, %if.then.95
  %106 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %106, i32 0, i32 8
  %107 = load %struct.sm_file*, %struct.sm_file** %mci_out, align 8, !tbaa !36
  %108 = bitcast i32* %timeout to i8*
  %call98 = call i32 @sm_io_setinfo(%struct.sm_file* %107, i32 7, i8* %108)
  %109 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_puthdr = getelementptr inbounds %struct.envelope, %struct.envelope* %109, i32 0, i32 19
  %110 = load i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)** %e_puthdr, align 8, !tbaa !70
  %111 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %112 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %112, i32 0, i32 0
  %113 = load %struct.header*, %struct.header** %e_header, align 8, !tbaa !71
  %114 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call99 = call i32 %110(%struct.mailer_con_info* %111, %struct.header* %113, %struct.envelope* %114, i32 0)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %if.end.97
  br label %writeerr

if.end.102:                                       ; preds = %if.end.97
  %115 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 18), align 1, !tbaa !7
  %conv103 = zext i8 %115 to i32
  %cmp104 = icmp sge i32 %conv103, 101
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.110

land.lhs.true.106:                                ; preds = %if.end.102
  %116 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool107 = icmp ne i32 %116, 0
  br i1 %tobool107, label %if.end.110, label %if.then.108

if.then.108:                                      ; preds = %land.lhs.true.106
  %call109 = call i32 @sleep(i32 2)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %land.lhs.true.106, %if.end.102
  %117 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_putbody = getelementptr inbounds %struct.envelope, %struct.envelope* %117, i32 0, i32 20
  %118 = load i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)** %e_putbody, align 8, !tbaa !72
  %119 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %120 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call111 = call i32 %118(%struct.mailer_con_info* %119, %struct.envelope* %120, i8* null)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %if.end.110
  br label %writeerr

if.end.114:                                       ; preds = %if.end.110
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.86
  %121 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out116 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %121, i32 0, i32 8
  %122 = load %struct.sm_file*, %struct.sm_file** %mci_out116, align 8, !tbaa !36
  %f_flags = getelementptr inbounds %struct.sm_file, %struct.sm_file* %122, i32 0, i32 4
  %123 = load i64, i64* %f_flags, align 8, !tbaa !73
  %and = and i64 %123, 256
  %cmp117 = icmp ne i64 %and, 0
  br i1 %cmp117, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %if.end.115
  %124 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno120 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %124, i32 0, i32 1
  store i16 5, i16* %mci_errno120, align 2, !tbaa !21
  %125 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state121 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %125, i32 0, i32 4
  store i16 8, i16* %mci_state121, align 2, !tbaa !13
  %126 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %126, i32 74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %127 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %128 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %129 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %127, %struct.mailer_con_info* %128, %struct.envelope* %129)
  store i32 74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

if.end.122:                                       ; preds = %if.end.115
  %130 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out123 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %130, i32 0, i32 8
  %131 = load %struct.sm_file*, %struct.sm_file** %mci_out123, align 8, !tbaa !36
  %132 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %132, i32 0, i32 0
  %133 = load i64, i64* %mci_flags, align 8, !tbaa !17
  %and124 = and i64 %133, 16777216
  %cmp125 = icmp ne i64 %and124, 0
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %if.end.122
  %134 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_eol = getelementptr inbounds %struct.mailer, %struct.mailer* %134, i32 0, i32 13
  %135 = load i8*, i8** %m_eol, align 8, !tbaa !42
  br label %cond.end.129

cond.false.128:                                   ; preds = %if.end.122
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.127
  %cond130 = phi i8* [ %135, %cond.true.127 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0), %cond.false.128 ]
  %136 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_eol131 = getelementptr inbounds %struct.mailer, %struct.mailer* %136, i32 0, i32 13
  %137 = load i8*, i8** %m_eol131, align 8, !tbaa !42
  %call132 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %131, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* %cond130, i8* %137)
  %cmp133 = icmp eq i32 %call132, -1
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %cond.end.129
  br label %writeerr

if.end.136:                                       ; preds = %cond.end.129
  %138 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp137 = icmp ne %struct.sm_file* %138, null
  br i1 %cmp137, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %if.end.136
  %139 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %140 = load i32, i32* @CurrentPid, align 4, !tbaa !5
  %call140 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %139, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 %140)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %if.end.136
  %141 = load i32, i32* @Verbose, align 4, !tbaa !5
  %tobool142 = icmp ne i32 %141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.141
  call void (i8*, ...) @nmessage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %if.end.141
  %142 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase145 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %142, i32 0, i32 10
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i32 0, i32 0), i8** %mci_phase145, align 8, !tbaa !14
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %143 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %144 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call146 = call i8* @qid_printname(%struct.envelope* %144)
  %145 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %146 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase147 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %146, i32 0, i32 10
  %147 = load i8*, i8** %mci_phase147, align 8, !tbaa !14
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %call146, i8* %145, i8* %147)
  %148 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %148, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %149 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %and148 = and i32 %149, 67108864
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.144
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

if.end.151:                                       ; preds = %if.end.144
  %150 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %151 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %152 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %153 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 5), align 8, !tbaa !76
  %call152 = call i32 @reply(%struct.mailer* %150, %struct.mailer_con_info* %151, %struct.envelope* %152, i64 %153, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* null, i8** %enhsc, i32 8)
  store i32 %call152, i32* %r, align 4, !tbaa !5
  %154 = load i32, i32* %r, align 4, !tbaa !5
  %cmp153 = icmp slt i32 %154, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.151
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

if.end.156:                                       ; preds = %if.end.151
  %155 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state157 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %155, i32 0, i32 4
  %156 = load i16, i16* %mci_state157, align 2, !tbaa !13
  %conv158 = sext i16 %156 to i32
  %cmp159 = icmp eq i32 %conv158, 5
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.end.156
  %157 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state162 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %157, i32 0, i32 4
  store i16 2, i16* %mci_state162, align 2, !tbaa !13
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %if.end.156
  store i32 -5, i32* %xstat, align 4, !tbaa !5
  %158 = load i32, i32* %r, align 4, !tbaa !5
  %cmp164 = icmp eq i32 %158, 452
  br i1 %cmp164, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %if.end.163
  store i32 75, i32* %rstat, align 4, !tbaa !5
  br label %if.end.192

if.else.167:                                      ; preds = %if.end.163
  %159 = load i32, i32* %r, align 4, !tbaa !5
  %div168 = sdiv i32 %159, 100
  %cmp169 = icmp eq i32 %div168, 4
  br i1 %cmp169, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %if.else.167
  store i32 75, i32* %xstat, align 4, !tbaa !5
  store i32 75, i32* %rstat, align 4, !tbaa !5
  br label %if.end.191

if.else.172:                                      ; preds = %if.else.167
  %160 = load i32, i32* %r, align 4, !tbaa !5
  %div173 = sdiv i32 %160, 100
  %cmp174 = icmp eq i32 %div173, 2
  br i1 %cmp174, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %if.else.172
  store i32 0, i32* %xstat, align 4, !tbaa !5
  store i32 0, i32* %rstat, align 4, !tbaa !5
  br label %if.end.190

if.else.177:                                      ; preds = %if.else.172
  %161 = load i32, i32* %r, align 4, !tbaa !5
  %div178 = sdiv i32 %161, 10
  %rem = srem i32 %div178, 10
  %cmp179 = icmp ne i32 %rem, 5
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %if.else.177
  store i32 76, i32* %xstat, align 4, !tbaa !5
  store i32 76, i32* %rstat, align 4, !tbaa !5
  br label %if.end.189

if.else.182:                                      ; preds = %if.else.177
  %162 = load i32, i32* %r, align 4, !tbaa !5
  %div183 = sdiv i32 %162, 100
  %cmp184 = icmp eq i32 %div183, 5
  br i1 %cmp184, label %if.then.186, label %if.else.187

if.then.186:                                      ; preds = %if.else.182
  store i32 69, i32* %rstat, align 4, !tbaa !5
  br label %if.end.188

if.else.187:                                      ; preds = %if.else.182
  store i32 76, i32* %rstat, align 4, !tbaa !5
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.187, %if.then.186
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.then.181
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.176
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.171
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.166
  %163 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %164 = load i32, i32* %xstat, align 4, !tbaa !5
  %165 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp193 = icmp eq i8* %165, null
  br i1 %cmp193, label %cond.true.195, label %cond.false.197

cond.true.195:                                    ; preds = %if.end.192
  %166 = load i32, i32* %r, align 4, !tbaa !5
  %call196 = call i8* @smtptodsn(i32 %166)
  br label %cond.end.198

cond.false.197:                                   ; preds = %if.end.192
  %167 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.197, %cond.true.195
  %cond199 = phi i8* [ %call196, %cond.true.195 ], [ %167, %cond.false.197 ]
  call void @mci_setstat(%struct.mailer_con_info* %163, i32 %164, i8* %cond199, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  %168 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags200 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %168, i32 0, i32 0
  %169 = load i64, i64* %mci_flags200, align 8, !tbaa !17
  %and201 = and i64 %169, 131072
  %cmp202 = icmp ne i64 %and201, 0
  br i1 %cmp202, label %land.lhs.true.204, label %if.else.209

land.lhs.true.204:                                ; preds = %cond.end.198
  %call205 = call i32 @isenhsc(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i64 4), i32 32)
  store i32 %call205, i32* %r, align 4, !tbaa !5
  %cmp206 = icmp sgt i32 %call205, 0
  br i1 %cmp206, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %land.lhs.true.204
  %170 = load i32, i32* %r, align 4, !tbaa !5
  %add = add nsw i32 %170, 5
  store i32 %add, i32* %r, align 4, !tbaa !5
  br label %if.end.210

if.else.209:                                      ; preds = %land.lhs.true.204, %cond.end.198
  store i32 4, i32* %r, align 4, !tbaa !5
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.209, %if.then.208
  %171 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %171, i32 0, i32 52
  %172 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !62
  %173 = load i32, i32* %r, align 4, !tbaa !5
  %idxprom = sext i32 %173 to i64
  %arrayidx211 = getelementptr inbounds [2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i64 %idxprom
  %call212 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %172, i8* %arrayidx211)
  %174 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_statmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %174, i32 0, i32 35
  store i8* %call212, i8** %e_statmsg, align 8, !tbaa !77
  %175 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase213 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %175, i32 0, i32 10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8** %mci_phase213, align 8, !tbaa !14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %176 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %177 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %178 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase214 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %178, i32 0, i32 10
  %179 = load i8*, i8** %mci_phase214, align 8, !tbaa !14
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* %177, i8* %179)
  %180 = load i32, i32* %rstat, align 4, !tbaa !5
  %cmp215 = icmp ne i32 %180, 76
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.end.210
  %181 = load i32, i32* %rstat, align 4, !tbaa !5
  store i32 %181, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

if.end.218:                                       ; preds = %if.end.210
  %182 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp219 = icmp sgt i32 %182, 1
  br i1 %cmp219, label %if.then.221, label %if.end.224

if.then.221:                                      ; preds = %if.end.218
  %183 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id222 = getelementptr inbounds %struct.envelope, %struct.envelope* %183, i32 0, i32 25
  %184 = load i8*, i8** %e_id222, align 8, !tbaa !30
  %185 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %call223 = call i8* @shortenstring(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0), i64 403)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 2, i8* %184, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.59, i32 0, i32 0), i8* %185, i8* %call223)
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.221, %if.end.218
  %186 = load i32, i32* %rstat, align 4, !tbaa !5
  store i32 %186, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

writeerr:                                         ; preds = %if.then.135, %if.then.113, %if.then.101
  %call225 = call i32* @__errno_location() #8
  %187 = load i32, i32* %call225, align 4, !tbaa !5
  %conv226 = trunc i32 %187 to i16
  %188 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno227 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %188, i32 0, i32 1
  store i16 %conv226, i16* %mci_errno227, align 2, !tbaa !21
  %189 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state228 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %189, i32 0, i32 4
  store i16 8, i16* %mci_state228, align 2, !tbaa !13
  %190 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %191 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags229 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %191, i32 0, i32 0
  %192 = load i64, i64* %mci_flags229, align 8, !tbaa !17
  %and230 = and i64 %192, 0
  %cmp231 = icmp ne i64 %and230, 0
  %cond233 = select i1 %cmp231, i32 -5, i32 75
  call void @mci_setstat(%struct.mailer_con_info* %190, i32 %cond233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %193 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags234 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %193, i32 0, i32 0
  %194 = load i64, i64* %mci_flags234, align 8, !tbaa !17
  store i64 %194, i64* %mci_flags234, align 8, !tbaa !17
  %195 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %195, i32 0, i32 24
  %196 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !78
  %cmp235 = icmp ne %struct.sm_file* %196, null
  br i1 %cmp235, label %if.then.237, label %if.end.240

if.then.237:                                      ; preds = %writeerr
  %197 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp238 = getelementptr inbounds %struct.envelope, %struct.envelope* %197, i32 0, i32 24
  %198 = load %struct.sm_file*, %struct.sm_file** %e_dfp238, align 8, !tbaa !78
  %call239 = call i32 @bfrewind(%struct.sm_file* %198)
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.237, %writeerr
  %199 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno241 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %199, i32 0, i32 1
  %200 = load i16, i16* %mci_errno241, align 2, !tbaa !21
  %conv242 = sext i16 %200 to i32
  %call243 = call i32* @__errno_location() #8
  store i32 %conv242, i32* %call243, align 4, !tbaa !5
  %201 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i32 0, i32 0), i8* %201)
  %202 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %203 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %204 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %202, %struct.mailer_con_info* %203, %struct.envelope* %204)
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.244

cleanup.244:                                      ; preds = %if.end.240, %if.end.224, %if.then.217, %if.then.155, %if.then.150, %if.then.119, %if.end.83, %if.then.79, %if.end.62, %if.then.61, %if.end.51, %cleanup, %if.then
  %205 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %timeout to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %xstat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %rstat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = load i32, i32* %retval
  ret i32 %210
}

declare i32 @sm_io_setinfo(%struct.sm_file*, i32, i8*) #2

declare i32 @sleep(i32) #2

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

declare void @nmessage(i8*, ...) #2

declare i32 @isenhsc(i8*, i32) #2

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #2

declare i32 @bfrewind(%struct.sm_file*) #2

; Function Attrs: nounwind uwtable
define i32 @smtpgetstat(%struct.mailer* %m, %struct.mailer_con_info* %mci, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.mailer*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %r = alloca i32, align 4
  %off = alloca i32, align 4
  %status = alloca i32, align 4
  %xstat = alloca i32, align 4
  %enhsc = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %xstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* null, i8** %enhsc, align 8, !tbaa !1
  %5 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %6 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %8 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 5), align 8, !tbaa !76
  %call = call i32 @reply(%struct.mailer* %5, %struct.mailer_con_info* %6, %struct.envelope* %7, i64 %8, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* null, i8** %enhsc, i32 9)
  store i32 %call, i32* %r, align 4, !tbaa !5
  %9 = load i32, i32* %r, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 -5, i32* %xstat, align 4, !tbaa !5
  %10 = load i32, i32* %r, align 4, !tbaa !5
  %div = sdiv i32 %10, 100
  %cmp1 = icmp eq i32 %div, 4
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 75, i32* %status, align 4, !tbaa !5
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %r, align 4, !tbaa !5
  %div3 = sdiv i32 %11, 100
  %cmp4 = icmp eq i32 %div3, 2
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %xstat, align 4, !tbaa !5
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %if.end.17

if.else.6:                                        ; preds = %if.else
  %12 = load i32, i32* %r, align 4, !tbaa !5
  %div7 = sdiv i32 %12, 10
  %rem = srem i32 %div7, 10
  %cmp8 = icmp ne i32 %rem, 5
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.6
  store i32 76, i32* %xstat, align 4, !tbaa !5
  store i32 76, i32* %status, align 4, !tbaa !5
  br label %if.end.16

if.else.10:                                       ; preds = %if.else.6
  %13 = load i32, i32* %r, align 4, !tbaa !5
  %div11 = sdiv i32 %13, 100
  %cmp12 = icmp eq i32 %div11, 5
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.10
  store i32 69, i32* %status, align 4, !tbaa !5
  br label %if.end.15

if.else.14:                                       ; preds = %if.else.10
  store i32 76, i32* %status, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.5
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.2
  %14 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %14, i32 0, i32 0
  %15 = load i64, i64* %mci_flags, align 8, !tbaa !17
  %and = and i64 %15, 131072
  %cmp19 = icmp ne i64 %and, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else.23

land.lhs.true:                                    ; preds = %if.end.18
  %call20 = call i32 @isenhsc(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i64 4), i32 32)
  store i32 %call20, i32* %off, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %off, align 4, !tbaa !5
  %add = add nsw i32 %16, 5
  store i32 %add, i32* %off, align 4, !tbaa !5
  br label %if.end.24

if.else.23:                                       ; preds = %land.lhs.true, %if.end.18
  store i32 4, i32* %off, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 52
  %18 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !62
  %19 = load i32, i32* %off, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i64 %idxprom
  %call25 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %18, i8* %arrayidx)
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_statmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 35
  store i8* %call25, i8** %e_statmsg, align 8, !tbaa !77
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %22 = load i32, i32* %xstat, align 4, !tbaa !5
  %23 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %cmp26 = icmp eq i8* %23, null
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %24 = load i32, i32* %r, align 4, !tbaa !5
  %call27 = call i8* @smtptodsn(i32 %24)
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %25 = load i8*, i8** %enhsc, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call27, %cond.true ], [ %25, %cond.false ]
  call void @mci_setstat(%struct.mailer_con_info* %21, i32 %22, i8* %cond, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0))
  %26 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %26, 1
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.33

land.lhs.true.29:                                 ; preds = %cond.end
  %27 = load i32, i32* %status, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %27, 76
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %land.lhs.true.29
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 25
  %29 = load i8*, i8** %e_id, align 8, !tbaa !30
  %30 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %call32 = call i8* @shortenstring(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @SmtpReplyBuffer, i32 0, i32 0), i64 403)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 2, i8* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i32 0, i32 0), i8* %30, i8* %call32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true.29, %cond.end
  %31 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then
  %32 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %xstat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare void @mci_close(%struct.mailer_con_info*, i8*) #2

declare i32 @endmailer(%struct.mailer_con_info*, %struct.envelope*, i8**) #2

; Function Attrs: nounwind uwtable
define i32 @smtpprobe(%struct.mailer_con_info* %mci) #0 {
entry:
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %r = alloca i32, align 4
  %m = alloca %struct.mailer*, align 8
  %e = alloca %struct.envelope*, align 8
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.mailer** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %2, i32 0, i32 11
  %3 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !27
  store %struct.mailer* %3, %struct.mailer** %m, align 8, !tbaa !1
  %4 = bitcast %struct.envelope** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %5, i32 0, i32 12
  %6 = load i8*, i8** %mci_host, align 8, !tbaa !8
  store i8* %6, i8** @CurHostName, align 8, !tbaa !1
  %7 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  store i8* %8, i8** @CurHostName, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.envelope* @BlankEnvelope, %struct.envelope** %e, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %9 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %10 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void (i8*, %struct.mailer*, %struct.mailer_con_info*, ...) @smtpmessage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %struct.mailer* %9, %struct.mailer_con_info* %10)
  %11 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %13 = load %struct.envelope*, %struct.envelope** %e, align 8, !tbaa !1
  %14 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 13), align 8, !tbaa !22
  %call = call i32 @reply(%struct.mailer* %11, %struct.mailer_con_info* %12, %struct.envelope* %13, i64 %14, void (i8*, i32, %struct.mailer*, %struct.mailer_con_info*, %struct.envelope*)* null, i8** null, i32 0)
  store i32 %call, i32* %r, align 4, !tbaa !5
  %15 = load i32, i32* %r, align 4, !tbaa !5
  %div = sdiv i32 %15, 100
  %cmp1 = icmp ne i32 %div, 2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %16 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %17 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %18 = load %struct.envelope*, %struct.envelope** %e, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %16, %struct.mailer_con_info* %17, %struct.envelope* %18)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %19 = load i32, i32* %r, align 4, !tbaa !5
  %20 = bitcast %struct.envelope** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.mailer** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret i32 %19
}

declare i32 @sm_io_flush(%struct.sm_file*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

declare i8* @sfgets(i8*, i32, %struct.sm_file*, i64, i8*) #2

declare void @usrerr(i8*, ...) #2

declare i32 @pause() #2

declare void @checkfd012(i8*) #2

declare void @fixcrlf(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @extenhsc(i8*, i32, i8*) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #6 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #1
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare i32 @sm_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #5

declare void @mci_clr_extensions(%struct.mailer_con_info*) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c2(i8* %__s, i32 %__accept1, i32 %__accept2) #7 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !5
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !7
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !7
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %conv2, %4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %conv5 = sext i8 %6 to i32
  %7 = load i32, i32* %__accept2.addr, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %conv5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %__s.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !7
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %12 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %13 = ptrtoint i8* %12 to i64
  %14 = inttoptr i64 %13 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %14, %cond.false ]
  ret i8* %cond
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c3(i8* %__s, i32 %__accept1, i32 %__accept2, i32 %__accept3) #7 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  %__accept3.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !5
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !5
  store i32 %__accept3, i32* %__accept3.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !7
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !7
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %conv2, %4
  br i1 %cmp3, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %conv6 = sext i8 %6 to i32
  %7 = load i32, i32* %__accept2.addr, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %conv6, %7
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %8 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !7
  %conv9 = sext i8 %9 to i32
  %10 = load i32, i32* %__accept3.addr, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %conv9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %__s.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %15 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %16 = ptrtoint i8* %15 to i64
  %17 = inttoptr i64 %16 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %17, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind
declare i8* @strpbrk(i8*, i8*) #3

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i64 @atol(i8* nonnull %__nptr) #6 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #1
  ret i64 %call
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 72}
!9 = !{!"mailer_con_info", !10, i64 0, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14, !6, i64 16, !10, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !10, i64 96, !2, i64 104, !2, i64 112, !10, i64 120, !6, i64 128, !2, i64 136, !2, i64 144, !6, i64 152, !2, i64 160, !12, i64 168}
!10 = !{!"long", !3, i64 0}
!11 = !{!"short", !3, i64 0}
!12 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!13 = !{!9, !11, i64 14}
!14 = !{!9, !2, i64 56}
!15 = !{!16, !10, i64 0}
!16 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !3, i64 144, !3, i64 208, !3, i64 272, !3, i64 296}
!17 = !{!9, !10, i64 0}
!18 = !{!9, !2, i64 112}
!19 = !{!16, !10, i64 136}
!20 = !{!16, !10, i64 88}
!21 = !{!9, !11, i64 8}
!22 = !{!16, !10, i64 104}
!23 = !{!9, !6, i64 152}
!24 = !{!16, !10, i64 80}
!25 = !{!9, !11, i64 12}
!26 = !{!16, !10, i64 96}
!27 = !{!9, !2, i64 64}
!28 = !{!29, !2, i64 0}
!29 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !11, i64 72, !11, i64 74, !2, i64 80, !11, i64 88, !11, i64 90, !11, i64 92, !11, i64 94, !2, i64 96, !10, i64 104, !6, i64 112, !6, i64 116, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !10, i64 152, !6, i64 160, !11, i64 164}
!30 = !{!31, !2, i64 344}
!31 = !{!"envelope", !2, i64 0, !10, i64 8, !10, i64 16, !2, i64 24, !32, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !10, i64 256, !2, i64 264, !10, i64 272, !6, i64 280, !11, i64 284, !11, i64 286, !11, i64 288, !11, i64 290, !11, i64 292, !11, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !10, i64 456, !6, i64 464, !10, i64 472, !10, i64 480, !12, i64 488, !2, i64 2576, !2, i64 2584, !33, i64 2592, !10, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!32 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !10, i64 144, !2, i64 152, !11, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!33 = !{!"sm_timers", !34, i64 0}
!34 = !{!"_timer", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!35 = !{!10, !10, i64 0}
!36 = !{!9, !2, i64 40}
!37 = !{!31, !2, i64 376}
!38 = !{!9, !2, i64 32}
!39 = !{!9, !10, i64 96}
!40 = !{!31, !2, i64 24}
!41 = !{!11, !11, i64 0}
!42 = !{!29, !2, i64 96}
!43 = !{!9, !10, i64 24}
!44 = !{!9, !10, i64 120}
!45 = !{!31, !10, i64 256}
!46 = !{!31, !2, i64 328}
!47 = !{!31, !10, i64 272}
!48 = !{!31, !2, i64 440}
!49 = !{!31, !2, i64 2584}
!50 = !{!31, !6, i64 2632}
!51 = !{!31, !10, i64 2624}
!52 = !{!31, !10, i64 16}
!53 = !{!31, !2, i64 64}
!54 = !{!16, !10, i64 8}
!55 = !{!9, !2, i64 160}
!56 = !{!32, !2, i64 128}
!57 = !{!32, !2, i64 104}
!58 = !{!32, !10, i64 40}
!59 = !{!32, !2, i64 120}
!60 = !{!32, !2, i64 8}
!61 = !{!16, !10, i64 16}
!62 = !{!31, !2, i64 2640}
!63 = !{!32, !2, i64 136}
!64 = !{!32, !2, i64 152}
!65 = !{!9, !6, i64 128}
!66 = !{!9, !2, i64 136}
!67 = !{!32, !2, i64 0}
!68 = !{!32, !11, i64 160}
!69 = !{!16, !10, i64 24}
!70 = !{!31, !2, i64 296}
!71 = !{!31, !2, i64 0}
!72 = !{!31, !2, i64 304}
!73 = !{!74, !10, i64 24}
!74 = !{!"sm_file", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !10, i64 24, !11, i64 32, !75, i64 40, !6, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !2, i64 152, !2, i64 160, !75, i64 168, !2, i64 184, !6, i64 192, !3, i64 196, !3, i64 199, !6, i64 200, !10, i64 208, !6, i64 216}
!75 = !{!"smbuf", !2, i64 0, !6, i64 8}
!76 = !{!16, !10, i64 40}
!77 = !{!31, !2, i64 400}
!78 = !{!31, !2, i64 336}
