; ModuleID = '19.srvrsmtp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_debug = type { i8*, i32, i8*, i8*, %struct.sm_debug* }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%union.bigsockaddr = type { %struct.sockaddr_in, [96 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sm_exc_handler = type { %struct.sm_exc*, [1 x %struct.__jmp_buf_tag], %struct.sm_exc_handler*, i32 }
%struct.sm_exc = type { i8*, i64, %struct.sm_exc_type*, %union.sm_val* }
%struct.sm_exc_type = type { i8*, i8*, i8*, void (%struct.sm_exc*, %struct.sm_file*)*, i8* }
%union.sm_val = type { i64 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.anon = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [3 x i64], [3 x i32] }
%struct.cmd = type { i8*, i32 }
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
%struct.queuegrp = type { i8*, i8*, i16, i32, i32, i64, %struct.qpaths_s*, [8 x i32], i16, i32, i32, i32, i32, i64 }
%struct.qpaths_s = type { i8*, i16, i16, i32 }
%struct.queue_char = type { i8*, i32, %struct.queue_char* }
%struct.anon.3 = type { i8, i32 }
%struct.SMTP_T = type { i32, i32, i32, i32, i32, %struct.milters, i32, i8* }
%struct.milters = type { i32 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__res_state = type { i32, i32, i64, i32, [3 x %struct.sockaddr_in], i16, [7 x i8*], [256 x i8], i64, i32, [10 x %struct.anon.0], i32 (%struct.sockaddr_in**, i8**, i32*, i8*, i32, i32*)*, i32 (%struct.sockaddr_in*, i8*, i32, i8*, i32, i32*)*, i32, i32, i32, %union.anon }
%struct.anon.0 = type { %struct.in_addr, i32 }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i16, [3 x i16], [3 x i32], i16, i16, [3 x %struct.sockaddr_in6*], [2 x i32] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }

@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: got arg %s=\22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"501 5.5.4 Too many parameters\00", align 1
@Errors = external global i32, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"220\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"not accepting messages\00", align 1
@SevenBitInput = external global i32, align 4
@SevenBitInput_Saved = internal global i32 0, align 4
@DebugLeakSmtp = internal global %struct.sm_debug { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SmDebugMagic, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.234, i32 0, i32 0), %struct.sm_debug* null }, align 8
@SmHeapMaxGroup = external global i32, align 4
@SmHeapGroup = external global i32, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"smtp() heap group #%d\0A\00", align 1
@RealHostName = external global i8*, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@CurHostName = external global i8*, align 8
@CurSmtpClient = internal global i8* null, align 8
@InChannel = external global %struct.sm_file*, align 8
@OutChannel = external global %struct.sm_file*, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"server %s startup\00", align 1
@PrivacyFlags = external global i64, align 8
@SendMIMEErrors = external global i32, align 4
@LogLevel = external global i32, align 4
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [72 x i8] c"ERROR: srv_features=tempfail, relay=%.100s, access temporarily disabled\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"450 4.3.0 Please try again later.\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"421 \00", align 1
@MilterLogLevel = external global i32, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"Milter: initialization failed, rejecting commands\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"554\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Command rejected\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"Milter: initialization failed, temp failing commands\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"Milter: initialization failed, closing connection\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"421 4.7.0 %s closing connection\00", align 1
@MyHostName = external global i8*, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"{client_name}\00", align 1
@OpMode = external global i8, align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"srvrsmtp.c\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"SM_ASSERT(q != NULL || OpMode == MD_SMTP) failed\00", align 1
@RealHostAddr = external global %union.bigsockaddr, align 4
@.str.21 = private unnamed_addr constant [54 x i8] c"Milter: connect: host=%s, addr=%s, rejecting commands\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"Milter: connect: host=%s, addr=%s, temp failing commands\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Milter: connect: host=%s, addr=%s, shutdown\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"greet_pause\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"rejecting commands from %s [%s] due to pre-greeting traffic after %d seconds\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@SmtpGreeting = external global i8*, align 8
@.str.27 = private unnamed_addr constant [18 x i8] c"%s %%.*s ESMTP%%s\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"%s-%%.*s ESMTP%%s\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@SmExcHandler = external global %struct.sm_exc_handler*, align 8
@QuickAbort = external global i32, align 4
@HoldErrs = external global i32, align 4
@SuprErrs = external global i32, align 4
@LogUsrErrs = external global i32, align 4
@OnlyOneError = external global i32, align 4
@FileName = external global i8*, align 8
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.31 = private unnamed_addr constant [16 x i8] c"server cmd read\00", align 1
@SmtpPhase = external global i8*, align 8
@.str.32 = private unnamed_addr constant [19 x i8] c"server %s cmd read\00", align 1
@TimeOuts = external global %struct.anon, align 8
@.str.33 = private unnamed_addr constant [14 x i8] c"{daemon_name}\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"421 4.4.1 %s Lost input channel from %s\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"lost input channel from %s to %s after %s\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"startup\00", align 1
@smtp.http_cmds = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* null], align 16
@.str.38 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"421 4.7.0 %s Rejecting open proxy %s\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"%s: probable open proxy: command=%.40s\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"<<< %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"<-- %s\00", align 1
@CmdTab = internal global [21 x %struct.cmd] [%struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.235, i32 0, i32 0), i32 1 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.236, i32 0, i32 0), i32 2 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.237, i32 0, i32 0), i32 3 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.238, i32 0, i32 0), i32 4 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.239, i32 0, i32 0), i32 5 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.240, i32 0, i32 0), i32 6 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.241, i32 0, i32 0), i32 10 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.242, i32 0, i32 0), i32 7 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.243, i32 0, i32 0), i32 8 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i32 9 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.245, i32 0, i32 0), i32 11 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.246, i32 0, i32 0), i32 12 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.247, i32 0, i32 0), i32 17 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.248, i32 0, i32 0), i32 19 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.249, i32 0, i32 0), i32 19 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.250, i32 0, i32 0), i32 19 }, %struct.cmd { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.251, i32 0, i32 0), i32 19 }, %struct.cmd { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.252, i32 0, i32 0), i32 24 }, %struct.cmd { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.253, i32 0, i32 0), i32 25 }, %struct.cmd { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.254, i32 0, i32 0), i32 23 }, %struct.cmd zeroinitializer], align 16
@.str.46 = private unnamed_addr constant [10 x i8] c"%s: %.80s\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"%s %s: %.80s\00", align 1
@DelayLA = external global i32, align 4
@CurrentLA = external global i32, align 4
@.str.48 = private unnamed_addr constant [38 x i8] c"%s: %s: delaying %s: load average: %d\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"ETRN\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"delaying=%s, load average=%d >= %d\00", align 1
@.str.51 = private unnamed_addr constant [55 x i8] c"421 4.7.0 %s Too many bad commands; closing connection\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"550 5.0.0 %s\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"452 4.4.5 Insufficient disk space; try again later\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"EHLO\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"ESMTP\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"server EHLO\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"SMTP\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"server HELO\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"HELO/EHLO\00", align 1
@AllowBogusHELO = external global i32, align 4
@.str.60 = private unnamed_addr constant [31 x i8] c"501 %s requires domain address\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"501 Invalid domain name\00", align 1
@CurEnv = external global %struct.envelope*, align 8
@.str.62 = private unnamed_addr constant [39 x i8] c"invalid domain name (too long) from %s\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"[].-_#:\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"pleased to meet you\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"invalid domain name (%s) from %.100s\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"accepting invalid domain name\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"{nrcpts}\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.69 = private unnamed_addr constant [52 x i8] c"CLEAR_STATE: e_id=%s, EF_LOGSENDER=%d, LogLevel=%d\0A\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"{quarantine}\00", align 1
@.str.71 = private unnamed_addr constant [41 x i8] c"Milter: helo=%s, reject=Command rejected\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"Milter: helo=%s, reject=%s\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"451 4.3.2 Please try again later\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"421-\00", align 1
@.str.75 = private unnamed_addr constant [56 x i8] c"Milter: helo=%s, reject=421 4.7.0 %s closing connection\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"250 %s Hello %s, %s\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"250-%s Hello %s, %s\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"250 ENHANCEDSTATUSCODES\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"250-ENHANCEDSTATUSCODES\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"250-PIPELINING\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"250-EXPN\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"250-VERB\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"250-8BITMIME\00", align 1
@MaxMessageSize = external global i64, align 8
@.str.84 = private unnamed_addr constant [13 x i8] c"250-SIZE %ld\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"250-SIZE\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"250-DSN\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"250-ETRN\00", align 1
@DeliverByMin = external global i64, align 8
@.str.88 = private unnamed_addr constant [18 x i8] c"250-DELIVERBY %ld\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"250-DELIVERBY\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"250 HELP\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"server MAIL\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"MAIL\00", align 1
@.str.93 = private unnamed_addr constant [39 x i8] c"503 5.0.0 Polite people say HELO first\00", align 1
@.str.94 = private unnamed_addr constant [35 x i8] c"503 5.5.0 Sender already specified\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.96 = private unnamed_addr constant [71 x i8] c"SMTP MAIL command (%.100s) from %s tempfailed (due to previous checks)\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"%s didn't use HELO protocol\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"{ntries}\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"{nbadrcpts}\00", align 1
@FullName = external global i8*, align 8
@EtypeQuickAbort = external constant %struct.sm_exc_type, align 8
@.str.100 = private unnamed_addr constant [14 x i8] c"{mail_mailer}\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"{mail_host}\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"{mail_addr}\00", align 1
@RealUid = external global i32, align 4
@RealUserName = external global i8*, align 8
@.str.103 = private unnamed_addr constant [27 x i8] c"%s owned process doing -bs\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"{addr_type}\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"e s\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"check_mail\00", align 1
@.str.107 = private unnamed_addr constant [64 x i8] c"552 5.2.3 Message size exceeds fixed maximum message size (%ld)\00", align 1
@PNumFileSys = external global i32*, align 8
@NumQueue = external global i32, align 4
@.str.108 = private unnamed_addr constant [39 x i8] c"Milter: %s=%s, reject=421, errormode=4\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"421 4.3.0 closing connection\00", align 1
@.str.110 = private unnamed_addr constant [25 x i8] c"Milter: %s=%s, reject=%s\00", align 1
@.str.111 = private unnamed_addr constant [49 x i8] c"Milter: %s=%s, reject=550 5.7.1 Command rejected\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"550 5.7.1 Command rejected\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"Milter: %s=%s, discard\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"250 2.1.0 Sender ok\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"SM_ASSERT(SmExcHandler == &_h) failed\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"[!F]*\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"RCPT\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"{rcpt_mailer}\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"{rcpt_host}\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"{rcpt_addr}\00", align 1
@BadRcptThrottle = external global i32, align 4
@.str.121 = private unnamed_addr constant [42 x i8] c"%s: Possible SMTP RCPT flood, throttling.\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"503 5.0.0 Need MAIL before RCPT\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"server RCPT\00", align 1
@MaxRcptPerMsg = external global i32, align 4
@.str.125 = private unnamed_addr constant [30 x i8] c"452 4.5.3 Too many recipients\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"e r\00", align 1
@.str.128 = private unnamed_addr constant [28 x i8] c"501 5.0.0 Missing recipient\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"check_rcpt\00", align 1
@.str.130 = private unnamed_addr constant [28 x i8] c"550 5.1.1 Addressee unknown\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"250 2.1.5 Recipient ok%s\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c" (will queue)\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"{dsn_notify}\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"451 4.0.0 Test failure\00", align 1
@.str.137 = private unnamed_addr constant [22 x i8] c"250 2.0.0 Reset state\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"VRFY\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"EXPN\00", align 1
@.str.140 = private unnamed_addr constant [69 x i8] c"SMTP %s command (%.100s) from %s tempfailed (due to previous checks)\00", align 1
@.str.141 = private unnamed_addr constant [33 x i8] c"550 5.7.1 Please try again later\00", align 1
@.str.142 = private unnamed_addr constant [73 x i8] c"252 2.5.2 Cannot VRFY user; try RCPT to attempt delivery (or try finger)\00", align 1
@.str.143 = private unnamed_addr constant [48 x i8] c"502 5.7.0 Sorry, we do not allow this operation\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"%s: %s [rejected]\00", align 1
@.str.145 = private unnamed_addr constant [53 x i8] c"503 5.0.0 I demand that you introduce yourself first\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.147 = private unnamed_addr constant [28 x i8] c"501 5.5.2 Argument required\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"check_vrfy\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"check_expn\00", align 1
@.str.150 = private unnamed_addr constant [24 x i8] c"554 5.5.2 Nothing to %s\00", align 1
@UseMSP = external global i32, align 4
@TrustedUid = external global i32, align 4
@.str.151 = private unnamed_addr constant [71 x i8] c"SMTP ETRN command (%.100s) from %s tempfailed (due to previous checks)\00", align 1
@.str.152 = private unnamed_addr constant [29 x i8] c"500 5.5.2 Parameter required\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"check_etrn\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"%s: ETRN %s\00", align 1
@.str.155 = private unnamed_addr constant [27 x i8] c"459 4.5.4 Queue %s unknown\00", align 1
@Queue = external global [51 x %struct.queuegrp*], align 16
@.str.156 = private unnamed_addr constant [45 x i8] c"250 2.0.0 Queuing for queue group %s started\00", align 1
@.str.157 = private unnamed_addr constant [29 x i8] c"500 5.5.0 ETRN out of memory\00", align 1
@QueueLimitRecipient = external global %struct.queue_char*, align 8
@.str.158 = private unnamed_addr constant [38 x i8] c"250 2.0.0 Queuing for node %s started\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"NOOP\00", align 1
@MaxNOOPCommands = external global i32, align 4
@.str.161 = private unnamed_addr constant [13 x i8] c"250 2.0.0 OK\00", align 1
@.str.162 = private unnamed_addr constant [32 x i8] c"221 2.0.0 %s closing connection\00", align 1
@.str.163 = private unnamed_addr constant [18 x i8] c"aborted by sender\00", align 1
@.str.164 = private unnamed_addr constant [45 x i8] c"QUIT: e_id=%s, EF_LOGSENDER=%d, LogLevel=%d\0A\00", align 1
@.str.165 = private unnamed_addr constant [61 x i8] c"%s did not issue MAIL/EXPN/VRFY/ETRN during connection to %s\00", align 1
@ExitStat = external global i32, align 4
@.str.166 = private unnamed_addr constant [5 x i8] c"VERB\00", align 1
@.str.167 = private unnamed_addr constant [30 x i8] c"502 5.7.0 Verbose unavailable\00", align 1
@Verbose = external global i32, align 4
@.str.168 = private unnamed_addr constant [23 x i8] c"250 2.0.0 Verbose mode\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"Bogus\00", align 1
@.str.170 = private unnamed_addr constant [30 x i8] c"\22%s\22 command from %s (%.100s)\00", align 1
@.str.171 = private unnamed_addr constant [23 x i8] c"Sending \22%s\22 to Milter\00", align 1
@.str.172 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.173 = private unnamed_addr constant [37 x i8] c"500 5.5.1 Command unrecognized: \22%s\22\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"Unimpl\00", align 1
@.str.175 = private unnamed_addr constant [40 x i8] c"502 5.5.1 Command not implemented: \22%s\22\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.177 = private unnamed_addr constant [32 x i8] c"500 5.5.0 smtp: unknown code %d\00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c"{dsn_envid}\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"{dsn_ret}\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.181 = private unnamed_addr constant [32 x i8] c"501 5.5.2 SIZE requires a value\00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"{msg_size}\00", align 1
@.str.183 = private unnamed_addr constant [45 x i8] c"552 5.2.3 Message size exceeds maximum value\00", align 1
@.str.184 = private unnamed_addr constant [31 x i8] c"552 5.2.3 Message size invalid\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.186 = private unnamed_addr constant [32 x i8] c"501 5.5.2 BODY requires a value\00", align 1
@.str.187 = private unnamed_addr constant [9 x i8] c"8bitmime\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"7bit\00", align 1
@.str.189 = private unnamed_addr constant [31 x i8] c"501 5.5.4 Unknown BODY type %s\00", align 1
@.str.190 = private unnamed_addr constant [6 x i8] c"envid\00", align 1
@.str.191 = private unnamed_addr constant [58 x i8] c"504 5.7.0 Sorry, ENVID not supported, we do not allow DSN\00", align 1
@.str.192 = private unnamed_addr constant [33 x i8] c"501 5.5.2 ENVID requires a value\00", align 1
@.str.193 = private unnamed_addr constant [48 x i8] c"501 5.5.4 Syntax error in ENVID parameter value\00", align 1
@.str.194 = private unnamed_addr constant [36 x i8] c"501 5.5.0 Duplicate ENVID parameter\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.196 = private unnamed_addr constant [56 x i8] c"504 5.7.0 Sorry, RET not supported, we do not allow DSN\00", align 1
@.str.197 = private unnamed_addr constant [31 x i8] c"501 5.5.2 RET requires a value\00", align 1
@.str.198 = private unnamed_addr constant [34 x i8] c"501 5.5.0 Duplicate RET parameter\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"hdrs\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.201 = private unnamed_addr constant [35 x i8] c"501 5.5.2 Bad argument \22%s\22 to RET\00", align 1
@.str.202 = private unnamed_addr constant [3 x i8] c"by\00", align 1
@.str.203 = private unnamed_addr constant [31 x i8] c"501 5.5.2 BY= requires a value\00", align 1
@.str.204 = private unnamed_addr constant [29 x i8] c"501 5.5.2 BY=%s out of range\00", align 1
@.str.205 = private unnamed_addr constant [26 x i8] c"501 5.5.2 BY= missing ';'\00", align 1
@.str.206 = private unnamed_addr constant [38 x i8] c"501 5.5.4 mode R requires BY time > 0\00", align 1
@.str.207 = private unnamed_addr constant [33 x i8] c"555 5.5.2 time %ld less than %ld\00", align 1
@.str.208 = private unnamed_addr constant [31 x i8] c"501 5.5.2 illegal by-mode '%c'\00", align 1
@.str.209 = private unnamed_addr constant [32 x i8] c"501 5.5.2 illegal by-trace '%c'\00", align 1
@.str.210 = private unnamed_addr constant [36 x i8] c"555 5.5.4 %s parameter unrecognized\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.212 = private unnamed_addr constant [59 x i8] c"504 5.7.0 Sorry, NOTIFY not supported, we do not allow DSN\00", align 1
@.str.213 = private unnamed_addr constant [34 x i8] c"501 5.5.2 NOTIFY requires a value\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.218 = private unnamed_addr constant [39 x i8] c"501 5.5.4 Bad argument \22%s\22  to NOTIFY\00", align 1
@.str.219 = private unnamed_addr constant [6 x i8] c"orcpt\00", align 1
@.str.220 = private unnamed_addr constant [58 x i8] c"504 5.7.0 Sorry, ORCPT not supported, we do not allow DSN\00", align 1
@.str.221 = private unnamed_addr constant [33 x i8] c"501 5.5.2 ORCPT requires a value\00", align 1
@.str.222 = private unnamed_addr constant [36 x i8] c"501 5.5.0 Duplicate ORCPT parameter\00", align 1
@.str.223 = private unnamed_addr constant [48 x i8] c"501 5.5.4 Syntax error in ORCPT parameter value\00", align 1
@help.foundvers = internal global i32 -1, align 4
@DontLockReadFiles = external global i32, align 4
@DontBlameSendmail = external global [8 x i32], align 16
@HelpFile = external global i8*, align 8
@.str.224 = private unnamed_addr constant [46 x i8] c"502 5.3.0 Sendmail %s -- HELP not implemented\00", align 1
@Version = external global [0 x i8], align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"smtp\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"#vers\09\00", align 1
@.str.227 = private unnamed_addr constant [38 x i8] c"214-2.0.0 This is Sendmail version %s\00", align 1
@.str.228 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"214-2.0.0 %s\00", align 1
@.str.230 = private unnamed_addr constant [37 x i8] c"504 5.3.0 HELP topic \22%.10s\22 unknown\00", align 1
@.str.231 = private unnamed_addr constant [27 x i8] c"214 2.0.0 End of HELP info\00", align 1
@.str.232 = private unnamed_addr constant [32 x i8] c"%s too old (require version %d)\00", align 1
@SmDebugMagic = external constant [0 x i8], align 1
@.str.233 = private unnamed_addr constant [10 x i8] c"leak_smtp\00", align 1
@.str.234 = private unnamed_addr constant [68 x i8] c"@(#)$Debug: leak_smtp - trace memory leaks during SMTP processing $\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"mail\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"rcpt\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"rset\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"vrfy\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"expn\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"helo\00", align 1
@.str.245 = private unnamed_addr constant [5 x i8] c"ehlo\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"etrn\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.249 = private unnamed_addr constant [5 x i8] c"saml\00", align 1
@.str.250 = private unnamed_addr constant [5 x i8] c"soml\00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"turn\00", align 1
@.str.252 = private unnamed_addr constant [6 x i8] c"showq\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.254 = private unnamed_addr constant [4 x i8] c"wiz\00", align 1
@.str.255 = private unnamed_addr constant [12 x i8] c"server DATA\00", align 1
@.str.256 = private unnamed_addr constant [28 x i8] c"503 5.0.0 Need MAIL command\00", align 1
@.str.257 = private unnamed_addr constant [32 x i8] c"503 5.0.0 Need RCPT (recipient)\00", align 1
@.str.258 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.259 = private unnamed_addr constant [11 x i8] c"check_data\00", align 1
@.str.260 = private unnamed_addr constant [28 x i8] c"Milter: cmd=data, reject=%s\00", align 1
@.str.261 = private unnamed_addr constant [52 x i8] c"Milter: cmd=data, reject=550 5.7.1 Command rejected\00", align 1
@.str.262 = private unnamed_addr constant [26 x i8] c"Milter: cmd=data, discard\00", align 1
@.str.263 = private unnamed_addr constant [57 x i8] c"Milter: cmd=data, reject=421 4.7.0 %s closing connection\00", align 1
@.str.264 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str.265 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.266 = private unnamed_addr constant [10 x i8] c"check_eom\00", align 1
@.str.267 = private unnamed_addr constant [24 x i8] c"Milter: data, reject=%s\00", align 1
@.str.268 = private unnamed_addr constant [48 x i8] c"Milter: data, reject=554 5.7.1 Command rejected\00", align 1
@.str.269 = private unnamed_addr constant [27 x i8] c"554 5.7.1 Command rejected\00", align 1
@.str.270 = private unnamed_addr constant [22 x i8] c"Milter: data, discard\00", align 1
@.str.271 = private unnamed_addr constant [53 x i8] c"Milter: data, reject=421 4.7.0 %s closing connection\00", align 1
@.str.272 = private unnamed_addr constant [23 x i8] c"Milter accept: message\00", align 1
@SuperSafe = external global i32, align 4
@.str.273 = private unnamed_addr constant [50 x i8] c"@collect: bfcommit(%s): already on disk, size=%ld\00", align 1
@.str.274 = private unnamed_addr constant [9 x i8] c"bfcommit\00", align 1
@.str.275 = private unnamed_addr constant [14 x i8] c"sm_io_getinfo\00", align 1
@.str.276 = private unnamed_addr constant [6 x i8] c"fsync\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"sm_io_close\00", align 1
@SmFtStdio_def = external global %struct.sm_file, align 8
@.str.278 = private unnamed_addr constant [18 x i8] c"@Cannot reopen %s\00", align 1
@QueueMode = external global i32, align 4
@.str.279 = private unnamed_addr constant [9 x i8] c"delivery\00", align 1
@.str.280 = private unnamed_addr constant [43 x i8] c"250 2.0.0 %s Message accepted for delivery\00", align 1
@.str.281 = private unnamed_addr constant [53 x i8] c"abortmessage: e_id=%s, EF_LOGSENDER=%d, LogLevel=%d\0A\00", align 1
@BlankEnvelope = external global %struct.envelope, align 8
@.str.282 = private unnamed_addr constant [50 x i8] c"%s: possible SMTP attack: command=%.40s, count=%u\00", align 1
@MaxChildren = external global i32, align 4
@.str.283 = private unnamed_addr constant [34 x i8] c"fcntl(inchfd, F_GETFL) failed: %s\00", align 1
@.str.284 = private unnamed_addr constant [35 x i8] c"fcntl(outchfd, F_GETFL) failed: %s\00", align 1
@.str.285 = private unnamed_addr constant [46 x i8] c"set automode for I (%d)/O (%d) in SMTP server\00", align 1
@.str.286 = private unnamed_addr constant [51 x i8] c"501 5.5.2 Syntax error in parameters scanning \22%s\22\00", align 1
@.str.287 = private unnamed_addr constant [4 x i8] c"252\00", align 1
@.str.288 = private unnamed_addr constant [4 x i8] c"250\00", align 1
@.str.289 = private unnamed_addr constant [7 x i8] c"2.1.5 \00", align 1
@.str.290 = private unnamed_addr constant [7 x i8] c"rfc822\00", align 1
@.str.291 = private unnamed_addr constant [8 x i8] c"<%s@%s>\00", align 1
@.str.292 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.293 = private unnamed_addr constant [11 x i8] c"%s <%s@%s>\00", align 1
@.str.294 = private unnamed_addr constant [8 x i8] c"%s <%s>\00", align 1
@.str.295 = private unnamed_addr constant [13 x i8] c"srv_features\00", align 1
@.str.296 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@srv_feat_table = internal global [12 x %struct.anon.3] [%struct.anon.3 { i8 65, i32 4 }, %struct.anon.3 { i8 66, i32 64 }, %struct.anon.3 { i8 67, i32 2048 }, %struct.anon.3 { i8 68, i32 128 }, %struct.anon.3 { i8 69, i32 8 }, %struct.anon.3 { i8 76, i32 1024 }, %struct.anon.3 { i8 80, i32 256 }, %struct.anon.3 { i8 82, i32 2 }, %struct.anon.3 { i8 83, i32 1 }, %struct.anon.3 { i8 86, i32 2 }, %struct.anon.3 { i8 88, i32 32 }, %struct.anon.3 zeroinitializer], align 16
@.str.297 = private unnamed_addr constant [32 x i8] c"srvfeatures: unknown feature %s\00", align 1

; Function Attrs: nounwind uwtable
define void @parse_esmtp_args(%struct.envelope* %e, %struct.address* %addr_st, i8* %p, i8* %delimptr, i8* %which, i8** %args, void (%struct.address*, i8*, i8*, %struct.envelope*)* %esmtp_args) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %addr_st.addr = alloca %struct.address*, align 8
  %p.addr = alloca i8*, align 8
  %delimptr.addr = alloca i8*, align 8
  %which.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %esmtp_args.addr = alloca void (%struct.address*, i8*, i8*, %struct.envelope*)*, align 8
  %argno = alloca i32, align 4
  %kp = alloca i8*, align 8
  %vp = alloca i8*, align 8
  %equal = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.address* %addr_st, %struct.address** %addr_st.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8* %delimptr, i8** %delimptr.addr, align 8, !tbaa !1
  store i8* %which, i8** %which.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  store void (%struct.address*, i8*, i8*, %struct.envelope*)* %esmtp_args, void (%struct.address*, i8*, i8*, %struct.envelope*)** %esmtp_args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %argno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %argno, align 4, !tbaa !5
  %1 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %cmp = icmp ne i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %3 = load i32, i32* %argno, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %argno, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  store i8* %2, i8** %arrayidx, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %delimptr.addr, align 8, !tbaa !1
  store i8* %5, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %6 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %6, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !7
  %conv = sext i8 %8 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end.110

while.body:                                       ; preds = %land.end
  %10 = bitcast i8** %kp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %vp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* null, i8** %vp, align 8, !tbaa !1
  %12 = bitcast i8** %equal to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8* null, i8** %equal, align 8, !tbaa !1
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.15, %while.body
  %13 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %conv5 = sext i8 %14 to i32
  %and = and i32 %conv5, -128
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %land.rhs.8, label %land.end.14

land.rhs.8:                                       ; preds = %while.cond.4
  %15 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %conv9 = sext i8 %16 to i32
  %idxprom10 = sext i32 %conv9 to i64
  %call = call i16** @__ctype_b_loc() #10
  %17 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %17, i64 %idxprom10
  %18 = load i16, i16* %arrayidx11, align 2, !tbaa !8
  %conv12 = zext i16 %18 to i32
  %and13 = and i32 %conv12, 8192
  %tobool = icmp ne i32 %and13, 0
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.8, %while.cond.4
  %19 = phi i1 [ false, %while.cond.4 ], [ %tobool, %land.rhs.8 ]
  br i1 %19, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %land.end.14
  %20 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.4

while.end:                                        ; preds = %land.end.14
  %21 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %conv16 = sext i8 %22 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %while.end
  %23 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %23, i8** %kp, align 8, !tbaa !1
  br label %while.cond.21

while.cond.21:                                    ; preds = %while.body.36, %if.end.20
  %24 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !7
  %conv22 = sext i8 %25 to i32
  %and23 = and i32 %conv22, -128
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %while.cond.21
  %26 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !7
  %conv26 = sext i8 %27 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %call28 = call i16** @__ctype_b_loc() #10
  %28 = load i16*, i16** %call28, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i16, i16* %28, i64 %idxprom27
  %29 = load i16, i16* %arrayidx29, align 2, !tbaa !8
  %conv30 = zext i16 %29 to i32
  %and31 = and i32 %conv30, 8
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %while.cond.21
  %30 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %conv33 = sext i8 %31 to i32
  %cmp34 = icmp eq i32 %conv33, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %32 = phi i1 [ true, %land.lhs.true ], [ %cmp34, %lor.rhs ]
  br i1 %32, label %while.body.36, label %while.end.38

while.body.36:                                    ; preds = %lor.end
  %33 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr37, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.21

while.end.38:                                     ; preds = %lor.end
  %34 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !7
  %conv39 = sext i8 %35 to i32
  %cmp40 = icmp eq i32 %conv39, 61
  br i1 %cmp40, label %if.then.42, label %if.end.73

if.then.42:                                       ; preds = %while.end.38
  %36 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %36, i8** %equal, align 8, !tbaa !1
  %37 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr43, i8** %p.addr, align 8, !tbaa !1
  store i8 0, i8* %37, align 1, !tbaa !7
  %38 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %38, i8** %vp, align 8, !tbaa !1
  br label %while.cond.44

while.cond.44:                                    ; preds = %while.body.70, %if.then.42
  %39 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !7
  %conv45 = sext i8 %40 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %land.lhs.true.48, label %land.end.69

land.lhs.true.48:                                 ; preds = %while.cond.44
  %41 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !7
  %conv49 = sext i8 %42 to i32
  %cmp50 = icmp ne i32 %conv49, 32
  br i1 %cmp50, label %land.lhs.true.52, label %land.end.69

land.lhs.true.52:                                 ; preds = %land.lhs.true.48
  %43 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !7
  %conv53 = sext i8 %44 to i32
  %and54 = and i32 %conv53, -128
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %land.lhs.true.57, label %land.rhs.65

land.lhs.true.57:                                 ; preds = %land.lhs.true.52
  %45 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !7
  %conv58 = sext i8 %46 to i32
  %idxprom59 = sext i32 %conv58 to i64
  %call60 = call i16** @__ctype_b_loc() #10
  %47 = load i16*, i16** %call60, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i16, i16* %47, i64 %idxprom59
  %48 = load i16, i16* %arrayidx61, align 2, !tbaa !8
  %conv62 = zext i16 %48 to i32
  %and63 = and i32 %conv62, 2
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %land.end.69, label %land.rhs.65

land.rhs.65:                                      ; preds = %land.lhs.true.57, %land.lhs.true.52
  %49 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !7
  %conv66 = sext i8 %50 to i32
  %cmp67 = icmp ne i32 %conv66, 61
  br label %land.end.69

land.end.69:                                      ; preds = %land.rhs.65, %land.lhs.true.57, %land.lhs.true.48, %while.cond.44
  %51 = phi i1 [ false, %land.lhs.true.57 ], [ false, %land.lhs.true.48 ], [ false, %while.cond.44 ], [ %cmp67, %land.rhs.65 ]
  br i1 %51, label %while.body.70, label %while.end.72

while.body.70:                                    ; preds = %land.end.69
  %52 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr71, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.44

while.end.72:                                     ; preds = %land.end.69
  br label %if.end.73

if.end.73:                                        ; preds = %while.end.72, %while.end.38
  %53 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !7
  %conv74 = sext i8 %54 to i32
  %cmp75 = icmp ne i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.73
  %55 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr78 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr78, i8** %p.addr, align 8, !tbaa !1
  store i8 0, i8* %55, align 1, !tbaa !7
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.73
  %56 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 19), align 1, !tbaa !7
  %conv80 = zext i8 %56 to i32
  %cmp81 = icmp sge i32 %conv80, 1
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.88

land.lhs.true.83:                                 ; preds = %if.end.79
  %57 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %57, 0
  br i1 %tobool84, label %if.end.88, label %if.then.85

if.then.85:                                       ; preds = %land.lhs.true.83
  %58 = load i8*, i8** %which.addr, align 8, !tbaa !1
  %59 = load i8*, i8** %kp, align 8, !tbaa !1
  %60 = load i8*, i8** %vp, align 8, !tbaa !1
  %cmp86 = icmp eq i8* %60, null
  br i1 %cmp86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.85
  br label %cond.end

cond.false:                                       ; preds = %if.then.85
  %61 = load i8*, i8** %vp, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %cond.true ], [ %61, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* %58, i8* %59, i8* %cond)
  br label %if.end.88

if.end.88:                                        ; preds = %cond.end, %land.lhs.true.83, %if.end.79
  %62 = load void (%struct.address*, i8*, i8*, %struct.envelope*)*, void (%struct.address*, i8*, i8*, %struct.envelope*)** %esmtp_args.addr, align 8, !tbaa !1
  %63 = load %struct.address*, %struct.address** %addr_st.addr, align 8, !tbaa !1
  %64 = load i8*, i8** %kp, align 8, !tbaa !1
  %65 = load i8*, i8** %vp, align 8, !tbaa !1
  %66 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void %62(%struct.address* %63, i8* %64, i8* %65, %struct.envelope* %66)
  %67 = load i8*, i8** %equal, align 8, !tbaa !1
  %cmp89 = icmp ne i8* %67, null
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.88
  %68 = load i8*, i8** %equal, align 8, !tbaa !1
  store i8 61, i8* %68, align 1, !tbaa !7
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.88
  %69 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %cmp93 = icmp ne i8** %69, null
  br i1 %cmp93, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.end.92
  %70 = load i8*, i8** %kp, align 8, !tbaa !1
  %71 = load i32, i32* %argno, align 4, !tbaa !5
  %idxprom96 = sext i32 %71 to i64
  %72 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i8*, i8** %72, i64 %idxprom96
  store i8* %70, i8** %arrayidx97, align 8, !tbaa !1
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.end.92
  %73 = load i32, i32* %argno, align 4, !tbaa !5
  %inc99 = add nsw i32 %73, 1
  store i32 %inc99, i32* %argno, align 4, !tbaa !5
  %74 = load i32, i32* %argno, align 4, !tbaa !5
  %cmp100 = icmp sge i32 %74, 19
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.98
  %75 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp104 = icmp sgt i32 %75, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.103
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.107:                                       ; preds = %if.end.103
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.107, %if.then.106, %if.then.19
  %76 = bitcast i8** %equal to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i8** %vp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i8** %kp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end.110
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.110:                                    ; preds = %cleanup, %land.end
  %79 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %cmp111 = icmp ne i8** %79, null
  br i1 %cmp111, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %while.end.110
  %80 = load i32, i32* %argno, align 4, !tbaa !5
  %idxprom114 = sext i32 %80 to i64
  %81 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8*, i8** %81, i64 %idxprom114
  store i8* null, i8** %arrayidx115, align 8, !tbaa !1
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %while.end.110
  %82 = bitcast i32* %argno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

declare void @sm_dprintf(i8*, ...) #3

declare void @usrerr(i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @smtp(i8* %nullserver, i32* %d_flags, %struct.envelope* %e) #0 {
entry:
  %nullserver.addr = alloca i8*, align 8
  %d_flags.addr = alloca i32*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %p = alloca i8*, align 8
  %c = alloca %struct.cmd*, align 8
  %cmd = alloca i8*, align 8
  %vrfyqueue = alloca %struct.address*, align 8
  %a = alloca %struct.address*, align 8
  %gothello = alloca i32, align 4
  %vrfy = alloca i32, align 4
  %protocol = alloca i8*, align 8
  %sendinghost = alloca i8*, align 8
  %peerhostname = alloca i8*, align 8
  %delimptr = alloca i8*, align 8
  %id = alloca i8*, align 8
  %n_badcmds = alloca i32, align 4
  %n_badrcpts = alloca i32, align 4
  %n_verifies = alloca i32, align 4
  %n_etrn = alloca i32, align 4
  %n_noop = alloca i32, align 4
  %n_helo = alloca i32, align 4
  %ok = alloca i32, align 4
  %first = alloca i32, align 4
  %tempfail = alloca i32, align 4
  %wt = alloca i64, align 8
  %previous = alloca i64, align 8
  %lognullconnection = alloca i32, align 4
  %q = alloca i8*, align 8
  %smtp = alloca %struct.SMTP_T, align 8
  %addr = alloca i8*, align 8
  %greetcode = alloca i8*, align 8
  %greetmsg = alloca i8*, align 8
  %hostname = alloca i8*, align 8
  %new = alloca %struct.queue_char*, align 8
  %args = alloca [20 x i8*], align 16
  %inp = alloca [2048 x i8], align 16
  %cmdbuf = alloca [2048 x i8], align 16
  %r = alloca i32, align 4
  %features = alloca i32, align 4
  %log_delay = alloca i64, align 8
  %milter_cmd_done = alloca i32, align 4
  %milter_cmd_safe = alloca i32, align 4
  %milter_rcpt_added = alloca i32, align 4
  %milter_cmd_fail = alloca i32, align 4
  %addr_st = alloca %struct.address, align 8
  %inplen = alloca i64, align 8
  %state = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %state105 = alloca i8, align 1
  %response = alloca i8*, align 8
  %tmp = alloca %union.bigsockaddr, align 8
  %msecs = alloca i64, align 8
  %pvp = alloca i8**, align 8
  %pvpbuf = alloca [1256 x i8], align 16
  %fd = alloca i32, align 4
  %readfds = alloca %struct.fd_set, align 8
  %timeout = alloca %struct.timeval, align 8
  %bp = alloca %struct.timeval, align 8
  %ep = alloca %struct.timeval, align 8
  %tp = alloca %struct.timeval, align 8
  %eoftest = alloca i32, align 4
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %_h = alloca %struct.sm_exc_handler, align 8
  %d = alloca i8*, align 8
  %cmdlen = alloca i64, align 8
  %idx = alloca i32, align 4
  %http_cmd = alloca i8*, align 8
  %dnow = alloca i64, align 8
  %dnow701 = alloca i64, align 8
  %state912 = alloca i8, align 1
  %response914 = alloca i8*, align 8
  %dnow1045 = alloca i64, align 8
  %_h1129 = alloca %struct.sm_exc_handler, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp1219 = alloca i32, align 4
  %state1284 = alloca i8, align 1
  %response1286 = alloca i8*, align 8
  %savelogusrerrs = alloca i32, align 4
  %tsave = alloca i32, align 4
  %tsave1315 = alloca i32, align 4
  %exc = alloca %struct.sm_exc*, align 8
  %dnow1436 = alloca i64, align 8
  %buf = alloca [16 x i8], align 16
  %_h1499 = alloca %struct.sm_exc_handler, align 8
  %state1656 = alloca i8, align 1
  %response1658 = alloca i8*, align 8
  %savelogusrerrs1703 = alloca i32, align 4
  %tsave1712 = alloca i32, align 4
  %tsave1730 = alloca i32, align 4
  %buf1805 = alloca [16 x i8], align 16
  %exc1851 = alloca %struct.sm_exc*, align 8
  %buf1858 = alloca [16 x i8], align 16
  %state1892 = alloca i8, align 1
  %response1894 = alloca i8*, align 8
  %savelogusrerrs1940 = alloca i32, align 4
  %tsave1949 = alloca i32, align 4
  %tsave1967 = alloca i32, align 4
  %dnow2084 = alloca i64, align 8
  %dnow2191 = alloca i64, align 8
  %_h2279 = alloca %struct.sm_exc_handler, align 8
  %t = alloca i64, align 8
  %exc2442 = alloca %struct.sm_exc*, align 8
  %dnow2491 = alloca i64, align 8
  %i = alloca i32, align 4
  %qgrp = alloca i32, align 4
  %dnow2637 = alloca i64, align 8
  %dnow2662 = alloca i64, align 8
  %d2727 = alloca i8*, align 8
  %dnow2752 = alloca i64, align 8
  %dnow2794 = alloca i64, align 8
  %state2836 = alloca i8, align 1
  %response2838 = alloca i8*, align 8
  %savelogusrerrs2848 = alloca i32, align 4
  %tsave2857 = alloca i32, align 4
  %tsave2875 = alloca i32, align 4
  %dnow2942 = alloca i64, align 8
  %dnow2969 = alloca i64, align 8
  %exc3015 = alloca %struct.sm_exc*, align 8
  store volatile i8* %nullserver, i8** %nullserver.addr, align 8, !tbaa !1
  store i32* %d_flags, i32** %d_flags.addr, align 8, !tbaa !1
  store volatile %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmd** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store volatile %struct.cmd* null, %struct.cmd** %c, align 8, !tbaa !1
  %2 = bitcast i8** %cmd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.address** %vrfyqueue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.address** %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %gothello to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %vrfy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %protocol to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %sendinghost to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %peerhostname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %n_badcmds to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store volatile i32 0, i32* %n_badcmds, align 4, !tbaa !5
  %13 = bitcast i32* %n_badrcpts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store volatile i32 0, i32* %n_badrcpts, align 4, !tbaa !5
  %14 = bitcast i32* %n_verifies to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store volatile i32 0, i32* %n_verifies, align 4, !tbaa !5
  %15 = bitcast i32* %n_etrn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store volatile i32 0, i32* %n_etrn, align 4, !tbaa !5
  %16 = bitcast i32* %n_noop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store volatile i32 0, i32* %n_noop, align 4, !tbaa !5
  %17 = bitcast i32* %n_helo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store volatile i32 0, i32* %n_helo, align 4, !tbaa !5
  %18 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %tempfail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store volatile i32 0, i32* %tempfail, align 4, !tbaa !5
  %21 = bitcast i64* %wt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast i64* %previous to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast i32* %lognullconnection to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store volatile i32 1, i32* %lognullconnection, align 4, !tbaa !5
  %24 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast %struct.SMTP_T* %smtp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %25) #1
  %26 = bitcast i8** %addr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = bitcast i8** %greetcode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %greetcode, align 8, !tbaa !1
  %28 = bitcast i8** %greetmsg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8** %greetmsg, align 8, !tbaa !1
  %29 = bitcast i8** %hostname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast %struct.queue_char** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = bitcast [20 x i8*]* %args to i8*
  call void @llvm.lifetime.start(i64 160, i8* %31) #1
  %32 = bitcast [2048 x i8]* %inp to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %32) #1
  %33 = bitcast [2048 x i8]* %cmdbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %33) #1
  %34 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %features to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i64* %log_delay to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store volatile i64 0, i64* %log_delay, align 8, !tbaa !10
  %37 = bitcast i32* %milter_cmd_done to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %milter_cmd_safe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast i32* %milter_rcpt_added to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i32* %milter_cmd_fail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast %struct.address* %addr_st to i8*
  call void @llvm.lifetime.start(i64 192, i8* %41) #1
  %42 = bitcast i64* %inplen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load i32, i32* @SevenBitInput, align 4, !tbaa !5
  store i32 %43, i32* @SevenBitInput_Saved, align 4, !tbaa !5
  %sm_nrcpts = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 1
  store i32 0, i32* %sm_nrcpts, align 4, !tbaa !12
  %44 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %44, null
  %conv = zext i1 %cmp to i32
  %sm_milterize = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 %conv, i32* %sm_milterize, align 4, !tbaa !15
  %sm_milterlist = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 4
  store i32 0, i32* %sm_milterlist, align 4, !tbaa !16
  store i8* null, i8** %addr, align 8, !tbaa !1
  call void @setup_smtpd_io()
  %45 = load i32, i32* getelementptr inbounds (%struct.sm_debug, %struct.sm_debug* @DebugLeakSmtp, i32 0, i32 1), align 4, !tbaa !17
  %cmp1 = icmp uge i32 %45, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %46 = load i32, i32* getelementptr inbounds (%struct.sm_debug, %struct.sm_debug* @DebugLeakSmtp, i32 0, i32 1), align 4, !tbaa !17
  %cmp3 = icmp ne i32 %46, -1
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = call i32 @sm_debug_loadactive(%struct.sm_debug* @DebugLeakSmtp, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %47 = load i32, i32* @SmHeapMaxGroup, align 4, !tbaa !5
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* @SmHeapMaxGroup, align 4, !tbaa !5
  store i32 %inc, i32* @SmHeapGroup, align 4, !tbaa !5
  %48 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 %48)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %call5 = call %struct.SM_RPOOL_T* @sm_rpool_new_x(%struct.SM_RPOOL_T* null)
  %49 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %49, i32 0, i32 52
  store %struct.SM_RPOOL_T* %call5, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !19
  %50 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool6 = getelementptr inbounds %struct.envelope, %struct.envelope* %50, i32 0, i32 52
  %51 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool6, align 8, !tbaa !19
  %52 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %52, i32 0, i32 46
  %mac_rpool = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %e_macro, i32 0, i32 0
  store %struct.SM_RPOOL_T* %51, %struct.SM_RPOOL_T** %mac_rpool, align 8, !tbaa !25
  %53 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @settime(%struct.envelope* %53)
  call void @sm_getla()
  %54 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  store volatile i8* %54, i8** %peerhostname, align 8, !tbaa !1
  %55 = load volatile i8*, i8** %peerhostname, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %55, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store volatile i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8** %peerhostname, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %56 = load volatile i8*, i8** %peerhostname, align 8, !tbaa !1
  store i8* %56, i8** @CurHostName, align 8, !tbaa !1
  %57 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call11 = call i8* @macvalue(i32 95, %struct.envelope* %57)
  store i8* %call11, i8** @CurSmtpClient, align 8, !tbaa !1
  %58 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %58, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %59 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  store i8* %59, i8** @CurSmtpClient, align 8, !tbaa !1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  %60 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %60, i32 0, i32 11
  %61 = load i64, i64* %e_flags, align 8, !tbaa !26
  %and = and i64 %61, 16777216
  %cmp16 = icmp ne i64 %and, 0
  %conv17 = zext i1 %cmp16 to i32
  %sm_discard = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 2
  store i32 %conv17, i32* %sm_discard, align 4, !tbaa !27
  %62 = load %struct.sm_file*, %struct.sm_file** @InChannel, align 8, !tbaa !1
  %63 = load %struct.sm_file*, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  %call18 = call %struct.sm_file* @sm_io_autoflush(%struct.sm_file* %62, %struct.sm_file* %63)
  %64 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %65 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* %65)
  %66 = load i64, i64* @PrivacyFlags, align 8, !tbaa !10
  %and19 = and i64 %66, 524288
  %cmp20 = icmp ne i64 %and19, 0
  br i1 %cmp20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.15
  %67 = load i32*, i32** %d_flags.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %67, i64 2
  %68 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %and22 = and i32 %68, 32
  %tobool23 = icmp ne i32 %and22, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.15
  %69 = phi i1 [ true, %if.end.15 ], [ %tobool23, %lor.rhs ]
  %cond = select i1 %69, i32 0, i32 8
  %70 = load i32*, i32** %d_flags.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i32, i32* %70, i64 3
  %71 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  %and25 = and i32 %71, 2
  %tobool26 = icmp ne i32 %and25, 0
  %cond27 = select i1 %tobool26, i32 1024, i32 0
  %or = or i32 %cond, %cond27
  %72 = load i64, i64* @PrivacyFlags, align 8, !tbaa !10
  %and28 = and i64 %72, 8
  %cmp29 = icmp ne i64 %and28, 0
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %73 = load i64, i64* @PrivacyFlags, align 8, !tbaa !10
  %and31 = and i64 %73, 64
  %cmp32 = icmp ne i64 %and31, 0
  %cond34 = select i1 %cmp32, i32 0, i32 64
  %or35 = or i32 32, %cond34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond36 = phi i32 [ 0, %cond.true ], [ %or35, %cond.false ]
  %or37 = or i32 %or, %cond36
  %74 = load i64, i64* @PrivacyFlags, align 8, !tbaa !10
  %and38 = and i64 %74, 2097152
  %cmp39 = icmp ne i64 %and38, 0
  br i1 %cmp39, label %lor.end.43, label %lor.rhs.41

lor.rhs.41:                                       ; preds = %cond.end
  %75 = load i32, i32* @SendMIMEErrors, align 4, !tbaa !5
  %tobool42 = icmp ne i32 %75, 0
  %lnot = xor i1 %tobool42, true
  br label %lor.end.43

lor.end.43:                                       ; preds = %lor.rhs.41, %cond.end
  %76 = phi i1 [ true, %cond.end ], [ %lnot, %lor.rhs.41 ]
  %cond44 = select i1 %76, i32 0, i32 128
  %or45 = or i32 %or37, %cond44
  %or46 = or i32 %or45, 256
  store volatile i32 %or46, i32* %features, align 4, !tbaa !5
  %77 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %cmp47 = icmp eq i8* %77, null
  br i1 %cmp47, label %if.then.49, label %if.else.60

if.then.49:                                       ; preds = %lor.end.43
  %78 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %79 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %80 = load volatile i32, i32* %features, align 4, !tbaa !5
  %call50 = call i32 @srvfeatures(%struct.envelope* %78, i8* %79, i32 %80)
  store volatile i32 %call50, i32* %features, align 4, !tbaa !5
  %81 = load volatile i32, i32* %features, align 4, !tbaa !5
  %and51 = and i32 %81, 4096
  %cmp52 = icmp ne i32 %and51, 0
  br i1 %cmp52, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %if.then.49
  %82 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp55 = icmp sgt i32 %82, 4
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.54
  %83 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.9, i32 0, i32 0), i8* %83)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.then.54
  store volatile i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i8** %nullserver.addr, align 8, !tbaa !1
  br label %if.end.59

if.else:                                          ; preds = %if.then.49
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.end.58
  br label %if.end.66

if.else.60:                                       ; preds = %lor.end.43
  %84 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %call61 = call i32 @strncmp(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #11
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.else.60
  %85 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* %85)
  br label %doquit

if.end.65:                                        ; preds = %if.else.60
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.59
  %86 = load volatile i32, i32* %features, align 4, !tbaa !5
  %87 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_features = getelementptr inbounds %struct.envelope, %struct.envelope* %87, i32 0, i32 53
  store i32 %86, i32* %e_features, align 4, !tbaa !28
  %88 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call67 = call i8* @macvalue(i32 106, %struct.envelope* %88)
  store i8* %call67, i8** %hostname, align 8, !tbaa !1
  %sm_milterize68 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  %89 = load i32, i32* %sm_milterize68, align 4, !tbaa !15
  %tobool69 = icmp ne i32 %89, 0
  br i1 %tobool69, label %if.then.70, label %if.end.93

if.then.70:                                       ; preds = %if.end.66
  call void @llvm.lifetime.start(i64 1, i8* %state) #1
  %90 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %sm_milters = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 5
  %call71 = call i32 @milter_init(%struct.envelope* %90, i8* %state, %struct.milters* %sm_milters)
  %sm_milterlist72 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 4
  store i32 %call71, i32* %sm_milterlist72, align 4, !tbaa !16
  %91 = load i8, i8* %state, align 1, !tbaa !7
  %conv73 = sext i8 %91 to i32
  switch i32 %conv73, label %sw.epilog [
    i32 114, label %sw.bb
    i32 116, label %sw.bb.79
    i32 52, label %sw.bb.86
  ]

sw.bb:                                            ; preds = %if.then.70
  %92 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp74 = icmp sgt i32 %92, 3
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %sw.bb
  %93 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %93, i32 0, i32 25
  %94 = load i8*, i8** %e_id, align 8, !tbaa !29
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %94, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %sw.bb
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8** %greetcode, align 8, !tbaa !1
  store volatile i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8** %nullserver.addr, align 8, !tbaa !1
  %sm_milterize78 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 0, i32* %sm_milterize78, align 4, !tbaa !15
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.then.70
  %95 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp80 = icmp sgt i32 %95, 3
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %sw.bb.79
  %96 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id83 = getelementptr inbounds %struct.envelope, %struct.envelope* %96, i32 0, i32 25
  %97 = load i8*, i8** %e_id83, align 8, !tbaa !29
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %97, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %sw.bb.79
  store volatile i32 1, i32* %tempfail, align 4, !tbaa !5
  %sm_milterize85 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 0, i32* %sm_milterize85, align 4, !tbaa !15
  br label %sw.epilog

sw.bb.86:                                         ; preds = %if.then.70
  %98 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp87 = icmp sgt i32 %98, 3
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %sw.bb.86
  %99 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id90 = getelementptr inbounds %struct.envelope, %struct.envelope* %99, i32 0, i32 25
  %100 = load i8*, i8** %e_id90, align 8, !tbaa !29
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %sw.bb.86
  store volatile i32 1, i32* %tempfail, align 4, !tbaa !5
  %sm_milterize92 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 0, i32* %sm_milterize92, align 4, !tbaa !15
  %101 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* %101)
  %102 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %102, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue, align 8, !tbaa !30
  store volatile i32 0, i32* %lognullconnection, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then.70, %if.end.84, %if.end.77
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.91, %sw.epilog
  call void @llvm.lifetime.end(i64 1, i8* %state) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.3054 [
    i32 0, label %cleanup.cont
    i32 2, label %doquit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.93

if.end.93:                                        ; preds = %cleanup.cont, %if.end.66
  %sm_milterlist94 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 4
  %103 = load i32, i32* %sm_milterlist94, align 4, !tbaa !16
  %tobool95 = icmp ne i32 %103, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.156

land.lhs.true.96:                                 ; preds = %if.end.93
  %sm_milterize97 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  %104 = load i32, i32* %sm_milterize97, align 4, !tbaa !15
  %tobool98 = icmp ne i32 %104, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.156

land.lhs.true.99:                                 ; preds = %land.lhs.true.96
  %105 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags100 = getelementptr inbounds %struct.envelope, %struct.envelope* %105, i32 0, i32 11
  %106 = load i64, i64* %e_flags100, align 8, !tbaa !26
  %and101 = and i64 %106, 16777216
  %cmp102 = icmp ne i64 %and101, 0
  br i1 %cmp102, label %if.end.156, label %if.then.104

if.then.104:                                      ; preds = %land.lhs.true.99
  call void @llvm.lifetime.start(i64 1, i8* %state105) #1
  %107 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %call106 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8** null)
  %108 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call107 = call i8* @macvalue(i32 %call106, %struct.envelope* %108)
  store i8* %call107, i8** %q, align 8, !tbaa !1
  %109 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp108 = icmp ne i8* %109, null
  br i1 %cmp108, label %lor.end.115, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.then.104
  %110 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv111 = sext i8 %110 to i32
  %cmp112 = icmp eq i32 %conv111, 115
  br i1 %cmp112, label %lor.end.115, label %lor.rhs.114

lor.rhs.114:                                      ; preds = %lor.lhs.false.110
  call void @sm_abort_at(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 1148, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.115

lor.end.115:                                      ; preds = %111, %lor.lhs.false.110, %if.then.104
  %112 = phi i1 [ true, %lor.lhs.false.110 ], [ true, %if.then.104 ], [ false, %111 ]
  %lor.ext = zext i1 %112 to i32
  %113 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp116 = icmp eq i8* %113, null
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %lor.end.115
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8** %q, align 8, !tbaa !1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %lor.end.115
  %114 = load i8*, i8** %q, align 8, !tbaa !1
  %115 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %116 = bitcast %union.bigsockaddr* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* bitcast (%union.bigsockaddr* @RealHostAddr to i8*), i64 112, i32 4, i1 false), !tbaa.struct !31
  %call120 = call i8* @milter_connect(i8* %114, %union.bigsockaddr* byval align 8 %tmp, %struct.envelope* %115, i8* %state105)
  store i8* %call120, i8** %response, align 8, !tbaa !1
  %117 = load i8, i8* %state105, align 1, !tbaa !7
  %conv121 = sext i8 %117 to i32
  switch i32 %conv121, label %sw.epilog.147 [
    i32 121, label %sw.bb.122
    i32 114, label %sw.bb.122
    i32 116, label %sw.bb.130
    i32 52, label %sw.bb.138
  ]

sw.bb.122:                                        ; preds = %if.end.119, %if.end.119
  %118 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp123 = icmp sgt i32 %118, 3
  br i1 %cmp123, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %sw.bb.122
  %119 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id126 = getelementptr inbounds %struct.envelope, %struct.envelope* %119, i32 0, i32 25
  %120 = load i8*, i8** %e_id126, align 8, !tbaa !29
  %121 = load volatile i8*, i8** %peerhostname, align 8, !tbaa !1
  %call127 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %120, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* %121, i8* %call127)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.125, %sw.bb.122
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8** %greetcode, align 8, !tbaa !1
  store volatile i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8** %nullserver.addr, align 8, !tbaa !1
  %sm_milterize129 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 0, i32* %sm_milterize129, align 4, !tbaa !15
  br label %sw.epilog.147

sw.bb.130:                                        ; preds = %if.end.119
  %122 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp131 = icmp sgt i32 %122, 3
  br i1 %cmp131, label %if.then.133, label %if.end.136

if.then.133:                                      ; preds = %sw.bb.130
  %123 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id134 = getelementptr inbounds %struct.envelope, %struct.envelope* %123, i32 0, i32 25
  %124 = load i8*, i8** %e_id134, align 8, !tbaa !29
  %125 = load volatile i8*, i8** %peerhostname, align 8, !tbaa !1
  %call135 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %124, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0), i8* %125, i8* %call135)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.133, %sw.bb.130
  store volatile i32 1, i32* %tempfail, align 4, !tbaa !5
  %sm_milterize137 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 0, i32* %sm_milterize137, align 4, !tbaa !15
  br label %sw.epilog.147

sw.bb.138:                                        ; preds = %if.end.119
  %126 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp139 = icmp sgt i32 %126, 3
  br i1 %cmp139, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %sw.bb.138
  %127 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id142 = getelementptr inbounds %struct.envelope, %struct.envelope* %127, i32 0, i32 25
  %128 = load i8*, i8** %e_id142, align 8, !tbaa !29
  %129 = load volatile i8*, i8** %peerhostname, align 8, !tbaa !1
  %call143 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0), i8* %129, i8* %call143)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.141, %sw.bb.138
  store volatile i32 1, i32* %tempfail, align 4, !tbaa !5
  %sm_milterize145 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 0, i32* %sm_milterize145, align 4, !tbaa !15
  %130 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* %130)
  %131 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue146 = getelementptr inbounds %struct.envelope, %struct.envelope* %131, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue146, align 8, !tbaa !30
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.152

sw.epilog.147:                                    ; preds = %if.end.119, %if.end.136, %if.end.128
  %132 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp148 = icmp ne i8* %132, null
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %sw.epilog.147
  %133 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %133, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 1258)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %sw.epilog.147
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.152

cleanup.152:                                      ; preds = %if.end.144, %if.end.151
  %134 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  call void @llvm.lifetime.end(i64 1, i8* %state105) #1
  %cleanup.dest.154 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.154, label %cleanup.3054 [
    i32 0, label %cleanup.cont.155
    i32 2, label %doquit
  ]

cleanup.cont.155:                                 ; preds = %cleanup.152
  br label %if.end.156

if.end.156:                                       ; preds = %cleanup.cont.155, %land.lhs.true.99, %land.lhs.true.96, %if.end.93
  %135 = load i8*, i8** %greetcode, align 8, !tbaa !1
  %136 = load i8, i8* %135, align 1, !tbaa !7
  %conv157 = sext i8 %136 to i32
  %cmp158 = icmp eq i32 %conv157, 50
  br i1 %cmp158, label %land.lhs.true.160, label %if.end.271

land.lhs.true.160:                                ; preds = %if.end.156
  %137 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %cmp161 = icmp eq i8* %137, null
  br i1 %cmp161, label %if.then.163, label %if.end.271

if.then.163:                                      ; preds = %land.lhs.true.160
  %138 = bitcast i64* %msecs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %138) #1
  store i64 0, i64* %msecs, align 8, !tbaa !10
  %139 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #1
  %140 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 1256, i8* %140) #1
  store i8** null, i8*** %pvp, align 8, !tbaa !1
  %141 = load volatile i8*, i8** %peerhostname, align 8, !tbaa !1
  %call167 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  %142 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf, i32 0, i32 0
  %call168 = call i32 @rscap(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* %141, i8* %call167, %struct.envelope* %142, i8*** %pvp, i8* %arraydecay, i32 1256)
  store i32 %call168, i32* %r, align 4, !tbaa !5
  %143 = load i32, i32* %r, align 4, !tbaa !5
  %cmp169 = icmp eq i32 %143, 0
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.192

land.lhs.true.171:                                ; preds = %if.then.163
  %144 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %cmp172 = icmp ne i8** %144, null
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.192

land.lhs.true.174:                                ; preds = %land.lhs.true.171
  %145 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i8*, i8** %145, i64 0
  %146 = load i8*, i8** %arrayidx175, align 8, !tbaa !1
  %cmp176 = icmp ne i8* %146, null
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.192

land.lhs.true.178:                                ; preds = %land.lhs.true.174
  %147 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i8*, i8** %147, i64 0
  %148 = load i8*, i8** %arrayidx179, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i8, i8* %148, i64 0
  %149 = load i8, i8* %arrayidx180, align 1, !tbaa !7
  %conv181 = sext i8 %149 to i32
  %and182 = and i32 %conv181, 255
  %cmp183 = icmp eq i32 %and182, 150
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.192

land.lhs.true.185:                                ; preds = %land.lhs.true.178
  %150 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8*, i8** %150, i64 1
  %151 = load i8*, i8** %arrayidx186, align 8, !tbaa !1
  %cmp187 = icmp ne i8* %151, null
  br i1 %cmp187, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %land.lhs.true.185
  %152 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i8*, i8** %152, i64 1
  %153 = load i8*, i8** %arrayidx190, align 8, !tbaa !1
  %call191 = call i64 @strtol(i8* %153, i8** null, i32 10) #1
  store i64 %call191, i64* %msecs, align 8, !tbaa !10
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.189, %land.lhs.true.185, %land.lhs.true.178, %land.lhs.true.174, %land.lhs.true.171, %if.then.163
  %154 = load i64, i64* %msecs, align 8, !tbaa !10
  %cmp193 = icmp sgt i64 %154, 0
  br i1 %cmp193, label %if.then.195, label %if.end.270

if.then.195:                                      ; preds = %if.end.192
  %155 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %155) #1
  %156 = bitcast %struct.fd_set* %readfds to i8*
  call void @llvm.lifetime.start(i64 128, i8* %156) #1
  %157 = bitcast %struct.timeval* %timeout to i8*
  call void @llvm.lifetime.start(i64 16, i8* %157) #1
  %158 = bitcast %struct.timeval* %bp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %158) #1
  %159 = bitcast %struct.timeval* %ep to i8*
  call void @llvm.lifetime.start(i64 16, i8* %159) #1
  %160 = bitcast %struct.timeval* %tp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %160) #1
  %161 = bitcast i32* %eoftest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = load i64, i64* %msecs, align 8, !tbaa !10
  %div = sdiv i64 %162, 1000
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  store i64 %div, i64* %tv_sec, align 8, !tbaa !32
  %163 = load i64, i64* %msecs, align 8, !tbaa !10
  %rem = srem i64 %163, 1000
  %mul = mul nsw i64 %rem, 1000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 1
  store i64 %mul, i64* %tv_usec, align 8, !tbaa !34
  %tv_sec203 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %164 = load i64, i64* %tv_sec203, align 8, !tbaa !32
  %cmp204 = icmp sge i64 %164, 300
  br i1 %cmp204, label %if.then.206, label %if.end.209

if.then.206:                                      ; preds = %if.then.195
  %tv_sec207 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  store i64 300, i64* %tv_sec207, align 8, !tbaa !32
  %tv_usec208 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 1
  store i64 0, i64* %tv_usec208, align 8, !tbaa !34
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.206, %if.then.195
  %165 = load %struct.sm_file*, %struct.sm_file** @InChannel, align 8, !tbaa !1
  %call210 = call i32 @sm_io_getinfo(%struct.sm_file* %165, i32 3, i8* null)
  store i32 %call210, i32* %fd, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.end.209
  %166 = bitcast i32* %__d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %166) #1
  %167 = bitcast i32* %__d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %167) #1
  %__fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits, i32 0, i64 0
  %168 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx213) #1, !srcloc !35
  %asmresult = extractvalue { i64, i64* } %168, 0
  %asmresult214 = extractvalue { i64, i64* } %168, 1
  %169 = trunc i64 %asmresult to i32
  store i32 %169, i32* %__d0, align 4, !tbaa !5
  %170 = ptrtoint i64* %asmresult214 to i64
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %__d1, align 4, !tbaa !5
  %172 = bitcast i32* %__d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %__d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %174 = load i32, i32* %fd, align 4, !tbaa !5
  %rem215 = srem i32 %174, 64
  %sh_prom = zext i32 %rem215 to i64
  %shl = shl i64 1, %sh_prom
  %175 = load i32, i32* %fd, align 4, !tbaa !5
  %div216 = sdiv i32 %175, 64
  %idxprom = sext i32 %div216 to i64
  %__fds_bits217 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits217, i32 0, i64 %idxprom
  %176 = load i64, i64* %arrayidx218, align 8, !tbaa !10
  %or219 = or i64 %176, %shl
  store i64 %or219, i64* %arrayidx218, align 8, !tbaa !10
  %call220 = call i32 @gettimeofday(%struct.timeval* %bp, %struct.timezone* null) #1
  %177 = load i32, i32* %fd, align 4, !tbaa !5
  %add = add nsw i32 %177, 1
  %call221 = call i32 @select(i32 %add, %struct.fd_set* %readfds, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %timeout)
  %cmp222 = icmp sgt i32 %call221, 0
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.269

land.lhs.true.224:                                ; preds = %do.end
  %178 = load i32, i32* %fd, align 4, !tbaa !5
  %div225 = sdiv i32 %178, 64
  %idxprom226 = sext i32 %div225 to i64
  %__fds_bits227 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits227, i32 0, i64 %idxprom226
  %179 = load i64, i64* %arrayidx228, align 8, !tbaa !10
  %180 = load i32, i32* %fd, align 4, !tbaa !5
  %rem229 = srem i32 %180, 64
  %sh_prom230 = zext i32 %rem229 to i64
  %shl231 = shl i64 1, %sh_prom230
  %and232 = and i64 %179, %shl231
  %cmp233 = icmp ne i64 %and232, 0
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.269

land.lhs.true.235:                                ; preds = %land.lhs.true.224
  %181 = load %struct.sm_file*, %struct.sm_file** @InChannel, align 8, !tbaa !1
  %call236 = call i32 @sm_io_getc(%struct.sm_file* %181, i32 -2)
  store i32 %call236, i32* %eoftest, align 4, !tbaa !5
  %cmp237 = icmp ne i32 %call236, -1
  br i1 %cmp237, label %if.then.239, label %if.end.269

if.then.239:                                      ; preds = %land.lhs.true.235
  %182 = load %struct.sm_file*, %struct.sm_file** @InChannel, align 8, !tbaa !1
  %183 = load i32, i32* %eoftest, align 4, !tbaa !5
  %call240 = call i32 @sm_io_ungetc(%struct.sm_file* %182, i32 -2, i32 %183)
  %call241 = call i32 @gettimeofday(%struct.timeval* %ep, %struct.timezone* null) #1
  br label %do.body.242

do.body.242:                                      ; preds = %if.then.239
  %tv_sec243 = getelementptr inbounds %struct.timeval, %struct.timeval* %ep, i32 0, i32 0
  %184 = load i64, i64* %tv_sec243, align 8, !tbaa !32
  %tv_sec244 = getelementptr inbounds %struct.timeval, %struct.timeval* %bp, i32 0, i32 0
  %185 = load i64, i64* %tv_sec244, align 8, !tbaa !32
  %sub = sub nsw i64 %184, %185
  %tv_sec245 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 0
  store i64 %sub, i64* %tv_sec245, align 8, !tbaa !32
  %tv_usec246 = getelementptr inbounds %struct.timeval, %struct.timeval* %ep, i32 0, i32 1
  %186 = load i64, i64* %tv_usec246, align 8, !tbaa !34
  %tv_usec247 = getelementptr inbounds %struct.timeval, %struct.timeval* %bp, i32 0, i32 1
  %187 = load i64, i64* %tv_usec247, align 8, !tbaa !34
  %sub248 = sub nsw i64 %186, %187
  %tv_usec249 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 1
  store i64 %sub248, i64* %tv_usec249, align 8, !tbaa !34
  %tv_usec250 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 1
  %188 = load i64, i64* %tv_usec250, align 8, !tbaa !34
  %cmp251 = icmp slt i64 %188, 0
  br i1 %cmp251, label %if.then.253, label %if.end.257

if.then.253:                                      ; preds = %do.body.242
  %tv_sec254 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 0
  %189 = load i64, i64* %tv_sec254, align 8, !tbaa !32
  %dec = add nsw i64 %189, -1
  store i64 %dec, i64* %tv_sec254, align 8, !tbaa !32
  %tv_usec255 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 1
  %190 = load i64, i64* %tv_usec255, align 8, !tbaa !34
  %add256 = add nsw i64 %190, 1000000
  store i64 %add256, i64* %tv_usec255, align 8, !tbaa !34
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.253, %do.body.242
  br label %do.cond.258

do.cond.258:                                      ; preds = %if.end.257
  br label %do.end.259

do.end.259:                                       ; preds = %do.cond.258
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8** %greetcode, align 8, !tbaa !1
  store volatile i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8** %nullserver.addr, align 8, !tbaa !1
  %191 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id260 = getelementptr inbounds %struct.envelope, %struct.envelope* %191, i32 0, i32 25
  %192 = load i8*, i8** %e_id260, align 8, !tbaa !29
  %193 = load volatile i8*, i8** %peerhostname, align 8, !tbaa !1
  %call261 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  %tv_sec262 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 0
  %194 = load i64, i64* %tv_sec262, align 8, !tbaa !32
  %conv263 = trunc i64 %194 to i32
  %tv_usec264 = getelementptr inbounds %struct.timeval, %struct.timeval* %tp, i32 0, i32 1
  %195 = load i64, i64* %tv_usec264, align 8, !tbaa !34
  %cmp265 = icmp sge i64 %195, 500000
  %cond267 = select i1 %cmp265, i32 1, i32 0
  %add268 = add nsw i32 %conv263, %cond267
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %192, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.25, i32 0, i32 0), i8* %193, i8* %call261, i32 %add268)
  br label %if.end.269

if.end.269:                                       ; preds = %do.end.259, %land.lhs.true.235, %land.lhs.true.224, %do.end
  %196 = bitcast i32* %eoftest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast %struct.timeval* %tp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %197) #1
  %198 = bitcast %struct.timeval* %ep to i8*
  call void @llvm.lifetime.end(i64 16, i8* %198) #1
  %199 = bitcast %struct.timeval* %bp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %199) #1
  %200 = bitcast %struct.timeval* %timeout to i8*
  call void @llvm.lifetime.end(i64 16, i8* %200) #1
  %201 = bitcast %struct.fd_set* %readfds to i8*
  call void @llvm.lifetime.end(i64 128, i8* %201) #1
  %202 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.end.192
  %203 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 1256, i8* %203) #1
  %204 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i64* %msecs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %land.lhs.true.160, %if.end.156
  %206 = load i8*, i8** %greetcode, align 8, !tbaa !1
  %207 = load i8, i8* %206, align 1, !tbaa !7
  %conv272 = sext i8 %207 to i32
  %cmp273 = icmp eq i32 %conv272, 53
  br i1 %cmp273, label %if.then.275, label %if.else.278

if.then.275:                                      ; preds = %if.end.271
  %arraydecay276 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %208 = load i8*, i8** %hostname, align 8, !tbaa !1
  %209 = load i8*, i8** %greetmsg, align 8, !tbaa !1
  %call277 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay276, i64 2048, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* %208, i8* %209)
  br label %if.end.280

if.else.278:                                      ; preds = %if.end.271
  %210 = load i8*, i8** @SmtpGreeting, align 8, !tbaa !1
  %arraydecay279 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %211 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %210, i8* %arraydecay279, i64 2048, %struct.envelope* %211)
  br label %if.end.280

if.end.280:                                       ; preds = %if.else.278, %if.then.275
  %arraydecay281 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %call282 = call i8* @strchr(i8* %arraydecay281, i32 10) #1
  store volatile i8* %call282, i8** %p, align 8, !tbaa !1
  %212 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %cmp283 = icmp ne i8* %212, null
  br i1 %cmp283, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %if.end.280
  %213 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %213, i32 1
  store volatile i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %213, align 1, !tbaa !7
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.285, %if.end.280
  %arraydecay287 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %call288 = call i8* @strchr(i8* %arraydecay287, i32 32) #1
  store i8* %call288, i8** %id, align 8, !tbaa !1
  %214 = load i8*, i8** %id, align 8, !tbaa !1
  %cmp289 = icmp eq i8* %214, null
  br i1 %cmp289, label %if.then.291, label %if.end.295

if.then.291:                                      ; preds = %if.end.286
  %arraydecay292 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %call293 = call i64 @strlen(i8* %arraydecay292) #11
  %arrayidx294 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i64 %call293
  store i8* %arrayidx294, i8** %id, align 8, !tbaa !1
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.291, %if.end.286
  %215 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %cmp296 = icmp eq i8* %215, null
  br i1 %cmp296, label %if.then.298, label %if.else.301

if.then.298:                                      ; preds = %if.end.295
  %arraydecay299 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  %216 = load i8*, i8** %greetcode, align 8, !tbaa !1
  %call300 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay299, i64 2048, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* %216)
  br label %if.end.304

if.else.301:                                      ; preds = %if.end.295
  %arraydecay302 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  %217 = load i8*, i8** %greetcode, align 8, !tbaa !1
  %call303 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay302, i64 2048, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* %217)
  br label %if.end.304

if.end.304:                                       ; preds = %if.else.301, %if.then.298
  %arraydecay305 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  %218 = load i8*, i8** %id, align 8, !tbaa !1
  %arraydecay306 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %218 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay306 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv307 = trunc i64 %sub.ptr.sub to i32
  %arraydecay308 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %219 = load i8*, i8** %id, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* %arraydecay305, i32 %conv307, i8* %arraydecay308, i8* %219)
  br label %while.cond

while.cond:                                       ; preds = %if.end.329, %if.end.304
  %220 = load volatile i8*, i8** %p, align 8, !tbaa !1
  store i8* %220, i8** %id, align 8, !tbaa !1
  %cmp309 = icmp ne i8* %220, null
  br i1 %cmp309, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %221 = load i8*, i8** %id, align 8, !tbaa !1
  %call311 = call i8* @strchr(i8* %221, i32 10) #1
  store volatile i8* %call311, i8** %p, align 8, !tbaa !1
  %cmp312 = icmp ne i8* %call311, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %222 = phi i1 [ false, %while.cond ], [ %cmp312, %land.rhs ]
  br i1 %222, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %223 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr314 = getelementptr inbounds i8, i8* %223, i32 1
  store volatile i8* %incdec.ptr314, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %223, align 1, !tbaa !7
  %224 = load i8*, i8** %id, align 8, !tbaa !1
  %225 = load i8, i8* %224, align 1, !tbaa !7
  %conv315 = sext i8 %225 to i32
  %and316 = and i32 %conv315, -128
  %cmp317 = icmp eq i32 %and316, 0
  br i1 %cmp317, label %land.lhs.true.319, label %if.end.329

land.lhs.true.319:                                ; preds = %while.body
  %226 = load i8*, i8** %id, align 8, !tbaa !1
  %227 = load i8, i8* %226, align 1, !tbaa !7
  %conv320 = sext i8 %227 to i32
  %idxprom321 = sext i32 %conv320 to i64
  %call322 = call i16** @__ctype_b_loc() #10
  %228 = load i16*, i16** %call322, align 8, !tbaa !1
  %arrayidx323 = getelementptr inbounds i16, i16* %228, i64 %idxprom321
  %229 = load i16, i16* %arrayidx323, align 2, !tbaa !8
  %conv324 = zext i16 %229 to i32
  %and325 = and i32 %conv324, 8192
  %tobool326 = icmp ne i32 %and325, 0
  br i1 %tobool326, label %if.then.327, label %if.end.329

if.then.327:                                      ; preds = %land.lhs.true.319
  %230 = load i8*, i8** %id, align 8, !tbaa !1
  %incdec.ptr328 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %incdec.ptr328, i8** %id, align 8, !tbaa !1
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.327, %land.lhs.true.319, %while.body
  %arraydecay330 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  %231 = load i8*, i8** %greetcode, align 8, !tbaa !1
  %call331 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay330, i64 2048, i32 2, i8* %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0))
  %arraydecay332 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  %232 = load i8*, i8** %id, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* %arraydecay332, i8* %232)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %233 = load i8*, i8** %id, align 8, !tbaa !1
  %cmp333 = icmp ne i8* %233, null
  br i1 %cmp333, label %if.then.335, label %if.end.354

if.then.335:                                      ; preds = %while.end
  %234 = load i8*, i8** %id, align 8, !tbaa !1
  %235 = load i8, i8* %234, align 1, !tbaa !7
  %conv336 = sext i8 %235 to i32
  %and337 = and i32 %conv336, -128
  %cmp338 = icmp eq i32 %and337, 0
  br i1 %cmp338, label %land.lhs.true.340, label %if.end.350

land.lhs.true.340:                                ; preds = %if.then.335
  %236 = load i8*, i8** %id, align 8, !tbaa !1
  %237 = load i8, i8* %236, align 1, !tbaa !7
  %conv341 = sext i8 %237 to i32
  %idxprom342 = sext i32 %conv341 to i64
  %call343 = call i16** @__ctype_b_loc() #10
  %238 = load i16*, i16** %call343, align 8, !tbaa !1
  %arrayidx344 = getelementptr inbounds i16, i16* %238, i64 %idxprom342
  %239 = load i16, i16* %arrayidx344, align 2, !tbaa !8
  %conv345 = zext i16 %239 to i32
  %and346 = and i32 %conv345, 8192
  %tobool347 = icmp ne i32 %and346, 0
  br i1 %tobool347, label %if.then.348, label %if.end.350

if.then.348:                                      ; preds = %land.lhs.true.340
  %240 = load i8*, i8** %id, align 8, !tbaa !1
  %incdec.ptr349 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %incdec.ptr349, i8** %id, align 8, !tbaa !1
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.348, %land.lhs.true.340, %if.then.335
  %arraydecay351 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  %241 = load i8*, i8** %greetcode, align 8, !tbaa !1
  %call352 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay351, i64 2048, i32 2, i8* %241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0))
  %arraydecay353 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  %242 = load i8*, i8** %id, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* %arraydecay353, i8* %242)
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.350, %while.end
  store volatile i8* null, i8** %protocol, align 8, !tbaa !1
  %243 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call355 = call i8* @macvalue(i32 115, %struct.envelope* %243)
  store volatile i8* %call355, i8** %sendinghost, align 8, !tbaa !1
  %244 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %244, i32 0, i32 36
  %245 = load i8*, i8** %e_quarmsg, align 8, !tbaa !36
  %cmp356 = icmp eq i8* %245, null
  br i1 %cmp356, label %if.then.358, label %if.else.359

if.then.358:                                      ; preds = %if.end.354
  %sm_quarmsg = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 7
  store i8* null, i8** %sm_quarmsg, align 8, !tbaa !37
  br label %if.end.363

if.else.359:                                      ; preds = %if.end.354
  %246 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg360 = getelementptr inbounds %struct.envelope, %struct.envelope* %246, i32 0, i32 36
  %247 = load i8*, i8** %e_quarmsg360, align 8, !tbaa !36
  %call361 = call i8* @newstr(i8* %247)
  %sm_quarmsg362 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 7
  store i8* %call361, i8** %sm_quarmsg362, align 8, !tbaa !37
  br label %if.end.363

if.end.363:                                       ; preds = %if.else.359, %if.then.358
  %248 = load volatile i8*, i8** %sendinghost, align 8, !tbaa !1
  %cmp364 = icmp ne i8* %248, null
  br i1 %cmp364, label %if.then.366, label %if.end.368

if.then.366:                                      ; preds = %if.end.363
  %249 = load volatile i8*, i8** %sendinghost, align 8, !tbaa !1
  %call367 = call i8* @sm_strdup_x(i8* %249)
  store volatile i8* %call367, i8** %sendinghost, align 8, !tbaa !1
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.366, %if.end.363
  store volatile i32 1, i32* %first, align 4, !tbaa !5
  store volatile i32 0, i32* %gothello, align 4, !tbaa !5
  %sm_gotmail = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 0
  store i32 0, i32* %sm_gotmail, align 4, !tbaa !38
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.3053, %if.end.368
  %250 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.start(i64 224, i8* %250) #1
  br label %do.body.370

do.body.370:                                      ; preds = %for.cond
  %eh_value = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  store %struct.sm_exc* null, %struct.sm_exc** %eh_value, align 8, !tbaa !39
  %251 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_parent = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  store %struct.sm_exc_handler* %251, %struct.sm_exc_handler** %eh_parent, align 8, !tbaa !41
  %eh_state = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  store i32 2, i32* %eh_state, align 4, !tbaa !42
  store %struct.sm_exc_handler* %_h, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_context = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay371 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context, i32 0, i32 0
  %call372 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay371, i32 0) #13
  %cmp373 = icmp eq i32 %call372, 0
  br i1 %cmp373, label %if.then.375, label %if.end.2988

if.then.375:                                      ; preds = %do.body.370
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  store i32 0, i32* @HoldErrs, align 4, !tbaa !5
  store i32 0, i32* @SuprErrs, align 4, !tbaa !5
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  store i32 1, i32* @OnlyOneError, align 4, !tbaa !5
  %252 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags376 = getelementptr inbounds %struct.envelope, %struct.envelope* %252, i32 0, i32 11
  %253 = load i64, i64* %e_flags376, align 8, !tbaa !26
  %and377 = and i64 %253, -4609
  store i64 %and377, i64* %e_flags376, align 8, !tbaa !26
  store volatile i32 0, i32* %milter_cmd_fail, align 4, !tbaa !5
  %254 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %254, i32 0, i32 3
  store i8* null, i8** %e_to, align 8, !tbaa !43
  store i32 0, i32* @Errors, align 4, !tbaa !5
  store i8* null, i8** @FileName, align 8, !tbaa !1
  %call378 = call i32 @sm_io_flush(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %255 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %256 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %255, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* %256)
  %257 = load %struct.sm_file*, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  %f_flags = getelementptr inbounds %struct.sm_file, %struct.sm_file* %257, i32 0, i32 4
  %258 = load i64, i64* %f_flags, align 8, !tbaa !44
  %and379 = and i64 %258, 256
  %cmp380 = icmp ne i64 %and379, 0
  br i1 %cmp380, label %if.then.387, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %if.then.375
  %arraydecay383 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %259 = load %struct.sm_file*, %struct.sm_file** @InChannel, align 8, !tbaa !1
  %260 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 6), align 8, !tbaa !47
  %261 = load i8*, i8** @SmtpPhase, align 8, !tbaa !1
  %call384 = call i8* @sfgets(i8* %arraydecay383, i32 2048, %struct.sm_file* %259, i64 %260, i8* %261)
  store volatile i8* %call384, i8** %p, align 8, !tbaa !1
  %cmp385 = icmp eq i8* %call384, null
  br i1 %cmp385, label %if.then.387, label %if.end.421

if.then.387:                                      ; preds = %lor.lhs.false.382, %if.then.375
  %262 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %262) #1
  %call389 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8** null)
  %263 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call390 = call i8* @macvalue(i32 %call389, %struct.envelope* %263)
  store i8* %call390, i8** %d, align 8, !tbaa !1
  %264 = load i8*, i8** %d, align 8, !tbaa !1
  %cmp391 = icmp eq i8* %264, null
  br i1 %cmp391, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %if.then.387
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8** %d, align 8, !tbaa !1
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.393, %if.then.387
  %265 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @disconnect(i32 1, %struct.envelope* %265)
  %266 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_quit(%struct.envelope* %266)
  %267 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %268 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i32 0, i32 0), i8* %267, i8* %268)
  %269 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %sm_gotmail395 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 0
  %270 = load i32, i32* %sm_gotmail395, align 4, !tbaa !38
  %tobool396 = icmp ne i32 %270, 0
  %cond397 = select i1 %tobool396, i32 1, i32 19
  %cmp398 = icmp sgt i32 %269, %cond397
  br i1 %cmp398, label %if.then.400, label %if.end.412

if.then.400:                                      ; preds = %if.end.394
  %271 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id401 = getelementptr inbounds %struct.envelope, %struct.envelope* %271, i32 0, i32 25
  %272 = load i8*, i8** %e_id401, align 8, !tbaa !29
  %273 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %274 = load i8*, i8** %d, align 8, !tbaa !1
  %275 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmp402 = icmp eq %struct.cmd* %275, null
  br i1 %cmp402, label %cond.true.407, label %lor.lhs.false.404

lor.lhs.false.404:                                ; preds = %if.then.400
  %276 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_name = getelementptr inbounds %struct.cmd, %struct.cmd* %276, i32 0, i32 0
  %277 = load i8*, i8** %cmd_name, align 8, !tbaa !49
  %cmp405 = icmp eq i8* %277, null
  br i1 %cmp405, label %cond.true.407, label %cond.false.408

cond.true.407:                                    ; preds = %lor.lhs.false.404, %if.then.400
  br label %cond.end.410

cond.false.408:                                   ; preds = %lor.lhs.false.404
  %278 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_name409 = getelementptr inbounds %struct.cmd, %struct.cmd* %278, i32 0, i32 0
  %279 = load i8*, i8** %cmd_name409, align 8, !tbaa !49
  br label %cond.end.410

cond.end.410:                                     ; preds = %cond.false.408, %cond.true.407
  %cond411 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %cond.true.407 ], [ %279, %cond.false.408 ]
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %272, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i32 0, i32 0), i8* %273, i8* %274, i8* %cond411)
  br label %if.end.412

if.end.412:                                       ; preds = %cond.end.410, %if.end.394
  %280 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags413 = getelementptr inbounds %struct.envelope, %struct.envelope* %280, i32 0, i32 11
  %281 = load i64, i64* %e_flags413, align 8, !tbaa !26
  %and414 = and i64 %281, 8
  %cmp415 = icmp ne i64 %and414, 0
  br i1 %cmp415, label %if.then.417, label %if.end.419

if.then.417:                                      ; preds = %if.end.412
  %282 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue418 = getelementptr inbounds %struct.envelope, %struct.envelope* %282, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue418, align 8, !tbaa !30
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.417, %if.end.412
  store i32 2, i32* %cleanup.dest.slot
  %283 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %cleanup.dest2694 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest2694, label %cleanup.3051 [
    i32 2, label %doquit
  ]

if.end.421:                                       ; preds = %lor.lhs.false.382
  %arraydecay422 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %call423 = call i64 @strlen(i8* %arraydecay422) #11
  store i64 %call423, i64* %inplen, align 8, !tbaa !10
  %284 = load volatile i32, i32* %first, align 4, !tbaa !5
  %tobool424 = icmp ne i32 %284, 0
  br i1 %tobool424, label %if.then.425, label %if.end.467

if.then.425:                                      ; preds = %if.end.421
  %285 = bitcast i64* %cmdlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %285) #1
  %286 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %286) #1
  %287 = bitcast i8** %http_cmd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %287) #1
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond.429

for.cond.429:                                     ; preds = %for.inc, %if.then.425
  %288 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom430 = sext i32 %288 to i64
  %arrayidx431 = getelementptr inbounds [5 x i8*], [5 x i8*]* @smtp.http_cmds, i32 0, i64 %idxprom430
  %289 = load i8*, i8** %arrayidx431, align 8, !tbaa !1
  store i8* %289, i8** %http_cmd, align 8, !tbaa !1
  %cmp432 = icmp ne i8* %289, null
  br i1 %cmp432, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.429
  %290 = load i8*, i8** %http_cmd, align 8, !tbaa !1
  %call434 = call i64 @strlen(i8* %290) #11
  store i64 %call434, i64* %cmdlen, align 8, !tbaa !10
  %291 = load i64, i64* %cmdlen, align 8, !tbaa !10
  %292 = load i64, i64* %inplen, align 8, !tbaa !10
  %cmp435 = icmp ult i64 %291, %292
  br i1 %cmp435, label %land.lhs.true.437, label %if.end.460

land.lhs.true.437:                                ; preds = %for.body
  %arraydecay438 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %293 = load i8*, i8** %http_cmd, align 8, !tbaa !1
  %294 = load i64, i64* %cmdlen, align 8, !tbaa !10
  %call439 = call i32 @sm_strncasecmp(i8* %arraydecay438, i8* %293, i64 %294)
  %cmp440 = icmp eq i32 %call439, 0
  br i1 %cmp440, label %land.lhs.true.442, label %if.end.460

land.lhs.true.442:                                ; preds = %land.lhs.true.437
  %295 = load i64, i64* %cmdlen, align 8, !tbaa !10
  %arrayidx443 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i64 %295
  %296 = load i8, i8* %arrayidx443, align 1, !tbaa !7
  %conv444 = sext i8 %296 to i32
  %and445 = and i32 %conv444, -128
  %cmp446 = icmp eq i32 %and445, 0
  br i1 %cmp446, label %land.lhs.true.448, label %if.end.460

land.lhs.true.448:                                ; preds = %land.lhs.true.442
  %297 = load i64, i64* %cmdlen, align 8, !tbaa !10
  %arrayidx449 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i64 %297
  %298 = load i8, i8* %arrayidx449, align 1, !tbaa !7
  %conv450 = sext i8 %298 to i32
  %idxprom451 = sext i32 %conv450 to i64
  %call452 = call i16** @__ctype_b_loc() #10
  %299 = load i16*, i16** %call452, align 8, !tbaa !1
  %arrayidx453 = getelementptr inbounds i16, i16* %299, i64 %idxprom451
  %300 = load i16, i16* %arrayidx453, align 2, !tbaa !8
  %conv454 = zext i16 %300 to i32
  %and455 = and i32 %conv454, 8192
  %tobool456 = icmp ne i32 %and455, 0
  br i1 %tobool456, label %if.then.457, label %if.end.460

if.then.457:                                      ; preds = %land.lhs.true.448
  %301 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %302 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0), i8* %301, i8* %302)
  %303 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id458 = getelementptr inbounds %struct.envelope, %struct.envelope* %303, i32 0, i32 25
  %304 = load i8*, i8** %e_id458, align 8, !tbaa !29
  %305 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay459 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %304, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0), i8* %305, i8* %arraydecay459)
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.462

if.end.460:                                       ; preds = %land.lhs.true.448, %land.lhs.true.442, %land.lhs.true.437, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.460
  %306 = load i32, i32* %idx, align 4, !tbaa !5
  %inc461 = add nsw i32 %306, 1
  store i32 %inc461, i32* %idx, align 4, !tbaa !5
  br label %for.cond.429

for.end:                                          ; preds = %for.cond.429
  store volatile i32 0, i32* %first, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.462

cleanup.462:                                      ; preds = %if.then.457, %for.end
  %307 = bitcast i8** %http_cmd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #1
  %308 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i64* %cmdlen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %cleanup.dest.465 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.465, label %cleanup.3051 [
    i32 0, label %cleanup.cont.466
    i32 2, label %doquit
  ]

cleanup.cont.466:                                 ; preds = %cleanup.462
  br label %if.end.467

if.end.467:                                       ; preds = %cleanup.cont.466, %if.end.421
  %arraydecay468 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void @fixcrlf(i8* %arraydecay468, i32 1)
  %310 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %310, i32 0, i32 32
  %311 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !51
  %cmp469 = icmp ne %struct.sm_file* %311, null
  br i1 %cmp469, label %if.then.471, label %if.end.475

if.then.471:                                      ; preds = %if.end.467
  %312 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp472 = getelementptr inbounds %struct.envelope, %struct.envelope* %312, i32 0, i32 32
  %313 = load %struct.sm_file*, %struct.sm_file** %e_xfp472, align 8, !tbaa !51
  %arraydecay473 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %call474 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %313, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* %arraydecay473)
  br label %if.end.475

if.end.475:                                       ; preds = %if.then.471, %if.end.467
  %314 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp476 = icmp sgt i32 %314, 14
  br i1 %cmp476, label %if.then.478, label %if.end.481

if.then.478:                                      ; preds = %if.end.475
  %315 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id479 = getelementptr inbounds %struct.envelope, %struct.envelope* %315, i32 0, i32 25
  %316 = load i8*, i8** %e_id479, align 8, !tbaa !29
  %arraydecay480 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %316, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay480)
  br label %if.end.481

if.end.481:                                       ; preds = %if.then.478, %if.end.475
  %arraydecay482 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  store volatile i8* %arraydecay482, i8** %p, align 8, !tbaa !1
  br label %for.cond.483

for.cond.483:                                     ; preds = %for.inc.498, %if.end.481
  %317 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %318 = load i8, i8* %317, align 1, !tbaa !7
  %conv484 = sext i8 %318 to i32
  %and485 = and i32 %conv484, -128
  %cmp486 = icmp eq i32 %and485, 0
  br i1 %cmp486, label %land.rhs.488, label %land.end.496

land.rhs.488:                                     ; preds = %for.cond.483
  %319 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %320 = load i8, i8* %319, align 1, !tbaa !7
  %conv489 = sext i8 %320 to i32
  %idxprom490 = sext i32 %conv489 to i64
  %call491 = call i16** @__ctype_b_loc() #10
  %321 = load i16*, i16** %call491, align 8, !tbaa !1
  %arrayidx492 = getelementptr inbounds i16, i16* %321, i64 %idxprom490
  %322 = load i16, i16* %arrayidx492, align 2, !tbaa !8
  %conv493 = zext i16 %322 to i32
  %and494 = and i32 %conv493, 8192
  %tobool495 = icmp ne i32 %and494, 0
  br label %land.end.496

land.end.496:                                     ; preds = %land.rhs.488, %for.cond.483
  %323 = phi i1 [ false, %for.cond.483 ], [ %tobool495, %land.rhs.488 ]
  br i1 %323, label %for.body.497, label %for.end.500

for.body.497:                                     ; preds = %land.end.496
  br label %for.inc.498

for.inc.498:                                      ; preds = %for.body.497
  %324 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr499 = getelementptr inbounds i8, i8* %324, i32 1
  store volatile i8* %incdec.ptr499, i8** %p, align 8, !tbaa !1
  br label %for.cond.483

for.end.500:                                      ; preds = %land.end.496
  %arraydecay501 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  store i8* %arraydecay501, i8** %cmd, align 8, !tbaa !1
  br label %while.cond.502

while.cond.502:                                   ; preds = %while.body.524, %for.end.500
  %325 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %326 = load i8, i8* %325, align 1, !tbaa !7
  %conv503 = sext i8 %326 to i32
  %cmp504 = icmp ne i32 %conv503, 0
  br i1 %cmp504, label %land.lhs.true.506, label %land.end.523

land.lhs.true.506:                                ; preds = %while.cond.502
  %327 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %328 = load i8, i8* %327, align 1, !tbaa !7
  %conv507 = sext i8 %328 to i32
  %and508 = and i32 %conv507, -128
  %cmp509 = icmp eq i32 %and508, 0
  br i1 %cmp509, label %land.lhs.true.511, label %land.rhs.519

land.lhs.true.511:                                ; preds = %land.lhs.true.506
  %329 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %330 = load i8, i8* %329, align 1, !tbaa !7
  %conv512 = sext i8 %330 to i32
  %idxprom513 = sext i32 %conv512 to i64
  %call514 = call i16** @__ctype_b_loc() #10
  %331 = load i16*, i16** %call514, align 8, !tbaa !1
  %arrayidx515 = getelementptr inbounds i16, i16* %331, i64 %idxprom513
  %332 = load i16, i16* %arrayidx515, align 2, !tbaa !8
  %conv516 = zext i16 %332 to i32
  %and517 = and i32 %conv516, 8192
  %tobool518 = icmp ne i32 %and517, 0
  br i1 %tobool518, label %land.end.523, label %land.rhs.519

land.rhs.519:                                     ; preds = %land.lhs.true.511, %land.lhs.true.506
  %333 = load i8*, i8** %cmd, align 8, !tbaa !1
  %arrayidx520 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i64 2046
  %cmp521 = icmp ult i8* %333, %arrayidx520
  br label %land.end.523

land.end.523:                                     ; preds = %land.rhs.519, %land.lhs.true.511, %while.cond.502
  %334 = phi i1 [ false, %land.lhs.true.511 ], [ false, %while.cond.502 ], [ %cmp521, %land.rhs.519 ]
  br i1 %334, label %while.body.524, label %while.end.527

while.body.524:                                   ; preds = %land.end.523
  %335 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr525 = getelementptr inbounds i8, i8* %335, i32 1
  store volatile i8* %incdec.ptr525, i8** %p, align 8, !tbaa !1
  %336 = load i8, i8* %335, align 1, !tbaa !7
  %337 = load i8*, i8** %cmd, align 8, !tbaa !1
  %incdec.ptr526 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %incdec.ptr526, i8** %cmd, align 8, !tbaa !1
  store i8 %336, i8* %337, align 1, !tbaa !7
  br label %while.cond.502

while.end.527:                                    ; preds = %land.end.523
  %338 = load i8*, i8** %cmd, align 8, !tbaa !1
  store i8 0, i8* %338, align 1, !tbaa !7
  br label %while.cond.528

while.cond.528:                                   ; preds = %while.body.542, %while.end.527
  %339 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %340 = load i8, i8* %339, align 1, !tbaa !7
  %conv529 = sext i8 %340 to i32
  %and530 = and i32 %conv529, -128
  %cmp531 = icmp eq i32 %and530, 0
  br i1 %cmp531, label %land.rhs.533, label %land.end.541

land.rhs.533:                                     ; preds = %while.cond.528
  %341 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %342 = load i8, i8* %341, align 1, !tbaa !7
  %conv534 = sext i8 %342 to i32
  %idxprom535 = sext i32 %conv534 to i64
  %call536 = call i16** @__ctype_b_loc() #10
  %343 = load i16*, i16** %call536, align 8, !tbaa !1
  %arrayidx537 = getelementptr inbounds i16, i16* %343, i64 %idxprom535
  %344 = load i16, i16* %arrayidx537, align 2, !tbaa !8
  %conv538 = zext i16 %344 to i32
  %and539 = and i32 %conv538, 8192
  %tobool540 = icmp ne i32 %and539, 0
  br label %land.end.541

land.end.541:                                     ; preds = %land.rhs.533, %while.cond.528
  %345 = phi i1 [ false, %while.cond.528 ], [ %tobool540, %land.rhs.533 ]
  br i1 %345, label %while.body.542, label %while.end.544

while.body.542:                                   ; preds = %land.end.541
  %346 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr543 = getelementptr inbounds i8, i8* %346, i32 1
  store volatile i8* %incdec.ptr543, i8** %p, align 8, !tbaa !1
  br label %while.cond.528

while.end.544:                                    ; preds = %land.end.541
  store volatile %struct.cmd* getelementptr inbounds ([21 x %struct.cmd], [21 x %struct.cmd]* @CmdTab, i32 0, i32 0), %struct.cmd** %c, align 8, !tbaa !1
  br label %for.cond.545

for.cond.545:                                     ; preds = %for.inc.557, %while.end.544
  %347 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_name546 = getelementptr inbounds %struct.cmd, %struct.cmd* %347, i32 0, i32 0
  %348 = load i8*, i8** %cmd_name546, align 8, !tbaa !49
  %cmp547 = icmp ne i8* %348, null
  br i1 %cmp547, label %for.body.549, label %for.end.559

for.body.549:                                     ; preds = %for.cond.545
  %349 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_name550 = getelementptr inbounds %struct.cmd, %struct.cmd* %349, i32 0, i32 0
  %350 = load i8*, i8** %cmd_name550, align 8, !tbaa !49
  %arraydecay551 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  %call552 = call i32 @sm_strcasecmp(i8* %350, i8* %arraydecay551)
  %cmp553 = icmp eq i32 %call552, 0
  br i1 %cmp553, label %if.then.555, label %if.end.556

if.then.555:                                      ; preds = %for.body.549
  br label %for.end.559

if.end.556:                                       ; preds = %for.body.549
  br label %for.inc.557

for.inc.557:                                      ; preds = %if.end.556
  %351 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %incdec.ptr558 = getelementptr inbounds %struct.cmd, %struct.cmd* %351, i32 1
  store volatile %struct.cmd* %incdec.ptr558, %struct.cmd** %c, align 8, !tbaa !1
  br label %for.cond.545

for.end.559:                                      ; preds = %if.then.555, %for.cond.545
  %call560 = call i32* @__errno_location() #10
  store i32 0, i32* %call560, align 4, !tbaa !5
  %352 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_code = getelementptr inbounds %struct.cmd, %struct.cmd* %352, i32 0, i32 1
  %353 = load i32, i32* %cmd_code, align 4, !tbaa !52
  switch i32 %353, label %sw.default [
    i32 1, label %sw.bb.561
    i32 6, label %sw.bb.561
    i32 5, label %sw.bb.561
    i32 12, label %sw.bb.561
  ]

sw.bb.561:                                        ; preds = %for.end.559, %for.end.559, %for.end.559, %for.end.559
  store volatile i32 0, i32* %lognullconnection, align 4, !tbaa !5
  br label %sw.default

sw.default:                                       ; preds = %for.end.559, %sw.bb.561
  %arraydecay562 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  store i8* %arraydecay562, i8** %q, align 8, !tbaa !1
  br label %sw.epilog.563

sw.epilog.563:                                    ; preds = %sw.default
  %354 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id564 = getelementptr inbounds %struct.envelope, %struct.envelope* %354, i32 0, i32 25
  %355 = load i8*, i8** %e_id564, align 8, !tbaa !29
  %cmp565 = icmp eq i8* %355, null
  br i1 %cmp565, label %if.then.567, label %if.else.568

if.then.567:                                      ; preds = %sw.epilog.563
  %356 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %357 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %358 = load i8*, i8** %q, align 8, !tbaa !1
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %356, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* %357, i8* %358)
  br label %if.end.570

if.else.568:                                      ; preds = %sw.epilog.563
  %359 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %360 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call569 = call i8* @qid_printname(%struct.envelope* %360)
  %361 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %362 = load i8*, i8** %q, align 8, !tbaa !1
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %359, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call569, i8* %361, i8* %362)
  br label %if.end.570

if.end.570:                                       ; preds = %if.else.568, %if.then.567
  %363 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %cmp571 = icmp ne i8* %363, null
  br i1 %cmp571, label %if.then.577, label %lor.lhs.false.573

lor.lhs.false.573:                                ; preds = %if.end.570
  %364 = load i32*, i32** %d_flags.addr, align 8, !tbaa !1
  %arrayidx574 = getelementptr inbounds i32, i32* %364, i64 0
  %365 = load i32, i32* %arrayidx574, align 4, !tbaa !5
  %and575 = and i32 %365, 2
  %tobool576 = icmp ne i32 %and575, 0
  br i1 %tobool576, label %if.then.577, label %if.end.690

if.then.577:                                      ; preds = %lor.lhs.false.573, %if.end.570
  %366 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_code578 = getelementptr inbounds %struct.cmd, %struct.cmd* %366, i32 0, i32 1
  %367 = load i32, i32* %cmd_code578, align 4, !tbaa !52
  switch i32 %367, label %sw.default.612 [
    i32 8, label %sw.bb.579
    i32 9, label %sw.bb.579
    i32 11, label %sw.bb.579
    i32 7, label %sw.bb.579
    i32 4, label %sw.bb.579
    i32 0, label %sw.bb.579
    i32 12, label %sw.bb.580
  ]

sw.bb.579:                                        ; preds = %if.then.577, %if.then.577, %if.then.577, %if.then.577, %if.then.577, %if.then.577
  br label %sw.epilog.689

sw.bb.580:                                        ; preds = %if.then.577
  %368 = load i32*, i32** %d_flags.addr, align 8, !tbaa !1
  %arrayidx581 = getelementptr inbounds i32, i32* %368, i64 0
  %369 = load i32, i32* %arrayidx581, align 4, !tbaa !5
  %and582 = and i32 %369, 2
  %tobool583 = icmp ne i32 %and582, 0
  br i1 %tobool583, label %land.lhs.true.584, label %if.end.588

land.lhs.true.584:                                ; preds = %sw.bb.580
  %370 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %cmp585 = icmp eq i8* %370, null
  br i1 %cmp585, label %if.then.587, label %if.end.588

if.then.587:                                      ; preds = %land.lhs.true.584
  br label %sw.epilog.689

if.end.588:                                       ; preds = %land.lhs.true.584, %sw.bb.580
  %371 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp589 = icmp sgt i32 %371, 0
  br i1 %cmp589, label %land.lhs.true.591, label %if.end.611

land.lhs.true.591:                                ; preds = %if.end.588
  %call592 = call i32 @getla()
  store i32 %call592, i32* @CurrentLA, align 4, !tbaa !5
  %372 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp593 = icmp sge i32 %call592, %372
  br i1 %cmp593, label %if.then.595, label %if.end.611

if.then.595:                                      ; preds = %land.lhs.true.591
  %373 = bitcast i64* %dnow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %373) #1
  %374 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %375 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call597 = call i8* @qid_printname(%struct.envelope* %375)
  %376 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %377 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %374, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call597, i8* %376, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 %377)
  %378 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp598 = icmp sgt i32 %378, 8
  br i1 %cmp598, label %land.lhs.true.600, label %if.end.607

land.lhs.true.600:                                ; preds = %if.then.595
  %call601 = call i64 @curtime()
  store i64 %call601, i64* %dnow, align 8, !tbaa !10
  %379 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp602 = icmp sgt i64 %call601, %379
  br i1 %cmp602, label %if.then.604, label %if.end.607

if.then.604:                                      ; preds = %land.lhs.true.600
  %380 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id605 = getelementptr inbounds %struct.envelope, %struct.envelope* %380, i32 0, i32 25
  %381 = load i8*, i8** %e_id605, align 8, !tbaa !29
  %382 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %383 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %381, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 %382, i32 %383)
  %384 = load i64, i64* %dnow, align 8, !tbaa !10
  %add606 = add nsw i64 %384, 15
  store volatile i64 %add606, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.607

if.end.607:                                       ; preds = %if.then.604, %land.lhs.true.600, %if.then.595
  %call608 = call i32 @sleep(i32 1)
  %385 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %386 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call609 = call i8* @qid_printname(%struct.envelope* %386)
  %387 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay610 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %385, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call609, i8* %387, i8* %arraydecay610)
  %388 = bitcast i64* %dnow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %388) #1
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.607, %land.lhs.true.591, %if.end.588
  br label %sw.default.612

sw.default.612:                                   ; preds = %if.then.577, %if.end.611
  %389 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %cmp613 = icmp ne i8* %389, null
  br i1 %cmp613, label %land.lhs.true.615, label %if.end.621

land.lhs.true.615:                                ; preds = %sw.default.612
  %390 = load volatile i32, i32* %n_badcmds, align 4, !tbaa !5
  %inc616 = add i32 %390, 1
  store volatile i32 %inc616, i32* %n_badcmds, align 4, !tbaa !5
  %cmp617 = icmp ugt i32 %inc616, 25
  br i1 %cmp617, label %if.then.619, label %if.end.621

if.then.619:                                      ; preds = %land.lhs.true.615
  %391 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.51, i32 0, i32 0), i8* %391)
  %392 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue620 = getelementptr inbounds %struct.envelope, %struct.envelope* %392, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue620, align 8, !tbaa !30
  br label %doquit

if.end.621:                                       ; preds = %land.lhs.true.615, %sw.default.612
  %393 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %cmp622 = icmp ne i8* %393, null
  br i1 %cmp622, label %if.then.624, label %if.else.687

if.then.624:                                      ; preds = %if.end.621
  %394 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %arrayidx625 = getelementptr inbounds i8, i8* %394, i64 0
  %395 = load i8, i8* %arrayidx625, align 1, !tbaa !7
  %conv626 = sext i8 %395 to i32
  %and627 = and i32 %conv626, -128
  %cmp628 = icmp eq i32 %and627, 0
  br i1 %cmp628, label %land.lhs.true.630, label %if.else.685

land.lhs.true.630:                                ; preds = %if.then.624
  %396 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %arrayidx631 = getelementptr inbounds i8, i8* %396, i64 0
  %397 = load i8, i8* %arrayidx631, align 1, !tbaa !7
  %conv632 = sext i8 %397 to i32
  %idxprom633 = sext i32 %conv632 to i64
  %call634 = call i16** @__ctype_b_loc() #10
  %398 = load i16*, i16** %call634, align 8, !tbaa !1
  %arrayidx635 = getelementptr inbounds i16, i16* %398, i64 %idxprom633
  %399 = load i16, i16* %arrayidx635, align 2, !tbaa !8
  %conv636 = zext i16 %399 to i32
  %and637 = and i32 %conv636, 2048
  %tobool638 = icmp ne i32 %and637, 0
  br i1 %tobool638, label %land.lhs.true.639, label %if.else.685

land.lhs.true.639:                                ; preds = %land.lhs.true.630
  %400 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %arrayidx640 = getelementptr inbounds i8, i8* %400, i64 1
  %401 = load i8, i8* %arrayidx640, align 1, !tbaa !7
  %conv641 = sext i8 %401 to i32
  %and642 = and i32 %conv641, -128
  %cmp643 = icmp eq i32 %and642, 0
  br i1 %cmp643, label %land.lhs.true.645, label %if.else.685

land.lhs.true.645:                                ; preds = %land.lhs.true.639
  %402 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %arrayidx646 = getelementptr inbounds i8, i8* %402, i64 1
  %403 = load i8, i8* %arrayidx646, align 1, !tbaa !7
  %conv647 = sext i8 %403 to i32
  %idxprom648 = sext i32 %conv647 to i64
  %call649 = call i16** @__ctype_b_loc() #10
  %404 = load i16*, i16** %call649, align 8, !tbaa !1
  %arrayidx650 = getelementptr inbounds i16, i16* %404, i64 %idxprom648
  %405 = load i16, i16* %arrayidx650, align 2, !tbaa !8
  %conv651 = zext i16 %405 to i32
  %and652 = and i32 %conv651, 2048
  %tobool653 = icmp ne i32 %and652, 0
  br i1 %tobool653, label %land.lhs.true.654, label %if.else.685

land.lhs.true.654:                                ; preds = %land.lhs.true.645
  %406 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %arrayidx655 = getelementptr inbounds i8, i8* %406, i64 2
  %407 = load i8, i8* %arrayidx655, align 1, !tbaa !7
  %conv656 = sext i8 %407 to i32
  %and657 = and i32 %conv656, -128
  %cmp658 = icmp eq i32 %and657, 0
  br i1 %cmp658, label %land.lhs.true.660, label %if.else.685

land.lhs.true.660:                                ; preds = %land.lhs.true.654
  %408 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %arrayidx661 = getelementptr inbounds i8, i8* %408, i64 2
  %409 = load i8, i8* %arrayidx661, align 1, !tbaa !7
  %conv662 = sext i8 %409 to i32
  %idxprom663 = sext i32 %conv662 to i64
  %call664 = call i16** @__ctype_b_loc() #10
  %410 = load i16*, i16** %call664, align 8, !tbaa !1
  %arrayidx665 = getelementptr inbounds i16, i16* %410, i64 %idxprom663
  %411 = load i16, i16* %arrayidx665, align 2, !tbaa !8
  %conv666 = zext i16 %411 to i32
  %and667 = and i32 %conv666, 2048
  %tobool668 = icmp ne i32 %and667, 0
  br i1 %tobool668, label %land.lhs.true.669, label %if.else.685

land.lhs.true.669:                                ; preds = %land.lhs.true.660
  %412 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %arrayidx670 = getelementptr inbounds i8, i8* %412, i64 3
  %413 = load i8, i8* %arrayidx670, align 1, !tbaa !7
  %conv671 = sext i8 %413 to i32
  %cmp672 = icmp eq i32 %conv671, 32
  br i1 %cmp672, label %if.then.684, label %lor.lhs.false.674

lor.lhs.false.674:                                ; preds = %land.lhs.true.669
  %414 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %arrayidx675 = getelementptr inbounds i8, i8* %414, i64 3
  %415 = load i8, i8* %arrayidx675, align 1, !tbaa !7
  %conv676 = sext i8 %415 to i32
  %cmp677 = icmp eq i32 %conv676, 45
  br i1 %cmp677, label %if.then.684, label %lor.lhs.false.679

lor.lhs.false.679:                                ; preds = %lor.lhs.false.674
  %416 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %arrayidx680 = getelementptr inbounds i8, i8* %416, i64 3
  %417 = load i8, i8* %arrayidx680, align 1, !tbaa !7
  %conv681 = sext i8 %417 to i32
  %cmp682 = icmp eq i32 %conv681, 0
  br i1 %cmp682, label %if.then.684, label %if.else.685

if.then.684:                                      ; preds = %lor.lhs.false.679, %lor.lhs.false.674, %land.lhs.true.669
  %418 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %418)
  br label %if.end.686

if.else.685:                                      ; preds = %lor.lhs.false.679, %land.lhs.true.660, %land.lhs.true.654, %land.lhs.true.645, %land.lhs.true.639, %land.lhs.true.630, %if.then.624
  %419 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* %419)
  br label %if.end.686

if.end.686:                                       ; preds = %if.else.685, %if.then.684
  br label %if.end.688

if.else.687:                                      ; preds = %if.end.621
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.688

if.end.688:                                       ; preds = %if.else.687, %if.end.686
  br label %do.cond.3018

sw.epilog.689:                                    ; preds = %if.then.587, %sw.bb.579
  br label %if.end.690

if.end.690:                                       ; preds = %sw.epilog.689, %lor.lhs.false.573
  %420 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_code691 = getelementptr inbounds %struct.cmd, %struct.cmd* %420, i32 0, i32 1
  %421 = load i32, i32* %cmd_code691, align 4, !tbaa !52
  switch i32 %421, label %sw.default.2960 [
    i32 9, label %sw.bb.692
    i32 11, label %sw.bb.692
    i32 1, label %sw.bb.1036
    i32 2, label %sw.bb.1427
    i32 3, label %sw.bb.2075
    i32 4, label %sw.bb.2104
    i32 5, label %sw.bb.2179
    i32 6, label %sw.bb.2179
    i32 12, label %sw.bb.2482
    i32 10, label %sw.bb.2628
    i32 7, label %sw.bb.2653
    i32 8, label %sw.bb.2686
    i32 17, label %sw.bb.2743
    i32 24, label %sw.bb.2785
    i32 25, label %sw.bb.2785
    i32 23, label %sw.bb.2785
    i32 0, label %sw.bb.2817
    i32 19, label %sw.bb.2933
  ]

sw.bb.692:                                        ; preds = %if.end.690, %if.end.690
  %422 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp693 = icmp sgt i32 %422, 0
  br i1 %cmp693, label %land.lhs.true.695, label %if.end.716

land.lhs.true.695:                                ; preds = %sw.bb.692
  %call696 = call i32 @getla()
  store i32 %call696, i32* @CurrentLA, align 4, !tbaa !5
  %423 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp697 = icmp sge i32 %call696, %423
  br i1 %cmp697, label %if.then.699, label %if.end.716

if.then.699:                                      ; preds = %land.lhs.true.695
  %424 = bitcast i64* %dnow701 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %424) #1
  %425 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %426 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call702 = call i8* @qid_printname(%struct.envelope* %426)
  %427 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %428 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %425, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call702, i8* %427, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 %428)
  %429 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp703 = icmp sgt i32 %429, 8
  br i1 %cmp703, label %land.lhs.true.705, label %if.end.712

land.lhs.true.705:                                ; preds = %if.then.699
  %call706 = call i64 @curtime()
  store i64 %call706, i64* %dnow701, align 8, !tbaa !10
  %430 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp707 = icmp sgt i64 %call706, %430
  br i1 %cmp707, label %if.then.709, label %if.end.712

if.then.709:                                      ; preds = %land.lhs.true.705
  %431 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id710 = getelementptr inbounds %struct.envelope, %struct.envelope* %431, i32 0, i32 25
  %432 = load i8*, i8** %e_id710, align 8, !tbaa !29
  %433 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %434 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %432, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 %433, i32 %434)
  %435 = load i64, i64* %dnow701, align 8, !tbaa !10
  %add711 = add nsw i64 %435, 15
  store volatile i64 %add711, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.712

if.end.712:                                       ; preds = %if.then.709, %land.lhs.true.705, %if.then.699
  %call713 = call i32 @sleep(i32 1)
  %436 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %437 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call714 = call i8* @qid_printname(%struct.envelope* %437)
  %438 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay715 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %436, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call714, i8* %438, i8* %arraydecay715)
  %439 = bitcast i64* %dnow701 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %439) #1
  br label %if.end.716

if.end.716:                                       ; preds = %if.end.712, %land.lhs.true.695, %sw.bb.692
  %440 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_code717 = getelementptr inbounds %struct.cmd, %struct.cmd* %440, i32 0, i32 1
  %441 = load i32, i32* %cmd_code717, align 4, !tbaa !52
  %cmp718 = icmp eq i32 %441, 11
  br i1 %cmp718, label %if.then.720, label %if.else.721

if.then.720:                                      ; preds = %if.end.716
  store volatile i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8** %protocol, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  br label %if.end.722

if.else.721:                                      ; preds = %if.end.716
  store volatile i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8** %protocol, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  br label %if.end.722

if.end.722:                                       ; preds = %if.else.721, %if.then.720
  br label %do.body.723

do.body.723:                                      ; preds = %if.end.722
  %442 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call724 = call i64 @checksmtpattack(i32* %n_helo, i32 3, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct.envelope* %442)
  %cmp725 = icmp eq i64 %call724, -1
  br i1 %cmp725, label %if.then.727, label %if.end.728

if.then.727:                                      ; preds = %do.body.723
  br label %stopattack

if.end.728:                                       ; preds = %do.body.723
  br label %do.cond.729

do.cond.729:                                      ; preds = %if.end.728
  br label %do.end.730

do.end.730:                                       ; preds = %do.cond.729
  %443 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %444 = load i8, i8* %443, align 1, !tbaa !7
  %conv731 = sext i8 %444 to i32
  %cmp732 = icmp eq i32 %conv731, 0
  br i1 %cmp732, label %land.lhs.true.734, label %if.end.738

land.lhs.true.734:                                ; preds = %do.end.730
  %445 = load i32, i32* @AllowBogusHELO, align 4, !tbaa !5
  %tobool735 = icmp ne i32 %445, 0
  br i1 %tobool735, label %if.end.738, label %if.then.736

if.then.736:                                      ; preds = %land.lhs.true.734
  %arraydecay737 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i32 0, i32 0), i8* %arraydecay737)
  br label %sw.epilog.2987

if.end.738:                                       ; preds = %land.lhs.true.734, %do.end.730
  %446 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %call739 = call i64 @strlen(i8* %446) #11
  %cmp740 = icmp ugt i64 %call739, 256
  br i1 %cmp740, label %if.then.742, label %if.end.748

if.then.742:                                      ; preds = %if.end.738
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0))
  %447 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp743 = icmp sgt i32 %447, 9
  br i1 %cmp743, label %if.then.745, label %if.end.747

if.then.745:                                      ; preds = %if.then.742
  %448 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id746 = getelementptr inbounds %struct.envelope, %struct.envelope* %448, i32 0, i32 25
  %449 = load i8*, i8** %e_id746, align 8, !tbaa !29
  %450 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %449, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.62, i32 0, i32 0), i8* %450)
  br label %if.end.747

if.end.747:                                       ; preds = %if.then.745, %if.then.742
  br label %sw.epilog.2987

if.end.748:                                       ; preds = %if.end.738
  store i32 1, i32* %ok, align 4, !tbaa !5
  %451 = load volatile i8*, i8** %p, align 8, !tbaa !1
  store i8* %451, i8** %q, align 8, !tbaa !1
  br label %for.cond.749

for.cond.749:                                     ; preds = %for.inc.807, %if.end.748
  %452 = load i8*, i8** %q, align 8, !tbaa !1
  %453 = load i8, i8* %452, align 1, !tbaa !7
  %conv750 = sext i8 %453 to i32
  %cmp751 = icmp ne i32 %conv750, 0
  br i1 %cmp751, label %for.body.753, label %for.end.809

for.body.753:                                     ; preds = %for.cond.749
  %454 = load i8*, i8** %q, align 8, !tbaa !1
  %455 = load i8, i8* %454, align 1, !tbaa !7
  %conv754 = sext i8 %455 to i32
  %and755 = and i32 %conv754, -128
  %cmp756 = icmp eq i32 %and755, 0
  br i1 %cmp756, label %if.end.759, label %if.then.758

if.then.758:                                      ; preds = %for.body.753
  br label %for.end.809

if.end.759:                                       ; preds = %for.body.753
  %456 = load i8*, i8** %q, align 8, !tbaa !1
  %457 = load i8, i8* %456, align 1, !tbaa !7
  %conv760 = sext i8 %457 to i32
  %idxprom761 = sext i32 %conv760 to i64
  %call762 = call i16** @__ctype_b_loc() #10
  %458 = load i16*, i16** %call762, align 8, !tbaa !1
  %arrayidx763 = getelementptr inbounds i16, i16* %458, i64 %idxprom761
  %459 = load i16, i16* %arrayidx763, align 2, !tbaa !8
  %conv764 = zext i16 %459 to i32
  %and765 = and i32 %conv764, 8
  %tobool766 = icmp ne i32 %and765, 0
  br i1 %tobool766, label %if.then.767, label %if.end.768

if.then.767:                                      ; preds = %if.end.759
  br label %for.inc.807

if.end.768:                                       ; preds = %if.end.759
  %460 = load i8*, i8** %q, align 8, !tbaa !1
  %461 = load i8, i8* %460, align 1, !tbaa !7
  %conv769 = sext i8 %461 to i32
  %idxprom770 = sext i32 %conv769 to i64
  %call771 = call i16** @__ctype_b_loc() #10
  %462 = load i16*, i16** %call771, align 8, !tbaa !1
  %arrayidx772 = getelementptr inbounds i16, i16* %462, i64 %idxprom770
  %463 = load i16, i16* %arrayidx772, align 2, !tbaa !8
  %conv773 = zext i16 %463 to i32
  %and774 = and i32 %conv773, 8192
  %tobool775 = icmp ne i32 %and774, 0
  br i1 %tobool775, label %if.then.776, label %if.end.800

if.then.776:                                      ; preds = %if.end.768
  %464 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %464, align 1, !tbaa !7
  %465 = load i32, i32* @AllowBogusHELO, align 4, !tbaa !5
  store i32 %465, i32* %ok, align 4, !tbaa !5
  br label %while.cond.777

while.cond.777:                                   ; preds = %while.body.793, %if.then.776
  %466 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool778 = icmp ne i32 %466, 0
  br i1 %tobool778, label %land.end.792, label %land.lhs.true.779

land.lhs.true.779:                                ; preds = %while.cond.777
  %467 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr780 = getelementptr inbounds i8, i8* %467, i32 1
  store i8* %incdec.ptr780, i8** %q, align 8, !tbaa !1
  %468 = load i8, i8* %incdec.ptr780, align 1, !tbaa !7
  %conv781 = sext i8 %468 to i32
  %cmp782 = icmp ne i32 %conv781, 0
  br i1 %cmp782, label %land.rhs.784, label %land.end.792

land.rhs.784:                                     ; preds = %land.lhs.true.779
  %469 = load i8*, i8** %q, align 8, !tbaa !1
  %470 = load i8, i8* %469, align 1, !tbaa !7
  %conv785 = sext i8 %470 to i32
  %idxprom786 = sext i32 %conv785 to i64
  %call787 = call i16** @__ctype_b_loc() #10
  %471 = load i16*, i16** %call787, align 8, !tbaa !1
  %arrayidx788 = getelementptr inbounds i16, i16* %471, i64 %idxprom786
  %472 = load i16, i16* %arrayidx788, align 2, !tbaa !8
  %conv789 = zext i16 %472 to i32
  %and790 = and i32 %conv789, 8192
  %tobool791 = icmp ne i32 %and790, 0
  br label %land.end.792

land.end.792:                                     ; preds = %land.rhs.784, %land.lhs.true.779, %while.cond.777
  %473 = phi i1 [ false, %land.lhs.true.779 ], [ false, %while.cond.777 ], [ %tobool791, %land.rhs.784 ]
  br i1 %473, label %while.body.793, label %while.end.794

while.body.793:                                   ; preds = %land.end.792
  br label %while.cond.777

while.end.794:                                    ; preds = %land.end.792
  %474 = load i8*, i8** %q, align 8, !tbaa !1
  %475 = load i8, i8* %474, align 1, !tbaa !7
  %conv795 = sext i8 %475 to i32
  %cmp796 = icmp eq i32 %conv795, 0
  br i1 %cmp796, label %if.then.798, label %if.end.799

if.then.798:                                      ; preds = %while.end.794
  store i32 1, i32* %ok, align 4, !tbaa !5
  br label %if.end.799

if.end.799:                                       ; preds = %if.then.798, %while.end.794
  br label %for.end.809

if.end.800:                                       ; preds = %if.end.768
  %476 = load i8*, i8** %q, align 8, !tbaa !1
  %477 = load i8, i8* %476, align 1, !tbaa !7
  %conv801 = sext i8 %477 to i32
  %call802 = call i8* @strchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 %conv801) #1
  %cmp803 = icmp eq i8* %call802, null
  br i1 %cmp803, label %if.then.805, label %if.end.806

if.then.805:                                      ; preds = %if.end.800
  br label %for.end.809

if.end.806:                                       ; preds = %if.end.800
  br label %for.inc.807

for.inc.807:                                      ; preds = %if.end.806, %if.then.767
  %478 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr808 = getelementptr inbounds i8, i8* %478, i32 1
  store i8* %incdec.ptr808, i8** %q, align 8, !tbaa !1
  br label %for.cond.749

for.end.809:                                      ; preds = %if.then.805, %if.end.799, %if.then.758, %for.cond.749
  %479 = load i8*, i8** %q, align 8, !tbaa !1
  %480 = load i8, i8* %479, align 1, !tbaa !7
  %conv810 = sext i8 %480 to i32
  %cmp811 = icmp eq i32 %conv810, 0
  br i1 %cmp811, label %land.lhs.true.813, label %if.else.817

land.lhs.true.813:                                ; preds = %for.end.809
  %481 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool814 = icmp ne i32 %481, 0
  br i1 %tobool814, label %if.then.815, label %if.else.817

if.then.815:                                      ; preds = %land.lhs.true.813
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i8** %q, align 8, !tbaa !1
  %482 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %call816 = call i8* @sm_strdup_x(i8* %482)
  store volatile i8* %call816, i8** %sendinghost, align 8, !tbaa !1
  br label %if.end.827

if.else.817:                                      ; preds = %land.lhs.true.813, %for.end.809
  %483 = load i32, i32* @AllowBogusHELO, align 4, !tbaa !5
  %tobool818 = icmp ne i32 %483, 0
  br i1 %tobool818, label %if.else.825, label %if.then.819

if.then.819:                                      ; preds = %if.else.817
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0))
  %484 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp820 = icmp sgt i32 %484, 9
  br i1 %cmp820, label %if.then.822, label %if.end.824

if.then.822:                                      ; preds = %if.then.819
  %485 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id823 = getelementptr inbounds %struct.envelope, %struct.envelope* %485, i32 0, i32 25
  %486 = load i8*, i8** %e_id823, align 8, !tbaa !29
  %487 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %488 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %486, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0), i8* %487, i8* %488)
  br label %if.end.824

if.end.824:                                       ; preds = %if.then.822, %if.then.819
  br label %sw.epilog.2987

if.else.825:                                      ; preds = %if.else.817
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i32 0, i32 0), i8** %q, align 8, !tbaa !1
  br label %if.end.826

if.end.826:                                       ; preds = %if.else.825
  br label %if.end.827

if.end.827:                                       ; preds = %if.end.826, %if.then.815
  %489 = load volatile i32, i32* %gothello, align 4, !tbaa !5
  %tobool828 = icmp ne i32 %489, 0
  br i1 %tobool828, label %if.then.832, label %lor.lhs.false.829

lor.lhs.false.829:                                ; preds = %if.end.827
  %sm_gotmail830 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 0
  %490 = load i32, i32* %sm_gotmail830, align 4, !tbaa !38
  %tobool831 = icmp ne i32 %490, 0
  br i1 %tobool831, label %if.then.832, label %if.end.899

if.then.832:                                      ; preds = %lor.lhs.false.829, %if.end.827
  br label %do.body.833

do.body.833:                                      ; preds = %if.then.832
  %491 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_abort(%struct.envelope* %491)
  %sm_nrcpts834 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 1
  %492 = load i32, i32* %sm_nrcpts834, align 4, !tbaa !12
  %cmp835 = icmp ugt i32 %492, 0
  br i1 %cmp835, label %if.then.837, label %if.end.842

if.then.837:                                      ; preds = %do.body.833
  %493 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %arraydecay838 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  call void @logundelrcpts(%struct.envelope* %493, i8* %arraydecay838, i32 10, i32 0)
  %sm_nrcpts839 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 1
  store i32 0, i32* %sm_nrcpts839, align 4, !tbaa !12
  %494 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro840 = getelementptr inbounds %struct.envelope, %struct.envelope* %494, i32 0, i32 46
  %call841 = call i32 @macid_parse(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8** null)
  %495 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro840, i32 2, i32 %call841, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2402, i32 %495)
  br label %if.end.842

if.end.842:                                       ; preds = %if.then.837, %do.body.833
  %496 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue843 = getelementptr inbounds %struct.envelope, %struct.envelope* %496, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue843, align 8, !tbaa !30
  %497 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags844 = getelementptr inbounds %struct.envelope, %struct.envelope* %497, i32 0, i32 11
  %498 = load i64, i64* %e_flags844, align 8, !tbaa !26
  %or845 = or i64 %498, 8
  store i64 %or845, i64* %e_flags844, align 8, !tbaa !26
  %499 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 92), align 1, !tbaa !7
  %conv846 = zext i8 %499 to i32
  %cmp847 = icmp sge i32 %conv846, 2
  br i1 %cmp847, label %land.lhs.true.849, label %if.end.857

land.lhs.true.849:                                ; preds = %if.end.842
  %500 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool850 = icmp ne i32 %500, 0
  br i1 %tobool850, label %if.end.857, label %if.then.851

if.then.851:                                      ; preds = %land.lhs.true.849
  %501 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id852 = getelementptr inbounds %struct.envelope, %struct.envelope* %501, i32 0, i32 25
  %502 = load i8*, i8** %e_id852, align 8, !tbaa !29
  %503 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags853 = getelementptr inbounds %struct.envelope, %struct.envelope* %503, i32 0, i32 11
  %504 = load i64, i64* %e_flags853, align 8, !tbaa !26
  %and854 = and i64 %504, 32768
  %cmp855 = icmp ne i64 %and854, 0
  %conv856 = zext i1 %cmp855 to i32
  %505 = load i32, i32* @LogLevel, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.69, i32 0, i32 0), i8* %502, i32 %conv856, i32 %505)
  br label %if.end.857

if.end.857:                                       ; preds = %if.then.851, %land.lhs.true.849, %if.end.842
  %506 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp858 = icmp sgt i32 %506, 4
  br i1 %cmp858, label %land.lhs.true.860, label %if.end.866

land.lhs.true.860:                                ; preds = %if.end.857
  %507 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags861 = getelementptr inbounds %struct.envelope, %struct.envelope* %507, i32 0, i32 11
  %508 = load i64, i64* %e_flags861, align 8, !tbaa !26
  %and862 = and i64 %508, 32768
  %cmp863 = icmp ne i64 %and862, 0
  br i1 %cmp863, label %if.then.865, label %if.end.866

if.then.865:                                      ; preds = %land.lhs.true.860
  %509 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @logsender(%struct.envelope* %509, i8* null)
  br label %if.end.866

if.end.866:                                       ; preds = %if.then.865, %land.lhs.true.860, %if.end.857
  %510 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags867 = getelementptr inbounds %struct.envelope, %struct.envelope* %510, i32 0, i32 11
  %511 = load i64, i64* %e_flags867, align 8, !tbaa !26
  %and868 = and i64 %511, -32769
  store i64 %and868, i64* %e_flags867, align 8, !tbaa !26
  %sm_gotmail869 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 0
  store i32 0, i32* %sm_gotmail869, align 4, !tbaa !38
  store i32 1, i32* @SuprErrs, align 4, !tbaa !5
  %512 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call870 = call i32 @dropenvelope(%struct.envelope* %512, i32 1, i32 0)
  %513 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool871 = getelementptr inbounds %struct.envelope, %struct.envelope* %513, i32 0, i32 52
  %514 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool871, align 8, !tbaa !19
  call void @sm_rpool_free(%struct.SM_RPOOL_T* %514)
  %515 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %516 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %call872 = call %struct.SM_RPOOL_T* @sm_rpool_new_x(%struct.SM_RPOOL_T* null)
  %call873 = call %struct.envelope* @newenvelope(%struct.envelope* %515, %struct.envelope* %516, %struct.SM_RPOOL_T* %call872)
  store volatile %struct.envelope* %call873, %struct.envelope** %e.addr, align 8, !tbaa !1
  %517 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.envelope* %517, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %518 = load volatile i32, i32* %features, align 4, !tbaa !5
  %519 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_features874 = getelementptr inbounds %struct.envelope, %struct.envelope* %519, i32 0, i32 53
  store i32 %518, i32* %e_features874, align 4, !tbaa !28
  %sm_discard875 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 2
  %520 = load i32, i32* %sm_discard875, align 4, !tbaa !27
  %tobool876 = icmp ne i32 %520, 0
  br i1 %tobool876, label %if.then.877, label %if.end.880

if.then.877:                                      ; preds = %if.end.866
  %521 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags878 = getelementptr inbounds %struct.envelope, %struct.envelope* %521, i32 0, i32 11
  %522 = load i64, i64* %e_flags878, align 8, !tbaa !26
  %or879 = or i64 %522, 16777216
  store i64 %or879, i64* %e_flags878, align 8, !tbaa !26
  br label %if.end.880

if.end.880:                                       ; preds = %if.then.877, %if.end.866
  %sm_quarmsg881 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 7
  %523 = load i8*, i8** %sm_quarmsg881, align 8, !tbaa !37
  %cmp882 = icmp eq i8* %523, null
  br i1 %cmp882, label %if.then.884, label %if.else.888

if.then.884:                                      ; preds = %if.end.880
  %524 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg885 = getelementptr inbounds %struct.envelope, %struct.envelope* %524, i32 0, i32 36
  store i8* null, i8** %e_quarmsg885, align 8, !tbaa !36
  %525 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro886 = getelementptr inbounds %struct.envelope, %struct.envelope* %525, i32 0, i32 46
  %call887 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i8** null)
  %526 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro886, i32 2, i32 %call887, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2402, i32 %526)
  br label %if.end.896

if.else.888:                                      ; preds = %if.end.880
  %527 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool889 = getelementptr inbounds %struct.envelope, %struct.envelope* %527, i32 0, i32 52
  %528 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool889, align 8, !tbaa !19
  %sm_quarmsg890 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 7
  %529 = load i8*, i8** %sm_quarmsg890, align 8, !tbaa !37
  %call891 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %528, i8* %529)
  %530 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg892 = getelementptr inbounds %struct.envelope, %struct.envelope* %530, i32 0, i32 36
  store i8* %call891, i8** %e_quarmsg892, align 8, !tbaa !36
  %531 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro893 = getelementptr inbounds %struct.envelope, %struct.envelope* %531, i32 0, i32 46
  %call894 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i8** null)
  %532 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg895 = getelementptr inbounds %struct.envelope, %struct.envelope* %532, i32 0, i32 36
  %533 = load i8*, i8** %e_quarmsg895, align 8, !tbaa !36
  %534 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro893, i32 2, i32 %call894, i8* %533, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2402, i32 %534)
  br label %if.end.896

if.end.896:                                       ; preds = %if.else.888, %if.then.884
  br label %do.cond.897

do.cond.897:                                      ; preds = %if.end.896
  br label %do.end.898

do.end.898:                                       ; preds = %do.cond.897
  br label %if.end.899

if.end.899:                                       ; preds = %do.end.898, %lor.lhs.false.829
  %sm_milterlist900 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 4
  %535 = load i32, i32* %sm_milterlist900, align 4, !tbaa !16
  %tobool901 = icmp ne i32 %535, 0
  br i1 %tobool901, label %land.lhs.true.902, label %if.end.985

land.lhs.true.902:                                ; preds = %if.end.899
  %sm_milterize903 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  %536 = load i32, i32* %sm_milterize903, align 4, !tbaa !15
  %tobool904 = icmp ne i32 %536, 0
  br i1 %tobool904, label %land.lhs.true.905, label %if.end.985

land.lhs.true.905:                                ; preds = %land.lhs.true.902
  %537 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags906 = getelementptr inbounds %struct.envelope, %struct.envelope* %537, i32 0, i32 11
  %538 = load i64, i64* %e_flags906, align 8, !tbaa !26
  %and907 = and i64 %538, 16777216
  %cmp908 = icmp ne i64 %and907, 0
  br i1 %cmp908, label %if.end.985, label %if.then.910

if.then.910:                                      ; preds = %land.lhs.true.905
  call void @llvm.lifetime.start(i64 1, i8* %state912) #1
  %539 = bitcast i8** %response914 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %539) #1
  %540 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %541 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call915 = call i8* @milter_helo(i8* %540, %struct.envelope* %541, i8* %state912)
  store i8* %call915, i8** %response914, align 8, !tbaa !1
  %542 = load i8, i8* %state912, align 1, !tbaa !7
  %conv916 = sext i8 %542 to i32
  switch i32 %conv916, label %sw.epilog.964 [
    i32 114, label %sw.bb.917
    i32 116, label %sw.bb.924
    i32 121, label %sw.bb.931
    i32 52, label %sw.bb.948
  ]

sw.bb.917:                                        ; preds = %if.then.910
  %543 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp918 = icmp sgt i32 %543, 3
  br i1 %cmp918, label %if.then.920, label %if.end.922

if.then.920:                                      ; preds = %sw.bb.917
  %544 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id921 = getelementptr inbounds %struct.envelope, %struct.envelope* %544, i32 0, i32 25
  %545 = load i8*, i8** %e_id921, align 8, !tbaa !29
  %546 = load volatile i8*, i8** %p, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %545, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.71, i32 0, i32 0), i8* %546)
  br label %if.end.922

if.end.922:                                       ; preds = %if.then.920, %sw.bb.917
  store volatile i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8** %nullserver.addr, align 8, !tbaa !1
  %sm_milterize923 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 0, i32* %sm_milterize923, align 4, !tbaa !15
  br label %sw.epilog.964

sw.bb.924:                                        ; preds = %if.then.910
  %547 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp925 = icmp sgt i32 %547, 3
  br i1 %cmp925, label %if.then.927, label %if.end.929

if.then.927:                                      ; preds = %sw.bb.924
  %548 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id928 = getelementptr inbounds %struct.envelope, %struct.envelope* %548, i32 0, i32 25
  %549 = load i8*, i8** %e_id928, align 8, !tbaa !29
  %550 = load volatile i8*, i8** %p, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %549, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0), i8* %550, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.929

if.end.929:                                       ; preds = %if.then.927, %sw.bb.924
  store volatile i32 1, i32* %tempfail, align 4, !tbaa !5
  %sm_milterize930 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 0, i32* %sm_milterize930, align 4, !tbaa !15
  br label %sw.epilog.964

sw.bb.931:                                        ; preds = %if.then.910
  %551 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp932 = icmp sgt i32 %551, 3
  br i1 %cmp932, label %if.then.934, label %if.end.936

if.then.934:                                      ; preds = %sw.bb.931
  %552 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id935 = getelementptr inbounds %struct.envelope, %struct.envelope* %552, i32 0, i32 25
  %553 = load i8*, i8** %e_id935, align 8, !tbaa !29
  %554 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %555 = load i8*, i8** %response914, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %553, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0), i8* %554, i8* %555)
  br label %if.end.936

if.end.936:                                       ; preds = %if.then.934, %sw.bb.931
  %556 = load i8*, i8** %response914, align 8, !tbaa !1
  %call937 = call i32 @strncmp(i8* %556, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #11
  %cmp938 = icmp ne i32 %call937, 0
  br i1 %cmp938, label %land.lhs.true.940, label %if.end.947

land.lhs.true.940:                                ; preds = %if.end.936
  %557 = load i8*, i8** %response914, align 8, !tbaa !1
  %call941 = call i32 @strncmp(i8* %557, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4) #11
  %cmp942 = icmp ne i32 %call941, 0
  br i1 %cmp942, label %if.then.944, label %if.end.947

if.then.944:                                      ; preds = %land.lhs.true.940
  %558 = load i8*, i8** %response914, align 8, !tbaa !1
  %call945 = call i8* @newstr(i8* %558)
  store volatile i8* %call945, i8** %nullserver.addr, align 8, !tbaa !1
  %sm_milterize946 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 0, i32* %sm_milterize946, align 4, !tbaa !15
  br label %sw.epilog.964

if.end.947:                                       ; preds = %land.lhs.true.940, %if.end.936
  br label %sw.bb.948

sw.bb.948:                                        ; preds = %if.then.910, %if.end.947
  %559 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp949 = icmp sgt i32 %559, 3
  br i1 %cmp949, label %land.lhs.true.951, label %if.end.956

land.lhs.true.951:                                ; preds = %sw.bb.948
  %560 = load i8*, i8** %response914, align 8, !tbaa !1
  %cmp952 = icmp eq i8* %560, null
  br i1 %cmp952, label %if.then.954, label %if.end.956

if.then.954:                                      ; preds = %land.lhs.true.951
  %561 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id955 = getelementptr inbounds %struct.envelope, %struct.envelope* %561, i32 0, i32 25
  %562 = load i8*, i8** %e_id955, align 8, !tbaa !29
  %563 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %564 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %562, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i32 0, i32 0), i8* %563, i8* %564)
  br label %if.end.956

if.end.956:                                       ; preds = %if.then.954, %land.lhs.true.951, %sw.bb.948
  store volatile i32 1, i32* %tempfail, align 4, !tbaa !5
  %sm_milterize957 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  store i32 0, i32* %sm_milterize957, align 4, !tbaa !15
  %565 = load i8*, i8** %response914, align 8, !tbaa !1
  %cmp958 = icmp ne i8* %565, null
  br i1 %cmp958, label %if.then.960, label %if.else.961

if.then.960:                                      ; preds = %if.end.956
  %566 = load i8*, i8** %response914, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %566)
  br label %if.end.962

if.else.961:                                      ; preds = %if.end.956
  %567 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* %567)
  br label %if.end.962

if.end.962:                                       ; preds = %if.else.961, %if.then.960
  %568 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue963 = getelementptr inbounds %struct.envelope, %struct.envelope* %568, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue963, align 8, !tbaa !30
  store volatile i32 0, i32* %lognullconnection, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.981

sw.epilog.964:                                    ; preds = %if.then.910, %if.then.944, %if.end.929, %if.end.922
  %569 = load i8*, i8** %response914, align 8, !tbaa !1
  %cmp965 = icmp ne i8* %569, null
  br i1 %cmp965, label %if.then.967, label %if.end.968

if.then.967:                                      ; preds = %sw.epilog.964
  %570 = load i8*, i8** %response914, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %570, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2465)
  br label %if.end.968

if.end.968:                                       ; preds = %if.then.967, %sw.epilog.964
  %sm_quarmsg969 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 7
  %571 = load i8*, i8** %sm_quarmsg969, align 8, !tbaa !37
  %cmp970 = icmp eq i8* %571, null
  br i1 %cmp970, label %land.lhs.true.972, label %if.end.980

land.lhs.true.972:                                ; preds = %if.end.968
  %572 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg973 = getelementptr inbounds %struct.envelope, %struct.envelope* %572, i32 0, i32 36
  %573 = load i8*, i8** %e_quarmsg973, align 8, !tbaa !36
  %cmp974 = icmp ne i8* %573, null
  br i1 %cmp974, label %if.then.976, label %if.end.980

if.then.976:                                      ; preds = %land.lhs.true.972
  %574 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg977 = getelementptr inbounds %struct.envelope, %struct.envelope* %574, i32 0, i32 36
  %575 = load i8*, i8** %e_quarmsg977, align 8, !tbaa !36
  %call978 = call i8* @newstr(i8* %575)
  %sm_quarmsg979 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 7
  store i8* %call978, i8** %sm_quarmsg979, align 8, !tbaa !37
  br label %if.end.980

if.end.980:                                       ; preds = %if.then.976, %land.lhs.true.972, %if.end.968
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.981

cleanup.981:                                      ; preds = %if.end.962, %if.end.980
  %576 = bitcast i8** %response914 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %576) #1
  call void @llvm.lifetime.end(i64 1, i8* %state912) #1
  %cleanup.dest.983 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.983, label %cleanup.3051 [
    i32 0, label %cleanup.cont.984
    i32 2, label %doquit
  ]

cleanup.cont.984:                                 ; preds = %cleanup.981
  br label %if.end.985

if.end.985:                                       ; preds = %cleanup.cont.984, %land.lhs.true.905, %land.lhs.true.902, %if.end.899
  store volatile i32 1, i32* %gothello, align 4, !tbaa !5
  %577 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_code986 = getelementptr inbounds %struct.cmd, %struct.cmd* %577, i32 0, i32 1
  %578 = load i32, i32* %cmd_code986, align 4, !tbaa !52
  %cmp987 = icmp ne i32 %578, 11
  br i1 %cmp987, label %if.then.989, label %if.end.990

if.then.989:                                      ; preds = %if.end.985
  %579 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %580 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %581 = load i8*, i8** %q, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0), i8* %579, i8* %580, i8* %581)
  br label %sw.epilog.2987

if.end.990:                                       ; preds = %if.end.985
  %582 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %583 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %584 = load i8*, i8** %q, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i32 0, i32 0), i8* %582, i8* %583, i8* %584)
  %585 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %cmp991 = icmp ne i8* %585, null
  br i1 %cmp991, label %if.then.993, label %if.end.994

if.then.993:                                      ; preds = %if.end.990
  call void (i8*, ...) @message(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.994:                                       ; preds = %if.end.990
  call void (i8*, ...) @message(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i32 0, i32 0))
  %586 = load volatile i32, i32* %features, align 4, !tbaa !5
  %and995 = and i32 %586, 256
  %cmp996 = icmp ne i32 %and995, 0
  br i1 %cmp996, label %if.then.998, label %if.end.999

if.then.998:                                      ; preds = %if.end.994
  call void (i8*, ...) @message(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0))
  br label %if.end.999

if.end.999:                                       ; preds = %if.then.998, %if.end.994
  %587 = load volatile i32, i32* %features, align 4, !tbaa !5
  %and1000 = and i32 %587, 32
  %cmp1001 = icmp ne i32 %and1000, 0
  br i1 %cmp1001, label %if.then.1003, label %if.end.1009

if.then.1003:                                     ; preds = %if.end.999
  call void (i8*, ...) @message(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0))
  %588 = load volatile i32, i32* %features, align 4, !tbaa !5
  %and1004 = and i32 %588, 64
  %cmp1005 = icmp ne i32 %and1004, 0
  br i1 %cmp1005, label %if.then.1007, label %if.end.1008

if.then.1007:                                     ; preds = %if.then.1003
  call void (i8*, ...) @message(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.1008

if.end.1008:                                      ; preds = %if.then.1007, %if.then.1003
  br label %if.end.1009

if.end.1009:                                      ; preds = %if.end.1008, %if.end.999
  call void (i8*, ...) @message(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0))
  %589 = load i64, i64* @MaxMessageSize, align 8, !tbaa !10
  %cmp1010 = icmp sgt i64 %589, 0
  br i1 %cmp1010, label %if.then.1012, label %if.else.1013

if.then.1012:                                     ; preds = %if.end.1009
  %590 = load i64, i64* @MaxMessageSize, align 8, !tbaa !10
  call void (i8*, ...) @message(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i64 %590)
  br label %if.end.1014

if.else.1013:                                     ; preds = %if.end.1009
  call void (i8*, ...) @message(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0))
  br label %if.end.1014

if.end.1014:                                      ; preds = %if.else.1013, %if.then.1012
  %591 = load i32, i32* @SendMIMEErrors, align 4, !tbaa !5
  %tobool1015 = icmp ne i32 %591, 0
  br i1 %tobool1015, label %land.lhs.true.1016, label %if.end.1021

land.lhs.true.1016:                               ; preds = %if.end.1014
  %592 = load volatile i32, i32* %features, align 4, !tbaa !5
  %and1017 = and i32 %592, 128
  %cmp1018 = icmp ne i32 %and1017, 0
  br i1 %cmp1018, label %if.then.1020, label %if.end.1021

if.then.1020:                                     ; preds = %land.lhs.true.1016
  call void (i8*, ...) @message(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0))
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.then.1020, %land.lhs.true.1016, %if.end.1014
  %593 = load volatile i32, i32* %features, align 4, !tbaa !5
  %and1022 = and i32 %593, 8
  %cmp1023 = icmp ne i32 %and1022, 0
  br i1 %cmp1023, label %if.then.1025, label %if.end.1026

if.then.1025:                                     ; preds = %if.end.1021
  call void (i8*, ...) @message(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0))
  br label %if.end.1026

if.end.1026:                                      ; preds = %if.then.1025, %if.end.1021
  %594 = load i64, i64* @DeliverByMin, align 8, !tbaa !10
  %cmp1027 = icmp sgt i64 %594, 0
  br i1 %cmp1027, label %if.then.1029, label %if.else.1030

if.then.1029:                                     ; preds = %if.end.1026
  %595 = load i64, i64* @DeliverByMin, align 8, !tbaa !10
  call void (i8*, ...) @message(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), i64 %595)
  br label %if.end.1035

if.else.1030:                                     ; preds = %if.end.1026
  %596 = load i64, i64* @DeliverByMin, align 8, !tbaa !10
  %cmp1031 = icmp eq i64 %596, 0
  br i1 %cmp1031, label %if.then.1033, label %if.end.1034

if.then.1033:                                     ; preds = %if.else.1030
  call void (i8*, ...) @message(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i32 0, i32 0))
  br label %if.end.1034

if.end.1034:                                      ; preds = %if.then.1033, %if.else.1030
  br label %if.end.1035

if.end.1035:                                      ; preds = %if.end.1034, %if.then.1029
  call void (i8*, ...) @message(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0))
  br label %sw.epilog.2987

sw.bb.1036:                                       ; preds = %if.end.690
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %597 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp1037 = icmp sgt i32 %597, 0
  br i1 %cmp1037, label %land.lhs.true.1039, label %if.end.1060

land.lhs.true.1039:                               ; preds = %sw.bb.1036
  %call1040 = call i32 @getla()
  store i32 %call1040, i32* @CurrentLA, align 4, !tbaa !5
  %598 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp1041 = icmp sge i32 %call1040, %598
  br i1 %cmp1041, label %if.then.1043, label %if.end.1060

if.then.1043:                                     ; preds = %land.lhs.true.1039
  %599 = bitcast i64* %dnow1045 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %599) #1
  %600 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %601 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1046 = call i8* @qid_printname(%struct.envelope* %601)
  %602 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %603 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %600, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call1046, i8* %602, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i32 %603)
  %604 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp1047 = icmp sgt i32 %604, 8
  br i1 %cmp1047, label %land.lhs.true.1049, label %if.end.1056

land.lhs.true.1049:                               ; preds = %if.then.1043
  %call1050 = call i64 @curtime()
  store i64 %call1050, i64* %dnow1045, align 8, !tbaa !10
  %605 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp1051 = icmp sgt i64 %call1050, %605
  br i1 %cmp1051, label %if.then.1053, label %if.end.1056

if.then.1053:                                     ; preds = %land.lhs.true.1049
  %606 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1054 = getelementptr inbounds %struct.envelope, %struct.envelope* %606, i32 0, i32 25
  %607 = load i8*, i8** %e_id1054, align 8, !tbaa !29
  %608 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %609 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %607, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i32 %608, i32 %609)
  %610 = load i64, i64* %dnow1045, align 8, !tbaa !10
  %add1055 = add nsw i64 %610, 15
  store volatile i64 %add1055, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.1056

if.end.1056:                                      ; preds = %if.then.1053, %land.lhs.true.1049, %if.then.1043
  %call1057 = call i32 @sleep(i32 1)
  %611 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %612 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1058 = call i8* @qid_printname(%struct.envelope* %612)
  %613 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay1059 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %611, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call1058, i8* %613, i8* %arraydecay1059)
  %614 = bitcast i64* %dnow1045 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %614) #1
  br label %if.end.1060

if.end.1060:                                      ; preds = %if.end.1056, %land.lhs.true.1039, %sw.bb.1036
  %615 = load volatile i32, i32* %gothello, align 4, !tbaa !5
  %tobool1061 = icmp ne i32 %615, 0
  br i1 %tobool1061, label %if.end.1067, label %land.lhs.true.1062

land.lhs.true.1062:                               ; preds = %if.end.1060
  %616 = load i64, i64* @PrivacyFlags, align 8, !tbaa !10
  %and1063 = and i64 %616, 1
  %cmp1064 = icmp ne i64 %and1063, 0
  br i1 %cmp1064, label %if.then.1066, label %if.end.1067

if.then.1066:                                     ; preds = %land.lhs.true.1062
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.93, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.1067:                                      ; preds = %land.lhs.true.1062, %if.end.1060
  %sm_gotmail1068 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 0
  %617 = load i32, i32* %sm_gotmail1068, align 4, !tbaa !38
  %tobool1069 = icmp ne i32 %617, 0
  br i1 %tobool1069, label %if.then.1070, label %if.end.1071

if.then.1070:                                     ; preds = %if.end.1067
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.94, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.1071:                                      ; preds = %if.end.1067
  %618 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %call1072 = call i8* @skipword(i8* %618, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0))
  store volatile i8* %call1072, i8** %p, align 8, !tbaa !1
  %619 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %cmp1073 = icmp eq i8* %619, null
  br i1 %cmp1073, label %if.then.1075, label %if.end.1076

if.then.1075:                                     ; preds = %if.end.1071
  br label %sw.epilog.2987

if.end.1076:                                      ; preds = %if.end.1071
  %620 = load volatile i32, i32* %tempfail, align 4, !tbaa !5
  %tobool1077 = icmp ne i32 %620, 0
  br i1 %tobool1077, label %if.then.1078, label %if.end.1084

if.then.1078:                                     ; preds = %if.end.1076
  %621 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp1079 = icmp sgt i32 %621, 9
  br i1 %cmp1079, label %if.then.1081, label %if.end.1083

if.then.1081:                                     ; preds = %if.then.1078
  %622 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1082 = getelementptr inbounds %struct.envelope, %struct.envelope* %622, i32 0, i32 25
  %623 = load i8*, i8** %e_id1082, align 8, !tbaa !29
  %624 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %625 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %623, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.96, i32 0, i32 0), i8* %624, i8* %625)
  br label %if.end.1083

if.end.1083:                                      ; preds = %if.then.1081, %if.then.1078
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.1084:                                      ; preds = %if.end.1076
  %626 = load volatile i8*, i8** %sendinghost, align 8, !tbaa !1
  %cmp1085 = icmp eq i8* %626, null
  br i1 %cmp1085, label %if.then.1087, label %if.end.1088

if.then.1087:                                     ; preds = %if.end.1084
  %627 = load volatile i8*, i8** %peerhostname, align 8, !tbaa !1
  store volatile i8* %627, i8** %sendinghost, align 8, !tbaa !1
  br label %if.end.1088

if.end.1088:                                      ; preds = %if.then.1087, %if.end.1084
  %628 = load i32, i32* getelementptr inbounds (%struct.sm_debug, %struct.sm_debug* @DebugLeakSmtp, i32 0, i32 1), align 4, !tbaa !17
  %cmp1089 = icmp uge i32 %628, 1
  br i1 %cmp1089, label %land.lhs.true.1091, label %if.end.1099

land.lhs.true.1091:                               ; preds = %if.end.1088
  %629 = load i32, i32* getelementptr inbounds (%struct.sm_debug, %struct.sm_debug* @DebugLeakSmtp, i32 0, i32 1), align 4, !tbaa !17
  %cmp1092 = icmp ne i32 %629, -1
  br i1 %cmp1092, label %if.then.1097, label %lor.lhs.false.1094

lor.lhs.false.1094:                               ; preds = %land.lhs.true.1091
  %call1095 = call i32 @sm_debug_loadactive(%struct.sm_debug* @DebugLeakSmtp, i32 1)
  %tobool1096 = icmp ne i32 %call1095, 0
  br i1 %tobool1096, label %if.then.1097, label %if.end.1099

if.then.1097:                                     ; preds = %lor.lhs.false.1094, %land.lhs.true.1091
  %630 = load i32, i32* @SmHeapMaxGroup, align 4, !tbaa !5
  %inc1098 = add nsw i32 %630, 1
  store i32 %inc1098, i32* @SmHeapMaxGroup, align 4, !tbaa !5
  store i32 %inc1098, i32* @SmHeapGroup, align 4, !tbaa !5
  %631 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 %631)
  br label %if.end.1099

if.end.1099:                                      ; preds = %if.then.1097, %lor.lhs.false.1094, %if.end.1088
  %632 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1100 = icmp sgt i32 %632, 0
  br i1 %cmp1100, label %if.then.1102, label %if.end.1103

if.then.1102:                                     ; preds = %if.end.1099
  br label %undo_no_pm

if.end.1103:                                      ; preds = %if.end.1099
  %633 = load volatile i32, i32* %gothello, align 4, !tbaa !5
  %tobool1104 = icmp ne i32 %633, 0
  br i1 %tobool1104, label %if.end.1106, label %if.then.1105

if.then.1105:                                     ; preds = %if.end.1103
  %634 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %635 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (%struct.envelope*, i8*, ...) @auth_warning(%struct.envelope* %634, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.97, i32 0, i32 0), i8* %635)
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.then.1105, %if.end.1103
  %636 = load volatile i8*, i8** %protocol, align 8, !tbaa !1
  %cmp1107 = icmp eq i8* %636, null
  br i1 %cmp1107, label %if.then.1109, label %if.end.1110

if.then.1109:                                     ; preds = %if.end.1106
  store volatile i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8** %protocol, align 8, !tbaa !1
  br label %if.end.1110

if.end.1110:                                      ; preds = %if.then.1109, %if.end.1106
  %637 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1111 = getelementptr inbounds %struct.envelope, %struct.envelope* %637, i32 0, i32 46
  %638 = load volatile i8*, i8** %protocol, align 8, !tbaa !1
  %639 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1111, i32 2, i32 114, i8* %638, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2617, i32 %639)
  %640 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1112 = getelementptr inbounds %struct.envelope, %struct.envelope* %640, i32 0, i32 46
  %641 = load volatile i8*, i8** %sendinghost, align 8, !tbaa !1
  %642 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1112, i32 2, i32 115, i8* %641, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2618, i32 %642)
  %643 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1113 = icmp sgt i32 %643, 0
  br i1 %cmp1113, label %if.then.1115, label %if.end.1116

if.then.1115:                                     ; preds = %if.end.1110
  br label %undo_no_pm

if.end.1116:                                      ; preds = %if.end.1110
  %sm_nrcpts1117 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 1
  store i32 0, i32* %sm_nrcpts1117, align 4, !tbaa !12
  store volatile i32 0, i32* %n_badrcpts, align 4, !tbaa !5
  %644 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1118 = getelementptr inbounds %struct.envelope, %struct.envelope* %644, i32 0, i32 46
  %call1119 = call i32 @macid_parse(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i8** null)
  %645 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1118, i32 2, i32 %call1119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2624, i32 %645)
  %646 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1120 = getelementptr inbounds %struct.envelope, %struct.envelope* %646, i32 0, i32 46
  %call1121 = call i32 @macid_parse(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8** null)
  %647 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1120, i32 2, i32 %call1121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2625, i32 %647)
  %648 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1122 = getelementptr inbounds %struct.envelope, %struct.envelope* %648, i32 0, i32 46
  %call1123 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i8** null)
  %649 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1122, i32 2, i32 %call1123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2627, i32 %649)
  %650 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1124 = getelementptr inbounds %struct.envelope, %struct.envelope* %650, i32 0, i32 11
  %651 = load i64, i64* %e_flags1124, align 8, !tbaa !26
  %or1125 = or i64 %651, 8
  store i64 %or1125, i64* %e_flags1124, align 8, !tbaa !26
  %652 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %653 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1126 = call i8* @qid_printname(%struct.envelope* %653)
  %654 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay1127 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %652, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call1126, i8* %654, i8* %arraydecay1127)
  %655 = bitcast %struct.sm_exc_handler* %_h1129 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %655) #1
  br label %do.body.1130

do.body.1130:                                     ; preds = %if.end.1116
  %eh_value1131 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 0
  store %struct.sm_exc* null, %struct.sm_exc** %eh_value1131, align 8, !tbaa !39
  %656 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_parent1132 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 2
  store %struct.sm_exc_handler* %656, %struct.sm_exc_handler** %eh_parent1132, align 8, !tbaa !41
  %eh_state1133 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 3
  store i32 2, i32* %eh_state1133, align 4, !tbaa !42
  store %struct.sm_exc_handler* %_h1129, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_context1134 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 1
  %arraydecay1135 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context1134, i32 0, i32 0
  %call1136 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay1135, i32 0) #13
  %cmp1137 = icmp eq i32 %call1136, 0
  br i1 %cmp1137, label %if.then.1139, label %if.end.1359

if.then.1139:                                     ; preds = %do.body.1130
  store i32 1, i32* @QuickAbort, align 4, !tbaa !5
  br label %do.body.1140

do.body.1140:                                     ; preds = %if.then.1139
  %657 = load i8*, i8** @FullName, align 8, !tbaa !1
  %cmp1141 = icmp ne i8* %657, null
  br i1 %cmp1141, label %if.then.1143, label %if.end.1144

if.then.1143:                                     ; preds = %do.body.1140
  %658 = load i8*, i8** @FullName, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %658, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2639)
  store i8* null, i8** @FullName, align 8, !tbaa !1
  br label %if.end.1144

if.end.1144:                                      ; preds = %if.then.1143, %do.body.1140
  br label %do.cond.1145

do.cond.1145:                                     ; preds = %if.end.1144
  br label %do.end.1146

do.end.1146:                                      ; preds = %do.cond.1145
  store i8* null, i8** %delimptr, align 8, !tbaa !1
  %659 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %660 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @setsender(i8* %659, %struct.envelope* %660, i8** %delimptr, i32 32, i32 0)
  %661 = load i8*, i8** %delimptr, align 8, !tbaa !1
  %cmp1147 = icmp ne i8* %661, null
  br i1 %cmp1147, label %land.lhs.true.1149, label %if.end.1155

land.lhs.true.1149:                               ; preds = %do.end.1146
  %662 = load i8*, i8** %delimptr, align 8, !tbaa !1
  %663 = load i8, i8* %662, align 1, !tbaa !7
  %conv1150 = sext i8 %663 to i32
  %cmp1151 = icmp ne i32 %conv1150, 0
  br i1 %cmp1151, label %if.then.1153, label %if.end.1155

if.then.1153:                                     ; preds = %land.lhs.true.1149
  %664 = load i8*, i8** %delimptr, align 8, !tbaa !1
  %incdec.ptr1154 = getelementptr inbounds i8, i8* %664, i32 1
  store i8* %incdec.ptr1154, i8** %delimptr, align 8, !tbaa !1
  store i8 0, i8* %664, align 1, !tbaa !7
  br label %if.end.1155

if.end.1155:                                      ; preds = %if.then.1153, %land.lhs.true.1149, %do.end.1146
  %665 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1156 = icmp sgt i32 %665, 0
  br i1 %cmp1156, label %if.then.1158, label %if.end.1159

if.then.1158:                                     ; preds = %if.end.1155
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #12
  unreachable

if.end.1159:                                      ; preds = %if.end.1155
  %666 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1160 = getelementptr inbounds %struct.envelope, %struct.envelope* %666, i32 0, i32 11
  %667 = load i64, i64* %e_flags1160, align 8, !tbaa !26
  %or1161 = or i64 %667, 32768
  store i64 %or1161, i64* %e_flags1160, align 8, !tbaa !26
  %668 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %668, i32 0, i32 4
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %e_from, i32 0, i32 4
  %669 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !53
  %cmp1162 = icmp ne %struct.mailer* %669, null
  br i1 %cmp1162, label %if.then.1164, label %if.else.1169

if.then.1164:                                     ; preds = %if.end.1159
  %670 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1165 = getelementptr inbounds %struct.envelope, %struct.envelope* %670, i32 0, i32 46
  %call1166 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), i8** null)
  %671 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from1167 = getelementptr inbounds %struct.envelope, %struct.envelope* %671, i32 0, i32 4
  %q_mailer1168 = getelementptr inbounds %struct.address, %struct.address* %e_from1167, i32 0, i32 4
  %672 = load %struct.mailer*, %struct.mailer** %q_mailer1168, align 8, !tbaa !53
  %m_name = getelementptr inbounds %struct.mailer, %struct.mailer* %672, i32 0, i32 0
  %673 = load i8*, i8** %m_name, align 8, !tbaa !54
  %674 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1165, i32 2, i32 %call1166, i8* %673, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2656, i32 %674)
  br label %if.end.1172

if.else.1169:                                     ; preds = %if.end.1159
  %675 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1170 = getelementptr inbounds %struct.envelope, %struct.envelope* %675, i32 0, i32 46
  %call1171 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), i8** null)
  %676 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1170, i32 2, i32 %call1171, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2659, i32 %676)
  br label %if.end.1172

if.end.1172:                                      ; preds = %if.else.1169, %if.then.1164
  %677 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from1173 = getelementptr inbounds %struct.envelope, %struct.envelope* %677, i32 0, i32 4
  %q_host = getelementptr inbounds %struct.address, %struct.address* %e_from1173, i32 0, i32 3
  %678 = load i8*, i8** %q_host, align 8, !tbaa !56
  %cmp1174 = icmp ne i8* %678, null
  br i1 %cmp1174, label %if.then.1176, label %if.else.1181

if.then.1176:                                     ; preds = %if.end.1172
  %679 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1177 = getelementptr inbounds %struct.envelope, %struct.envelope* %679, i32 0, i32 46
  %call1178 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8** null)
  %680 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from1179 = getelementptr inbounds %struct.envelope, %struct.envelope* %680, i32 0, i32 4
  %q_host1180 = getelementptr inbounds %struct.address, %struct.address* %e_from1179, i32 0, i32 3
  %681 = load i8*, i8** %q_host1180, align 8, !tbaa !56
  %682 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1177, i32 2, i32 %call1178, i8* %681, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2663, i32 %682)
  br label %if.end.1184

if.else.1181:                                     ; preds = %if.end.1172
  %683 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1182 = getelementptr inbounds %struct.envelope, %struct.envelope* %683, i32 0, i32 46
  %call1183 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8** null)
  %684 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1182, i32 2, i32 %call1183, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2666, i32 %684)
  br label %if.end.1184

if.end.1184:                                      ; preds = %if.else.1181, %if.then.1176
  %685 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from1185 = getelementptr inbounds %struct.envelope, %struct.envelope* %685, i32 0, i32 4
  %q_user = getelementptr inbounds %struct.address, %struct.address* %e_from1185, i32 0, i32 1
  %686 = load i8*, i8** %q_user, align 8, !tbaa !57
  %cmp1186 = icmp ne i8* %686, null
  br i1 %cmp1186, label %if.then.1188, label %if.else.1193

if.then.1188:                                     ; preds = %if.end.1184
  %687 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1189 = getelementptr inbounds %struct.envelope, %struct.envelope* %687, i32 0, i32 46
  %call1190 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i8** null)
  %688 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from1191 = getelementptr inbounds %struct.envelope, %struct.envelope* %688, i32 0, i32 4
  %q_user1192 = getelementptr inbounds %struct.address, %struct.address* %e_from1191, i32 0, i32 1
  %689 = load i8*, i8** %q_user1192, align 8, !tbaa !57
  %690 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1189, i32 2, i32 %call1190, i8* %689, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2670, i32 %690)
  br label %if.end.1196

if.else.1193:                                     ; preds = %if.end.1184
  %691 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1194 = getelementptr inbounds %struct.envelope, %struct.envelope* %691, i32 0, i32 46
  %call1195 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i8** null)
  %692 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1194, i32 2, i32 %call1195, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2673, i32 %692)
  br label %if.end.1196

if.end.1196:                                      ; preds = %if.else.1193, %if.then.1188
  %693 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1197 = icmp sgt i32 %693, 0
  br i1 %cmp1197, label %if.then.1199, label %if.end.1200

if.then.1199:                                     ; preds = %if.end.1196
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #12
  unreachable

if.end.1200:                                      ; preds = %if.end.1196
  %694 = load i32, i32* @RealUid, align 4, !tbaa !5
  %cmp1201 = icmp ne i32 %694, 0
  br i1 %cmp1201, label %land.lhs.true.1203, label %if.end.1226

land.lhs.true.1203:                               ; preds = %if.end.1200
  %695 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv1204 = sext i8 %695 to i32
  %cmp1205 = icmp eq i32 %conv1204, 115
  br i1 %cmp1205, label %land.lhs.true.1207, label %if.end.1226

land.lhs.true.1207:                               ; preds = %land.lhs.true.1203
  %696 = load i8*, i8** @RealUserName, align 8, !tbaa !1
  %call1208 = call i32 @wordinclass(i8* %696, i32 116)
  %tobool1209 = icmp ne i32 %call1208, 0
  br i1 %tobool1209, label %if.end.1226, label %land.lhs.true.1210

land.lhs.true.1210:                               ; preds = %land.lhs.true.1207
  %697 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from1211 = getelementptr inbounds %struct.envelope, %struct.envelope* %697, i32 0, i32 4
  %q_mailer1212 = getelementptr inbounds %struct.address, %struct.address* %e_from1211, i32 0, i32 4
  %698 = load %struct.mailer*, %struct.mailer** %q_mailer1212, align 8, !tbaa !53
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %698, i32 0, i32 5
  %arrayidx1213 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %699 = load i32, i32* %arrayidx1213, align 4, !tbaa !5
  %and1214 = and i32 %699, 4096
  %tobool1215 = icmp ne i32 %and1214, 0
  br i1 %tobool1215, label %lor.lhs.false.1216, label %if.then.1225

lor.lhs.false.1216:                               ; preds = %land.lhs.true.1210
  %700 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %700) #1
  %701 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %701) #1
  %702 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from1220 = getelementptr inbounds %struct.envelope, %struct.envelope* %702, i32 0, i32 4
  %q_user1221 = getelementptr inbounds %struct.address, %struct.address* %e_from1220, i32 0, i32 1
  %703 = load i8*, i8** %q_user1221, align 8, !tbaa !57
  %704 = load i8*, i8** @RealUserName, align 8, !tbaa !1
  %call1222 = call i32 @strcmp(i8* %703, i8* %704) #1
  store i32 %call1222, i32* %tmp1219, !tbaa !5
  %705 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %705) #1
  %706 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %706) #1
  %707 = load i32, i32* %tmp1219, !tbaa !5
  %cmp1223 = icmp ne i32 %707, 0
  br i1 %cmp1223, label %if.then.1225, label %if.end.1226

if.then.1225:                                     ; preds = %lor.lhs.false.1216, %land.lhs.true.1210
  %708 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %709 = load i8*, i8** @RealUserName, align 8, !tbaa !1
  call void (%struct.envelope*, i8*, ...) @auth_warning(%struct.envelope* %708, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.103, i32 0, i32 0), i8* %709)
  br label %if.end.1226

if.end.1226:                                      ; preds = %if.then.1225, %lor.lhs.false.1216, %land.lhs.true.1207, %land.lhs.true.1203, %if.end.1200
  %710 = load i32, i32* @SevenBitInput_Saved, align 4, !tbaa !5
  store i32 %710, i32* @SevenBitInput, align 4, !tbaa !5
  %711 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %711, i32 0, i32 9
  store i64 0, i64* %e_msgsize, align 8, !tbaa !58
  %712 = load volatile i8*, i8** %p, align 8, !tbaa !1
  store i8* %712, i8** %addr, align 8, !tbaa !1
  %713 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %714 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %715 = load i8*, i8** %delimptr, align 8, !tbaa !1
  %arraydecay1227 = getelementptr inbounds [20 x i8*], [20 x i8*]* %args, i32 0, i32 0
  call void @parse_esmtp_args(%struct.envelope* %713, %struct.address* null, i8* %714, i8* %715, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8** %arraydecay1227, void (%struct.address*, i8*, i8*, %struct.envelope*)* @mail_esmtp_args)
  %716 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1228 = icmp sgt i32 %716, 0
  br i1 %cmp1228, label %if.then.1230, label %if.end.1231

if.then.1230:                                     ; preds = %if.end.1226
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #12
  unreachable

if.end.1231:                                      ; preds = %if.end.1226
  %717 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1232 = getelementptr inbounds %struct.envelope, %struct.envelope* %717, i32 0, i32 46
  %call1233 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8** null)
  %718 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1232, i32 2, i32 %call1233, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2721, i32 %718)
  %719 = load i8*, i8** %addr, align 8, !tbaa !1
  %720 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %721 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1234 = getelementptr inbounds %struct.envelope, %struct.envelope* %721, i32 0, i32 25
  %722 = load i8*, i8** %e_id1234, align 8, !tbaa !29
  %call1235 = call i32 @rscheck(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i8* %719, i8* null, %struct.envelope* %720, i32 5, i32 3, i8* null, i8* %722, %struct.address* null, i8** null)
  %cmp1236 = icmp ne i32 %call1235, 0
  br i1 %cmp1236, label %if.then.1241, label %lor.lhs.false.1238

lor.lhs.false.1238:                               ; preds = %if.end.1231
  %723 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1239 = icmp sgt i32 %723, 0
  br i1 %cmp1239, label %if.then.1241, label %if.end.1242

if.then.1241:                                     ; preds = %lor.lhs.false.1238, %if.end.1231
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #12
  unreachable

if.end.1242:                                      ; preds = %lor.lhs.false.1238
  %724 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1243 = getelementptr inbounds %struct.envelope, %struct.envelope* %724, i32 0, i32 46
  %call1244 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8** null)
  %725 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1243, i32 2, i32 %call1244, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2733, i32 %725)
  %726 = load i64, i64* @MaxMessageSize, align 8, !tbaa !10
  %cmp1245 = icmp sgt i64 %726, 0
  br i1 %cmp1245, label %land.lhs.true.1247, label %if.end.1256

land.lhs.true.1247:                               ; preds = %if.end.1242
  %727 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize1248 = getelementptr inbounds %struct.envelope, %struct.envelope* %727, i32 0, i32 9
  %728 = load i64, i64* %e_msgsize1248, align 8, !tbaa !58
  %729 = load i64, i64* @MaxMessageSize, align 8, !tbaa !10
  %cmp1249 = icmp sgt i64 %728, %729
  br i1 %cmp1249, label %if.then.1255, label %lor.lhs.false.1251

lor.lhs.false.1251:                               ; preds = %land.lhs.true.1247
  %730 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize1252 = getelementptr inbounds %struct.envelope, %struct.envelope* %730, i32 0, i32 9
  %731 = load i64, i64* %e_msgsize1252, align 8, !tbaa !58
  %cmp1253 = icmp slt i64 %731, 0
  br i1 %cmp1253, label %if.then.1255, label %if.end.1256

if.then.1255:                                     ; preds = %lor.lhs.false.1251, %land.lhs.true.1247
  %732 = load i64, i64* @MaxMessageSize, align 8, !tbaa !10
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.107, i32 0, i32 0), i64 %732)
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #12
  unreachable

if.end.1256:                                      ; preds = %lor.lhs.false.1251, %if.end.1242
  %733 = load i32*, i32** @PNumFileSys, align 8, !tbaa !1
  %734 = load i32, i32* %733, align 4, !tbaa !5
  %cmp1257 = icmp eq i32 %734, 1
  br i1 %cmp1257, label %land.lhs.true.1262, label %lor.lhs.false.1259

lor.lhs.false.1259:                               ; preds = %if.end.1256
  %735 = load i32, i32* @NumQueue, align 4, !tbaa !5
  %cmp1260 = icmp eq i32 %735, 1
  br i1 %cmp1260, label %land.lhs.true.1262, label %if.end.1267

land.lhs.true.1262:                               ; preds = %lor.lhs.false.1259, %if.end.1256
  %736 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize1263 = getelementptr inbounds %struct.envelope, %struct.envelope* %736, i32 0, i32 9
  %737 = load i64, i64* %e_msgsize1263, align 8, !tbaa !58
  %738 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1264 = call i32 @enoughdiskspace(i64 %737, %struct.envelope* %738)
  %tobool1265 = icmp ne i32 %call1264, 0
  br i1 %tobool1265, label %if.end.1267, label %if.then.1266

if.then.1266:                                     ; preds = %land.lhs.true.1262
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.53, i32 0, i32 0))
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #12
  unreachable

if.end.1267:                                      ; preds = %land.lhs.true.1262, %lor.lhs.false.1259
  %739 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1268 = icmp sgt i32 %739, 0
  br i1 %cmp1268, label %if.then.1270, label %if.end.1271

if.then.1270:                                     ; preds = %if.end.1267
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #12
  unreachable

if.end.1271:                                      ; preds = %if.end.1267
  store i32 1, i32* @LogUsrErrs, align 4, !tbaa !5
  %sm_milterlist1272 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 4
  %740 = load i32, i32* %sm_milterlist1272, align 4, !tbaa !16
  %tobool1273 = icmp ne i32 %740, 0
  br i1 %tobool1273, label %land.lhs.true.1274, label %if.end.1353

land.lhs.true.1274:                               ; preds = %if.end.1271
  %sm_milterize1275 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  %741 = load i32, i32* %sm_milterize1275, align 4, !tbaa !15
  %tobool1276 = icmp ne i32 %741, 0
  br i1 %tobool1276, label %land.lhs.true.1277, label %if.end.1353

land.lhs.true.1277:                               ; preds = %land.lhs.true.1274
  %742 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1278 = getelementptr inbounds %struct.envelope, %struct.envelope* %742, i32 0, i32 11
  %743 = load i64, i64* %e_flags1278, align 8, !tbaa !26
  %and1279 = and i64 %743, 16777216
  %cmp1280 = icmp ne i64 %and1279, 0
  br i1 %cmp1280, label %if.end.1353, label %if.then.1282

if.then.1282:                                     ; preds = %land.lhs.true.1277
  call void @llvm.lifetime.start(i64 1, i8* %state1284) #1
  %744 = bitcast i8** %response1286 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %744) #1
  %arraydecay1287 = getelementptr inbounds [20 x i8*], [20 x i8*]* %args, i32 0, i32 0
  %745 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1288 = call i8* @milter_envfrom(i8** %arraydecay1287, %struct.envelope* %745, i8* %state1284)
  store i8* %call1288, i8** %response1286, align 8, !tbaa !1
  %746 = bitcast i32* %savelogusrerrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %746) #1
  %747 = load i32, i32* @LogUsrErrs, align 4, !tbaa !5
  store i32 %747, i32* %savelogusrerrs, align 4, !tbaa !5
  store volatile i32 1, i32* %milter_cmd_fail, align 4, !tbaa !5
  %748 = load i8, i8* %state1284, align 1, !tbaa !7
  %conv1290 = sext i8 %748 to i32
  switch i32 %conv1290, label %sw.default.1340 [
    i32 52, label %sw.bb.1291
    i32 121, label %sw.bb.1300
    i32 114, label %sw.bb.1320
    i32 100, label %sw.bb.1326
    i32 116, label %sw.bb.1334
  ]

sw.bb.1291:                                       ; preds = %if.then.1282
  %749 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1292 = icmp sgt i32 %749, 3
  br i1 %cmp1292, label %if.then.1294, label %if.end.1296

if.then.1294:                                     ; preds = %sw.bb.1291
  %750 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1295 = getelementptr inbounds %struct.envelope, %struct.envelope* %750, i32 0, i32 25
  %751 = load i8*, i8** %e_id1295, align 8, !tbaa !29
  %752 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %751, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* %752)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1296

if.end.1296:                                      ; preds = %if.then.1294, %sw.bb.1291
  %753 = bitcast i32* %tsave to i8*
  call void @llvm.lifetime.start(i64 4, i8* %753) #1
  %754 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  store i32 %754, i32* %tsave, align 4, !tbaa !5
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i32 0, i32 0))
  %755 = load i32, i32* %tsave, align 4, !tbaa !5
  store i32 %755, i32* @QuickAbort, align 4, !tbaa !5
  %756 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue1298 = getelementptr inbounds %struct.envelope, %struct.envelope* %756, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue1298, align 8, !tbaa !30
  store i32 2, i32* %cleanup.dest.slot
  %757 = bitcast i32* %tsave to i8*
  call void @llvm.lifetime.end(i64 4, i8* %757) #1
  br label %cleanup.1346

sw.bb.1300:                                       ; preds = %if.then.1282
  %758 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1301 = icmp sgt i32 %758, 3
  br i1 %cmp1301, label %if.then.1303, label %if.end.1305

if.then.1303:                                     ; preds = %sw.bb.1300
  %759 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1304 = getelementptr inbounds %struct.envelope, %struct.envelope* %759, i32 0, i32 25
  %760 = load i8*, i8** %e_id1304, align 8, !tbaa !29
  %761 = load i8*, i8** %addr, align 8, !tbaa !1
  %762 = load i8*, i8** %response1286, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %760, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* %761, i8* %762)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1305

if.end.1305:                                      ; preds = %if.then.1303, %sw.bb.1300
  %763 = load i8*, i8** %response1286, align 8, !tbaa !1
  %call1306 = call i32 @strncmp(i8* %763, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #11
  %cmp1307 = icmp eq i32 %call1306, 0
  br i1 %cmp1307, label %if.then.1313, label %lor.lhs.false.1309

lor.lhs.false.1309:                               ; preds = %if.end.1305
  %764 = load i8*, i8** %response1286, align 8, !tbaa !1
  %call1310 = call i32 @strncmp(i8* %764, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4) #11
  %cmp1311 = icmp eq i32 %call1310, 0
  br i1 %cmp1311, label %if.then.1313, label %if.else.1318

if.then.1313:                                     ; preds = %lor.lhs.false.1309, %if.end.1305
  %765 = bitcast i32* %tsave1315 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %765) #1
  %766 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  store i32 %766, i32* %tsave1315, align 4, !tbaa !5
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  %767 = load i8*, i8** %response1286, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %767)
  %768 = load i32, i32* %tsave1315, align 4, !tbaa !5
  store i32 %768, i32* @QuickAbort, align 4, !tbaa !5
  %769 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue1316 = getelementptr inbounds %struct.envelope, %struct.envelope* %769, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue1316, align 8, !tbaa !30
  store i32 2, i32* %cleanup.dest.slot
  %770 = bitcast i32* %tsave1315 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %770) #1
  br label %cleanup.1346

if.else.1318:                                     ; preds = %lor.lhs.false.1309
  %771 = load i8*, i8** %response1286, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %771)
  br label %if.end.1319

if.end.1319:                                      ; preds = %if.else.1318
  br label %sw.epilog.1341

sw.bb.1320:                                       ; preds = %if.then.1282
  %772 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1321 = icmp sgt i32 %772, 3
  br i1 %cmp1321, label %if.then.1323, label %if.end.1325

if.then.1323:                                     ; preds = %sw.bb.1320
  %773 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1324 = getelementptr inbounds %struct.envelope, %struct.envelope* %773, i32 0, i32 25
  %774 = load i8*, i8** %e_id1324, align 8, !tbaa !29
  %775 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %774, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* %775)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1325

if.end.1325:                                      ; preds = %if.then.1323, %sw.bb.1320
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i32 0, i32 0))
  br label %sw.epilog.1341

sw.bb.1326:                                       ; preds = %if.then.1282
  %776 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1327 = icmp sgt i32 %776, 3
  br i1 %cmp1327, label %if.then.1329, label %if.end.1331

if.then.1329:                                     ; preds = %sw.bb.1326
  %777 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1330 = getelementptr inbounds %struct.envelope, %struct.envelope* %777, i32 0, i32 25
  %778 = load i8*, i8** %e_id1330, align 8, !tbaa !29
  %779 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %778, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* %779)
  br label %if.end.1331

if.end.1331:                                      ; preds = %if.then.1329, %sw.bb.1326
  %780 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1332 = getelementptr inbounds %struct.envelope, %struct.envelope* %780, i32 0, i32 11
  %781 = load i64, i64* %e_flags1332, align 8, !tbaa !26
  %or1333 = or i64 %781, 16777216
  store i64 %or1333, i64* %e_flags1332, align 8, !tbaa !26
  store volatile i32 0, i32* %milter_cmd_fail, align 4, !tbaa !5
  br label %sw.epilog.1341

sw.bb.1334:                                       ; preds = %if.then.1282
  %782 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1335 = icmp sgt i32 %782, 3
  br i1 %cmp1335, label %if.then.1337, label %if.end.1339

if.then.1337:                                     ; preds = %sw.bb.1334
  %783 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1338 = getelementptr inbounds %struct.envelope, %struct.envelope* %783, i32 0, i32 25
  %784 = load i8*, i8** %e_id1338, align 8, !tbaa !29
  %785 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %784, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* %785, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1339

if.end.1339:                                      ; preds = %if.then.1337, %sw.bb.1334
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  br label %sw.epilog.1341

sw.default.1340:                                  ; preds = %if.then.1282
  store volatile i32 0, i32* %milter_cmd_fail, align 4, !tbaa !5
  br label %sw.epilog.1341

sw.epilog.1341:                                   ; preds = %sw.default.1340, %if.end.1339, %if.end.1331, %if.end.1325, %if.end.1319
  %786 = load i32, i32* %savelogusrerrs, align 4, !tbaa !5
  store i32 %786, i32* @LogUsrErrs, align 4, !tbaa !5
  %787 = load i8*, i8** %response1286, align 8, !tbaa !1
  %cmp1342 = icmp ne i8* %787, null
  br i1 %cmp1342, label %if.then.1344, label %if.end.1345

if.then.1344:                                     ; preds = %sw.epilog.1341
  %788 = load i8*, i8** %response1286, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %788, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2779)
  br label %if.end.1345

if.end.1345:                                      ; preds = %if.then.1344, %sw.epilog.1341
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1346

cleanup.1346:                                     ; preds = %if.end.1345, %if.then.1313, %if.end.1296
  %789 = bitcast i32* %savelogusrerrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %789) #1
  %cleanup.dest.1347 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1347, label %cleanup.1349 [
    i32 0, label %cleanup.cont.1348
  ]

cleanup.cont.1348:                                ; preds = %cleanup.1346
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1349

cleanup.1349:                                     ; preds = %cleanup.cont.1348, %cleanup.1346
  %790 = bitcast i8** %response1286 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %790) #1
  call void @llvm.lifetime.end(i64 1, i8* %state1284) #1
  %cleanup.dest.1351 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1351, label %cleanup.1422 [
    i32 0, label %cleanup.cont.1352
  ]

cleanup.cont.1352:                                ; preds = %cleanup.1349
  br label %if.end.1353

if.end.1353:                                      ; preds = %cleanup.cont.1352, %land.lhs.true.1277, %land.lhs.true.1274, %if.end.1271
  %791 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1354 = icmp sgt i32 %791, 0
  br i1 %cmp1354, label %if.then.1356, label %if.end.1357

if.then.1356:                                     ; preds = %if.end.1353
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #12
  unreachable

if.end.1357:                                      ; preds = %if.end.1353
  call void (i8*, ...) @message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i32 0, i32 0))
  %sm_gotmail1358 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 0
  store i32 1, i32* %sm_gotmail1358, align 4, !tbaa !38
  br label %if.end.1359

if.end.1359:                                      ; preds = %if.end.1357, %do.body.1130
  %eh_state1360 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 3
  %792 = load i32, i32* %eh_state1360, align 4, !tbaa !42
  %cmp1361 = icmp eq i32 %792, 1
  br i1 %cmp1361, label %if.then.1363, label %if.end.1364

if.then.1363:                                     ; preds = %if.end.1359
  br label %do.end.1390

if.end.1364:                                      ; preds = %if.end.1359
  %eh_state1365 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 3
  %793 = load i32, i32* %eh_state1365, align 4, !tbaa !42
  %cmp1366 = icmp eq i32 %793, 2
  br i1 %cmp1366, label %if.then.1368, label %if.end.1375

if.then.1368:                                     ; preds = %if.end.1364
  %794 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp1369 = icmp eq %struct.sm_exc_handler* %794, %_h1129
  br i1 %cmp1369, label %lor.end.1372, label %lor.rhs.1371

lor.rhs.1371:                                     ; preds = %if.then.1368
  call void @sm_abort_at(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2788, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.1372

lor.end.1372:                                     ; preds = %795, %if.then.1368
  %796 = phi i1 [ true, %if.then.1368 ], [ false, %795 ]
  %lor.ext1373 = zext i1 %796 to i32
  %eh_parent1374 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 2
  %797 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent1374, align 8, !tbaa !41
  store %struct.sm_exc_handler* %797, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  br label %if.end.1375

if.end.1375:                                      ; preds = %lor.end.1372, %if.end.1364
  %eh_value1376 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 0
  %798 = load %struct.sm_exc*, %struct.sm_exc** %eh_value1376, align 8, !tbaa !39
  %call1377 = call i32 @sm_exc_match(%struct.sm_exc* %798, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0))
  %tobool1378 = icmp ne i32 %call1377, 0
  %cond1379 = select i1 %tobool1378, i32 1, i32 0
  %eh_state1380 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 3
  store i32 %cond1379, i32* %eh_state1380, align 4, !tbaa !42
  %eh_state1381 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 3
  %799 = load i32, i32* %eh_state1381, align 4, !tbaa !42
  %cmp1382 = icmp eq i32 %799, 1
  br i1 %cmp1382, label %if.then.1384, label %if.end.1388

if.then.1384:                                     ; preds = %if.end.1375
  %800 = bitcast %struct.sm_exc** %exc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %800) #1
  %eh_value1386 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 0
  %801 = load %struct.sm_exc*, %struct.sm_exc** %eh_value1386, align 8, !tbaa !39
  store %struct.sm_exc* %801, %struct.sm_exc** %exc, align 8, !tbaa !1
  %802 = load %struct.sm_exc*, %struct.sm_exc** %exc, align 8, !tbaa !1
  call void @sm_exc_free(%struct.sm_exc* %802)
  store i32 42, i32* %cleanup.dest.slot
  %803 = bitcast %struct.sm_exc** %exc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %803) #1
  br label %cleanup.1422

if.end.1388:                                      ; preds = %if.end.1375
  br label %do.cond.1389

do.cond.1389:                                     ; preds = %if.end.1388
  br label %do.end.1390

do.end.1390:                                      ; preds = %do.cond.1389, %if.then.1363
  %eh_state1391 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 3
  %804 = load i32, i32* %eh_state1391, align 4, !tbaa !42
  %cmp1392 = icmp eq i32 %804, 2
  br i1 %cmp1392, label %if.then.1394, label %if.else.1407

if.then.1394:                                     ; preds = %do.end.1390
  %805 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp1395 = icmp eq %struct.sm_exc_handler* %805, %_h1129
  br i1 %cmp1395, label %lor.end.1398, label %lor.rhs.1397

lor.rhs.1397:                                     ; preds = %if.then.1394
  call void @sm_abort_at(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2798, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.1398

lor.end.1398:                                     ; preds = %806, %if.then.1394
  %807 = phi i1 [ true, %if.then.1394 ], [ false, %806 ]
  %lor.ext1399 = zext i1 %807 to i32
  %eh_parent1400 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 2
  %808 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent1400, align 8, !tbaa !41
  store %struct.sm_exc_handler* %808, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_value1401 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 0
  %809 = load %struct.sm_exc*, %struct.sm_exc** %eh_value1401, align 8, !tbaa !39
  %cmp1402 = icmp ne %struct.sm_exc* %809, null
  br i1 %cmp1402, label %if.then.1404, label %if.end.1406

if.then.1404:                                     ; preds = %lor.end.1398
  %eh_value1405 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 0
  %810 = load %struct.sm_exc*, %struct.sm_exc** %eh_value1405, align 8, !tbaa !39
  call void @sm_exc_raise_x(%struct.sm_exc* %810) #12
  unreachable

if.end.1406:                                      ; preds = %lor.end.1398
  br label %if.end.1421

if.else.1407:                                     ; preds = %do.end.1390
  %eh_state1408 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 3
  %811 = load i32, i32* %eh_state1408, align 4, !tbaa !42
  %cmp1409 = icmp eq i32 %811, 0
  br i1 %cmp1409, label %if.then.1411, label %if.else.1418

if.then.1411:                                     ; preds = %if.else.1407
  %eh_value1412 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 0
  %812 = load %struct.sm_exc*, %struct.sm_exc** %eh_value1412, align 8, !tbaa !39
  %cmp1413 = icmp ne %struct.sm_exc* %812, null
  br i1 %cmp1413, label %if.then.1415, label %if.end.1417

if.then.1415:                                     ; preds = %if.then.1411
  %eh_value1416 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 0
  %813 = load %struct.sm_exc*, %struct.sm_exc** %eh_value1416, align 8, !tbaa !39
  call void @sm_exc_raise_x(%struct.sm_exc* %813) #12
  unreachable

if.end.1417:                                      ; preds = %if.then.1411
  br label %if.end.1420

if.else.1418:                                     ; preds = %if.else.1407
  %eh_value1419 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1129, i32 0, i32 0
  %814 = load %struct.sm_exc*, %struct.sm_exc** %eh_value1419, align 8, !tbaa !39
  call void @sm_exc_free(%struct.sm_exc* %814)
  br label %if.end.1420

if.end.1420:                                      ; preds = %if.else.1418, %if.end.1417
  br label %if.end.1421

if.end.1421:                                      ; preds = %if.end.1420, %if.end.1406
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1422

cleanup.1422:                                     ; preds = %if.end.1421, %if.then.1384, %cleanup.1349
  %815 = bitcast %struct.sm_exc_handler* %_h1129 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %815) #1
  %cleanup.dest.1423 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1423, label %cleanup.3051 [
    i32 0, label %cleanup.cont.1424
    i32 42, label %undo_no_pm
    i32 2, label %doquit
  ]

cleanup.cont.1424:                                ; preds = %cleanup.1422
  br label %sw.epilog.2987

undo_no_pm:                                       ; preds = %cleanup.1422, %if.then.1115, %if.then.1102
  %816 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1425 = getelementptr inbounds %struct.envelope, %struct.envelope* %816, i32 0, i32 11
  %817 = load i64, i64* %e_flags1425, align 8, !tbaa !26
  %and1426 = and i64 %817, -8193
  store i64 %and1426, i64* %e_flags1425, align 8, !tbaa !26
  br label %undo

undo:                                             ; preds = %cleanup.2479, %undo_no_pm
  br label %sw.epilog.2987

sw.bb.1427:                                       ; preds = %if.end.690
  %818 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp1428 = icmp sgt i32 %818, 0
  br i1 %cmp1428, label %land.lhs.true.1430, label %if.end.1451

land.lhs.true.1430:                               ; preds = %sw.bb.1427
  %call1431 = call i32 @getla()
  store i32 %call1431, i32* @CurrentLA, align 4, !tbaa !5
  %819 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp1432 = icmp sge i32 %call1431, %819
  br i1 %cmp1432, label %if.then.1434, label %if.end.1451

if.then.1434:                                     ; preds = %land.lhs.true.1430
  %820 = bitcast i64* %dnow1436 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %820) #1
  %821 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %822 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1437 = call i8* @qid_printname(%struct.envelope* %822)
  %823 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %824 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %821, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call1437, i8* %823, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i32 %824)
  %825 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp1438 = icmp sgt i32 %825, 8
  br i1 %cmp1438, label %land.lhs.true.1440, label %if.end.1447

land.lhs.true.1440:                               ; preds = %if.then.1434
  %call1441 = call i64 @curtime()
  store i64 %call1441, i64* %dnow1436, align 8, !tbaa !10
  %826 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp1442 = icmp sgt i64 %call1441, %826
  br i1 %cmp1442, label %if.then.1444, label %if.end.1447

if.then.1444:                                     ; preds = %land.lhs.true.1440
  %827 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1445 = getelementptr inbounds %struct.envelope, %struct.envelope* %827, i32 0, i32 25
  %828 = load i8*, i8** %e_id1445, align 8, !tbaa !29
  %829 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %830 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %828, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i32 %829, i32 %830)
  %831 = load i64, i64* %dnow1436, align 8, !tbaa !10
  %add1446 = add nsw i64 %831, 15
  store volatile i64 %add1446, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.1447

if.end.1447:                                      ; preds = %if.then.1444, %land.lhs.true.1440, %if.then.1434
  %call1448 = call i32 @sleep(i32 1)
  %832 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %833 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1449 = call i8* @qid_printname(%struct.envelope* %833)
  %834 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay1450 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %832, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call1449, i8* %834, i8* %arraydecay1450)
  %835 = bitcast i64* %dnow1436 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %835) #1
  br label %if.end.1451

if.end.1451:                                      ; preds = %if.end.1447, %land.lhs.true.1430, %sw.bb.1427
  %836 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1452 = getelementptr inbounds %struct.envelope, %struct.envelope* %836, i32 0, i32 46
  %call1453 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8** null)
  %837 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1452, i32 2, i32 %call1453, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2809, i32 %837)
  %838 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1454 = getelementptr inbounds %struct.envelope, %struct.envelope* %838, i32 0, i32 46
  %call1455 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8** null)
  %839 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1454, i32 2, i32 %call1455, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2811, i32 %839)
  %840 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1456 = getelementptr inbounds %struct.envelope, %struct.envelope* %840, i32 0, i32 46
  %call1457 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8** null)
  %841 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1456, i32 2, i32 %call1457, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2813, i32 %841)
  %842 = bitcast %struct.address* %addr_st to i8*
  call void @llvm.memset.p0i8.i64(i8* %842, i8 0, i64 192, i32 8, i1 false)
  store %struct.address* null, %struct.address** %a, align 8, !tbaa !1
  store volatile i32 0, i32* %milter_rcpt_added, align 4, !tbaa !5
  %843 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_nrcpts = getelementptr inbounds %struct.envelope, %struct.envelope* %843, i32 0, i32 12
  %844 = load i32, i32* %e_nrcpts, align 4, !tbaa !59
  %sm_e_nrcpts_orig = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 6
  store i32 %844, i32* %sm_e_nrcpts_orig, align 4, !tbaa !60
  %845 = load i32, i32* @BadRcptThrottle, align 4, !tbaa !5
  %cmp1458 = icmp sgt i32 %845, 0
  br i1 %cmp1458, label %land.lhs.true.1460, label %if.end.1493

land.lhs.true.1460:                               ; preds = %if.end.1451
  %846 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %847 = load i32, i32* @BadRcptThrottle, align 4, !tbaa !5
  %cmp1461 = icmp uge i32 %846, %847
  br i1 %cmp1461, label %if.then.1463, label %if.end.1493

if.then.1463:                                     ; preds = %land.lhs.true.1460
  %848 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp1464 = icmp sgt i32 %848, 5
  br i1 %cmp1464, label %land.lhs.true.1466, label %if.end.1472

land.lhs.true.1466:                               ; preds = %if.then.1463
  %849 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %850 = load i32, i32* @BadRcptThrottle, align 4, !tbaa !5
  %cmp1467 = icmp eq i32 %849, %850
  br i1 %cmp1467, label %if.then.1469, label %if.end.1472

if.then.1469:                                     ; preds = %land.lhs.true.1466
  %851 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1470 = getelementptr inbounds %struct.envelope, %struct.envelope* %851, i32 0, i32 25
  %852 = load i8*, i8** %e_id1470, align 8, !tbaa !29
  %853 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %852, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.121, i32 0, i32 0), i8* %853)
  %854 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %inc1471 = add i32 %854, 1
  store volatile i32 %inc1471, i32* %n_badrcpts, align 4, !tbaa !5
  br label %if.end.1472

if.end.1472:                                      ; preds = %if.then.1469, %land.lhs.true.1466, %if.then.1463
  br label %do.body.1473

do.body.1473:                                     ; preds = %if.end.1472
  %855 = bitcast [16 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %855) #1
  %arraydecay1475 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %856 = load i32, i32* @BadRcptThrottle, align 4, !tbaa !5
  %cmp1476 = icmp sgt i32 %856, 0
  br i1 %cmp1476, label %land.lhs.true.1478, label %cond.false.1483

land.lhs.true.1478:                               ; preds = %do.body.1473
  %857 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %858 = load i32, i32* @BadRcptThrottle, align 4, !tbaa !5
  %cmp1479 = icmp ugt i32 %857, %858
  br i1 %cmp1479, label %cond.true.1481, label %cond.false.1483

cond.true.1481:                                   ; preds = %land.lhs.true.1478
  %859 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %sub1482 = sub i32 %859, 1
  br label %cond.end.1484

cond.false.1483:                                  ; preds = %land.lhs.true.1478, %do.body.1473
  %860 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  br label %cond.end.1484

cond.end.1484:                                    ; preds = %cond.false.1483, %cond.true.1481
  %cond1485 = phi i32 [ %sub1482, %cond.true.1481 ], [ %860, %cond.false.1483 ]
  %call1486 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay1475, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i32 %cond1485)
  %861 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1487 = getelementptr inbounds %struct.envelope, %struct.envelope* %861, i32 0, i32 46
  %call1488 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i8** null)
  %arraydecay1489 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %862 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1487, i32 1, i32 %call1488, i8* %arraydecay1489, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2863, i32 %862)
  %863 = bitcast [16 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %863) #1
  br label %do.cond.1490

do.cond.1490:                                     ; preds = %cond.end.1484
  br label %do.end.1491

do.end.1491:                                      ; preds = %do.cond.1490
  %call1492 = call i32 @sleep(i32 1)
  br label %if.end.1493

if.end.1493:                                      ; preds = %do.end.1491, %land.lhs.true.1460, %if.end.1451
  %sm_gotmail1494 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 0
  %864 = load i32, i32* %sm_gotmail1494, align 4, !tbaa !38
  %tobool1495 = icmp ne i32 %864, 0
  br i1 %tobool1495, label %if.end.1497, label %if.then.1496

if.then.1496:                                     ; preds = %if.end.1493
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.1497:                                      ; preds = %if.end.1493
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %865 = bitcast %struct.sm_exc_handler* %_h1499 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %865) #1
  br label %do.body.1500

do.body.1500:                                     ; preds = %if.end.1497
  %eh_value1501 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 0
  store %struct.sm_exc* null, %struct.sm_exc** %eh_value1501, align 8, !tbaa !39
  %866 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_parent1502 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 2
  store %struct.sm_exc_handler* %866, %struct.sm_exc_handler** %eh_parent1502, align 8, !tbaa !41
  %eh_state1503 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 3
  store i32 2, i32* %eh_state1503, align 4, !tbaa !42
  store %struct.sm_exc_handler* %_h1499, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_context1504 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 1
  %arraydecay1505 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context1504, i32 0, i32 0
  %call1506 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay1505, i32 0) #13
  %cmp1507 = icmp eq i32 %call1506, 0
  br i1 %cmp1507, label %if.then.1509, label %if.end.1824

if.then.1509:                                     ; preds = %do.body.1500
  store i32 1, i32* @QuickAbort, align 4, !tbaa !5
  store i32 1, i32* @LogUsrErrs, align 4, !tbaa !5
  %867 = load i32, i32* @MaxRcptPerMsg, align 4, !tbaa !5
  %cmp1510 = icmp sgt i32 %867, 0
  br i1 %cmp1510, label %land.lhs.true.1512, label %if.end.1517

land.lhs.true.1512:                               ; preds = %if.then.1509
  %sm_nrcpts1513 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 1
  %868 = load i32, i32* %sm_nrcpts1513, align 4, !tbaa !12
  %869 = load i32, i32* @MaxRcptPerMsg, align 4, !tbaa !5
  %cmp1514 = icmp uge i32 %868, %869
  br i1 %cmp1514, label %if.then.1516, label %if.end.1517

if.then.1516:                                     ; preds = %land.lhs.true.1512
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.125, i32 0, i32 0))
  br label %rcpt_done

if.end.1517:                                      ; preds = %land.lhs.true.1512, %if.then.1509
  %870 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendmode = getelementptr inbounds %struct.envelope, %struct.envelope* %870, i32 0, i32 16
  %871 = load i16, i16* %e_sendmode, align 2, !tbaa !61
  %conv1518 = sext i16 %871 to i32
  %cmp1519 = icmp eq i32 %conv1518, 105
  br i1 %cmp1519, label %if.end.1524, label %if.then.1521

if.then.1521:                                     ; preds = %if.end.1517
  %872 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1522 = getelementptr inbounds %struct.envelope, %struct.envelope* %872, i32 0, i32 11
  %873 = load i64, i64* %e_flags1522, align 8, !tbaa !26
  %or1523 = or i64 %873, 512
  store i64 %or1523, i64* %e_flags1522, align 8, !tbaa !26
  br label %if.end.1524

if.end.1524:                                      ; preds = %if.then.1521, %if.end.1517
  %sm_milterlist1525 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 4
  %874 = load i32, i32* %sm_milterlist1525, align 4, !tbaa !16
  %tobool1526 = icmp ne i32 %874, 0
  br i1 %tobool1526, label %land.lhs.true.1527, label %land.lhs.true.1535

land.lhs.true.1527:                               ; preds = %if.end.1524
  %sm_milterize1528 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  %875 = load i32, i32* %sm_milterize1528, align 4, !tbaa !15
  %tobool1529 = icmp ne i32 %875, 0
  br i1 %tobool1529, label %land.lhs.true.1530, label %land.lhs.true.1535

land.lhs.true.1530:                               ; preds = %land.lhs.true.1527
  %876 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1531 = getelementptr inbounds %struct.envelope, %struct.envelope* %876, i32 0, i32 11
  %877 = load i64, i64* %e_flags1531, align 8, !tbaa !26
  %and1532 = and i64 %877, 16777216
  %cmp1533 = icmp ne i64 %and1532, 0
  br i1 %cmp1533, label %land.lhs.true.1535, label %if.end.1543

land.lhs.true.1535:                               ; preds = %land.lhs.true.1530, %land.lhs.true.1527, %if.end.1524
  %sm_milters1536 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 5
  %mis_flags = getelementptr inbounds %struct.milters, %struct.milters* %sm_milters1536, i32 0, i32 0
  %878 = load i32, i32* %mis_flags, align 4, !tbaa !62
  %and1537 = and i32 %878, 3
  %cmp1538 = icmp ne i32 %and1537, 0
  br i1 %cmp1538, label %if.then.1540, label %if.end.1543

if.then.1540:                                     ; preds = %land.lhs.true.1535
  %879 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1541 = getelementptr inbounds %struct.envelope, %struct.envelope* %879, i32 0, i32 11
  %880 = load i64, i64* %e_flags1541, align 8, !tbaa !26
  %or1542 = or i64 %880, 512
  store i64 %or1542, i64* %e_flags1541, align 8, !tbaa !26
  br label %if.end.1543

if.end.1543:                                      ; preds = %if.then.1540, %land.lhs.true.1535, %land.lhs.true.1530
  store volatile i32 0, i32* %milter_cmd_done, align 4, !tbaa !5
  store volatile i32 0, i32* %milter_cmd_safe, align 4, !tbaa !5
  %881 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %call1544 = call i8* @skipword(i8* %881, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0))
  store volatile i8* %call1544, i8** %p, align 8, !tbaa !1
  %882 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %cmp1545 = icmp eq i8* %882, null
  br i1 %cmp1545, label %if.then.1547, label %if.end.1548

if.then.1547:                                     ; preds = %if.end.1543
  br label %rcpt_done

if.end.1548:                                      ; preds = %if.end.1543
  %883 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1549 = getelementptr inbounds %struct.envelope, %struct.envelope* %883, i32 0, i32 46
  %call1550 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8** null)
  %884 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1549, i32 2, i32 %call1550, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2924, i32 %884)
  %885 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %886 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1551 = call %struct.address* @parseaddr(i8* %885, %struct.address* null, i32 48, i32 32, i8** %delimptr, %struct.envelope* %886, i32 1)
  store %struct.address* %call1551, %struct.address** %a, align 8, !tbaa !1
  %887 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1552 = getelementptr inbounds %struct.envelope, %struct.envelope* %887, i32 0, i32 46
  %call1553 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8** null)
  %888 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1552, i32 2, i32 %call1553, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2928, i32 %888)
  %889 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1554 = icmp sgt i32 %889, 0
  br i1 %cmp1554, label %if.then.1556, label %if.end.1557

if.then.1556:                                     ; preds = %if.end.1548
  br label %rcpt_done

if.end.1557:                                      ; preds = %if.end.1548
  %890 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %cmp1558 = icmp eq %struct.address* %890, null
  br i1 %cmp1558, label %if.then.1560, label %if.end.1561

if.then.1560:                                     ; preds = %if.end.1557
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.128, i32 0, i32 0))
  br label %rcpt_done

if.end.1561:                                      ; preds = %if.end.1557
  %891 = load i8*, i8** %delimptr, align 8, !tbaa !1
  %cmp1562 = icmp ne i8* %891, null
  br i1 %cmp1562, label %land.lhs.true.1564, label %if.end.1570

land.lhs.true.1564:                               ; preds = %if.end.1561
  %892 = load i8*, i8** %delimptr, align 8, !tbaa !1
  %893 = load i8, i8* %892, align 1, !tbaa !7
  %conv1565 = sext i8 %893 to i32
  %cmp1566 = icmp ne i32 %conv1565, 0
  br i1 %cmp1566, label %if.then.1568, label %if.end.1570

if.then.1568:                                     ; preds = %land.lhs.true.1564
  %894 = load i8*, i8** %delimptr, align 8, !tbaa !1
  %incdec.ptr1569 = getelementptr inbounds i8, i8* %894, i32 1
  store i8* %incdec.ptr1569, i8** %delimptr, align 8, !tbaa !1
  store i8 0, i8* %894, align 1, !tbaa !7
  br label %if.end.1570

if.end.1570:                                      ; preds = %if.then.1568, %land.lhs.true.1564, %if.end.1561
  %895 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_mailer1571 = getelementptr inbounds %struct.address, %struct.address* %895, i32 0, i32 4
  %896 = load %struct.mailer*, %struct.mailer** %q_mailer1571, align 8, !tbaa !63
  %cmp1572 = icmp ne %struct.mailer* %896, null
  br i1 %cmp1572, label %if.then.1574, label %if.else.1579

if.then.1574:                                     ; preds = %if.end.1570
  %897 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1575 = getelementptr inbounds %struct.envelope, %struct.envelope* %897, i32 0, i32 46
  %call1576 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8** null)
  %898 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_mailer1577 = getelementptr inbounds %struct.address, %struct.address* %898, i32 0, i32 4
  %899 = load %struct.mailer*, %struct.mailer** %q_mailer1577, align 8, !tbaa !63
  %m_name1578 = getelementptr inbounds %struct.mailer, %struct.mailer* %899, i32 0, i32 0
  %900 = load i8*, i8** %m_name1578, align 8, !tbaa !54
  %901 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1575, i32 2, i32 %call1576, i8* %900, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2944, i32 %901)
  br label %if.end.1582

if.else.1579:                                     ; preds = %if.end.1570
  %902 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1580 = getelementptr inbounds %struct.envelope, %struct.envelope* %902, i32 0, i32 46
  %call1581 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8** null)
  %903 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1580, i32 2, i32 %call1581, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2947, i32 %903)
  br label %if.end.1582

if.end.1582:                                      ; preds = %if.else.1579, %if.then.1574
  %904 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_host1583 = getelementptr inbounds %struct.address, %struct.address* %904, i32 0, i32 3
  %905 = load i8*, i8** %q_host1583, align 8, !tbaa !64
  %cmp1584 = icmp ne i8* %905, null
  br i1 %cmp1584, label %if.then.1586, label %if.else.1590

if.then.1586:                                     ; preds = %if.end.1582
  %906 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1587 = getelementptr inbounds %struct.envelope, %struct.envelope* %906, i32 0, i32 46
  %call1588 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8** null)
  %907 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_host1589 = getelementptr inbounds %struct.address, %struct.address* %907, i32 0, i32 3
  %908 = load i8*, i8** %q_host1589, align 8, !tbaa !64
  %909 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1587, i32 2, i32 %call1588, i8* %908, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2950, i32 %909)
  br label %if.end.1593

if.else.1590:                                     ; preds = %if.end.1582
  %910 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1591 = getelementptr inbounds %struct.envelope, %struct.envelope* %910, i32 0, i32 46
  %call1592 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8** null)
  %911 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1591, i32 2, i32 %call1592, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2953, i32 %911)
  br label %if.end.1593

if.end.1593:                                      ; preds = %if.else.1590, %if.then.1586
  %912 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_user1594 = getelementptr inbounds %struct.address, %struct.address* %912, i32 0, i32 1
  %913 = load i8*, i8** %q_user1594, align 8, !tbaa !65
  %cmp1595 = icmp ne i8* %913, null
  br i1 %cmp1595, label %if.then.1597, label %if.else.1601

if.then.1597:                                     ; preds = %if.end.1593
  %914 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1598 = getelementptr inbounds %struct.envelope, %struct.envelope* %914, i32 0, i32 46
  %call1599 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8** null)
  %915 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_user1600 = getelementptr inbounds %struct.address, %struct.address* %915, i32 0, i32 1
  %916 = load i8*, i8** %q_user1600, align 8, !tbaa !65
  %917 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1598, i32 2, i32 %call1599, i8* %916, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2956, i32 %917)
  br label %if.end.1604

if.else.1601:                                     ; preds = %if.end.1593
  %918 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1602 = getelementptr inbounds %struct.envelope, %struct.envelope* %918, i32 0, i32 46
  %call1603 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8** null)
  %919 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1602, i32 2, i32 %call1603, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2959, i32 %919)
  br label %if.end.1604

if.end.1604:                                      ; preds = %if.else.1601, %if.then.1597
  %920 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1605 = icmp sgt i32 %920, 0
  br i1 %cmp1605, label %if.then.1607, label %if.end.1608

if.then.1607:                                     ; preds = %if.end.1604
  br label %rcpt_done

if.end.1608:                                      ; preds = %if.end.1604
  %921 = load volatile i8*, i8** %p, align 8, !tbaa !1
  store i8* %921, i8** %addr, align 8, !tbaa !1
  %922 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %923 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %924 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %925 = load i8*, i8** %delimptr, align 8, !tbaa !1
  %arraydecay1609 = getelementptr inbounds [20 x i8*], [20 x i8*]* %args, i32 0, i32 0
  call void @parse_esmtp_args(%struct.envelope* %922, %struct.address* %923, i8* %924, i8* %925, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i8** %arraydecay1609, void (%struct.address*, i8*, i8*, %struct.envelope*)* @rcpt_esmtp_args)
  %926 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1610 = icmp sgt i32 %926, 0
  br i1 %cmp1610, label %if.then.1612, label %if.end.1613

if.then.1612:                                     ; preds = %if.end.1608
  br label %rcpt_done

if.end.1613:                                      ; preds = %if.end.1608
  %927 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1614 = getelementptr inbounds %struct.envelope, %struct.envelope* %927, i32 0, i32 46
  %call1615 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8** null)
  %928 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1614, i32 2, i32 %call1615, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2989, i32 %928)
  %929 = load i8*, i8** %addr, align 8, !tbaa !1
  %930 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %931 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1616 = getelementptr inbounds %struct.envelope, %struct.envelope* %931, i32 0, i32 25
  %932 = load i8*, i8** %e_id1616, align 8, !tbaa !29
  %call1617 = call i32 @rscheck(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i32 0, i32 0), i8* %929, i8* null, %struct.envelope* %930, i32 5, i32 3, i8* null, i8* %932, %struct.address* %addr_st, i8** null)
  %cmp1618 = icmp ne i32 %call1617, 0
  br i1 %cmp1618, label %if.then.1623, label %lor.lhs.false.1620

lor.lhs.false.1620:                               ; preds = %if.end.1613
  %933 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1621 = icmp sgt i32 %933, 0
  br i1 %cmp1621, label %if.then.1623, label %if.end.1624

if.then.1623:                                     ; preds = %lor.lhs.false.1620, %if.end.1613
  br label %rcpt_done

if.end.1624:                                      ; preds = %lor.lhs.false.1620
  %934 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1625 = getelementptr inbounds %struct.envelope, %struct.envelope* %934, i32 0, i32 46
  %call1626 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8** null)
  %935 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1625, i32 2, i32 %call1626, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2996, i32 %935)
  %936 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1627 = getelementptr inbounds %struct.envelope, %struct.envelope* %936, i32 0, i32 11
  %937 = load i64, i64* %e_flags1627, align 8, !tbaa !26
  %and1628 = and i64 %937, 16777216
  %cmp1629 = icmp ne i64 %and1628, 0
  br i1 %cmp1629, label %if.then.1631, label %if.end.1632

if.then.1631:                                     ; preds = %if.end.1624
  %938 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %938, i32 0, i32 21
  store i16 5, i16* %q_state, align 2, !tbaa !66
  br label %if.end.1632

if.end.1632:                                      ; preds = %if.then.1631, %if.end.1624
  store volatile i32 1, i32* %milter_cmd_safe, align 4, !tbaa !5
  %939 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %940 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue1633 = getelementptr inbounds %struct.envelope, %struct.envelope* %940, i32 0, i32 7
  %941 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1634 = call %struct.address* @recipient(%struct.address* %939, %struct.address** %e_sendqueue1633, i32 0, %struct.envelope* %941)
  store %struct.address* %call1634, %struct.address** %a, align 8, !tbaa !1
  store volatile i32 1, i32* %milter_rcpt_added, align 4, !tbaa !5
  %942 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1635 = icmp sgt i32 %942, 0
  br i1 %cmp1635, label %if.end.1643, label %land.lhs.true.1637

land.lhs.true.1637:                               ; preds = %if.end.1632
  %943 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state1638 = getelementptr inbounds %struct.address, %struct.address* %943, i32 0, i32 21
  %944 = load i16, i16* %q_state1638, align 2, !tbaa !66
  %conv1639 = sext i16 %944 to i32
  %cmp1640 = icmp eq i32 %conv1639, 2
  br i1 %cmp1640, label %if.then.1642, label %if.end.1643

if.then.1642:                                     ; preds = %land.lhs.true.1637
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i32 0, i32 0))
  br label %if.end.1643

if.end.1643:                                      ; preds = %if.then.1642, %land.lhs.true.1637, %if.end.1632
  br label %rcpt_done

rcpt_done:                                        ; preds = %if.end.1643, %if.then.1623, %if.then.1612, %if.then.1607, %if.then.1560, %if.then.1556, %if.then.1547, %if.then.1516
  %sm_milterlist1644 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 4
  %945 = load i32, i32* %sm_milterlist1644, align 4, !tbaa !16
  %tobool1645 = icmp ne i32 %945, 0
  br i1 %tobool1645, label %land.lhs.true.1646, label %if.end.1768

land.lhs.true.1646:                               ; preds = %rcpt_done
  %sm_milterize1647 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  %946 = load i32, i32* %sm_milterize1647, align 4, !tbaa !15
  %tobool1648 = icmp ne i32 %946, 0
  br i1 %tobool1648, label %land.lhs.true.1649, label %if.end.1768

land.lhs.true.1649:                               ; preds = %land.lhs.true.1646
  %947 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1650 = getelementptr inbounds %struct.envelope, %struct.envelope* %947, i32 0, i32 11
  %948 = load i64, i64* %e_flags1650, align 8, !tbaa !26
  %and1651 = and i64 %948, 16777216
  %cmp1652 = icmp ne i64 %and1651, 0
  br i1 %cmp1652, label %if.end.1768, label %if.then.1654

if.then.1654:                                     ; preds = %land.lhs.true.1649
  call void @llvm.lifetime.start(i64 1, i8* %state1656) #1
  %949 = bitcast i8** %response1658 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %949) #1
  %950 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1659 = icmp sgt i32 %950, 0
  br i1 %cmp1659, label %if.then.1661, label %if.end.1697

if.then.1661:                                     ; preds = %if.then.1654
  %951 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1662 = getelementptr inbounds %struct.envelope, %struct.envelope* %951, i32 0, i32 46
  %call1663 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8** null)
  %952 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1662, i32 2, i32 %call1663, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3035, i32 %952)
  %953 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %cmp1664 = icmp ne %struct.address* %953, null
  br i1 %cmp1664, label %land.lhs.true.1666, label %if.else.1679

land.lhs.true.1666:                               ; preds = %if.then.1661
  %954 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_status = getelementptr inbounds %struct.address, %struct.address* %954, i32 0, i32 17
  %955 = load i8*, i8** %q_status, align 8, !tbaa !67
  %cmp1667 = icmp ne i8* %955, null
  br i1 %cmp1667, label %land.lhs.true.1669, label %if.else.1679

land.lhs.true.1669:                               ; preds = %land.lhs.true.1666
  %956 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_rstatus = getelementptr inbounds %struct.address, %struct.address* %956, i32 0, i32 18
  %957 = load i8*, i8** %q_rstatus, align 8, !tbaa !68
  %cmp1670 = icmp ne i8* %957, null
  br i1 %cmp1670, label %if.then.1672, label %if.else.1679

if.then.1672:                                     ; preds = %land.lhs.true.1669
  %958 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1673 = getelementptr inbounds %struct.envelope, %struct.envelope* %958, i32 0, i32 46
  %call1674 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8** null)
  %959 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_status1675 = getelementptr inbounds %struct.address, %struct.address* %959, i32 0, i32 17
  %960 = load i8*, i8** %q_status1675, align 8, !tbaa !67
  %961 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1673, i32 2, i32 %call1674, i8* %960, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3042, i32 %961)
  %962 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1676 = getelementptr inbounds %struct.envelope, %struct.envelope* %962, i32 0, i32 46
  %call1677 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8** null)
  %963 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_rstatus1678 = getelementptr inbounds %struct.address, %struct.address* %963, i32 0, i32 18
  %964 = load i8*, i8** %q_rstatus1678, align 8, !tbaa !68
  %965 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1676, i32 2, i32 %call1677, i8* %964, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3045, i32 %965)
  br label %if.end.1696

if.else.1679:                                     ; preds = %land.lhs.true.1669, %land.lhs.true.1666, %if.then.1661
  %q_host1680 = getelementptr inbounds %struct.address, %struct.address* %addr_st, i32 0, i32 3
  %966 = load i8*, i8** %q_host1680, align 8, !tbaa !64
  %cmp1681 = icmp ne i8* %966, null
  br i1 %cmp1681, label %if.then.1683, label %if.end.1687

if.then.1683:                                     ; preds = %if.else.1679
  %967 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1684 = getelementptr inbounds %struct.envelope, %struct.envelope* %967, i32 0, i32 46
  %call1685 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8** null)
  %q_host1686 = getelementptr inbounds %struct.address, %struct.address* %addr_st, i32 0, i32 3
  %968 = load i8*, i8** %q_host1686, align 8, !tbaa !64
  %969 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1684, i32 2, i32 %call1685, i8* %968, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3053, i32 %969)
  br label %if.end.1687

if.end.1687:                                      ; preds = %if.then.1683, %if.else.1679
  %q_user1688 = getelementptr inbounds %struct.address, %struct.address* %addr_st, i32 0, i32 1
  %970 = load i8*, i8** %q_user1688, align 8, !tbaa !65
  %cmp1689 = icmp ne i8* %970, null
  br i1 %cmp1689, label %if.then.1691, label %if.end.1695

if.then.1691:                                     ; preds = %if.end.1687
  %971 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1692 = getelementptr inbounds %struct.envelope, %struct.envelope* %971, i32 0, i32 46
  %call1693 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8** null)
  %q_user1694 = getelementptr inbounds %struct.address, %struct.address* %addr_st, i32 0, i32 1
  %972 = load i8*, i8** %q_user1694, align 8, !tbaa !65
  %973 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1692, i32 2, i32 %call1693, i8* %972, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3058, i32 %973)
  br label %if.end.1695

if.end.1695:                                      ; preds = %if.then.1691, %if.end.1687
  br label %if.end.1696

if.end.1696:                                      ; preds = %if.end.1695, %if.then.1672
  br label %if.end.1697

if.end.1697:                                      ; preds = %if.end.1696, %if.then.1654
  %arraydecay1698 = getelementptr inbounds [20 x i8*], [20 x i8*]* %args, i32 0, i32 0
  %974 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %975 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1699 = icmp sgt i32 %975, 0
  %conv1700 = zext i1 %cmp1699 to i32
  %call1701 = call i8* @milter_envrcpt(i8** %arraydecay1698, %struct.envelope* %974, i8* %state1656, i32 %conv1700)
  store i8* %call1701, i8** %response1658, align 8, !tbaa !1
  store volatile i32 1, i32* %milter_cmd_done, align 4, !tbaa !5
  %976 = bitcast i32* %savelogusrerrs1703 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %976) #1
  %977 = load i32, i32* @LogUsrErrs, align 4, !tbaa !5
  store i32 %977, i32* %savelogusrerrs1703, align 4, !tbaa !5
  store volatile i32 1, i32* %milter_cmd_fail, align 4, !tbaa !5
  %978 = load i8, i8* %state1656, align 1, !tbaa !7
  %conv1704 = sext i8 %978 to i32
  switch i32 %conv1704, label %sw.default.1755 [
    i32 52, label %sw.bb.1705
    i32 121, label %sw.bb.1715
    i32 114, label %sw.bb.1735
    i32 100, label %sw.bb.1741
    i32 116, label %sw.bb.1749
  ]

sw.bb.1705:                                       ; preds = %if.end.1697
  %979 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1706 = icmp sgt i32 %979, 3
  br i1 %cmp1706, label %if.then.1708, label %if.end.1710

if.then.1708:                                     ; preds = %sw.bb.1705
  %980 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1709 = getelementptr inbounds %struct.envelope, %struct.envelope* %980, i32 0, i32 25
  %981 = load i8*, i8** %e_id1709, align 8, !tbaa !29
  %982 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %981, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %982)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1710

if.end.1710:                                      ; preds = %if.then.1708, %sw.bb.1705
  %983 = bitcast i32* %tsave1712 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %983) #1
  %984 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  store i32 %984, i32* %tsave1712, align 4, !tbaa !5
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i32 0, i32 0))
  %985 = load i32, i32* %tsave1712, align 4, !tbaa !5
  store i32 %985, i32* @QuickAbort, align 4, !tbaa !5
  %986 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue1713 = getelementptr inbounds %struct.envelope, %struct.envelope* %986, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue1713, align 8, !tbaa !30
  store i32 2, i32* %cleanup.dest.slot
  %987 = bitcast i32* %tsave1712 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %987) #1
  br label %cleanup.1761

sw.bb.1715:                                       ; preds = %if.end.1697
  %988 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1716 = icmp sgt i32 %988, 3
  br i1 %cmp1716, label %if.then.1718, label %if.end.1720

if.then.1718:                                     ; preds = %sw.bb.1715
  %989 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1719 = getelementptr inbounds %struct.envelope, %struct.envelope* %989, i32 0, i32 25
  %990 = load i8*, i8** %e_id1719, align 8, !tbaa !29
  %991 = load i8*, i8** %addr, align 8, !tbaa !1
  %992 = load i8*, i8** %response1658, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %990, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %991, i8* %992)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1720

if.end.1720:                                      ; preds = %if.then.1718, %sw.bb.1715
  %993 = load i8*, i8** %response1658, align 8, !tbaa !1
  %call1721 = call i32 @strncmp(i8* %993, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #11
  %cmp1722 = icmp eq i32 %call1721, 0
  br i1 %cmp1722, label %if.then.1728, label %lor.lhs.false.1724

lor.lhs.false.1724:                               ; preds = %if.end.1720
  %994 = load i8*, i8** %response1658, align 8, !tbaa !1
  %call1725 = call i32 @strncmp(i8* %994, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4) #11
  %cmp1726 = icmp eq i32 %call1725, 0
  br i1 %cmp1726, label %if.then.1728, label %if.else.1733

if.then.1728:                                     ; preds = %lor.lhs.false.1724, %if.end.1720
  %995 = bitcast i32* %tsave1730 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %995) #1
  %996 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  store i32 %996, i32* %tsave1730, align 4, !tbaa !5
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  %997 = load i8*, i8** %response1658, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %997)
  %998 = load i32, i32* %tsave1730, align 4, !tbaa !5
  store i32 %998, i32* @QuickAbort, align 4, !tbaa !5
  %999 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue1731 = getelementptr inbounds %struct.envelope, %struct.envelope* %999, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue1731, align 8, !tbaa !30
  store i32 2, i32* %cleanup.dest.slot
  %1000 = bitcast i32* %tsave1730 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1000) #1
  br label %cleanup.1761

if.else.1733:                                     ; preds = %lor.lhs.false.1724
  %1001 = load i8*, i8** %response1658, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %1001)
  br label %if.end.1734

if.end.1734:                                      ; preds = %if.else.1733
  br label %sw.epilog.1756

sw.bb.1735:                                       ; preds = %if.end.1697
  %1002 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1736 = icmp sgt i32 %1002, 3
  br i1 %cmp1736, label %if.then.1738, label %if.end.1740

if.then.1738:                                     ; preds = %sw.bb.1735
  %1003 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1739 = getelementptr inbounds %struct.envelope, %struct.envelope* %1003, i32 0, i32 25
  %1004 = load i8*, i8** %e_id1739, align 8, !tbaa !29
  %1005 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1004, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %1005)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1740

if.end.1740:                                      ; preds = %if.then.1738, %sw.bb.1735
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i32 0, i32 0))
  br label %sw.epilog.1756

sw.bb.1741:                                       ; preds = %if.end.1697
  %1006 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1742 = icmp sgt i32 %1006, 3
  br i1 %cmp1742, label %if.then.1744, label %if.end.1746

if.then.1744:                                     ; preds = %sw.bb.1741
  %1007 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1745 = getelementptr inbounds %struct.envelope, %struct.envelope* %1007, i32 0, i32 25
  %1008 = load i8*, i8** %e_id1745, align 8, !tbaa !29
  %1009 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1008, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %1009)
  br label %if.end.1746

if.end.1746:                                      ; preds = %if.then.1744, %sw.bb.1741
  %1010 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1747 = getelementptr inbounds %struct.envelope, %struct.envelope* %1010, i32 0, i32 11
  %1011 = load i64, i64* %e_flags1747, align 8, !tbaa !26
  %or1748 = or i64 %1011, 16777216
  store i64 %or1748, i64* %e_flags1747, align 8, !tbaa !26
  store volatile i32 0, i32* %milter_cmd_fail, align 4, !tbaa !5
  br label %sw.epilog.1756

sw.bb.1749:                                       ; preds = %if.end.1697
  %1012 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1750 = icmp sgt i32 %1012, 3
  br i1 %cmp1750, label %if.then.1752, label %if.end.1754

if.then.1752:                                     ; preds = %sw.bb.1749
  %1013 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1753 = getelementptr inbounds %struct.envelope, %struct.envelope* %1013, i32 0, i32 25
  %1014 = load i8*, i8** %e_id1753, align 8, !tbaa !29
  %1015 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1014, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %1015, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1754

if.end.1754:                                      ; preds = %if.then.1752, %sw.bb.1749
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  br label %sw.epilog.1756

sw.default.1755:                                  ; preds = %if.end.1697
  store volatile i32 0, i32* %milter_cmd_fail, align 4, !tbaa !5
  br label %sw.epilog.1756

sw.epilog.1756:                                   ; preds = %sw.default.1755, %if.end.1754, %if.end.1746, %if.end.1740, %if.end.1734
  %1016 = load i32, i32* %savelogusrerrs1703, align 4, !tbaa !5
  store i32 %1016, i32* @LogUsrErrs, align 4, !tbaa !5
  %1017 = load i8*, i8** %response1658, align 8, !tbaa !1
  %cmp1757 = icmp ne i8* %1017, null
  br i1 %cmp1757, label %if.then.1759, label %if.end.1760

if.then.1759:                                     ; preds = %sw.epilog.1756
  %1018 = load i8*, i8** %response1658, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %1018, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3065)
  br label %if.end.1760

if.end.1760:                                      ; preds = %if.then.1759, %sw.epilog.1756
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1761

cleanup.1761:                                     ; preds = %if.end.1760, %if.then.1728, %if.end.1710
  %1019 = bitcast i32* %savelogusrerrs1703 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1019) #1
  %cleanup.dest.1762 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1762, label %cleanup.1764 [
    i32 0, label %cleanup.cont.1763
  ]

cleanup.cont.1763:                                ; preds = %cleanup.1761
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1764

cleanup.1764:                                     ; preds = %cleanup.cont.1763, %cleanup.1761
  %1020 = bitcast i8** %response1658 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1020) #1
  call void @llvm.lifetime.end(i64 1, i8* %state1656) #1
  %cleanup.dest.1766 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1766, label %cleanup.2072 [
    i32 0, label %cleanup.cont.1767
  ]

cleanup.cont.1767:                                ; preds = %cleanup.1764
  br label %if.end.1768

if.end.1768:                                      ; preds = %cleanup.cont.1767, %land.lhs.true.1649, %land.lhs.true.1646, %rcpt_done
  %1021 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %1021, i32 0, i32 0
  %1022 = load i8*, i8** %q_paddr, align 8, !tbaa !69
  %1023 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to1769 = getelementptr inbounds %struct.envelope, %struct.envelope* %1023, i32 0, i32 3
  store i8* %1022, i8** %e_to1769, align 8, !tbaa !43
  %1024 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1770 = icmp sgt i32 %1024, 0
  br i1 %cmp1770, label %if.end.1790, label %land.lhs.true.1772

land.lhs.true.1772:                               ; preds = %if.end.1768
  %1025 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state1773 = getelementptr inbounds %struct.address, %struct.address* %1025, i32 0, i32 21
  %1026 = load i16, i16* %q_state1773, align 2, !tbaa !66
  %conv1774 = sext i16 %1026 to i32
  %cmp1775 = icmp eq i32 %conv1774, 2
  br i1 %cmp1775, label %if.end.1790, label %if.then.1777

if.then.1777:                                     ; preds = %land.lhs.true.1772
  %sm_nrcpts1778 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 1
  %1027 = load i32, i32* %sm_nrcpts1778, align 4, !tbaa !12
  %cmp1779 = icmp eq i32 %1027, 0
  br i1 %cmp1779, label %if.then.1781, label %if.end.1782

if.then.1781:                                     ; preds = %if.then.1777
  %1028 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @initsys(%struct.envelope* %1028)
  br label %if.end.1782

if.end.1782:                                      ; preds = %if.then.1781, %if.then.1777
  %1029 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state1783 = getelementptr inbounds %struct.address, %struct.address* %1029, i32 0, i32 21
  %1030 = load i16, i16* %q_state1783, align 2, !tbaa !66
  %conv1784 = sext i16 %1030 to i32
  %cmp1785 = icmp eq i32 %conv1784, 3
  %cond1787 = select i1 %cmp1785, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0)
  call void (i8*, ...) @message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.132, i32 0, i32 0), i8* %cond1787)
  %sm_nrcpts1788 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 1
  %1031 = load i32, i32* %sm_nrcpts1788, align 4, !tbaa !12
  %inc1789 = add i32 %1031, 1
  store i32 %inc1789, i32* %sm_nrcpts1788, align 4, !tbaa !12
  br label %if.end.1790

if.end.1790:                                      ; preds = %if.end.1782, %land.lhs.true.1772, %if.end.1768
  %1032 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1791 = getelementptr inbounds %struct.envelope, %struct.envelope* %1032, i32 0, i32 46
  %call1792 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8** null)
  %1033 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1791, i32 2, i32 %call1792, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3087, i32 %1033)
  %1034 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1793 = getelementptr inbounds %struct.envelope, %struct.envelope* %1034, i32 0, i32 46
  %call1794 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8** null)
  %1035 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1793, i32 2, i32 %call1794, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3089, i32 %1035)
  %1036 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1795 = getelementptr inbounds %struct.envelope, %struct.envelope* %1036, i32 0, i32 46
  %call1796 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8** null)
  %1037 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1795, i32 2, i32 %call1796, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3091, i32 %1037)
  %1038 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1797 = getelementptr inbounds %struct.envelope, %struct.envelope* %1038, i32 0, i32 46
  %call1798 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i8** null)
  %1039 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1797, i32 2, i32 %call1798, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3093, i32 %1039)
  %1040 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp1799 = icmp sgt i32 %1040, 0
  br i1 %cmp1799, label %if.then.1801, label %if.end.1823

if.then.1801:                                     ; preds = %if.end.1790
  %1041 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %inc1802 = add i32 %1041, 1
  store volatile i32 %inc1802, i32* %n_badrcpts, align 4, !tbaa !5
  br label %do.body.1803

do.body.1803:                                     ; preds = %if.then.1801
  %1042 = bitcast [16 x i8]* %buf1805 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1042) #1
  %arraydecay1806 = getelementptr inbounds [16 x i8], [16 x i8]* %buf1805, i32 0, i32 0
  %1043 = load i32, i32* @BadRcptThrottle, align 4, !tbaa !5
  %cmp1807 = icmp sgt i32 %1043, 0
  br i1 %cmp1807, label %land.lhs.true.1809, label %cond.false.1814

land.lhs.true.1809:                               ; preds = %do.body.1803
  %1044 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %1045 = load i32, i32* @BadRcptThrottle, align 4, !tbaa !5
  %cmp1810 = icmp ugt i32 %1044, %1045
  br i1 %cmp1810, label %cond.true.1812, label %cond.false.1814

cond.true.1812:                                   ; preds = %land.lhs.true.1809
  %1046 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %sub1813 = sub i32 %1046, 1
  br label %cond.end.1815

cond.false.1814:                                  ; preds = %land.lhs.true.1809, %do.body.1803
  %1047 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  br label %cond.end.1815

cond.end.1815:                                    ; preds = %cond.false.1814, %cond.true.1812
  %cond1816 = phi i32 [ %sub1813, %cond.true.1812 ], [ %1047, %cond.false.1814 ]
  %call1817 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay1806, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i32 %cond1816)
  %1048 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1818 = getelementptr inbounds %struct.envelope, %struct.envelope* %1048, i32 0, i32 46
  %call1819 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i8** null)
  %arraydecay1820 = getelementptr inbounds [16 x i8], [16 x i8]* %buf1805, i32 0, i32 0
  %1049 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1818, i32 1, i32 %call1819, i8* %arraydecay1820, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3098, i32 %1049)
  %1050 = bitcast [16 x i8]* %buf1805 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1050) #1
  br label %do.cond.1821

do.cond.1821:                                     ; preds = %cond.end.1815
  br label %do.end.1822

do.end.1822:                                      ; preds = %do.cond.1821
  br label %if.end.1823

if.end.1823:                                      ; preds = %do.end.1822, %if.end.1790
  br label %if.end.1824

if.end.1824:                                      ; preds = %if.end.1823, %do.body.1500
  %eh_state1825 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 3
  %1051 = load i32, i32* %eh_state1825, align 4, !tbaa !42
  %cmp1826 = icmp eq i32 %1051, 1
  br i1 %cmp1826, label %if.then.1828, label %if.end.1829

if.then.1828:                                     ; preds = %if.end.1824
  br label %do.end.2040

if.end.1829:                                      ; preds = %if.end.1824
  %eh_state1830 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 3
  %1052 = load i32, i32* %eh_state1830, align 4, !tbaa !42
  %cmp1831 = icmp eq i32 %1052, 2
  br i1 %cmp1831, label %if.then.1833, label %if.end.1840

if.then.1833:                                     ; preds = %if.end.1829
  %1053 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp1834 = icmp eq %struct.sm_exc_handler* %1053, %_h1499
  br i1 %cmp1834, label %lor.end.1837, label %lor.rhs.1836

lor.rhs.1836:                                     ; preds = %if.then.1833
  call void @sm_abort_at(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.1837

lor.end.1837:                                     ; preds = %1054, %if.then.1833
  %1055 = phi i1 [ true, %if.then.1833 ], [ false, %1054 ]
  %lor.ext1838 = zext i1 %1055 to i32
  %eh_parent1839 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 2
  %1056 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent1839, align 8, !tbaa !41
  store %struct.sm_exc_handler* %1056, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  br label %if.end.1840

if.end.1840:                                      ; preds = %lor.end.1837, %if.end.1829
  %eh_value1841 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 0
  %1057 = load %struct.sm_exc*, %struct.sm_exc** %eh_value1841, align 8, !tbaa !39
  %call1842 = call i32 @sm_exc_match(%struct.sm_exc* %1057, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0))
  %tobool1843 = icmp ne i32 %call1842, 0
  %cond1844 = select i1 %tobool1843, i32 1, i32 0
  %eh_state1845 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 3
  store i32 %cond1844, i32* %eh_state1845, align 4, !tbaa !42
  %eh_state1846 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 3
  %1058 = load i32, i32* %eh_state1846, align 4, !tbaa !42
  %cmp1847 = icmp eq i32 %1058, 1
  br i1 %cmp1847, label %if.then.1849, label %if.end.2038

if.then.1849:                                     ; preds = %if.end.1840
  %1059 = bitcast %struct.sm_exc** %exc1851 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1059) #1
  %eh_value1852 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 0
  %1060 = load %struct.sm_exc*, %struct.sm_exc** %eh_value1852, align 8, !tbaa !39
  store %struct.sm_exc* %1060, %struct.sm_exc** %exc1851, align 8, !tbaa !1
  %1061 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1853 = getelementptr inbounds %struct.envelope, %struct.envelope* %1061, i32 0, i32 11
  %1062 = load i64, i64* %e_flags1853, align 8, !tbaa !26
  %and1854 = and i64 %1062, -8225
  store i64 %and1854, i64* %e_flags1853, align 8, !tbaa !26
  %1063 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %inc1855 = add i32 %1063, 1
  store volatile i32 %inc1855, i32* %n_badrcpts, align 4, !tbaa !5
  br label %do.body.1856

do.body.1856:                                     ; preds = %if.then.1849
  %1064 = bitcast [16 x i8]* %buf1858 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1064) #1
  %arraydecay1859 = getelementptr inbounds [16 x i8], [16 x i8]* %buf1858, i32 0, i32 0
  %1065 = load i32, i32* @BadRcptThrottle, align 4, !tbaa !5
  %cmp1860 = icmp sgt i32 %1065, 0
  br i1 %cmp1860, label %land.lhs.true.1862, label %cond.false.1867

land.lhs.true.1862:                               ; preds = %do.body.1856
  %1066 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %1067 = load i32, i32* @BadRcptThrottle, align 4, !tbaa !5
  %cmp1863 = icmp ugt i32 %1066, %1067
  br i1 %cmp1863, label %cond.true.1865, label %cond.false.1867

cond.true.1865:                                   ; preds = %land.lhs.true.1862
  %1068 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  %sub1866 = sub i32 %1068, 1
  br label %cond.end.1868

cond.false.1867:                                  ; preds = %land.lhs.true.1862, %do.body.1856
  %1069 = load volatile i32, i32* %n_badrcpts, align 4, !tbaa !5
  br label %cond.end.1868

cond.end.1868:                                    ; preds = %cond.false.1867, %cond.true.1865
  %cond1869 = phi i32 [ %sub1866, %cond.true.1865 ], [ %1069, %cond.false.1867 ]
  %call1870 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay1859, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i32 %cond1869)
  %1070 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1871 = getelementptr inbounds %struct.envelope, %struct.envelope* %1070, i32 0, i32 46
  %call1872 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i8** null)
  %arraydecay1873 = getelementptr inbounds [16 x i8], [16 x i8]* %buf1858, i32 0, i32 0
  %1071 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1871, i32 1, i32 %call1872, i8* %arraydecay1873, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3106, i32 %1071)
  %1072 = bitcast [16 x i8]* %buf1858 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1072) #1
  br label %do.cond.1874

do.cond.1874:                                     ; preds = %cond.end.1868
  br label %do.end.1875

do.end.1875:                                      ; preds = %do.cond.1874
  %sm_milterlist1876 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 4
  %1073 = load i32, i32* %sm_milterlist1876, align 4, !tbaa !16
  %tobool1877 = icmp ne i32 %1073, 0
  br i1 %tobool1877, label %land.lhs.true.1878, label %if.end.2011

land.lhs.true.1878:                               ; preds = %do.end.1875
  %sm_milterize1879 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  %1074 = load i32, i32* %sm_milterize1879, align 4, !tbaa !15
  %tobool1880 = icmp ne i32 %1074, 0
  br i1 %tobool1880, label %land.lhs.true.1881, label %if.end.2011

land.lhs.true.1881:                               ; preds = %land.lhs.true.1878
  %1075 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1882 = getelementptr inbounds %struct.envelope, %struct.envelope* %1075, i32 0, i32 11
  %1076 = load i64, i64* %e_flags1882, align 8, !tbaa !26
  %and1883 = and i64 %1076, 16777216
  %cmp1884 = icmp ne i64 %and1883, 0
  br i1 %cmp1884, label %if.end.2011, label %land.lhs.true.1886

land.lhs.true.1886:                               ; preds = %land.lhs.true.1881
  %1077 = load volatile i32, i32* %milter_cmd_done, align 4, !tbaa !5
  %tobool1887 = icmp ne i32 %1077, 0
  br i1 %tobool1887, label %if.end.2011, label %land.lhs.true.1888

land.lhs.true.1888:                               ; preds = %land.lhs.true.1886
  %1078 = load volatile i32, i32* %milter_cmd_safe, align 4, !tbaa !5
  %tobool1889 = icmp ne i32 %1078, 0
  br i1 %tobool1889, label %if.then.1890, label %if.end.2011

if.then.1890:                                     ; preds = %land.lhs.true.1888
  call void @llvm.lifetime.start(i64 1, i8* %state1892) #1
  %1079 = bitcast i8** %response1894 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1079) #1
  %1080 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1895 = getelementptr inbounds %struct.envelope, %struct.envelope* %1080, i32 0, i32 46
  %call1896 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8** null)
  %1081 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1895, i32 2, i32 %call1896, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3116, i32 %1081)
  %q_host1897 = getelementptr inbounds %struct.address, %struct.address* %addr_st, i32 0, i32 3
  %1082 = load i8*, i8** %q_host1897, align 8, !tbaa !64
  %cmp1898 = icmp ne i8* %1082, null
  br i1 %cmp1898, label %if.then.1900, label %if.else.1904

if.then.1900:                                     ; preds = %if.then.1890
  %1083 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1901 = getelementptr inbounds %struct.envelope, %struct.envelope* %1083, i32 0, i32 46
  %call1902 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8** null)
  %q_host1903 = getelementptr inbounds %struct.address, %struct.address* %addr_st, i32 0, i32 3
  %1084 = load i8*, i8** %q_host1903, align 8, !tbaa !64
  %1085 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1901, i32 2, i32 %call1902, i8* %1084, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3122, i32 %1085)
  br label %if.end.1916

if.else.1904:                                     ; preds = %if.then.1890
  %1086 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %cmp1905 = icmp ne %struct.address* %1086, null
  br i1 %cmp1905, label %land.lhs.true.1907, label %if.end.1915

land.lhs.true.1907:                               ; preds = %if.else.1904
  %1087 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_status1908 = getelementptr inbounds %struct.address, %struct.address* %1087, i32 0, i32 17
  %1088 = load i8*, i8** %q_status1908, align 8, !tbaa !67
  %cmp1909 = icmp ne i8* %1088, null
  br i1 %cmp1909, label %if.then.1911, label %if.end.1915

if.then.1911:                                     ; preds = %land.lhs.true.1907
  %1089 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1912 = getelementptr inbounds %struct.envelope, %struct.envelope* %1089, i32 0, i32 46
  %call1913 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8** null)
  %1090 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_status1914 = getelementptr inbounds %struct.address, %struct.address* %1090, i32 0, i32 17
  %1091 = load i8*, i8** %q_status1914, align 8, !tbaa !67
  %1092 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1912, i32 2, i32 %call1913, i8* %1091, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3126, i32 %1092)
  br label %if.end.1915

if.end.1915:                                      ; preds = %if.then.1911, %land.lhs.true.1907, %if.else.1904
  br label %if.end.1916

if.end.1916:                                      ; preds = %if.end.1915, %if.then.1900
  %q_user1917 = getelementptr inbounds %struct.address, %struct.address* %addr_st, i32 0, i32 1
  %1093 = load i8*, i8** %q_user1917, align 8, !tbaa !65
  %cmp1918 = icmp ne i8* %1093, null
  br i1 %cmp1918, label %if.then.1920, label %if.else.1924

if.then.1920:                                     ; preds = %if.end.1916
  %1094 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1921 = getelementptr inbounds %struct.envelope, %struct.envelope* %1094, i32 0, i32 46
  %call1922 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8** null)
  %q_user1923 = getelementptr inbounds %struct.address, %struct.address* %addr_st, i32 0, i32 1
  %1095 = load i8*, i8** %q_user1923, align 8, !tbaa !65
  %1096 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1921, i32 2, i32 %call1922, i8* %1095, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3131, i32 %1096)
  br label %if.end.1936

if.else.1924:                                     ; preds = %if.end.1916
  %1097 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %cmp1925 = icmp ne %struct.address* %1097, null
  br i1 %cmp1925, label %land.lhs.true.1927, label %if.end.1935

land.lhs.true.1927:                               ; preds = %if.else.1924
  %1098 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_rstatus1928 = getelementptr inbounds %struct.address, %struct.address* %1098, i32 0, i32 18
  %1099 = load i8*, i8** %q_rstatus1928, align 8, !tbaa !68
  %cmp1929 = icmp ne i8* %1099, null
  br i1 %cmp1929, label %if.then.1931, label %if.end.1935

if.then.1931:                                     ; preds = %land.lhs.true.1927
  %1100 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1932 = getelementptr inbounds %struct.envelope, %struct.envelope* %1100, i32 0, i32 46
  %call1933 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8** null)
  %1101 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_rstatus1934 = getelementptr inbounds %struct.address, %struct.address* %1101, i32 0, i32 18
  %1102 = load i8*, i8** %q_rstatus1934, align 8, !tbaa !68
  %1103 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1932, i32 2, i32 %call1933, i8* %1102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3135, i32 %1103)
  br label %if.end.1935

if.end.1935:                                      ; preds = %if.then.1931, %land.lhs.true.1927, %if.else.1924
  br label %if.end.1936

if.end.1936:                                      ; preds = %if.end.1935, %if.then.1920
  %arraydecay1937 = getelementptr inbounds [20 x i8*], [20 x i8*]* %args, i32 0, i32 0
  %1104 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1938 = call i8* @milter_envrcpt(i8** %arraydecay1937, %struct.envelope* %1104, i8* %state1892, i32 1)
  store i8* %call1938, i8** %response1894, align 8, !tbaa !1
  store volatile i32 1, i32* %milter_cmd_done, align 4, !tbaa !5
  %1105 = bitcast i32* %savelogusrerrs1940 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1105) #1
  %1106 = load i32, i32* @LogUsrErrs, align 4, !tbaa !5
  store i32 %1106, i32* %savelogusrerrs1940, align 4, !tbaa !5
  store volatile i32 1, i32* %milter_cmd_fail, align 4, !tbaa !5
  %1107 = load i8, i8* %state1892, align 1, !tbaa !7
  %conv1941 = sext i8 %1107 to i32
  switch i32 %conv1941, label %sw.default.1992 [
    i32 52, label %sw.bb.1942
    i32 121, label %sw.bb.1952
    i32 114, label %sw.bb.1972
    i32 100, label %sw.bb.1978
    i32 116, label %sw.bb.1986
  ]

sw.bb.1942:                                       ; preds = %if.end.1936
  %1108 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1943 = icmp sgt i32 %1108, 3
  br i1 %cmp1943, label %if.then.1945, label %if.end.1947

if.then.1945:                                     ; preds = %sw.bb.1942
  %1109 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1946 = getelementptr inbounds %struct.envelope, %struct.envelope* %1109, i32 0, i32 25
  %1110 = load i8*, i8** %e_id1946, align 8, !tbaa !29
  %1111 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %1111)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1947

if.end.1947:                                      ; preds = %if.then.1945, %sw.bb.1942
  %1112 = bitcast i32* %tsave1949 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1112) #1
  %1113 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  store i32 %1113, i32* %tsave1949, align 4, !tbaa !5
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i32 0, i32 0))
  %1114 = load i32, i32* %tsave1949, align 4, !tbaa !5
  store i32 %1114, i32* @QuickAbort, align 4, !tbaa !5
  %1115 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue1950 = getelementptr inbounds %struct.envelope, %struct.envelope* %1115, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue1950, align 8, !tbaa !30
  store i32 2, i32* %cleanup.dest.slot
  %1116 = bitcast i32* %tsave1949 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1116) #1
  br label %cleanup.1998

sw.bb.1952:                                       ; preds = %if.end.1936
  %1117 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1953 = icmp sgt i32 %1117, 3
  br i1 %cmp1953, label %if.then.1955, label %if.end.1957

if.then.1955:                                     ; preds = %sw.bb.1952
  %1118 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1956 = getelementptr inbounds %struct.envelope, %struct.envelope* %1118, i32 0, i32 25
  %1119 = load i8*, i8** %e_id1956, align 8, !tbaa !29
  %1120 = load i8*, i8** %addr, align 8, !tbaa !1
  %1121 = load i8*, i8** %response1894, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %1120, i8* %1121)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1957

if.end.1957:                                      ; preds = %if.then.1955, %sw.bb.1952
  %1122 = load i8*, i8** %response1894, align 8, !tbaa !1
  %call1958 = call i32 @strncmp(i8* %1122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #11
  %cmp1959 = icmp eq i32 %call1958, 0
  br i1 %cmp1959, label %if.then.1965, label %lor.lhs.false.1961

lor.lhs.false.1961:                               ; preds = %if.end.1957
  %1123 = load i8*, i8** %response1894, align 8, !tbaa !1
  %call1962 = call i32 @strncmp(i8* %1123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4) #11
  %cmp1963 = icmp eq i32 %call1962, 0
  br i1 %cmp1963, label %if.then.1965, label %if.else.1970

if.then.1965:                                     ; preds = %lor.lhs.false.1961, %if.end.1957
  %1124 = bitcast i32* %tsave1967 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1124) #1
  %1125 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  store i32 %1125, i32* %tsave1967, align 4, !tbaa !5
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  %1126 = load i8*, i8** %response1894, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %1126)
  %1127 = load i32, i32* %tsave1967, align 4, !tbaa !5
  store i32 %1127, i32* @QuickAbort, align 4, !tbaa !5
  %1128 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue1968 = getelementptr inbounds %struct.envelope, %struct.envelope* %1128, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue1968, align 8, !tbaa !30
  store i32 2, i32* %cleanup.dest.slot
  %1129 = bitcast i32* %tsave1967 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1129) #1
  br label %cleanup.1998

if.else.1970:                                     ; preds = %lor.lhs.false.1961
  %1130 = load i8*, i8** %response1894, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %1130)
  br label %if.end.1971

if.end.1971:                                      ; preds = %if.else.1970
  br label %sw.epilog.1993

sw.bb.1972:                                       ; preds = %if.end.1936
  %1131 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1973 = icmp sgt i32 %1131, 3
  br i1 %cmp1973, label %if.then.1975, label %if.end.1977

if.then.1975:                                     ; preds = %sw.bb.1972
  %1132 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1976 = getelementptr inbounds %struct.envelope, %struct.envelope* %1132, i32 0, i32 25
  %1133 = load i8*, i8** %e_id1976, align 8, !tbaa !29
  %1134 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1133, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %1134)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1977

if.end.1977:                                      ; preds = %if.then.1975, %sw.bb.1972
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i32 0, i32 0))
  br label %sw.epilog.1993

sw.bb.1978:                                       ; preds = %if.end.1936
  %1135 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1979 = icmp sgt i32 %1135, 3
  br i1 %cmp1979, label %if.then.1981, label %if.end.1983

if.then.1981:                                     ; preds = %sw.bb.1978
  %1136 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1982 = getelementptr inbounds %struct.envelope, %struct.envelope* %1136, i32 0, i32 25
  %1137 = load i8*, i8** %e_id1982, align 8, !tbaa !29
  %1138 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %1138)
  br label %if.end.1983

if.end.1983:                                      ; preds = %if.then.1981, %sw.bb.1978
  %1139 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1984 = getelementptr inbounds %struct.envelope, %struct.envelope* %1139, i32 0, i32 11
  %1140 = load i64, i64* %e_flags1984, align 8, !tbaa !26
  %or1985 = or i64 %1140, 16777216
  store i64 %or1985, i64* %e_flags1984, align 8, !tbaa !26
  store volatile i32 0, i32* %milter_cmd_fail, align 4, !tbaa !5
  br label %sw.epilog.1993

sw.bb.1986:                                       ; preds = %if.end.1936
  %1141 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp1987 = icmp sgt i32 %1141, 3
  br i1 %cmp1987, label %if.then.1989, label %if.end.1991

if.then.1989:                                     ; preds = %sw.bb.1986
  %1142 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1990 = getelementptr inbounds %struct.envelope, %struct.envelope* %1142, i32 0, i32 25
  %1143 = load i8*, i8** %e_id1990, align 8, !tbaa !29
  %1144 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* %1144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.1991

if.end.1991:                                      ; preds = %if.then.1989, %sw.bb.1986
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  br label %sw.epilog.1993

sw.default.1992:                                  ; preds = %if.end.1936
  store volatile i32 0, i32* %milter_cmd_fail, align 4, !tbaa !5
  br label %sw.epilog.1993

sw.epilog.1993:                                   ; preds = %sw.default.1992, %if.end.1991, %if.end.1983, %if.end.1977, %if.end.1971
  %1145 = load i32, i32* %savelogusrerrs1940, align 4, !tbaa !5
  store i32 %1145, i32* @LogUsrErrs, align 4, !tbaa !5
  %1146 = load i8*, i8** %response1894, align 8, !tbaa !1
  %cmp1994 = icmp ne i8* %1146, null
  br i1 %cmp1994, label %if.then.1996, label %if.end.1997

if.then.1996:                                     ; preds = %sw.epilog.1993
  %1147 = load i8*, i8** %response1894, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %1147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3140)
  br label %if.end.1997

if.end.1997:                                      ; preds = %if.then.1996, %sw.epilog.1993
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1998

cleanup.1998:                                     ; preds = %if.end.1997, %if.then.1965, %if.end.1947
  %1148 = bitcast i32* %savelogusrerrs1940 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1148) #1
  %cleanup.dest.1999 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1999, label %cleanup.2007 [
    i32 0, label %cleanup.cont.2000
  ]

cleanup.cont.2000:                                ; preds = %cleanup.1998
  %1149 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro2001 = getelementptr inbounds %struct.envelope, %struct.envelope* %1149, i32 0, i32 46
  %call2002 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8** null)
  %1150 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro2001, i32 2, i32 %call2002, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3142, i32 %1150)
  %1151 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro2003 = getelementptr inbounds %struct.envelope, %struct.envelope* %1151, i32 0, i32 46
  %call2004 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8** null)
  %1152 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro2003, i32 2, i32 %call2004, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3144, i32 %1152)
  %1153 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro2005 = getelementptr inbounds %struct.envelope, %struct.envelope* %1153, i32 0, i32 46
  %call2006 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8** null)
  %1154 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro2005, i32 2, i32 %call2006, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3146, i32 %1154)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2007

cleanup.2007:                                     ; preds = %cleanup.cont.2000, %cleanup.1998
  %1155 = bitcast i8** %response1894 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1155) #1
  call void @llvm.lifetime.end(i64 1, i8* %state1892) #1
  %cleanup.dest.2009 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2009, label %cleanup.2035 [
    i32 0, label %cleanup.cont.2010
  ]

cleanup.cont.2010:                                ; preds = %cleanup.2007
  br label %if.end.2011

if.end.2011:                                      ; preds = %cleanup.cont.2010, %land.lhs.true.1888, %land.lhs.true.1886, %land.lhs.true.1881, %land.lhs.true.1878, %do.end.1875
  %sm_milterlist2012 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 4
  %1156 = load i32, i32* %sm_milterlist2012, align 4, !tbaa !16
  %tobool2013 = icmp ne i32 %1156, 0
  br i1 %tobool2013, label %land.lhs.true.2014, label %if.end.2034

land.lhs.true.2014:                               ; preds = %if.end.2011
  %sm_milterize2015 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  %1157 = load i32, i32* %sm_milterize2015, align 4, !tbaa !15
  %tobool2016 = icmp ne i32 %1157, 0
  br i1 %tobool2016, label %land.lhs.true.2017, label %if.end.2034

land.lhs.true.2017:                               ; preds = %land.lhs.true.2014
  %1158 = load volatile i32, i32* %milter_rcpt_added, align 4, !tbaa !5
  %tobool2018 = icmp ne i32 %1158, 0
  br i1 %tobool2018, label %land.lhs.true.2019, label %if.end.2034

land.lhs.true.2019:                               ; preds = %land.lhs.true.2017
  %1159 = load volatile i32, i32* %milter_cmd_done, align 4, !tbaa !5
  %tobool2020 = icmp ne i32 %1159, 0
  br i1 %tobool2020, label %land.lhs.true.2021, label %if.end.2034

land.lhs.true.2021:                               ; preds = %land.lhs.true.2019
  %1160 = load volatile i32, i32* %milter_cmd_fail, align 4, !tbaa !5
  %tobool2022 = icmp ne i32 %1160, 0
  br i1 %tobool2022, label %if.then.2023, label %if.end.2034

if.then.2023:                                     ; preds = %land.lhs.true.2021
  %1161 = load i8*, i8** %addr, align 8, !tbaa !1
  %1162 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue2024 = getelementptr inbounds %struct.envelope, %struct.envelope* %1162, i32 0, i32 7
  %1163 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2025 = call i32 @removefromlist(i8* %1161, %struct.address** %e_sendqueue2024, %struct.envelope* %1163)
  store volatile i32 0, i32* %milter_cmd_fail, align 4, !tbaa !5
  %sm_e_nrcpts_orig2026 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 6
  %1164 = load i32, i32* %sm_e_nrcpts_orig2026, align 4, !tbaa !60
  %1165 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_nrcpts2027 = getelementptr inbounds %struct.envelope, %struct.envelope* %1165, i32 0, i32 12
  %1166 = load i32, i32* %e_nrcpts2027, align 4, !tbaa !59
  %cmp2028 = icmp ult i32 %1164, %1166
  br i1 %cmp2028, label %if.then.2030, label %if.end.2033

if.then.2030:                                     ; preds = %if.then.2023
  %sm_e_nrcpts_orig2031 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 6
  %1167 = load i32, i32* %sm_e_nrcpts_orig2031, align 4, !tbaa !60
  %1168 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_nrcpts2032 = getelementptr inbounds %struct.envelope, %struct.envelope* %1168, i32 0, i32 12
  store i32 %1167, i32* %e_nrcpts2032, align 4, !tbaa !59
  br label %if.end.2033

if.end.2033:                                      ; preds = %if.then.2030, %if.then.2023
  br label %if.end.2034

if.end.2034:                                      ; preds = %if.end.2033, %land.lhs.true.2021, %land.lhs.true.2019, %land.lhs.true.2017, %land.lhs.true.2014, %if.end.2011
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2035

cleanup.2035:                                     ; preds = %if.end.2034, %cleanup.2007
  %1169 = bitcast %struct.sm_exc** %exc1851 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1169) #1
  %cleanup.dest.2036 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2036, label %cleanup.2072 [
    i32 0, label %cleanup.cont.2037
  ]

cleanup.cont.2037:                                ; preds = %cleanup.2035
  br label %if.end.2038

if.end.2038:                                      ; preds = %cleanup.cont.2037, %if.end.1840
  br label %do.cond.2039

do.cond.2039:                                     ; preds = %if.end.2038
  br label %do.end.2040

do.end.2040:                                      ; preds = %do.cond.2039, %if.then.1828
  %eh_state2041 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 3
  %1170 = load i32, i32* %eh_state2041, align 4, !tbaa !42
  %cmp2042 = icmp eq i32 %1170, 2
  br i1 %cmp2042, label %if.then.2044, label %if.else.2057

if.then.2044:                                     ; preds = %do.end.2040
  %1171 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp2045 = icmp eq %struct.sm_exc_handler* %1171, %_h1499
  br i1 %cmp2045, label %lor.end.2048, label %lor.rhs.2047

lor.rhs.2047:                                     ; preds = %if.then.2044
  call void @sm_abort_at(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3159, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.2048

lor.end.2048:                                     ; preds = %1172, %if.then.2044
  %1173 = phi i1 [ true, %if.then.2044 ], [ false, %1172 ]
  %lor.ext2049 = zext i1 %1173 to i32
  %eh_parent2050 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 2
  %1174 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent2050, align 8, !tbaa !41
  store %struct.sm_exc_handler* %1174, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_value2051 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 0
  %1175 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2051, align 8, !tbaa !39
  %cmp2052 = icmp ne %struct.sm_exc* %1175, null
  br i1 %cmp2052, label %if.then.2054, label %if.end.2056

if.then.2054:                                     ; preds = %lor.end.2048
  %eh_value2055 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 0
  %1176 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2055, align 8, !tbaa !39
  call void @sm_exc_raise_x(%struct.sm_exc* %1176) #12
  unreachable

if.end.2056:                                      ; preds = %lor.end.2048
  br label %if.end.2071

if.else.2057:                                     ; preds = %do.end.2040
  %eh_state2058 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 3
  %1177 = load i32, i32* %eh_state2058, align 4, !tbaa !42
  %cmp2059 = icmp eq i32 %1177, 0
  br i1 %cmp2059, label %if.then.2061, label %if.else.2068

if.then.2061:                                     ; preds = %if.else.2057
  %eh_value2062 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 0
  %1178 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2062, align 8, !tbaa !39
  %cmp2063 = icmp ne %struct.sm_exc* %1178, null
  br i1 %cmp2063, label %if.then.2065, label %if.end.2067

if.then.2065:                                     ; preds = %if.then.2061
  %eh_value2066 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 0
  %1179 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2066, align 8, !tbaa !39
  call void @sm_exc_raise_x(%struct.sm_exc* %1179) #12
  unreachable

if.end.2067:                                      ; preds = %if.then.2061
  br label %if.end.2070

if.else.2068:                                     ; preds = %if.else.2057
  %eh_value2069 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h1499, i32 0, i32 0
  %1180 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2069, align 8, !tbaa !39
  call void @sm_exc_free(%struct.sm_exc* %1180)
  br label %if.end.2070

if.end.2070:                                      ; preds = %if.else.2068, %if.end.2067
  br label %if.end.2071

if.end.2071:                                      ; preds = %if.end.2070, %if.end.2056
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2072

cleanup.2072:                                     ; preds = %if.end.2071, %cleanup.2035, %cleanup.1764
  %1181 = bitcast %struct.sm_exc_handler* %_h1499 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %1181) #1
  %cleanup.dest.2073 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2073, label %cleanup.3051 [
    i32 0, label %cleanup.cont.2074
    i32 2, label %doquit
  ]

cleanup.cont.2074:                                ; preds = %cleanup.2072
  br label %sw.epilog.2987

sw.bb.2075:                                       ; preds = %if.end.690
  %1182 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2076 = icmp sgt i32 %1182, 0
  br i1 %cmp2076, label %land.lhs.true.2078, label %if.end.2099

land.lhs.true.2078:                               ; preds = %sw.bb.2075
  %call2079 = call i32 @getla()
  store i32 %call2079, i32* @CurrentLA, align 4, !tbaa !5
  %1183 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2080 = icmp sge i32 %call2079, %1183
  br i1 %cmp2080, label %if.then.2082, label %if.end.2099

if.then.2082:                                     ; preds = %land.lhs.true.2078
  %1184 = bitcast i64* %dnow2084 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1184) #1
  %1185 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1186 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2085 = call i8* @qid_printname(%struct.envelope* %1186)
  %1187 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1188 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1185, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call2085, i8* %1187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), i32 %1188)
  %1189 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2086 = icmp sgt i32 %1189, 8
  br i1 %cmp2086, label %land.lhs.true.2088, label %if.end.2095

land.lhs.true.2088:                               ; preds = %if.then.2082
  %call2089 = call i64 @curtime()
  store i64 %call2089, i64* %dnow2084, align 8, !tbaa !10
  %1190 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp2090 = icmp sgt i64 %call2089, %1190
  br i1 %cmp2090, label %if.then.2092, label %if.end.2095

if.then.2092:                                     ; preds = %land.lhs.true.2088
  %1191 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2093 = getelementptr inbounds %struct.envelope, %struct.envelope* %1191, i32 0, i32 25
  %1192 = load i8*, i8** %e_id2093, align 8, !tbaa !29
  %1193 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %1194 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), i32 %1193, i32 %1194)
  %1195 = load i64, i64* %dnow2084, align 8, !tbaa !10
  %add2094 = add nsw i64 %1195, 15
  store volatile i64 %add2094, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.2095

if.end.2095:                                      ; preds = %if.then.2092, %land.lhs.true.2088, %if.then.2082
  %call2096 = call i32 @sleep(i32 1)
  %1196 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1197 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2097 = call i8* @qid_printname(%struct.envelope* %1197)
  %1198 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2098 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1196, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call2097, i8* %1198, i8* %arraydecay2098)
  %1199 = bitcast i64* %dnow2084 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1199) #1
  br label %if.end.2099

if.end.2099:                                      ; preds = %if.end.2095, %land.lhs.true.2078, %sw.bb.2075
  %1200 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2100 = call i32 @smtp_data(%struct.SMTP_T* %smtp, %struct.envelope* %1200)
  %tobool2101 = icmp ne i32 %call2100, 0
  br i1 %tobool2101, label %if.end.2103, label %if.then.2102

if.then.2102:                                     ; preds = %if.end.2099
  br label %doquit

if.end.2103:                                      ; preds = %if.end.2099
  br label %sw.epilog.2987

sw.bb.2104:                                       ; preds = %if.end.690
  %1201 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 94), align 1, !tbaa !7
  %conv2105 = zext i8 %1201 to i32
  %cmp2106 = icmp sge i32 %conv2105, 100
  br i1 %cmp2106, label %land.lhs.true.2108, label %if.else.2111

land.lhs.true.2108:                               ; preds = %sw.bb.2104
  %1202 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool2109 = icmp ne i32 %1202, 0
  br i1 %tobool2109, label %if.else.2111, label %if.then.2110

if.then.2110:                                     ; preds = %land.lhs.true.2108
  call void (i8*, ...) @message(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.136, i32 0, i32 0))
  br label %if.end.2112

if.else.2111:                                     ; preds = %land.lhs.true.2108, %sw.bb.2104
  call void (i8*, ...) @message(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.137, i32 0, i32 0))
  br label %if.end.2112

if.end.2112:                                      ; preds = %if.else.2111, %if.then.2110
  br label %do.body.2113

do.body.2113:                                     ; preds = %if.end.2112
  %1203 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_abort(%struct.envelope* %1203)
  %sm_nrcpts2114 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 1
  %1204 = load i32, i32* %sm_nrcpts2114, align 4, !tbaa !12
  %cmp2115 = icmp ugt i32 %1204, 0
  br i1 %cmp2115, label %if.then.2117, label %if.end.2122

if.then.2117:                                     ; preds = %do.body.2113
  %1205 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %arraydecay2118 = getelementptr inbounds [2048 x i8], [2048 x i8]* %cmdbuf, i32 0, i32 0
  call void @logundelrcpts(%struct.envelope* %1205, i8* %arraydecay2118, i32 10, i32 0)
  %sm_nrcpts2119 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 1
  store i32 0, i32* %sm_nrcpts2119, align 4, !tbaa !12
  %1206 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro2120 = getelementptr inbounds %struct.envelope, %struct.envelope* %1206, i32 0, i32 46
  %call2121 = call i32 @macid_parse(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8** null)
  %1207 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro2120, i32 2, i32 %call2121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3173, i32 %1207)
  br label %if.end.2122

if.end.2122:                                      ; preds = %if.then.2117, %do.body.2113
  %1208 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue2123 = getelementptr inbounds %struct.envelope, %struct.envelope* %1208, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue2123, align 8, !tbaa !30
  %1209 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2124 = getelementptr inbounds %struct.envelope, %struct.envelope* %1209, i32 0, i32 11
  %1210 = load i64, i64* %e_flags2124, align 8, !tbaa !26
  %or2125 = or i64 %1210, 8
  store i64 %or2125, i64* %e_flags2124, align 8, !tbaa !26
  %1211 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 92), align 1, !tbaa !7
  %conv2126 = zext i8 %1211 to i32
  %cmp2127 = icmp sge i32 %conv2126, 2
  br i1 %cmp2127, label %land.lhs.true.2129, label %if.end.2137

land.lhs.true.2129:                               ; preds = %if.end.2122
  %1212 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool2130 = icmp ne i32 %1212, 0
  br i1 %tobool2130, label %if.end.2137, label %if.then.2131

if.then.2131:                                     ; preds = %land.lhs.true.2129
  %1213 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2132 = getelementptr inbounds %struct.envelope, %struct.envelope* %1213, i32 0, i32 25
  %1214 = load i8*, i8** %e_id2132, align 8, !tbaa !29
  %1215 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2133 = getelementptr inbounds %struct.envelope, %struct.envelope* %1215, i32 0, i32 11
  %1216 = load i64, i64* %e_flags2133, align 8, !tbaa !26
  %and2134 = and i64 %1216, 32768
  %cmp2135 = icmp ne i64 %and2134, 0
  %conv2136 = zext i1 %cmp2135 to i32
  %1217 = load i32, i32* @LogLevel, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.69, i32 0, i32 0), i8* %1214, i32 %conv2136, i32 %1217)
  br label %if.end.2137

if.end.2137:                                      ; preds = %if.then.2131, %land.lhs.true.2129, %if.end.2122
  %1218 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2138 = icmp sgt i32 %1218, 4
  br i1 %cmp2138, label %land.lhs.true.2140, label %if.end.2146

land.lhs.true.2140:                               ; preds = %if.end.2137
  %1219 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2141 = getelementptr inbounds %struct.envelope, %struct.envelope* %1219, i32 0, i32 11
  %1220 = load i64, i64* %e_flags2141, align 8, !tbaa !26
  %and2142 = and i64 %1220, 32768
  %cmp2143 = icmp ne i64 %and2142, 0
  br i1 %cmp2143, label %if.then.2145, label %if.end.2146

if.then.2145:                                     ; preds = %land.lhs.true.2140
  %1221 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @logsender(%struct.envelope* %1221, i8* null)
  br label %if.end.2146

if.end.2146:                                      ; preds = %if.then.2145, %land.lhs.true.2140, %if.end.2137
  %1222 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2147 = getelementptr inbounds %struct.envelope, %struct.envelope* %1222, i32 0, i32 11
  %1223 = load i64, i64* %e_flags2147, align 8, !tbaa !26
  %and2148 = and i64 %1223, -32769
  store i64 %and2148, i64* %e_flags2147, align 8, !tbaa !26
  %sm_gotmail2149 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 0
  store i32 0, i32* %sm_gotmail2149, align 4, !tbaa !38
  store i32 1, i32* @SuprErrs, align 4, !tbaa !5
  %1224 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2150 = call i32 @dropenvelope(%struct.envelope* %1224, i32 1, i32 0)
  %1225 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool2151 = getelementptr inbounds %struct.envelope, %struct.envelope* %1225, i32 0, i32 52
  %1226 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool2151, align 8, !tbaa !19
  call void @sm_rpool_free(%struct.SM_RPOOL_T* %1226)
  %1227 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1228 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %call2152 = call %struct.SM_RPOOL_T* @sm_rpool_new_x(%struct.SM_RPOOL_T* null)
  %call2153 = call %struct.envelope* @newenvelope(%struct.envelope* %1227, %struct.envelope* %1228, %struct.SM_RPOOL_T* %call2152)
  store volatile %struct.envelope* %call2153, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1229 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.envelope* %1229, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %1230 = load volatile i32, i32* %features, align 4, !tbaa !5
  %1231 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_features2154 = getelementptr inbounds %struct.envelope, %struct.envelope* %1231, i32 0, i32 53
  store i32 %1230, i32* %e_features2154, align 4, !tbaa !28
  %sm_discard2155 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 2
  %1232 = load i32, i32* %sm_discard2155, align 4, !tbaa !27
  %tobool2156 = icmp ne i32 %1232, 0
  br i1 %tobool2156, label %if.then.2157, label %if.end.2160

if.then.2157:                                     ; preds = %if.end.2146
  %1233 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2158 = getelementptr inbounds %struct.envelope, %struct.envelope* %1233, i32 0, i32 11
  %1234 = load i64, i64* %e_flags2158, align 8, !tbaa !26
  %or2159 = or i64 %1234, 16777216
  store i64 %or2159, i64* %e_flags2158, align 8, !tbaa !26
  br label %if.end.2160

if.end.2160:                                      ; preds = %if.then.2157, %if.end.2146
  %sm_quarmsg2161 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 7
  %1235 = load i8*, i8** %sm_quarmsg2161, align 8, !tbaa !37
  %cmp2162 = icmp eq i8* %1235, null
  br i1 %cmp2162, label %if.then.2164, label %if.else.2168

if.then.2164:                                     ; preds = %if.end.2160
  %1236 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg2165 = getelementptr inbounds %struct.envelope, %struct.envelope* %1236, i32 0, i32 36
  store i8* null, i8** %e_quarmsg2165, align 8, !tbaa !36
  %1237 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro2166 = getelementptr inbounds %struct.envelope, %struct.envelope* %1237, i32 0, i32 46
  %call2167 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i8** null)
  %1238 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro2166, i32 2, i32 %call2167, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3173, i32 %1238)
  br label %if.end.2176

if.else.2168:                                     ; preds = %if.end.2160
  %1239 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool2169 = getelementptr inbounds %struct.envelope, %struct.envelope* %1239, i32 0, i32 52
  %1240 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool2169, align 8, !tbaa !19
  %sm_quarmsg2170 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 7
  %1241 = load i8*, i8** %sm_quarmsg2170, align 8, !tbaa !37
  %call2171 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %1240, i8* %1241)
  %1242 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg2172 = getelementptr inbounds %struct.envelope, %struct.envelope* %1242, i32 0, i32 36
  store i8* %call2171, i8** %e_quarmsg2172, align 8, !tbaa !36
  %1243 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro2173 = getelementptr inbounds %struct.envelope, %struct.envelope* %1243, i32 0, i32 46
  %call2174 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i8** null)
  %1244 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg2175 = getelementptr inbounds %struct.envelope, %struct.envelope* %1244, i32 0, i32 36
  %1245 = load i8*, i8** %e_quarmsg2175, align 8, !tbaa !36
  %1246 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro2173, i32 2, i32 %call2174, i8* %1245, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3173, i32 %1246)
  br label %if.end.2176

if.end.2176:                                      ; preds = %if.else.2168, %if.then.2164
  br label %do.cond.2177

do.cond.2177:                                     ; preds = %if.end.2176
  br label %do.end.2178

do.end.2178:                                      ; preds = %do.cond.2177
  br label %sw.epilog.2987

sw.bb.2179:                                       ; preds = %if.end.690, %if.end.690
  %1247 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_code2180 = getelementptr inbounds %struct.cmd, %struct.cmd* %1247, i32 0, i32 1
  %1248 = load i32, i32* %cmd_code2180, align 4, !tbaa !52
  %cmp2181 = icmp eq i32 %1248, 5
  %conv2182 = zext i1 %cmp2181 to i32
  store i32 %conv2182, i32* %vrfy, align 4, !tbaa !5
  %1249 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2183 = icmp sgt i32 %1249, 0
  br i1 %cmp2183, label %land.lhs.true.2185, label %if.end.2210

land.lhs.true.2185:                               ; preds = %sw.bb.2179
  %call2186 = call i32 @getla()
  store i32 %call2186, i32* @CurrentLA, align 4, !tbaa !5
  %1250 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2187 = icmp sge i32 %call2186, %1250
  br i1 %cmp2187, label %if.then.2189, label %if.end.2210

if.then.2189:                                     ; preds = %land.lhs.true.2185
  %1251 = bitcast i64* %dnow2191 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1251) #1
  %1252 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1253 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2192 = call i8* @qid_printname(%struct.envelope* %1253)
  %1254 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1255 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2193 = icmp ne i32 %1255, 0
  %cond2194 = select i1 %tobool2193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0)
  %1256 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1252, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call2192, i8* %1254, i8* %cond2194, i32 %1256)
  %1257 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2195 = icmp sgt i32 %1257, 8
  br i1 %cmp2195, label %land.lhs.true.2197, label %if.end.2206

land.lhs.true.2197:                               ; preds = %if.then.2189
  %call2198 = call i64 @curtime()
  store i64 %call2198, i64* %dnow2191, align 8, !tbaa !10
  %1258 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp2199 = icmp sgt i64 %call2198, %1258
  br i1 %cmp2199, label %if.then.2201, label %if.end.2206

if.then.2201:                                     ; preds = %land.lhs.true.2197
  %1259 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2202 = getelementptr inbounds %struct.envelope, %struct.envelope* %1259, i32 0, i32 25
  %1260 = load i8*, i8** %e_id2202, align 8, !tbaa !29
  %1261 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2203 = icmp ne i32 %1261, 0
  %cond2204 = select i1 %tobool2203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0)
  %1262 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %1263 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1260, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* %cond2204, i32 %1262, i32 %1263)
  %1264 = load i64, i64* %dnow2191, align 8, !tbaa !10
  %add2205 = add nsw i64 %1264, 15
  store volatile i64 %add2205, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.2206

if.end.2206:                                      ; preds = %if.then.2201, %land.lhs.true.2197, %if.then.2189
  %call2207 = call i32 @sleep(i32 1)
  %1265 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1266 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2208 = call i8* @qid_printname(%struct.envelope* %1266)
  %1267 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2209 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1265, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call2208, i8* %1267, i8* %arraydecay2209)
  %1268 = bitcast i64* %dnow2191 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1268) #1
  br label %if.end.2210

if.end.2210:                                      ; preds = %if.end.2206, %land.lhs.true.2185, %sw.bb.2179
  %1269 = load volatile i32, i32* %tempfail, align 4, !tbaa !5
  %tobool2211 = icmp ne i32 %1269, 0
  br i1 %tobool2211, label %if.then.2212, label %if.end.2220

if.then.2212:                                     ; preds = %if.end.2210
  %1270 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2213 = icmp sgt i32 %1270, 9
  br i1 %cmp2213, label %if.then.2215, label %if.end.2219

if.then.2215:                                     ; preds = %if.then.2212
  %1271 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2216 = getelementptr inbounds %struct.envelope, %struct.envelope* %1271, i32 0, i32 25
  %1272 = load i8*, i8** %e_id2216, align 8, !tbaa !29
  %1273 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2217 = icmp ne i32 %1273, 0
  %cond2218 = select i1 %tobool2217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0)
  %1274 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %1275 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1272, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.140, i32 0, i32 0), i8* %cond2218, i8* %1274, i8* %1275)
  br label %if.end.2219

if.end.2219:                                      ; preds = %if.then.2215, %if.then.2212
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.141, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.2220:                                      ; preds = %if.end.2210
  %1276 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2221 = icmp ne i32 %1276, 0
  %cond2222 = select i1 %tobool2221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0)
  %1277 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2223 = call i64 @checksmtpattack(i32* %n_verifies, i32 6, i32 0, i8* %cond2222, %struct.envelope* %1277)
  store volatile i64 %call2223, i64* %wt, align 8, !tbaa !10
  br label %do.body.2224

do.body.2224:                                     ; preds = %if.end.2220
  %1278 = load volatile i64, i64* %wt, align 8, !tbaa !10
  %cmp2225 = icmp eq i64 %1278, -1
  br i1 %cmp2225, label %if.then.2227, label %if.end.2228

if.then.2227:                                     ; preds = %do.body.2224
  br label %stopattack

if.end.2228:                                      ; preds = %do.body.2224
  br label %do.cond.2229

do.cond.2229:                                     ; preds = %if.end.2228
  br label %do.end.2230

do.end.2230:                                      ; preds = %do.cond.2229
  %call2231 = call i64 @curtime()
  store volatile i64 %call2231, i64* %previous, align 8, !tbaa !10
  %1279 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2232 = icmp ne i32 %1279, 0
  br i1 %tobool2232, label %land.lhs.true.2233, label %lor.lhs.false.2237

land.lhs.true.2233:                               ; preds = %do.end.2230
  %1280 = load i64, i64* @PrivacyFlags, align 8, !tbaa !10
  %and2234 = and i64 %1280, 16
  %cmp2235 = icmp ne i64 %and2234, 0
  br i1 %cmp2235, label %if.then.2243, label %lor.lhs.false.2237

lor.lhs.false.2237:                               ; preds = %land.lhs.true.2233, %do.end.2230
  %1281 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2238 = icmp ne i32 %1281, 0
  br i1 %tobool2238, label %if.else.2255, label %land.lhs.true.2239

land.lhs.true.2239:                               ; preds = %lor.lhs.false.2237
  %1282 = load volatile i32, i32* %features, align 4, !tbaa !5
  %and2240 = and i32 %1282, 32
  %cmp2241 = icmp ne i32 %and2240, 0
  br i1 %cmp2241, label %if.else.2255, label %if.then.2243

if.then.2243:                                     ; preds = %land.lhs.true.2239, %land.lhs.true.2233
  %1283 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2244 = icmp ne i32 %1283, 0
  br i1 %tobool2244, label %if.then.2245, label %if.else.2246

if.then.2245:                                     ; preds = %if.then.2243
  call void (i8*, ...) @message(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.142, i32 0, i32 0))
  br label %if.end.2247

if.else.2246:                                     ; preds = %if.then.2243
  call void (i8*, ...) @message(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.143, i32 0, i32 0))
  br label %if.end.2247

if.end.2247:                                      ; preds = %if.else.2246, %if.then.2245
  %1284 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2248 = icmp sgt i32 %1284, 5
  br i1 %cmp2248, label %if.then.2250, label %if.end.2254

if.then.2250:                                     ; preds = %if.end.2247
  %1285 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2251 = getelementptr inbounds %struct.envelope, %struct.envelope* %1285, i32 0, i32 25
  %1286 = load i8*, i8** %e_id2251, align 8, !tbaa !29
  %1287 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2252 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %call2253 = call i8* @shortenstring(i8* %arraydecay2252, i64 203)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1286, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.144, i32 0, i32 0), i8* %1287, i8* %call2253)
  br label %if.end.2254

if.end.2254:                                      ; preds = %if.then.2250, %if.end.2247
  br label %sw.epilog.2987

if.else.2255:                                     ; preds = %land.lhs.true.2239, %lor.lhs.false.2237
  %1288 = load volatile i32, i32* %gothello, align 4, !tbaa !5
  %tobool2256 = icmp ne i32 %1288, 0
  br i1 %tobool2256, label %if.end.2265, label %land.lhs.true.2257

land.lhs.true.2257:                               ; preds = %if.else.2255
  %1289 = load i64, i64* @PrivacyFlags, align 8, !tbaa !10
  %1290 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2258 = icmp ne i32 %1290, 0
  %cond2259 = select i1 %tobool2258, i32 4, i32 2
  %conv2260 = sext i32 %cond2259 to i64
  %and2261 = and i64 %1289, %conv2260
  %cmp2262 = icmp ne i64 %and2261, 0
  br i1 %cmp2262, label %if.then.2264, label %if.end.2265

if.then.2264:                                     ; preds = %land.lhs.true.2257
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.145, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.2265:                                      ; preds = %land.lhs.true.2257, %if.else.2255
  br label %if.end.2266

if.end.2266:                                      ; preds = %if.end.2265
  %1291 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp2267 = icmp sgt i32 %1291, 0
  br i1 %cmp2267, label %if.then.2269, label %if.end.2270

if.then.2269:                                     ; preds = %if.end.2266
  br label %sw.epilog.2987

if.end.2270:                                      ; preds = %if.end.2266
  %1292 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2271 = icmp sgt i32 %1292, 5
  br i1 %cmp2271, label %if.then.2273, label %if.end.2277

if.then.2273:                                     ; preds = %if.end.2270
  %1293 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2274 = getelementptr inbounds %struct.envelope, %struct.envelope* %1293, i32 0, i32 25
  %1294 = load i8*, i8** %e_id2274, align 8, !tbaa !29
  %1295 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2275 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %call2276 = call i8* @shortenstring(i8* %arraydecay2275, i64 203)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1294, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0), i8* %1295, i8* %call2276)
  br label %if.end.2277

if.end.2277:                                      ; preds = %if.then.2273, %if.end.2270
  %1296 = bitcast %struct.sm_exc_handler* %_h2279 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %1296) #1
  br label %do.body.2280

do.body.2280:                                     ; preds = %if.end.2277
  %eh_value2281 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 0
  store %struct.sm_exc* null, %struct.sm_exc** %eh_value2281, align 8, !tbaa !39
  %1297 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_parent2282 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 2
  store %struct.sm_exc_handler* %1297, %struct.sm_exc_handler** %eh_parent2282, align 8, !tbaa !41
  %eh_state2283 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 3
  store i32 2, i32* %eh_state2283, align 4, !tbaa !42
  store %struct.sm_exc_handler* %_h2279, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_context2284 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 1
  %arraydecay2285 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context2284, i32 0, i32 0
  %call2286 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay2285, i32 0) #13
  %cmp2287 = icmp eq i32 %call2286, 0
  br i1 %cmp2287, label %if.then.2289, label %if.end.2415

if.then.2289:                                     ; preds = %do.body.2280
  store i32 1, i32* @QuickAbort, align 4, !tbaa !5
  store %struct.address* null, %struct.address** %vrfyqueue, align 8, !tbaa !1
  %1298 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2290 = icmp ne i32 %1298, 0
  br i1 %tobool2290, label %if.then.2291, label %if.end.2294

if.then.2291:                                     ; preds = %if.then.2289
  %1299 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2292 = getelementptr inbounds %struct.envelope, %struct.envelope* %1299, i32 0, i32 11
  %1300 = load i64, i64* %e_flags2292, align 8, !tbaa !26
  %or2293 = or i64 %1300, 512
  store i64 %or2293, i64* %e_flags2292, align 8, !tbaa !26
  br label %if.end.2294

if.end.2294:                                      ; preds = %if.then.2291, %if.then.2289
  br label %while.cond.2295

while.cond.2295:                                  ; preds = %while.body.2313, %if.end.2294
  %1301 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %1302 = load i8, i8* %1301, align 1, !tbaa !7
  %conv2296 = sext i8 %1302 to i32
  %cmp2297 = icmp ne i32 %conv2296, 0
  br i1 %cmp2297, label %land.lhs.true.2299, label %land.end.2312

land.lhs.true.2299:                               ; preds = %while.cond.2295
  %1303 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %1304 = load i8, i8* %1303, align 1, !tbaa !7
  %conv2300 = sext i8 %1304 to i32
  %and2301 = and i32 %conv2300, -128
  %cmp2302 = icmp eq i32 %and2301, 0
  br i1 %cmp2302, label %land.rhs.2304, label %land.end.2312

land.rhs.2304:                                    ; preds = %land.lhs.true.2299
  %1305 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %1306 = load i8, i8* %1305, align 1, !tbaa !7
  %conv2305 = sext i8 %1306 to i32
  %idxprom2306 = sext i32 %conv2305 to i64
  %call2307 = call i16** @__ctype_b_loc() #10
  %1307 = load i16*, i16** %call2307, align 8, !tbaa !1
  %arrayidx2308 = getelementptr inbounds i16, i16* %1307, i64 %idxprom2306
  %1308 = load i16, i16* %arrayidx2308, align 2, !tbaa !8
  %conv2309 = zext i16 %1308 to i32
  %and2310 = and i32 %conv2309, 8192
  %tobool2311 = icmp ne i32 %and2310, 0
  br label %land.end.2312

land.end.2312:                                    ; preds = %land.rhs.2304, %land.lhs.true.2299, %while.cond.2295
  %1309 = phi i1 [ false, %land.lhs.true.2299 ], [ false, %while.cond.2295 ], [ %tobool2311, %land.rhs.2304 ]
  br i1 %1309, label %while.body.2313, label %while.end.2315

while.body.2313:                                  ; preds = %land.end.2312
  %1310 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr2314 = getelementptr inbounds i8, i8* %1310, i32 1
  store volatile i8* %incdec.ptr2314, i8** %p, align 8, !tbaa !1
  br label %while.cond.2295

while.end.2315:                                   ; preds = %land.end.2312
  %1311 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %1312 = load i8, i8* %1311, align 1, !tbaa !7
  %conv2316 = sext i8 %1312 to i32
  %cmp2317 = icmp eq i32 %conv2316, 0
  br i1 %cmp2317, label %if.then.2319, label %if.else.2320

if.then.2319:                                     ; preds = %while.end.2315
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.147, i32 0, i32 0))
  br label %if.end.2332

if.else.2320:                                     ; preds = %while.end.2315
  %1313 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2321 = icmp ne i32 %1313, 0
  %cond2322 = select i1 %tobool2321, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.149, i32 0, i32 0)
  %1314 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %1315 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2323 = call i32 @rscheck(i8* %cond2322, i8* %1314, i8* null, %struct.envelope* %1315, i32 1, i32 3, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %struct.address* null, i8** null)
  %cmp2324 = icmp ne i32 %call2323, 0
  br i1 %cmp2324, label %if.then.2329, label %lor.lhs.false.2326

lor.lhs.false.2326:                               ; preds = %if.else.2320
  %1316 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp2327 = icmp sgt i32 %1316, 0
  br i1 %cmp2327, label %if.then.2329, label %if.end.2330

if.then.2329:                                     ; preds = %lor.lhs.false.2326, %if.else.2320
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #12
  unreachable

if.end.2330:                                      ; preds = %lor.lhs.false.2326
  %1317 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %1318 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2331 = call i32 @sendtolist(i8* %1317, %struct.address* null, %struct.address** %vrfyqueue, i32 0, %struct.envelope* %1318)
  br label %if.end.2332

if.end.2332:                                      ; preds = %if.end.2330, %if.then.2319
  %1319 = load volatile i64, i64* %wt, align 8, !tbaa !10
  %cmp2333 = icmp sgt i64 %1319, 0
  br i1 %cmp2333, label %if.then.2335, label %if.end.2346

if.then.2335:                                     ; preds = %if.end.2332
  %1320 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1320) #1
  %1321 = load volatile i64, i64* %wt, align 8, !tbaa !10
  %call2337 = call i64 @curtime()
  %1322 = load volatile i64, i64* %previous, align 8, !tbaa !10
  %sub2338 = sub nsw i64 %call2337, %1322
  %sub2339 = sub nsw i64 %1321, %sub2338
  store i64 %sub2339, i64* %t, align 8, !tbaa !10
  %1323 = load i64, i64* %t, align 8, !tbaa !10
  %cmp2340 = icmp sgt i64 %1323, 0
  br i1 %cmp2340, label %if.then.2342, label %if.end.2345

if.then.2342:                                     ; preds = %if.then.2335
  %1324 = load i64, i64* %t, align 8, !tbaa !10
  %conv2343 = trunc i64 %1324 to i32
  %call2344 = call i32 @sleep(i32 %conv2343)
  br label %if.end.2345

if.end.2345:                                      ; preds = %if.then.2342, %if.then.2335
  %1325 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1325) #1
  br label %if.end.2346

if.end.2346:                                      ; preds = %if.end.2345, %if.end.2332
  %1326 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp2347 = icmp sgt i32 %1326, 0
  br i1 %cmp2347, label %if.then.2349, label %if.end.2350

if.then.2349:                                     ; preds = %if.end.2346
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #12
  unreachable

if.end.2350:                                      ; preds = %if.end.2346
  %1327 = load %struct.address*, %struct.address** %vrfyqueue, align 8, !tbaa !1
  %cmp2351 = icmp eq %struct.address* %1327, null
  br i1 %cmp2351, label %if.then.2353, label %if.end.2356

if.then.2353:                                     ; preds = %if.end.2350
  %1328 = load i32, i32* %vrfy, align 4, !tbaa !5
  %tobool2354 = icmp ne i32 %1328, 0
  %cond2355 = select i1 %tobool2354, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0)
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.150, i32 0, i32 0), i8* %cond2355)
  br label %if.end.2356

if.end.2356:                                      ; preds = %if.then.2353, %if.end.2350
  br label %while.cond.2357

while.cond.2357:                                  ; preds = %while.end.2411, %if.then.2380, %if.end.2356
  %1329 = load %struct.address*, %struct.address** %vrfyqueue, align 8, !tbaa !1
  %cmp2358 = icmp ne %struct.address* %1329, null
  br i1 %cmp2358, label %while.body.2360, label %while.end.2414

while.body.2360:                                  ; preds = %while.cond.2357
  %1330 = load %struct.address*, %struct.address** %vrfyqueue, align 8, !tbaa !1
  %q_state2361 = getelementptr inbounds %struct.address, %struct.address* %1330, i32 0, i32 21
  %1331 = load i16, i16* %q_state2361, align 2, !tbaa !66
  %conv2362 = sext i16 %1331 to i32
  %cmp2363 = icmp eq i32 %conv2362, 0
  br i1 %cmp2363, label %if.end.2381, label %lor.lhs.false.2365

lor.lhs.false.2365:                               ; preds = %while.body.2360
  %1332 = load %struct.address*, %struct.address** %vrfyqueue, align 8, !tbaa !1
  %q_state2366 = getelementptr inbounds %struct.address, %struct.address* %1332, i32 0, i32 21
  %1333 = load i16, i16* %q_state2366, align 2, !tbaa !66
  %conv2367 = sext i16 %1333 to i32
  %cmp2368 = icmp eq i32 %conv2367, 3
  br i1 %cmp2368, label %if.end.2381, label %lor.lhs.false.2370

lor.lhs.false.2370:                               ; preds = %lor.lhs.false.2365
  %1334 = load %struct.address*, %struct.address** %vrfyqueue, align 8, !tbaa !1
  %q_state2371 = getelementptr inbounds %struct.address, %struct.address* %1334, i32 0, i32 21
  %1335 = load i16, i16* %q_state2371, align 2, !tbaa !66
  %conv2372 = sext i16 %1335 to i32
  %cmp2373 = icmp eq i32 %conv2372, 4
  br i1 %cmp2373, label %if.end.2381, label %lor.lhs.false.2375

lor.lhs.false.2375:                               ; preds = %lor.lhs.false.2370
  %1336 = load %struct.address*, %struct.address** %vrfyqueue, align 8, !tbaa !1
  %q_state2376 = getelementptr inbounds %struct.address, %struct.address* %1336, i32 0, i32 21
  %1337 = load i16, i16* %q_state2376, align 2, !tbaa !66
  %conv2377 = sext i16 %1337 to i32
  %cmp2378 = icmp eq i32 %conv2377, 5
  br i1 %cmp2378, label %if.end.2381, label %if.then.2380

if.then.2380:                                     ; preds = %lor.lhs.false.2375
  %1338 = load %struct.address*, %struct.address** %vrfyqueue, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %1338, i32 0, i32 10
  %1339 = load %struct.address*, %struct.address** %q_next, align 8, !tbaa !70
  store %struct.address* %1339, %struct.address** %vrfyqueue, align 8, !tbaa !1
  br label %while.cond.2357

if.end.2381:                                      ; preds = %lor.lhs.false.2375, %lor.lhs.false.2370, %lor.lhs.false.2365, %while.body.2360
  %1340 = load %struct.address*, %struct.address** %vrfyqueue, align 8, !tbaa !1
  store %struct.address* %1340, %struct.address** %a, align 8, !tbaa !1
  br label %while.cond.2382

while.cond.2382:                                  ; preds = %while.body.2410, %if.end.2381
  %1341 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_next2383 = getelementptr inbounds %struct.address, %struct.address* %1341, i32 0, i32 10
  %1342 = load %struct.address*, %struct.address** %q_next2383, align 8, !tbaa !70
  store %struct.address* %1342, %struct.address** %a, align 8, !tbaa !1
  %cmp2384 = icmp ne %struct.address* %1342, null
  br i1 %cmp2384, label %land.rhs.2386, label %land.end.2409

land.rhs.2386:                                    ; preds = %while.cond.2382
  %1343 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state2387 = getelementptr inbounds %struct.address, %struct.address* %1343, i32 0, i32 21
  %1344 = load i16, i16* %q_state2387, align 2, !tbaa !66
  %conv2388 = sext i16 %1344 to i32
  %cmp2389 = icmp eq i32 %conv2388, 0
  br i1 %cmp2389, label %lor.end.2406, label %lor.lhs.false.2391

lor.lhs.false.2391:                               ; preds = %land.rhs.2386
  %1345 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state2392 = getelementptr inbounds %struct.address, %struct.address* %1345, i32 0, i32 21
  %1346 = load i16, i16* %q_state2392, align 2, !tbaa !66
  %conv2393 = sext i16 %1346 to i32
  %cmp2394 = icmp eq i32 %conv2393, 3
  br i1 %cmp2394, label %lor.end.2406, label %lor.lhs.false.2396

lor.lhs.false.2396:                               ; preds = %lor.lhs.false.2391
  %1347 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state2397 = getelementptr inbounds %struct.address, %struct.address* %1347, i32 0, i32 21
  %1348 = load i16, i16* %q_state2397, align 2, !tbaa !66
  %conv2398 = sext i16 %1348 to i32
  %cmp2399 = icmp eq i32 %conv2398, 4
  br i1 %cmp2399, label %lor.end.2406, label %lor.rhs.2401

lor.rhs.2401:                                     ; preds = %lor.lhs.false.2396
  %1349 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state2402 = getelementptr inbounds %struct.address, %struct.address* %1349, i32 0, i32 21
  %1350 = load i16, i16* %q_state2402, align 2, !tbaa !66
  %conv2403 = sext i16 %1350 to i32
  %cmp2404 = icmp eq i32 %conv2403, 5
  br label %lor.end.2406

lor.end.2406:                                     ; preds = %lor.rhs.2401, %lor.lhs.false.2396, %lor.lhs.false.2391, %land.rhs.2386
  %1351 = phi i1 [ true, %lor.lhs.false.2396 ], [ true, %lor.lhs.false.2391 ], [ true, %land.rhs.2386 ], [ %cmp2404, %lor.rhs.2401 ]
  %lnot2408 = xor i1 %1351, true
  br label %land.end.2409

land.end.2409:                                    ; preds = %lor.end.2406, %while.cond.2382
  %1352 = phi i1 [ false, %while.cond.2382 ], [ %lnot2408, %lor.end.2406 ]
  br i1 %1352, label %while.body.2410, label %while.end.2411

while.body.2410:                                  ; preds = %land.end.2409
  br label %while.cond.2382

while.end.2411:                                   ; preds = %land.end.2409
  %1353 = load %struct.address*, %struct.address** %vrfyqueue, align 8, !tbaa !1
  %1354 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %cmp2412 = icmp eq %struct.address* %1354, null
  %conv2413 = zext i1 %cmp2412 to i32
  %1355 = load i32, i32* %vrfy, align 4, !tbaa !5
  call void @printvrfyaddr(%struct.address* %1353, i32 %conv2413, i32 %1355)
  %1356 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  store %struct.address* %1356, %struct.address** %vrfyqueue, align 8, !tbaa !1
  br label %while.cond.2357

while.end.2414:                                   ; preds = %while.cond.2357
  br label %if.end.2415

if.end.2415:                                      ; preds = %while.end.2414, %do.body.2280
  %eh_state2416 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 3
  %1357 = load i32, i32* %eh_state2416, align 4, !tbaa !42
  %cmp2417 = icmp eq i32 %1357, 1
  br i1 %cmp2417, label %if.then.2419, label %if.end.2420

if.then.2419:                                     ; preds = %if.end.2415
  br label %do.end.2447

if.end.2420:                                      ; preds = %if.end.2415
  %eh_state2421 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 3
  %1358 = load i32, i32* %eh_state2421, align 4, !tbaa !42
  %cmp2422 = icmp eq i32 %1358, 2
  br i1 %cmp2422, label %if.then.2424, label %if.end.2431

if.then.2424:                                     ; preds = %if.end.2420
  %1359 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp2425 = icmp eq %struct.sm_exc_handler* %1359, %_h2279
  br i1 %cmp2425, label %lor.end.2428, label %lor.rhs.2427

lor.rhs.2427:                                     ; preds = %if.then.2424
  call void @sm_abort_at(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3276, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.2428

lor.end.2428:                                     ; preds = %1360, %if.then.2424
  %1361 = phi i1 [ true, %if.then.2424 ], [ false, %1360 ]
  %lor.ext2429 = zext i1 %1361 to i32
  %eh_parent2430 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 2
  %1362 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent2430, align 8, !tbaa !41
  store %struct.sm_exc_handler* %1362, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  br label %if.end.2431

if.end.2431:                                      ; preds = %lor.end.2428, %if.end.2420
  %eh_value2432 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 0
  %1363 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2432, align 8, !tbaa !39
  %call2433 = call i32 @sm_exc_match(%struct.sm_exc* %1363, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0))
  %tobool2434 = icmp ne i32 %call2433, 0
  %cond2435 = select i1 %tobool2434, i32 1, i32 0
  %eh_state2436 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 3
  store i32 %cond2435, i32* %eh_state2436, align 4, !tbaa !42
  %eh_state2437 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 3
  %1364 = load i32, i32* %eh_state2437, align 4, !tbaa !42
  %cmp2438 = icmp eq i32 %1364, 1
  br i1 %cmp2438, label %if.then.2440, label %if.end.2445

if.then.2440:                                     ; preds = %if.end.2431
  %1365 = bitcast %struct.sm_exc** %exc2442 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1365) #1
  %eh_value2443 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 0
  %1366 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2443, align 8, !tbaa !39
  store %struct.sm_exc* %1366, %struct.sm_exc** %exc2442, align 8, !tbaa !1
  %1367 = load %struct.sm_exc*, %struct.sm_exc** %exc2442, align 8, !tbaa !1
  call void @sm_exc_free(%struct.sm_exc* %1367)
  store i32 48, i32* %cleanup.dest.slot
  %1368 = bitcast %struct.sm_exc** %exc2442 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1368) #1
  br label %cleanup.2479

if.end.2445:                                      ; preds = %if.end.2431
  br label %do.cond.2446

do.cond.2446:                                     ; preds = %if.end.2445
  br label %do.end.2447

do.end.2447:                                      ; preds = %do.cond.2446, %if.then.2419
  %eh_state2448 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 3
  %1369 = load i32, i32* %eh_state2448, align 4, !tbaa !42
  %cmp2449 = icmp eq i32 %1369, 2
  br i1 %cmp2449, label %if.then.2451, label %if.else.2464

if.then.2451:                                     ; preds = %do.end.2447
  %1370 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp2452 = icmp eq %struct.sm_exc_handler* %1370, %_h2279
  br i1 %cmp2452, label %lor.end.2455, label %lor.rhs.2454

lor.rhs.2454:                                     ; preds = %if.then.2451
  call void @sm_abort_at(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3285, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.2455

lor.end.2455:                                     ; preds = %1371, %if.then.2451
  %1372 = phi i1 [ true, %if.then.2451 ], [ false, %1371 ]
  %lor.ext2456 = zext i1 %1372 to i32
  %eh_parent2457 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 2
  %1373 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent2457, align 8, !tbaa !41
  store %struct.sm_exc_handler* %1373, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_value2458 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 0
  %1374 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2458, align 8, !tbaa !39
  %cmp2459 = icmp ne %struct.sm_exc* %1374, null
  br i1 %cmp2459, label %if.then.2461, label %if.end.2463

if.then.2461:                                     ; preds = %lor.end.2455
  %eh_value2462 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 0
  %1375 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2462, align 8, !tbaa !39
  call void @sm_exc_raise_x(%struct.sm_exc* %1375) #12
  unreachable

if.end.2463:                                      ; preds = %lor.end.2455
  br label %if.end.2478

if.else.2464:                                     ; preds = %do.end.2447
  %eh_state2465 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 3
  %1376 = load i32, i32* %eh_state2465, align 4, !tbaa !42
  %cmp2466 = icmp eq i32 %1376, 0
  br i1 %cmp2466, label %if.then.2468, label %if.else.2475

if.then.2468:                                     ; preds = %if.else.2464
  %eh_value2469 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 0
  %1377 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2469, align 8, !tbaa !39
  %cmp2470 = icmp ne %struct.sm_exc* %1377, null
  br i1 %cmp2470, label %if.then.2472, label %if.end.2474

if.then.2472:                                     ; preds = %if.then.2468
  %eh_value2473 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 0
  %1378 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2473, align 8, !tbaa !39
  call void @sm_exc_raise_x(%struct.sm_exc* %1378) #12
  unreachable

if.end.2474:                                      ; preds = %if.then.2468
  br label %if.end.2477

if.else.2475:                                     ; preds = %if.else.2464
  %eh_value2476 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h2279, i32 0, i32 0
  %1379 = load %struct.sm_exc*, %struct.sm_exc** %eh_value2476, align 8, !tbaa !39
  call void @sm_exc_free(%struct.sm_exc* %1379)
  br label %if.end.2477

if.end.2477:                                      ; preds = %if.else.2475, %if.end.2474
  br label %if.end.2478

if.end.2478:                                      ; preds = %if.end.2477, %if.end.2463
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2479

cleanup.2479:                                     ; preds = %if.end.2478, %if.then.2440
  %1380 = bitcast %struct.sm_exc_handler* %_h2279 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %1380) #1
  %cleanup.dest.2480 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2480, label %unreachable [
    i32 0, label %cleanup.cont.2481
    i32 48, label %undo
  ]

cleanup.cont.2481:                                ; preds = %cleanup.2479
  br label %sw.epilog.2987

sw.bb.2482:                                       ; preds = %if.end.690
  %1381 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2483 = icmp sgt i32 %1381, 0
  br i1 %cmp2483, label %land.lhs.true.2485, label %if.end.2506

land.lhs.true.2485:                               ; preds = %sw.bb.2482
  %call2486 = call i32 @getla()
  store i32 %call2486, i32* @CurrentLA, align 4, !tbaa !5
  %1382 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2487 = icmp sge i32 %call2486, %1382
  br i1 %cmp2487, label %if.then.2489, label %if.end.2506

if.then.2489:                                     ; preds = %land.lhs.true.2485
  %1383 = bitcast i64* %dnow2491 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1383) #1
  %1384 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1385 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2492 = call i8* @qid_printname(%struct.envelope* %1385)
  %1386 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1387 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1384, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call2492, i8* %1386, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 %1387)
  %1388 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2493 = icmp sgt i32 %1388, 8
  br i1 %cmp2493, label %land.lhs.true.2495, label %if.end.2502

land.lhs.true.2495:                               ; preds = %if.then.2489
  %call2496 = call i64 @curtime()
  store i64 %call2496, i64* %dnow2491, align 8, !tbaa !10
  %1389 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp2497 = icmp sgt i64 %call2496, %1389
  br i1 %cmp2497, label %if.then.2499, label %if.end.2502

if.then.2499:                                     ; preds = %land.lhs.true.2495
  %1390 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2500 = getelementptr inbounds %struct.envelope, %struct.envelope* %1390, i32 0, i32 25
  %1391 = load i8*, i8** %e_id2500, align 8, !tbaa !29
  %1392 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %1393 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1391, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 %1392, i32 %1393)
  %1394 = load i64, i64* %dnow2491, align 8, !tbaa !10
  %add2501 = add nsw i64 %1394, 15
  store volatile i64 %add2501, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.2502

if.end.2502:                                      ; preds = %if.then.2499, %land.lhs.true.2495, %if.then.2489
  %call2503 = call i32 @sleep(i32 1)
  %1395 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1396 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2504 = call i8* @qid_printname(%struct.envelope* %1396)
  %1397 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2505 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1395, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call2504, i8* %1397, i8* %arraydecay2505)
  %1398 = bitcast i64* %dnow2491 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1398) #1
  br label %if.end.2506

if.end.2506:                                      ; preds = %if.end.2502, %land.lhs.true.2485, %sw.bb.2482
  %1399 = load volatile i32, i32* %features, align 4, !tbaa !5
  %and2507 = and i32 %1399, 8
  %cmp2508 = icmp ne i32 %and2507, 0
  br i1 %cmp2508, label %lor.lhs.false.2510, label %if.then.2522

lor.lhs.false.2510:                               ; preds = %if.end.2506
  %1400 = load i32, i32* @UseMSP, align 4, !tbaa !5
  %tobool2511 = icmp ne i32 %1400, 0
  br i1 %tobool2511, label %if.then.2522, label %lor.lhs.false.2512

lor.lhs.false.2512:                               ; preds = %lor.lhs.false.2510
  %1401 = load i32, i32* @RealUid, align 4, !tbaa !5
  %cmp2513 = icmp ne i32 %1401, 0
  br i1 %cmp2513, label %land.lhs.true.2515, label %if.end.2530

land.lhs.true.2515:                               ; preds = %lor.lhs.false.2512
  %1402 = load i32, i32* @RealUid, align 4, !tbaa !5
  %1403 = load i32, i32* @TrustedUid, align 4, !tbaa !5
  %cmp2516 = icmp ne i32 %1402, %1403
  br i1 %cmp2516, label %land.lhs.true.2518, label %if.end.2530

land.lhs.true.2518:                               ; preds = %land.lhs.true.2515
  %1404 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv2519 = sext i8 %1404 to i32
  %cmp2520 = icmp eq i32 %conv2519, 115
  br i1 %cmp2520, label %if.then.2522, label %if.end.2530

if.then.2522:                                     ; preds = %land.lhs.true.2518, %lor.lhs.false.2510, %if.end.2506
  call void (i8*, ...) @message(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.143, i32 0, i32 0))
  %1405 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2523 = icmp sgt i32 %1405, 5
  br i1 %cmp2523, label %if.then.2525, label %if.end.2529

if.then.2525:                                     ; preds = %if.then.2522
  %1406 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2526 = getelementptr inbounds %struct.envelope, %struct.envelope* %1406, i32 0, i32 25
  %1407 = load i8*, i8** %e_id2526, align 8, !tbaa !29
  %1408 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2527 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %call2528 = call i8* @shortenstring(i8* %arraydecay2527, i64 203)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1407, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.144, i32 0, i32 0), i8* %1408, i8* %call2528)
  br label %if.end.2529

if.end.2529:                                      ; preds = %if.then.2525, %if.then.2522
  br label %sw.epilog.2987

if.end.2530:                                      ; preds = %land.lhs.true.2518, %land.lhs.true.2515, %lor.lhs.false.2512
  %1409 = load volatile i32, i32* %tempfail, align 4, !tbaa !5
  %tobool2531 = icmp ne i32 %1409, 0
  br i1 %tobool2531, label %if.then.2532, label %if.end.2538

if.then.2532:                                     ; preds = %if.end.2530
  %1410 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2533 = icmp sgt i32 %1410, 9
  br i1 %cmp2533, label %if.then.2535, label %if.end.2537

if.then.2535:                                     ; preds = %if.then.2532
  %1411 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2536 = getelementptr inbounds %struct.envelope, %struct.envelope* %1411, i32 0, i32 25
  %1412 = load i8*, i8** %e_id2536, align 8, !tbaa !29
  %1413 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %1414 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1412, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.151, i32 0, i32 0), i8* %1413, i8* %1414)
  br label %if.end.2537

if.end.2537:                                      ; preds = %if.then.2535, %if.then.2532
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.2538:                                      ; preds = %if.end.2530
  %1415 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %call2539 = call i64 @strlen(i8* %1415) #11
  %cmp2540 = icmp ule i64 %call2539, 0
  br i1 %cmp2540, label %if.then.2542, label %if.end.2543

if.then.2542:                                     ; preds = %if.end.2538
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.152, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.2543:                                      ; preds = %if.end.2538
  br label %do.body.2544

do.body.2544:                                     ; preds = %if.end.2543
  %1416 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2545 = call i64 @checksmtpattack(i32* %n_etrn, i32 8, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), %struct.envelope* %1416)
  %cmp2546 = icmp eq i64 %call2545, -1
  br i1 %cmp2546, label %if.then.2548, label %if.end.2549

if.then.2548:                                     ; preds = %do.body.2544
  br label %stopattack

if.end.2549:                                      ; preds = %do.body.2544
  br label %do.cond.2550

do.cond.2550:                                     ; preds = %if.end.2549
  br label %do.end.2551

do.end.2551:                                      ; preds = %do.cond.2550
  %1417 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %1418 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2552 = call i32 @rscheck(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.153, i32 0, i32 0), i8* %1417, i8* null, %struct.envelope* %1418, i32 1, i32 3, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %struct.address* null, i8** null)
  %cmp2553 = icmp ne i32 %call2552, 0
  br i1 %cmp2553, label %if.then.2558, label %lor.lhs.false.2555

lor.lhs.false.2555:                               ; preds = %do.end.2551
  %1419 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp2556 = icmp sgt i32 %1419, 0
  br i1 %cmp2556, label %if.then.2558, label %if.end.2559

if.then.2558:                                     ; preds = %lor.lhs.false.2555, %do.end.2551
  br label %sw.epilog.2987

if.end.2559:                                      ; preds = %lor.lhs.false.2555
  %1420 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2560 = icmp sgt i32 %1420, 5
  br i1 %cmp2560, label %if.then.2562, label %if.end.2565

if.then.2562:                                     ; preds = %if.end.2559
  %1421 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2563 = getelementptr inbounds %struct.envelope, %struct.envelope* %1421, i32 0, i32 25
  %1422 = load i8*, i8** %e_id2563, align 8, !tbaa !29
  %1423 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1424 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %call2564 = call i8* @shortenstring(i8* %1424, i64 203)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1422, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i32 0, i32 0), i8* %1423, i8* %call2564)
  br label %if.end.2565

if.end.2565:                                      ; preds = %if.then.2562, %if.end.2559
  %1425 = load volatile i8*, i8** %p, align 8, !tbaa !1
  store i8* %1425, i8** %id, align 8, !tbaa !1
  %1426 = load i8*, i8** %id, align 8, !tbaa !1
  %1427 = load i8, i8* %1426, align 1, !tbaa !7
  %conv2566 = sext i8 %1427 to i32
  %cmp2567 = icmp eq i32 %conv2566, 35
  br i1 %cmp2567, label %if.then.2569, label %if.end.2607

if.then.2569:                                     ; preds = %if.end.2565
  %1428 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1428) #1
  %1429 = bitcast i32* %qgrp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1429) #1
  %1430 = load i8*, i8** %id, align 8, !tbaa !1
  %incdec.ptr2572 = getelementptr inbounds i8, i8* %1430, i32 1
  store i8* %incdec.ptr2572, i8** %id, align 8, !tbaa !1
  %1431 = load i8*, i8** %id, align 8, !tbaa !1
  %call2573 = call i32 @name2qid(i8* %1431)
  store i32 %call2573, i32* %qgrp, align 4, !tbaa !5
  %1432 = load i32, i32* %qgrp, align 4, !tbaa !5
  %cmp2574 = icmp sge i32 %1432, 0
  br i1 %cmp2574, label %if.end.2577, label %if.then.2576

if.then.2576:                                     ; preds = %if.then.2569
  %1433 = load i8*, i8** %id, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.155, i32 0, i32 0), i8* %1433)
  store i32 30, i32* %cleanup.dest.slot
  br label %cleanup.2605

if.end.2577:                                      ; preds = %if.then.2569
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.2578

for.cond.2578:                                    ; preds = %for.inc.2590, %if.end.2577
  %1434 = load i32, i32* %i, align 4, !tbaa !5
  %1435 = load i32, i32* @NumQueue, align 4, !tbaa !5
  %cmp2579 = icmp slt i32 %1434, %1435
  br i1 %cmp2579, label %land.rhs.2581, label %land.end.2586

land.rhs.2581:                                    ; preds = %for.cond.2578
  %1436 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2582 = sext i32 %1436 to i64
  %arrayidx2583 = getelementptr inbounds [51 x %struct.queuegrp*], [51 x %struct.queuegrp*]* @Queue, i32 0, i64 %idxprom2582
  %1437 = load %struct.queuegrp*, %struct.queuegrp** %arrayidx2583, align 8, !tbaa !1
  %cmp2584 = icmp ne %struct.queuegrp* %1437, null
  br label %land.end.2586

land.end.2586:                                    ; preds = %land.rhs.2581, %for.cond.2578
  %1438 = phi i1 [ false, %for.cond.2578 ], [ %cmp2584, %land.rhs.2581 ]
  br i1 %1438, label %for.body.2587, label %for.end.2592

for.body.2587:                                    ; preds = %land.end.2586
  %1439 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2588 = sext i32 %1439 to i64
  %arrayidx2589 = getelementptr inbounds [51 x %struct.queuegrp*], [51 x %struct.queuegrp*]* @Queue, i32 0, i64 %idxprom2588
  %1440 = load %struct.queuegrp*, %struct.queuegrp** %arrayidx2589, align 8, !tbaa !1
  %qg_nextrun = getelementptr inbounds %struct.queuegrp, %struct.queuegrp* %1440, i32 0, i32 13
  store i64 -1, i64* %qg_nextrun, align 8, !tbaa !71
  br label %for.inc.2590

for.inc.2590:                                     ; preds = %for.body.2587
  %1441 = load i32, i32* %i, align 4, !tbaa !5
  %inc2591 = add nsw i32 %1441, 1
  store i32 %inc2591, i32* %i, align 4, !tbaa !5
  br label %for.cond.2578

for.end.2592:                                     ; preds = %land.end.2586
  %1442 = load i32, i32* %qgrp, align 4, !tbaa !5
  %idxprom2593 = sext i32 %1442 to i64
  %arrayidx2594 = getelementptr inbounds [51 x %struct.queuegrp*], [51 x %struct.queuegrp*]* @Queue, i32 0, i64 %idxprom2593
  %1443 = load %struct.queuegrp*, %struct.queuegrp** %arrayidx2594, align 8, !tbaa !1
  %qg_nextrun2595 = getelementptr inbounds %struct.queuegrp, %struct.queuegrp* %1443, i32 0, i32 13
  store i64 0, i64* %qg_nextrun2595, align 8, !tbaa !71
  %1444 = load i32, i32* %qgrp, align 4, !tbaa !5
  %idxprom2596 = sext i32 %1444 to i64
  %arrayidx2597 = getelementptr inbounds [51 x %struct.queuegrp*], [51 x %struct.queuegrp*]* @Queue, i32 0, i64 %idxprom2596
  %1445 = load %struct.queuegrp*, %struct.queuegrp** %arrayidx2597, align 8, !tbaa !1
  %qg_wgrp = getelementptr inbounds %struct.queuegrp, %struct.queuegrp* %1445, i32 0, i32 9
  %1446 = load i32, i32* %qg_wgrp, align 4, !tbaa !73
  %call2598 = call i32 @run_work_group(i32 %1446, i32 9)
  store i32 %call2598, i32* %ok, align 4, !tbaa !5
  %1447 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool2599 = icmp ne i32 %1447, 0
  br i1 %tobool2599, label %land.lhs.true.2600, label %if.end.2604

land.lhs.true.2600:                               ; preds = %for.end.2592
  %1448 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp2601 = icmp eq i32 %1448, 0
  br i1 %cmp2601, label %if.then.2603, label %if.end.2604

if.then.2603:                                     ; preds = %land.lhs.true.2600
  %1449 = load i8*, i8** %id, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.156, i32 0, i32 0), i8* %1449)
  br label %if.end.2604

if.end.2604:                                      ; preds = %if.then.2603, %land.lhs.true.2600, %for.end.2592
  store i32 30, i32* %cleanup.dest.slot
  br label %cleanup.2605

cleanup.2605:                                     ; preds = %if.end.2604, %if.then.2576
  %1450 = bitcast i32* %qgrp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1450) #1
  %1451 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1451) #1
  br label %sw.epilog.2987

if.end.2607:                                      ; preds = %if.end.2565
  %1452 = load i8*, i8** %id, align 8, !tbaa !1
  %1453 = load i8, i8* %1452, align 1, !tbaa !7
  %conv2608 = sext i8 %1453 to i32
  %cmp2609 = icmp eq i32 %conv2608, 64
  br i1 %cmp2609, label %if.then.2611, label %if.else.2613

if.then.2611:                                     ; preds = %if.end.2607
  %1454 = load i8*, i8** %id, align 8, !tbaa !1
  %incdec.ptr2612 = getelementptr inbounds i8, i8* %1454, i32 1
  store i8* %incdec.ptr2612, i8** %id, align 8, !tbaa !1
  br label %if.end.2615

if.else.2613:                                     ; preds = %if.end.2607
  %1455 = load i8*, i8** %id, align 8, !tbaa !1
  %incdec.ptr2614 = getelementptr inbounds i8, i8* %1455, i32 -1
  store i8* %incdec.ptr2614, i8** %id, align 8, !tbaa !1
  store i8 64, i8* %incdec.ptr2614, align 1, !tbaa !7
  br label %if.end.2615

if.end.2615:                                      ; preds = %if.else.2613, %if.then.2611
  %1456 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  %call2616 = call i8* @sm_malloc_tagged(i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3374, i32 %1456)
  %1457 = bitcast i8* %call2616 to %struct.queue_char*
  store %struct.queue_char* %1457, %struct.queue_char** %new, align 8, !tbaa !1
  %1458 = load %struct.queue_char*, %struct.queue_char** %new, align 8, !tbaa !1
  %cmp2617 = icmp eq %struct.queue_char* %1458, null
  br i1 %cmp2617, label %if.then.2619, label %if.end.2620

if.then.2619:                                     ; preds = %if.end.2615
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.157, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.2620:                                      ; preds = %if.end.2615
  %1459 = load i8*, i8** %id, align 8, !tbaa !1
  %1460 = load %struct.queue_char*, %struct.queue_char** %new, align 8, !tbaa !1
  %queue_match = getelementptr inbounds %struct.queue_char, %struct.queue_char* %1460, i32 0, i32 0
  store i8* %1459, i8** %queue_match, align 8, !tbaa !74
  %1461 = load %struct.queue_char*, %struct.queue_char** %new, align 8, !tbaa !1
  %queue_negate = getelementptr inbounds %struct.queue_char, %struct.queue_char* %1461, i32 0, i32 1
  store i32 0, i32* %queue_negate, align 4, !tbaa !76
  %1462 = load %struct.queue_char*, %struct.queue_char** %new, align 8, !tbaa !1
  %queue_next = getelementptr inbounds %struct.queue_char, %struct.queue_char* %1462, i32 0, i32 2
  store %struct.queue_char* null, %struct.queue_char** %queue_next, align 8, !tbaa !77
  %1463 = load %struct.queue_char*, %struct.queue_char** %new, align 8, !tbaa !1
  store %struct.queue_char* %1463, %struct.queue_char** @QueueLimitRecipient, align 8, !tbaa !1
  %call2621 = call i32 @runqueue(i32 1, i32 0, i32 0, i32 1)
  store i32 %call2621, i32* %ok, align 4, !tbaa !5
  %1464 = load %struct.queue_char*, %struct.queue_char** @QueueLimitRecipient, align 8, !tbaa !1
  %1465 = bitcast %struct.queue_char* %1464 to i8*
  call void @sm_free_tagged(i8* %1465, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3385)
  store %struct.queue_char* null, %struct.queue_char** @QueueLimitRecipient, align 8, !tbaa !1
  %1466 = load i32, i32* %ok, align 4, !tbaa !5
  %tobool2622 = icmp ne i32 %1466, 0
  br i1 %tobool2622, label %land.lhs.true.2623, label %if.end.2627

land.lhs.true.2623:                               ; preds = %if.end.2620
  %1467 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp2624 = icmp eq i32 %1467, 0
  br i1 %cmp2624, label %if.then.2626, label %if.end.2627

if.then.2626:                                     ; preds = %land.lhs.true.2623
  %1468 = load volatile i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.158, i32 0, i32 0), i8* %1468)
  br label %if.end.2627

if.end.2627:                                      ; preds = %if.then.2626, %land.lhs.true.2623, %if.end.2620
  br label %sw.epilog.2987

sw.bb.2628:                                       ; preds = %if.end.690
  %1469 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2629 = icmp sgt i32 %1469, 0
  br i1 %cmp2629, label %land.lhs.true.2631, label %if.end.2652

land.lhs.true.2631:                               ; preds = %sw.bb.2628
  %call2632 = call i32 @getla()
  store i32 %call2632, i32* @CurrentLA, align 4, !tbaa !5
  %1470 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2633 = icmp sge i32 %call2632, %1470
  br i1 %cmp2633, label %if.then.2635, label %if.end.2652

if.then.2635:                                     ; preds = %land.lhs.true.2631
  %1471 = bitcast i64* %dnow2637 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1471) #1
  %1472 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1473 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2638 = call i8* @qid_printname(%struct.envelope* %1473)
  %1474 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1475 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1472, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call2638, i8* %1474, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0), i32 %1475)
  %1476 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2639 = icmp sgt i32 %1476, 8
  br i1 %cmp2639, label %land.lhs.true.2641, label %if.end.2648

land.lhs.true.2641:                               ; preds = %if.then.2635
  %call2642 = call i64 @curtime()
  store i64 %call2642, i64* %dnow2637, align 8, !tbaa !10
  %1477 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp2643 = icmp sgt i64 %call2642, %1477
  br i1 %cmp2643, label %if.then.2645, label %if.end.2648

if.then.2645:                                     ; preds = %land.lhs.true.2641
  %1478 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2646 = getelementptr inbounds %struct.envelope, %struct.envelope* %1478, i32 0, i32 25
  %1479 = load i8*, i8** %e_id2646, align 8, !tbaa !29
  %1480 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %1481 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1479, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0), i32 %1480, i32 %1481)
  %1482 = load i64, i64* %dnow2637, align 8, !tbaa !10
  %add2647 = add nsw i64 %1482, 15
  store volatile i64 %add2647, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.2648

if.end.2648:                                      ; preds = %if.then.2645, %land.lhs.true.2641, %if.then.2635
  %call2649 = call i32 @sleep(i32 1)
  %1483 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1484 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2650 = call i8* @qid_printname(%struct.envelope* %1484)
  %1485 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2651 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1483, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call2650, i8* %1485, i8* %arraydecay2651)
  %1486 = bitcast i64* %dnow2637 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1486) #1
  br label %if.end.2652

if.end.2652:                                      ; preds = %if.end.2648, %land.lhs.true.2631, %sw.bb.2628
  %1487 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %1488 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @help(i8* %1487, %struct.envelope* %1488)
  br label %sw.epilog.2987

sw.bb.2653:                                       ; preds = %if.end.690
  %1489 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2654 = icmp sgt i32 %1489, 0
  br i1 %cmp2654, label %land.lhs.true.2656, label %if.end.2677

land.lhs.true.2656:                               ; preds = %sw.bb.2653
  %call2657 = call i32 @getla()
  store i32 %call2657, i32* @CurrentLA, align 4, !tbaa !5
  %1490 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2658 = icmp sge i32 %call2657, %1490
  br i1 %cmp2658, label %if.then.2660, label %if.end.2677

if.then.2660:                                     ; preds = %land.lhs.true.2656
  %1491 = bitcast i64* %dnow2662 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1491) #1
  %1492 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1493 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2663 = call i8* @qid_printname(%struct.envelope* %1493)
  %1494 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1495 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1492, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call2663, i8* %1494, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), i32 %1495)
  %1496 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2664 = icmp sgt i32 %1496, 8
  br i1 %cmp2664, label %land.lhs.true.2666, label %if.end.2673

land.lhs.true.2666:                               ; preds = %if.then.2660
  %call2667 = call i64 @curtime()
  store i64 %call2667, i64* %dnow2662, align 8, !tbaa !10
  %1497 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp2668 = icmp sgt i64 %call2667, %1497
  br i1 %cmp2668, label %if.then.2670, label %if.end.2673

if.then.2670:                                     ; preds = %land.lhs.true.2666
  %1498 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2671 = getelementptr inbounds %struct.envelope, %struct.envelope* %1498, i32 0, i32 25
  %1499 = load i8*, i8** %e_id2671, align 8, !tbaa !29
  %1500 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %1501 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1499, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), i32 %1500, i32 %1501)
  %1502 = load i64, i64* %dnow2662, align 8, !tbaa !10
  %add2672 = add nsw i64 %1502, 15
  store volatile i64 %add2672, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.2673

if.end.2673:                                      ; preds = %if.then.2670, %land.lhs.true.2666, %if.then.2660
  %call2674 = call i32 @sleep(i32 1)
  %1503 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1504 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2675 = call i8* @qid_printname(%struct.envelope* %1504)
  %1505 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2676 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1503, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call2675, i8* %1505, i8* %arraydecay2676)
  %1506 = bitcast i64* %dnow2662 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1506) #1
  br label %if.end.2677

if.end.2677:                                      ; preds = %if.end.2673, %land.lhs.true.2656, %sw.bb.2653
  br label %do.body.2678

do.body.2678:                                     ; preds = %if.end.2677
  %1507 = load i32, i32* @MaxNOOPCommands, align 4, !tbaa !5
  %1508 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2679 = call i64 @checksmtpattack(i32* %n_noop, i32 %1507, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), %struct.envelope* %1508)
  %cmp2680 = icmp eq i64 %call2679, -1
  br i1 %cmp2680, label %if.then.2682, label %if.end.2683

if.then.2682:                                     ; preds = %do.body.2678
  br label %stopattack

if.end.2683:                                      ; preds = %do.body.2678
  br label %do.cond.2684

do.cond.2684:                                     ; preds = %if.end.2683
  br label %do.end.2685

do.end.2685:                                      ; preds = %do.cond.2684
  call void (i8*, ...) @message(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0))
  br label %sw.epilog.2987

sw.bb.2686:                                       ; preds = %if.end.690
  %1509 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.162, i32 0, i32 0), i8* %1509)
  %1510 = load %struct.sm_file*, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  %call2687 = call i32 @sm_io_flush(%struct.sm_file* %1510, i32 -2)
  %sm_nrcpts2688 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 1
  %1511 = load i32, i32* %sm_nrcpts2688, align 4, !tbaa !12
  %cmp2689 = icmp ugt i32 %1511, 0
  br i1 %cmp2689, label %if.then.2691, label %if.end.2692

if.then.2691:                                     ; preds = %sw.bb.2686
  %1512 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @logundelrcpts(%struct.envelope* %1512, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.163, i32 0, i32 0), i32 9, i32 0)
  br label %if.end.2692

if.end.2692:                                      ; preds = %if.then.2691, %sw.bb.2686
  %1513 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue2693 = getelementptr inbounds %struct.envelope, %struct.envelope* %1513, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue2693, align 8, !tbaa !30
  br label %doquit

doquit:                                           ; preds = %cleanup.2926, %stopattack, %if.end.2692, %cleanup.2072, %cleanup.1422, %cleanup.981, %cleanup.462, %if.end.419, %cleanup.152, %cleanup, %if.then.2102, %if.then.619, %if.then.64
  %1514 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @disconnect(i32 1, %struct.envelope* %1514)
  %1515 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_quit(%struct.envelope* %1515)
  %1516 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 92), align 1, !tbaa !7
  %conv2695 = zext i8 %1516 to i32
  %cmp2696 = icmp sge i32 %conv2695, 2
  br i1 %cmp2696, label %land.lhs.true.2698, label %if.end.2706

land.lhs.true.2698:                               ; preds = %doquit
  %1517 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool2699 = icmp ne i32 %1517, 0
  br i1 %tobool2699, label %if.end.2706, label %if.then.2700

if.then.2700:                                     ; preds = %land.lhs.true.2698
  %1518 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2701 = getelementptr inbounds %struct.envelope, %struct.envelope* %1518, i32 0, i32 25
  %1519 = load i8*, i8** %e_id2701, align 8, !tbaa !29
  %1520 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2702 = getelementptr inbounds %struct.envelope, %struct.envelope* %1520, i32 0, i32 11
  %1521 = load i64, i64* %e_flags2702, align 8, !tbaa !26
  %and2703 = and i64 %1521, 32768
  %cmp2704 = icmp ne i64 %and2703, 0
  %conv2705 = zext i1 %cmp2704 to i32
  %1522 = load i32, i32* @LogLevel, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.164, i32 0, i32 0), i8* %1519, i32 %conv2705, i32 %1522)
  br label %if.end.2706

if.end.2706:                                      ; preds = %if.then.2700, %land.lhs.true.2698, %doquit
  %1523 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2707 = icmp sgt i32 %1523, 4
  br i1 %cmp2707, label %land.lhs.true.2709, label %if.end.2715

land.lhs.true.2709:                               ; preds = %if.end.2706
  %1524 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2710 = getelementptr inbounds %struct.envelope, %struct.envelope* %1524, i32 0, i32 11
  %1525 = load i64, i64* %e_flags2710, align 8, !tbaa !26
  %and2711 = and i64 %1525, 32768
  %cmp2712 = icmp ne i64 %and2711, 0
  br i1 %cmp2712, label %if.then.2714, label %if.end.2715

if.then.2714:                                     ; preds = %land.lhs.true.2709
  %1526 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @logsender(%struct.envelope* %1526, i8* null)
  br label %if.end.2715

if.end.2715:                                      ; preds = %if.then.2714, %land.lhs.true.2709, %if.end.2706
  %1527 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2716 = getelementptr inbounds %struct.envelope, %struct.envelope* %1527, i32 0, i32 11
  %1528 = load i64, i64* %e_flags2716, align 8, !tbaa !26
  %and2717 = and i64 %1528, -32769
  store i64 %and2717, i64* %e_flags2716, align 8, !tbaa !26
  %1529 = load volatile i32, i32* %lognullconnection, align 4, !tbaa !5
  %tobool2718 = icmp ne i32 %1529, 0
  br i1 %tobool2718, label %land.lhs.true.2719, label %if.end.2735

land.lhs.true.2719:                               ; preds = %if.end.2715
  %1530 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2720 = icmp sgt i32 %1530, 5
  br i1 %cmp2720, label %land.lhs.true.2722, label %if.end.2735

land.lhs.true.2722:                               ; preds = %land.lhs.true.2719
  %1531 = load volatile i8*, i8** %nullserver.addr, align 8, !tbaa !1
  %cmp2723 = icmp eq i8* %1531, null
  br i1 %cmp2723, label %if.then.2725, label %if.end.2735

if.then.2725:                                     ; preds = %land.lhs.true.2722
  %1532 = bitcast i8** %d2727 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1532) #1
  %call2728 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8** null)
  %1533 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2729 = call i8* @macvalue(i32 %call2728, %struct.envelope* %1533)
  store i8* %call2729, i8** %d2727, align 8, !tbaa !1
  %1534 = load i8*, i8** %d2727, align 8, !tbaa !1
  %cmp2730 = icmp eq i8* %1534, null
  br i1 %cmp2730, label %if.then.2732, label %if.end.2733

if.then.2732:                                     ; preds = %if.then.2725
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8** %d2727, align 8, !tbaa !1
  br label %if.end.2733

if.end.2733:                                      ; preds = %if.then.2732, %if.then.2725
  %1535 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2734 = getelementptr inbounds %struct.envelope, %struct.envelope* %1535, i32 0, i32 25
  %1536 = load i8*, i8** %e_id2734, align 8, !tbaa !29
  %1537 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1538 = load i8*, i8** %d2727, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1536, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.165, i32 0, i32 0), i8* %1537, i8* %1538)
  %1539 = bitcast i8** %d2727 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1539) #1
  br label %if.end.2735

if.end.2735:                                      ; preds = %if.end.2733, %land.lhs.true.2722, %land.lhs.true.2719, %if.end.2715
  %1540 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 93), align 1, !tbaa !7
  %conv2736 = zext i8 %1540 to i32
  %cmp2737 = icmp sge i32 %conv2736, 100
  br i1 %cmp2737, label %land.lhs.true.2739, label %if.end.2742

land.lhs.true.2739:                               ; preds = %if.end.2735
  %1541 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool2740 = icmp ne i32 %1541, 0
  br i1 %tobool2740, label %if.end.2742, label %if.then.2741

if.then.2741:                                     ; preds = %land.lhs.true.2739
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.3051

if.end.2742:                                      ; preds = %land.lhs.true.2739, %if.end.2735
  %1542 = load i32, i32* @ExitStat, align 4, !tbaa !5
  call void @finis(i32 1, i32 1, i32 %1542)
  call void @exit(i32 71) #14
  unreachable

sw.bb.2743:                                       ; preds = %if.end.690
  %1543 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2744 = icmp sgt i32 %1543, 0
  br i1 %cmp2744, label %land.lhs.true.2746, label %if.end.2767

land.lhs.true.2746:                               ; preds = %sw.bb.2743
  %call2747 = call i32 @getla()
  store i32 %call2747, i32* @CurrentLA, align 4, !tbaa !5
  %1544 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2748 = icmp sge i32 %call2747, %1544
  br i1 %cmp2748, label %if.then.2750, label %if.end.2767

if.then.2750:                                     ; preds = %land.lhs.true.2746
  %1545 = bitcast i64* %dnow2752 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1545) #1
  %1546 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1547 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2753 = call i8* @qid_printname(%struct.envelope* %1547)
  %1548 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1549 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1546, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call2753, i8* %1548, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), i32 %1549)
  %1550 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2754 = icmp sgt i32 %1550, 8
  br i1 %cmp2754, label %land.lhs.true.2756, label %if.end.2763

land.lhs.true.2756:                               ; preds = %if.then.2750
  %call2757 = call i64 @curtime()
  store i64 %call2757, i64* %dnow2752, align 8, !tbaa !10
  %1551 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp2758 = icmp sgt i64 %call2757, %1551
  br i1 %cmp2758, label %if.then.2760, label %if.end.2763

if.then.2760:                                     ; preds = %land.lhs.true.2756
  %1552 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2761 = getelementptr inbounds %struct.envelope, %struct.envelope* %1552, i32 0, i32 25
  %1553 = load i8*, i8** %e_id2761, align 8, !tbaa !29
  %1554 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %1555 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1553, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), i32 %1554, i32 %1555)
  %1556 = load i64, i64* %dnow2752, align 8, !tbaa !10
  %add2762 = add nsw i64 %1556, 15
  store volatile i64 %add2762, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.2763

if.end.2763:                                      ; preds = %if.then.2760, %land.lhs.true.2756, %if.then.2750
  %call2764 = call i32 @sleep(i32 1)
  %1557 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1558 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2765 = call i8* @qid_printname(%struct.envelope* %1558)
  %1559 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2766 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1557, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call2765, i8* %1559, i8* %arraydecay2766)
  %1560 = bitcast i64* %dnow2752 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1560) #1
  br label %if.end.2767

if.end.2767:                                      ; preds = %if.end.2763, %land.lhs.true.2746, %sw.bb.2743
  %1561 = load volatile i32, i32* %features, align 4, !tbaa !5
  %and2768 = and i32 %1561, 32
  %cmp2769 = icmp ne i32 %and2768, 0
  br i1 %cmp2769, label %lor.lhs.false.2771, label %if.then.2775

lor.lhs.false.2771:                               ; preds = %if.end.2767
  %1562 = load volatile i32, i32* %features, align 4, !tbaa !5
  %and2772 = and i32 %1562, 64
  %cmp2773 = icmp ne i32 %and2772, 0
  br i1 %cmp2773, label %if.end.2776, label %if.then.2775

if.then.2775:                                     ; preds = %lor.lhs.false.2771, %if.end.2767
  call void (i8*, ...) @message(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.167, i32 0, i32 0))
  br label %sw.epilog.2987

if.end.2776:                                      ; preds = %lor.lhs.false.2771
  br label %do.body.2777

do.body.2777:                                     ; preds = %if.end.2776
  %1563 = load i32, i32* @MaxNOOPCommands, align 4, !tbaa !5
  %1564 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2778 = call i64 @checksmtpattack(i32* %n_noop, i32 %1563, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), %struct.envelope* %1564)
  %cmp2779 = icmp eq i64 %call2778, -1
  br i1 %cmp2779, label %if.then.2781, label %if.end.2782

if.then.2781:                                     ; preds = %do.body.2777
  br label %stopattack

if.end.2782:                                      ; preds = %do.body.2777
  br label %do.cond.2783

do.cond.2783:                                     ; preds = %if.end.2782
  br label %do.end.2784

do.end.2784:                                      ; preds = %do.cond.2783
  store i32 1, i32* @Verbose, align 4, !tbaa !5
  %1565 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @set_delivery_mode(i32 105, %struct.envelope* %1565)
  call void (i8*, ...) @message(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.168, i32 0, i32 0))
  br label %sw.epilog.2987

sw.bb.2785:                                       ; preds = %if.end.690, %if.end.690, %if.end.690
  %1566 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2786 = icmp sgt i32 %1566, 0
  br i1 %cmp2786, label %land.lhs.true.2788, label %if.end.2809

land.lhs.true.2788:                               ; preds = %sw.bb.2785
  %call2789 = call i32 @getla()
  store i32 %call2789, i32* @CurrentLA, align 4, !tbaa !5
  %1567 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2790 = icmp sge i32 %call2789, %1567
  br i1 %cmp2790, label %if.then.2792, label %if.end.2809

if.then.2792:                                     ; preds = %land.lhs.true.2788
  %1568 = bitcast i64* %dnow2794 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1568) #1
  %1569 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1570 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2795 = call i8* @qid_printname(%struct.envelope* %1570)
  %1571 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1572 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1569, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call2795, i8* %1571, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i32 0, i32 0), i32 %1572)
  %1573 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2796 = icmp sgt i32 %1573, 8
  br i1 %cmp2796, label %land.lhs.true.2798, label %if.end.2805

land.lhs.true.2798:                               ; preds = %if.then.2792
  %call2799 = call i64 @curtime()
  store i64 %call2799, i64* %dnow2794, align 8, !tbaa !10
  %1574 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp2800 = icmp sgt i64 %call2799, %1574
  br i1 %cmp2800, label %if.then.2802, label %if.end.2805

if.then.2802:                                     ; preds = %land.lhs.true.2798
  %1575 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2803 = getelementptr inbounds %struct.envelope, %struct.envelope* %1575, i32 0, i32 25
  %1576 = load i8*, i8** %e_id2803, align 8, !tbaa !29
  %1577 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %1578 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1576, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i32 0, i32 0), i32 %1577, i32 %1578)
  %1579 = load i64, i64* %dnow2794, align 8, !tbaa !10
  %add2804 = add nsw i64 %1579, 15
  store volatile i64 %add2804, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.2805

if.end.2805:                                      ; preds = %if.then.2802, %land.lhs.true.2798, %if.then.2792
  %call2806 = call i32 @sleep(i32 1)
  %1580 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1581 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2807 = call i8* @qid_printname(%struct.envelope* %1581)
  %1582 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2808 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1580, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call2807, i8* %1582, i8* %arraydecay2808)
  %1583 = bitcast i64* %dnow2794 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1583) #1
  br label %if.end.2809

if.end.2809:                                      ; preds = %if.end.2805, %land.lhs.true.2788, %sw.bb.2785
  %1584 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2810 = icmp sgt i32 %1584, 0
  br i1 %cmp2810, label %if.then.2812, label %if.end.2816

if.then.2812:                                     ; preds = %if.end.2809
  %1585 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2813 = getelementptr inbounds %struct.envelope, %struct.envelope* %1585, i32 0, i32 25
  %1586 = load i8*, i8** %e_id2813, align 8, !tbaa !29
  %1587 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_name2814 = getelementptr inbounds %struct.cmd, %struct.cmd* %1587, i32 0, i32 0
  %1588 = load i8*, i8** %cmd_name2814, align 8, !tbaa !49
  %1589 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %call2815 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 2, i8* %1586, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.170, i32 0, i32 0), i8* %1588, i8* %1589, i8* %call2815)
  br label %if.end.2816

if.end.2816:                                      ; preds = %if.then.2812, %if.end.2809
  br label %sw.bb.2817

sw.bb.2817:                                       ; preds = %if.end.690, %if.end.2816
  %1590 = load volatile i32, i32* %n_badcmds, align 4, !tbaa !5
  %inc2818 = add i32 %1590, 1
  store volatile i32 %inc2818, i32* %n_badcmds, align 4, !tbaa !5
  %cmp2819 = icmp ugt i32 %inc2818, 25
  br i1 %cmp2819, label %if.then.2821, label %if.end.2823

if.then.2821:                                     ; preds = %sw.bb.2817
  br label %stopattack

stopattack:                                       ; preds = %if.then.2821, %if.then.2781, %if.then.2682, %if.then.2548, %if.then.2227, %if.then.727
  %1591 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.51, i32 0, i32 0), i8* %1591)
  %1592 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue2822 = getelementptr inbounds %struct.envelope, %struct.envelope* %1592, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue2822, align 8, !tbaa !30
  br label %doquit

if.end.2823:                                      ; preds = %sw.bb.2817
  %sm_milterlist2824 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 4
  %1593 = load i32, i32* %sm_milterlist2824, align 4, !tbaa !16
  %tobool2825 = icmp ne i32 %1593, 0
  br i1 %tobool2825, label %land.lhs.true.2826, label %if.end.2930

land.lhs.true.2826:                               ; preds = %if.end.2823
  %sm_milterize2827 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %smtp, i32 0, i32 3
  %1594 = load i32, i32* %sm_milterize2827, align 4, !tbaa !15
  %tobool2828 = icmp ne i32 %1594, 0
  br i1 %tobool2828, label %land.lhs.true.2829, label %if.end.2930

land.lhs.true.2829:                               ; preds = %land.lhs.true.2826
  %1595 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2830 = getelementptr inbounds %struct.envelope, %struct.envelope* %1595, i32 0, i32 11
  %1596 = load i64, i64* %e_flags2830, align 8, !tbaa !26
  %and2831 = and i64 %1596, 16777216
  %cmp2832 = icmp ne i64 %and2831, 0
  br i1 %cmp2832, label %if.end.2930, label %if.then.2834

if.then.2834:                                     ; preds = %land.lhs.true.2829
  call void @llvm.lifetime.start(i64 1, i8* %state2836) #1
  %1597 = bitcast i8** %response2838 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1597) #1
  %1598 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp2839 = icmp sgt i32 %1598, 9
  br i1 %cmp2839, label %if.then.2841, label %if.end.2844

if.then.2841:                                     ; preds = %if.then.2834
  %1599 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2842 = getelementptr inbounds %struct.envelope, %struct.envelope* %1599, i32 0, i32 25
  %1600 = load i8*, i8** %e_id2842, align 8, !tbaa !29
  %arraydecay2843 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1600, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.171, i32 0, i32 0), i8* %arraydecay2843)
  br label %if.end.2844

if.end.2844:                                      ; preds = %if.then.2841, %if.then.2834
  %arraydecay2845 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %1601 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2846 = call i8* @milter_unknown(i8* %arraydecay2845, %struct.envelope* %1601, i8* %state2836)
  store i8* %call2846, i8** %response2838, align 8, !tbaa !1
  %1602 = bitcast i32* %savelogusrerrs2848 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1602) #1
  %1603 = load i32, i32* @LogUsrErrs, align 4, !tbaa !5
  store i32 %1603, i32* %savelogusrerrs2848, align 4, !tbaa !5
  store volatile i32 1, i32* %milter_cmd_fail, align 4, !tbaa !5
  %1604 = load i8, i8* %state2836, align 1, !tbaa !7
  %conv2849 = sext i8 %1604 to i32
  switch i32 %conv2849, label %sw.default.2900 [
    i32 52, label %sw.bb.2850
    i32 121, label %sw.bb.2860
    i32 114, label %sw.bb.2880
    i32 100, label %sw.bb.2886
    i32 116, label %sw.bb.2894
  ]

sw.bb.2850:                                       ; preds = %if.end.2844
  %1605 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp2851 = icmp sgt i32 %1605, 3
  br i1 %cmp2851, label %if.then.2853, label %if.end.2855

if.then.2853:                                     ; preds = %sw.bb.2850
  %1606 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2854 = getelementptr inbounds %struct.envelope, %struct.envelope* %1606, i32 0, i32 25
  %1607 = load i8*, i8** %e_id2854, align 8, !tbaa !29
  %1608 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1607, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.172, i32 0, i32 0), i8* %1608)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.2855

if.end.2855:                                      ; preds = %if.then.2853, %sw.bb.2850
  %1609 = bitcast i32* %tsave2857 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1609) #1
  %1610 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  store i32 %1610, i32* %tsave2857, align 4, !tbaa !5
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i32 0, i32 0))
  %1611 = load i32, i32* %tsave2857, align 4, !tbaa !5
  store i32 %1611, i32* @QuickAbort, align 4, !tbaa !5
  %1612 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue2858 = getelementptr inbounds %struct.envelope, %struct.envelope* %1612, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue2858, align 8, !tbaa !30
  store i32 2, i32* %cleanup.dest.slot
  %1613 = bitcast i32* %tsave2857 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1613) #1
  br label %cleanup.2906

sw.bb.2860:                                       ; preds = %if.end.2844
  %1614 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp2861 = icmp sgt i32 %1614, 3
  br i1 %cmp2861, label %if.then.2863, label %if.end.2865

if.then.2863:                                     ; preds = %sw.bb.2860
  %1615 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2864 = getelementptr inbounds %struct.envelope, %struct.envelope* %1615, i32 0, i32 25
  %1616 = load i8*, i8** %e_id2864, align 8, !tbaa !29
  %1617 = load i8*, i8** %addr, align 8, !tbaa !1
  %1618 = load i8*, i8** %response2838, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1616, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.172, i32 0, i32 0), i8* %1617, i8* %1618)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.2865

if.end.2865:                                      ; preds = %if.then.2863, %sw.bb.2860
  %1619 = load i8*, i8** %response2838, align 8, !tbaa !1
  %call2866 = call i32 @strncmp(i8* %1619, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #11
  %cmp2867 = icmp eq i32 %call2866, 0
  br i1 %cmp2867, label %if.then.2873, label %lor.lhs.false.2869

lor.lhs.false.2869:                               ; preds = %if.end.2865
  %1620 = load i8*, i8** %response2838, align 8, !tbaa !1
  %call2870 = call i32 @strncmp(i8* %1620, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4) #11
  %cmp2871 = icmp eq i32 %call2870, 0
  br i1 %cmp2871, label %if.then.2873, label %if.else.2878

if.then.2873:                                     ; preds = %lor.lhs.false.2869, %if.end.2865
  %1621 = bitcast i32* %tsave2875 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1621) #1
  %1622 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  store i32 %1622, i32* %tsave2875, align 4, !tbaa !5
  store i32 0, i32* @QuickAbort, align 4, !tbaa !5
  %1623 = load i8*, i8** %response2838, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %1623)
  %1624 = load i32, i32* %tsave2875, align 4, !tbaa !5
  store i32 %1624, i32* @QuickAbort, align 4, !tbaa !5
  %1625 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue2876 = getelementptr inbounds %struct.envelope, %struct.envelope* %1625, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue2876, align 8, !tbaa !30
  store i32 2, i32* %cleanup.dest.slot
  %1626 = bitcast i32* %tsave2875 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1626) #1
  br label %cleanup.2906

if.else.2878:                                     ; preds = %lor.lhs.false.2869
  %1627 = load i8*, i8** %response2838, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %1627)
  br label %if.end.2879

if.end.2879:                                      ; preds = %if.else.2878
  br label %sw.epilog.2901

sw.bb.2880:                                       ; preds = %if.end.2844
  %1628 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp2881 = icmp sgt i32 %1628, 3
  br i1 %cmp2881, label %if.then.2883, label %if.end.2885

if.then.2883:                                     ; preds = %sw.bb.2880
  %1629 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2884 = getelementptr inbounds %struct.envelope, %struct.envelope* %1629, i32 0, i32 25
  %1630 = load i8*, i8** %e_id2884, align 8, !tbaa !29
  %1631 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1630, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.172, i32 0, i32 0), i8* %1631)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.2885

if.end.2885:                                      ; preds = %if.then.2883, %sw.bb.2880
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i32 0, i32 0))
  br label %sw.epilog.2901

sw.bb.2886:                                       ; preds = %if.end.2844
  %1632 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp2887 = icmp sgt i32 %1632, 3
  br i1 %cmp2887, label %if.then.2889, label %if.end.2891

if.then.2889:                                     ; preds = %sw.bb.2886
  %1633 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2890 = getelementptr inbounds %struct.envelope, %struct.envelope* %1633, i32 0, i32 25
  %1634 = load i8*, i8** %e_id2890, align 8, !tbaa !29
  %1635 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1634, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.172, i32 0, i32 0), i8* %1635)
  br label %if.end.2891

if.end.2891:                                      ; preds = %if.then.2889, %sw.bb.2886
  %1636 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags2892 = getelementptr inbounds %struct.envelope, %struct.envelope* %1636, i32 0, i32 11
  %1637 = load i64, i64* %e_flags2892, align 8, !tbaa !26
  %or2893 = or i64 %1637, 16777216
  store i64 %or2893, i64* %e_flags2892, align 8, !tbaa !26
  store volatile i32 0, i32* %milter_cmd_fail, align 4, !tbaa !5
  br label %sw.epilog.2901

sw.bb.2894:                                       ; preds = %if.end.2844
  %1638 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp2895 = icmp sgt i32 %1638, 3
  br i1 %cmp2895, label %if.then.2897, label %if.end.2899

if.then.2897:                                     ; preds = %sw.bb.2894
  %1639 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2898 = getelementptr inbounds %struct.envelope, %struct.envelope* %1639, i32 0, i32 25
  %1640 = load i8*, i8** %e_id2898, align 8, !tbaa !29
  %1641 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1640, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.172, i32 0, i32 0), i8* %1641, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.2899

if.end.2899:                                      ; preds = %if.then.2897, %sw.bb.2894
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  br label %sw.epilog.2901

sw.default.2900:                                  ; preds = %if.end.2844
  store volatile i32 0, i32* %milter_cmd_fail, align 4, !tbaa !5
  br label %sw.epilog.2901

sw.epilog.2901:                                   ; preds = %sw.default.2900, %if.end.2899, %if.end.2891, %if.end.2885, %if.end.2879
  %1642 = load i32, i32* %savelogusrerrs2848, align 4, !tbaa !5
  store i32 %1642, i32* @LogUsrErrs, align 4, !tbaa !5
  %1643 = load i8*, i8** %response2838, align 8, !tbaa !1
  %cmp2902 = icmp ne i8* %1643, null
  br i1 %cmp2902, label %if.then.2904, label %if.end.2905

if.then.2904:                                     ; preds = %sw.epilog.2901
  %1644 = load i8*, i8** %response2838, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %1644, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3547)
  br label %if.end.2905

if.end.2905:                                      ; preds = %if.then.2904, %sw.epilog.2901
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2906

cleanup.2906:                                     ; preds = %if.end.2905, %if.then.2873, %if.end.2855
  %1645 = bitcast i32* %savelogusrerrs2848 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1645) #1
  %cleanup.dest.2907 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2907, label %cleanup.2926 [
    i32 0, label %cleanup.cont.2908
  ]

cleanup.cont.2908:                                ; preds = %cleanup.2906
  %1646 = load i8, i8* %state2836, align 1, !tbaa !7
  %conv2909 = sext i8 %1646 to i32
  %cmp2910 = icmp eq i32 %conv2909, 121
  br i1 %cmp2910, label %if.then.2924, label %lor.lhs.false.2912

lor.lhs.false.2912:                               ; preds = %cleanup.cont.2908
  %1647 = load i8, i8* %state2836, align 1, !tbaa !7
  %conv2913 = sext i8 %1647 to i32
  %cmp2914 = icmp eq i32 %conv2913, 114
  br i1 %cmp2914, label %if.then.2924, label %lor.lhs.false.2916

lor.lhs.false.2916:                               ; preds = %lor.lhs.false.2912
  %1648 = load i8, i8* %state2836, align 1, !tbaa !7
  %conv2917 = sext i8 %1648 to i32
  %cmp2918 = icmp eq i32 %conv2917, 116
  br i1 %cmp2918, label %if.then.2924, label %lor.lhs.false.2920

lor.lhs.false.2920:                               ; preds = %lor.lhs.false.2916
  %1649 = load i8, i8* %state2836, align 1, !tbaa !7
  %conv2921 = sext i8 %1649 to i32
  %cmp2922 = icmp eq i32 %conv2921, 52
  br i1 %cmp2922, label %if.then.2924, label %if.end.2925

if.then.2924:                                     ; preds = %lor.lhs.false.2920, %lor.lhs.false.2916, %lor.lhs.false.2912, %cleanup.cont.2908
  store i32 30, i32* %cleanup.dest.slot
  br label %cleanup.2926

if.end.2925:                                      ; preds = %lor.lhs.false.2920
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2926

cleanup.2926:                                     ; preds = %if.end.2925, %if.then.2924, %cleanup.2906
  %1650 = bitcast i8** %response2838 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1650) #1
  call void @llvm.lifetime.end(i64 1, i8* %state2836) #1
  %cleanup.dest.2928 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2928, label %unreachable [
    i32 0, label %cleanup.cont.2929
    i32 2, label %doquit
    i32 30, label %sw.epilog.2987
  ]

cleanup.cont.2929:                                ; preds = %cleanup.2926
  br label %if.end.2930

if.end.2930:                                      ; preds = %cleanup.cont.2929, %land.lhs.true.2829, %land.lhs.true.2826, %if.end.2823
  %arraydecay2931 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %call2932 = call i8* @shortenstring(i8* %arraydecay2931, i64 203)
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.173, i32 0, i32 0), i8* %call2932)
  br label %sw.epilog.2987

sw.bb.2933:                                       ; preds = %if.end.690
  %1651 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2934 = icmp sgt i32 %1651, 0
  br i1 %cmp2934, label %land.lhs.true.2936, label %if.end.2957

land.lhs.true.2936:                               ; preds = %sw.bb.2933
  %call2937 = call i32 @getla()
  store i32 %call2937, i32* @CurrentLA, align 4, !tbaa !5
  %1652 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2938 = icmp sge i32 %call2937, %1652
  br i1 %cmp2938, label %if.then.2940, label %if.end.2957

if.then.2940:                                     ; preds = %land.lhs.true.2936
  %1653 = bitcast i64* %dnow2942 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1653) #1
  %1654 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1655 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2943 = call i8* @qid_printname(%struct.envelope* %1655)
  %1656 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1657 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1654, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call2943, i8* %1656, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.174, i32 0, i32 0), i32 %1657)
  %1658 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2944 = icmp sgt i32 %1658, 8
  br i1 %cmp2944, label %land.lhs.true.2946, label %if.end.2953

land.lhs.true.2946:                               ; preds = %if.then.2940
  %call2947 = call i64 @curtime()
  store i64 %call2947, i64* %dnow2942, align 8, !tbaa !10
  %1659 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp2948 = icmp sgt i64 %call2947, %1659
  br i1 %cmp2948, label %if.then.2950, label %if.end.2953

if.then.2950:                                     ; preds = %land.lhs.true.2946
  %1660 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2951 = getelementptr inbounds %struct.envelope, %struct.envelope* %1660, i32 0, i32 25
  %1661 = load i8*, i8** %e_id2951, align 8, !tbaa !29
  %1662 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %1663 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1661, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.174, i32 0, i32 0), i32 %1662, i32 %1663)
  %1664 = load i64, i64* %dnow2942, align 8, !tbaa !10
  %add2952 = add nsw i64 %1664, 15
  store volatile i64 %add2952, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.2953

if.end.2953:                                      ; preds = %if.then.2950, %land.lhs.true.2946, %if.then.2940
  %call2954 = call i32 @sleep(i32 1)
  %1665 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1666 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2955 = call i8* @qid_printname(%struct.envelope* %1666)
  %1667 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2956 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1665, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call2955, i8* %1667, i8* %arraydecay2956)
  %1668 = bitcast i64* %dnow2942 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1668) #1
  br label %if.end.2957

if.end.2957:                                      ; preds = %if.end.2953, %land.lhs.true.2936, %sw.bb.2933
  %arraydecay2958 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %call2959 = call i8* @shortenstring(i8* %arraydecay2958, i64 203)
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.175, i32 0, i32 0), i8* %call2959)
  br label %sw.epilog.2987

sw.default.2960:                                  ; preds = %if.end.690
  %1669 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2961 = icmp sgt i32 %1669, 0
  br i1 %cmp2961, label %land.lhs.true.2963, label %if.end.2984

land.lhs.true.2963:                               ; preds = %sw.default.2960
  %call2964 = call i32 @getla()
  store i32 %call2964, i32* @CurrentLA, align 4, !tbaa !5
  %1670 = load i32, i32* @DelayLA, align 4, !tbaa !5
  %cmp2965 = icmp sge i32 %call2964, %1670
  br i1 %cmp2965, label %if.then.2967, label %if.end.2984

if.then.2967:                                     ; preds = %land.lhs.true.2963
  %1671 = bitcast i64* %dnow2969 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1671) #1
  %1672 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1673 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2970 = call i8* @qid_printname(%struct.envelope* %1673)
  %1674 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %1675 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1672, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %call2970, i8* %1674, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0), i32 %1675)
  %1676 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp2971 = icmp sgt i32 %1676, 8
  br i1 %cmp2971, label %land.lhs.true.2973, label %if.end.2980

land.lhs.true.2973:                               ; preds = %if.then.2967
  %call2974 = call i64 @curtime()
  store i64 %call2974, i64* %dnow2969, align 8, !tbaa !10
  %1677 = load volatile i64, i64* %log_delay, align 8, !tbaa !10
  %cmp2975 = icmp sgt i64 %call2974, %1677
  br i1 %cmp2975, label %if.then.2977, label %if.end.2980

if.then.2977:                                     ; preds = %land.lhs.true.2973
  %1678 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id2978 = getelementptr inbounds %struct.envelope, %struct.envelope* %1678, i32 0, i32 25
  %1679 = load i8*, i8** %e_id2978, align 8, !tbaa !29
  %1680 = load i32, i32* @CurrentLA, align 4, !tbaa !5
  %1681 = load i32, i32* @DelayLA, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %1679, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0), i32 %1680, i32 %1681)
  %1682 = load i64, i64* %dnow2969, align 8, !tbaa !10
  %add2979 = add nsw i64 %1682, 15
  store volatile i64 %add2979, i64* %log_delay, align 8, !tbaa !10
  br label %if.end.2980

if.end.2980:                                      ; preds = %if.then.2977, %land.lhs.true.2973, %if.then.2967
  %call2981 = call i32 @sleep(i32 1)
  %1683 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %1684 = load volatile %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call2982 = call i8* @qid_printname(%struct.envelope* %1684)
  %1685 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %arraydecay2983 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %1683, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* %call2982, i8* %1685, i8* %arraydecay2983)
  %1686 = bitcast i64* %dnow2969 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1686) #1
  br label %if.end.2984

if.end.2984:                                      ; preds = %if.end.2980, %land.lhs.true.2963, %sw.default.2960
  %call2985 = call i32* @__errno_location() #10
  store i32 0, i32* %call2985, align 4, !tbaa !5
  %1687 = load volatile %struct.cmd*, %struct.cmd** %c, align 8, !tbaa !1
  %cmd_code2986 = getelementptr inbounds %struct.cmd, %struct.cmd* %1687, i32 0, i32 1
  %1688 = load i32, i32* %cmd_code2986, align 4, !tbaa !52
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.177, i32 0, i32 0), i32 %1688)
  br label %sw.epilog.2987

sw.epilog.2987:                                   ; preds = %if.end.2984, %if.end.2957, %if.end.2930, %cleanup.2926, %do.end.2784, %if.then.2775, %do.end.2685, %if.end.2652, %if.end.2627, %if.then.2619, %cleanup.2605, %if.then.2558, %if.then.2542, %if.end.2537, %if.end.2529, %cleanup.cont.2481, %if.then.2269, %if.then.2264, %if.end.2254, %if.end.2219, %do.end.2178, %if.end.2103, %cleanup.cont.2074, %if.then.1496, %undo, %cleanup.cont.1424, %if.end.1083, %if.then.1075, %if.then.1070, %if.then.1066, %if.end.1035, %if.then.993, %if.then.989, %if.end.824, %if.end.747, %if.then.736
  br label %if.end.2988

if.end.2988:                                      ; preds = %sw.epilog.2987, %do.body.370
  %eh_state2989 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %1689 = load i32, i32* %eh_state2989, align 4, !tbaa !42
  %cmp2990 = icmp eq i32 %1689, 1
  br i1 %cmp2990, label %if.then.2992, label %if.end.2993

if.then.2992:                                     ; preds = %if.end.2988
  br label %do.end.3019

if.end.2993:                                      ; preds = %if.end.2988
  %eh_state2994 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %1690 = load i32, i32* %eh_state2994, align 4, !tbaa !42
  %cmp2995 = icmp eq i32 %1690, 2
  br i1 %cmp2995, label %if.then.2997, label %if.end.3004

if.then.2997:                                     ; preds = %if.end.2993
  %1691 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp2998 = icmp eq %struct.sm_exc_handler* %1691, %_h
  br i1 %cmp2998, label %lor.end.3001, label %lor.rhs.3000

lor.rhs.3000:                                     ; preds = %if.then.2997
  call void @sm_abort_at(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3579, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.3001

lor.end.3001:                                     ; preds = %1692, %if.then.2997
  %1693 = phi i1 [ true, %if.then.2997 ], [ false, %1692 ]
  %lor.ext3002 = zext i1 %1693 to i32
  %eh_parent3003 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  %1694 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent3003, align 8, !tbaa !41
  store %struct.sm_exc_handler* %1694, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  br label %if.end.3004

if.end.3004:                                      ; preds = %lor.end.3001, %if.end.2993
  %eh_value3005 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %1695 = load %struct.sm_exc*, %struct.sm_exc** %eh_value3005, align 8, !tbaa !39
  %call3006 = call i32 @sm_exc_match(%struct.sm_exc* %1695, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0))
  %tobool3007 = icmp ne i32 %call3006, 0
  %cond3008 = select i1 %tobool3007, i32 1, i32 0
  %eh_state3009 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  store i32 %cond3008, i32* %eh_state3009, align 4, !tbaa !42
  %eh_state3010 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %1696 = load i32, i32* %eh_state3010, align 4, !tbaa !42
  %cmp3011 = icmp eq i32 %1696, 1
  br i1 %cmp3011, label %if.then.3013, label %if.end.3017

if.then.3013:                                     ; preds = %if.end.3004
  %1697 = bitcast %struct.sm_exc** %exc3015 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1697) #1
  %eh_value3016 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %1698 = load %struct.sm_exc*, %struct.sm_exc** %eh_value3016, align 8, !tbaa !39
  store %struct.sm_exc* %1698, %struct.sm_exc** %exc3015, align 8, !tbaa !1
  %1699 = bitcast %struct.sm_exc** %exc3015 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1699) #1
  br label %if.end.3017

if.end.3017:                                      ; preds = %if.then.3013, %if.end.3004
  br label %do.cond.3018

do.cond.3018:                                     ; preds = %if.end.3017, %if.end.688
  br label %do.end.3019

do.end.3019:                                      ; preds = %do.cond.3018, %if.then.2992
  %eh_state3020 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %1700 = load i32, i32* %eh_state3020, align 4, !tbaa !42
  %cmp3021 = icmp eq i32 %1700, 2
  br i1 %cmp3021, label %if.then.3023, label %if.else.3036

if.then.3023:                                     ; preds = %do.end.3019
  %1701 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp3024 = icmp eq %struct.sm_exc_handler* %1701, %_h
  br i1 %cmp3024, label %lor.end.3027, label %lor.rhs.3026

lor.rhs.3026:                                     ; preds = %if.then.3023
  call void @sm_abort_at(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3586, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.3027

lor.end.3027:                                     ; preds = %1702, %if.then.3023
  %1703 = phi i1 [ true, %if.then.3023 ], [ false, %1702 ]
  %lor.ext3028 = zext i1 %1703 to i32
  %eh_parent3029 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  %1704 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent3029, align 8, !tbaa !41
  store %struct.sm_exc_handler* %1704, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_value3030 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %1705 = load %struct.sm_exc*, %struct.sm_exc** %eh_value3030, align 8, !tbaa !39
  %cmp3031 = icmp ne %struct.sm_exc* %1705, null
  br i1 %cmp3031, label %if.then.3033, label %if.end.3035

if.then.3033:                                     ; preds = %lor.end.3027
  %eh_value3034 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %1706 = load %struct.sm_exc*, %struct.sm_exc** %eh_value3034, align 8, !tbaa !39
  call void @sm_exc_raise_x(%struct.sm_exc* %1706) #12
  unreachable

if.end.3035:                                      ; preds = %lor.end.3027
  br label %if.end.3050

if.else.3036:                                     ; preds = %do.end.3019
  %eh_state3037 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %1707 = load i32, i32* %eh_state3037, align 4, !tbaa !42
  %cmp3038 = icmp eq i32 %1707, 0
  br i1 %cmp3038, label %if.then.3040, label %if.else.3047

if.then.3040:                                     ; preds = %if.else.3036
  %eh_value3041 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %1708 = load %struct.sm_exc*, %struct.sm_exc** %eh_value3041, align 8, !tbaa !39
  %cmp3042 = icmp ne %struct.sm_exc* %1708, null
  br i1 %cmp3042, label %if.then.3044, label %if.end.3046

if.then.3044:                                     ; preds = %if.then.3040
  %eh_value3045 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %1709 = load %struct.sm_exc*, %struct.sm_exc** %eh_value3045, align 8, !tbaa !39
  call void @sm_exc_raise_x(%struct.sm_exc* %1709) #12
  unreachable

if.end.3046:                                      ; preds = %if.then.3040
  br label %if.end.3049

if.else.3047:                                     ; preds = %if.else.3036
  %eh_value3048 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %1710 = load %struct.sm_exc*, %struct.sm_exc** %eh_value3048, align 8, !tbaa !39
  call void @sm_exc_free(%struct.sm_exc* %1710)
  br label %if.end.3049

if.end.3049:                                      ; preds = %if.else.3047, %if.end.3046
  br label %if.end.3050

if.end.3050:                                      ; preds = %if.end.3049, %if.end.3035
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.3051

cleanup.3051:                                     ; preds = %if.end.3050, %if.then.2741, %if.end.419, %cleanup.2072, %cleanup.1422, %cleanup.981, %cleanup.462
  %1711 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.end(i64 224, i8* %1711) #1
  %cleanup.dest.3052 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.3052, label %cleanup.3054 [
    i32 0, label %cleanup.cont.3053
  ]

cleanup.cont.3053:                                ; preds = %cleanup.3051
  br label %for.cond

cleanup.3054:                                     ; preds = %cleanup.3051, %cleanup.152, %cleanup
  %1712 = bitcast i64* %inplen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1712) #1
  %1713 = bitcast %struct.address* %addr_st to i8*
  call void @llvm.lifetime.end(i64 192, i8* %1713) #1
  %1714 = bitcast i32* %milter_cmd_fail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1714) #1
  %1715 = bitcast i32* %milter_rcpt_added to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1715) #1
  %1716 = bitcast i32* %milter_cmd_safe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1716) #1
  %1717 = bitcast i32* %milter_cmd_done to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1717) #1
  %1718 = bitcast i64* %log_delay to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1718) #1
  %1719 = bitcast i32* %features to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1719) #1
  %1720 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1720) #1
  %1721 = bitcast [2048 x i8]* %cmdbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %1721) #1
  %1722 = bitcast [2048 x i8]* %inp to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %1722) #1
  %1723 = bitcast [20 x i8*]* %args to i8*
  call void @llvm.lifetime.end(i64 160, i8* %1723) #1
  %1724 = bitcast %struct.queue_char** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1724) #1
  %1725 = bitcast i8** %hostname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1725) #1
  %1726 = bitcast i8** %greetmsg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1726) #1
  %1727 = bitcast i8** %greetcode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1727) #1
  %1728 = bitcast i8** %addr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1728) #1
  %1729 = bitcast %struct.SMTP_T* %smtp to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1729) #1
  %1730 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1730) #1
  %1731 = bitcast i32* %lognullconnection to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1731) #1
  %1732 = bitcast i64* %previous to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1732) #1
  %1733 = bitcast i64* %wt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1733) #1
  %1734 = bitcast i32* %tempfail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1734) #1
  %1735 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1735) #1
  %1736 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1736) #1
  %1737 = bitcast i32* %n_helo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1737) #1
  %1738 = bitcast i32* %n_noop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1738) #1
  %1739 = bitcast i32* %n_etrn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1739) #1
  %1740 = bitcast i32* %n_verifies to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1740) #1
  %1741 = bitcast i32* %n_badrcpts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1741) #1
  %1742 = bitcast i32* %n_badcmds to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1742) #1
  %1743 = bitcast i8** %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1743) #1
  %1744 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1744) #1
  %1745 = bitcast i8** %peerhostname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1745) #1
  %1746 = bitcast i8** %sendinghost to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1746) #1
  %1747 = bitcast i8** %protocol to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1747) #1
  %1748 = bitcast i32* %vrfy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1748) #1
  %1749 = bitcast i32* %gothello to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1749) #1
  %1750 = bitcast %struct.address** %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1750) #1
  %1751 = bitcast %struct.address** %vrfyqueue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1751) #1
  %1752 = bitcast i8** %cmd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1752) #1
  %1753 = bitcast %struct.cmd** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1753) #1
  %1754 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1754) #1
  ret void

unreachable:                                      ; preds = %cleanup.2926, %cleanup.2479
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @setup_smtpd_io() #0 {
entry:
  %inchfd = alloca i32, align 4
  %outchfd = alloca i32, align 4
  %outfd = alloca i32, align 4
  %inmode = alloca i32, align 4
  %outmode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i32* %inchfd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %outchfd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %outfd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.sm_file*, %struct.sm_file** @InChannel, align 8, !tbaa !1
  %call = call i32 @sm_io_getinfo(%struct.sm_file* %3, i32 3, i8* null)
  store i32 %call, i32* %inchfd, align 4, !tbaa !5
  %4 = load %struct.sm_file*, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  %call1 = call i32 @sm_io_getinfo(%struct.sm_file* %4, i32 3, i8* null)
  store i32 %call1, i32* %outchfd, align 4, !tbaa !5
  %call2 = call i32 @sm_io_getinfo(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 3, i8* null)
  store i32 %call2, i32* %outfd, align 4, !tbaa !5
  %5 = load i32, i32* %outchfd, align 4, !tbaa !5
  %6 = load i32, i32* %outfd, align 4, !tbaa !5
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %outchfd, align 4, !tbaa !5
  %8 = load i32, i32* %outfd, align 4, !tbaa !5
  %call3 = call i32 @dup2(i32 %7, i32 %8) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %inchfd, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %outchfd, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.56

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %11 = load i32, i32* %inchfd, align 4, !tbaa !5
  %call7 = call i32 @isatty(i32 %11) #1
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %land.lhs.true.8, label %if.end.56

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %12 = load i32, i32* %outchfd, align 4, !tbaa !5
  %call9 = call i32 @isatty(i32 %12) #1
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.56

if.then.11:                                       ; preds = %land.lhs.true.8
  %13 = bitcast i32* %inmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %outmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %inchfd, align 4, !tbaa !5
  %call12 = call i32 (i32, i32, ...) @fcntl(i32 %15, i32 3, i32 0)
  store i32 %call12, i32* %inmode, align 4, !tbaa !5
  %16 = load i32, i32* %inmode, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %16, -1
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.then.11
  %17 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %17, 11
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.14
  %call17 = call i32* @__errno_location() #10
  %18 = load i32, i32* %call17, align 4, !tbaa !5
  %call18 = call i8* @sm_errstring(i32 %18)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.283, i32 0, i32 0), i8* %call18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.14
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.11
  %19 = load i32, i32* %outchfd, align 4, !tbaa !5
  %call21 = call i32 (i32, i32, ...) @fcntl(i32 %19, i32 3, i32 0)
  store i32 %call21, i32* %outmode, align 4, !tbaa !5
  %20 = load i32, i32* %outmode, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %20, -1
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end.20
  %21 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %21, 11
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.then.23
  %call26 = call i32* @__errno_location() #10
  %22 = load i32, i32* %call26, align 4, !tbaa !5
  %call27 = call i8* @sm_errstring(i32 %22)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.284, i32 0, i32 0), i8* %call27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.then.23
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.20
  %23 = load i32, i32* %inmode, align 4, !tbaa !5
  %and = and i32 %23, 2048
  %cmp30 = icmp ne i32 %and, 0
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %24 = load i32, i32* %outmode, align 4, !tbaa !5
  %and31 = and i32 %24, 2048
  %cmp32 = icmp ne i32 %and31, 0
  br i1 %cmp32, label %if.then.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false
  %25 = load i32, i32* %inchfd, align 4, !tbaa !5
  %26 = load i32, i32* %inmode, align 4, !tbaa !5
  %or = or i32 %26, 2048
  %call34 = call i32 (i32, i32, ...) @fcntl(i32 %25, i32 4, i32 %or)
  %cmp35 = icmp eq i32 %call34, -1
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.33, %lor.lhs.false, %if.end.29
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %lor.lhs.false.33
  %27 = load i32, i32* %outchfd, align 4, !tbaa !5
  %call38 = call i32 (i32, i32, ...) @fcntl(i32 %27, i32 3, i32 0)
  store i32 %call38, i32* %outmode, align 4, !tbaa !5
  %28 = load i32, i32* %outmode, align 4, !tbaa !5
  %cmp39 = icmp ne i32 %28, -1
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.53

land.lhs.true.40:                                 ; preds = %if.end.37
  %29 = load i32, i32* %outmode, align 4, !tbaa !5
  %and41 = and i32 %29, 2048
  %cmp42 = icmp ne i32 %and41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.53

if.then.43:                                       ; preds = %land.lhs.true.40
  %30 = load %struct.sm_file*, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  %31 = load %struct.sm_file*, %struct.sm_file** @InChannel, align 8, !tbaa !1
  call void @sm_io_automode(%struct.sm_file* %30, %struct.sm_file* %31)
  %32 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 97), align 1, !tbaa !7
  %conv = zext i8 %32 to i32
  %cmp44 = icmp sge i32 %conv, 4
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.52

land.lhs.true.46:                                 ; preds = %if.then.43
  %33 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool47 = icmp ne i32 %33, 0
  br i1 %tobool47, label %if.end.52, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %land.lhs.true.46
  %34 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp49 = icmp sgt i32 %34, 9
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.48
  %35 = load i32, i32* %inchfd, align 4, !tbaa !5
  %36 = load i32, i32* %outchfd, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.285, i32 0, i32 0), i32 %35, i32 %36)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.48, %land.lhs.true.46, %if.then.43
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %land.lhs.true.40, %if.end.37
  %37 = load i32, i32* %inchfd, align 4, !tbaa !5
  %38 = load i32, i32* %inmode, align 4, !tbaa !5
  %call54 = call i32 (i32, i32, ...) @fcntl(i32 %37, i32 4, i32 %38)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.36, %if.end.28, %if.end.19
  %39 = bitcast i32* %outmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %inmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.57 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.56

if.end.56:                                        ; preds = %cleanup.cont, %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.57

cleanup.57:                                       ; preds = %if.end.56, %cleanup
  %41 = bitcast i32* %outfd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %outchfd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %inchfd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %cleanup.dest.60 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.60, label %unreachable [
    i32 0, label %cleanup.cont.61
    i32 1, label %cleanup.cont.61
  ]

cleanup.cont.61:                                  ; preds = %cleanup.57, %cleanup.57
  ret void

unreachable:                                      ; preds = %cleanup.57
  unreachable
}

declare i32 @sm_debug_loadactive(%struct.sm_debug*, i32) #3

declare %struct.SM_RPOOL_T* @sm_rpool_new_x(%struct.SM_RPOOL_T*) #3

declare void @settime(%struct.envelope*) #3

declare void @sm_getla() #3

declare i8* @macvalue(i32, %struct.envelope*) #3

declare %struct.sm_file* @sm_io_autoflush(%struct.sm_file*, %struct.sm_file*) #3

declare void @sm_setproctitle(i32, %struct.envelope*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @srvfeatures(%struct.envelope* %e, i8* %clientname, i32 %features) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %clientname.addr = alloca i8*, align 8
  %features.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pvp = alloca i8**, align 8
  %c = alloca i8, align 1
  %opt = alloca i8, align 1
  %pvpbuf = alloca [1256 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %clientname, i8** %clientname.addr, align 8, !tbaa !1
  store i32 %features, i32* %features.addr, align 4, !tbaa !5
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  call void @llvm.lifetime.start(i64 1, i8* %opt) #1
  %4 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 1256, i8* %4) #1
  store i8** null, i8*** %pvp, align 8, !tbaa !1
  %5 = load i8*, i8** %clientname.addr, align 8, !tbaa !1
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf, i32 0, i32 0
  %call = call i32 @rscap(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.295, i32 0, i32 0), i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %struct.envelope* %6, i8*** %pvp, i8* %arraydecay, i32 1256)
  store i32 %call, i32* %r, align 4, !tbaa !5
  %7 = load i32, i32* %r, align 4, !tbaa !5
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %features.addr, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %cmp1 = icmp eq i8** %9, null
  br i1 %cmp1, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %11, null
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %12 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv = sext i8 %14 to i32
  %and = and i32 %conv, 255
  %cmp6 = icmp ne i32 %and, 150
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.end
  %15 = load i32, i32* %features.addr, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false.3
  %16 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8*, i8** %16, i64 1
  %17 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  %cmp11 = icmp ne i8* %17, null
  br i1 %cmp11, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.9
  %18 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8*, i8** %18, i64 1
  %19 = load i8*, i8** %arrayidx13, align 8, !tbaa !1
  %call14 = call i32 @sm_strncasecmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.296, i32 0, i32 0), i64 4)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  store i32 4096, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %land.lhs.true, %if.end.9
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %20 to i64
  %21 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx19, align 8, !tbaa !1
  %cmp20 = icmp ne i8* %22, null
  br i1 %cmp20, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %23 to i64
  %24 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8*, i8** %24, i64 %idxprom22
  %25 = load i8*, i8** %arrayidx23, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  store i8 %26, i8* %c, align 1, !tbaa !7
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %if.end.59, %for.body
  %27 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [12 x %struct.anon.3], [12 x %struct.anon.3]* @srv_feat_table, i32 0, i64 %idxprom26
  %srvf_opt = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx27, i32 0, i32 0
  %28 = load i8, i8* %srvf_opt, align 1, !tbaa !78
  store i8 %28, i8* %opt, align 1, !tbaa !7
  %conv28 = sext i8 %28 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %for.cond.25
  %29 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %29, 9
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.then.31
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %30, i32 0, i32 25
  %31 = load i8*, i8** %e_id, align 8, !tbaa !29
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %32 to i64
  %33 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8*, i8** %33, i64 %idxprom35
  %34 = load i8*, i8** %arrayidx36, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.297, i32 0, i32 0), i8* %34)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.then.31
  br label %for.end

if.end.38:                                        ; preds = %for.cond.25
  %35 = load i8, i8* %c, align 1, !tbaa !7
  %conv39 = sext i8 %35 to i32
  %36 = load i8, i8* %opt, align 1, !tbaa !7
  %conv40 = sext i8 %36 to i32
  %cmp41 = icmp eq i32 %conv39, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.38
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds [12 x %struct.anon.3], [12 x %struct.anon.3]* @srv_feat_table, i32 0, i64 %idxprom44
  %srvf_flag = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx45, i32 0, i32 1
  %38 = load i32, i32* %srvf_flag, align 4, !tbaa !80
  %neg = xor i32 %38, -1
  %39 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and46 = and i32 %39, %neg
  store i32 %and46, i32* %features.addr, align 4, !tbaa !5
  br label %for.end

if.end.47:                                        ; preds = %if.end.38
  %40 = load i8, i8* %c, align 1, !tbaa !7
  %conv48 = sext i8 %40 to i32
  %41 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i8, i8* %opt, align 1, !tbaa !7
  %conv49 = sext i8 %42 to i32
  %idxprom50 = sext i32 %conv49 to i64
  %call51 = call i32** @__ctype_tolower_loc() #10
  %43 = load i32*, i32** %call51, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i32, i32* %43, i64 %idxprom50
  %44 = load i32, i32* %arrayidx52, align 4, !tbaa !5
  store i32 %44, i32* %__res, align 4, !tbaa !5
  %45 = load i32, i32* %__res, align 4, !tbaa !5
  store i32 %45, i32* %tmp, !tbaa !5
  %46 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %tmp, !tbaa !5
  %cmp53 = icmp eq i32 %conv48, %47
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.end.47
  %48 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom56 = sext i32 %48 to i64
  %arrayidx57 = getelementptr inbounds [12 x %struct.anon.3], [12 x %struct.anon.3]* @srv_feat_table, i32 0, i64 %idxprom56
  %srvf_flag58 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx57, i32 0, i32 1
  %49 = load i32, i32* %srvf_flag58, align 4, !tbaa !80
  %50 = load i32, i32* %features.addr, align 4, !tbaa !5
  %or = or i32 %50, %49
  store i32 %or, i32* %features.addr, align 4, !tbaa !5
  br label %for.end

if.end.59:                                        ; preds = %if.end.47
  %51 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.25

for.end:                                          ; preds = %if.then.55, %if.then.43, %if.end.37
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %inc60 = add nsw i32 %52, 1
  store i32 %inc60, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %53 = load i32, i32* %features.addr, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.61, %if.then.17, %if.then.8, %if.then
  %54 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 1256, i8* %54) #1
  call void @llvm.lifetime.end(i64 1, i8* %opt) #1
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %55 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare void @sm_syslog(i32, i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare void @message(i8*, ...) #3

declare i32 @milter_init(%struct.envelope*, i8*, %struct.milters*) #3

declare i32 @macid_parse(i8*, i8**) #3

; Function Attrs: noreturn
declare void @sm_abort_at(i8*, i32, i8*) #5

declare i8* @milter_connect(i8*, %union.bigsockaddr* byval align 8, %struct.envelope*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @anynet_ntoa(%union.bigsockaddr*) #3

declare void @sm_free_tagged(i8*, i8*, i32) #3

declare i32 @rscap(i8*, i8*, i8*, %struct.envelope*, i8***, i8*, i32) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #6

declare i32 @sm_io_getinfo(%struct.sm_file*, i32, i8*) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #6

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

declare i32 @sm_io_getc(%struct.sm_file*, i32) #3

declare i32 @sm_io_ungetc(%struct.sm_file*, i32, i32) #3

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #3

declare void @expand(i8*, i8*, i64, %struct.envelope*) #3

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #3

declare i8* @newstr(i8*) #3

declare i8* @sm_strdup_x(i8*) #3

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(%struct.__jmp_buf_tag*, i32) #7

declare i32 @sm_io_flush(%struct.sm_file*, i32) #3

declare i8* @sfgets(i8*, i32, %struct.sm_file*, i64, i8*) #3

declare void @disconnect(i32, %struct.envelope*) #3

declare void @milter_quit(%struct.envelope*) #3

declare i32 @sm_strncasecmp(i8*, i8*, i64) #3

declare void @fixcrlf(i8*, i32) #3

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #3

declare i32 @sm_strcasecmp(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i8* @qid_printname(%struct.envelope*) #3

declare i32 @getla() #3

declare i64 @curtime() #3

declare i32 @sleep(i32) #3

; Function Attrs: nounwind uwtable
define internal i64 @checksmtpattack(i32* %pcounter, i32 %maxcount, i32 %waitnow, i8* %cname, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i64, align 8
  %pcounter.addr = alloca i32*, align 8
  %maxcount.addr = alloca i32, align 4
  %waitnow.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %shift = alloca i32, align 4
  %s = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %pcounter, i32** %pcounter.addr, align 8, !tbaa !1
  store i32 %maxcount, i32* %maxcount.addr, align 4, !tbaa !5
  store i32 %waitnow, i32* %waitnow.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i32, i32* %maxcount.addr, align 4, !tbaa !5
  %cmp = icmp ule i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %pcounter.addr, align 8, !tbaa !1
  %2 = load volatile i32, i32* %1, align 4, !tbaa !5
  %inc = add i32 %2, 1
  store volatile i32 %inc, i32* %1, align 4, !tbaa !5
  %3 = load i32, i32* %maxcount.addr, align 4, !tbaa !5
  %cmp1 = icmp uge i32 %inc, %3
  br i1 %cmp1, label %if.then.2, label %if.end.45

if.then.2:                                        ; preds = %if.end
  %4 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32*, i32** %pcounter.addr, align 8, !tbaa !1
  %7 = load volatile i32, i32* %6, align 4, !tbaa !5
  %8 = load i32, i32* %maxcount.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.then.2
  %9 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %9, 5
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  %10 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %10, i32 0, i32 25
  %11 = load i8*, i8** %e_id, align 8, !tbaa !29
  %12 = load i8*, i8** @CurSmtpClient, align 8, !tbaa !1
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %14 = load i32*, i32** %pcounter.addr, align 8, !tbaa !1
  %15 = load volatile i32, i32* %14, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.282, i32 0, i32 0), i8* %12, i8* %13, i32 %15)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %if.then.2
  %16 = load i32*, i32** %pcounter.addr, align 8, !tbaa !1
  %17 = load volatile i32, i32* %16, align 4, !tbaa !5
  %18 = load i32, i32* %maxcount.addr, align 4, !tbaa !5
  %sub = sub i32 %17, %18
  store i32 %sub, i32* %shift, align 4, !tbaa !5
  %19 = load i32, i32* %shift, align 4, !tbaa !5
  %shl = shl i32 1, %19
  %conv = sext i32 %shl to i64
  store i64 %conv, i64* %s, align 8, !tbaa !10
  %20 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp7 = icmp ugt i32 %20, 8
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %21 = load i64, i64* %s, align 8, !tbaa !10
  %cmp9 = icmp sge i64 %21, 240
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %22 = load i64, i64* %s, align 8, !tbaa !10
  %cmp12 = icmp sle i64 %22, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false, %if.end.6
  store i64 240, i64* %s, align 8, !tbaa !10
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %lor.lhs.false.11
  %23 = load i32*, i32** %pcounter.addr, align 8, !tbaa !1
  %24 = load volatile i32, i32* %23, align 4, !tbaa !5
  %25 = load i32, i32* %maxcount.addr, align 4, !tbaa !5
  %div = udiv i32 %24, %25
  %call = call i32 @sleep(i32 %div)
  %26 = load i32*, i32** %pcounter.addr, align 8, !tbaa !1
  %27 = load volatile i32, i32* %26, align 4, !tbaa !5
  %28 = load i32, i32* %maxcount.addr, align 4, !tbaa !5
  %div16 = udiv i32 %27, %28
  %conv17 = zext i32 %div16 to i64
  %29 = load i64, i64* %s, align 8, !tbaa !10
  %sub18 = sub nsw i64 %29, %conv17
  store i64 %sub18, i64* %s, align 8, !tbaa !10
  %30 = load i64, i64* %s, align 8, !tbaa !10
  %cmp19 = icmp sge i64 %30, 240
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end.15
  %31 = load i64, i64* %s, align 8, !tbaa !10
  %cmp22 = icmp slt i64 %31, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.21, %if.end.15
  store i64 240, i64* %s, align 8, !tbaa !10
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %lor.lhs.false.21
  %32 = load i32, i32* %waitnow.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %land.lhs.true.26, label %if.end.36

land.lhs.true.26:                                 ; preds = %if.end.25
  %33 = load i64, i64* %s, align 8, !tbaa !10
  %cmp27 = icmp sgt i64 %33, 0
  br i1 %cmp27, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %land.lhs.true.26
  %34 = load i64, i64* %s, align 8, !tbaa !10
  %conv30 = trunc i64 %34 to i32
  %call31 = call i32 @sleep(i32 %conv30)
  %35 = load i32, i32* @MaxChildren, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %35, 0
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.29
  %36 = load i32*, i32** %pcounter.addr, align 8, !tbaa !1
  %37 = load volatile i32, i32* %36, align 4, !tbaa !5
  %38 = load i32, i32* %maxcount.addr, align 4, !tbaa !5
  %mul = mul i32 %38, 2
  %cmp34 = icmp uge i32 %37, %mul
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.29
  %39 = phi i1 [ false, %if.then.29 ], [ %cmp34, %land.rhs ]
  %cond = select i1 %39, i64 -1, i64 0
  store i64 %cond, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %land.lhs.true.26, %if.end.25
  %40 = load i32, i32* @MaxChildren, align 4, !tbaa !5
  %cmp37 = icmp sgt i32 %40, 0
  br i1 %cmp37, label %land.lhs.true.39, label %cond.false

land.lhs.true.39:                                 ; preds = %if.end.36
  %41 = load i32*, i32** %pcounter.addr, align 8, !tbaa !1
  %42 = load volatile i32, i32* %41, align 4, !tbaa !5
  %43 = load i32, i32* %maxcount.addr, align 4, !tbaa !5
  %mul40 = mul i32 %43, 2
  %cmp41 = icmp uge i32 %42, %mul40
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.39
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.39, %if.end.36
  %44 = load i64, i64* %s, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond43 = phi i64 [ -1, %cond.true ], [ %44, %cond.false ]
  store i64 %cond43, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %land.end
  %45 = bitcast i64* %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  br label %return

if.end.45:                                        ; preds = %if.end
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.45, %cleanup, %if.then
  %47 = load i64, i64* %retval
  ret i64 %47
}

declare void @milter_abort(%struct.envelope*) #3

; Function Attrs: nounwind uwtable
define void @logundelrcpts(%struct.envelope* %e, i8* %msg, i32 %level, i32 %all) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %msg.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %all.addr = alloca i32, align 4
  %a = alloca %struct.address*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  store i32 %level, i32* %level.addr, align 4, !tbaa !5
  store i32 %all, i32* %all.addr, align 4, !tbaa !5
  %0 = bitcast %struct.address** %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %2 = load i32, i32* %level.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !7
  %conv = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 46
  %7 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 104, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 4300, i32 %7)
  %8 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 7
  %9 = load %struct.address*, %struct.address** %e_sendqueue, align 8, !tbaa !30
  store %struct.address* %9, %struct.address** %a, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.address* %10, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %11, i32 0, i32 21
  %12 = load i16, i16* %q_state, align 2, !tbaa !66
  %conv7 = sext i16 %12 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.end.26, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %for.body
  %13 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state11 = getelementptr inbounds %struct.address, %struct.address* %13, i32 0, i32 21
  %14 = load i16, i16* %q_state11, align 2, !tbaa !66
  %conv12 = sext i16 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 3
  br i1 %cmp13, label %if.end.26, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.10
  %15 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state16 = getelementptr inbounds %struct.address, %struct.address* %15, i32 0, i32 21
  %16 = load i16, i16* %q_state16, align 2, !tbaa !66
  %conv17 = sext i16 %16 to i32
  %cmp18 = icmp eq i32 %conv17, 4
  br i1 %cmp18, label %if.end.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.15
  %17 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state21 = getelementptr inbounds %struct.address, %struct.address* %17, i32 0, i32 21
  %18 = load i16, i16* %q_state21, align 2, !tbaa !66
  %conv22 = sext i16 %18 to i32
  %cmp23 = icmp eq i32 %conv22, 5
  br i1 %cmp23, label %if.end.26, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.20
  %19 = load i32, i32* %all.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.26:                                        ; preds = %land.lhs.true, %lor.lhs.false.20, %lor.lhs.false.15, %lor.lhs.false.10, %for.body
  %20 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %20, i32 0, i32 0
  %21 = load i8*, i8** %q_paddr, align 8, !tbaa !69
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 3
  store i8* %21, i8** %e_to, align 8, !tbaa !43
  %23 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_status = getelementptr inbounds %struct.address, %struct.address* %23, i32 0, i32 17
  %24 = load i8*, i8** %q_status, align 8, !tbaa !67
  %25 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %26 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %27 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  call void @logdelivery(%struct.mailer* null, %struct.mailer_con_info* null, i8* %24, i8* %25, %struct.address* null, i64 0, %struct.envelope* %26, %struct.address* %27, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.25
  %28 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %28, i32 0, i32 10
  %29 = load %struct.address*, %struct.address** %q_next, align 8, !tbaa !70
  store %struct.address* %29, %struct.address** %a, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to27 = getelementptr inbounds %struct.envelope, %struct.envelope* %30, i32 0, i32 3
  store i8* null, i8** %e_to27, align 8, !tbaa !43
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %31 = bitcast %struct.address** %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
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

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #3

declare void @logsender(%struct.envelope*, i8*) #3

declare i32 @dropenvelope(%struct.envelope*, i32, i32) #3

declare void @sm_rpool_free(%struct.SM_RPOOL_T*) #3

declare %struct.envelope* @newenvelope(%struct.envelope*, %struct.envelope*, %struct.SM_RPOOL_T*) #3

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #3

declare i8* @milter_helo(i8*, %struct.envelope*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @skipword(i8* %p, i8* %w) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %w.addr = alloca i8*, align 8
  %q = alloca i8*, align 8
  %firstp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store volatile i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8* %w, i8** %w.addr, align 8, !tbaa !1
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %firstp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %2, i8** %firstp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %and = and i32 %conv, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %conv2 = sext i8 %6 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #10
  %7 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv3 = zext i16 %8 to i32
  %and4 = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store volatile i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %11, i8** %q, align 8, !tbaa !1
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.27, %while.end
  %12 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !7
  %conv6 = sext i8 %13 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %land.lhs.true, label %land.end.26

land.lhs.true:                                    ; preds = %while.cond.5
  %14 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !7
  %conv9 = sext i8 %15 to i32
  %cmp10 = icmp ne i32 %conv9, 58
  br i1 %cmp10, label %land.rhs.12, label %land.end.26

land.rhs.12:                                      ; preds = %land.lhs.true
  %16 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %conv13 = sext i8 %17 to i32
  %and14 = and i32 %conv13, -128
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %land.rhs.17, label %land.end.25

land.rhs.17:                                      ; preds = %land.rhs.12
  %18 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !7
  %conv18 = sext i8 %19 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %call20 = call i16** @__ctype_b_loc() #10
  %20 = load i16*, i16** %call20, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %20, i64 %idxprom19
  %21 = load i16, i16* %arrayidx21, align 2, !tbaa !8
  %conv22 = zext i16 %21 to i32
  %and23 = and i32 %conv22, 8192
  %tobool24 = icmp ne i32 %and23, 0
  br label %land.end.25

land.end.25:                                      ; preds = %land.rhs.17, %land.rhs.12
  %22 = phi i1 [ false, %land.rhs.12 ], [ %tobool24, %land.rhs.17 ]
  %lnot = xor i1 %22, true
  br label %land.end.26

land.end.26:                                      ; preds = %land.end.25, %land.lhs.true, %while.cond.5
  %23 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.5 ], [ %lnot, %land.end.25 ]
  br i1 %23, label %while.body.27, label %while.end.29

while.body.27:                                    ; preds = %land.end.26
  %24 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8, i8* %24, i32 1
  store volatile i8* %incdec.ptr28, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.5

while.end.29:                                     ; preds = %land.end.26
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.44, %while.end.29
  %25 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !7
  %conv31 = sext i8 %26 to i32
  %and32 = and i32 %conv31, -128
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %land.rhs.35, label %land.end.43

land.rhs.35:                                      ; preds = %while.cond.30
  %27 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !7
  %conv36 = sext i8 %28 to i32
  %idxprom37 = sext i32 %conv36 to i64
  %call38 = call i16** @__ctype_b_loc() #10
  %29 = load i16*, i16** %call38, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %29, i64 %idxprom37
  %30 = load i16, i16* %arrayidx39, align 2, !tbaa !8
  %conv40 = zext i16 %30 to i32
  %and41 = and i32 %conv40, 8192
  %tobool42 = icmp ne i32 %and41, 0
  br label %land.end.43

land.end.43:                                      ; preds = %land.rhs.35, %while.cond.30
  %31 = phi i1 [ false, %while.cond.30 ], [ %tobool42, %land.rhs.35 ]
  br i1 %31, label %while.body.44, label %while.end.46

while.body.44:                                    ; preds = %land.end.43
  %32 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %32, i32 1
  store volatile i8* %incdec.ptr45, i8** %p.addr, align 8, !tbaa !1
  store i8 0, i8* %32, align 1, !tbaa !7
  br label %while.cond.30

while.end.46:                                     ; preds = %land.end.43
  %33 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !7
  %conv47 = sext i8 %34 to i32
  %cmp48 = icmp ne i32 %conv47, 58
  br i1 %cmp48, label %if.then, label %if.end

if.then:                                          ; preds = %while.end.46
  br label %syntax

syntax:                                           ; preds = %if.then.76, %if.then.72, %if.then
  %35 = load i8*, i8** %firstp, align 8, !tbaa !1
  %call50 = call i8* @shortenstring(i8* %35, i64 203)
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.286, i32 0, i32 0), i8* %call50)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end.46
  %36 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr51 = getelementptr inbounds i8, i8* %36, i32 1
  store volatile i8* %incdec.ptr51, i8** %p.addr, align 8, !tbaa !1
  store i8 0, i8* %36, align 1, !tbaa !7
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.66, %if.end
  %37 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !7
  %conv53 = sext i8 %38 to i32
  %and54 = and i32 %conv53, -128
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %land.rhs.57, label %land.end.65

land.rhs.57:                                      ; preds = %while.cond.52
  %39 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !7
  %conv58 = sext i8 %40 to i32
  %idxprom59 = sext i32 %conv58 to i64
  %call60 = call i16** @__ctype_b_loc() #10
  %41 = load i16*, i16** %call60, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i16, i16* %41, i64 %idxprom59
  %42 = load i16, i16* %arrayidx61, align 2, !tbaa !8
  %conv62 = zext i16 %42 to i32
  %and63 = and i32 %conv62, 8192
  %tobool64 = icmp ne i32 %and63, 0
  br label %land.end.65

land.end.65:                                      ; preds = %land.rhs.57, %while.cond.52
  %43 = phi i1 [ false, %while.cond.52 ], [ %tobool64, %land.rhs.57 ]
  br i1 %43, label %while.body.66, label %while.end.68

while.body.66:                                    ; preds = %land.end.65
  %44 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %44, i32 1
  store volatile i8* %incdec.ptr67, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.52

while.end.68:                                     ; preds = %land.end.65
  %45 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !7
  %conv69 = sext i8 %46 to i32
  %cmp70 = icmp eq i32 %conv69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %while.end.68
  br label %syntax

if.end.73:                                        ; preds = %while.end.68
  %47 = load i8*, i8** %q, align 8, !tbaa !1
  %48 = load i8*, i8** %w.addr, align 8, !tbaa !1
  %call74 = call i32 @sm_strcasecmp(i8* %47, i8* %48)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.73
  br label %syntax

if.end.77:                                        ; preds = %if.end.73
  %49 = load volatile i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %49, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.77, %syntax
  %50 = bitcast i8** %firstp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i8*, i8** %retval
  ret i8* %52
}

declare void @auth_warning(%struct.envelope*, i8*, ...) #3

declare void @setsender(i8*, %struct.envelope*, i8**, i32, i32) #3

; Function Attrs: noreturn
declare void @sm_exc_raisenew_x(%struct.sm_exc_type*, ...) #5

declare i32 @wordinclass(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define void @mail_esmtp_args(%struct.address* %a, i8* %kp, i8* %vp, %struct.envelope* %e) #0 {
entry:
  %a.addr = alloca %struct.address*, align 8
  %kp.addr = alloca i8*, align 8
  %vp.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %s = alloca i8*, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res182 = alloca i32, align 4
  %tmp187 = alloca i32, align 4
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  store i8* %kp, i8** %kp.addr, align 8, !tbaa !1
  store i8* %vp, i8** %vp.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %kp.addr, align 8, !tbaa !1
  %call = call i32 @sm_strcasecmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.180, i32 0, i32 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.181, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 46
  %call3 = call i32 @macid_parse(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0), i8** null)
  %3 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %4 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %call3, i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 4580, i32 %4)
  %call4 = call i32* @__errno_location() #10
  store i32 0, i32* %call4, align 4, !tbaa !5
  %5 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call5 = call i64 @strtol(i8* %5, i8** null, i32 10) #1
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 9
  store i64 %call5, i64* %e_msgsize, align 8, !tbaa !58
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize6 = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 9
  %8 = load i64, i64* %e_msgsize6, align 8, !tbaa !58
  %cmp7 = icmp eq i64 %8, 9223372036854775807
  br i1 %cmp7, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %call8 = call i32* @__errno_location() #10
  %9 = load i32, i32* %call8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %9, 34
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.183, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true, %if.end
  %10 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize12 = getelementptr inbounds %struct.envelope, %struct.envelope* %10, i32 0, i32 9
  %11 = load i64, i64* %e_msgsize12, align 8, !tbaa !58
  %cmp13 = icmp slt i64 %11, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.184, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  br label %if.end.215

if.else:                                          ; preds = %entry
  %12 = load i8*, i8** %kp.addr, align 8, !tbaa !1
  %call16 = call i32 @sm_strcasecmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.185, i32 0, i32 0))
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.34

if.then.18:                                       ; preds = %if.else
  %13 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %cmp19 = icmp eq i8* %13, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.then.18
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.186, i32 0, i32 0))
  br label %if.end.32

if.else.21:                                       ; preds = %if.then.18
  %14 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call22 = call i32 @sm_strcasecmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.187, i32 0, i32 0))
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else.21
  store i32 0, i32* @SevenBitInput, align 4, !tbaa !5
  br label %if.end.31

if.else.25:                                       ; preds = %if.else.21
  %15 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call26 = call i32 @sm_strcasecmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.188, i32 0, i32 0))
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.else.25
  store i32 1, i32* @SevenBitInput, align 4, !tbaa !5
  br label %if.end.30

if.else.29:                                       ; preds = %if.else.25
  %16 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.189, i32 0, i32 0), i8* %16)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.24
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 52
  %18 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !19
  %19 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call33 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %18, i8* %19)
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_bodytype = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 23
  store i8* %call33, i8** %e_bodytype, align 8, !tbaa !81
  br label %if.end.214

if.else.34:                                       ; preds = %if.else
  %21 = load i8*, i8** %kp.addr, align 8, !tbaa !1
  %call35 = call i32 @sm_strcasecmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0))
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.56

if.then.37:                                       ; preds = %if.else.34
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_features = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 53
  %23 = load i32, i32* %e_features, align 4, !tbaa !28
  %and = and i32 %23, 128
  %cmp38 = icmp ne i32 %and, 0
  br i1 %cmp38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.then.37
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.191, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.37
  %24 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %cmp41 = icmp eq i8* %24, null
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.192, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.40
  %25 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call44 = call i32 @xtextok(i8* %25)
  %tobool = icmp ne i32 %call44, 0
  br i1 %tobool, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %if.end.43
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.193, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.43
  %26 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_envid = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 40
  %27 = load i8*, i8** %e_envid, align 8, !tbaa !82
  %cmp47 = icmp ne i8* %27, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.194, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.46
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool50 = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 52
  %29 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool50, align 8, !tbaa !19
  %30 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call51 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %29, i8* %30)
  %31 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_envid52 = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 40
  store i8* %call51, i8** %e_envid52, align 8, !tbaa !82
  %32 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro53 = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 46
  %call54 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.178, i32 0, i32 0), i8** null)
  %33 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_envid55 = getelementptr inbounds %struct.envelope, %struct.envelope* %33, i32 0, i32 40
  %34 = load i8*, i8** %e_envid55, align 8, !tbaa !82
  %35 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro53, i32 2, i32 %call54, i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 4640, i32 %35)
  br label %if.end.213

if.else.56:                                       ; preds = %if.else.34
  %36 = load i8*, i8** %kp.addr, align 8, !tbaa !1
  %call57 = call i32 @sm_strcasecmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.195, i32 0, i32 0))
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.86

if.then.59:                                       ; preds = %if.else.56
  %37 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_features60 = getelementptr inbounds %struct.envelope, %struct.envelope* %37, i32 0, i32 53
  %38 = load i32, i32* %e_features60, align 4, !tbaa !28
  %and61 = and i32 %38, 128
  %cmp62 = icmp ne i32 %and61, 0
  br i1 %cmp62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.then.59
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.196, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.59
  %39 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %cmp65 = icmp eq i8* %39, null
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.197, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.64
  %40 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 11
  %41 = load i64, i64* %e_flags, align 8, !tbaa !26
  %and68 = and i64 %41, 1048576
  %cmp69 = icmp ne i64 %and68, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.198, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.67
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags72 = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 11
  %43 = load i64, i64* %e_flags72, align 8, !tbaa !26
  %or = or i64 %43, 1048576
  store i64 %or, i64* %e_flags72, align 8, !tbaa !26
  %44 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call73 = call i32 @sm_strcasecmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.199, i32 0, i32 0))
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then.75, label %if.else.78

if.then.75:                                       ; preds = %if.end.71
  %45 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags76 = getelementptr inbounds %struct.envelope, %struct.envelope* %45, i32 0, i32 11
  %46 = load i64, i64* %e_flags76, align 8, !tbaa !26
  %or77 = or i64 %46, 4
  store i64 %or77, i64* %e_flags76, align 8, !tbaa !26
  br label %if.end.83

if.else.78:                                       ; preds = %if.end.71
  %47 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call79 = call i32 @sm_strcasecmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.200, i32 0, i32 0))
  %cmp80 = icmp ne i32 %call79, 0
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.else.78
  %48 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.201, i32 0, i32 0), i8* %48)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.else.78
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.75
  %49 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro84 = getelementptr inbounds %struct.envelope, %struct.envelope* %49, i32 0, i32 46
  %call85 = call i32 @macid_parse(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.179, i32 0, i32 0), i8** null)
  %50 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %51 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro84, i32 1, i32 %call85, i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 4667, i32 %51)
  br label %if.end.212

if.else.86:                                       ; preds = %if.else.56
  %52 = load i8*, i8** %kp.addr, align 8, !tbaa !1
  %call87 = call i32 @sm_strcasecmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.202, i32 0, i32 0))
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %land.lhs.true.89, label %if.else.210

land.lhs.true.89:                                 ; preds = %if.else.86
  %53 = load i64, i64* @DeliverByMin, align 8, !tbaa !10
  %cmp90 = icmp sge i64 %53, 0
  br i1 %cmp90, label %if.then.91, label %if.else.210

if.then.91:                                       ; preds = %land.lhs.true.89
  %54 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %cmp92 = icmp eq i8* %55, null
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.91
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.203, i32 0, i32 0))
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.then.91
  %call95 = call i32* @__errno_location() #10
  store i32 0, i32* %call95, align 4, !tbaa !5
  %56 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call96 = call i64 @strtol(i8* %56, i8** %s, i32 10) #1
  %57 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by = getelementptr inbounds %struct.envelope, %struct.envelope* %57, i32 0, i32 50
  store i64 %call96, i64* %e_deliver_by, align 8, !tbaa !83
  %58 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by97 = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 50
  %59 = load i64, i64* %e_deliver_by97, align 8, !tbaa !83
  %cmp98 = icmp eq i64 %59, -9223372036854775808
  br i1 %cmp98, label %if.then.107, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.94
  %60 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by99 = getelementptr inbounds %struct.envelope, %struct.envelope* %60, i32 0, i32 50
  %61 = load i64, i64* %e_deliver_by99, align 8, !tbaa !83
  %cmp100 = icmp eq i64 %61, 9223372036854775807
  br i1 %cmp100, label %if.then.107, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false
  %62 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by102 = getelementptr inbounds %struct.envelope, %struct.envelope* %62, i32 0, i32 50
  %63 = load i64, i64* %e_deliver_by102, align 8, !tbaa !83
  %cmp103 = icmp sgt i64 %63, 999999999
  br i1 %cmp103, label %if.then.107, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.101
  %64 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by105 = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 50
  %65 = load i64, i64* %e_deliver_by105, align 8, !tbaa !83
  %cmp106 = icmp slt i64 %65, -999999999
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %lor.lhs.false.104, %lor.lhs.false.101, %lor.lhs.false, %if.end.94
  %66 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.204, i32 0, i32 0), i8* %66)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %lor.lhs.false.104
  %67 = load i8*, i8** %s, align 8, !tbaa !1
  %cmp109 = icmp eq i8* %67, null
  br i1 %cmp109, label %if.then.113, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.end.108
  %68 = load i8*, i8** %s, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !7
  %conv = sext i8 %69 to i32
  %cmp111 = icmp ne i32 %conv, 59
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %lor.lhs.false.110, %if.end.108
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.205, i32 0, i32 0))
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %lor.lhs.false.110
  %70 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag = getelementptr inbounds %struct.envelope, %struct.envelope* %70, i32 0, i32 51
  store i32 0, i32* %e_dlvr_flag, align 4, !tbaa !84
  %71 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.114
  %72 = load i8*, i8** %s, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !7
  %conv115 = sext i8 %73 to i32
  %and116 = and i32 %conv115, -128
  %cmp117 = icmp eq i32 %and116, 0
  br i1 %cmp117, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %74 = load i8*, i8** %s, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !7
  %conv119 = sext i8 %75 to i32
  %idxprom = sext i32 %conv119 to i64
  %call120 = call i16** @__ctype_b_loc() #10
  %76 = load i16*, i16** %call120, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %76, i64 %idxprom
  %77 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv121 = zext i16 %77 to i32
  %and122 = and i32 %conv121, 8192
  %tobool123 = icmp ne i32 %and122, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %78 = phi i1 [ false, %while.cond ], [ %tobool123, %land.rhs ]
  br i1 %78, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %79 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr124, i8** %s, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %80 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load i8*, i8** %s, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !7
  %conv125 = sext i8 %82 to i32
  %idxprom126 = sext i32 %conv125 to i64
  %call127 = call i32** @__ctype_tolower_loc() #10
  %83 = load i32*, i32** %call127, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i32, i32* %83, i64 %idxprom126
  %84 = load i32, i32* %arrayidx128, align 4, !tbaa !5
  store i32 %84, i32* %__res, align 4, !tbaa !5
  %85 = load i32, i32* %__res, align 4, !tbaa !5
  store i32 %85, i32* %tmp, !tbaa !5
  %86 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = load i32, i32* %tmp, !tbaa !5
  switch i32 %87, label %sw.default [
    i32 110, label %sw.bb
    i32 114, label %sw.bb.130
  ]

sw.bb:                                            ; preds = %while.end
  %88 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag129 = getelementptr inbounds %struct.envelope, %struct.envelope* %88, i32 0, i32 51
  store i32 1, i32* %e_dlvr_flag129, align 4, !tbaa !84
  br label %sw.epilog

sw.bb.130:                                        ; preds = %while.end
  %89 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag131 = getelementptr inbounds %struct.envelope, %struct.envelope* %89, i32 0, i32 51
  store i32 2, i32* %e_dlvr_flag131, align 4, !tbaa !84
  %90 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by132 = getelementptr inbounds %struct.envelope, %struct.envelope* %90, i32 0, i32 50
  %91 = load i64, i64* %e_deliver_by132, align 8, !tbaa !83
  %cmp133 = icmp sle i64 %91, 0
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %sw.bb.130
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.206, i32 0, i32 0))
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %sw.bb.130
  %92 = load i64, i64* @DeliverByMin, align 8, !tbaa !10
  %cmp137 = icmp sgt i64 %92, 0
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.149

land.lhs.true.139:                                ; preds = %if.end.136
  %93 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by140 = getelementptr inbounds %struct.envelope, %struct.envelope* %93, i32 0, i32 50
  %94 = load i64, i64* %e_deliver_by140, align 8, !tbaa !83
  %cmp141 = icmp sgt i64 %94, 0
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.149

land.lhs.true.143:                                ; preds = %land.lhs.true.139
  %95 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by144 = getelementptr inbounds %struct.envelope, %struct.envelope* %95, i32 0, i32 50
  %96 = load i64, i64* %e_deliver_by144, align 8, !tbaa !83
  %97 = load i64, i64* @DeliverByMin, align 8, !tbaa !10
  %cmp145 = icmp slt i64 %96, %97
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %land.lhs.true.143
  %98 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by148 = getelementptr inbounds %struct.envelope, %struct.envelope* %98, i32 0, i32 50
  %99 = load i64, i64* %e_deliver_by148, align 8, !tbaa !83
  %100 = load i64, i64* @DeliverByMin, align 8, !tbaa !10
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.207, i32 0, i32 0), i64 %99, i64 %100)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %land.lhs.true.143, %land.lhs.true.139, %if.end.136
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  %101 = load i8*, i8** %s, align 8, !tbaa !1
  %102 = load i8, i8* %101, align 1, !tbaa !7
  %conv150 = sext i8 %102 to i32
  %and151 = and i32 %conv150, -128
  %cmp152 = icmp eq i32 %and151, 0
  br i1 %cmp152, label %land.lhs.true.154, label %cond.false

land.lhs.true.154:                                ; preds = %sw.default
  %103 = load i8*, i8** %s, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !7
  %conv155 = sext i8 %104 to i32
  %idxprom156 = sext i32 %conv155 to i64
  %call157 = call i16** @__ctype_b_loc() #10
  %105 = load i16*, i16** %call157, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i16, i16* %105, i64 %idxprom156
  %106 = load i16, i16* %arrayidx158, align 2, !tbaa !8
  %conv159 = zext i16 %106 to i32
  %and160 = and i32 %conv159, 16384
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.154
  %107 = load i8*, i8** %s, align 8, !tbaa !1
  %108 = load i8, i8* %107, align 1, !tbaa !7
  %conv162 = sext i8 %108 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.154, %sw.default
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv162, %cond.true ], [ 63, %cond.false ]
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.208, i32 0, i32 0), i32 %cond)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %if.end.149, %sw.bb
  %109 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr163 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr163, i8** %s, align 8, !tbaa !1
  br label %while.cond.164

while.cond.164:                                   ; preds = %while.body.178, %sw.epilog
  %110 = load i8*, i8** %s, align 8, !tbaa !1
  %111 = load i8, i8* %110, align 1, !tbaa !7
  %conv165 = sext i8 %111 to i32
  %and166 = and i32 %conv165, -128
  %cmp167 = icmp eq i32 %and166, 0
  br i1 %cmp167, label %land.rhs.169, label %land.end.177

land.rhs.169:                                     ; preds = %while.cond.164
  %112 = load i8*, i8** %s, align 8, !tbaa !1
  %113 = load i8, i8* %112, align 1, !tbaa !7
  %conv170 = sext i8 %113 to i32
  %idxprom171 = sext i32 %conv170 to i64
  %call172 = call i16** @__ctype_b_loc() #10
  %114 = load i16*, i16** %call172, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i16, i16* %114, i64 %idxprom171
  %115 = load i16, i16* %arrayidx173, align 2, !tbaa !8
  %conv174 = zext i16 %115 to i32
  %and175 = and i32 %conv174, 8192
  %tobool176 = icmp ne i32 %and175, 0
  br label %land.end.177

land.end.177:                                     ; preds = %land.rhs.169, %while.cond.164
  %116 = phi i1 [ false, %while.cond.164 ], [ %tobool176, %land.rhs.169 ]
  br i1 %116, label %while.body.178, label %while.end.180

while.body.178:                                   ; preds = %land.end.177
  %117 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr179 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr179, i8** %s, align 8, !tbaa !1
  br label %while.cond.164

while.end.180:                                    ; preds = %land.end.177
  %118 = bitcast i32* %__res182 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = load i8*, i8** %s, align 8, !tbaa !1
  %120 = load i8, i8* %119, align 1, !tbaa !7
  %conv183 = sext i8 %120 to i32
  %idxprom184 = sext i32 %conv183 to i64
  %call185 = call i32** @__ctype_tolower_loc() #10
  %121 = load i32*, i32** %call185, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i32, i32* %121, i64 %idxprom184
  %122 = load i32, i32* %arrayidx186, align 4, !tbaa !5
  store i32 %122, i32* %__res182, align 4, !tbaa !5
  %123 = load i32, i32* %__res182, align 4, !tbaa !5
  store i32 %123, i32* %tmp187, !tbaa !5
  %124 = bitcast i32* %__res182 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = load i32, i32* %tmp187, !tbaa !5
  switch i32 %125, label %sw.default.191 [
    i32 116, label %sw.bb.188
    i32 0, label %sw.epilog.209
  ]

sw.bb.188:                                        ; preds = %while.end.180
  %126 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag189 = getelementptr inbounds %struct.envelope, %struct.envelope* %126, i32 0, i32 51
  %127 = load i32, i32* %e_dlvr_flag189, align 4, !tbaa !84
  %or190 = or i32 %127, 16
  store i32 %or190, i32* %e_dlvr_flag189, align 4, !tbaa !84
  br label %sw.epilog.209

sw.default.191:                                   ; preds = %while.end.180
  %128 = load i8*, i8** %s, align 8, !tbaa !1
  %129 = load i8, i8* %128, align 1, !tbaa !7
  %conv192 = sext i8 %129 to i32
  %and193 = and i32 %conv192, -128
  %cmp194 = icmp eq i32 %and193, 0
  br i1 %cmp194, label %land.lhs.true.196, label %cond.false.206

land.lhs.true.196:                                ; preds = %sw.default.191
  %130 = load i8*, i8** %s, align 8, !tbaa !1
  %131 = load i8, i8* %130, align 1, !tbaa !7
  %conv197 = sext i8 %131 to i32
  %idxprom198 = sext i32 %conv197 to i64
  %call199 = call i16** @__ctype_b_loc() #10
  %132 = load i16*, i16** %call199, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i16, i16* %132, i64 %idxprom198
  %133 = load i16, i16* %arrayidx200, align 2, !tbaa !8
  %conv201 = zext i16 %133 to i32
  %and202 = and i32 %conv201, 16384
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %cond.true.204, label %cond.false.206

cond.true.204:                                    ; preds = %land.lhs.true.196
  %134 = load i8*, i8** %s, align 8, !tbaa !1
  %135 = load i8, i8* %134, align 1, !tbaa !7
  %conv205 = sext i8 %135 to i32
  br label %cond.end.207

cond.false.206:                                   ; preds = %land.lhs.true.196, %sw.default.191
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.206, %cond.true.204
  %cond208 = phi i32 [ %conv205, %cond.true.204 ], [ 63, %cond.false.206 ]
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.209, i32 0, i32 0), i32 %cond208)
  br label %sw.epilog.209

sw.epilog.209:                                    ; preds = %cond.end.207, %while.end.180, %sw.bb.188
  %136 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  br label %if.end.211

if.else.210:                                      ; preds = %land.lhs.true.89, %if.else.86
  %137 = load i8*, i8** %kp.addr, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.210, i32 0, i32 0), i8* %137)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.210, %sw.epilog.209
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.83
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end.49
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.32
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.15
  ret void
}

declare i32 @rscheck(i8*, i8*, i8*, %struct.envelope*, i32, i32, i8*, i8*, %struct.address*, i8**) #3

declare i32 @enoughdiskspace(i64, %struct.envelope*) #3

declare i8* @milter_envfrom(i8**, %struct.envelope*, i8*) #3

declare i32 @sm_exc_match(%struct.sm_exc*, i8*) #3

declare void @sm_exc_free(%struct.sm_exc*) #3

; Function Attrs: noreturn
declare void @sm_exc_raise_x(%struct.sm_exc*) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare %struct.address* @parseaddr(i8*, %struct.address*, i32, i32, i8**, %struct.envelope*, i32) #3

; Function Attrs: nounwind uwtable
define void @rcpt_esmtp_args(%struct.address* %a, i8* %kp, i8* %vp, %struct.envelope* %e) #0 {
entry:
  %a.addr = alloca %struct.address*, align 8
  %kp.addr = alloca i8*, align 8
  %vp.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %s = alloca i8*, align 8
  %p45 = alloca i8*, align 8
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  store i8* %kp, i8** %kp.addr, align 8, !tbaa !1
  store i8* %vp, i8** %vp.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %kp.addr, align 8, !tbaa !1
  %call = call i32 @sm_strcasecmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.211, i32 0, i32 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else.41

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_features = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 53
  %3 = load i32, i32* %e_features, align 4, !tbaa !28
  %and = and i32 %3, 128
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.212, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.213, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %5 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %5, i32 0, i32 5
  %6 = load i64, i64* %q_flags, align 8, !tbaa !85
  %and6 = and i64 %6, -449
  store i64 %and6, i64* %q_flags, align 8, !tbaa !85
  %7 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags7 = getelementptr inbounds %struct.address, %struct.address* %7, i32 0, i32 5
  %8 = load i64, i64* %q_flags7, align 8, !tbaa !85
  %or = or i64 %8, 512
  store i64 %or, i64* %q_flags7, align 8, !tbaa !85
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %9, i32 0, i32 46
  %call8 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i8** null)
  %10 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %11 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %call8, i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 4866, i32 %11)
  %12 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call9 = call i32 @sm_strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.214, i32 0, i32 0))
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.5
  %13 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  store i8* %13, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp13 = icmp ne i8* %14, null
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %call14 = call i8* @strchr(i8* %16, i32 44) #1
  store i8* %call14, i8** %p, align 8, !tbaa !1
  store i8* %call14, i8** %s, align 8, !tbaa !1
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp15 = icmp ne i8* %17, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %18, align 1, !tbaa !7
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.body
  %19 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call18 = call i32 @sm_strcasecmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.215, i32 0, i32 0))
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.17
  %20 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags21 = getelementptr inbounds %struct.address, %struct.address* %20, i32 0, i32 5
  %21 = load i64, i64* %q_flags21, align 8, !tbaa !85
  %or22 = or i64 %21, 64
  store i64 %or22, i64* %q_flags21, align 8, !tbaa !85
  br label %if.end.37

if.else:                                          ; preds = %if.end.17
  %22 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call23 = call i32 @sm_strcasecmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.216, i32 0, i32 0))
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.else
  %23 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags26 = getelementptr inbounds %struct.address, %struct.address* %23, i32 0, i32 5
  %24 = load i64, i64* %q_flags26, align 8, !tbaa !85
  %or27 = or i64 %24, 128
  store i64 %or27, i64* %q_flags26, align 8, !tbaa !85
  br label %if.end.36

if.else.28:                                       ; preds = %if.else
  %25 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call29 = call i32 @sm_strcasecmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.217, i32 0, i32 0))
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else.28
  %26 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags32 = getelementptr inbounds %struct.address, %struct.address* %26, i32 0, i32 5
  %27 = load i64, i64* %q_flags32, align 8, !tbaa !85
  %or33 = or i64 %27, 256
  store i64 %or33, i64* %q_flags32, align 8, !tbaa !85
  br label %if.end.35

if.else.34:                                       ; preds = %if.else.28
  %28 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.218, i32 0, i32 0), i8* %28)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.25
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.20
  %29 = load i8*, i8** %s, align 8, !tbaa !1
  %cmp38 = icmp ne i8* %29, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  %30 = load i8*, i8** %s, align 8, !tbaa !1
  store i8 44, i8* %30, align 1, !tbaa !7
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.37
  %31 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %32, i8** %vp.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.11
  %33 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end.70
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.70

if.else.41:                                       ; preds = %entry
  %34 = load i8*, i8** %kp.addr, align 8, !tbaa !1
  %call42 = call i32 @sm_strcasecmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.219, i32 0, i32 0))
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.68

if.then.44:                                       ; preds = %if.else.41
  %35 = bitcast i8** %p45 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_features46 = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 53
  %37 = load i32, i32* %e_features46, align 4, !tbaa !28
  %and47 = and i32 %37, 128
  %cmp48 = icmp ne i32 %and47, 0
  br i1 %cmp48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.then.44
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.220, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.then.44
  %38 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %cmp51 = icmp eq i8* %38, null
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.221, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  %39 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_orcpt = getelementptr inbounds %struct.address, %struct.address* %39, i32 0, i32 16
  %40 = load i8*, i8** %q_orcpt, align 8, !tbaa !86
  %cmp54 = icmp ne i8* %40, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.222, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.53
  %41 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call57 = call i8* @strchr(i8* %41, i32 59) #1
  store i8* %call57, i8** %p45, align 8, !tbaa !1
  %42 = load i8*, i8** %p45, align 8, !tbaa !1
  %cmp58 = icmp eq i8* %42, null
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.223, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.56
  %43 = load i8*, i8** %p45, align 8, !tbaa !1
  store i8 0, i8* %43, align 1, !tbaa !7
  %44 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call61 = call i32 @isatom(i8* %44)
  %tobool = icmp ne i32 %call61, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.64

lor.lhs.false:                                    ; preds = %if.end.60
  %45 = load i8*, i8** %p45, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 1
  %call62 = call i32 @xtextok(i8* %add.ptr)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %lor.lhs.false, %if.end.60
  %46 = load i8*, i8** %p45, align 8, !tbaa !1
  store i8 59, i8* %46, align 1, !tbaa !7
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.223, i32 0, i32 0))
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %lor.lhs.false
  %47 = load i8*, i8** %p45, align 8, !tbaa !1
  store i8 59, i8* %47, align 1, !tbaa !7
  %48 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %48, i32 0, i32 52
  %49 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !19
  %50 = load i8*, i8** %vp.addr, align 8, !tbaa !1
  %call66 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %49, i8* %50)
  %51 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_orcpt67 = getelementptr inbounds %struct.address, %struct.address* %51, i32 0, i32 16
  store i8* %call66, i8** %q_orcpt67, align 8, !tbaa !86
  %52 = bitcast i8** %p45 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  br label %if.end.69

if.else.68:                                       ; preds = %if.else.41
  %53 = load i8*, i8** %kp.addr, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.210, i32 0, i32 0), i8* %53)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.end.65
  br label %if.end.70

if.end.70:                                        ; preds = %cleanup, %if.end.69, %cleanup.cont
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare %struct.address* @recipient(%struct.address*, %struct.address**, i32, %struct.envelope*) #3

declare i8* @milter_envrcpt(i8**, %struct.envelope*, i8*, i32) #3

declare void @initsys(%struct.envelope*) #3

declare i32 @removefromlist(i8*, %struct.address**, %struct.envelope*) #3

; Function Attrs: nounwind uwtable
define internal i32 @smtp_data(%struct.SMTP_T* %smtp, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %smtp.addr = alloca %struct.SMTP_T*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %milteraccept = alloca i32, align 4
  %aborting = alloca i32, align 4
  %doublequeue = alloca i32, align 4
  %rv = alloca i32, align 4
  %a = alloca %struct.address*, align 8
  %ee = alloca %struct.envelope*, align 8
  %id = alloca i8*, align 8
  %oldid = alloca i8*, align 8
  %features = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %state = alloca i8, align 1
  %response = alloca i8*, align 8
  %savelogusrerrs = alloca i32, align 4
  %state110 = alloca i8, align 1
  %response111 = alloca i8*, align 8
  %afd = alloca i32, align 4
  %df = alloca %struct.sm_file*, align 8
  %dfname = alloca i8*, align 8
  %save_errno = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %dfd = alloca i32, align 4
  %q = alloca %struct.address*, align 8
  %mode = alloca i32, align 4
  %anything_to_send = alloca i32, align 4
  store %struct.SMTP_T* %smtp, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %milteraccept to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %aborting to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %doublequeue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %rv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %rv, align 4, !tbaa !5
  %4 = bitcast %struct.address** %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.envelope** %ee to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %oldid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %features to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast [32 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.255, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %10 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_gotmail = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %10, i32 0, i32 0
  %11 = load i32, i32* %sm_gotmail, align 4, !tbaa !38
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.256, i32 0, i32 0))
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.448

if.else:                                          ; preds = %entry
  %12 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_nrcpts = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %12, i32 0, i32 1
  %13 = load i32, i32* %sm_nrcpts, align 4, !tbaa !12
  %cmp = icmp ule i32 %13, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.257, i32 0, i32 0))
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.448

if.end:                                           ; preds = %if.else
  br label %if.end.2

if.end.2:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %14 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_nrcpts3 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %14, i32 0, i32 1
  %15 = load i32, i32* %sm_nrcpts3, align 4, !tbaa !12
  %call = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.258, i32 0, i32 0), i32 %15)
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %16 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 25
  %18 = load i8*, i8** %e_id, align 8, !tbaa !29
  %call5 = call i32 @rscheck(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.259, i32 0, i32 0), i8* %arraydecay4, i8* null, %struct.envelope* %16, i32 7, i32 3, i8* null, i8* %18, %struct.address* null, i8** null)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.2
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.448

if.end.8:                                         ; preds = %if.end.2
  %19 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_milterlist = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %19, i32 0, i32 4
  %20 = load i32, i32* %sm_milterlist, align 4, !tbaa !16
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end.8
  %21 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_milterize = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %21, i32 0, i32 3
  %22 = load i32, i32* %sm_milterize, align 4, !tbaa !15
  %tobool10 = icmp ne i32 %22, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.60

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %23 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 11
  %24 = load i64, i64* %e_flags, align 8, !tbaa !26
  %and = and i64 %24, 16777216
  %cmp12 = icmp ne i64 %and, 0
  br i1 %cmp12, label %if.end.60, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.11
  call void @llvm.lifetime.start(i64 1, i8* %state) #1
  %25 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast i32* %savelogusrerrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* @LogUsrErrs, align 4, !tbaa !5
  store i32 %27, i32* %savelogusrerrs, align 4, !tbaa !5
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call14 = call i8* @milter_data_cmd(%struct.envelope* %28, i8* %state)
  store i8* %call14, i8** %response, align 8, !tbaa !1
  %29 = load i8, i8* %state, align 1, !tbaa !7
  %conv = sext i8 %29 to i32
  switch i32 %conv, label %sw.epilog [
    i32 121, label %sw.bb
    i32 114, label %sw.bb.28
    i32 100, label %sw.bb.34
    i32 116, label %sw.bb.41
    i32 52, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %if.then.13
  %30 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %30, 3
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %sw.bb
  %31 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id18 = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 25
  %32 = load i8*, i8** %e_id18, align 8, !tbaa !29
  %33 = load i8*, i8** %response, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.260, i32 0, i32 0), i8* %33)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %sw.bb
  %34 = load i8*, i8** %response, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %34)
  %35 = load i8*, i8** %response, align 8, !tbaa !1
  %call20 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #11
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %36 = load i8*, i8** %response, align 8, !tbaa !1
  %call23 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4) #11
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.19
  %37 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %37, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue, align 8, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.28:                                         ; preds = %if.then.13
  %38 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %38, 3
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %sw.bb.28
  %39 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id32 = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 25
  %40 = load i8*, i8** %e_id32, align 8, !tbaa !29
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.261, i32 0, i32 0))
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %sw.bb.28
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i32 0, i32 0))
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.34:                                         ; preds = %if.then.13
  %41 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %41, 3
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %sw.bb.34
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id38 = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 25
  %43 = load i8*, i8** %e_id38, align 8, !tbaa !29
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.262, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %sw.bb.34
  %44 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags40 = getelementptr inbounds %struct.envelope, %struct.envelope* %44, i32 0, i32 11
  %45 = load i64, i64* %e_flags40, align 8, !tbaa !26
  %or = or i64 %45, 16777216
  store i64 %or, i64* %e_flags40, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.then.13
  %46 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %46, 3
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %sw.bb.41
  %47 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id45 = getelementptr inbounds %struct.envelope, %struct.envelope* %47, i32 0, i32 25
  %48 = load i8*, i8** %e_id45, align 8, !tbaa !29
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %sw.bb.41
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.47:                                         ; preds = %if.then.13
  %49 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp48 = icmp sgt i32 %49, 3
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %sw.bb.47
  %50 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id51 = getelementptr inbounds %struct.envelope, %struct.envelope* %50, i32 0, i32 25
  %51 = load i8*, i8** %e_id51, align 8, !tbaa !29
  %52 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.263, i32 0, i32 0), i8* %52)
  store i32 0, i32* @LogUsrErrs, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %sw.bb.47
  %53 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* %53)
  %54 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue53 = getelementptr inbounds %struct.envelope, %struct.envelope* %54, i32 0, i32 7
  store %struct.address* null, %struct.address** %e_sendqueue53, align 8, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then.13, %if.end.39
  %55 = load i32, i32* %savelogusrerrs, align 4, !tbaa !5
  store i32 %55, i32* @LogUsrErrs, align 4, !tbaa !5
  %56 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp54 = icmp ne i8* %56, null
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %sw.epilog
  %57 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3720)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.end.52, %if.end.46, %if.end.33, %if.end.27, %if.then.26
  %58 = bitcast i32* %savelogusrerrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  call void @llvm.lifetime.end(i64 1, i8* %state) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.448 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.60

if.end.60:                                        ; preds = %cleanup.cont, %land.lhs.true.11, %land.lhs.true, %if.end.8
  %60 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_discard = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %60, i32 0, i32 2
  %61 = load i32, i32* %sm_discard, align 4, !tbaa !27
  %tobool61 = icmp ne i32 %61, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.60
  %62 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags63 = getelementptr inbounds %struct.envelope, %struct.envelope* %62, i32 0, i32 11
  %63 = load i64, i64* %e_flags63, align 8, !tbaa !26
  %or64 = or i64 %63, 16777216
  store i64 %or64, i64* %e_flags63, align 8, !tbaa !26
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.60
  store i32 0, i32* %doublequeue, align 4, !tbaa !5
  %64 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue66 = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 7
  %65 = load %struct.address*, %struct.address** %e_sendqueue66, align 8, !tbaa !30
  store %struct.address* %65, %struct.address** %a, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.65
  %66 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %cmp67 = icmp ne %struct.address* %66, null
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %67, i32 0, i32 21
  %68 = load i16, i16* %q_state, align 2, !tbaa !66
  %conv69 = sext i16 %68 to i32
  %cmp70 = icmp eq i32 %conv69, 5
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.78

land.lhs.true.72:                                 ; preds = %for.body
  %69 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags73 = getelementptr inbounds %struct.envelope, %struct.envelope* %69, i32 0, i32 11
  %70 = load i64, i64* %e_flags73, align 8, !tbaa !26
  %and74 = and i64 %70, 16777216
  %cmp75 = icmp ne i64 %and74, 0
  br i1 %cmp75, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %land.lhs.true.72
  store i32 1, i32* %doublequeue, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %land.lhs.true.72, %for.body
  %71 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state79 = getelementptr inbounds %struct.address, %struct.address* %71, i32 0, i32 21
  %72 = load i16, i16* %q_state79, align 2, !tbaa !66
  %conv80 = sext i16 %72 to i32
  %cmp81 = icmp eq i32 %conv80, 2
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.78
  %73 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state84 = getelementptr inbounds %struct.address, %struct.address* %73, i32 0, i32 21
  store i16 6, i16* %q_state84, align 2, !tbaa !66
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.78
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %74 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %74, i32 0, i32 10
  %75 = load %struct.address*, %struct.address** %q_next, align 8, !tbaa !70
  store %struct.address* %75, %struct.address** %a, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.264, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  call void @buffer_errors()
  %76 = load %struct.sm_file*, %struct.sm_file** @InChannel, align 8, !tbaa !1
  %77 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @collect(%struct.sm_file* %76, i32 1, %struct.header** null, %struct.envelope* %77, i32 1)
  %arraydecay86 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %78 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %78, i32 0, i32 9
  %79 = load i64, i64* %e_msgsize, align 8, !tbaa !58
  %cmp87 = icmp slt i64 %79, 0
  br i1 %cmp87, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %80 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize89 = getelementptr inbounds %struct.envelope, %struct.envelope* %80, i32 0, i32 9
  %81 = load i64, i64* %e_msgsize89, align 8, !tbaa !58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 9223372036854775807, %cond.true ], [ %81, %cond.false ]
  %call90 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay86, i64 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.265, i32 0, i32 0), i64 %cond)
  %82 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %82, i32 0, i32 46
  %call91 = call i32 @macid_parse(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0), i8** null)
  %arraydecay92 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %83 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %call91, i8* %arraydecay92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3754, i32 %83)
  %arraydecay93 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %84 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %85 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id94 = getelementptr inbounds %struct.envelope, %struct.envelope* %85, i32 0, i32 25
  %86 = load i8*, i8** %e_id94, align 8, !tbaa !29
  %call95 = call i32 @rscheck(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.266, i32 0, i32 0), i8* %arraydecay93, i8* null, %struct.envelope* %84, i32 6, i32 3, i8* null, i8* %86, %struct.address* null, i8** null)
  store i32 1, i32* %milteraccept, align 4, !tbaa !5
  %87 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_milterlist96 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %87, i32 0, i32 4
  %88 = load i32, i32* %sm_milterlist96, align 4, !tbaa !16
  %tobool97 = icmp ne i32 %88, 0
  br i1 %tobool97, label %land.lhs.true.98, label %if.end.160

land.lhs.true.98:                                 ; preds = %cond.end
  %89 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_milterize99 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %89, i32 0, i32 3
  %90 = load i32, i32* %sm_milterize99, align 4, !tbaa !15
  %tobool100 = icmp ne i32 %90, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.end.160

land.lhs.true.101:                                ; preds = %land.lhs.true.98
  %91 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp102 = icmp sle i32 %91, 0
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.160

land.lhs.true.104:                                ; preds = %land.lhs.true.101
  %92 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags105 = getelementptr inbounds %struct.envelope, %struct.envelope* %92, i32 0, i32 11
  %93 = load i64, i64* %e_flags105, align 8, !tbaa !26
  %and106 = and i64 %93, 16777216
  %cmp107 = icmp ne i64 %and106, 0
  br i1 %cmp107, label %if.end.160, label %if.then.109

if.then.109:                                      ; preds = %land.lhs.true.104
  call void @llvm.lifetime.start(i64 1, i8* %state110) #1
  %94 = bitcast i8** %response111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call112 = call i8* @milter_data(%struct.envelope* %95, i8* %state110)
  store i8* %call112, i8** %response111, align 8, !tbaa !1
  %96 = load i8, i8* %state110, align 1, !tbaa !7
  %conv113 = sext i8 %96 to i32
  switch i32 %conv113, label %sw.epilog.155 [
    i32 121, label %sw.bb.114
    i32 114, label %sw.bb.129
    i32 100, label %sw.bb.135
    i32 116, label %sw.bb.143
    i32 52, label %sw.bb.149
  ]

sw.bb.114:                                        ; preds = %if.then.109
  %97 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp115 = icmp sgt i32 %97, 3
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %sw.bb.114
  %98 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id118 = getelementptr inbounds %struct.envelope, %struct.envelope* %98, i32 0, i32 25
  %99 = load i8*, i8** %e_id118, align 8, !tbaa !29
  %100 = load i8*, i8** %response111, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.267, i32 0, i32 0), i8* %100)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %sw.bb.114
  store i32 0, i32* %milteraccept, align 4, !tbaa !5
  %101 = load i8*, i8** %response111, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* %101)
  %102 = load i8*, i8** %response111, align 8, !tbaa !1
  %call120 = call i32 @strncmp(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #11
  %cmp121 = icmp eq i32 %call120, 0
  br i1 %cmp121, label %if.then.127, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %if.end.119
  %103 = load i8*, i8** %response111, align 8, !tbaa !1
  %call124 = call i32 @strncmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4) #11
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %lor.lhs.false.123, %if.end.119
  store i32 0, i32* %rv, align 4, !tbaa !5
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %lor.lhs.false.123
  br label %sw.epilog.155

sw.bb.129:                                        ; preds = %if.then.109
  store i32 0, i32* %milteraccept, align 4, !tbaa !5
  %104 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp130 = icmp sgt i32 %104, 3
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %sw.bb.129
  %105 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id133 = getelementptr inbounds %struct.envelope, %struct.envelope* %105, i32 0, i32 25
  %106 = load i8*, i8** %e_id133, align 8, !tbaa !29
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.268, i32 0, i32 0))
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %sw.bb.129
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.269, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.135:                                        ; preds = %if.then.109
  %107 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp136 = icmp sgt i32 %107, 3
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %sw.bb.135
  %108 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id139 = getelementptr inbounds %struct.envelope, %struct.envelope* %108, i32 0, i32 25
  %109 = load i8*, i8** %e_id139, align 8, !tbaa !29
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.270, i32 0, i32 0))
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %sw.bb.135
  store i32 0, i32* %milteraccept, align 4, !tbaa !5
  %110 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags141 = getelementptr inbounds %struct.envelope, %struct.envelope* %110, i32 0, i32 11
  %111 = load i64, i64* %e_flags141, align 8, !tbaa !26
  %or142 = or i64 %111, 16777216
  store i64 %or142, i64* %e_flags141, align 8, !tbaa !26
  br label %sw.epilog.155

sw.bb.143:                                        ; preds = %if.then.109
  %112 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp144 = icmp sgt i32 %112, 3
  br i1 %cmp144, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %sw.bb.143
  %113 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id147 = getelementptr inbounds %struct.envelope, %struct.envelope* %113, i32 0, i32 25
  %114 = load i8*, i8** %e_id147, align 8, !tbaa !29
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %sw.bb.143
  store i32 0, i32* %milteraccept, align 4, !tbaa !5
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.149:                                        ; preds = %if.then.109
  %115 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp150 = icmp sgt i32 %115, 3
  br i1 %cmp150, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %sw.bb.149
  %116 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id153 = getelementptr inbounds %struct.envelope, %struct.envelope* %116, i32 0, i32 25
  %117 = load i8*, i8** %e_id153, align 8, !tbaa !29
  %118 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %117, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.271, i32 0, i32 0), i8* %118)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.152, %sw.bb.149
  store i32 0, i32* %milteraccept, align 4, !tbaa !5
  %119 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* %119)
  store i32 0, i32* %rv, align 4, !tbaa !5
  br label %sw.epilog.155

sw.epilog.155:                                    ; preds = %if.then.109, %if.end.154, %if.end.148, %if.end.140, %if.end.134, %if.end.128
  %120 = load i8*, i8** %response111, align 8, !tbaa !1
  %cmp156 = icmp ne i8* %120, null
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %sw.epilog.155
  %121 = load i8*, i8** %response111, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3827)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %sw.epilog.155
  %122 = bitcast i8** %response111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  call void @llvm.lifetime.end(i64 1, i8* %state110) #1
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %land.lhs.true.104, %land.lhs.true.101, %land.lhs.true.98, %cond.end
  %arraydecay161 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %123 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize162 = getelementptr inbounds %struct.envelope, %struct.envelope* %123, i32 0, i32 9
  %124 = load i64, i64* %e_msgsize162, align 8, !tbaa !58
  %cmp163 = icmp slt i64 %124, 0
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %if.end.160
  br label %cond.end.168

cond.false.166:                                   ; preds = %if.end.160
  %125 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize167 = getelementptr inbounds %struct.envelope, %struct.envelope* %125, i32 0, i32 9
  %126 = load i64, i64* %e_msgsize167, align 8, !tbaa !58
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.166, %cond.true.165
  %cond169 = phi i64 [ 9223372036854775807, %cond.true.165 ], [ %126, %cond.false.166 ]
  %call170 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay161, i64 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.265, i32 0, i32 0), i64 %cond169)
  %127 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro171 = getelementptr inbounds %struct.envelope, %struct.envelope* %127, i32 0, i32 46
  %call172 = call i32 @macid_parse(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0), i8** null)
  %arraydecay173 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %128 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro171, i32 1, i32 %call172, i8* %arraydecay173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 3832, i32 %128)
  %129 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_milterlist174 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %129, i32 0, i32 4
  %130 = load i32, i32* %sm_milterlist174, align 4, !tbaa !16
  %tobool175 = icmp ne i32 %130, 0
  br i1 %tobool175, label %land.lhs.true.176, label %if.end.187

land.lhs.true.176:                                ; preds = %cond.end.168
  %131 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_milterize177 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %131, i32 0, i32 3
  %132 = load i32, i32* %sm_milterize177, align 4, !tbaa !15
  %tobool178 = icmp ne i32 %132, 0
  br i1 %tobool178, label %if.then.179, label %if.end.187

if.then.179:                                      ; preds = %land.lhs.true.176
  %133 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_abort(%struct.envelope* %133)
  %134 = load i32, i32* %milteraccept, align 4, !tbaa !5
  %tobool180 = icmp ne i32 %134, 0
  br i1 %tobool180, label %land.lhs.true.181, label %if.end.186

land.lhs.true.181:                                ; preds = %if.then.179
  %135 = load i32, i32* @MilterLogLevel, align 4, !tbaa !5
  %cmp182 = icmp sgt i32 %135, 9
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %land.lhs.true.181
  %136 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id185 = getelementptr inbounds %struct.envelope, %struct.envelope* %136, i32 0, i32 25
  %137 = load i8*, i8** %e_id185, align 8, !tbaa !29
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.272, i32 0, i32 0))
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %land.lhs.true.181, %if.then.179
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %land.lhs.true.176, %cond.end.168
  %138 = load i32, i32* %milteraccept, align 4, !tbaa !5
  %tobool188 = icmp ne i32 %138, 0
  br i1 %tobool188, label %land.lhs.true.189, label %if.end.248

land.lhs.true.189:                                ; preds = %if.end.187
  %139 = load i32, i32* @SuperSafe, align 4, !tbaa !5
  %cmp190 = icmp eq i32 %139, 3
  br i1 %cmp190, label %if.then.192, label %if.end.248

if.then.192:                                      ; preds = %land.lhs.true.189
  %140 = bitcast i32* %afd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  %141 = bitcast %struct.sm_file** %df to i8*
  call void @llvm.lifetime.start(i64 8, i8* %141) #1
  %142 = bitcast i8** %dfname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #1
  %143 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %143, i32 0, i32 24
  %144 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !87
  store volatile %struct.sm_file* %144, %struct.sm_file** %df, align 8, !tbaa !1
  %145 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call193 = call i8* @queuename(%struct.envelope* %145, i32 100)
  store i8* %call193, i8** %dfname, align 8, !tbaa !1
  %146 = load volatile %struct.sm_file*, %struct.sm_file** %df, align 8, !tbaa !1
  %call194 = call i32 @sm_io_setinfo(%struct.sm_file* %146, i32 1001, i8* null)
  %cmp195 = icmp slt i32 %call194, 0
  br i1 %cmp195, label %land.lhs.true.197, label %if.else.222

land.lhs.true.197:                                ; preds = %if.then.192
  %call198 = call i32* @__errno_location() #10
  %147 = load i32, i32* %call198, align 4, !tbaa !5
  %cmp199 = icmp ne i32 %147, 22
  br i1 %cmp199, label %if.then.201, label %if.else.222

if.then.201:                                      ; preds = %land.lhs.true.197
  %148 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  %call202 = call i32* @__errno_location() #10
  %149 = load i32, i32* %call202, align 4, !tbaa !5
  store i32 %149, i32* %save_errno, align 4, !tbaa !5
  %150 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp203 = icmp eq i32 %150, 17
  br i1 %cmp203, label %if.then.205, label %if.end.218

if.then.205:                                      ; preds = %if.then.201
  %151 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start(i64 144, i8* %151) #1
  %152 = bitcast i32* %dfd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  %153 = load i8*, i8** %dfname, align 8, !tbaa !1
  %call206 = call i32 @stat(i8* %153, %struct.stat* %st) #1
  %cmp207 = icmp slt i32 %call206, 0
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.then.205
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  store i64 -1, i64* %st_size, align 8, !tbaa !88
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %if.then.205
  %call211 = call i32* @__errno_location() #10
  store i32 17, i32* %call211, align 4, !tbaa !5
  %154 = load i8*, i8** %dfname, align 8, !tbaa !1
  %st_size212 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %155 = load i64, i64* %st_size212, align 8, !tbaa !88
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.273, i32 0, i32 0), i8* %154, i64 %155)
  %156 = load volatile %struct.sm_file*, %struct.sm_file** %df, align 8, !tbaa !1
  %call213 = call i32 @sm_io_getinfo(%struct.sm_file* %156, i32 3, i8* null)
  store i32 %call213, i32* %dfd, align 4, !tbaa !5
  %157 = load i32, i32* %dfd, align 4, !tbaa !5
  %cmp214 = icmp sge i32 %157, 0
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.end.210
  %158 = load i32, i32* %dfd, align 4, !tbaa !5
  call void @dumpfd(i32 %158, i32 1, i32 1)
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.216, %if.end.210
  %159 = bitcast i32* %dfd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.end(i64 144, i8* %160) #1
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.then.201
  %161 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call219 = call i32* @__errno_location() #10
  store i32 %161, i32* %call219, align 4, !tbaa !5
  %162 = load volatile %struct.sm_file*, %struct.sm_file** %df, align 8, !tbaa !1
  %163 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @dferror(%struct.sm_file* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.274, i32 0, i32 0), %struct.envelope* %163)
  call void @flush_errors(i32 1)
  %164 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp220 = icmp ne i32 %164, 17
  %conv221 = zext i1 %cmp220 to i32
  %165 = load i32, i32* @ExitStat, align 4, !tbaa !5
  call void @finis(i32 %conv221, i32 1, i32 %165)
  %166 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  br label %if.end.240

if.else.222:                                      ; preds = %land.lhs.true.197, %if.then.192
  %167 = load volatile %struct.sm_file*, %struct.sm_file** %df, align 8, !tbaa !1
  %call223 = call i32 @sm_io_getinfo(%struct.sm_file* %167, i32 3, i8* null)
  store i32 %call223, i32* %afd, align 4, !tbaa !5
  %cmp224 = icmp slt i32 %call223, 0
  br i1 %cmp224, label %if.then.226, label %if.else.227

if.then.226:                                      ; preds = %if.else.222
  %168 = load volatile %struct.sm_file*, %struct.sm_file** %df, align 8, !tbaa !1
  %169 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @dferror(%struct.sm_file* %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.275, i32 0, i32 0), %struct.envelope* %169)
  call void @flush_errors(i32 1)
  %170 = load i32, i32* @ExitStat, align 4, !tbaa !5
  call void @finis(i32 1, i32 1, i32 %170)
  br label %if.end.239

if.else.227:                                      ; preds = %if.else.222
  %171 = load i32, i32* %afd, align 4, !tbaa !5
  %call228 = call i32 @fsync(i32 %171)
  %cmp229 = icmp slt i32 %call228, 0
  br i1 %cmp229, label %if.then.231, label %if.else.232

if.then.231:                                      ; preds = %if.else.227
  %172 = load volatile %struct.sm_file*, %struct.sm_file** %df, align 8, !tbaa !1
  %173 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @dferror(%struct.sm_file* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.276, i32 0, i32 0), %struct.envelope* %173)
  call void @flush_errors(i32 1)
  %174 = load i32, i32* @ExitStat, align 4, !tbaa !5
  call void @finis(i32 1, i32 1, i32 %174)
  br label %if.end.238

if.else.232:                                      ; preds = %if.else.227
  %175 = load volatile %struct.sm_file*, %struct.sm_file** %df, align 8, !tbaa !1
  %call233 = call i32 @sm_io_close(%struct.sm_file* %175, i32 -2)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.else.232
  %176 = load volatile %struct.sm_file*, %struct.sm_file** %df, align 8, !tbaa !1
  %177 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @dferror(%struct.sm_file* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.277, i32 0, i32 0), %struct.envelope* %177)
  call void @flush_errors(i32 1)
  %178 = load i32, i32* @ExitStat, align 4, !tbaa !5
  call void @finis(i32 1, i32 1, i32 %178)
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.else.232
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.231
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.226
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.end.218
  %179 = load i8*, i8** %dfname, align 8, !tbaa !1
  %call241 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* %179, i32 2, i8* null)
  %180 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp242 = getelementptr inbounds %struct.envelope, %struct.envelope* %180, i32 0, i32 24
  store %struct.sm_file* %call241, %struct.sm_file** %e_dfp242, align 8, !tbaa !87
  %181 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp243 = getelementptr inbounds %struct.envelope, %struct.envelope* %181, i32 0, i32 24
  %182 = load %struct.sm_file*, %struct.sm_file** %e_dfp243, align 8, !tbaa !87
  %cmp244 = icmp eq %struct.sm_file* %182, null
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.end.240
  %183 = load i8*, i8** %dfname, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.278, i32 0, i32 0), i8* %183)
  %184 = load i32, i32* @ExitStat, align 4, !tbaa !5
  call void @finis(i32 1, i32 1, i32 %184)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.246, %if.end.240
  %185 = bitcast i8** %dfname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast %struct.sm_file** %df to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast i32* %afd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %land.lhs.true.189, %if.end.187
  %188 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %188, i32 0, i32 36
  %189 = load i8*, i8** %e_quarmsg, align 8, !tbaa !36
  %cmp249 = icmp ne i8* %189, null
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.end.248
  %190 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @markstats(%struct.envelope* %190, %struct.address* null, i32 113)
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.251, %if.end.248
  %191 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags253 = getelementptr inbounds %struct.envelope, %struct.envelope* %191, i32 0, i32 11
  %192 = load i64, i64* %e_flags253, align 8, !tbaa !26
  %and254 = and i64 %192, 16777216
  %cmp255 = icmp ne i64 %and254, 0
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %if.end.252
  store i32 0, i32* %doublequeue, align 4, !tbaa !5
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.257, %if.end.252
  %193 = load i32, i32* @Errors, align 4, !tbaa !5
  %cmp259 = icmp sgt i32 %193, 0
  %conv260 = zext i1 %cmp259 to i32
  store i32 %conv260, i32* %aborting, align 4, !tbaa !5
  %194 = load i32, i32* %aborting, align 4, !tbaa !5
  %tobool261 = icmp ne i32 %194, 0
  br i1 %tobool261, label %if.end.282, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %if.end.258
  %195 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags263 = getelementptr inbounds %struct.envelope, %struct.envelope* %195, i32 0, i32 11
  %196 = load i64, i64* %e_flags263, align 8, !tbaa !26
  %and264 = and i64 %196, 16777216
  %cmp265 = icmp ne i64 %and264, 0
  br i1 %cmp265, label %if.end.282, label %land.lhs.true.267

land.lhs.true.267:                                ; preds = %lor.lhs.false.262
  %197 = load i32, i32* @QueueMode, align 4, !tbaa !5
  %cmp268 = icmp eq i32 %197, 81
  br i1 %cmp268, label %land.lhs.true.274, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %land.lhs.true.267
  %198 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg271 = getelementptr inbounds %struct.envelope, %struct.envelope* %198, i32 0, i32 36
  %199 = load i8*, i8** %e_quarmsg271, align 8, !tbaa !36
  %cmp272 = icmp eq i8* %199, null
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.282

land.lhs.true.274:                                ; preds = %lor.lhs.false.270, %land.lhs.true.267
  %200 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call275 = call i32 @split_by_recipient(%struct.envelope* %200)
  %tobool276 = icmp ne i32 %call275, 0
  br i1 %tobool276, label %if.end.282, label %if.then.277

if.then.277:                                      ; preds = %land.lhs.true.274
  %201 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags278 = getelementptr inbounds %struct.envelope, %struct.envelope* %201, i32 0, i32 11
  %202 = load i64, i64* %e_flags278, align 8, !tbaa !26
  %and279 = and i64 %202, 32
  %cmp280 = icmp ne i64 %and279, 0
  %conv281 = zext i1 %cmp280 to i32
  store i32 %conv281, i32* %aborting, align 4, !tbaa !5
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.277, %land.lhs.true.274, %lor.lhs.false.270, %lor.lhs.false.262, %if.end.258
  %203 = load i32, i32* %aborting, align 4, !tbaa !5
  %tobool283 = icmp ne i32 %203, 0
  br i1 %tobool283, label %if.then.284, label %if.end.295

if.then.284:                                      ; preds = %if.end.282
  %204 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %204) #1
  %205 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %206 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %206, i32 0, i32 34
  %207 = load i8*, i8** %e_message, align 8, !tbaa !91
  call void @logundelrcpts(%struct.envelope* %205, i8* %207, i32 8, i32 0)
  %208 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue285 = getelementptr inbounds %struct.envelope, %struct.envelope* %208, i32 0, i32 7
  %209 = load %struct.address*, %struct.address** %e_sendqueue285, align 8, !tbaa !30
  store %struct.address* %209, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.286

for.cond.286:                                     ; preds = %for.inc.291, %if.then.284
  %210 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp287 = icmp ne %struct.address* %210, null
  br i1 %cmp287, label %for.body.289, label %for.end.293

for.body.289:                                     ; preds = %for.cond.286
  %211 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %211, i32 0, i32 5
  %212 = load i64, i64* %q_flags, align 8, !tbaa !85
  %and290 = and i64 %212, -449
  store i64 %and290, i64* %q_flags, align 8, !tbaa !85
  br label %for.inc.291

for.inc.291:                                      ; preds = %for.body.289
  %213 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next292 = getelementptr inbounds %struct.address, %struct.address* %213, i32 0, i32 10
  %214 = load %struct.address*, %struct.address** %q_next292, align 8, !tbaa !70
  store %struct.address* %214, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.286

for.end.293:                                      ; preds = %for.cond.286
  call void @flush_errors(i32 1)
  call void @buffer_errors()
  store i32 10, i32* %cleanup.dest.slot
  %215 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %cleanup.dest364 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest364, label %cleanup.448 [
    i32 10, label %abortmessage
  ]

if.end.295:                                       ; preds = %if.end.282
  call void @buffer_errors()
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.279, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %216 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %216, i32 0, i32 32
  %217 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !51
  %call296 = call i32 @sm_io_setinfo(%struct.sm_file* %217, i32 1002, i8* null)
  %218 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id297 = getelementptr inbounds %struct.envelope, %struct.envelope* %218, i32 0, i32 25
  %219 = load i8*, i8** %e_id297, align 8, !tbaa !29
  store i8* %219, i8** %id, align 8, !tbaa !1
  %220 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 21, i64 0), align 4, !tbaa !5
  %call298 = call %struct.__res_state* @__res_state() #10
  %retry = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call298, i32 0, i32 1
  store i32 %220, i32* %retry, align 4, !tbaa !92
  %221 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 20, i64 0), align 8, !tbaa !10
  %conv299 = trunc i64 %221 to i32
  %call300 = call %struct.__res_state* @__res_state() #10
  %retrans = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call300, i32 0, i32 0
  store i32 %conv299, i32* %retrans, align 4, !tbaa !94
  %222 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.envelope* %222, %struct.envelope** %ee, align 8, !tbaa !1
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.311, %if.end.295
  %223 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %cmp302 = icmp ne %struct.envelope* %223, null
  br i1 %cmp302, label %for.body.304, label %for.end.312

for.body.304:                                     ; preds = %for.cond.301
  %224 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_flags305 = getelementptr inbounds %struct.envelope, %struct.envelope* %224, i32 0, i32 11
  %225 = load i64, i64* %e_flags305, align 8, !tbaa !26
  %and306 = and i64 %225, -9
  store i64 %and306, i64* %e_flags305, align 8, !tbaa !26
  %226 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_errormode = getelementptr inbounds %struct.envelope, %struct.envelope* %226, i32 0, i32 17
  store i16 109, i16* %e_errormode, align 2, !tbaa !95
  %227 = load i32, i32* %doublequeue, align 4, !tbaa !5
  %tobool307 = icmp ne i32 %227, 0
  br i1 %tobool307, label %if.then.308, label %if.else.309

if.then.308:                                      ; preds = %for.body.304
  %228 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @queueup(%struct.envelope* %228, i32 0, i32 1)
  br label %if.end.310

if.else.309:                                      ; preds = %for.body.304
  %229 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %229) #1
  store i32 0, i32* %mode, align 4, !tbaa !5
  %230 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %231 = load i32, i32* %mode, align 4, !tbaa !5
  call void @sendall(%struct.envelope* %230, i32 %231)
  %232 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.309, %if.then.308
  %233 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %233, i32 0, i32 3
  store i8* null, i8** %e_to, align 8, !tbaa !43
  br label %for.inc.311

for.inc.311:                                      ; preds = %if.end.310
  %234 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sibling = getelementptr inbounds %struct.envelope, %struct.envelope* %234, i32 0, i32 22
  %235 = load %struct.envelope*, %struct.envelope** %e_sibling, align 8, !tbaa !96
  store %struct.envelope* %235, %struct.envelope** %ee, align 8, !tbaa !1
  br label %for.cond.301

for.end.312:                                      ; preds = %for.cond.301
  %236 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id313 = getelementptr inbounds %struct.envelope, %struct.envelope* %236, i32 0, i32 25
  %237 = load i8*, i8** %e_id313, align 8, !tbaa !29
  store i8* %237, i8** %oldid, align 8, !tbaa !1
  %238 = load i8*, i8** %id, align 8, !tbaa !1
  %239 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id314 = getelementptr inbounds %struct.envelope, %struct.envelope* %239, i32 0, i32 25
  store i8* %238, i8** %e_id314, align 8, !tbaa !29
  %240 = load i8*, i8** %id, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.280, i32 0, i32 0), i8* %240)
  %241 = load i8*, i8** %oldid, align 8, !tbaa !1
  %242 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id315 = getelementptr inbounds %struct.envelope, %struct.envelope* %242, i32 0, i32 25
  store i8* %241, i8** %e_id315, align 8, !tbaa !29
  %243 = load i32, i32* %doublequeue, align 4, !tbaa !5
  %tobool316 = icmp ne i32 %243, 0
  br i1 %tobool316, label %if.then.317, label %if.end.363

if.then.317:                                      ; preds = %for.end.312
  %244 = bitcast i32* %anything_to_send to i8*
  call void @llvm.lifetime.start(i64 4, i8* %244) #1
  store i32 0, i32* %anything_to_send, align 4, !tbaa !5
  call void @sm_getla()
  %245 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.envelope* %245, %struct.envelope** %ee, align 8, !tbaa !1
  br label %for.cond.318

for.cond.318:                                     ; preds = %for.inc.355, %if.then.317
  %246 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %cmp319 = icmp ne %struct.envelope* %246, null
  br i1 %cmp319, label %for.body.321, label %for.end.357

for.body.321:                                     ; preds = %for.cond.318
  %247 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sendmode = getelementptr inbounds %struct.envelope, %struct.envelope* %247, i32 0, i32 16
  %248 = load i16, i16* %e_sendmode, align 2, !tbaa !61
  %conv322 = sext i16 %248 to i32
  %cmp323 = icmp eq i32 %conv322, 113
  br i1 %cmp323, label %if.then.330, label %lor.lhs.false.325

lor.lhs.false.325:                                ; preds = %for.body.321
  %249 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sendmode326 = getelementptr inbounds %struct.envelope, %struct.envelope* %249, i32 0, i32 16
  %250 = load i16, i16* %e_sendmode326, align 2, !tbaa !61
  %conv327 = sext i16 %250 to i32
  %cmp328 = icmp eq i32 %conv327, 100
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %lor.lhs.false.325, %for.body.321
  br label %for.inc.355

if.end.331:                                       ; preds = %lor.lhs.false.325
  %251 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_msgpriority = getelementptr inbounds %struct.envelope, %struct.envelope* %251, i32 0, i32 1
  %252 = load i64, i64* %e_msgpriority, align 8, !tbaa !97
  %253 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_ctime = getelementptr inbounds %struct.envelope, %struct.envelope* %253, i32 0, i32 2
  %254 = load i64, i64* %e_ctime, align 8, !tbaa !98
  %call332 = call i32 @shouldqueue(i64 %252, i64 %254)
  %tobool333 = icmp ne i32 %call332, 0
  br i1 %tobool333, label %if.then.334, label %if.else.336

if.then.334:                                      ; preds = %if.end.331
  %255 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sendmode335 = getelementptr inbounds %struct.envelope, %struct.envelope* %255, i32 0, i32 16
  store i16 113, i16* %e_sendmode335, align 2, !tbaa !61
  br label %for.inc.355

if.else.336:                                      ; preds = %if.end.331
  %256 = load i32, i32* @QueueMode, align 4, !tbaa !5
  %cmp337 = icmp ne i32 %256, 81
  br i1 %cmp337, label %land.lhs.true.339, label %if.end.345

land.lhs.true.339:                                ; preds = %if.else.336
  %257 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_quarmsg340 = getelementptr inbounds %struct.envelope, %struct.envelope* %257, i32 0, i32 36
  %258 = load i8*, i8** %e_quarmsg340, align 8, !tbaa !36
  %cmp341 = icmp ne i8* %258, null
  br i1 %cmp341, label %if.then.343, label %if.end.345

if.then.343:                                      ; preds = %land.lhs.true.339
  %259 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sendmode344 = getelementptr inbounds %struct.envelope, %struct.envelope* %259, i32 0, i32 16
  store i16 113, i16* %e_sendmode344, align 2, !tbaa !61
  br label %for.inc.355

if.end.345:                                       ; preds = %land.lhs.true.339, %if.else.336
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345
  store i32 1, i32* %anything_to_send, align 4, !tbaa !5
  %260 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @closexscript(%struct.envelope* %260)
  %261 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_dfp347 = getelementptr inbounds %struct.envelope, %struct.envelope* %261, i32 0, i32 24
  %262 = load %struct.sm_file*, %struct.sm_file** %e_dfp347, align 8, !tbaa !87
  %cmp348 = icmp ne %struct.sm_file* %262, null
  br i1 %cmp348, label %if.then.350, label %if.end.354

if.then.350:                                      ; preds = %if.end.346
  %263 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_dfp351 = getelementptr inbounds %struct.envelope, %struct.envelope* %263, i32 0, i32 24
  %264 = load %struct.sm_file*, %struct.sm_file** %e_dfp351, align 8, !tbaa !87
  %call352 = call i32 @sm_io_close(%struct.sm_file* %264, i32 -2)
  %265 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_dfp353 = getelementptr inbounds %struct.envelope, %struct.envelope* %265, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp353, align 8, !tbaa !87
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.350, %if.end.346
  %266 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @unlockqueue(%struct.envelope* %266)
  br label %for.inc.355

for.inc.355:                                      ; preds = %if.end.354, %if.then.343, %if.then.334, %if.then.330
  %267 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sibling356 = getelementptr inbounds %struct.envelope, %struct.envelope* %267, i32 0, i32 22
  %268 = load %struct.envelope*, %struct.envelope** %e_sibling356, align 8, !tbaa !96
  store %struct.envelope* %268, %struct.envelope** %ee, align 8, !tbaa !1
  br label %for.cond.318

for.end.357:                                      ; preds = %for.cond.318
  %269 = load i32, i32* %anything_to_send, align 4, !tbaa !5
  %tobool358 = icmp ne i32 %269, 0
  br i1 %tobool358, label %if.then.359, label %if.end.362

if.then.359:                                      ; preds = %for.end.357
  %270 = load %struct.sm_file*, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  %call360 = call i32 @sm_io_flush(%struct.sm_file* %270, i32 -2)
  %271 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call361 = call i32 @doworklist(%struct.envelope* %271, i32 1, i32 1)
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.359, %for.end.357
  %272 = bitcast i32* %anything_to_send to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %for.end.312
  br label %abortmessage

abortmessage:                                     ; preds = %if.end.363, %for.end.293
  %273 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 92), align 1, !tbaa !7
  %conv365 = zext i8 %273 to i32
  %cmp366 = icmp sge i32 %conv365, 2
  br i1 %cmp366, label %land.lhs.true.368, label %if.end.376

land.lhs.true.368:                                ; preds = %abortmessage
  %274 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool369 = icmp ne i32 %274, 0
  br i1 %tobool369, label %if.end.376, label %if.then.370

if.then.370:                                      ; preds = %land.lhs.true.368
  %275 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id371 = getelementptr inbounds %struct.envelope, %struct.envelope* %275, i32 0, i32 25
  %276 = load i8*, i8** %e_id371, align 8, !tbaa !29
  %277 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags372 = getelementptr inbounds %struct.envelope, %struct.envelope* %277, i32 0, i32 11
  %278 = load i64, i64* %e_flags372, align 8, !tbaa !26
  %and373 = and i64 %278, 32768
  %cmp374 = icmp ne i64 %and373, 0
  %conv375 = zext i1 %cmp374 to i32
  %279 = load i32, i32* @LogLevel, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.281, i32 0, i32 0), i8* %276, i32 %conv375, i32 %279)
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.370, %land.lhs.true.368, %abortmessage
  %280 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp377 = icmp sgt i32 %280, 4
  br i1 %cmp377, label %land.lhs.true.379, label %if.end.385

land.lhs.true.379:                                ; preds = %if.end.376
  %281 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags380 = getelementptr inbounds %struct.envelope, %struct.envelope* %281, i32 0, i32 11
  %282 = load i64, i64* %e_flags380, align 8, !tbaa !26
  %and381 = and i64 %282, 32768
  %cmp382 = icmp ne i64 %and381, 0
  br i1 %cmp382, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %land.lhs.true.379
  %283 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @logsender(%struct.envelope* %283, i8* null)
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.384, %land.lhs.true.379, %if.end.376
  %284 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags386 = getelementptr inbounds %struct.envelope, %struct.envelope* %284, i32 0, i32 11
  %285 = load i64, i64* %e_flags386, align 8, !tbaa !26
  %and387 = and i64 %285, -32769
  store i64 %and387, i64* %e_flags386, align 8, !tbaa !26
  %286 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_gotmail388 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %286, i32 0, i32 0
  store i32 0, i32* %sm_gotmail388, align 4, !tbaa !38
  %287 = load i32, i32* %aborting, align 4, !tbaa !5
  %tobool389 = icmp ne i32 %287, 0
  br i1 %tobool389, label %if.then.395, label %lor.lhs.false.390

lor.lhs.false.390:                                ; preds = %if.end.385
  %288 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags391 = getelementptr inbounds %struct.envelope, %struct.envelope* %288, i32 0, i32 11
  %289 = load i64, i64* %e_flags391, align 8, !tbaa !26
  %and392 = and i64 %289, 16777216
  %cmp393 = icmp ne i64 %and392, 0
  br i1 %cmp393, label %if.then.395, label %if.else.397

if.then.395:                                      ; preds = %lor.lhs.false.390, %if.end.385
  %290 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call396 = call i32 @dropenvelope(%struct.envelope* %290, i32 1, i32 0)
  br label %if.end.428

if.else.397:                                      ; preds = %lor.lhs.false.390
  %291 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.envelope* %291, %struct.envelope** %ee, align 8, !tbaa !1
  br label %for.cond.398

for.cond.398:                                     ; preds = %for.inc.425, %if.else.397
  %292 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %cmp399 = icmp ne %struct.envelope* %292, null
  br i1 %cmp399, label %for.body.401, label %for.end.427

for.body.401:                                     ; preds = %for.cond.398
  %293 = load i32, i32* %doublequeue, align 4, !tbaa !5
  %tobool402 = icmp ne i32 %293, 0
  br i1 %tobool402, label %if.end.412, label %land.lhs.true.403

land.lhs.true.403:                                ; preds = %for.body.401
  %294 = load i32, i32* @QueueMode, align 4, !tbaa !5
  %cmp404 = icmp ne i32 %294, 81
  br i1 %cmp404, label %land.lhs.true.406, label %if.end.412

land.lhs.true.406:                                ; preds = %land.lhs.true.403
  %295 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_quarmsg407 = getelementptr inbounds %struct.envelope, %struct.envelope* %295, i32 0, i32 36
  %296 = load i8*, i8** %e_quarmsg407, align 8, !tbaa !36
  %cmp408 = icmp ne i8* %296, null
  br i1 %cmp408, label %if.then.410, label %if.end.412

if.then.410:                                      ; preds = %land.lhs.true.406
  %297 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %call411 = call i32 @dropenvelope(%struct.envelope* %297, i32 1, i32 0)
  br label %for.inc.425

if.end.412:                                       ; preds = %land.lhs.true.406, %land.lhs.true.403, %for.body.401
  %298 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sendmode413 = getelementptr inbounds %struct.envelope, %struct.envelope* %298, i32 0, i32 16
  %299 = load i16, i16* %e_sendmode413, align 2, !tbaa !61
  %conv414 = sext i16 %299 to i32
  %cmp415 = icmp eq i32 %conv414, 113
  br i1 %cmp415, label %if.then.422, label %lor.lhs.false.417

lor.lhs.false.417:                                ; preds = %if.end.412
  %300 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sendmode418 = getelementptr inbounds %struct.envelope, %struct.envelope* %300, i32 0, i32 16
  %301 = load i16, i16* %e_sendmode418, align 2, !tbaa !61
  %conv419 = sext i16 %301 to i32
  %cmp420 = icmp eq i32 %conv419, 100
  br i1 %cmp420, label %if.then.422, label %if.end.424

if.then.422:                                      ; preds = %lor.lhs.false.417, %if.end.412
  %302 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %call423 = call i32 @dropenvelope(%struct.envelope* %302, i32 1, i32 0)
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.422, %lor.lhs.false.417
  br label %for.inc.425

for.inc.425:                                      ; preds = %if.end.424, %if.then.410
  %303 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sibling426 = getelementptr inbounds %struct.envelope, %struct.envelope* %303, i32 0, i32 22
  %304 = load %struct.envelope*, %struct.envelope** %e_sibling426, align 8, !tbaa !96
  store %struct.envelope* %304, %struct.envelope** %ee, align 8, !tbaa !1
  br label %for.cond.398

for.end.427:                                      ; preds = %for.cond.398
  br label %if.end.428

if.end.428:                                       ; preds = %for.end.427, %if.then.395
  %305 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.envelope* %305, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %306 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_features = getelementptr inbounds %struct.envelope, %struct.envelope* %306, i32 0, i32 53
  %307 = load i32, i32* %e_features, align 4, !tbaa !28
  store i32 %307, i32* %features, align 4, !tbaa !5
  %308 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %308, i32 0, i32 52
  %309 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !19
  call void @sm_rpool_free(%struct.SM_RPOOL_T* %309)
  %310 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %311 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call429 = call %struct.SM_RPOOL_T* @sm_rpool_new_x(%struct.SM_RPOOL_T* null)
  %call430 = call %struct.envelope* @newenvelope(%struct.envelope* %310, %struct.envelope* %311, %struct.SM_RPOOL_T* %call429)
  %312 = load i64, i64* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 11), align 8, !tbaa !26
  %313 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags431 = getelementptr inbounds %struct.envelope, %struct.envelope* %313, i32 0, i32 11
  store i64 %312, i64* %e_flags431, align 8, !tbaa !26
  %314 = load i32, i32* %features, align 4, !tbaa !5
  %315 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_features432 = getelementptr inbounds %struct.envelope, %struct.envelope* %315, i32 0, i32 53
  store i32 %314, i32* %e_features432, align 4, !tbaa !28
  %316 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_quarmsg = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %316, i32 0, i32 7
  %317 = load i8*, i8** %sm_quarmsg, align 8, !tbaa !37
  %cmp433 = icmp eq i8* %317, null
  br i1 %cmp433, label %if.then.435, label %if.else.439

if.then.435:                                      ; preds = %if.end.428
  %318 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg436 = getelementptr inbounds %struct.envelope, %struct.envelope* %318, i32 0, i32 36
  store i8* null, i8** %e_quarmsg436, align 8, !tbaa !36
  %319 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro437 = getelementptr inbounds %struct.envelope, %struct.envelope* %319, i32 0, i32 46
  %call438 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i8** null)
  %320 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro437, i32 2, i32 %call438, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 4261, i32 %320)
  br label %if.end.447

if.else.439:                                      ; preds = %if.end.428
  %321 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool440 = getelementptr inbounds %struct.envelope, %struct.envelope* %321, i32 0, i32 52
  %322 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool440, align 8, !tbaa !19
  %323 = load %struct.SMTP_T*, %struct.SMTP_T** %smtp.addr, align 8, !tbaa !1
  %sm_quarmsg441 = getelementptr inbounds %struct.SMTP_T, %struct.SMTP_T* %323, i32 0, i32 7
  %324 = load i8*, i8** %sm_quarmsg441, align 8, !tbaa !37
  %call442 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %322, i8* %324)
  %325 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg443 = getelementptr inbounds %struct.envelope, %struct.envelope* %325, i32 0, i32 36
  store i8* %call442, i8** %e_quarmsg443, align 8, !tbaa !36
  %326 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro444 = getelementptr inbounds %struct.envelope, %struct.envelope* %326, i32 0, i32 46
  %call445 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i8** null)
  %327 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg446 = getelementptr inbounds %struct.envelope, %struct.envelope* %327, i32 0, i32 36
  %328 = load i8*, i8** %e_quarmsg446, align 8, !tbaa !36
  %329 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro444, i32 2, i32 %call445, i8* %328, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 4267, i32 %329)
  br label %if.end.447

if.end.447:                                       ; preds = %if.else.439, %if.then.435
  %330 = load i32, i32* %rv, align 4, !tbaa !5
  store i32 %330, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.448

cleanup.448:                                      ; preds = %if.end.447, %for.end.293, %cleanup, %if.then.7, %if.then.1, %if.then
  %331 = bitcast [32 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 32, i8* %331) #1
  %332 = bitcast i32* %features to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #1
  %333 = bitcast i8** %oldid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #1
  %334 = bitcast i8** %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #1
  %335 = bitcast %struct.envelope** %ee to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #1
  %336 = bitcast %struct.address** %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %336) #1
  %337 = bitcast i32* %rv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #1
  %338 = bitcast i32* %doublequeue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %338) #1
  %339 = bitcast i32* %aborting to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #1
  %340 = bitcast i32* %milteraccept to i8*
  call void @llvm.lifetime.end(i64 4, i8* %340) #1
  %341 = load i32, i32* %retval
  ret i32 %341
}

declare i8* @shortenstring(i8*, i64) #3

declare i32 @sendtolist(i8*, %struct.address*, %struct.address**, i32, %struct.envelope*) #3

; Function Attrs: nounwind uwtable
define internal void @printvrfyaddr(%struct.address* %a, i32 %last, i32 %vrfy) #0 {
entry:
  %a.addr = alloca %struct.address*, align 8
  %last.addr = alloca i32, align 4
  %vrfy.addr = alloca i32, align 4
  %fmtbuf = alloca [30 x i8], align 16
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  store i32 %vrfy, i32* %vrfy.addr, align 4, !tbaa !5
  %0 = bitcast [30 x i8]* %fmtbuf to i8*
  call void @llvm.lifetime.start(i64 30, i8* %0) #1
  %1 = load i32, i32* %vrfy.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %2, i32 0, i32 4
  %3 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !63
  %cmp = icmp ne %struct.mailer* %3, null
  br i1 %cmp, label %land.lhs.true.1, label %if.else

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer2 = getelementptr inbounds %struct.address, %struct.address* %4, i32 0, i32 4
  %5 = load %struct.mailer*, %struct.mailer** %q_mailer2, align 8, !tbaa !63
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %5, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %and = and i32 %6, 131072
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.1
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %fmtbuf, i32 0, i32 0
  %call = call i64 @sm_strlcpy(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.287, i32 0, i32 0), i64 30)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  %arraydecay4 = getelementptr inbounds [30 x i8], [30 x i8]* %fmtbuf, i32 0, i32 0
  %call5 = call i64 @sm_strlcpy(i8* %arraydecay4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.288, i32 0, i32 0), i64 30)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %7, 0
  %cond = select i1 %tobool6, i32 32, i32 45
  %conv = trunc i32 %cond to i8
  %arrayidx7 = getelementptr inbounds [30 x i8], [30 x i8]* %fmtbuf, i32 0, i64 3
  store i8 %conv, i8* %arrayidx7, align 1, !tbaa !7
  %arrayidx8 = getelementptr inbounds [30 x i8], [30 x i8]* %fmtbuf, i32 0, i64 4
  %call9 = call i64 @sm_strlcpy(i8* %arrayidx8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.289, i32 0, i32 0), i64 26)
  %8 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_fullname = getelementptr inbounds %struct.address, %struct.address* %8, i32 0, i32 9
  %9 = load i8*, i8** %q_fullname, align 8, !tbaa !99
  %cmp10 = icmp eq i8* %9, null
  br i1 %cmp10, label %if.then.12, label %if.else.38

if.then.12:                                       ; preds = %if.end
  %10 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer13 = getelementptr inbounds %struct.address, %struct.address* %10, i32 0, i32 4
  %11 = load %struct.mailer*, %struct.mailer** %q_mailer13, align 8, !tbaa !63
  %cmp14 = icmp eq %struct.mailer* %11, null
  br i1 %cmp14, label %land.lhs.true.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.12
  %12 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer16 = getelementptr inbounds %struct.address, %struct.address* %12, i32 0, i32 4
  %13 = load %struct.mailer*, %struct.mailer** %q_mailer16, align 8, !tbaa !63
  %m_addrtype = getelementptr inbounds %struct.mailer, %struct.mailer* %13, i32 0, i32 3
  %14 = load i8*, i8** %m_addrtype, align 8, !tbaa !100
  %cmp17 = icmp eq i8* %14, null
  br i1 %cmp17, label %land.lhs.true.25, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %15 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer20 = getelementptr inbounds %struct.address, %struct.address* %15, i32 0, i32 4
  %16 = load %struct.mailer*, %struct.mailer** %q_mailer20, align 8, !tbaa !63
  %m_addrtype21 = getelementptr inbounds %struct.mailer, %struct.mailer* %16, i32 0, i32 3
  %17 = load i8*, i8** %m_addrtype21, align 8, !tbaa !100
  %call22 = call i32 @sm_strcasecmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.290, i32 0, i32 0))
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %land.lhs.true.25, label %if.else.32

land.lhs.true.25:                                 ; preds = %lor.lhs.false.19, %lor.lhs.false, %if.then.12
  %18 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %18, i32 0, i32 1
  %19 = load i8*, i8** %q_user, align 8, !tbaa !65
  %call26 = call i8* @strchr(i8* %19, i32 64) #1
  %cmp27 = icmp eq i8* %call26, null
  br i1 %cmp27, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %land.lhs.true.25
  %arrayidx30 = getelementptr inbounds [30 x i8], [30 x i8]* %fmtbuf, i32 0, i64 10
  %call31 = call i64 @sm_strlcpy(i8* %arrayidx30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.291, i32 0, i32 0), i64 20)
  br label %if.end.35

if.else.32:                                       ; preds = %land.lhs.true.25, %lor.lhs.false.19
  %arrayidx33 = getelementptr inbounds [30 x i8], [30 x i8]* %fmtbuf, i32 0, i64 10
  %call34 = call i64 @sm_strlcpy(i8* %arrayidx33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.292, i32 0, i32 0), i64 20)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.29
  %arraydecay36 = getelementptr inbounds [30 x i8], [30 x i8]* %fmtbuf, i32 0, i32 0
  %20 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user37 = getelementptr inbounds %struct.address, %struct.address* %20, i32 0, i32 1
  %21 = load i8*, i8** %q_user37, align 8, !tbaa !65
  %22 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* %arraydecay36, i8* %21, i8* %22)
  br label %if.end.68

if.else.38:                                       ; preds = %if.end
  %23 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer39 = getelementptr inbounds %struct.address, %struct.address* %23, i32 0, i32 4
  %24 = load %struct.mailer*, %struct.mailer** %q_mailer39, align 8, !tbaa !63
  %cmp40 = icmp eq %struct.mailer* %24, null
  br i1 %cmp40, label %land.lhs.true.53, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.else.38
  %25 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer43 = getelementptr inbounds %struct.address, %struct.address* %25, i32 0, i32 4
  %26 = load %struct.mailer*, %struct.mailer** %q_mailer43, align 8, !tbaa !63
  %m_addrtype44 = getelementptr inbounds %struct.mailer, %struct.mailer* %26, i32 0, i32 3
  %27 = load i8*, i8** %m_addrtype44, align 8, !tbaa !100
  %cmp45 = icmp eq i8* %27, null
  br i1 %cmp45, label %land.lhs.true.53, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.42
  %28 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_mailer48 = getelementptr inbounds %struct.address, %struct.address* %28, i32 0, i32 4
  %29 = load %struct.mailer*, %struct.mailer** %q_mailer48, align 8, !tbaa !63
  %m_addrtype49 = getelementptr inbounds %struct.mailer, %struct.mailer* %29, i32 0, i32 3
  %30 = load i8*, i8** %m_addrtype49, align 8, !tbaa !100
  %call50 = call i32 @sm_strcasecmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.290, i32 0, i32 0))
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.61

land.lhs.true.53:                                 ; preds = %lor.lhs.false.47, %lor.lhs.false.42, %if.else.38
  %31 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user54 = getelementptr inbounds %struct.address, %struct.address* %31, i32 0, i32 1
  %32 = load i8*, i8** %q_user54, align 8, !tbaa !65
  %call55 = call i8* @strchr(i8* %32, i32 64) #1
  %cmp56 = icmp eq i8* %call55, null
  br i1 %cmp56, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %land.lhs.true.53
  %arrayidx59 = getelementptr inbounds [30 x i8], [30 x i8]* %fmtbuf, i32 0, i64 10
  %call60 = call i64 @sm_strlcpy(i8* %arrayidx59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.293, i32 0, i32 0), i64 20)
  br label %if.end.64

if.else.61:                                       ; preds = %land.lhs.true.53, %lor.lhs.false.47
  %arrayidx62 = getelementptr inbounds [30 x i8], [30 x i8]* %fmtbuf, i32 0, i64 10
  %call63 = call i64 @sm_strlcpy(i8* %arrayidx62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.294, i32 0, i32 0), i64 20)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.58
  %arraydecay65 = getelementptr inbounds [30 x i8], [30 x i8]* %fmtbuf, i32 0, i32 0
  %33 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_fullname66 = getelementptr inbounds %struct.address, %struct.address* %33, i32 0, i32 9
  %34 = load i8*, i8** %q_fullname66, align 8, !tbaa !99
  %35 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_user67 = getelementptr inbounds %struct.address, %struct.address* %35, i32 0, i32 1
  %36 = load i8*, i8** %q_user67, align 8, !tbaa !65
  %37 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* %arraydecay65, i8* %34, i8* %36, i8* %37)
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.64, %if.end.35
  %38 = bitcast [30 x i8]* %fmtbuf to i8*
  call void @llvm.lifetime.end(i64 30, i8* %38) #1
  ret void
}

declare i32 @name2qid(i8*) #3

declare i32 @run_work_group(i32, i32) #3

declare i8* @sm_malloc_tagged(i64, i8*, i32, i32) #3

declare void @syserr(i8*, ...) #3

declare i32 @runqueue(i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @help(i8* %topic, %struct.envelope* %e) #0 {
entry:
  %topic.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %hf = alloca %struct.sm_file*, align 8
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %noinfo = alloca i32, align 4
  %first = alloca i32, align 4
  %sff = alloca i64, align 8
  %buf = alloca [2048 x i8], align 16
  %inp = alloca [2048 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %h = alloca i32, align 4
  %__a0 = alloca i8, align 1
  %__a1 = alloca i8, align 1
  %__a2 = alloca i8, align 1
  %tmp = alloca i8*, align 8
  %lbp = alloca i8*, align 8
  %lbs = alloca i32, align 4
  store i8* %topic, i8** %topic.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast %struct.sm_file** %hf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %noinfo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %first, align 4, !tbaa !5
  %5 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 8320, i64* %sff, align 8, !tbaa !10
  %6 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %6) #1
  %7 = bitcast [2048 x i8]* %inp to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %7) #1
  %8 = load i32, i32* @DontLockReadFiles, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i64, i64* %sff, align 8, !tbaa !10
  %or = or i64 %9, 16384
  store i64 %or, i64* %sff, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %and = and i32 %10, 33554432
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %11 = load i64, i64* %sff, align 8, !tbaa !10
  %or3 = or i64 %11, 256
  store i64 %or3, i64* %sff, align 8, !tbaa !10
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %12 = load i8*, i8** @HelpFile, align 8, !tbaa !1
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %13 = load i8*, i8** @HelpFile, align 8, !tbaa !1
  %14 = load i64, i64* %sff, align 8, !tbaa !10
  %call = call %struct.sm_file* @safefopen(i8* %13, i32 0, i32 292, i64 %14)
  store %struct.sm_file* %call, %struct.sm_file** %hf, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.sm_file* %call, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.4
  %call7 = call i32* @__errno_location() #10
  store i32 0, i32* %call7, align 4, !tbaa !5
  call void (i8*, ...) @message(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Version, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %topic.addr, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %15, null
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end.8
  %16 = load i8*, i8** %topic.addr, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %conv = sext i8 %17 to i32
  %cmp11 = icmp eq i32 %conv, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %lor.lhs.false.10, %if.end.8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), i8** %topic.addr, align 8, !tbaa !1
  store i32 0, i32* %noinfo, align 4, !tbaa !5
  br label %if.end.14

if.else:                                          ; preds = %lor.lhs.false.10
  %18 = load i8*, i8** %topic.addr, align 8, !tbaa !1
  call void @makelower(i8* %18)
  store i32 1, i32* %noinfo, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  %19 = load i8*, i8** %topic.addr, align 8, !tbaa !1
  %call15 = call i64 @strlen(i8* %19) #11
  %conv16 = trunc i64 %call15 to i32
  store i32 %conv16, i32* %len, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.124, %if.end.37, %if.end.14
  %20 = load %struct.sm_file*, %struct.sm_file** %hf, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call17 = call i32 @sm_io_fgets(%struct.sm_file* %20, i32 -2, i8* %arraydecay, i32 2048)
  %cmp18 = icmp sge i32 %call17, 0
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 0
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv20 = sext i8 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 35
  br i1 %cmp21, label %if.then.23, label %if.end.38

if.then.23:                                       ; preds = %while.body
  %22 = load i32, i32* @help.foundvers, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %22, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.then.23
  %arraydecay26 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call27 = call i32 @strncmp(i8* %arraydecay26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.226, i32 0, i32 0), i64 6) #11
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %land.lhs.true
  %23 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %arraydecay31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay31, i64 6
  %call32 = call i32 (i8*, i8*, ...) @sm_io_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i32* %h)
  %cmp33 = icmp eq i32 %call32, 1
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.30
  %24 = load i32, i32* %h, align 4, !tbaa !5
  store i32 %24, i32* @help.foundvers, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.30
  %25 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true, %if.then.23
  br label %while.cond

if.end.38:                                        ; preds = %while.body
  %arraydecay39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %26 = load i8*, i8** %topic.addr, align 8, !tbaa !1
  %27 = load i32, i32* %len, align 4, !tbaa !5
  %conv40 = sext i32 %27 to i64
  %call41 = call i32 @strncmp(i8* %arraydecay39, i8* %26, i64 %conv40) #11
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.124

if.then.44:                                       ; preds = %if.end.38
  %28 = load i32, i32* %first, align 4, !tbaa !5
  %tobool45 = icmp ne i32 %28, 0
  br i1 %tobool45, label %if.then.46, label %if.end.53

if.then.46:                                       ; preds = %if.then.44
  store i32 0, i32* %first, align 4, !tbaa !5
  %29 = load i32, i32* @help.foundvers, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %29, 2
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.52

land.lhs.true.49:                                 ; preds = %if.then.46
  %30 = load i32, i32* %noinfo, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %30, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.49
  call void (i8*, ...) @message(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Version, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.49, %if.then.46
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.44
  call void @llvm.lifetime.start(i64 1, i8* %__a0) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.228, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.228 to i64)), i64 1), label %cond.true, label %cond.false.94

cond.true:                                        ; preds = %if.end.53
  %31 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.228, i32 0, i32 0), align 1, !tbaa !7
  store i8 %31, i8* %__a0, align 1, !tbaa !7
  %32 = load i8, i8* %__a0, align 1, !tbaa !7
  %conv54 = sext i8 %32 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %cond.true.57, label %cond.false

cond.true.57:                                     ; preds = %cond.true
  %arraydecay58 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  br label %cond.end.92

cond.false:                                       ; preds = %cond.true
  %33 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.228, i32 0, i64 1), align 1, !tbaa !7
  store i8 %33, i8* %__a1, align 1, !tbaa !7
  %34 = load i8, i8* %__a1, align 1, !tbaa !7
  %conv59 = sext i8 %34 to i32
  %cmp60 = icmp eq i32 %conv59, 0
  br i1 %cmp60, label %cond.true.62, label %cond.false.66

cond.true.62:                                     ; preds = %cond.false
  %arraydecay63 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %35 = load i8, i8* %__a0, align 1, !tbaa !7
  %conv64 = sext i8 %35 to i32
  %call65 = call i8* @strchr(i8* %arraydecay63, i32 %conv64) #1
  br label %cond.end.90

cond.false.66:                                    ; preds = %cond.false
  %36 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.228, i32 0, i64 2), align 1, !tbaa !7
  store i8 %36, i8* %__a2, align 1, !tbaa !7
  %37 = load i8, i8* %__a2, align 1, !tbaa !7
  %conv67 = sext i8 %37 to i32
  %cmp68 = icmp eq i32 %conv67, 0
  br i1 %cmp68, label %cond.true.70, label %cond.false.75

cond.true.70:                                     ; preds = %cond.false.66
  %arraydecay71 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %38 = load i8, i8* %__a0, align 1, !tbaa !7
  %conv72 = sext i8 %38 to i32
  %39 = load i8, i8* %__a1, align 1, !tbaa !7
  %conv73 = sext i8 %39 to i32
  %call74 = call i8* @__strpbrk_c2(i8* %arraydecay71, i32 %conv72, i32 %conv73)
  br label %cond.end.88

cond.false.75:                                    ; preds = %cond.false.66
  %40 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.228, i32 0, i32 0), i64 3), align 1, !tbaa !7
  %conv76 = sext i8 %40 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %cond.true.79, label %cond.false.85

cond.true.79:                                     ; preds = %cond.false.75
  %arraydecay80 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %41 = load i8, i8* %__a0, align 1, !tbaa !7
  %conv81 = sext i8 %41 to i32
  %42 = load i8, i8* %__a1, align 1, !tbaa !7
  %conv82 = sext i8 %42 to i32
  %43 = load i8, i8* %__a2, align 1, !tbaa !7
  %conv83 = sext i8 %43 to i32
  %call84 = call i8* @__strpbrk_c3(i8* %arraydecay80, i32 %conv81, i32 %conv82, i32 %conv83)
  br label %cond.end

cond.false.85:                                    ; preds = %cond.false.75
  %arraydecay86 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call87 = call i8* @strpbrk(i8* %arraydecay86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.228, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.85, %cond.true.79
  %cond = phi i8* [ %call84, %cond.true.79 ], [ %call87, %cond.false.85 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end, %cond.true.70
  %cond89 = phi i8* [ %call74, %cond.true.70 ], [ %cond, %cond.end ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.62
  %cond91 = phi i8* [ %call65, %cond.true.62 ], [ %cond89, %cond.end.88 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.57
  %cond93 = phi i8* [ null, %cond.true.57 ], [ %cond91, %cond.end.90 ]
  br label %cond.end.97

cond.false.94:                                    ; preds = %if.end.53
  %arraydecay95 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call96 = call i8* @strpbrk(i8* %arraydecay95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.228, i32 0, i32 0)) #1
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.94, %cond.end.92
  %cond98 = phi i8* [ %cond93, %cond.end.92 ], [ %call96, %cond.false.94 ]
  store i8* %cond98, i8** %tmp, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %__a2) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0) #1
  %44 = load i8*, i8** %tmp, !tbaa !1
  store i8* %44, i8** %p, align 8, !tbaa !1
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp99 = icmp eq i8* %45, null
  br i1 %cmp99, label %if.then.101, label %if.else.107

if.then.101:                                      ; preds = %cond.end.97
  %arraydecay102 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %arraydecay103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call104 = call i64 @strlen(i8* %arraydecay103) #11
  %add.ptr105 = getelementptr inbounds i8, i8* %arraydecay102, i64 %call104
  %add.ptr106 = getelementptr inbounds i8, i8* %add.ptr105, i64 -1
  store i8* %add.ptr106, i8** %p, align 8, !tbaa !1
  br label %if.end.108

if.else.107:                                      ; preds = %cond.end.97
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.107, %if.then.101
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  call void @fixcrlf(i8* %47, i32 1)
  %48 = load i32, i32* @help.foundvers, align 4, !tbaa !5
  %cmp109 = icmp sge i32 %48, 2
  br i1 %cmp109, label %if.then.111, label %if.end.123

if.then.111:                                      ; preds = %if.end.108
  %49 = bitcast i8** %lbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = bitcast i32* %lbs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay114 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 2048, %sub.ptr.sub
  %conv115 = trunc i64 %sub to i32
  store i32 %conv115, i32* %lbs, align 4, !tbaa !5
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %call116 = call i8* @translate_dollars(i8* %52, i8* %53, i32* %lbs)
  store i8* %call116, i8** %lbp, align 8, !tbaa !1
  %54 = load i8*, i8** %lbp, align 8, !tbaa !1
  %arraydecay117 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  %55 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %54, i8* %arraydecay117, i64 2048, %struct.envelope* %55)
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %57 = load i8*, i8** %lbp, align 8, !tbaa !1
  %cmp118 = icmp ne i8* %56, %57
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.then.111
  %58 = load i8*, i8** %lbp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 5350)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %if.then.111
  %arraydecay122 = getelementptr inbounds [2048 x i8], [2048 x i8]* %inp, i32 0, i32 0
  store i8* %arraydecay122, i8** %p, align 8, !tbaa !1
  %59 = bitcast i32* %lbs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i8** %lbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.121, %if.end.108
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.229, i32 0, i32 0), i8* %61)
  store i32 0, i32* %noinfo, align 4, !tbaa !5
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.38
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load i32, i32* %noinfo, align 4, !tbaa !5
  %tobool125 = icmp ne i32 %62, 0
  br i1 %tobool125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %while.end
  %63 = load i8*, i8** %topic.addr, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.230, i32 0, i32 0), i8* %63)
  br label %if.end.128

if.else.127:                                      ; preds = %while.end
  call void (i8*, ...) @message(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.231, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.127, %if.then.126
  %64 = load i32, i32* @help.foundvers, align 4, !tbaa !5
  %cmp129 = icmp ne i32 %64, 0
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.139

land.lhs.true.131:                                ; preds = %if.end.128
  %65 = load i32, i32* @help.foundvers, align 4, !tbaa !5
  %cmp132 = icmp slt i32 %65, 2
  br i1 %cmp132, label %if.then.134, label %if.end.139

if.then.134:                                      ; preds = %land.lhs.true.131
  %66 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp135 = icmp sgt i32 %66, 1
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.then.134
  %67 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %67, i32 0, i32 25
  %68 = load i8*, i8** %e_id, align 8, !tbaa !29
  %69 = load i8*, i8** @HelpFile, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.232, i32 0, i32 0), i8* %69, i32 2)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.then.134
  store i32 0, i32* @help.foundvers, align 4, !tbaa !5
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %land.lhs.true.131, %if.end.128
  %70 = load %struct.sm_file*, %struct.sm_file** %hf, align 8, !tbaa !1
  %call140 = call i32 @sm_io_close(%struct.sm_file* %70, i32 -2)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.139, %if.then.6
  %71 = bitcast [2048 x i8]* %inp to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %71) #1
  %72 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %72) #1
  %73 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %noinfo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.sm_file** %hf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
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

declare void @finis(i32, i32, i32) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #8

declare void @set_delivery_mode(i32, %struct.envelope*) #3

declare i8* @milter_unknown(i8*, %struct.envelope*, i8*) #3

declare void @logdelivery(%struct.mailer*, %struct.mailer_con_info*, i8*, i8*, %struct.address*, i64, %struct.envelope*, %struct.address*, i32) #3

; Function Attrs: nounwind uwtable
define void @reset_mail_esmtp_args(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i32, i32* @SevenBitInput_Saved, align 4, !tbaa !5
  store i32 %0, i32* @SevenBitInput, align 4, !tbaa !5
  %1 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_bodytype = getelementptr inbounds %struct.envelope, %struct.envelope* %1, i32 0, i32 23
  store i8* null, i8** %e_bodytype, align 8, !tbaa !81
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_envid = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 40
  store i8* null, i8** %e_envid, align 8, !tbaa !82
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %3, i32 0, i32 46
  %call = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.178, i32 0, i32 0), i8** null)
  %4 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %call, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 4532, i32 %4)
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %5, i32 0, i32 11
  %6 = load i64, i64* %e_flags, align 8, !tbaa !26
  %and = and i64 %6, -1048581
  store i64 %and, i64* %e_flags, align 8, !tbaa !26
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1 = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 46
  %call2 = call i32 @macid_parse(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.179, i32 0, i32 0), i8** null)
  %8 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1, i32 1, i32 %call2, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 4536, i32 %8)
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by = getelementptr inbounds %struct.envelope, %struct.envelope* %9, i32 0, i32 50
  store i64 0, i64* %e_deliver_by, align 8, !tbaa !83
  %10 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag = getelementptr inbounds %struct.envelope, %struct.envelope* %10, i32 0, i32 51
  store i32 0, i32* %e_dlvr_flag, align 4, !tbaa !84
  ret void
}

declare i32 @xtextok(i8*) #3

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #2

declare i32 @isatom(i8*) #3

declare %struct.sm_file* @safefopen(i8*, i32, i32, i64) #3

declare void @makelower(i8*) #3

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #3

declare i32 @sm_io_sscanf(i8*, i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c2(i8* %__s, i32 %__accept1, i32 %__accept2) #9 {
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
define available_externally i8* @__strpbrk_c3(i8* %__s, i32 %__accept1, i32 %__accept2, i32 %__accept3) #9 {
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
declare i8* @strpbrk(i8*, i8*) #6

declare i8* @translate_dollars(i8*, i8*, i32*) #3

declare i32 @sm_io_close(%struct.sm_file*, i32) #3

declare i8* @milter_data_cmd(%struct.envelope*, i8*) #3

declare void @buffer_errors() #3

declare void @collect(%struct.sm_file*, i32, %struct.header**, %struct.envelope*, i32) #3

declare i8* @milter_data(%struct.envelope*, i8*) #3

declare i8* @queuename(%struct.envelope*, i32) #3

declare i32 @sm_io_setinfo(%struct.sm_file*, i32, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @stat(i8* nonnull %__path, %struct.stat* nonnull %__statbuf) #9 {
entry:
  %__path.addr = alloca i8*, align 8
  %__statbuf.addr = alloca %struct.stat*, align 8
  store i8* %__path, i8** %__path.addr, align 8, !tbaa !1
  store %struct.stat* %__statbuf, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__path.addr, align 8, !tbaa !1
  %1 = load %struct.stat*, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__xstat(i32 1, i8* %0, %struct.stat* %1) #1
  ret i32 %call
}

declare void @dumpfd(i32, i32, i32) #3

declare void @dferror(%struct.sm_file*, i8*, %struct.envelope*) #3

declare void @flush_errors(i32) #3

declare i32 @fsync(i32) #3

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #3

declare void @markstats(%struct.envelope*, %struct.address*, i32) #3

declare i32 @split_by_recipient(%struct.envelope*) #3

; Function Attrs: nounwind readnone
declare %struct.__res_state* @__res_state() #2

declare void @queueup(%struct.envelope*, i32, i32) #3

declare void @sendall(%struct.envelope*, i32) #3

declare i32 @shouldqueue(i64, i64) #3

declare void @closexscript(%struct.envelope*) #3

declare void @unlockqueue(%struct.envelope*) #3

declare i32 @doworklist(%struct.envelope*, i32, i32) #3

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) #6

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #6

; Function Attrs: nounwind
declare i32 @isatty(i32) #6

declare i32 @fcntl(i32, i32, ...) #3

declare i8* @sm_errstring(i32) #3

declare void @sm_io_automode(%struct.sm_file*, %struct.sm_file*) #3

declare i64 @sm_strlcpy(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn }
attributes #13 = { nounwind returns_twice }
attributes #14 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!13, !6, i64 4}
!13 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !14, i64 20, !6, i64 24, !2, i64 32}
!14 = !{!"milters", !6, i64 0}
!15 = !{!13, !6, i64 12}
!16 = !{!13, !6, i64 16}
!17 = !{!18, !6, i64 8}
!18 = !{!"sm_debug", !2, i64 0, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!19 = !{!20, !2, i64 2640}
!20 = !{!"envelope", !2, i64 0, !11, i64 8, !11, i64 16, !2, i64 24, !21, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !11, i64 256, !2, i64 264, !11, i64 272, !6, i64 280, !9, i64 284, !9, i64 286, !9, i64 288, !9, i64 290, !9, i64 292, !9, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !11, i64 456, !6, i64 464, !11, i64 472, !11, i64 480, !22, i64 488, !2, i64 2576, !2, i64 2584, !23, i64 2592, !11, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!21 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !11, i64 144, !2, i64 152, !9, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!22 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!23 = !{!"sm_timers", !24, i64 0}
!24 = !{!"_timer", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!25 = !{!20, !2, i64 488}
!26 = !{!20, !11, i64 272}
!27 = !{!13, !6, i64 8}
!28 = !{!20, !6, i64 2648}
!29 = !{!20, !2, i64 344}
!30 = !{!20, !2, i64 240}
!31 = !{i64 0, i64 2, !8, i64 2, i64 14, !7, i64 0, i64 2, !8, i64 2, i64 108, !7, i64 0, i64 2, !8, i64 2, i64 2, !8, i64 4, i64 4, !5, i64 8, i64 8, !7}
!32 = !{!33, !11, i64 0}
!33 = !{!"timeval", !11, i64 0, !11, i64 8}
!34 = !{!33, !11, i64 8}
!35 = !{i32 217829}
!36 = !{!20, !2, i64 408}
!37 = !{!13, !2, i64 32}
!38 = !{!13, !6, i64 0}
!39 = !{!40, !2, i64 0}
!40 = !{!"sm_exc_handler", !2, i64 0, !3, i64 8, !2, i64 208, !6, i64 216}
!41 = !{!40, !2, i64 208}
!42 = !{!40, !6, i64 216}
!43 = !{!20, !2, i64 24}
!44 = !{!45, !11, i64 24}
!45 = !{!"sm_file", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !11, i64 24, !9, i64 32, !46, i64 40, !6, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !2, i64 152, !2, i64 160, !46, i64 168, !2, i64 184, !6, i64 192, !3, i64 196, !3, i64 199, !6, i64 200, !11, i64 208, !6, i64 216}
!46 = !{!"smbuf", !2, i64 0, !6, i64 8}
!47 = !{!48, !11, i64 48}
!48 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !3, i64 144, !3, i64 208, !3, i64 272, !3, i64 296}
!49 = !{!50, !2, i64 0}
!50 = !{!"cmd", !2, i64 0, !6, i64 8}
!51 = !{!20, !2, i64 376}
!52 = !{!50, !6, i64 8}
!53 = !{!20, !2, i64 64}
!54 = !{!55, !2, i64 0}
!55 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !9, i64 72, !9, i64 74, !2, i64 80, !9, i64 88, !9, i64 90, !9, i64 92, !9, i64 94, !2, i64 96, !11, i64 104, !6, i64 112, !6, i64 116, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !11, i64 152, !6, i64 160, !9, i64 164}
!56 = !{!20, !2, i64 56}
!57 = !{!20, !2, i64 40}
!58 = !{!20, !11, i64 256}
!59 = !{!20, !6, i64 280}
!60 = !{!13, !6, i64 24}
!61 = !{!20, !9, i64 290}
!62 = !{!13, !6, i64 20}
!63 = !{!21, !2, i64 32}
!64 = !{!21, !2, i64 24}
!65 = !{!21, !2, i64 8}
!66 = !{!21, !9, i64 160}
!67 = !{!21, !2, i64 128}
!68 = !{!21, !2, i64 136}
!69 = !{!21, !2, i64 0}
!70 = !{!21, !2, i64 72}
!71 = !{!72, !11, i64 104}
!72 = !{!"queuegrp", !2, i64 0, !2, i64 8, !9, i64 16, !6, i64 20, !6, i64 24, !11, i64 32, !2, i64 40, !3, i64 48, !9, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !11, i64 104}
!73 = !{!72, !6, i64 84}
!74 = !{!75, !2, i64 0}
!75 = !{!"queue_char", !2, i64 0, !6, i64 8, !2, i64 16}
!76 = !{!75, !6, i64 8}
!77 = !{!75, !2, i64 16}
!78 = !{!79, !3, i64 0}
!79 = !{!"", !3, i64 0, !6, i64 4}
!80 = !{!79, !6, i64 4}
!81 = !{!20, !2, i64 328}
!82 = !{!20, !2, i64 440}
!83 = !{!20, !11, i64 2624}
!84 = !{!20, !6, i64 2632}
!85 = !{!21, !11, i64 40}
!86 = !{!21, !2, i64 120}
!87 = !{!20, !2, i64 336}
!88 = !{!89, !11, i64 48}
!89 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !90, i64 72, !90, i64 88, !90, i64 104, !3, i64 120}
!90 = !{!"timespec", !11, i64 0, !11, i64 8}
!91 = !{!20, !2, i64 392}
!92 = !{!93, !6, i64 4}
!93 = !{!"__res_state", !6, i64 0, !6, i64 4, !11, i64 8, !6, i64 16, !3, i64 20, !9, i64 68, !3, i64 72, !3, i64 128, !11, i64 384, !6, i64 392, !6, i64 392, !6, i64 393, !6, i64 393, !3, i64 396, !2, i64 480, !2, i64 488, !6, i64 496, !6, i64 500, !6, i64 504, !3, i64 512}
!94 = !{!93, !6, i64 0}
!95 = !{!20, !9, i64 292}
!96 = !{!20, !2, i64 320}
!97 = !{!20, !11, i64 8}
!98 = !{!20, !11, i64 16}
!99 = !{!21, !2, i64 64}
!100 = !{!55, !2, i64 24}
