; ModuleID = '11.savemail.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.mailer = type { i8*, i8*, i8*, i8*, i8*, [8 x i32], i16, i16, i8**, i16, i16, i16, i16, i8*, i64, i32, i32, i8*, i8*, i32, i32, i8*, i64, i32, i16 }
%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.address = type { i8*, i8*, i8*, i8*, %struct.mailer*, i64, i32, i32, i8*, i8*, %struct.address*, %struct.address*, i8*, %struct.address*, %struct.address*, i8*, i8*, i8*, i8*, i64, i8*, i16, i8*, i32, i32, i8* }
%struct.MACROS_T = type { %struct.SM_RPOOL_T*, [8 x i32], [256 x i8*] }
%struct.mailer_con_info = type { i64, i16, i16, i16, i16, i32, i64, %struct.sm_file*, %struct.sm_file*, i32, i8*, %struct.mailer*, i8*, i8*, i8*, i64, %struct.sm_file*, i8*, i64, i32, i8*, %struct.SM_RPOOL_T*, i32, %struct.address*, %struct.MACROS_T }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%struct.SM_RPOOL_T = type { i8*, void (i8*)**, i64, i64, i8*, i64, %struct.sm_poollink*, %struct.sm_resource*, i64, %struct.sm_rlist* }
%struct.sm_poollink = type { %struct.sm_poollink* }
%struct.sm_resource = type { void (i8*)*, i8* }
%struct.sm_rlist = type { [511 x %struct.sm_resource], %struct.sm_rlist* }
%struct.anon = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [3 x i64], [3 x i32] }
%struct.SM_MBDB_T = type { i32, i32, [256 x i8], [256 x i8], [4096 x i8], [4096 x i8] }
%struct.__res_state = type { i32, i32, i64, i32, [3 x %struct.sockaddr_in], i16, [7 x i8*], [256 x i8], i64, i32, [10 x %struct.anon.0], i32 (%struct.sockaddr_in**, i8**, i32*, i8*, i32, i32*)*, i32 (%struct.sockaddr_in*, i8*, i32, i8*, i32, i32*)*, i32, i32, i32, %union.anon }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon.0 = type { %struct.in_addr, i32 }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i16, [3 x i16], [3 x i32], i16, i16, [3 x %struct.sockaddr_in6*], [2 x i32] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }

@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str = private unnamed_addr constant [60 x i8] c"\0Asavemail, errormode = %c, id = %s, ExitStat = %d\0A  e_from=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@ExitStat = external global i32, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Postmaster\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"553 5.3.5 Cannot parse Postmaster!\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"554 5.3.0 savemail: bogus errormode x%x\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"  state %d\0A\00", align 1
@SmFtStdio_def = external global %struct.sm_file, align 8
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"\81n\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\0D\0AMessage from %s...\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Errors occurred while sending mail.\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Transcript follows:\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Transcript of session is unavailable.\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"Original message will be saved in dead.letter.\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"postmaster\00", align 1
@DontPruneRoutes = external global i32, align 4
@DoubleBounceAddr = external global i8*, align 8
@.str.14 = private unnamed_addr constant [27 x i8] c"553 5.3.0 cannot parse %s!\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"savemail.c\00", align 1
@SmHeapGroup = external global i32, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"\81z/dead.letter\00", align 1
@RealUid = external global i32, align 4
@FileMailer = external global %struct.mailer*, align 8
@Verbose = external global i32, align 4
@OpMode = external global i8, align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Saved message in %s\00", align 1
@SafeFileEnv = external global i8*, align 8
@DeadLetterDrop = external global i8*, align 8
@FileMode = external global i32, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LogLevel = external global i32, align 4
@.str.19 = private unnamed_addr constant [37 x i8] c"554 5.3.5 savemail: unknown state %d\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"savemail panic\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"554 savemail: cannot save rejected email anywhere\00", align 1
@CurEnv = external global %struct.envelope*, align 8
@returntosender.returndepth = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [23 x i8] c"Unable to deliver mail\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"\0A*** Return To Sender: msg=\22%s\22, depth=%d, e=%p, returnq=\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Sendq=\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"554 5.3.0 returntosender: infinite recursion on %s\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\81b\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@MimeMode = external global i32, align 4
@PrivacyFlags = external global i64, align 8
@.str.29 = private unnamed_addr constant [53 x i8] c"554 5.3.0 returntosender: cannot select queue for %s\00", align 1
@TimeOuts = external global %struct.anon, align 8
@.str.30 = private unnamed_addr constant [3 x i8] c"To\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"return to sender\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"sender notify\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"postmaster notify\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"DSN\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"%s: %s: %s\00", align 1
@SendMIMEErrors = external global i32, align 4
@.str.36 = private unnamed_addr constant [13 x i8] c"MIME-Version\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"%s.%ld/%.100s\00", align 1
@MyHostName = external global i8*, align 8
@.str.39 = private unnamed_addr constant [62 x i8] c"multipart/report; report-type=delivery-status;\0A\09boundary=\22%s\22\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Content-Transfer-Encoding\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"8bit\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Warning:\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"Subject\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"warning-timeout\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"Postmaster warning:\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"postmaster-warning\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"Return receipt\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"return-receipt\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"Postmaster notify: see transcript for details\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"postmaster-notification\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"Returned mail: see transcript for details\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"auto-generated (%s)\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Auto-Submitted\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"553 5.3.5 Can't parse myself!\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"Mail Delivery Subsystem\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"4.4.2\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"4.2.0\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"4.3.0\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"4.3.1\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"5.5.2\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"5.5.4\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"5.5.1\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"5.2.0\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"5.1.6\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"5.2.2\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"5.1.0\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"5.0.0\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"2.0.0\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"4.0.0\00", align 1
@xtextify.bp = internal global i8* null, align 8
@xtextify.bplen = internal global i32 0, align 4
@.str.73 = private unnamed_addr constant [26 x i8] c"!xtextify string too long\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@xuntextify.bp = internal global i8* null, align 8
@xuntextify.bplen = internal global i32 0, align 4
@.str.75 = private unnamed_addr constant [17 x i8] c"bogus xtext: +%c\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"bogus xtext: +%x%c\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"()<>@,;:\5C.[]\22\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"errbody: null parent\00", align 1
@.str.79 = private unnamed_addr constant [38 x i8] c"   ----- Original message lost -----\0A\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.81 = private unnamed_addr constant [36 x i8] c"This is a MIME-encapsulated message\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"Postmaster \00", align 1
@.str.84 = private unnamed_addr constant [51 x i8] c"    **********************************************\00", align 1
@.str.85 = private unnamed_addr constant [51 x i8] c"    **      THIS IS A WARNING MESSAGE ONLY      **\00", align 1
@.str.86 = private unnamed_addr constant [51 x i8] c"    **  YOU DO NOT NEED TO RESEND YOUR MESSAGE  **\00", align 1
@.str.87 = private unnamed_addr constant [40 x i8] c"The original message was received at %s\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"from \81_\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"with id \00", align 1
@ErrMsgFile = external global i8*, align 8
@DontLockReadFiles = external global i32, align 4
@DontBlameSendmail = external global [8 x i32], align 16
@.str.90 = private unnamed_addr constant [66 x i8] c"   ----- The following addresses had permanent fatal errors -----\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"    (reason: %s)\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"    (expanded from: %s)\00", align 1
@.str.93 = private unnamed_addr constant [70 x i8] c"   ----- The following addresses had transient non-fatal errors -----\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"Deliver-By notify: relayed\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"Deliver-By trace: relayed\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"relayed to non-DSN-aware mailer\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"successfully delivered to mailing list\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"successfully delivered to mailbox\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"expanded by alias\00", align 1
@.str.100 = private unnamed_addr constant [77 x i8] c"   ----- The following addresses had successful delivery notifications -----\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"%s  (%s)\00", align 1
@.str.102 = private unnamed_addr constant [53 x i8] c"   ----- Transcript of session is unavailable -----\0A\00", align 1
@.str.103 = private unnamed_addr constant [46 x i8] c"   ----- Transcript of session follows -----\0A\00", align 1
@.str.104 = private unnamed_addr constant [38 x i8] c"Content-Type: message/delivery-status\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"Original-Envelope-Id: %.800s\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"Reporting-MTA: dns; %.800s\00", align 1
@RealHostName = external global i8*, align 8
@.str.107 = private unnamed_addr constant [4 x i8] c"dns\00", align 1
@.str.108 = private unnamed_addr constant [30 x i8] c"Received-From-MTA: %s; %.800s\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"Arrival-Date: \00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"Deliver-By-Date: \00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"delivered (to mailing list)\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"delivered (to mailbox)\00", align 1
@.str.114 = private unnamed_addr constant [34 x i8] c"relayed (to non-DSN-aware mailer)\00", align 1
@.str.115 = private unnamed_addr constant [36 x i8] c"expanded (to multi-recipient alias)\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"delayed\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"relayed (Deliver-By trace mode)\00", align 1
@.str.118 = private unnamed_addr constant [33 x i8] c"delayed (Deliver-By notify mode)\00", align 1
@.str.119 = private unnamed_addr constant [33 x i8] c"relayed (Deliver-By notify mode)\00", align 1
@.str.120 = private unnamed_addr constant [34 x i8] c"Original-Recipient: %.100s;%.700s\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"rfc822\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"%s; %.700s@%.100s\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"%s; %.800s\00", align 1
@.str.124 = private unnamed_addr constant [36 x i8] c"returntosender: q_finalrcpt is NULL\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c"Final-Recipient: %s\00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"X-Actual-Recipient: %s\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"Action: \00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"Status: \00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"Remote-MTA: %s; %.800s\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"smtp\00", align 1
@.str.131 = private unnamed_addr constant [28 x i8] c"Diagnostic-Code: %s; %.800s\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"Last-Attempt-Date: \00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"Will-Retry-Until: \00", align 1
@.str.134 = private unnamed_addr constant [41 x i8] c"   ----- Original message follows -----\0A\00", align 1
@.str.135 = private unnamed_addr constant [39 x i8] c"   ----- Message header follows -----\0A\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"Content-Type: \00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"message/rfc822\00", align 1
@.str.138 = private unnamed_addr constant [20 x i8] c"text/rfc822-headers\00", align 1
@.str.139 = private unnamed_addr constant [30 x i8] c"Content-Transfer-Encoding: %s\00", align 1
@.str.140 = private unnamed_addr constant [39 x i8] c"   ----- Message body suppressed -----\00", align 1
@.str.141 = private unnamed_addr constant [40 x i8] c"  ----- No message was collected -----\0A\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"errbody: I/O error\00", align 1

; Function Attrs: nounwind uwtable
define i32 @savemail(%struct.envelope* %e, i32 %sendbody) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %sendbody.addr = alloca i32, align 4
  %fp = alloca %struct.sm_file*, align 8
  %panic = alloca i32, align 4
  %state = alloca i32, align 4
  %q = alloca %struct.address*, align 8
  %p = alloca i8*, align 8
  %mcibuf = alloca %struct.mailer_con_info, align 8
  %flags = alloca i32, align 4
  %sff = alloca i64, align 8
  %buf = alloca [2049 x i8], align 16
  %dlbuf = alloca [4096 x i8], align 16
  %user = alloca %struct.SM_MBDB_T, align 4
  %cleanup.dest.slot = alloca i32
  %from = alloca [4096 x i8], align 16
  %oldverb = alloca i32, align 4
  %oldverb320 = alloca i32, align 4
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %sendbody, i32* %sendbody.addr, align 4, !tbaa !5
  %0 = bitcast %struct.sm_file** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %panic to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %panic, align 4, !tbaa !5
  %2 = bitcast i32* %state to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.address* null, %struct.address** %q, align 8, !tbaa !1
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.mailer_con_info* %mcibuf to i8*
  call void @llvm.lifetime.start(i64 2256, i8* %5) #1
  %6 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast [2049 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2049, i8* %8) #1
  %9 = bitcast [4096 x i8]* %dlbuf to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %9) #1
  %10 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.start(i64 8712, i8* %10) #1
  %11 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 6), align 1, !tbaa !7
  %conv = zext i8 %11 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errormode = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 17
  %14 = load i16, i16* %e_errormode, align 2, !tbaa !8
  %conv2 = sext i16 %14 to i32
  %15 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %15, i32 0, i32 25
  %16 = load i8*, i8** %e_id, align 8, !tbaa !16
  %cmp3 = icmp eq i8* %16, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id5 = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 25
  %18 = load i8*, i8** %e_id5, align 8, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %cond.true ], [ %18, %cond.false ]
  %19 = load i32, i32* @ExitStat, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i32 0, i32 0), i32 %conv2, i8* %cond, i32 %19)
  %call = call %struct.sm_file* @sm_debug_file()
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 4
  call void @printaddr(%struct.sm_file* %call, %struct.address* %e_from, i32 0)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id6 = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 25
  %22 = load i8*, i8** %e_id6, align 8, !tbaa !16
  %cmp7 = icmp eq i8* %22, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %23 = load i32, i32* %panic, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.346

if.end.10:                                        ; preds = %if.end
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from11 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 4
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %e_from11, i32 0, i32 0
  %25 = load i8*, i8** %q_paddr, align 8, !tbaa !17
  %cmp12 = icmp eq i8* %25, null
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end.10
  %26 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sender = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 5
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8** %e_sender, align 8, !tbaa !18
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sender15 = getelementptr inbounds %struct.envelope, %struct.envelope* %27, i32 0, i32 5
  %28 = load i8*, i8** %e_sender15, align 8, !tbaa !18
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from16 = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 4
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call17 = call %struct.address* @parseaddr(i8* %28, %struct.address* %e_from16, i32 17, i32 0, i8** null, %struct.envelope* %30, i32 0)
  %cmp18 = icmp eq %struct.address* %call17, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.14
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0))
  call void @finis(i32 1, i32 1, i32 70)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.10
  %31 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 3
  store i8* null, i8** %e_to, align 8, !tbaa !19
  %32 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errormode23 = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 17
  %33 = load i16, i16* %e_errormode23, align 2, !tbaa !8
  %conv24 = sext i16 %33 to i32
  switch i32 %conv24, label %sw.default [
    i32 119, label %sw.bb
    i32 101, label %sw.bb.25
    i32 109, label %sw.bb.25
    i32 112, label %sw.bb.26
    i32 0, label %sw.bb.26
    i32 113, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.end.22
  store i32 0, i32* %state, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.22, %if.end.22
  store i32 1, i32* %state, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.22, %if.end.22
  store i32 2, i32* %state, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.22
  %34 = load i32, i32* %panic, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.346

sw.default:                                       ; preds = %if.end.22
  %35 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errormode28 = getelementptr inbounds %struct.envelope, %struct.envelope* %35, i32 0, i32 17
  %36 = load i16, i16* %e_errormode28, align 2, !tbaa !8
  %conv29 = sext i16 %36 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0), i32 %conv29)
  store i32 1, i32* %state, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.26, %sw.bb.25, %sw.bb
  %37 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %37, i32 0, i32 11
  %38 = load i64, i64* %e_flags, align 8, !tbaa !20
  %and = and i64 %38, 128
  %cmp30 = icmp ne i64 %and, 0
  br i1 %cmp30, label %if.then.32, label %if.end.43

if.then.32:                                       ; preds = %sw.epilog
  %39 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 21
  %40 = load %struct.envelope*, %struct.envelope** %e_parent, align 8, !tbaa !21
  %cmp33 = icmp ne %struct.envelope* %40, null
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.42

land.lhs.true.35:                                 ; preds = %if.then.32
  %41 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent36 = getelementptr inbounds %struct.envelope, %struct.envelope* %41, i32 0, i32 21
  %42 = load %struct.envelope*, %struct.envelope** %e_parent36, align 8, !tbaa !21
  %e_flags37 = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 11
  %43 = load i64, i64* %e_flags37, align 8, !tbaa !20
  %and38 = and i64 %43, 128
  %cmp39 = icmp ne i64 %and38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.35
  %44 = load i32, i32* %panic, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.346

if.end.42:                                        ; preds = %land.lhs.true.35, %if.then.32
  store i32 4, i32* %state, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %sw.epilog
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.344, %if.end.43
  %45 = load i32, i32* %state, align 4, !tbaa !5
  %cmp44 = icmp ne i32 %45, 7
  br i1 %cmp44, label %while.body, label %while.end.345

while.body:                                       ; preds = %while.cond
  %46 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 6), align 1, !tbaa !7
  %conv46 = zext i8 %46 to i32
  %cmp47 = icmp sge i32 %conv46, 5
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.52

land.lhs.true.49:                                 ; preds = %while.body
  %47 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %47, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.49
  %48 = load i32, i32* %state, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 %48)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.49, %while.body
  %49 = load i32, i32* %state, align 4, !tbaa !5
  switch i32 %49, label %sw.default.341 [
    i32 2, label %sw.bb.53
    i32 0, label %sw.bb.59
    i32 1, label %sw.bb.93
    i32 4, label %sw.bb.154
    i32 3, label %sw.bb.179
    i32 5, label %sw.bb.254
    i32 6, label %sw.bb.342
  ]

sw.bb.53:                                         ; preds = %if.end.52
  %50 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from54 = getelementptr inbounds %struct.envelope, %struct.envelope* %50, i32 0, i32 4
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %e_from54, i32 0, i32 4
  %51 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !22
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %51, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %52 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %and55 = and i32 %52, 4096
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %sw.bb.53
  store i32 3, i32* %state, align 4, !tbaa !5
  br label %if.end.58

if.else:                                          ; preds = %sw.bb.53
  store i32 1, i32* %state, align 4, !tbaa !5
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.57
  br label %sw.epilog.344

sw.bb.59:                                         ; preds = %if.end.52
  store i8* null, i8** %p, align 8, !tbaa !1
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp60 = icmp eq i8* %53, null
  br i1 %cmp60, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.59
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %call62 = call %struct.sm_file* @sm_io_reopen(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* %54, i32 3, i8* null, %struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1))
  %cmp63 = icmp eq %struct.sm_file* %call62, null
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %lor.lhs.false, %sw.bb.59
  store i32 1, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

if.end.66:                                        ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [2049 x i8], [2049 x i8]* %buf, i32 0, i32 0
  %55 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay, i64 2049, %struct.envelope* %55)
  %arraydecay67 = getelementptr inbounds [2049 x i8], [2049 x i8]* %buf, i32 0, i32 0
  %call68 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay67)
  %call69 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0))
  %56 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %56, i32 0, i32 32
  %57 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !23
  %cmp70 = icmp ne %struct.sm_file* %57, null
  br i1 %cmp70, label %if.then.72, label %if.else.88

if.then.72:                                       ; preds = %if.end.66
  %58 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp73 = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 32
  %59 = load %struct.sm_file*, %struct.sm_file** %e_xfp73, align 8, !tbaa !23
  %call74 = call i32 @bfrewind(%struct.sm_file* %59)
  %call75 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %while.cond.76

while.cond.76:                                    ; preds = %while.body.85, %if.then.72
  %60 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp77 = getelementptr inbounds %struct.envelope, %struct.envelope* %60, i32 0, i32 32
  %61 = load %struct.sm_file*, %struct.sm_file** %e_xfp77, align 8, !tbaa !23
  %arraydecay78 = getelementptr inbounds [2049 x i8], [2049 x i8]* %buf, i32 0, i32 0
  %call79 = call i32 @sm_io_fgets(%struct.sm_file* %61, i32 -2, i8* %arraydecay78, i32 2049)
  %cmp80 = icmp sge i32 %call79, 0
  br i1 %cmp80, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.76
  %62 = load i64, i64* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1, i32 4), align 8, !tbaa !24
  %and82 = and i64 %62, 256
  %cmp83 = icmp ne i64 %and82, 0
  %lnot = xor i1 %cmp83, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.76
  %63 = phi i1 [ false, %while.cond.76 ], [ %lnot, %land.rhs ]
  br i1 %63, label %while.body.85, label %while.end

while.body.85:                                    ; preds = %land.end
  %arraydecay86 = getelementptr inbounds [2049 x i8], [2049 x i8]* %buf, i32 0, i32 0
  %call87 = call i32 @sm_io_fputs(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* %arraydecay86)
  br label %while.cond.76

while.end:                                        ; preds = %land.end
  br label %if.end.91

if.else.88:                                       ; preds = %if.end.66
  %64 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call89 = call i8* @queuename(%struct.envelope* %64, i32 120)
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* %call89)
  %call90 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %while.end
  %call92 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0))
  store i32 3, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

sw.bb.93:                                         ; preds = %if.end.52
  %65 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp94 = icmp eq i32 %65, 78
  br i1 %cmp94, label %if.then.99, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %sw.bb.93
  %66 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp97 = icmp eq i32 %66, 70
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %lor.lhs.false.96, %sw.bb.93
  %67 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errorqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %67, i32 0, i32 8
  %68 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call100 = call i32 @sendtolist(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct.address* null, %struct.address** %e_errorqueue, i32 0, %struct.envelope* %68)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %lor.lhs.false.96
  %69 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from102 = getelementptr inbounds %struct.envelope, %struct.envelope* %69, i32 0, i32 4
  %call103 = call i32 @emptyaddr(%struct.address* %e_from102)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.122, label %if.then.105

if.then.105:                                      ; preds = %if.end.101
  %70 = bitcast [4096 x i8]* %from to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %70) #1
  %arraydecay106 = getelementptr inbounds [4096 x i8], [4096 x i8]* %from, i32 0, i32 0
  %71 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from107 = getelementptr inbounds %struct.envelope, %struct.envelope* %71, i32 0, i32 4
  %q_paddr108 = getelementptr inbounds %struct.address, %struct.address* %e_from107, i32 0, i32 0
  %72 = load i8*, i8** %q_paddr108, align 8, !tbaa !17
  %call109 = call i64 @sm_strlcpy(i8* %arraydecay106, i8* %72, i64 4096)
  %cmp110 = icmp uge i64 %call109, 4096
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.then.105
  store i32 4, i32* %state, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.113:                                       ; preds = %if.then.105
  %73 = load i32, i32* @DontPruneRoutes, align 4, !tbaa !5
  %tobool114 = icmp ne i32 %73, 0
  br i1 %tobool114, label %if.end.118, label %if.then.115

if.then.115:                                      ; preds = %if.end.113
  %arraydecay116 = getelementptr inbounds [4096 x i8], [4096 x i8]* %from, i32 0, i32 0
  %call117 = call i32 @pruneroute(i8* %arraydecay116)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.115, %if.end.113
  %arraydecay119 = getelementptr inbounds [4096 x i8], [4096 x i8]* %from, i32 0, i32 0
  %74 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errorqueue120 = getelementptr inbounds %struct.envelope, %struct.envelope* %74, i32 0, i32 8
  %75 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call121 = call i32 @sendtolist(i8* %arraydecay119, %struct.address* null, %struct.address** %e_errorqueue120, i32 0, %struct.envelope* %75)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.118, %if.then.112
  %76 = bitcast [4096 x i8]* %from to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %76) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %sw.epilog.344
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.122

if.end.122:                                       ; preds = %cleanup.cont, %if.end.101
  %77 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags123 = getelementptr inbounds %struct.envelope, %struct.envelope* %77, i32 0, i32 11
  %78 = load i64, i64* %e_flags123, align 8, !tbaa !20
  %or = or i64 %78, 8192
  store i64 %or, i64* %e_flags123, align 8, !tbaa !20
  %79 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errorqueue124 = getelementptr inbounds %struct.envelope, %struct.envelope* %79, i32 0, i32 8
  %80 = load %struct.address*, %struct.address** %e_errorqueue124, align 8, !tbaa !27
  store %struct.address* %80, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.122
  %81 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp125 = icmp ne %struct.address* %81, null
  br i1 %cmp125, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %82 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %82, i32 0, i32 21
  %83 = load i16, i16* %q_state, align 2, !tbaa !28
  %conv127 = sext i16 %83 to i32
  %cmp128 = icmp eq i32 %conv127, 0
  br i1 %cmp128, label %if.then.140, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %for.body
  %84 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state131 = getelementptr inbounds %struct.address, %struct.address* %84, i32 0, i32 21
  %85 = load i16, i16* %q_state131, align 2, !tbaa !28
  %conv132 = sext i16 %85 to i32
  %cmp133 = icmp eq i32 %conv132, 3
  br i1 %cmp133, label %if.then.140, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %lor.lhs.false.130
  %86 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state136 = getelementptr inbounds %struct.address, %struct.address* %86, i32 0, i32 21
  %87 = load i16, i16* %q_state136, align 2, !tbaa !28
  %conv137 = sext i16 %87 to i32
  %cmp138 = icmp eq i32 %conv137, 4
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %lor.lhs.false.135, %lor.lhs.false.130, %for.body
  br label %for.end

if.end.141:                                       ; preds = %lor.lhs.false.135
  br label %for.inc

for.inc:                                          ; preds = %if.end.141
  %88 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %88, i32 0, i32 10
  %89 = load %struct.address*, %struct.address** %q_next, align 8, !tbaa !29
  store %struct.address* %89, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.140, %for.cond
  %90 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp142 = icmp eq %struct.address* %90, null
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %for.end
  store i32 4, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

if.end.145:                                       ; preds = %for.end
  %91 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %91, i32 0, i32 34
  %92 = load i8*, i8** %e_message, align 8, !tbaa !30
  %93 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errorqueue146 = getelementptr inbounds %struct.envelope, %struct.envelope* %93, i32 0, i32 8
  %94 = load %struct.address*, %struct.address** %e_errorqueue146, align 8, !tbaa !27
  %95 = load i32, i32* %sendbody.addr, align 4, !tbaa !5
  %tobool147 = icmp ne i32 %95, 0
  %cond148 = select i1 %tobool147, i32 1, i32 0
  %96 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call149 = call i32 @returntosender(i8* %92, %struct.address* %94, i32 %cond148, %struct.envelope* %96)
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.145
  store i32 7, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

if.end.153:                                       ; preds = %if.end.145
  store i32 4, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

sw.bb.154:                                        ; preds = %if.end.52
  store %struct.address* null, %struct.address** %q, align 8, !tbaa !1
  %97 = load i8*, i8** @DoubleBounceAddr, align 8, !tbaa !1
  %arraydecay155 = getelementptr inbounds [2049 x i8], [2049 x i8]* %buf, i32 0, i32 0
  %98 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %97, i8* %arraydecay155, i64 2049, %struct.envelope* %98)
  %arraydecay156 = getelementptr inbounds [2049 x i8], [2049 x i8]* %buf, i32 0, i32 0
  %99 = load i8, i8* %arraydecay156, align 1, !tbaa !7
  %conv157 = sext i8 %99 to i32
  %cmp158 = icmp eq i32 %conv157, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %sw.bb.154
  store i32 7, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

if.end.161:                                       ; preds = %sw.bb.154
  %arraydecay162 = getelementptr inbounds [2049 x i8], [2049 x i8]* %buf, i32 0, i32 0
  %100 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call163 = call i32 @sendtolist(i8* %arraydecay162, %struct.address* null, %struct.address** %q, i32 0, %struct.envelope* %100)
  %cmp164 = icmp sle i32 %call163, 0
  br i1 %cmp164, label %if.then.166, label %if.end.168

if.then.166:                                      ; preds = %if.end.161
  %arraydecay167 = getelementptr inbounds [2049 x i8], [2049 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay167)
  store i32 70, i32* @ExitStat, align 4, !tbaa !5
  store i32 5, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

if.end.168:                                       ; preds = %if.end.161
  store i32 2, i32* %flags, align 4, !tbaa !5
  %101 = load i32, i32* %sendbody.addr, align 4, !tbaa !5
  %tobool169 = icmp ne i32 %101, 0
  br i1 %tobool169, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %if.end.168
  %102 = load i32, i32* %flags, align 4, !tbaa !5
  %or171 = or i32 %102, 1
  store i32 %or171, i32* %flags, align 4, !tbaa !5
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %if.end.168
  %103 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message173 = getelementptr inbounds %struct.envelope, %struct.envelope* %103, i32 0, i32 34
  %104 = load i8*, i8** %e_message173, align 8, !tbaa !30
  %105 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %106 = load i32, i32* %flags, align 4, !tbaa !5
  %107 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call174 = call i32 @returntosender(i8* %104, %struct.address* %105, i32 %106, %struct.envelope* %107)
  %cmp175 = icmp eq i32 %call174, 0
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.172
  store i32 7, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

if.end.178:                                       ; preds = %if.end.172
  store i32 5, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

sw.bb.179:                                        ; preds = %if.end.52
  store i8* null, i8** %p, align 8, !tbaa !1
  %108 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from180 = getelementptr inbounds %struct.envelope, %struct.envelope* %108, i32 0, i32 4
  %q_mailer181 = getelementptr inbounds %struct.address, %struct.address* %e_from180, i32 0, i32 4
  %109 = load %struct.mailer*, %struct.mailer** %q_mailer181, align 8, !tbaa !22
  %m_flags182 = getelementptr inbounds %struct.mailer, %struct.mailer* %109, i32 0, i32 5
  %arrayidx183 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags182, i32 0, i64 3
  %110 = load i32, i32* %arrayidx183, align 4, !tbaa !5
  %and184 = and i32 %110, 8388608
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %if.then.186, label %if.end.208

if.then.186:                                      ; preds = %sw.bb.179
  %111 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from187 = getelementptr inbounds %struct.envelope, %struct.envelope* %111, i32 0, i32 4
  %q_home = getelementptr inbounds %struct.address, %struct.address* %e_from187, i32 0, i32 8
  %112 = load i8*, i8** %q_home, align 8, !tbaa !31
  %cmp188 = icmp ne i8* %112, null
  br i1 %cmp188, label %if.then.190, label %if.else.193

if.then.190:                                      ; preds = %if.then.186
  %113 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from191 = getelementptr inbounds %struct.envelope, %struct.envelope* %113, i32 0, i32 4
  %q_home192 = getelementptr inbounds %struct.address, %struct.address* %e_from191, i32 0, i32 8
  %114 = load i8*, i8** %q_home192, align 8, !tbaa !31
  store i8* %114, i8** %p, align 8, !tbaa !1
  br label %if.end.207

if.else.193:                                      ; preds = %if.then.186
  %115 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from194 = getelementptr inbounds %struct.envelope, %struct.envelope* %115, i32 0, i32 4
  %q_user = getelementptr inbounds %struct.address, %struct.address* %e_from194, i32 0, i32 1
  %116 = load i8*, i8** %q_user, align 8, !tbaa !32
  %call195 = call i32 @sm_mbdb_lookup(i8* %116, %struct.SM_MBDB_T* %user)
  %cmp196 = icmp eq i32 %call195, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.206

land.lhs.true.198:                                ; preds = %if.else.193
  %mbdb_homedir = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay199 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir, i32 0, i32 0
  %117 = load i8, i8* %arraydecay199, align 1, !tbaa !7
  %conv200 = sext i8 %117 to i32
  %cmp201 = icmp ne i32 %conv200, 0
  br i1 %cmp201, label %if.then.203, label %if.end.206

if.then.203:                                      ; preds = %land.lhs.true.198
  %mbdb_homedir204 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay205 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir204, i32 0, i32 0
  store i8* %arraydecay205, i8** %p, align 8, !tbaa !1
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.203, %land.lhs.true.198, %if.else.193
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.190
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %sw.bb.179
  %118 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp209 = icmp eq i8* %118, null
  br i1 %cmp209, label %if.then.214, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %if.end.208
  %119 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %119, i32 0, i32 24
  %120 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !33
  %cmp212 = icmp eq %struct.sm_file* %120, null
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %lor.lhs.false.211, %if.end.208
  store i32 1, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

if.end.215:                                       ; preds = %lor.lhs.false.211
  %121 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %121, i32 0, i32 46
  %122 = load i8*, i8** %p, align 8, !tbaa !1
  %123 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 122, i8* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 368, i32 %123)
  %124 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call216 = call i8* @macvalue(i32 103, %struct.envelope* %124)
  store i8* %call216, i8** %p, align 8, !tbaa !1
  %125 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro217 = getelementptr inbounds %struct.envelope, %struct.envelope* %125, i32 0, i32 46
  %126 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sender218 = getelementptr inbounds %struct.envelope, %struct.envelope* %126, i32 0, i32 5
  %127 = load i8*, i8** %e_sender218, align 8, !tbaa !18
  %128 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro217, i32 2, i32 103, i8* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 372, i32 %128)
  %arraydecay219 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dlbuf, i32 0, i32 0
  %129 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay219, i64 4096, %struct.envelope* %129)
  store i64 200, i64* %sff, align 8, !tbaa !34
  %130 = load i32, i32* @RealUid, align 4, !tbaa !5
  %cmp220 = icmp eq i32 %130, 0
  br i1 %cmp220, label %if.then.222, label %if.end.224

if.then.222:                                      ; preds = %if.end.215
  %131 = load i64, i64* %sff, align 8, !tbaa !34
  %or223 = or i64 %131, 4
  store i64 %or223, i64* %sff, align 8, !tbaa !34
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.222, %if.end.215
  %arraydecay225 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dlbuf, i32 0, i32 0
  %132 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to226 = getelementptr inbounds %struct.envelope, %struct.envelope* %132, i32 0, i32 3
  store i8* %arraydecay225, i8** %e_to226, align 8, !tbaa !19
  %arraydecay227 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dlbuf, i32 0, i32 0
  %133 = load i64, i64* %sff, align 8, !tbaa !34
  %call228 = call i32 @writable(i8* %arraydecay227, %struct.address* null, i64 %133)
  %tobool229 = icmp ne i32 %call228, 0
  br i1 %tobool229, label %land.lhs.true.230, label %if.end.252

land.lhs.true.230:                                ; preds = %if.end.224
  %arraydecay231 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dlbuf, i32 0, i32 0
  %134 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  %135 = load i64, i64* %sff, align 8, !tbaa !34
  %136 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call232 = call i32 @mailfile(i8* %arraydecay231, %struct.mailer* %134, %struct.address* null, i64 %135, %struct.envelope* %136)
  %cmp233 = icmp eq i32 %call232, 0
  br i1 %cmp233, label %if.then.235, label %if.end.252

if.then.235:                                      ; preds = %land.lhs.true.230
  %137 = bitcast i32* %oldverb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  %138 = load i32, i32* @Verbose, align 4, !tbaa !5
  store i32 %138, i32* %oldverb, align 4, !tbaa !5
  %139 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv236 = sext i8 %139 to i32
  %cmp237 = icmp ne i32 %conv236, 100
  br i1 %cmp237, label %land.lhs.true.239, label %if.end.244

land.lhs.true.239:                                ; preds = %if.then.235
  %140 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv240 = sext i8 %140 to i32
  %cmp241 = icmp ne i32 %conv240, 115
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %land.lhs.true.239
  store i32 1, i32* @Verbose, align 4, !tbaa !5
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %land.lhs.true.239, %if.then.235
  %141 = load i32, i32* @Verbose, align 4, !tbaa !5
  %cmp245 = icmp sgt i32 %141, 0
  br i1 %cmp245, label %if.then.247, label %if.end.249

if.then.247:                                      ; preds = %if.end.244
  %arraydecay248 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dlbuf, i32 0, i32 0
  call void (i8*, ...) @message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay248)
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.247, %if.end.244
  %142 = load i32, i32* %oldverb, align 4, !tbaa !5
  store i32 %142, i32* @Verbose, align 4, !tbaa !5
  %143 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro250 = getelementptr inbounds %struct.envelope, %struct.envelope* %143, i32 0, i32 46
  %144 = load i8*, i8** %p, align 8, !tbaa !1
  %145 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro250, i32 2, i32 103, i8* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 389, i32 %145)
  store i32 7, i32* %state, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  %146 = bitcast i32* %oldverb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  br label %sw.epilog.344

if.end.252:                                       ; preds = %land.lhs.true.230, %if.end.224
  %147 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro253 = getelementptr inbounds %struct.envelope, %struct.envelope* %147, i32 0, i32 46
  %148 = load i8*, i8** %p, align 8, !tbaa !1
  %149 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro253, i32 2, i32 103, i8* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 393, i32 %149)
  store i32 1, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

sw.bb.254:                                        ; preds = %if.end.52
  %150 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_class = getelementptr inbounds %struct.envelope, %struct.envelope* %150, i32 0, i32 13
  %151 = load i16, i16* %e_class, align 2, !tbaa !35
  %conv255 = sext i16 %151 to i32
  %cmp256 = icmp slt i32 %conv255, 0
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %sw.bb.254
  store i32 7, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

if.end.259:                                       ; preds = %sw.bb.254
  %152 = load i8*, i8** @SafeFileEnv, align 8, !tbaa !1
  %cmp260 = icmp ne i8* %152, null
  br i1 %cmp260, label %land.lhs.true.262, label %lor.lhs.false.267

land.lhs.true.262:                                ; preds = %if.end.259
  %153 = load i8*, i8** @SafeFileEnv, align 8, !tbaa !1
  %arrayidx263 = getelementptr inbounds i8, i8* %153, i64 0
  %154 = load i8, i8* %arrayidx263, align 1, !tbaa !7
  %conv264 = sext i8 %154 to i32
  %cmp265 = icmp ne i32 %conv264, 0
  br i1 %cmp265, label %if.then.275, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %land.lhs.true.262, %if.end.259
  %155 = load i8*, i8** @DeadLetterDrop, align 8, !tbaa !1
  %cmp268 = icmp eq i8* %155, null
  br i1 %cmp268, label %if.then.275, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %lor.lhs.false.267
  %156 = load i8*, i8** @DeadLetterDrop, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i8, i8* %156, i64 0
  %157 = load i8, i8* %arrayidx271, align 1, !tbaa !7
  %conv272 = sext i8 %157 to i32
  %cmp273 = icmp eq i32 %conv272, 0
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %lor.lhs.false.270, %lor.lhs.false.267, %land.lhs.true.262
  store i32 6, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

if.end.276:                                       ; preds = %lor.lhs.false.270
  store i64 8389, i64* %sff, align 8, !tbaa !34
  %158 = load i8*, i8** @DeadLetterDrop, align 8, !tbaa !1
  %159 = load i64, i64* %sff, align 8, !tbaa !34
  %call277 = call i32 @writable(i8* %158, %struct.address* null, i64 %159)
  %tobool278 = icmp ne i32 %call277, 0
  br i1 %tobool278, label %lor.lhs.false.279, label %if.then.283

lor.lhs.false.279:                                ; preds = %if.end.276
  %160 = load i8*, i8** @DeadLetterDrop, align 8, !tbaa !1
  %161 = load i32, i32* @FileMode, align 4, !tbaa !5
  %162 = load i64, i64* %sff, align 8, !tbaa !34
  %call280 = call %struct.sm_file* @safefopen(i8* %160, i32 1025, i32 %161, i64 %162)
  store %struct.sm_file* %call280, %struct.sm_file** %fp, align 8, !tbaa !1
  %cmp281 = icmp eq %struct.sm_file* %call280, null
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %lor.lhs.false.279, %if.end.276
  store i32 6, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

if.end.284:                                       ; preds = %lor.lhs.false.279
  %163 = bitcast %struct.mailer_con_info* %mcibuf to i8*
  call void @llvm.memset.p0i8.i64(i8* %163, i8 0, i64 2256, i32 8, i1 false)
  %164 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %mci_out = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcibuf, i32 0, i32 8
  store %struct.sm_file* %164, %struct.sm_file** %mci_out, align 8, !tbaa !36
  %165 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcibuf, i32 0, i32 11
  store %struct.mailer* %165, %struct.mailer** %mci_mailer, align 8, !tbaa !38
  %166 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  %m_flags285 = getelementptr inbounds %struct.mailer, %struct.mailer* %166, i32 0, i32 5
  %arrayidx286 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags285, i32 0, i64 1
  %167 = load i32, i32* %arrayidx286, align 4, !tbaa !5
  %and287 = and i32 %167, 8388608
  %tobool288 = icmp ne i32 %and287, 0
  br i1 %tobool288, label %if.then.289, label %if.end.291

if.then.289:                                      ; preds = %if.end.284
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcibuf, i32 0, i32 0
  %168 = load i64, i64* %mci_flags, align 8, !tbaa !39
  %or290 = or i64 %168, 128
  store i64 %or290, i64* %mci_flags, align 8, !tbaa !39
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.289, %if.end.284
  %169 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call292 = call i8* @macvalue(i32 103, %struct.envelope* %169)
  store i8* %call292, i8** %p, align 8, !tbaa !1
  %170 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro293 = getelementptr inbounds %struct.envelope, %struct.envelope* %170, i32 0, i32 46
  %171 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sender294 = getelementptr inbounds %struct.envelope, %struct.envelope* %171, i32 0, i32 5
  %172 = load i8*, i8** %e_sender294, align 8, !tbaa !18
  %173 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro293, i32 2, i32 103, i8* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 433, i32 %173)
  %174 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call295 = call i32 @putfromline(%struct.mailer_con_info* %mcibuf, %struct.envelope* %174)
  %tobool296 = icmp ne i32 %call295, 0
  br i1 %tobool296, label %lor.lhs.false.297, label %if.then.318

lor.lhs.false.297:                                ; preds = %if.end.291
  %175 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_puthdr = getelementptr inbounds %struct.envelope, %struct.envelope* %175, i32 0, i32 19
  %176 = load i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)** %e_puthdr, align 8, !tbaa !40
  %177 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %177, i32 0, i32 0
  %178 = load %struct.header*, %struct.header** %e_header, align 8, !tbaa !41
  %179 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call298 = call i32 %176(%struct.mailer_con_info* %mcibuf, %struct.header* %178, %struct.envelope* %179, i32 0)
  %tobool299 = icmp ne i32 %call298, 0
  br i1 %tobool299, label %lor.lhs.false.300, label %if.then.318

lor.lhs.false.300:                                ; preds = %lor.lhs.false.297
  %180 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_putbody = getelementptr inbounds %struct.envelope, %struct.envelope* %180, i32 0, i32 20
  %181 = load i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)** %e_putbody, align 8, !tbaa !42
  %182 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call301 = call i32 %181(%struct.mailer_con_info* %mcibuf, %struct.envelope* %182, i8* null)
  %tobool302 = icmp ne i32 %call301, 0
  br i1 %tobool302, label %lor.lhs.false.303, label %if.then.318

lor.lhs.false.303:                                ; preds = %lor.lhs.false.300
  %call304 = call i32 @putline(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), %struct.mailer_con_info* %mcibuf)
  %tobool305 = icmp ne i32 %call304, 0
  br i1 %tobool305, label %lor.lhs.false.306, label %if.then.318

lor.lhs.false.306:                                ; preds = %lor.lhs.false.303
  %183 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call307 = call i32 @sm_io_flush(%struct.sm_file* %183, i32 -2)
  %cmp308 = icmp eq i32 %call307, -1
  br i1 %cmp308, label %if.then.318, label %lor.lhs.false.310

lor.lhs.false.310:                                ; preds = %lor.lhs.false.306
  %184 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %f_flags = getelementptr inbounds %struct.sm_file, %struct.sm_file* %184, i32 0, i32 4
  %185 = load i64, i64* %f_flags, align 8, !tbaa !24
  %and311 = and i64 %185, 256
  %cmp312 = icmp ne i64 %and311, 0
  br i1 %cmp312, label %if.then.318, label %lor.lhs.false.314

lor.lhs.false.314:                                ; preds = %lor.lhs.false.310
  %186 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call315 = call i32 @sm_io_close(%struct.sm_file* %186, i32 -2)
  %cmp316 = icmp slt i32 %call315, 0
  br i1 %cmp316, label %if.then.318, label %if.else.319

if.then.318:                                      ; preds = %lor.lhs.false.314, %lor.lhs.false.310, %lor.lhs.false.306, %lor.lhs.false.303, %lor.lhs.false.300, %lor.lhs.false.297, %if.end.291
  store i32 6, i32* %state, align 4, !tbaa !5
  br label %if.end.339

if.else.319:                                      ; preds = %lor.lhs.false.314
  %187 = bitcast i32* %oldverb320 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %187) #1
  %188 = load i32, i32* @Verbose, align 4, !tbaa !5
  store i32 %188, i32* %oldverb320, align 4, !tbaa !5
  %189 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv321 = sext i8 %189 to i32
  %cmp322 = icmp ne i32 %conv321, 100
  br i1 %cmp322, label %land.lhs.true.324, label %if.end.329

land.lhs.true.324:                                ; preds = %if.else.319
  %190 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv325 = sext i8 %190 to i32
  %cmp326 = icmp ne i32 %conv325, 115
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %land.lhs.true.324
  store i32 1, i32* @Verbose, align 4, !tbaa !5
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.328, %land.lhs.true.324, %if.else.319
  %191 = load i32, i32* @Verbose, align 4, !tbaa !5
  %cmp330 = icmp sgt i32 %191, 0
  br i1 %cmp330, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %if.end.329
  %192 = load i8*, i8** @DeadLetterDrop, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %192)
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.332, %if.end.329
  %193 = load i32, i32* %oldverb320, align 4, !tbaa !5
  store i32 %193, i32* @Verbose, align 4, !tbaa !5
  %194 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp334 = icmp sgt i32 %194, 3
  br i1 %cmp334, label %if.then.336, label %if.end.338

if.then.336:                                      ; preds = %if.end.333
  %195 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id337 = getelementptr inbounds %struct.envelope, %struct.envelope* %195, i32 0, i32 25
  %196 = load i8*, i8** %e_id337, align 8, !tbaa !16
  %197 = load i8*, i8** @DeadLetterDrop, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %196, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %197)
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.336, %if.end.333
  store i32 7, i32* %state, align 4, !tbaa !5
  %198 = bitcast i32* %oldverb320 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %if.then.318
  %199 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro340 = getelementptr inbounds %struct.envelope, %struct.envelope* %199, i32 0, i32 46
  %200 = load i8*, i8** %p, align 8, !tbaa !1
  %201 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro340, i32 2, i32 103, i8* %200, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 460, i32 %201)
  br label %sw.epilog.344

sw.default.341:                                   ; preds = %if.end.52
  %202 = load i32, i32* %state, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0), i32 %202)
  br label %sw.bb.342

sw.bb.342:                                        ; preds = %if.end.52, %sw.default.341
  %203 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @loseqfile(%struct.envelope* %203, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0))
  store i32 1, i32* %panic, align 4, !tbaa !5
  %call343 = call i32* @__errno_location() #6
  store i32 0, i32* %call343, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0))
  store i32 7, i32* %state, align 4, !tbaa !5
  br label %sw.epilog.344

sw.epilog.344:                                    ; preds = %sw.bb.342, %if.end.339, %if.then.283, %if.then.275, %if.then.258, %if.end.252, %if.end.249, %if.then.214, %if.end.178, %if.then.177, %if.then.166, %if.then.160, %if.end.153, %if.then.152, %if.then.144, %cleanup, %if.end.91, %if.then.65, %if.end.58
  br label %while.cond

while.end.345:                                    ; preds = %while.cond
  %204 = load i32, i32* %panic, align 4, !tbaa !5
  store i32 %204, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.346

cleanup.346:                                      ; preds = %while.end.345, %if.then.41, %sw.bb.27, %if.then.9
  %205 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.end(i64 8712, i8* %205) #1
  %206 = bitcast [4096 x i8]* %dlbuf to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %206) #1
  %207 = bitcast [2049 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2049, i8* %207) #1
  %208 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast %struct.mailer_con_info* %mcibuf to i8*
  call void @llvm.lifetime.end(i64 2256, i8* %210) #1
  %211 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast i32* %state to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %panic to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast %struct.sm_file** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = load i32, i32* %retval
  ret i32 %216

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @sm_dprintf(i8*, ...) #2

declare void @printaddr(%struct.sm_file*, %struct.address*, i32) #2

declare %struct.sm_file* @sm_debug_file() #2

declare %struct.address* @parseaddr(i8*, %struct.address*, i32, i32, i8**, %struct.envelope*, i32) #2

declare void @syserr(i8*, ...) #2

declare void @finis(i32, i32, i32) #2

declare %struct.sm_file* @sm_io_reopen(%struct.sm_file*, i32, i8*, i32, i8*, %struct.sm_file*) #2

declare void @expand(i8*, i8*, i64, %struct.envelope*) #2

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

declare i32 @bfrewind(%struct.sm_file*) #2

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #2

declare i32 @sm_io_fputs(%struct.sm_file*, i32, i8*) #2

declare i8* @queuename(%struct.envelope*, i32) #2

declare i32 @sendtolist(i8*, %struct.address*, %struct.address**, i32, %struct.envelope*) #2

declare i32 @emptyaddr(%struct.address*) #2

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @pruneroute(i8* %addr) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  %start = alloca i8*, align 8
  %at = alloca i8*, align 8
  %comma = alloca i8*, align 8
  %c = alloca i8, align 1
  %braclev = alloca i32, align 4
  %rcode = alloca i32, align 4
  %i = alloca i32, align 4
  %hostbuf = alloca [8192 x i8], align 16
  %mxhosts = alloca [101 x i8*], align 16
  %cleanup.dest.slot = alloca i32
  store i8* %addr, i8** %addr.addr, align 8, !tbaa !1
  %0 = bitcast i8** %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %at to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %comma to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %3 = bitcast i32* %braclev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast [8192 x i8]* %hostbuf to i8*
  call void @llvm.lifetime.start(i64 8192, i8* %6) #1
  %7 = bitcast [101 x i8*]* %mxhosts to i8*
  call void @llvm.lifetime.start(i64 808, i8* %7) #1
  %8 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !7
  %conv = sext i8 %9 to i32
  %cmp = icmp ne i32 %conv, 60
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv2 = sext i8 %11 to i32
  %cmp3 = icmp ne i32 %conv2, 64
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %12 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %12) #7
  %sub = sub i64 %call, 1
  %13 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 %sub
  %14 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %conv7 = sext i8 %14 to i32
  %cmp8 = icmp ne i32 %conv7, 62
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.5
  %15 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  store i8* %15, i8** %start, align 8, !tbaa !1
  store i32 0, i32* %braclev, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %if.end
  %16 = load i8*, i8** %start, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %conv10 = sext i8 %17 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %start, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !7
  %conv13 = sext i8 %19 to i32
  %cmp14 = icmp eq i32 %conv13, 58
  br i1 %cmp14, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %20 = load i32, i32* %braclev, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %20, 0
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true
  br label %while.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %21 = load i8*, i8** %start, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %conv19 = sext i8 %22 to i32
  %cmp20 = icmp eq i32 %conv19, 91
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else
  %23 = load i32, i32* %braclev, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %braclev, align 4, !tbaa !5
  br label %if.end.32

if.else.23:                                       ; preds = %if.else
  %24 = load i8*, i8** %start, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !7
  %conv24 = sext i8 %25 to i32
  %cmp25 = icmp eq i32 %conv24, 93
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %if.else.23
  %26 = load i32, i32* %braclev, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %26, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.27
  %27 = load i32, i32* %braclev, align 4, !tbaa !5
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %braclev, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true.27, %if.else.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.22
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32
  %28 = load i8*, i8** %start, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %start, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.then.18, %while.cond
  %29 = load i32, i32* %braclev, align 4, !tbaa !5
  %cmp34 = icmp sgt i32 %29, 0
  br i1 %cmp34, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %while.end
  %30 = load i8*, i8** %start, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %conv37 = sext i8 %31 to i32
  %cmp38 = icmp ne i32 %conv37, 58
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.36, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %lor.lhs.false.36
  %32 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %call42 = call i8* @strrchr(i8* %32, i32 64) #7
  store i8* %call42, i8** %at, align 8, !tbaa !1
  %33 = load i8*, i8** %at, align 8, !tbaa !1
  %cmp43 = icmp eq i8* %33, null
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.end.41
  %34 = load i8*, i8** %at, align 8, !tbaa !1
  %35 = load i8*, i8** %start, align 8, !tbaa !1
  %cmp46 = icmp ult i8* %34, %35
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.45, %if.end.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %lor.lhs.false.45
  %36 = load i8*, i8** %at, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 1
  %call50 = call i64 @strlen(i8* %add.ptr) #7
  %conv51 = trunc i64 %call50 to i32
  store i32 %conv51, i32* %i, align 4, !tbaa !5
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %conv52 = sext i32 %37 to i64
  %cmp53 = icmp uge i64 %conv52, 8192
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.end.49
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %hostbuf, i32 0, i32 0
  %38 = load i8*, i8** %at, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %38, i64 1
  %call58 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %add.ptr57, i64 8192)
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %sub59 = sub nsw i32 %39, 1
  %idxprom = sext i32 %sub59 to i64
  %arrayidx60 = getelementptr inbounds [8192 x i8], [8192 x i8]* %hostbuf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx60, align 1, !tbaa !7
  br label %while.cond.61

while.cond.61:                                    ; preds = %if.end.95, %if.end.56
  %40 = load i8*, i8** %start, align 8, !tbaa !1
  %cmp62 = icmp ne i8* %40, null
  br i1 %cmp62, label %while.body.64, label %while.end.96

while.body.64:                                    ; preds = %while.cond.61
  %arraydecay65 = getelementptr inbounds [8192 x i8], [8192 x i8]* %hostbuf, i32 0, i32 0
  %arraydecay66 = getelementptr inbounds [101 x i8*], [101 x i8*]* %mxhosts, i32 0, i32 0
  %call67 = call i32 @getmxrr(i8* %arraydecay65, i8** %arraydecay66, i16* null, i32 0, i32* %rcode, i32 1, i32* null)
  %cmp68 = icmp sgt i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %while.body.64
  %41 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8*, i8** %start, align 8, !tbaa !1
  %add.ptr72 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %call73 = call i64 @strlen(i8* %43) #7
  %sub74 = sub i64 %call73, 1
  %call75 = call i64 @sm_strlcpy(i8* %add.ptr71, i8* %add.ptr72, i64 %sub74)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %while.body.64
  %44 = load i8*, i8** %start, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !7
  store i8 %45, i8* %c, align 1, !tbaa !7
  %46 = load i8*, i8** %start, align 8, !tbaa !1
  store i8 0, i8* %46, align 1, !tbaa !7
  %47 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %call77 = call i8* @strrchr(i8* %47, i32 44) #7
  store i8* %call77, i8** %comma, align 8, !tbaa !1
  %48 = load i8*, i8** %comma, align 8, !tbaa !1
  %cmp78 = icmp ne i8* %48, null
  br i1 %cmp78, label %land.lhs.true.80, label %if.else.94

land.lhs.true.80:                                 ; preds = %if.end.76
  %49 = load i8*, i8** %comma, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx81, align 1, !tbaa !7
  %conv82 = sext i8 %50 to i32
  %cmp83 = icmp eq i32 %conv82, 64
  br i1 %cmp83, label %land.lhs.true.85, label %if.else.94

land.lhs.true.85:                                 ; preds = %land.lhs.true.80
  %51 = load i8*, i8** %comma, align 8, !tbaa !1
  %add.ptr86 = getelementptr inbounds i8, i8* %51, i64 2
  %call87 = call i64 @strlen(i8* %add.ptr86) #7
  %cmp88 = icmp ult i64 %call87, 8192
  br i1 %cmp88, label %if.then.90, label %if.else.94

if.then.90:                                       ; preds = %land.lhs.true.85
  %arraydecay91 = getelementptr inbounds [8192 x i8], [8192 x i8]* %hostbuf, i32 0, i32 0
  %52 = load i8*, i8** %comma, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds i8, i8* %52, i64 2
  %call93 = call i64 @sm_strlcpy(i8* %arraydecay91, i8* %add.ptr92, i64 8192)
  br label %if.end.95

if.else.94:                                       ; preds = %land.lhs.true.85, %land.lhs.true.80, %if.end.76
  store i8* null, i8** %comma, align 8, !tbaa !1
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.then.90
  %53 = load i8, i8* %c, align 1, !tbaa !7
  %54 = load i8*, i8** %start, align 8, !tbaa !1
  store i8 %53, i8* %54, align 1, !tbaa !7
  %55 = load i8*, i8** %comma, align 8, !tbaa !1
  store i8* %55, i8** %start, align 8, !tbaa !1
  br label %while.cond.61

while.end.96:                                     ; preds = %while.cond.61
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.96, %if.then.70, %if.then.55, %if.then.48, %if.then.40, %if.then
  %56 = bitcast [101 x i8*]* %mxhosts to i8*
  call void @llvm.lifetime.end(i64 808, i8* %56) #1
  %57 = bitcast [8192 x i8]* %hostbuf to i8*
  call void @llvm.lifetime.end(i64 8192, i8* %57) #1
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %braclev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %61 = bitcast i8** %comma to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i8** %at to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i8** %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @returntosender(i8* %msg, %struct.address* %returnq, i32 %flags, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  %returnq.addr = alloca %struct.address*, align 8
  %flags.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %ret = alloca i32, align 4
  %ee = alloca %struct.envelope*, align 8
  %oldcur = alloca %struct.envelope*, align 8
  %errenvelope = alloca %struct.envelope, align 8
  %q = alloca %struct.address*, align 8
  %p = alloca i8*, align 8
  %buf = alloca [257 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp211 = alloca i32, align 4
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  store %struct.address* %returnq, %struct.address** %returnq.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.envelope** %ee to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.envelope** %oldcur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  store %struct.envelope* %3, %struct.envelope** %oldcur, align 8, !tbaa !1
  %4 = bitcast %struct.envelope* %errenvelope to i8*
  call void @llvm.lifetime.start(i64 2656, i8* %4) #1
  %5 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %7) #1
  %8 = load %struct.address*, %struct.address** %returnq.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.address* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i8** %msg.addr, align 8, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %10 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 6), align 1, !tbaa !7
  %conv = zext i8 %10 to i32
  %cmp4 = icmp sge i32 %conv, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.3
  %11 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end.15, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %13 = load i32, i32* @returntosender.returndepth, align 4, !tbaa !5
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.23, i32 0, i32 0), i8* %12, i32 %13, %struct.envelope* %14)
  %call = call %struct.sm_file* @sm_debug_file()
  %15 = load %struct.address*, %struct.address** %returnq.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call, %struct.address* %15, i32 1)
  %16 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 6), align 1, !tbaa !7
  %conv7 = zext i8 %16 to i32
  %cmp8 = icmp sge i32 %conv7, 20
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.14

land.lhs.true.10:                                 ; preds = %if.then.6
  %17 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.10
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0))
  %call13 = call %struct.sm_file* @sm_debug_file()
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 7
  %19 = load %struct.address*, %struct.address** %e_sendqueue, align 8, !tbaa !43
  call void @printaddr(%struct.sm_file* %call13, %struct.address* %19, i32 1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true.10, %if.then.6
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.end.3
  %20 = load i32, i32* @returntosender.returndepth, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* @returntosender.returndepth, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %inc, 6
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.15
  %21 = load i32, i32* @returntosender.returndepth, align 4, !tbaa !5
  %cmp19 = icmp ne i32 %21, 6
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  %22 = load %struct.address*, %struct.address** %returnq.addr, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %22, i32 0, i32 0
  %23 = load i8*, i8** %q_paddr, align 8, !tbaa !44
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i32 0, i32 0), i8* %23)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.15
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 46
  %25 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sender = getelementptr inbounds %struct.envelope, %struct.envelope* %25, i32 0, i32 5
  %26 = load i8*, i8** %e_sender, align 8, !tbaa !18
  %27 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 103, i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 546, i32 %27)
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro24 = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 46
  %29 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro24, i32 2, i32 117, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 547, i32 %29)
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call25 = call %struct.SM_RPOOL_T* @sm_rpool_new_x(%struct.SM_RPOOL_T* null)
  %call26 = call %struct.envelope* @newenvelope(%struct.envelope* %errenvelope, %struct.envelope* %30, %struct.SM_RPOOL_T* %call25)
  store %struct.envelope* %call26, %struct.envelope** %ee, align 8, !tbaa !1
  %31 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_macro27 = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 46
  %32 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro27, i32 2, i32 97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 551, i32 %32)
  %33 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_macro28 = getelementptr inbounds %struct.envelope, %struct.envelope* %33, i32 0, i32 46
  %34 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro28, i32 2, i32 114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 552, i32 %34)
  %35 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_macro29 = getelementptr inbounds %struct.envelope, %struct.envelope* %35, i32 0, i32 46
  %36 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro29, i32 2, i32 115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 553, i32 %36)
  %37 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_macro30 = getelementptr inbounds %struct.envelope, %struct.envelope* %37, i32 0, i32 46
  %38 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro30, i32 2, i32 95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 554, i32 %38)
  %39 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @clrsessenvelope(%struct.envelope* %39)
  %40 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_puthdr = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 19
  store i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)* @putheader, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)** %e_puthdr, align 8, !tbaa !40
  %41 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_putbody = getelementptr inbounds %struct.envelope, %struct.envelope* %41, i32 0, i32 20
  store i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)* @errbody, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)** %e_putbody, align 8, !tbaa !42
  %42 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 11
  %43 = load i64, i64* %e_flags, align 8, !tbaa !20
  %or = or i64 %43, 16512
  store i64 %or, i64* %e_flags, align 8, !tbaa !20
  %44 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags31 = getelementptr inbounds %struct.envelope, %struct.envelope* %44, i32 0, i32 11
  %45 = load i64, i64* %e_flags31, align 8, !tbaa !20
  %and = and i64 %45, 1
  %cmp32 = icmp ne i64 %and, 0
  br i1 %cmp32, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %if.end.23
  %46 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_flags35 = getelementptr inbounds %struct.envelope, %struct.envelope* %46, i32 0, i32 11
  %47 = load i64, i64* %e_flags35, align 8, !tbaa !20
  %and36 = and i64 %47, -2
  store i64 %and36, i64* %e_flags35, align 8, !tbaa !20
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.23
  %48 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags38 = getelementptr inbounds %struct.envelope, %struct.envelope* %48, i32 0, i32 11
  %49 = load i64, i64* %e_flags38, align 8, !tbaa !20
  %and39 = and i64 %49, 8388608
  %cmp40 = icmp ne i64 %and39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.56

if.then.42:                                       ; preds = %if.end.37
  %50 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_flags43 = getelementptr inbounds %struct.envelope, %struct.envelope* %50, i32 0, i32 11
  %51 = load i64, i64* %e_flags43, align 8, !tbaa !20
  %or44 = or i64 %51, 8388608
  store i64 %or44, i64* %e_flags43, align 8, !tbaa !20
  %52 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags45 = getelementptr inbounds %struct.envelope, %struct.envelope* %52, i32 0, i32 11
  %53 = load i64, i64* %e_flags45, align 8, !tbaa !20
  %and46 = and i64 %53, 131072
  %cmp47 = icmp ne i64 %and46, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.55

land.lhs.true.49:                                 ; preds = %if.then.42
  %54 = load i32, i32* @MimeMode, align 4, !tbaa !5
  %and50 = and i32 %54, 2
  %cmp51 = icmp ne i32 %and50, 0
  br i1 %cmp51, label %if.end.55, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.49
  %55 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and54 = and i32 %55, -2
  store i32 %and54, i32* %flags.addr, align 4, !tbaa !5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %land.lhs.true.49, %if.then.42
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.37
  %56 = load %struct.address*, %struct.address** %returnq.addr, align 8, !tbaa !1
  %57 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sendqueue57 = getelementptr inbounds %struct.envelope, %struct.envelope* %57, i32 0, i32 7
  store %struct.address* %56, %struct.address** %e_sendqueue57, align 8, !tbaa !43
  %58 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 9
  store i64 0, i64* %e_msgsize, align 8, !tbaa !45
  %59 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and58 = and i32 %59, 1
  %cmp59 = icmp ne i32 %and58, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.else

land.lhs.true.61:                                 ; preds = %if.end.56
  %60 = load i64, i64* @PrivacyFlags, align 8, !tbaa !34
  %and62 = and i64 %60, 1048576
  %cmp63 = icmp ne i64 %and62, 0
  br i1 %cmp63, label %if.else, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true.61
  %61 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize66 = getelementptr inbounds %struct.envelope, %struct.envelope* %61, i32 0, i32 9
  %62 = load i64, i64* %e_msgsize66, align 8, !tbaa !45
  %add = add nsw i64 1024, %62
  %63 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_msgsize67 = getelementptr inbounds %struct.envelope, %struct.envelope* %63, i32 0, i32 9
  store i64 %add, i64* %e_msgsize67, align 8, !tbaa !45
  br label %if.end.70

if.else:                                          ; preds = %land.lhs.true.61, %if.end.56
  %64 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_flags68 = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 11
  %65 = load i64, i64* %e_flags68, align 8, !tbaa !20
  %or69 = or i64 %65, 4
  store i64 %or69, i64* %e_flags68, align 8, !tbaa !20
  br label %if.end.70

if.end.70:                                        ; preds = %if.else, %if.then.65
  %66 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %call71 = call i32 @setnewqueue(%struct.envelope* %66)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.75, label %if.then.73

if.then.73:                                       ; preds = %if.end.70
  %67 = load %struct.address*, %struct.address** %returnq.addr, align 8, !tbaa !1
  %q_paddr74 = getelementptr inbounds %struct.address, %struct.address* %67, i32 0, i32 0
  %68 = load i8*, i8** %q_paddr74, align 8, !tbaa !44
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i32 0, i32 0), i8* %68)
  store i32 69, i32* @ExitStat, align 4, !tbaa !5
  %69 = load i32, i32* @returntosender.returndepth, align 4, !tbaa !5
  %dec = add nsw i32 %69, -1
  store i32 %dec, i32* @returntosender.returndepth, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.end.70
  %70 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @initsys(%struct.envelope* %70)
  %71 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 21, i64 0), align 4, !tbaa !5
  %call76 = call %struct.__res_state* @__res_state() #6
  %retry = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call76, i32 0, i32 1
  store i32 %71, i32* %retry, align 4, !tbaa !46
  %72 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 20, i64 0), align 8, !tbaa !34
  %conv77 = trunc i64 %72 to i32
  %call78 = call %struct.__res_state* @__res_state() #6
  %retrans = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call78, i32 0, i32 0
  store i32 %conv77, i32* %retrans, align 4, !tbaa !48
  %73 = load %struct.address*, %struct.address** %returnq.addr, align 8, !tbaa !1
  store %struct.address* %73, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.75
  %74 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp79 = icmp ne %struct.address* %74, null
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %75, i32 0, i32 21
  %76 = load i16, i16* %q_state, align 2, !tbaa !28
  %conv81 = sext i16 %76 to i32
  %cmp82 = icmp eq i32 %conv81, 2
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.body
  br label %for.inc

if.end.85:                                        ; preds = %for.body
  %77 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %77, i32 0, i32 5
  %78 = load i64, i64* %q_flags, align 8, !tbaa !49
  %and86 = and i64 %78, -961
  store i64 %and86, i64* %q_flags, align 8, !tbaa !49
  %79 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags87 = getelementptr inbounds %struct.address, %struct.address* %79, i32 0, i32 5
  %80 = load i64, i64* %q_flags87, align 8, !tbaa !49
  %or88 = or i64 %80, 128
  store i64 %or88, i64* %q_flags87, align 8, !tbaa !49
  %81 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state89 = getelementptr inbounds %struct.address, %struct.address* %81, i32 0, i32 21
  %82 = load i16, i16* %q_state89, align 2, !tbaa !28
  %conv90 = sext i16 %82 to i32
  %cmp91 = icmp sge i32 %conv90, 6
  br i1 %cmp91, label %if.end.95, label %if.then.93

if.then.93:                                       ; preds = %if.end.85
  %83 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_nrcpts = getelementptr inbounds %struct.envelope, %struct.envelope* %83, i32 0, i32 12
  %84 = load i32, i32* %e_nrcpts, align 4, !tbaa !50
  %inc94 = add nsw i32 %84, 1
  store i32 %inc94, i32* %e_nrcpts, align 4, !tbaa !50
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.85
  %85 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_alias = getelementptr inbounds %struct.address, %struct.address* %85, i32 0, i32 11
  %86 = load %struct.address*, %struct.address** %q_alias, align 8, !tbaa !51
  %cmp96 = icmp eq %struct.address* %86, null
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.end.95
  %87 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_paddr99 = getelementptr inbounds %struct.address, %struct.address* %87, i32 0, i32 0
  %88 = load i8*, i8** %q_paddr99, align 8, !tbaa !44
  %89 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @addheader(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %88, i32 0, %struct.envelope* %89, i32 1)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %if.end.95
  br label %for.inc

for.inc:                                          ; preds = %if.end.100, %if.then.84
  %90 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %90, i32 0, i32 10
  %91 = load %struct.address*, %struct.address** %q_next, align 8, !tbaa !29
  store %struct.address* %91, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %92 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp101 = icmp sgt i32 %92, 5
  br i1 %cmp101, label %if.then.103, label %if.end.126

if.then.103:                                      ; preds = %for.end
  %93 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags104 = getelementptr inbounds %struct.envelope, %struct.envelope* %93, i32 0, i32 11
  %94 = load i64, i64* %e_flags104, align 8, !tbaa !20
  %and105 = and i64 %94, 128
  %cmp106 = icmp ne i64 %and105, 0
  br i1 %cmp106, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %if.then.103
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.123

if.else.109:                                      ; preds = %if.then.103
  %95 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags110 = getelementptr inbounds %struct.envelope, %struct.envelope* %95, i32 0, i32 11
  %96 = load i64, i64* %e_flags110, align 8, !tbaa !20
  %and111 = and i64 %96, 1024
  %cmp112 = icmp ne i64 %and111, 0
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %if.else.109
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.122

if.else.115:                                      ; preds = %if.else.109
  %97 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and116 = and i32 %97, 2
  %cmp117 = icmp ne i32 %and116, 0
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.else.115
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.121

if.else.120:                                      ; preds = %if.else.115
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %if.then.119
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.114
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.108
  %98 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %98, i32 0, i32 25
  %99 = load i8*, i8** %e_id, align 8, !tbaa !16
  %100 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_id124 = getelementptr inbounds %struct.envelope, %struct.envelope* %100, i32 0, i32 25
  %101 = load i8*, i8** %e_id124, align 8, !tbaa !16
  %102 = load i8*, i8** %p, align 8, !tbaa !1
  %103 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call125 = call i8* @shortenstring(i8* %103, i64 203)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* %101, i8* %102, i8* %call125)
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.123, %for.end
  %104 = load i32, i32* @SendMIMEErrors, align 4, !tbaa !5
  %tobool127 = icmp ne i32 %104, 0
  br i1 %tobool127, label %if.then.128, label %if.end.160

if.then.128:                                      ; preds = %if.end.126
  %105 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @addheader(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 0, %struct.envelope* %105, i32 1)
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %106 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_id129 = getelementptr inbounds %struct.envelope, %struct.envelope* %106, i32 0, i32 25
  %107 = load i8*, i8** %e_id129, align 8, !tbaa !16
  %call130 = call i64 @curtime()
  %108 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %call131 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 257, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* %107, i64 %call130, i8* %108)
  %109 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %109, i32 0, i32 52
  %110 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !52
  %arraydecay132 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %call133 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %110, i8* %arraydecay132)
  %111 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_msgboundary = getelementptr inbounds %struct.envelope, %struct.envelope* %111, i32 0, i32 38
  store i8* %call133, i8** %e_msgboundary, align 8, !tbaa !53
  %arraydecay134 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %112 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_msgboundary135 = getelementptr inbounds %struct.envelope, %struct.envelope* %112, i32 0, i32 38
  %113 = load i8*, i8** %e_msgboundary135, align 8, !tbaa !53
  %call136 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay134, i64 257, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.39, i32 0, i32 0), i8* %113)
  %arraydecay137 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %114 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @addheader(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay137, i32 0, %struct.envelope* %114, i32 1)
  %115 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %115, i32 0, i32 0
  %116 = load %struct.header*, %struct.header** %e_header, align 8, !tbaa !41
  %call138 = call i8* @hvalue(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i32 0, i32 0), %struct.header* %116)
  store i8* %call138, i8** %p, align 8, !tbaa !1
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp139 = icmp ne i8* %117, null
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.146

land.lhs.true.141:                                ; preds = %if.then.128
  %118 = load i8*, i8** %p, align 8, !tbaa !1
  %call142 = call i32 @sm_strcasecmp(i8* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0))
  %cmp143 = icmp ne i32 %call142, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %land.lhs.true.141
  store i8* null, i8** %p, align 8, !tbaa !1
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %land.lhs.true.141, %if.then.128
  %119 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp147 = icmp eq i8* %119, null
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.155

land.lhs.true.149:                                ; preds = %if.end.146
  %120 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags150 = getelementptr inbounds %struct.envelope, %struct.envelope* %120, i32 0, i32 11
  %121 = load i64, i64* %e_flags150, align 8, !tbaa !20
  %and151 = and i64 %121, 131072
  %cmp152 = icmp ne i64 %and151, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %land.lhs.true.149
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %land.lhs.true.149, %if.end.146
  %122 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp156 = icmp ne i8* %122, null
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.155
  %123 = load i8*, i8** %p, align 8, !tbaa !1
  %124 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @addheader(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i32 0, i32 0), i8* %123, i32 0, %struct.envelope* %124, i32 1)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.end.155
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.126
  %125 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call161 = call i32 @strncmp(i8* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i64 8) #7
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.end.160
  %126 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %127 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @addheader(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* %126, i32 0, %struct.envelope* %127, i32 1)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.231

if.else.165:                                      ; preds = %if.end.160
  %128 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call166 = call i32 @strncmp(i8* %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i64 19) #7
  %cmp167 = icmp eq i32 %call166, 0
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %if.else.165
  %129 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %130 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @addheader(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* %129, i32 0, %struct.envelope* %130, i32 1)
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.230

if.else.170:                                      ; preds = %if.else.165
  %131 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  %132 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i64 1) to i64), i64 ptrtoint ([15 x i8]* @.str.49 to i64)), i64 1), label %land.lhs.true.171, label %cond.false

land.lhs.true.171:                                ; preds = %if.else.170
  store i64 14, i64* %__s2_len, align 8, !tbaa !34
  %133 = load i64, i64* %__s2_len, align 8, !tbaa !34
  %cmp172 = icmp ult i64 %133, 4
  br i1 %cmp172, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.171
  %134 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  %135 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  store i8* %135, i8** %__s1, align 8, !tbaa !1
  %136 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  %137 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %137, i64 0
  %138 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv176 = zext i8 %138 to i32
  %139 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), align 1, !tbaa !7
  %conv177 = zext i8 %139 to i32
  %sub = sub nsw i32 %conv176, %conv177
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %140 = load i64, i64* %__s2_len, align 8, !tbaa !34
  %cmp178 = icmp ugt i64 %140, 0
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.210

land.lhs.true.180:                                ; preds = %cond.true
  %141 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp181 = icmp eq i32 %141, 0
  br i1 %cmp181, label %if.then.183, label %if.end.210

if.then.183:                                      ; preds = %land.lhs.true.180
  %142 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i8, i8* %142, i64 1
  %143 = load i8, i8* %arrayidx184, align 1, !tbaa !7
  %conv185 = zext i8 %143 to i32
  %144 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i64 1), align 1, !tbaa !7
  %conv186 = zext i8 %144 to i32
  %sub187 = sub nsw i32 %conv185, %conv186
  store i32 %sub187, i32* %__result, align 4, !tbaa !5
  %145 = load i64, i64* %__s2_len, align 8, !tbaa !34
  %cmp188 = icmp ugt i64 %145, 1
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.209

land.lhs.true.190:                                ; preds = %if.then.183
  %146 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp191 = icmp eq i32 %146, 0
  br i1 %cmp191, label %if.then.193, label %if.end.209

if.then.193:                                      ; preds = %land.lhs.true.190
  %147 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i8, i8* %147, i64 2
  %148 = load i8, i8* %arrayidx194, align 1, !tbaa !7
  %conv195 = zext i8 %148 to i32
  %149 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i64 2), align 1, !tbaa !7
  %conv196 = zext i8 %149 to i32
  %sub197 = sub nsw i32 %conv195, %conv196
  store i32 %sub197, i32* %__result, align 4, !tbaa !5
  %150 = load i64, i64* %__s2_len, align 8, !tbaa !34
  %cmp198 = icmp ugt i64 %150, 2
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.208

land.lhs.true.200:                                ; preds = %if.then.193
  %151 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp201 = icmp eq i32 %151, 0
  br i1 %cmp201, label %if.then.203, label %if.end.208

if.then.203:                                      ; preds = %land.lhs.true.200
  %152 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i8, i8* %152, i64 3
  %153 = load i8, i8* %arrayidx204, align 1, !tbaa !7
  %conv205 = zext i8 %153 to i32
  %154 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i64 3), align 1, !tbaa !7
  %conv206 = zext i8 %154 to i32
  %sub207 = sub nsw i32 %conv205, %conv206
  store i32 %sub207, i32* %__result, align 4, !tbaa !5
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.203, %land.lhs.true.200, %if.then.193
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %land.lhs.true.190, %if.then.183
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %land.lhs.true.180, %cond.true
  %155 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %155, i32* %tmp211, !tbaa !5
  %156 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = load i32, i32* %tmp211, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.171, %if.else.170
  %159 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call212 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.210
  %cond = phi i32 [ %158, %if.end.210 ], [ %call212, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %160 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = load i32, i32* %tmp, !tbaa !5
  %cmp213 = icmp eq i32 %162, 0
  br i1 %cmp213, label %if.then.215, label %if.else.216

if.then.215:                                      ; preds = %cond.end
  %163 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %164 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @addheader(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* %163, i32 0, %struct.envelope* %164, i32 1)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.229

if.else.216:                                      ; preds = %cond.end
  %165 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and217 = and i32 %165, 2
  %cmp218 = icmp ne i32 %and217, 0
  br i1 %cmp218, label %if.then.220, label %if.else.224

if.then.220:                                      ; preds = %if.else.216
  %arraydecay221 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %call222 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay221, i64 257, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.51, i32 0, i32 0))
  %arraydecay223 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %166 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @addheader(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay223, i32 0, %struct.envelope* %166, i32 1)
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.228

if.else.224:                                      ; preds = %if.else.216
  %arraydecay225 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %call226 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay225, i64 257, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.53, i32 0, i32 0))
  %arraydecay227 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %167 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @addheader(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay227, i32 0, %struct.envelope* %167, i32 1)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.224, %if.then.220
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.215
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.then.169
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.164
  %arraydecay232 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %168 = load i8*, i8** %p, align 8, !tbaa !1
  %call233 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay232, i64 257, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i32 0, i32 0), i8* %168)
  %arraydecay234 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %169 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @addheader(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* %arraydecay234, i32 0, %struct.envelope* %169, i32 1)
  %arraydecay235 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %170 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay235, i64 257, %struct.envelope* %170)
  %arraydecay236 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %171 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %171, i32 0, i32 4
  %172 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call237 = call %struct.address* @parseaddr(i8* %arraydecay236, %struct.address* %e_from, i32 49, i32 0, i8** null, %struct.envelope* %172, i32 0)
  %cmp238 = icmp eq %struct.address* %call237, null
  br i1 %cmp238, label %if.then.240, label %if.end.242

if.then.240:                                      ; preds = %if.end.231
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i32 0, i32 0))
  store i32 70, i32* @ExitStat, align 4, !tbaa !5
  %173 = load i32, i32* @returntosender.returndepth, align 4, !tbaa !5
  %dec241 = add nsw i32 %173, -1
  store i32 %dec241, i32* @returntosender.returndepth, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.242:                                       ; preds = %if.end.231
  %174 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_from243 = getelementptr inbounds %struct.envelope, %struct.envelope* %174, i32 0, i32 4
  %q_flags244 = getelementptr inbounds %struct.address, %struct.address* %e_from243, i32 0, i32 5
  %175 = load i64, i64* %q_flags244, align 8, !tbaa !54
  %and245 = and i64 %175, -961
  store i64 %and245, i64* %q_flags244, align 8, !tbaa !54
  %176 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_from246 = getelementptr inbounds %struct.envelope, %struct.envelope* %176, i32 0, i32 4
  %q_flags247 = getelementptr inbounds %struct.address, %struct.address* %e_from246, i32 0, i32 5
  %177 = load i64, i64* %q_flags247, align 8, !tbaa !54
  %or248 = or i64 %177, 128
  store i64 %or248, i64* %q_flags247, align 8, !tbaa !54
  %178 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_from249 = getelementptr inbounds %struct.envelope, %struct.envelope* %178, i32 0, i32 4
  %q_paddr250 = getelementptr inbounds %struct.address, %struct.address* %e_from249, i32 0, i32 0
  %179 = load i8*, i8** %q_paddr250, align 8, !tbaa !17
  %180 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sender251 = getelementptr inbounds %struct.envelope, %struct.envelope* %180, i32 0, i32 5
  store i8* %179, i8** %e_sender251, align 8, !tbaa !18
  %181 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  store %struct.envelope* %181, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %182 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_macro252 = getelementptr inbounds %struct.envelope, %struct.envelope* %182, i32 0, i32 46
  %183 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro252, i32 2, i32 102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 702, i32 %183)
  %184 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_macro253 = getelementptr inbounds %struct.envelope, %struct.envelope* %184, i32 0, i32 46
  %185 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro253, i32 2, i32 120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 703, i32 %185)
  %186 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @eatheader(%struct.envelope* %186, i32 1, i32 1)
  %187 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @markstats(%struct.envelope* %187, %struct.address* null, i32 110)
  %188 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @sendall(%struct.envelope* %188, i32 105)
  %189 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %call254 = call i32 @dropenvelope(%struct.envelope* %189, i32 1, i32 0)
  store i32 -1, i32* %ret, align 4, !tbaa !5
  %190 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_parent = getelementptr inbounds %struct.envelope, %struct.envelope* %190, i32 0, i32 21
  %191 = load %struct.envelope*, %struct.envelope** %e_parent, align 8, !tbaa !21
  %cmp255 = icmp eq %struct.envelope* %191, null
  br i1 %cmp255, label %if.then.262, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.242
  %192 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_parent257 = getelementptr inbounds %struct.envelope, %struct.envelope* %192, i32 0, i32 21
  %193 = load %struct.envelope*, %struct.envelope** %e_parent257, align 8, !tbaa !21
  %e_flags258 = getelementptr inbounds %struct.envelope, %struct.envelope* %193, i32 0, i32 11
  %194 = load i64, i64* %e_flags258, align 8, !tbaa !20
  %and259 = and i64 %194, 128
  %cmp260 = icmp ne i64 %and259, 0
  br i1 %cmp260, label %if.else.263, label %if.then.262

if.then.262:                                      ; preds = %lor.lhs.false, %if.end.242
  store i32 0, i32* %ret, align 4, !tbaa !5
  br label %if.end.293

if.else.263:                                      ; preds = %lor.lhs.false
  %195 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sendqueue264 = getelementptr inbounds %struct.envelope, %struct.envelope* %195, i32 0, i32 7
  %196 = load %struct.address*, %struct.address** %e_sendqueue264, align 8, !tbaa !43
  store %struct.address* %196, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.290, %if.else.263
  %197 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp266 = icmp ne %struct.address* %197, null
  br i1 %cmp266, label %for.body.268, label %for.end.292

for.body.268:                                     ; preds = %for.cond.265
  %198 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state269 = getelementptr inbounds %struct.address, %struct.address* %198, i32 0, i32 21
  %199 = load i16, i16* %q_state269, align 2, !tbaa !28
  %conv270 = sext i16 %199 to i32
  %cmp271 = icmp eq i32 %conv270, 3
  br i1 %cmp271, label %if.then.288, label %lor.lhs.false.273

lor.lhs.false.273:                                ; preds = %for.body.268
  %200 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state274 = getelementptr inbounds %struct.address, %struct.address* %200, i32 0, i32 21
  %201 = load i16, i16* %q_state274, align 2, !tbaa !28
  %conv275 = sext i16 %201 to i32
  %cmp276 = icmp eq i32 %conv275, 4
  br i1 %cmp276, label %if.then.288, label %lor.lhs.false.278

lor.lhs.false.278:                                ; preds = %lor.lhs.false.273
  %202 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state279 = getelementptr inbounds %struct.address, %struct.address* %202, i32 0, i32 21
  %203 = load i16, i16* %q_state279, align 2, !tbaa !28
  %conv280 = sext i16 %203 to i32
  %cmp281 = icmp eq i32 %conv280, 1
  br i1 %cmp281, label %if.then.288, label %lor.lhs.false.283

lor.lhs.false.283:                                ; preds = %lor.lhs.false.278
  %204 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state284 = getelementptr inbounds %struct.address, %struct.address* %204, i32 0, i32 21
  %205 = load i16, i16* %q_state284, align 2, !tbaa !28
  %conv285 = sext i16 %205 to i32
  %cmp286 = icmp eq i32 %conv285, 10
  br i1 %cmp286, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %lor.lhs.false.283, %lor.lhs.false.278, %lor.lhs.false.273, %for.body.268
  store i32 0, i32* %ret, align 4, !tbaa !5
  br label %for.end.292

if.end.289:                                       ; preds = %lor.lhs.false.283
  br label %for.inc.290

for.inc.290:                                      ; preds = %if.end.289
  %206 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next291 = getelementptr inbounds %struct.address, %struct.address* %206, i32 0, i32 10
  %207 = load %struct.address*, %struct.address** %q_next291, align 8, !tbaa !29
  store %struct.address* %207, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.265

for.end.292:                                      ; preds = %if.then.288, %for.cond.265
  br label %if.end.293

if.end.293:                                       ; preds = %for.end.292, %if.then.262
  %208 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_rpool294 = getelementptr inbounds %struct.envelope, %struct.envelope* %208, i32 0, i32 52
  %209 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool294, align 8, !tbaa !52
  call void @sm_rpool_free(%struct.SM_RPOOL_T* %209)
  %210 = load %struct.envelope*, %struct.envelope** %oldcur, align 8, !tbaa !1
  store %struct.envelope* %210, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %211 = load i32, i32* @returntosender.returndepth, align 4, !tbaa !5
  %dec295 = add nsw i32 %211, -1
  store i32 %dec295, i32* @returntosender.returndepth, align 4, !tbaa !5
  %212 = load i32, i32* %ret, align 4, !tbaa !5
  store i32 %212, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.293, %if.then.240, %if.then.73, %if.end.22, %if.then
  %213 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %213) #1
  %214 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast %struct.envelope* %errenvelope to i8*
  call void @llvm.lifetime.end(i64 2656, i8* %216) #1
  %217 = bitcast %struct.envelope** %oldcur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast %struct.envelope** %ee to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = load i32, i32* %retval
  ret i32 %220
}

declare i32 @sm_mbdb_lookup(i8*, %struct.SM_MBDB_T*) #2

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #2

declare i8* @macvalue(i32, %struct.envelope*) #2

declare i32 @writable(i8*, %struct.address*, i64) #2

declare i32 @mailfile(i8*, %struct.mailer*, %struct.address*, i64, %struct.envelope*) #2

declare void @message(i8*, ...) #2

declare %struct.sm_file* @safefopen(i8*, i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @putfromline(%struct.mailer_con_info*, %struct.envelope*) #2

declare i32 @putline(i8*, %struct.mailer_con_info*) #2

declare i32 @sm_io_flush(%struct.sm_file*, i32) #2

declare i32 @sm_io_close(%struct.sm_file*, i32) #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

declare void @loseqfile(%struct.envelope*, i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare %struct.envelope* @newenvelope(%struct.envelope*, %struct.envelope*, %struct.SM_RPOOL_T*) #2

declare %struct.SM_RPOOL_T* @sm_rpool_new_x(%struct.SM_RPOOL_T*) #2

declare void @clrsessenvelope(%struct.envelope*) #2

declare i32 @putheader(%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @errbody(%struct.mailer_con_info* %mci, %struct.envelope* %e, i8* %separator) #0 {
entry:
  %retval = alloca i32, align 4
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %separator.addr = alloca i8*, align 8
  %printheader = alloca i32, align 4
  %sendbody = alloca i32, align 4
  %pm_notify = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %xfile = alloca %struct.sm_file*, align 8
  %p = alloca i8*, align 8
  %q = alloca %struct.address*, align 8
  %actual = alloca [2048 x i8], align 16
  %buf = alloca [2048 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %sff = alloca i64, align 8
  %lbs = alloca i32, align 4
  %putok = alloca i32, align 4
  %lbp = alloca i8*, align 8
  %blen = alloca i32, align 4
  %dbyd = alloca i64, align 8
  %action = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %xdate = alloca i64, align 8
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %separator, i8** %separator.addr, align 8, !tbaa !1
  %0 = bitcast i32* %printheader to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %sendbody to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %pm_notify to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.sm_file** %xfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.address* null, %struct.address** %q, align 8, !tbaa !1
  %7 = bitcast [2048 x i8]* %actual to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %7) #1
  %8 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %8) #1
  %9 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %9, i32 0, i32 0
  %10 = load i64, i64* %mci_flags, align 8, !tbaa !39
  %and = and i64 %10, 512
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  br label %writeerr

if.end:                                           ; preds = %if.then
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags2 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %12, i32 0, i32 0
  %13 = load i64, i64* %mci_flags2, align 8, !tbaa !39
  %and3 = and i64 %13, -513
  store i64 %and3, i64* %mci_flags2, align 8, !tbaa !39
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 21
  %15 = load %struct.envelope*, %struct.envelope** %e_parent, align 8, !tbaa !21
  %cmp5 = icmp eq %struct.envelope* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.4
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0))
  %16 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call7 = call i32 @putline(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.79, i32 0, i32 0), %struct.mailer_con_info* %16)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  br label %writeerr

if.end.10:                                        ; preds = %if.then.6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1052

if.end.11:                                        ; preds = %if.end.4
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 38
  %18 = load i8*, i8** %e_msgboundary, align 8, !tbaa !53
  %cmp12 = icmp ne i8* %18, null
  br i1 %cmp12, label %if.then.13, label %if.end.29

if.then.13:                                       ; preds = %if.end.11
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary14 = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 38
  %20 = load i8*, i8** %e_msgboundary14, align 8, !tbaa !53
  %call15 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay, i64 2048, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i8* %20)
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call16 = call i32 @putline(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.81, i32 0, i32 0), %struct.mailer_con_info* %21)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.lhs.false, label %if.then.27

lor.lhs.false:                                    ; preds = %if.then.13
  %22 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call18 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %22)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %lor.lhs.false.20, label %if.then.27

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %arraydecay21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %23 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call22 = call i32 @putline(i8* %arraydecay21, %struct.mailer_con_info* %23)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then.27

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %24 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call25 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false, %if.then.13
  br label %writeerr

if.end.28:                                        ; preds = %lor.lhs.false.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.11
  store i32 0, i32* %pm_notify, align 4, !tbaa !5
  %25 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %25, i32 0, i32 0
  %26 = load %struct.header*, %struct.header** %e_header, align 8, !tbaa !41
  %call30 = call i8* @hvalue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), %struct.header* %26)
  store i8* %call30, i8** %p, align 8, !tbaa !1
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp31 = icmp ne i8* %27, null
  br i1 %cmp31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.29
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %call32 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i64 11) #7
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %land.lhs.true
  store i32 1, i32* %pm_notify, align 4, !tbaa !5
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true, %if.end.29
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent35 = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 21
  %30 = load %struct.envelope*, %struct.envelope** %e_parent35, align 8, !tbaa !21
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %30, i32 0, i32 7
  %31 = load %struct.address*, %struct.address** %e_sendqueue, align 8, !tbaa !43
  store %struct.address* %31, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %32 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp36 = icmp ne %struct.address* %32, null
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %33, i32 0, i32 21
  %34 = load i16, i16* %q_state, align 2, !tbaa !28
  %conv = sext i16 %34 to i32
  %cmp37 = icmp eq i32 %conv, 2
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body
  br label %for.end

if.end.40:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %35 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %35, i32 0, i32 10
  %36 = load %struct.address*, %struct.address** %q_next, align 8, !tbaa !29
  store %struct.address* %36, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.39, %for.cond
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %if.then.34
  %37 = load i32, i32* %pm_notify, align 4, !tbaa !5
  %tobool42 = icmp ne i32 %37, 0
  br i1 %tobool42, label %if.end.68, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %if.end.41
  %38 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp44 = icmp eq %struct.address* %38, null
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.68

land.lhs.true.46:                                 ; preds = %land.lhs.true.43
  %39 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent47 = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 21
  %40 = load %struct.envelope*, %struct.envelope** %e_parent47, align 8, !tbaa !21
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 11
  %41 = load i64, i64* %e_flags, align 8, !tbaa !20
  %and48 = and i64 %41, 48
  %cmp49 = icmp ne i64 %and48, 0
  br i1 %cmp49, label %if.end.68, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.46
  %42 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call52 = call i32 @putline(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.84, i32 0, i32 0), %struct.mailer_con_info* %42)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %lor.lhs.false.54, label %if.then.66

lor.lhs.false.54:                                 ; preds = %if.then.51
  %43 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call55 = call i32 @putline(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.85, i32 0, i32 0), %struct.mailer_con_info* %43)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %lor.lhs.false.57, label %if.then.66

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.54
  %44 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call58 = call i32 @putline(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.86, i32 0, i32 0), %struct.mailer_con_info* %44)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %lor.lhs.false.60, label %if.then.66

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.57
  %45 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call61 = call i32 @putline(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.84, i32 0, i32 0), %struct.mailer_con_info* %45)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %lor.lhs.false.63, label %if.then.66

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.60
  %46 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call64 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %46)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %lor.lhs.false.63, %lor.lhs.false.60, %lor.lhs.false.57, %lor.lhs.false.54, %if.then.51
  br label %writeerr

if.end.67:                                        ; preds = %lor.lhs.false.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true.46, %land.lhs.true.43, %if.end.41
  %arraydecay69 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %47 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent70 = getelementptr inbounds %struct.envelope, %struct.envelope* %47, i32 0, i32 21
  %48 = load %struct.envelope*, %struct.envelope** %e_parent70, align 8, !tbaa !21
  %e_ctime = getelementptr inbounds %struct.envelope, %struct.envelope* %48, i32 0, i32 2
  %call71 = call i8* @ctime(i64* %e_ctime) #1
  %call72 = call i8* @arpadate(i8* %call71)
  %call73 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay69, i64 2048, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.87, i32 0, i32 0), i8* %call72)
  %arraydecay74 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %49 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call75 = call i32 @putline(i8* %arraydecay74, %struct.mailer_con_info* %49)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.end.68
  br label %writeerr

if.end.78:                                        ; preds = %if.end.68
  %arraydecay79 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %50 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent80 = getelementptr inbounds %struct.envelope, %struct.envelope* %50, i32 0, i32 21
  %51 = load %struct.envelope*, %struct.envelope** %e_parent80, align 8, !tbaa !21
  call void @expand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay79, i64 2048, %struct.envelope* %51)
  %arraydecay81 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %52 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call82 = call i32 @putline(i8* %arraydecay81, %struct.mailer_con_info* %52)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %if.end.78
  br label %writeerr

if.end.85:                                        ; preds = %if.end.78
  %53 = load i32, i32* %pm_notify, align 4, !tbaa !5
  %tobool86 = icmp ne i32 %53, 0
  br i1 %tobool86, label %land.lhs.true.87, label %if.end.101

land.lhs.true.87:                                 ; preds = %if.end.85
  %54 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent88 = getelementptr inbounds %struct.envelope, %struct.envelope* %54, i32 0, i32 21
  %55 = load %struct.envelope*, %struct.envelope** %e_parent88, align 8, !tbaa !21
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %55, i32 0, i32 25
  %56 = load i8*, i8** %e_id, align 8, !tbaa !16
  %cmp89 = icmp ne i8* %56, null
  br i1 %cmp89, label %if.then.91, label %if.end.101

if.then.91:                                       ; preds = %land.lhs.true.87
  %arraydecay92 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %57 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent93 = getelementptr inbounds %struct.envelope, %struct.envelope* %57, i32 0, i32 21
  %58 = load %struct.envelope*, %struct.envelope** %e_parent93, align 8, !tbaa !21
  %e_id94 = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 25
  %59 = load i8*, i8** %e_id94, align 8, !tbaa !16
  %call95 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay92, i64 2048, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0), i8* %59)
  %arraydecay96 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %60 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call97 = call i32 @putline(i8* %arraydecay96, %struct.mailer_con_info* %60)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.then.91
  br label %writeerr

if.end.100:                                       ; preds = %if.then.91
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %land.lhs.true.87, %if.end.85
  %61 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call102 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %61)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %if.end.101
  br label %writeerr

if.end.105:                                       ; preds = %if.end.101
  %62 = load i8*, i8** @ErrMsgFile, align 8, !tbaa !1
  %cmp106 = icmp ne i8* %62, null
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.170

land.lhs.true.108:                                ; preds = %if.end.105
  %63 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent109 = getelementptr inbounds %struct.envelope, %struct.envelope* %63, i32 0, i32 21
  %64 = load %struct.envelope*, %struct.envelope** %e_parent109, align 8, !tbaa !21
  %e_flags110 = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 11
  %65 = load i64, i64* %e_flags110, align 8, !tbaa !20
  %and111 = and i64 %65, 16
  %cmp112 = icmp ne i64 %and111, 0
  br i1 %cmp112, label %if.end.170, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.108
  %66 = load i8*, i8** @ErrMsgFile, align 8, !tbaa !1
  %67 = load i8, i8* %66, align 1, !tbaa !7
  %conv115 = sext i8 %67 to i32
  %cmp116 = icmp eq i32 %conv115, 47
  br i1 %cmp116, label %if.then.118, label %if.else.159

if.then.118:                                      ; preds = %if.then.114
  %68 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  store i64 132, i64* %sff, align 8, !tbaa !34
  %69 = load i32, i32* @DontLockReadFiles, align 4, !tbaa !5
  %tobool119 = icmp ne i32 %69, 0
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.then.118
  %70 = load i64, i64* %sff, align 8, !tbaa !34
  %or = or i64 %70, 16384
  store i64 %or, i64* %sff, align 8, !tbaa !34
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %if.then.118
  %71 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %and122 = and i32 %71, 16777216
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.end.126, label %if.then.124

if.then.124:                                      ; preds = %if.end.121
  %72 = load i64, i64* %sff, align 8, !tbaa !34
  %or125 = or i64 %72, 256
  store i64 %or125, i64* %sff, align 8, !tbaa !34
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.end.121
  %73 = load i8*, i8** @ErrMsgFile, align 8, !tbaa !1
  %74 = load i64, i64* %sff, align 8, !tbaa !34
  %call127 = call %struct.sm_file* @safefopen(i8* %73, i32 0, i32 292, i64 %74)
  store %struct.sm_file* %call127, %struct.sm_file** %xfile, align 8, !tbaa !1
  %75 = load %struct.sm_file*, %struct.sm_file** %xfile, align 8, !tbaa !1
  %cmp128 = icmp ne %struct.sm_file* %75, null
  br i1 %cmp128, label %if.then.130, label %if.end.155

if.then.130:                                      ; preds = %if.end.126
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.then.130
  %76 = load %struct.sm_file*, %struct.sm_file** %xfile, align 8, !tbaa !1
  %arraydecay131 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call132 = call i32 @sm_io_fgets(%struct.sm_file* %76, i32 -2, i8* %arraydecay131, i32 2048)
  %cmp133 = icmp sge i32 %call132, 0
  br i1 %cmp133, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %77 = bitcast i32* %lbs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = bitcast i32* %putok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = bitcast i8** %lbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  store i32 2048, i32* %lbs, align 4, !tbaa !5
  %arraydecay135 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %arraydecay136 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call137 = call i8* @translate_dollars(i8* %arraydecay135, i8* %arraydecay136, i32* %lbs)
  store i8* %call137, i8** %lbp, align 8, !tbaa !1
  %80 = load i8*, i8** %lbp, align 8, !tbaa !1
  %81 = load i8*, i8** %lbp, align 8, !tbaa !1
  %82 = load i32, i32* %lbs, align 4, !tbaa !5
  %conv138 = sext i32 %82 to i64
  %83 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %80, i8* %81, i64 %conv138, %struct.envelope* %83)
  %84 = load i8*, i8** %lbp, align 8, !tbaa !1
  %85 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call139 = call i32 @putline(i8* %84, %struct.mailer_con_info* %85)
  store i32 %call139, i32* %putok, align 4, !tbaa !5
  %86 = load i8*, i8** %lbp, align 8, !tbaa !1
  %arraydecay140 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %cmp141 = icmp ne i8* %86, %arraydecay140
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %while.body
  %87 = load i8*, i8** %lbp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 891)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %while.body
  %88 = load i32, i32* %putok, align 4, !tbaa !5
  %tobool145 = icmp ne i32 %88, 0
  br i1 %tobool145, label %if.end.147, label %if.then.146

if.then.146:                                      ; preds = %if.end.144
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.147:                                       ; preds = %if.end.144
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.146, %if.end.147
  %89 = bitcast i8** %lbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i32* %putok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %lbs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.156 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %92 = load %struct.sm_file*, %struct.sm_file** %xfile, align 8, !tbaa !1
  %call150 = call i32 @sm_io_close(%struct.sm_file* %92, i32 -2)
  %93 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call151 = call i32 @putline(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), %struct.mailer_con_info* %93)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.end.154, label %if.then.153

if.then.153:                                      ; preds = %while.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.154:                                       ; preds = %while.end
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.126
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.156

cleanup.156:                                      ; preds = %if.then.153, %if.end.155, %cleanup
  %94 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %cleanup.dest.157 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.157, label %cleanup.1052 [
    i32 0, label %cleanup.cont.158
    i32 2, label %writeerr
  ]

cleanup.cont.158:                                 ; preds = %cleanup.156
  br label %if.end.169

if.else.159:                                      ; preds = %if.then.114
  %95 = load i8*, i8** @ErrMsgFile, align 8, !tbaa !1
  %arraydecay160 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %96 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %95, i8* %arraydecay160, i64 2048, %struct.envelope* %96)
  %arraydecay161 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %97 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call162 = call i32 @putline(i8* %arraydecay161, %struct.mailer_con_info* %97)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %lor.lhs.false.164, label %if.then.167

lor.lhs.false.164:                                ; preds = %if.else.159
  %98 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call165 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %98)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.end.168, label %if.then.167

if.then.167:                                      ; preds = %lor.lhs.false.164, %if.else.159
  br label %writeerr

if.end.168:                                       ; preds = %lor.lhs.false.164
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %cleanup.cont.158
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %land.lhs.true.108, %if.end.105
  store i32 1, i32* %printheader, align 4, !tbaa !5
  %99 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent171 = getelementptr inbounds %struct.envelope, %struct.envelope* %99, i32 0, i32 21
  %100 = load %struct.envelope*, %struct.envelope** %e_parent171, align 8, !tbaa !21
  %e_sendqueue172 = getelementptr inbounds %struct.envelope, %struct.envelope* %100, i32 0, i32 7
  %101 = load %struct.address*, %struct.address** %e_sendqueue172, align 8, !tbaa !43
  store %struct.address* %101, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.230, %if.end.170
  %102 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp174 = icmp ne %struct.address* %102, null
  br i1 %cmp174, label %for.body.176, label %for.end.232

for.body.176:                                     ; preds = %for.cond.173
  %103 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state177 = getelementptr inbounds %struct.address, %struct.address* %103, i32 0, i32 21
  %104 = load i16, i16* %q_state177, align 2, !tbaa !28
  %conv178 = sext i16 %104 to i32
  %cmp179 = icmp eq i32 %conv178, 2
  br i1 %cmp179, label %lor.lhs.false.181, label %if.then.185

lor.lhs.false.181:                                ; preds = %for.body.176
  %105 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %105, i32 0, i32 5
  %106 = load i64, i64* %q_flags, align 8, !tbaa !49
  %and182 = and i64 %106, 128
  %cmp183 = icmp ne i64 %and182, 0
  br i1 %cmp183, label %if.end.186, label %if.then.185

if.then.185:                                      ; preds = %lor.lhs.false.181, %for.body.176
  br label %for.inc.230

if.end.186:                                       ; preds = %lor.lhs.false.181
  %107 = load i32, i32* %printheader, align 4, !tbaa !5
  %tobool187 = icmp ne i32 %107, 0
  br i1 %tobool187, label %if.then.188, label %if.end.193

if.then.188:                                      ; preds = %if.end.186
  %108 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call189 = call i32 @putline(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.90, i32 0, i32 0), %struct.mailer_con_info* %108)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.end.192, label %if.then.191

if.then.191:                                      ; preds = %if.then.188
  br label %writeerr

if.end.192:                                       ; preds = %if.then.188
  store i32 0, i32* %printheader, align 4, !tbaa !5
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.end.186
  %arraydecay194 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %109 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %109, i32 0, i32 0
  %110 = load i8*, i8** %q_paddr, align 8, !tbaa !44
  %call195 = call i8* @shortenstring(i8* %110, i64 203)
  %call196 = call i64 @sm_strlcpy(i8* %arraydecay194, i8* %call195, i64 2048)
  %arraydecay197 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %111 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call198 = call i32 @putline(i8* %arraydecay197, %struct.mailer_con_info* %111)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.end.201, label %if.then.200

if.then.200:                                      ; preds = %if.end.193
  br label %writeerr

if.end.201:                                       ; preds = %if.end.193
  %112 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_rstatus = getelementptr inbounds %struct.address, %struct.address* %112, i32 0, i32 18
  %113 = load i8*, i8** %q_rstatus, align 8, !tbaa !55
  %cmp202 = icmp ne i8* %113, null
  br i1 %cmp202, label %if.then.204, label %if.end.215

if.then.204:                                      ; preds = %if.end.201
  %arraydecay205 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %114 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_rstatus206 = getelementptr inbounds %struct.address, %struct.address* %114, i32 0, i32 18
  %115 = load i8*, i8** %q_rstatus206, align 8, !tbaa !55
  %call207 = call i8* @exitstat(i8* %115)
  %call208 = call i8* @shortenstring(i8* %call207, i64 203)
  %call209 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay205, i64 2048, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0), i8* %call208)
  %arraydecay210 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %116 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call211 = call i32 @putline(i8* %arraydecay210, %struct.mailer_con_info* %116)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.end.214, label %if.then.213

if.then.213:                                      ; preds = %if.then.204
  br label %writeerr

if.end.214:                                       ; preds = %if.then.204
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.201
  %117 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_alias = getelementptr inbounds %struct.address, %struct.address* %117, i32 0, i32 11
  %118 = load %struct.address*, %struct.address** %q_alias, align 8, !tbaa !51
  %cmp216 = icmp ne %struct.address* %118, null
  br i1 %cmp216, label %if.then.218, label %if.end.229

if.then.218:                                      ; preds = %if.end.215
  %arraydecay219 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %119 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_alias220 = getelementptr inbounds %struct.address, %struct.address* %119, i32 0, i32 11
  %120 = load %struct.address*, %struct.address** %q_alias220, align 8, !tbaa !51
  %q_paddr221 = getelementptr inbounds %struct.address, %struct.address* %120, i32 0, i32 0
  %121 = load i8*, i8** %q_paddr221, align 8, !tbaa !44
  %call222 = call i8* @shortenstring(i8* %121, i64 203)
  %call223 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay219, i64 2048, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.92, i32 0, i32 0), i8* %call222)
  %arraydecay224 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %122 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call225 = call i32 @putline(i8* %arraydecay224, %struct.mailer_con_info* %122)
  %tobool226 = icmp ne i32 %call225, 0
  br i1 %tobool226, label %if.end.228, label %if.then.227

if.then.227:                                      ; preds = %if.then.218
  br label %writeerr

if.end.228:                                       ; preds = %if.then.218
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.end.215
  br label %for.inc.230

for.inc.230:                                      ; preds = %if.end.229, %if.then.185
  %123 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next231 = getelementptr inbounds %struct.address, %struct.address* %123, i32 0, i32 10
  %124 = load %struct.address*, %struct.address** %q_next231, align 8, !tbaa !29
  store %struct.address* %124, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.173

for.end.232:                                      ; preds = %for.cond.173
  %125 = load i32, i32* %printheader, align 4, !tbaa !5
  %tobool233 = icmp ne i32 %125, 0
  br i1 %tobool233, label %if.end.238, label %land.lhs.true.234

land.lhs.true.234:                                ; preds = %for.end.232
  %126 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call235 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %126)
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.end.238, label %if.then.237

if.then.237:                                      ; preds = %land.lhs.true.234
  br label %writeerr

if.end.238:                                       ; preds = %land.lhs.true.234, %for.end.232
  store i32 1, i32* %printheader, align 4, !tbaa !5
  %127 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent239 = getelementptr inbounds %struct.envelope, %struct.envelope* %127, i32 0, i32 21
  %128 = load %struct.envelope*, %struct.envelope** %e_parent239, align 8, !tbaa !21
  %e_sendqueue240 = getelementptr inbounds %struct.envelope, %struct.envelope* %128, i32 0, i32 7
  %129 = load %struct.address*, %struct.address** %e_sendqueue240, align 8, !tbaa !43
  store %struct.address* %129, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.297, %if.end.238
  %130 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp242 = icmp ne %struct.address* %130, null
  br i1 %cmp242, label %for.body.244, label %for.end.299

for.body.244:                                     ; preds = %for.cond.241
  %131 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state245 = getelementptr inbounds %struct.address, %struct.address* %131, i32 0, i32 21
  %132 = load i16, i16* %q_state245, align 2, !tbaa !28
  %conv246 = sext i16 %132 to i32
  %cmp247 = icmp eq i32 %conv246, 2
  br i1 %cmp247, label %if.then.264, label %lor.lhs.false.249

lor.lhs.false.249:                                ; preds = %for.body.244
  %133 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags250 = getelementptr inbounds %struct.address, %struct.address* %133, i32 0, i32 5
  %134 = load i64, i64* %q_flags250, align 8, !tbaa !49
  %and251 = and i64 %134, 2
  %cmp252 = icmp ne i64 %and251, 0
  br i1 %cmp252, label %lor.lhs.false.254, label %if.then.264

lor.lhs.false.254:                                ; preds = %lor.lhs.false.249
  %135 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags255 = getelementptr inbounds %struct.address, %struct.address* %135, i32 0, i32 5
  %136 = load i64, i64* %q_flags255, align 8, !tbaa !49
  %and256 = and i64 %136, 65536
  %cmp257 = icmp ne i64 %and256, 0
  br i1 %cmp257, label %lor.lhs.false.259, label %if.then.264

lor.lhs.false.259:                                ; preds = %lor.lhs.false.254
  %137 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags260 = getelementptr inbounds %struct.address, %struct.address* %137, i32 0, i32 5
  %138 = load i64, i64* %q_flags260, align 8, !tbaa !49
  %and261 = and i64 %138, 8192
  %cmp262 = icmp ne i64 %and261, 0
  br i1 %cmp262, label %if.end.265, label %if.then.264

if.then.264:                                      ; preds = %lor.lhs.false.259, %lor.lhs.false.254, %lor.lhs.false.249, %for.body.244
  br label %for.inc.297

if.end.265:                                       ; preds = %lor.lhs.false.259
  %139 = load i32, i32* %printheader, align 4, !tbaa !5
  %tobool266 = icmp ne i32 %139, 0
  br i1 %tobool266, label %if.then.267, label %if.end.272

if.then.267:                                      ; preds = %if.end.265
  %140 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call268 = call i32 @putline(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.93, i32 0, i32 0), %struct.mailer_con_info* %140)
  %tobool269 = icmp ne i32 %call268, 0
  br i1 %tobool269, label %if.end.271, label %if.then.270

if.then.270:                                      ; preds = %if.then.267
  br label %writeerr

if.end.271:                                       ; preds = %if.then.267
  store i32 0, i32* %printheader, align 4, !tbaa !5
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.end.265
  %arraydecay273 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %141 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_paddr274 = getelementptr inbounds %struct.address, %struct.address* %141, i32 0, i32 0
  %142 = load i8*, i8** %q_paddr274, align 8, !tbaa !44
  %call275 = call i8* @shortenstring(i8* %142, i64 203)
  %call276 = call i64 @sm_strlcpy(i8* %arraydecay273, i8* %call275, i64 2048)
  %arraydecay277 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %143 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call278 = call i32 @putline(i8* %arraydecay277, %struct.mailer_con_info* %143)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.end.281, label %if.then.280

if.then.280:                                      ; preds = %if.end.272
  br label %writeerr

if.end.281:                                       ; preds = %if.end.272
  %144 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_alias282 = getelementptr inbounds %struct.address, %struct.address* %144, i32 0, i32 11
  %145 = load %struct.address*, %struct.address** %q_alias282, align 8, !tbaa !51
  %cmp283 = icmp ne %struct.address* %145, null
  br i1 %cmp283, label %if.then.285, label %if.end.296

if.then.285:                                      ; preds = %if.end.281
  %arraydecay286 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %146 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_alias287 = getelementptr inbounds %struct.address, %struct.address* %146, i32 0, i32 11
  %147 = load %struct.address*, %struct.address** %q_alias287, align 8, !tbaa !51
  %q_paddr288 = getelementptr inbounds %struct.address, %struct.address* %147, i32 0, i32 0
  %148 = load i8*, i8** %q_paddr288, align 8, !tbaa !44
  %call289 = call i8* @shortenstring(i8* %148, i64 203)
  %call290 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay286, i64 2048, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.92, i32 0, i32 0), i8* %call289)
  %arraydecay291 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %149 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call292 = call i32 @putline(i8* %arraydecay291, %struct.mailer_con_info* %149)
  %tobool293 = icmp ne i32 %call292, 0
  br i1 %tobool293, label %if.end.295, label %if.then.294

if.then.294:                                      ; preds = %if.then.285
  br label %writeerr

if.end.295:                                       ; preds = %if.then.285
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.end.281
  br label %for.inc.297

for.inc.297:                                      ; preds = %if.end.296, %if.then.264
  %150 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next298 = getelementptr inbounds %struct.address, %struct.address* %150, i32 0, i32 10
  %151 = load %struct.address*, %struct.address** %q_next298, align 8, !tbaa !29
  store %struct.address* %151, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.241

for.end.299:                                      ; preds = %for.cond.241
  %152 = load i32, i32* %printheader, align 4, !tbaa !5
  %tobool300 = icmp ne i32 %152, 0
  br i1 %tobool300, label %if.end.305, label %land.lhs.true.301

land.lhs.true.301:                                ; preds = %for.end.299
  %153 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call302 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %153)
  %tobool303 = icmp ne i32 %call302, 0
  br i1 %tobool303, label %if.end.305, label %if.then.304

if.then.304:                                      ; preds = %land.lhs.true.301
  br label %writeerr

if.end.305:                                       ; preds = %land.lhs.true.301, %for.end.299
  store i32 1, i32* %printheader, align 4, !tbaa !5
  %154 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent306 = getelementptr inbounds %struct.envelope, %struct.envelope* %154, i32 0, i32 21
  %155 = load %struct.envelope*, %struct.envelope** %e_parent306, align 8, !tbaa !21
  %e_sendqueue307 = getelementptr inbounds %struct.envelope, %struct.envelope* %155, i32 0, i32 7
  %156 = load %struct.address*, %struct.address** %e_sendqueue307, align 8, !tbaa !43
  store %struct.address* %156, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.414, %if.end.305
  %157 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp309 = icmp ne %struct.address* %157, null
  br i1 %cmp309, label %for.body.311, label %for.end.416

for.body.311:                                     ; preds = %for.cond.308
  %158 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state312 = getelementptr inbounds %struct.address, %struct.address* %158, i32 0, i32 21
  %159 = load i16, i16* %q_state312, align 2, !tbaa !28
  %conv313 = sext i16 %159 to i32
  %cmp314 = icmp eq i32 %conv313, 2
  br i1 %cmp314, label %if.then.331, label %lor.lhs.false.316

lor.lhs.false.316:                                ; preds = %for.body.311
  %160 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags317 = getelementptr inbounds %struct.address, %struct.address* %160, i32 0, i32 5
  %161 = load i64, i64* %q_flags317, align 8, !tbaa !49
  %and318 = and i64 %161, 2
  %cmp319 = icmp ne i64 %and318, 0
  br i1 %cmp319, label %lor.lhs.false.321, label %if.then.331

lor.lhs.false.321:                                ; preds = %lor.lhs.false.316
  %162 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags322 = getelementptr inbounds %struct.address, %struct.address* %162, i32 0, i32 5
  %163 = load i64, i64* %q_flags322, align 8, !tbaa !49
  %and323 = and i64 %163, 65536
  %cmp324 = icmp ne i64 %and323, 0
  br i1 %cmp324, label %if.then.331, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %lor.lhs.false.321
  %164 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags327 = getelementptr inbounds %struct.address, %struct.address* %164, i32 0, i32 5
  %165 = load i64, i64* %q_flags327, align 8, !tbaa !49
  %and328 = and i64 %165, 8192
  %cmp329 = icmp ne i64 %and328, 0
  br i1 %cmp329, label %if.then.331, label %if.else.332

if.then.331:                                      ; preds = %lor.lhs.false.326, %lor.lhs.false.321, %lor.lhs.false.316, %for.body.311
  br label %for.inc.414

if.else.332:                                      ; preds = %lor.lhs.false.326
  %166 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags333 = getelementptr inbounds %struct.address, %struct.address* %166, i32 0, i32 5
  %167 = load i64, i64* %q_flags333, align 8, !tbaa !49
  %and334 = and i64 %167, 131072
  %cmp335 = icmp ne i64 %and334, 0
  br i1 %cmp335, label %if.then.337, label %if.else.338

if.then.337:                                      ; preds = %if.else.332
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.381

if.else.338:                                      ; preds = %if.else.332
  %168 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags339 = getelementptr inbounds %struct.address, %struct.address* %168, i32 0, i32 5
  %169 = load i64, i64* %q_flags339, align 8, !tbaa !49
  %and340 = and i64 %169, 32768
  %cmp341 = icmp ne i64 %and340, 0
  br i1 %cmp341, label %if.then.343, label %if.else.344

if.then.343:                                      ; preds = %if.else.338
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.95, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.380

if.else.344:                                      ; preds = %if.else.338
  %170 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags345 = getelementptr inbounds %struct.address, %struct.address* %170, i32 0, i32 5
  %171 = load i64, i64* %q_flags345, align 8, !tbaa !49
  %and346 = and i64 %171, 64
  %cmp347 = icmp ne i64 %and346, 0
  br i1 %cmp347, label %if.else.350, label %if.then.349

if.then.349:                                      ; preds = %if.else.344
  br label %for.inc.414

if.else.350:                                      ; preds = %if.else.344
  %172 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags351 = getelementptr inbounds %struct.address, %struct.address* %172, i32 0, i32 5
  %173 = load i64, i64* %q_flags351, align 8, !tbaa !49
  %and352 = and i64 %173, 1024
  %cmp353 = icmp ne i64 %and352, 0
  br i1 %cmp353, label %if.then.355, label %if.else.356

if.then.355:                                      ; preds = %if.else.350
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.96, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.378

if.else.356:                                      ; preds = %if.else.350
  %174 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags357 = getelementptr inbounds %struct.address, %struct.address* %174, i32 0, i32 5
  %175 = load i64, i64* %q_flags357, align 8, !tbaa !49
  %and358 = and i64 %175, 4096
  %cmp359 = icmp ne i64 %and358, 0
  br i1 %cmp359, label %if.then.361, label %if.else.369

if.then.361:                                      ; preds = %if.else.356
  %176 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags362 = getelementptr inbounds %struct.address, %struct.address* %176, i32 0, i32 5
  %177 = load i64, i64* %q_flags362, align 8, !tbaa !49
  %and363 = and i64 %177, 2048
  %cmp364 = icmp ne i64 %and363, 0
  br i1 %cmp364, label %if.then.366, label %if.else.367

if.then.366:                                      ; preds = %if.then.361
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.97, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.368

if.else.367:                                      ; preds = %if.then.361
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.368

if.end.368:                                       ; preds = %if.else.367, %if.then.366
  br label %if.end.377

if.else.369:                                      ; preds = %if.else.356
  %178 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags370 = getelementptr inbounds %struct.address, %struct.address* %178, i32 0, i32 5
  %179 = load i64, i64* %q_flags370, align 8, !tbaa !49
  %and371 = and i64 %179, 2048
  %cmp372 = icmp ne i64 %and371, 0
  br i1 %cmp372, label %if.then.374, label %if.else.375

if.then.374:                                      ; preds = %if.else.369
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.376

if.else.375:                                      ; preds = %if.else.369
  br label %for.inc.414

if.end.376:                                       ; preds = %if.then.374
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %if.end.368
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %if.then.355
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.then.343
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.then.337
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381
  %180 = load i32, i32* %printheader, align 4, !tbaa !5
  %tobool383 = icmp ne i32 %180, 0
  br i1 %tobool383, label %if.then.384, label %if.end.389

if.then.384:                                      ; preds = %if.end.382
  %181 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call385 = call i32 @putline(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.100, i32 0, i32 0), %struct.mailer_con_info* %181)
  %tobool386 = icmp ne i32 %call385, 0
  br i1 %tobool386, label %if.end.388, label %if.then.387

if.then.387:                                      ; preds = %if.then.384
  br label %writeerr

if.end.388:                                       ; preds = %if.then.384
  store i32 0, i32* %printheader, align 4, !tbaa !5
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %if.end.382
  %arraydecay390 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %182 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_paddr391 = getelementptr inbounds %struct.address, %struct.address* %182, i32 0, i32 0
  %183 = load i8*, i8** %q_paddr391, align 8, !tbaa !44
  %call392 = call i8* @shortenstring(i8* %183, i64 203)
  %184 = load i8*, i8** %p, align 8, !tbaa !1
  %call393 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay390, i64 2048, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.101, i32 0, i32 0), i8* %call392, i8* %184)
  %arraydecay394 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %185 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call395 = call i32 @putline(i8* %arraydecay394, %struct.mailer_con_info* %185)
  %tobool396 = icmp ne i32 %call395, 0
  br i1 %tobool396, label %if.end.398, label %if.then.397

if.then.397:                                      ; preds = %if.end.389
  br label %writeerr

if.end.398:                                       ; preds = %if.end.389
  %186 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_alias399 = getelementptr inbounds %struct.address, %struct.address* %186, i32 0, i32 11
  %187 = load %struct.address*, %struct.address** %q_alias399, align 8, !tbaa !51
  %cmp400 = icmp ne %struct.address* %187, null
  br i1 %cmp400, label %if.then.402, label %if.end.413

if.then.402:                                      ; preds = %if.end.398
  %arraydecay403 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %188 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_alias404 = getelementptr inbounds %struct.address, %struct.address* %188, i32 0, i32 11
  %189 = load %struct.address*, %struct.address** %q_alias404, align 8, !tbaa !51
  %q_paddr405 = getelementptr inbounds %struct.address, %struct.address* %189, i32 0, i32 0
  %190 = load i8*, i8** %q_paddr405, align 8, !tbaa !44
  %call406 = call i8* @shortenstring(i8* %190, i64 203)
  %call407 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay403, i64 2048, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.92, i32 0, i32 0), i8* %call406)
  %arraydecay408 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %191 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call409 = call i32 @putline(i8* %arraydecay408, %struct.mailer_con_info* %191)
  %tobool410 = icmp ne i32 %call409, 0
  br i1 %tobool410, label %if.end.412, label %if.then.411

if.then.411:                                      ; preds = %if.then.402
  br label %writeerr

if.end.412:                                       ; preds = %if.then.402
  br label %if.end.413

if.end.413:                                       ; preds = %if.end.412, %if.end.398
  br label %for.inc.414

for.inc.414:                                      ; preds = %if.end.413, %if.else.375, %if.then.349, %if.then.331
  %192 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next415 = getelementptr inbounds %struct.address, %struct.address* %192, i32 0, i32 10
  %193 = load %struct.address*, %struct.address** %q_next415, align 8, !tbaa !29
  store %struct.address* %193, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.308

for.end.416:                                      ; preds = %for.cond.308
  %194 = load i32, i32* %printheader, align 4, !tbaa !5
  %tobool417 = icmp ne i32 %194, 0
  br i1 %tobool417, label %if.end.422, label %land.lhs.true.418

land.lhs.true.418:                                ; preds = %for.end.416
  %195 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call419 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %195)
  %tobool420 = icmp ne i32 %call419, 0
  br i1 %tobool420, label %if.end.422, label %if.then.421

if.then.421:                                      ; preds = %land.lhs.true.418
  br label %writeerr

if.end.422:                                       ; preds = %land.lhs.true.418, %for.end.416
  %call423 = call i32 @sm_io_flush(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2)
  %196 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent424 = getelementptr inbounds %struct.envelope, %struct.envelope* %196, i32 0, i32 21
  %197 = load %struct.envelope*, %struct.envelope** %e_parent424, align 8, !tbaa !21
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %197, i32 0, i32 32
  %198 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !23
  %cmp425 = icmp eq %struct.sm_file* %198, null
  br i1 %cmp425, label %if.then.427, label %if.else.432

if.then.427:                                      ; preds = %if.end.422
  %199 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call428 = call i32 @putline(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.102, i32 0, i32 0), %struct.mailer_con_info* %199)
  %tobool429 = icmp ne i32 %call428, 0
  br i1 %tobool429, label %if.end.431, label %if.then.430

if.then.430:                                      ; preds = %if.then.427
  br label %writeerr

if.end.431:                                       ; preds = %if.then.427
  br label %if.end.467

if.else.432:                                      ; preds = %if.end.422
  %200 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #1
  store i32 1, i32* %printheader, align 4, !tbaa !5
  %201 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent433 = getelementptr inbounds %struct.envelope, %struct.envelope* %201, i32 0, i32 21
  %202 = load %struct.envelope*, %struct.envelope** %e_parent433, align 8, !tbaa !21
  %e_xfp434 = getelementptr inbounds %struct.envelope, %struct.envelope* %202, i32 0, i32 32
  %203 = load %struct.sm_file*, %struct.sm_file** %e_xfp434, align 8, !tbaa !23
  %call435 = call i32 @bfrewind(%struct.sm_file* %203)
  %204 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp436 = getelementptr inbounds %struct.envelope, %struct.envelope* %204, i32 0, i32 32
  %205 = load %struct.sm_file*, %struct.sm_file** %e_xfp436, align 8, !tbaa !23
  %cmp437 = icmp ne %struct.sm_file* %205, null
  br i1 %cmp437, label %if.then.439, label %if.end.442

if.then.439:                                      ; preds = %if.else.432
  %206 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp440 = getelementptr inbounds %struct.envelope, %struct.envelope* %206, i32 0, i32 32
  %207 = load %struct.sm_file*, %struct.sm_file** %e_xfp440, align 8, !tbaa !23
  %call441 = call i32 @sm_io_flush(%struct.sm_file* %207, i32 -2)
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.439, %if.else.432
  br label %while.cond.443

while.cond.443:                                   ; preds = %if.end.462, %if.end.442
  %208 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent444 = getelementptr inbounds %struct.envelope, %struct.envelope* %208, i32 0, i32 21
  %209 = load %struct.envelope*, %struct.envelope** %e_parent444, align 8, !tbaa !21
  %e_xfp445 = getelementptr inbounds %struct.envelope, %struct.envelope* %209, i32 0, i32 32
  %210 = load %struct.sm_file*, %struct.sm_file** %e_xfp445, align 8, !tbaa !23
  %arraydecay446 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call447 = call i32 @sm_io_fgets(%struct.sm_file* %210, i32 -2, i8* %arraydecay446, i32 2048)
  store i32 %call447, i32* %blen, align 4, !tbaa !5
  %cmp448 = icmp sge i32 %call447, 0
  br i1 %cmp448, label %while.body.450, label %while.end.463

while.body.450:                                   ; preds = %while.cond.443
  %211 = load i32, i32* %printheader, align 4, !tbaa !5
  %tobool451 = icmp ne i32 %211, 0
  br i1 %tobool451, label %land.lhs.true.452, label %if.end.456

land.lhs.true.452:                                ; preds = %while.body.450
  %212 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call453 = call i32 @putline(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.103, i32 0, i32 0), %struct.mailer_con_info* %212)
  %tobool454 = icmp ne i32 %call453, 0
  br i1 %tobool454, label %if.end.456, label %if.then.455

if.then.455:                                      ; preds = %land.lhs.true.452
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.464

if.end.456:                                       ; preds = %land.lhs.true.452, %while.body.450
  store i32 0, i32* %printheader, align 4, !tbaa !5
  %arraydecay457 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %213 = load i32, i32* %blen, align 4, !tbaa !5
  %conv458 = sext i32 %213 to i64
  %214 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call459 = call i32 @putxline(i8* %arraydecay457, i64 %conv458, %struct.mailer_con_info* %214, i32 1)
  %tobool460 = icmp ne i32 %call459, 0
  br i1 %tobool460, label %if.end.462, label %if.then.461

if.then.461:                                      ; preds = %if.end.456
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.464

if.end.462:                                       ; preds = %if.end.456
  br label %while.cond.443

while.end.463:                                    ; preds = %while.cond.443
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.464

cleanup.464:                                      ; preds = %if.then.461, %if.then.455, %while.end.463
  %215 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %cleanup.dest.465 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.465, label %cleanup.1052 [
    i32 0, label %cleanup.cont.466
    i32 2, label %writeerr
  ]

cleanup.cont.466:                                 ; preds = %cleanup.464
  br label %if.end.467

if.end.467:                                       ; preds = %cleanup.cont.466, %if.end.431
  %call468 = call i32* @__errno_location() #6
  store i32 0, i32* %call468, align 4, !tbaa !5
  %216 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary469 = getelementptr inbounds %struct.envelope, %struct.envelope* %216, i32 0, i32 38
  %217 = load i8*, i8** %e_msgboundary469, align 8, !tbaa !53
  %cmp470 = icmp ne i8* %217, null
  br i1 %cmp470, label %if.then.472, label %if.end.897

if.then.472:                                      ; preds = %if.end.467
  %arraydecay473 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %218 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary474 = getelementptr inbounds %struct.envelope, %struct.envelope* %218, i32 0, i32 38
  %219 = load i8*, i8** %e_msgboundary474, align 8, !tbaa !53
  %call475 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay473, i64 2048, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i8* %219)
  %220 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call476 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %220)
  %tobool477 = icmp ne i32 %call476, 0
  br i1 %tobool477, label %lor.lhs.false.478, label %if.then.488

lor.lhs.false.478:                                ; preds = %if.then.472
  %arraydecay479 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %221 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call480 = call i32 @putline(i8* %arraydecay479, %struct.mailer_con_info* %221)
  %tobool481 = icmp ne i32 %call480, 0
  br i1 %tobool481, label %lor.lhs.false.482, label %if.then.488

lor.lhs.false.482:                                ; preds = %lor.lhs.false.478
  %222 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call483 = call i32 @putline(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.104, i32 0, i32 0), %struct.mailer_con_info* %222)
  %tobool484 = icmp ne i32 %call483, 0
  br i1 %tobool484, label %lor.lhs.false.485, label %if.then.488

lor.lhs.false.485:                                ; preds = %lor.lhs.false.482
  %223 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call486 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %223)
  %tobool487 = icmp ne i32 %call486, 0
  br i1 %tobool487, label %if.end.489, label %if.then.488

if.then.488:                                      ; preds = %lor.lhs.false.485, %lor.lhs.false.482, %lor.lhs.false.478, %if.then.472
  br label %writeerr

if.end.489:                                       ; preds = %lor.lhs.false.485
  %224 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent490 = getelementptr inbounds %struct.envelope, %struct.envelope* %224, i32 0, i32 21
  %225 = load %struct.envelope*, %struct.envelope** %e_parent490, align 8, !tbaa !21
  %e_envid = getelementptr inbounds %struct.envelope, %struct.envelope* %225, i32 0, i32 40
  %226 = load i8*, i8** %e_envid, align 8, !tbaa !56
  %cmp491 = icmp ne i8* %226, null
  br i1 %cmp491, label %if.then.493, label %if.end.504

if.then.493:                                      ; preds = %if.end.489
  %arraydecay494 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %227 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent495 = getelementptr inbounds %struct.envelope, %struct.envelope* %227, i32 0, i32 21
  %228 = load %struct.envelope*, %struct.envelope** %e_parent495, align 8, !tbaa !21
  %e_envid496 = getelementptr inbounds %struct.envelope, %struct.envelope* %228, i32 0, i32 40
  %229 = load i8*, i8** %e_envid496, align 8, !tbaa !56
  %call497 = call i8* @xuntextify(i8* %229)
  %call498 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay494, i64 2048, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i32 0, i32 0), i8* %call497)
  %arraydecay499 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %230 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call500 = call i32 @putline(i8* %arraydecay499, %struct.mailer_con_info* %230)
  %tobool501 = icmp ne i32 %call500, 0
  br i1 %tobool501, label %if.end.503, label %if.then.502

if.then.502:                                      ; preds = %if.then.493
  br label %writeerr

if.end.503:                                       ; preds = %if.then.493
  br label %if.end.504

if.end.504:                                       ; preds = %if.end.503, %if.end.489
  %arraydecay505 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %231 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %call506 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay505, i64 2048, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i32 0, i32 0), i8* %231)
  %arraydecay507 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %232 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call508 = call i32 @putline(i8* %arraydecay507, %struct.mailer_con_info* %232)
  %tobool509 = icmp ne i32 %call508, 0
  br i1 %tobool509, label %if.end.511, label %if.then.510

if.then.510:                                      ; preds = %if.end.504
  br label %writeerr

if.end.511:                                       ; preds = %if.end.504
  %233 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %cmp512 = icmp ne i8* %233, null
  br i1 %cmp512, label %if.then.514, label %if.end.533

if.then.514:                                      ; preds = %if.end.511
  %234 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent515 = getelementptr inbounds %struct.envelope, %struct.envelope* %234, i32 0, i32 21
  %235 = load %struct.envelope*, %struct.envelope** %e_parent515, align 8, !tbaa !21
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %235, i32 0, i32 4
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %e_from, i32 0, i32 4
  %236 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !22
  %cmp516 = icmp eq %struct.mailer* %236, null
  br i1 %cmp516, label %if.then.524, label %lor.lhs.false.518

lor.lhs.false.518:                                ; preds = %if.then.514
  %237 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent519 = getelementptr inbounds %struct.envelope, %struct.envelope* %237, i32 0, i32 21
  %238 = load %struct.envelope*, %struct.envelope** %e_parent519, align 8, !tbaa !21
  %e_from520 = getelementptr inbounds %struct.envelope, %struct.envelope* %238, i32 0, i32 4
  %q_mailer521 = getelementptr inbounds %struct.address, %struct.address* %e_from520, i32 0, i32 4
  %239 = load %struct.mailer*, %struct.mailer** %q_mailer521, align 8, !tbaa !22
  %m_mtatype = getelementptr inbounds %struct.mailer, %struct.mailer* %239, i32 0, i32 2
  %240 = load i8*, i8** %m_mtatype, align 8, !tbaa !57
  store i8* %240, i8** %p, align 8, !tbaa !1
  %cmp522 = icmp eq i8* %240, null
  br i1 %cmp522, label %if.then.524, label %if.end.525

if.then.524:                                      ; preds = %lor.lhs.false.518, %if.then.514
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.525

if.end.525:                                       ; preds = %if.then.524, %lor.lhs.false.518
  %arraydecay526 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %241 = load i8*, i8** %p, align 8, !tbaa !1
  %242 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %call527 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay526, i64 2048, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.108, i32 0, i32 0), i8* %241, i8* %242)
  %arraydecay528 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %243 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call529 = call i32 @putline(i8* %arraydecay528, %struct.mailer_con_info* %243)
  %tobool530 = icmp ne i32 %call529, 0
  br i1 %tobool530, label %if.end.532, label %if.then.531

if.then.531:                                      ; preds = %if.end.525
  br label %writeerr

if.end.532:                                       ; preds = %if.end.525
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.532, %if.end.511
  %arraydecay534 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %244 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent535 = getelementptr inbounds %struct.envelope, %struct.envelope* %244, i32 0, i32 21
  %245 = load %struct.envelope*, %struct.envelope** %e_parent535, align 8, !tbaa !21
  %e_ctime536 = getelementptr inbounds %struct.envelope, %struct.envelope* %245, i32 0, i32 2
  %call537 = call i8* @ctime(i64* %e_ctime536) #1
  %call538 = call i8* @arpadate(i8* %call537)
  %call539 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay534, i64 2048, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), i8* %call538)
  %arraydecay540 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %246 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call541 = call i32 @putline(i8* %arraydecay540, %struct.mailer_con_info* %246)
  %tobool542 = icmp ne i32 %call541, 0
  br i1 %tobool542, label %if.end.544, label %if.then.543

if.then.543:                                      ; preds = %if.end.533
  br label %writeerr

if.end.544:                                       ; preds = %if.end.533
  %247 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent545 = getelementptr inbounds %struct.envelope, %struct.envelope* %247, i32 0, i32 21
  %248 = load %struct.envelope*, %struct.envelope** %e_parent545, align 8, !tbaa !21
  %e_dlvr_flag = getelementptr inbounds %struct.envelope, %struct.envelope* %248, i32 0, i32 51
  %249 = load i32, i32* %e_dlvr_flag, align 4, !tbaa !59
  %cmp546 = icmp ne i32 %249, 0
  br i1 %cmp546, label %if.then.548, label %if.end.564

if.then.548:                                      ; preds = %if.end.544
  %250 = bitcast i64* %dbyd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %250) #1
  %251 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent549 = getelementptr inbounds %struct.envelope, %struct.envelope* %251, i32 0, i32 21
  %252 = load %struct.envelope*, %struct.envelope** %e_parent549, align 8, !tbaa !21
  %e_ctime550 = getelementptr inbounds %struct.envelope, %struct.envelope* %252, i32 0, i32 2
  %253 = load i64, i64* %e_ctime550, align 8, !tbaa !60
  %254 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent551 = getelementptr inbounds %struct.envelope, %struct.envelope* %254, i32 0, i32 21
  %255 = load %struct.envelope*, %struct.envelope** %e_parent551, align 8, !tbaa !21
  %e_deliver_by = getelementptr inbounds %struct.envelope, %struct.envelope* %255, i32 0, i32 50
  %256 = load i64, i64* %e_deliver_by, align 8, !tbaa !61
  %add = add nsw i64 %253, %256
  store i64 %add, i64* %dbyd, align 8, !tbaa !34
  %arraydecay552 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call553 = call i8* @ctime(i64* %dbyd) #1
  %call554 = call i8* @arpadate(i8* %call553)
  %call555 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay552, i64 2048, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0), i8* %call554)
  %arraydecay556 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %257 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call557 = call i32 @putline(i8* %arraydecay556, %struct.mailer_con_info* %257)
  %tobool558 = icmp ne i32 %call557, 0
  br i1 %tobool558, label %if.end.560, label %if.then.559

if.then.559:                                      ; preds = %if.then.548
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.561

if.end.560:                                       ; preds = %if.then.548
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.561

cleanup.561:                                      ; preds = %if.then.559, %if.end.560
  %258 = bitcast i64* %dbyd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %cleanup.dest.562 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.562, label %cleanup.1052 [
    i32 0, label %cleanup.cont.563
    i32 2, label %writeerr
  ]

cleanup.cont.563:                                 ; preds = %cleanup.561
  br label %if.end.564

if.end.564:                                       ; preds = %cleanup.cont.563, %if.end.544
  %259 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent565 = getelementptr inbounds %struct.envelope, %struct.envelope* %259, i32 0, i32 21
  %260 = load %struct.envelope*, %struct.envelope** %e_parent565, align 8, !tbaa !21
  %e_sendqueue566 = getelementptr inbounds %struct.envelope, %struct.envelope* %260, i32 0, i32 7
  %261 = load %struct.address*, %struct.address** %e_sendqueue566, align 8, !tbaa !43
  store %struct.address* %261, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.567

for.cond.567:                                     ; preds = %for.inc.894, %if.end.564
  %262 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp568 = icmp ne %struct.address* %262, null
  br i1 %cmp568, label %for.body.570, label %for.end.896

for.body.570:                                     ; preds = %for.cond.567
  %263 = bitcast i8** %action to i8*
  call void @llvm.lifetime.start(i64 8, i8* %263) #1
  %264 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state571 = getelementptr inbounds %struct.address, %struct.address* %264, i32 0, i32 21
  %265 = load i16, i16* %q_state571, align 2, !tbaa !28
  %conv572 = sext i16 %265 to i32
  %cmp573 = icmp eq i32 %conv572, 2
  br i1 %cmp573, label %if.then.575, label %if.else.587

if.then.575:                                      ; preds = %for.body.570
  %266 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags576 = getelementptr inbounds %struct.address, %struct.address* %266, i32 0, i32 5
  %267 = load i64, i64* %q_flags576, align 8, !tbaa !49
  %and577 = and i64 %267, 512
  %cmp578 = icmp ne i64 %and577, 0
  br i1 %cmp578, label %land.lhs.true.580, label %if.end.586

land.lhs.true.580:                                ; preds = %if.then.575
  %268 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags581 = getelementptr inbounds %struct.address, %struct.address* %268, i32 0, i32 5
  %269 = load i64, i64* %q_flags581, align 8, !tbaa !49
  %and582 = and i64 %269, 128
  %cmp583 = icmp ne i64 %and582, 0
  br i1 %cmp583, label %if.end.586, label %if.then.585

if.then.585:                                      ; preds = %land.lhs.true.580
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.586:                                       ; preds = %land.lhs.true.580, %if.then.575
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  br label %if.end.651

if.else.587:                                      ; preds = %for.body.570
  %270 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags588 = getelementptr inbounds %struct.address, %struct.address* %270, i32 0, i32 5
  %271 = load i64, i64* %q_flags588, align 8, !tbaa !49
  %and589 = and i64 %271, 2
  %cmp590 = icmp ne i64 %and589, 0
  br i1 %cmp590, label %if.else.593, label %if.then.592

if.then.592:                                      ; preds = %if.else.587
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.891

if.else.593:                                      ; preds = %if.else.587
  %272 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags594 = getelementptr inbounds %struct.address, %struct.address* %272, i32 0, i32 5
  %273 = load i64, i64* %q_flags594, align 8, !tbaa !49
  %and595 = and i64 %273, 4096
  %cmp596 = icmp ne i64 %and595, 0
  br i1 %cmp596, label %if.then.598, label %if.else.606

if.then.598:                                      ; preds = %if.else.593
  %274 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags599 = getelementptr inbounds %struct.address, %struct.address* %274, i32 0, i32 5
  %275 = load i64, i64* %q_flags599, align 8, !tbaa !49
  %and600 = and i64 %275, 2048
  %cmp601 = icmp ne i64 %and600, 0
  br i1 %cmp601, label %if.then.603, label %if.else.604

if.then.603:                                      ; preds = %if.then.598
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.112, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  br label %if.end.605

if.else.604:                                      ; preds = %if.then.598
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.113, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  br label %if.end.605

if.end.605:                                       ; preds = %if.else.604, %if.then.603
  br label %if.end.649

if.else.606:                                      ; preds = %if.else.593
  %276 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags607 = getelementptr inbounds %struct.address, %struct.address* %276, i32 0, i32 5
  %277 = load i64, i64* %q_flags607, align 8, !tbaa !49
  %and608 = and i64 %277, 1024
  %cmp609 = icmp ne i64 %and608, 0
  br i1 %cmp609, label %if.then.611, label %if.else.612

if.then.611:                                      ; preds = %if.else.606
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.114, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  br label %if.end.648

if.else.612:                                      ; preds = %if.else.606
  %278 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags613 = getelementptr inbounds %struct.address, %struct.address* %278, i32 0, i32 5
  %279 = load i64, i64* %q_flags613, align 8, !tbaa !49
  %and614 = and i64 %279, 2048
  %cmp615 = icmp ne i64 %and614, 0
  br i1 %cmp615, label %if.then.617, label %if.else.618

if.then.617:                                      ; preds = %if.else.612
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.115, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  br label %if.end.647

if.else.618:                                      ; preds = %if.else.612
  %280 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags619 = getelementptr inbounds %struct.address, %struct.address* %280, i32 0, i32 5
  %281 = load i64, i64* %q_flags619, align 8, !tbaa !49
  %and620 = and i64 %281, 8192
  %cmp621 = icmp ne i64 %and620, 0
  br i1 %cmp621, label %if.then.623, label %if.else.624

if.then.623:                                      ; preds = %if.else.618
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  br label %if.end.646

if.else.624:                                      ; preds = %if.else.618
  %282 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags625 = getelementptr inbounds %struct.address, %struct.address* %282, i32 0, i32 5
  %283 = load i64, i64* %q_flags625, align 8, !tbaa !49
  %and626 = and i64 %283, 32768
  %cmp627 = icmp ne i64 %and626, 0
  br i1 %cmp627, label %if.then.629, label %if.else.630

if.then.629:                                      ; preds = %if.else.624
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  br label %if.end.645

if.else.630:                                      ; preds = %if.else.624
  %284 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags631 = getelementptr inbounds %struct.address, %struct.address* %284, i32 0, i32 5
  %285 = load i64, i64* %q_flags631, align 8, !tbaa !49
  %and632 = and i64 %285, 65536
  %cmp633 = icmp ne i64 %and632, 0
  br i1 %cmp633, label %if.then.635, label %if.else.636

if.then.635:                                      ; preds = %if.else.630
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.118, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  br label %if.end.644

if.else.636:                                      ; preds = %if.else.630
  %286 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags637 = getelementptr inbounds %struct.address, %struct.address* %286, i32 0, i32 5
  %287 = load i64, i64* %q_flags637, align 8, !tbaa !49
  %and638 = and i64 %287, 131072
  %cmp639 = icmp ne i64 %and638, 0
  br i1 %cmp639, label %if.then.641, label %if.else.642

if.then.641:                                      ; preds = %if.else.636
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.119, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  br label %if.end.643

if.else.642:                                      ; preds = %if.else.636
  store i32 21, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.643:                                       ; preds = %if.then.641
  br label %if.end.644

if.end.644:                                       ; preds = %if.end.643, %if.then.635
  br label %if.end.645

if.end.645:                                       ; preds = %if.end.644, %if.then.629
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.645, %if.then.623
  br label %if.end.647

if.end.647:                                       ; preds = %if.end.646, %if.then.617
  br label %if.end.648

if.end.648:                                       ; preds = %if.end.647, %if.then.611
  br label %if.end.649

if.end.649:                                       ; preds = %if.end.648, %if.end.605
  br label %if.end.650

if.end.650:                                       ; preds = %if.end.649
  br label %if.end.651

if.end.651:                                       ; preds = %if.end.650, %if.end.586
  %288 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call652 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %288)
  %tobool653 = icmp ne i32 %call652, 0
  br i1 %tobool653, label %if.end.655, label %if.then.654

if.then.654:                                      ; preds = %if.end.651
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.655:                                       ; preds = %if.end.651
  %289 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_orcpt = getelementptr inbounds %struct.address, %struct.address* %289, i32 0, i32 16
  %290 = load i8*, i8** %q_orcpt, align 8, !tbaa !62
  %cmp656 = icmp ne i8* %290, null
  br i1 %cmp656, label %if.then.658, label %if.end.674

if.then.658:                                      ; preds = %if.end.655
  %291 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_orcpt659 = getelementptr inbounds %struct.address, %struct.address* %291, i32 0, i32 16
  %292 = load i8*, i8** %q_orcpt659, align 8, !tbaa !62
  %call660 = call i8* @strchr(i8* %292, i32 59) #1
  store i8* %call660, i8** %p, align 8, !tbaa !1
  %293 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp661 = icmp ne i8* %293, null
  br i1 %cmp661, label %if.then.663, label %if.end.673

if.then.663:                                      ; preds = %if.then.658
  %294 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %294, align 1, !tbaa !7
  %arraydecay664 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %295 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_orcpt665 = getelementptr inbounds %struct.address, %struct.address* %295, i32 0, i32 16
  %296 = load i8*, i8** %q_orcpt665, align 8, !tbaa !62
  %297 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %297, i64 1
  %call666 = call i8* @xuntextify(i8* %add.ptr)
  %call667 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay664, i64 2048, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.120, i32 0, i32 0), i8* %296, i8* %call666)
  %298 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 59, i8* %298, align 1, !tbaa !7
  %arraydecay668 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %299 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call669 = call i32 @putline(i8* %arraydecay668, %struct.mailer_con_info* %299)
  %tobool670 = icmp ne i32 %call669, 0
  br i1 %tobool670, label %if.end.672, label %if.then.671

if.then.671:                                      ; preds = %if.then.663
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.672:                                       ; preds = %if.then.663
  br label %if.end.673

if.end.673:                                       ; preds = %if.end.672, %if.then.658
  br label %if.end.674

if.end.674:                                       ; preds = %if.end.673, %if.end.655
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %actual, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %300 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %300, i32 0, i32 1
  %301 = load i8*, i8** %q_user, align 8, !tbaa !63
  %arrayidx675 = getelementptr inbounds i8, i8* %301, i64 0
  %302 = load i8, i8* %arrayidx675, align 1, !tbaa !7
  %conv676 = sext i8 %302 to i32
  %cmp677 = icmp ne i32 %conv676, 0
  br i1 %cmp677, label %if.then.679, label %if.end.709

if.then.679:                                      ; preds = %if.end.674
  %303 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_mailer680 = getelementptr inbounds %struct.address, %struct.address* %303, i32 0, i32 4
  %304 = load %struct.mailer*, %struct.mailer** %q_mailer680, align 8, !tbaa !64
  %cmp681 = icmp ne %struct.mailer* %304, null
  br i1 %cmp681, label %land.lhs.true.683, label %if.else.690

land.lhs.true.683:                                ; preds = %if.then.679
  %305 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_mailer684 = getelementptr inbounds %struct.address, %struct.address* %305, i32 0, i32 4
  %306 = load %struct.mailer*, %struct.mailer** %q_mailer684, align 8, !tbaa !64
  %m_addrtype = getelementptr inbounds %struct.mailer, %struct.mailer* %306, i32 0, i32 3
  %307 = load i8*, i8** %m_addrtype, align 8, !tbaa !65
  %cmp685 = icmp ne i8* %307, null
  br i1 %cmp685, label %if.then.687, label %if.else.690

if.then.687:                                      ; preds = %land.lhs.true.683
  %308 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_mailer688 = getelementptr inbounds %struct.address, %struct.address* %308, i32 0, i32 4
  %309 = load %struct.mailer*, %struct.mailer** %q_mailer688, align 8, !tbaa !64
  %m_addrtype689 = getelementptr inbounds %struct.mailer, %struct.mailer* %309, i32 0, i32 3
  %310 = load i8*, i8** %m_addrtype689, align 8, !tbaa !65
  store i8* %310, i8** %p, align 8, !tbaa !1
  br label %if.end.691

if.else.690:                                      ; preds = %land.lhs.true.683, %if.then.679
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.691

if.end.691:                                       ; preds = %if.else.690, %if.then.687
  %311 = load i8*, i8** %p, align 8, !tbaa !1
  %call692 = call i32 @sm_strcasecmp(i8* %311, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0))
  %cmp693 = icmp eq i32 %call692, 0
  br i1 %cmp693, label %land.lhs.true.695, label %if.else.704

land.lhs.true.695:                                ; preds = %if.end.691
  %312 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_user696 = getelementptr inbounds %struct.address, %struct.address* %312, i32 0, i32 1
  %313 = load i8*, i8** %q_user696, align 8, !tbaa !63
  %call697 = call i8* @strchr(i8* %313, i32 64) #1
  %cmp698 = icmp eq i8* %call697, null
  br i1 %cmp698, label %if.then.700, label %if.else.704

if.then.700:                                      ; preds = %land.lhs.true.695
  %arraydecay701 = getelementptr inbounds [2048 x i8], [2048 x i8]* %actual, i32 0, i32 0
  %314 = load i8*, i8** %p, align 8, !tbaa !1
  %315 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_user702 = getelementptr inbounds %struct.address, %struct.address* %315, i32 0, i32 1
  %316 = load i8*, i8** %q_user702, align 8, !tbaa !63
  %317 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %call703 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay701, i64 2048, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.122, i32 0, i32 0), i8* %314, i8* %316, i8* %317)
  br label %if.end.708

if.else.704:                                      ; preds = %land.lhs.true.695, %if.end.691
  %arraydecay705 = getelementptr inbounds [2048 x i8], [2048 x i8]* %actual, i32 0, i32 0
  %318 = load i8*, i8** %p, align 8, !tbaa !1
  %319 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_user706 = getelementptr inbounds %struct.address, %struct.address* %319, i32 0, i32 1
  %320 = load i8*, i8** %q_user706, align 8, !tbaa !63
  %call707 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay705, i64 2048, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i8* %318, i8* %320)
  br label %if.end.708

if.end.708:                                       ; preds = %if.else.704, %if.then.700
  br label %if.end.709

if.end.709:                                       ; preds = %if.end.708, %if.end.674
  %321 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_finalrcpt = getelementptr inbounds %struct.address, %struct.address* %321, i32 0, i32 15
  %322 = load i8*, i8** %q_finalrcpt, align 8, !tbaa !66
  %cmp710 = icmp eq i8* %322, null
  br i1 %cmp710, label %if.then.712, label %if.end.723

if.then.712:                                      ; preds = %if.end.709
  %323 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id713 = getelementptr inbounds %struct.envelope, %struct.envelope* %323, i32 0, i32 25
  %324 = load i8*, i8** %e_id713, align 8, !tbaa !16
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %324, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.124, i32 0, i32 0))
  %arrayidx714 = getelementptr inbounds [2048 x i8], [2048 x i8]* %actual, i32 0, i64 0
  %325 = load i8, i8* %arrayidx714, align 1, !tbaa !7
  %conv715 = sext i8 %325 to i32
  %cmp716 = icmp ne i32 %conv715, 0
  br i1 %cmp716, label %if.then.718, label %if.end.722

if.then.718:                                      ; preds = %if.then.712
  %326 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %326, i32 0, i32 52
  %327 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !52
  %arraydecay719 = getelementptr inbounds [2048 x i8], [2048 x i8]* %actual, i32 0, i32 0
  %call720 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %327, i8* %arraydecay719)
  %328 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_finalrcpt721 = getelementptr inbounds %struct.address, %struct.address* %328, i32 0, i32 15
  store i8* %call720, i8** %q_finalrcpt721, align 8, !tbaa !66
  br label %if.end.722

if.end.722:                                       ; preds = %if.then.718, %if.then.712
  br label %if.end.723

if.end.723:                                       ; preds = %if.end.722, %if.end.709
  %329 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_finalrcpt724 = getelementptr inbounds %struct.address, %struct.address* %329, i32 0, i32 15
  %330 = load i8*, i8** %q_finalrcpt724, align 8, !tbaa !66
  %cmp725 = icmp ne i8* %330, null
  br i1 %cmp725, label %if.then.727, label %if.end.736

if.then.727:                                      ; preds = %if.end.723
  %arraydecay728 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %331 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_finalrcpt729 = getelementptr inbounds %struct.address, %struct.address* %331, i32 0, i32 15
  %332 = load i8*, i8** %q_finalrcpt729, align 8, !tbaa !66
  %call730 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay728, i64 2048, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.125, i32 0, i32 0), i8* %332)
  %arraydecay731 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %333 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call732 = call i32 @putline(i8* %arraydecay731, %struct.mailer_con_info* %333)
  %tobool733 = icmp ne i32 %call732, 0
  br i1 %tobool733, label %if.end.735, label %if.then.734

if.then.734:                                      ; preds = %if.then.727
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.735:                                       ; preds = %if.then.727
  br label %if.end.736

if.end.736:                                       ; preds = %if.end.735, %if.end.723
  %arrayidx737 = getelementptr inbounds [2048 x i8], [2048 x i8]* %actual, i32 0, i64 0
  %334 = load i8, i8* %arrayidx737, align 1, !tbaa !7
  %conv738 = sext i8 %334 to i32
  %cmp739 = icmp ne i32 %conv738, 0
  br i1 %cmp739, label %land.lhs.true.741, label %if.end.764

land.lhs.true.741:                                ; preds = %if.end.736
  %335 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_finalrcpt742 = getelementptr inbounds %struct.address, %struct.address* %335, i32 0, i32 15
  %336 = load i8*, i8** %q_finalrcpt742, align 8, !tbaa !66
  %cmp743 = icmp ne i8* %336, null
  br i1 %cmp743, label %land.lhs.true.745, label %if.end.764

land.lhs.true.745:                                ; preds = %land.lhs.true.741
  %337 = load i64, i64* @PrivacyFlags, align 8, !tbaa !34
  %and746 = and i64 %337, 4194304
  %cmp747 = icmp ne i64 %and746, 0
  br i1 %cmp747, label %if.end.764, label %land.lhs.true.749

land.lhs.true.749:                                ; preds = %land.lhs.true.745
  %338 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %338) #1
  %339 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %339) #1
  %arraydecay750 = getelementptr inbounds [2048 x i8], [2048 x i8]* %actual, i32 0, i32 0
  %340 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_finalrcpt751 = getelementptr inbounds %struct.address, %struct.address* %340, i32 0, i32 15
  %341 = load i8*, i8** %q_finalrcpt751, align 8, !tbaa !66
  %call752 = call i32 @strcmp(i8* %arraydecay750, i8* %341) #1
  store i32 %call752, i32* %tmp, !tbaa !5
  %342 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #1
  %343 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %343) #1
  %344 = load i32, i32* %tmp, !tbaa !5
  %cmp753 = icmp ne i32 %344, 0
  br i1 %cmp753, label %if.then.755, label %if.end.764

if.then.755:                                      ; preds = %land.lhs.true.749
  %arraydecay756 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %arraydecay757 = getelementptr inbounds [2048 x i8], [2048 x i8]* %actual, i32 0, i32 0
  %call758 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay756, i64 2048, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.126, i32 0, i32 0), i8* %arraydecay757)
  %arraydecay759 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %345 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call760 = call i32 @putline(i8* %arraydecay759, %struct.mailer_con_info* %345)
  %tobool761 = icmp ne i32 %call760, 0
  br i1 %tobool761, label %if.end.763, label %if.then.762

if.then.762:                                      ; preds = %if.then.755
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.763:                                       ; preds = %if.then.755
  br label %if.end.764

if.end.764:                                       ; preds = %if.end.763, %land.lhs.true.749, %land.lhs.true.745, %land.lhs.true.741, %if.end.736
  %arraydecay765 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %346 = load i8*, i8** %action, align 8, !tbaa !1
  %call766 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay765, i64 2048, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0), i8* %346)
  %arraydecay767 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %347 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call768 = call i32 @putline(i8* %arraydecay767, %struct.mailer_con_info* %347)
  %tobool769 = icmp ne i32 %call768, 0
  br i1 %tobool769, label %if.end.771, label %if.then.770

if.then.770:                                      ; preds = %if.end.764
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.771:                                       ; preds = %if.end.764
  %348 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_status = getelementptr inbounds %struct.address, %struct.address* %348, i32 0, i32 17
  %349 = load i8*, i8** %q_status, align 8, !tbaa !67
  %cmp772 = icmp ne i8* %349, null
  br i1 %cmp772, label %if.then.774, label %if.else.776

if.then.774:                                      ; preds = %if.end.771
  %350 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_status775 = getelementptr inbounds %struct.address, %struct.address* %350, i32 0, i32 17
  %351 = load i8*, i8** %q_status775, align 8, !tbaa !67
  store i8* %351, i8** %p, align 8, !tbaa !1
  br label %if.end.791

if.else.776:                                      ; preds = %if.end.771
  %352 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state777 = getelementptr inbounds %struct.address, %struct.address* %352, i32 0, i32 21
  %353 = load i16, i16* %q_state777, align 2, !tbaa !28
  %conv778 = sext i16 %353 to i32
  %cmp779 = icmp eq i32 %conv778, 2
  br i1 %cmp779, label %if.then.781, label %if.else.782

if.then.781:                                      ; preds = %if.else.776
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.790

if.else.782:                                      ; preds = %if.else.776
  %354 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state783 = getelementptr inbounds %struct.address, %struct.address* %354, i32 0, i32 21
  %355 = load i16, i16* %q_state783, align 2, !tbaa !28
  %conv784 = sext i16 %355 to i32
  %cmp785 = icmp eq i32 %conv784, 3
  br i1 %cmp785, label %if.then.787, label %if.else.788

if.then.787:                                      ; preds = %if.else.782
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.789

if.else.788:                                      ; preds = %if.else.782
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.789

if.end.789:                                       ; preds = %if.else.788, %if.then.787
  br label %if.end.790

if.end.790:                                       ; preds = %if.end.789, %if.then.781
  br label %if.end.791

if.end.791:                                       ; preds = %if.end.790, %if.then.774
  %arraydecay792 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %356 = load i8*, i8** %p, align 8, !tbaa !1
  %call793 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay792, i64 2048, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0), i8* %356)
  %arraydecay794 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %357 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call795 = call i32 @putline(i8* %arraydecay794, %struct.mailer_con_info* %357)
  %tobool796 = icmp ne i32 %call795, 0
  br i1 %tobool796, label %if.end.798, label %if.then.797

if.then.797:                                      ; preds = %if.end.791
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.798:                                       ; preds = %if.end.791
  %358 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_statmta = getelementptr inbounds %struct.address, %struct.address* %358, i32 0, i32 20
  %359 = load i8*, i8** %q_statmta, align 8, !tbaa !68
  %cmp799 = icmp ne i8* %359, null
  br i1 %cmp799, label %if.then.801, label %if.end.828

if.then.801:                                      ; preds = %if.end.798
  %360 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_mailer802 = getelementptr inbounds %struct.address, %struct.address* %360, i32 0, i32 4
  %361 = load %struct.mailer*, %struct.mailer** %q_mailer802, align 8, !tbaa !64
  %cmp803 = icmp eq %struct.mailer* %361, null
  br i1 %cmp803, label %if.then.810, label %lor.lhs.false.805

lor.lhs.false.805:                                ; preds = %if.then.801
  %362 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_mailer806 = getelementptr inbounds %struct.address, %struct.address* %362, i32 0, i32 4
  %363 = load %struct.mailer*, %struct.mailer** %q_mailer806, align 8, !tbaa !64
  %m_mtatype807 = getelementptr inbounds %struct.mailer, %struct.mailer* %363, i32 0, i32 2
  %364 = load i8*, i8** %m_mtatype807, align 8, !tbaa !57
  store i8* %364, i8** %p, align 8, !tbaa !1
  %cmp808 = icmp eq i8* %364, null
  br i1 %cmp808, label %if.then.810, label %if.end.811

if.then.810:                                      ; preds = %lor.lhs.false.805, %if.then.801
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.811

if.end.811:                                       ; preds = %if.then.810, %lor.lhs.false.805
  %arraydecay812 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %365 = load i8*, i8** %p, align 8, !tbaa !1
  %366 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_statmta813 = getelementptr inbounds %struct.address, %struct.address* %366, i32 0, i32 20
  %367 = load i8*, i8** %q_statmta813, align 8, !tbaa !68
  %call814 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay812, i64 2048, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.129, i32 0, i32 0), i8* %365, i8* %367)
  %arraydecay815 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call816 = call i64 @strlen(i8* %arraydecay815) #7
  %sub = sub i64 %call816, 1
  %arrayidx817 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 %sub
  store i8* %arrayidx817, i8** %p, align 8, !tbaa !1
  %368 = load i8*, i8** %p, align 8, !tbaa !1
  %369 = load i8, i8* %368, align 1, !tbaa !7
  %conv818 = sext i8 %369 to i32
  %cmp819 = icmp eq i32 %conv818, 46
  br i1 %cmp819, label %if.then.821, label %if.end.822

if.then.821:                                      ; preds = %if.end.811
  %370 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %370, align 1, !tbaa !7
  br label %if.end.822

if.end.822:                                       ; preds = %if.then.821, %if.end.811
  %arraydecay823 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %371 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call824 = call i32 @putline(i8* %arraydecay823, %struct.mailer_con_info* %371)
  %tobool825 = icmp ne i32 %call824, 0
  br i1 %tobool825, label %if.end.827, label %if.then.826

if.then.826:                                      ; preds = %if.end.822
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.827:                                       ; preds = %if.end.822
  br label %if.end.828

if.end.828:                                       ; preds = %if.end.827, %if.end.798
  %372 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_rstatus829 = getelementptr inbounds %struct.address, %struct.address* %372, i32 0, i32 18
  %373 = load i8*, i8** %q_rstatus829, align 8, !tbaa !55
  %cmp830 = icmp ne i8* %373, null
  br i1 %cmp830, label %if.then.832, label %if.end.850

if.then.832:                                      ; preds = %if.end.828
  %374 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_mailer833 = getelementptr inbounds %struct.address, %struct.address* %374, i32 0, i32 4
  %375 = load %struct.mailer*, %struct.mailer** %q_mailer833, align 8, !tbaa !64
  %cmp834 = icmp eq %struct.mailer* %375, null
  br i1 %cmp834, label %if.then.840, label %lor.lhs.false.836

lor.lhs.false.836:                                ; preds = %if.then.832
  %376 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_mailer837 = getelementptr inbounds %struct.address, %struct.address* %376, i32 0, i32 4
  %377 = load %struct.mailer*, %struct.mailer** %q_mailer837, align 8, !tbaa !64
  %m_diagtype = getelementptr inbounds %struct.mailer, %struct.mailer* %377, i32 0, i32 4
  %378 = load i8*, i8** %m_diagtype, align 8, !tbaa !69
  store i8* %378, i8** %p, align 8, !tbaa !1
  %cmp838 = icmp eq i8* %378, null
  br i1 %cmp838, label %if.then.840, label %if.end.841

if.then.840:                                      ; preds = %lor.lhs.false.836, %if.then.832
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.841

if.end.841:                                       ; preds = %if.then.840, %lor.lhs.false.836
  %arraydecay842 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %379 = load i8*, i8** %p, align 8, !tbaa !1
  %380 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_rstatus843 = getelementptr inbounds %struct.address, %struct.address* %380, i32 0, i32 18
  %381 = load i8*, i8** %q_rstatus843, align 8, !tbaa !55
  %call844 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay842, i64 2048, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.131, i32 0, i32 0), i8* %379, i8* %381)
  %arraydecay845 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %382 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call846 = call i32 @putline(i8* %arraydecay845, %struct.mailer_con_info* %382)
  %tobool847 = icmp ne i32 %call846, 0
  br i1 %tobool847, label %if.end.849, label %if.then.848

if.then.848:                                      ; preds = %if.end.841
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.849:                                       ; preds = %if.end.841
  br label %if.end.850

if.end.850:                                       ; preds = %if.end.849, %if.end.828
  %383 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_statdate = getelementptr inbounds %struct.address, %struct.address* %383, i32 0, i32 19
  %384 = load i64, i64* %q_statdate, align 8, !tbaa !70
  %cmp851 = icmp eq i64 %384, 0
  br i1 %cmp851, label %if.then.853, label %if.end.856

if.then.853:                                      ; preds = %if.end.850
  %call854 = call i64 @curtime()
  %385 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_statdate855 = getelementptr inbounds %struct.address, %struct.address* %385, i32 0, i32 19
  store i64 %call854, i64* %q_statdate855, align 8, !tbaa !70
  br label %if.end.856

if.end.856:                                       ; preds = %if.then.853, %if.end.850
  %arraydecay857 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %386 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_statdate858 = getelementptr inbounds %struct.address, %struct.address* %386, i32 0, i32 19
  %call859 = call i8* @ctime(i64* %q_statdate858) #1
  %call860 = call i8* @arpadate(i8* %call859)
  %call861 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay857, i64 2048, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.132, i32 0, i32 0), i8* %call860)
  %arraydecay862 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %387 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call863 = call i32 @putline(i8* %arraydecay862, %struct.mailer_con_info* %387)
  %tobool864 = icmp ne i32 %call863, 0
  br i1 %tobool864, label %if.end.866, label %if.then.865

if.then.865:                                      ; preds = %if.end.856
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.891

if.end.866:                                       ; preds = %if.end.856
  %388 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state867 = getelementptr inbounds %struct.address, %struct.address* %388, i32 0, i32 21
  %389 = load i16, i16* %q_state867, align 2, !tbaa !28
  %conv868 = sext i16 %389 to i32
  %cmp869 = icmp eq i32 %conv868, 3
  br i1 %cmp869, label %if.then.871, label %if.end.890

if.then.871:                                      ; preds = %if.end.866
  %390 = bitcast i64* %xdate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %390) #1
  %391 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent873 = getelementptr inbounds %struct.envelope, %struct.envelope* %391, i32 0, i32 21
  %392 = load %struct.envelope*, %struct.envelope** %e_parent873, align 8, !tbaa !21
  %e_ctime874 = getelementptr inbounds %struct.envelope, %struct.envelope* %392, i32 0, i32 2
  %393 = load i64, i64* %e_ctime874, align 8, !tbaa !60
  %394 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent875 = getelementptr inbounds %struct.envelope, %struct.envelope* %394, i32 0, i32 21
  %395 = load %struct.envelope*, %struct.envelope** %e_parent875, align 8, !tbaa !21
  %e_timeoutclass = getelementptr inbounds %struct.envelope, %struct.envelope* %395, i32 0, i32 18
  %396 = load i16, i16* %e_timeoutclass, align 2, !tbaa !71
  %idxprom = sext i16 %396 to i64
  %arrayidx876 = getelementptr inbounds [8 x i64], [8 x i64]* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 18), i32 0, i64 %idxprom
  %397 = load i64, i64* %arrayidx876, align 8, !tbaa !34
  %add877 = add nsw i64 %393, %397
  store i64 %add877, i64* %xdate, align 8, !tbaa !34
  %arraydecay878 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call879 = call i8* @ctime(i64* %xdate) #1
  %call880 = call i8* @arpadate(i8* %call879)
  %call881 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay878, i64 2048, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.133, i32 0, i32 0), i8* %call880)
  %arraydecay882 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %398 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call883 = call i32 @putline(i8* %arraydecay882, %struct.mailer_con_info* %398)
  %tobool884 = icmp ne i32 %call883, 0
  br i1 %tobool884, label %if.end.886, label %if.then.885

if.then.885:                                      ; preds = %if.then.871
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.887

if.end.886:                                       ; preds = %if.then.871
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.887

cleanup.887:                                      ; preds = %if.then.885, %if.end.886
  %399 = bitcast i64* %xdate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %399) #1
  %cleanup.dest.888 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.888, label %cleanup.891 [
    i32 0, label %cleanup.cont.889
  ]

cleanup.cont.889:                                 ; preds = %cleanup.887
  br label %if.end.890

if.end.890:                                       ; preds = %cleanup.cont.889, %if.end.866
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.891

cleanup.891:                                      ; preds = %if.then.865, %if.then.848, %if.then.826, %if.then.797, %if.then.770, %if.then.762, %if.then.734, %if.then.671, %if.then.654, %if.end.890, %cleanup.887, %if.else.642, %if.then.592, %if.then.585
  %400 = bitcast i8** %action to i8*
  call void @llvm.lifetime.end(i64 8, i8* %400) #1
  %cleanup.dest.892 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.892, label %cleanup.1052 [
    i32 0, label %cleanup.cont.893
    i32 21, label %for.inc.894
    i32 2, label %writeerr
  ]

cleanup.cont.893:                                 ; preds = %cleanup.891
  br label %for.inc.894

for.inc.894:                                      ; preds = %cleanup.cont.893, %cleanup.891
  %401 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next895 = getelementptr inbounds %struct.address, %struct.address* %401, i32 0, i32 10
  %402 = load %struct.address*, %struct.address** %q_next895, align 8, !tbaa !29
  store %struct.address* %402, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.567

for.end.896:                                      ; preds = %for.cond.567
  br label %if.end.897

if.end.897:                                       ; preds = %for.end.896, %if.end.467
  %403 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call898 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %403)
  %tobool899 = icmp ne i32 %call898, 0
  br i1 %tobool899, label %if.end.901, label %if.then.900

if.then.900:                                      ; preds = %if.end.897
  br label %writeerr

if.end.901:                                       ; preds = %if.end.897
  %404 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent902 = getelementptr inbounds %struct.envelope, %struct.envelope* %404, i32 0, i32 21
  %405 = load %struct.envelope*, %struct.envelope** %e_parent902, align 8, !tbaa !21
  %e_flags903 = getelementptr inbounds %struct.envelope, %struct.envelope* %405, i32 0, i32 11
  %406 = load i64, i64* %e_flags903, align 8, !tbaa !20
  %and904 = and i64 %406, 2097152
  %cmp905 = icmp ne i64 %and904, 0
  br i1 %cmp905, label %if.then.907, label %if.else.1012

if.then.907:                                      ; preds = %if.end.901
  %407 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent908 = getelementptr inbounds %struct.envelope, %struct.envelope* %407, i32 0, i32 21
  %408 = load %struct.envelope*, %struct.envelope** %e_parent908, align 8, !tbaa !21
  %e_flags909 = getelementptr inbounds %struct.envelope, %struct.envelope* %408, i32 0, i32 11
  %409 = load i64, i64* %e_flags909, align 8, !tbaa !20
  %and910 = and i64 %409, 4
  %cmp911 = icmp ne i64 %and910, 0
  br i1 %cmp911, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then.907
  %410 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags913 = getelementptr inbounds %struct.envelope, %struct.envelope* %410, i32 0, i32 11
  %411 = load i64, i64* %e_flags913, align 8, !tbaa !20
  %and914 = and i64 %411, 4
  %cmp915 = icmp ne i64 %and914, 0
  %lnot = xor i1 %cmp915, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.907
  %412 = phi i1 [ false, %if.then.907 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %412 to i32
  store i32 %land.ext, i32* %sendbody, align 4, !tbaa !5
  %413 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary917 = getelementptr inbounds %struct.envelope, %struct.envelope* %413, i32 0, i32 38
  %414 = load i8*, i8** %e_msgboundary917, align 8, !tbaa !53
  %cmp918 = icmp eq i8* %414, null
  br i1 %cmp918, label %if.then.920, label %if.else.926

if.then.920:                                      ; preds = %land.end
  %415 = load i32, i32* %sendbody, align 4, !tbaa !5
  %tobool921 = icmp ne i32 %415, 0
  %cond = select i1 %tobool921, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.135, i32 0, i32 0)
  %416 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call922 = call i32 @putline(i8* %cond, %struct.mailer_con_info* %416)
  %tobool923 = icmp ne i32 %call922, 0
  br i1 %tobool923, label %if.end.925, label %if.then.924

if.then.924:                                      ; preds = %if.then.920
  br label %writeerr

if.end.925:                                       ; preds = %if.then.920
  br label %if.end.976

if.else.926:                                      ; preds = %land.end
  %arraydecay927 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %417 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary928 = getelementptr inbounds %struct.envelope, %struct.envelope* %417, i32 0, i32 38
  %418 = load i8*, i8** %e_msgboundary928, align 8, !tbaa !53
  %call929 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay927, i64 2048, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i8* %418)
  %arraydecay930 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %419 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call931 = call i32 @putline(i8* %arraydecay930, %struct.mailer_con_info* %419)
  %tobool932 = icmp ne i32 %call931, 0
  br i1 %tobool932, label %if.end.934, label %if.then.933

if.then.933:                                      ; preds = %if.else.926
  br label %writeerr

if.end.934:                                       ; preds = %if.else.926
  %arraydecay935 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %420 = load i32, i32* %sendbody, align 4, !tbaa !5
  %tobool936 = icmp ne i32 %420, 0
  %cond937 = select i1 %tobool936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.138, i32 0, i32 0)
  %call938 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay935, i64 2048, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.136, i32 0, i32 0), i8* %cond937)
  %arraydecay939 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %421 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call940 = call i32 @putline(i8* %arraydecay939, %struct.mailer_con_info* %421)
  %tobool941 = icmp ne i32 %call940, 0
  br i1 %tobool941, label %if.end.943, label %if.then.942

if.then.942:                                      ; preds = %if.end.934
  br label %writeerr

if.end.943:                                       ; preds = %if.end.934
  %422 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent944 = getelementptr inbounds %struct.envelope, %struct.envelope* %422, i32 0, i32 21
  %423 = load %struct.envelope*, %struct.envelope** %e_parent944, align 8, !tbaa !21
  %e_header945 = getelementptr inbounds %struct.envelope, %struct.envelope* %423, i32 0, i32 0
  %424 = load %struct.header*, %struct.header** %e_header945, align 8, !tbaa !41
  %call946 = call i8* @hvalue(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i32 0, i32 0), %struct.header* %424)
  store i8* %call946, i8** %p, align 8, !tbaa !1
  %425 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp947 = icmp ne i8* %425, null
  br i1 %cmp947, label %land.lhs.true.949, label %if.end.954

land.lhs.true.949:                                ; preds = %if.end.943
  %426 = load i8*, i8** %p, align 8, !tbaa !1
  %call950 = call i32 @sm_strcasecmp(i8* %426, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0))
  %cmp951 = icmp ne i32 %call950, 0
  br i1 %cmp951, label %if.then.953, label %if.end.954

if.then.953:                                      ; preds = %land.lhs.true.949
  store i8* null, i8** %p, align 8, !tbaa !1
  br label %if.end.954

if.end.954:                                       ; preds = %if.then.953, %land.lhs.true.949, %if.end.943
  %427 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp955 = icmp eq i8* %427, null
  br i1 %cmp955, label %land.lhs.true.957, label %if.end.964

land.lhs.true.957:                                ; preds = %if.end.954
  %428 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent958 = getelementptr inbounds %struct.envelope, %struct.envelope* %428, i32 0, i32 21
  %429 = load %struct.envelope*, %struct.envelope** %e_parent958, align 8, !tbaa !21
  %e_flags959 = getelementptr inbounds %struct.envelope, %struct.envelope* %429, i32 0, i32 11
  %430 = load i64, i64* %e_flags959, align 8, !tbaa !20
  %and960 = and i64 %430, 131072
  %cmp961 = icmp ne i64 %and960, 0
  br i1 %cmp961, label %if.then.963, label %if.end.964

if.then.963:                                      ; preds = %land.lhs.true.957
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.964

if.end.964:                                       ; preds = %if.then.963, %land.lhs.true.957, %if.end.954
  %431 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp965 = icmp ne i8* %431, null
  br i1 %cmp965, label %if.then.967, label %if.end.975

if.then.967:                                      ; preds = %if.end.964
  %arraydecay968 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %432 = load i8*, i8** %p, align 8, !tbaa !1
  %call969 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay968, i64 2048, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.139, i32 0, i32 0), i8* %432)
  %arraydecay970 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %433 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call971 = call i32 @putline(i8* %arraydecay970, %struct.mailer_con_info* %433)
  %tobool972 = icmp ne i32 %call971, 0
  br i1 %tobool972, label %if.end.974, label %if.then.973

if.then.973:                                      ; preds = %if.then.967
  br label %writeerr

if.end.974:                                       ; preds = %if.then.967
  br label %if.end.975

if.end.975:                                       ; preds = %if.end.974, %if.end.964
  br label %if.end.976

if.end.976:                                       ; preds = %if.end.975, %if.end.925
  %434 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call977 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %434)
  %tobool978 = icmp ne i32 %call977, 0
  br i1 %tobool978, label %if.end.980, label %if.then.979

if.then.979:                                      ; preds = %if.end.976
  br label %writeerr

if.end.980:                                       ; preds = %if.end.976
  %call981 = call i32* @__errno_location() #6
  %435 = load i32, i32* %call981, align 4, !tbaa !5
  store i32 %435, i32* %save_errno, align 4, !tbaa !5
  %436 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %437 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent982 = getelementptr inbounds %struct.envelope, %struct.envelope* %437, i32 0, i32 21
  %438 = load %struct.envelope*, %struct.envelope** %e_parent982, align 8, !tbaa !21
  %e_header983 = getelementptr inbounds %struct.envelope, %struct.envelope* %438, i32 0, i32 0
  %439 = load %struct.header*, %struct.header** %e_header983, align 8, !tbaa !41
  %440 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent984 = getelementptr inbounds %struct.envelope, %struct.envelope* %440, i32 0, i32 21
  %441 = load %struct.envelope*, %struct.envelope** %e_parent984, align 8, !tbaa !21
  %call985 = call i32 @putheader(%struct.mailer_con_info* %436, %struct.header* %439, %struct.envelope* %441, i32 0)
  %tobool986 = icmp ne i32 %call985, 0
  br i1 %tobool986, label %if.end.988, label %if.then.987

if.then.987:                                      ; preds = %if.end.980
  br label %writeerr

if.end.988:                                       ; preds = %if.end.980
  %442 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call989 = call i32* @__errno_location() #6
  store i32 %442, i32* %call989, align 4, !tbaa !5
  %443 = load i32, i32* %sendbody, align 4, !tbaa !5
  %tobool990 = icmp ne i32 %443, 0
  br i1 %tobool990, label %if.then.991, label %if.else.998

if.then.991:                                      ; preds = %if.end.988
  %444 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %445 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent992 = getelementptr inbounds %struct.envelope, %struct.envelope* %445, i32 0, i32 21
  %446 = load %struct.envelope*, %struct.envelope** %e_parent992, align 8, !tbaa !21
  %447 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary993 = getelementptr inbounds %struct.envelope, %struct.envelope* %447, i32 0, i32 38
  %448 = load i8*, i8** %e_msgboundary993, align 8, !tbaa !53
  %call994 = call i32 @putbody(%struct.mailer_con_info* %444, %struct.envelope* %446, i8* %448)
  %tobool995 = icmp ne i32 %call994, 0
  br i1 %tobool995, label %if.end.997, label %if.then.996

if.then.996:                                      ; preds = %if.then.991
  br label %writeerr

if.end.997:                                       ; preds = %if.then.991
  br label %if.end.1011

if.else.998:                                      ; preds = %if.end.988
  %449 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary999 = getelementptr inbounds %struct.envelope, %struct.envelope* %449, i32 0, i32 38
  %450 = load i8*, i8** %e_msgboundary999, align 8, !tbaa !53
  %cmp1000 = icmp eq i8* %450, null
  br i1 %cmp1000, label %if.then.1002, label %if.end.1010

if.then.1002:                                     ; preds = %if.else.998
  %451 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1003 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %451)
  %tobool1004 = icmp ne i32 %call1003, 0
  br i1 %tobool1004, label %lor.lhs.false.1005, label %if.then.1008

lor.lhs.false.1005:                               ; preds = %if.then.1002
  %452 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1006 = call i32 @putline(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.140, i32 0, i32 0), %struct.mailer_con_info* %452)
  %tobool1007 = icmp ne i32 %call1006, 0
  br i1 %tobool1007, label %if.end.1009, label %if.then.1008

if.then.1008:                                     ; preds = %lor.lhs.false.1005, %if.then.1002
  br label %writeerr

if.end.1009:                                      ; preds = %lor.lhs.false.1005
  br label %if.end.1010

if.end.1010:                                      ; preds = %if.end.1009, %if.else.998
  br label %if.end.1011

if.end.1011:                                      ; preds = %if.end.1010, %if.end.997
  br label %if.end.1022

if.else.1012:                                     ; preds = %if.end.901
  %453 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary1013 = getelementptr inbounds %struct.envelope, %struct.envelope* %453, i32 0, i32 38
  %454 = load i8*, i8** %e_msgboundary1013, align 8, !tbaa !53
  %cmp1014 = icmp eq i8* %454, null
  br i1 %cmp1014, label %if.then.1016, label %if.end.1021

if.then.1016:                                     ; preds = %if.else.1012
  %455 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1017 = call i32 @putline(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.141, i32 0, i32 0), %struct.mailer_con_info* %455)
  %tobool1018 = icmp ne i32 %call1017, 0
  br i1 %tobool1018, label %if.end.1020, label %if.then.1019

if.then.1019:                                     ; preds = %if.then.1016
  br label %writeerr

if.end.1020:                                      ; preds = %if.then.1016
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.end.1020, %if.else.1012
  br label %if.end.1022

if.end.1022:                                      ; preds = %if.end.1021, %if.end.1011
  %456 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary1023 = getelementptr inbounds %struct.envelope, %struct.envelope* %456, i32 0, i32 38
  %457 = load i8*, i8** %e_msgboundary1023, align 8, !tbaa !53
  %cmp1024 = icmp ne i8* %457, null
  br i1 %cmp1024, label %if.then.1026, label %if.end.1038

if.then.1026:                                     ; preds = %if.end.1022
  %arraydecay1027 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %458 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgboundary1028 = getelementptr inbounds %struct.envelope, %struct.envelope* %458, i32 0, i32 38
  %459 = load i8*, i8** %e_msgboundary1028, align 8, !tbaa !53
  %call1029 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay1027, i64 2048, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i8* %459, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0))
  %460 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1030 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %460)
  %tobool1031 = icmp ne i32 %call1030, 0
  br i1 %tobool1031, label %lor.lhs.false.1032, label %if.then.1036

lor.lhs.false.1032:                               ; preds = %if.then.1026
  %arraydecay1033 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %461 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1034 = call i32 @putline(i8* %arraydecay1033, %struct.mailer_con_info* %461)
  %tobool1035 = icmp ne i32 %call1034, 0
  br i1 %tobool1035, label %if.end.1037, label %if.then.1036

if.then.1036:                                     ; preds = %lor.lhs.false.1032, %if.then.1026
  br label %writeerr

if.end.1037:                                      ; preds = %lor.lhs.false.1032
  br label %if.end.1038

if.end.1038:                                      ; preds = %if.end.1037, %if.end.1022
  %462 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1039 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.mailer_con_info* %462)
  %tobool1040 = icmp ne i32 %call1039, 0
  br i1 %tobool1040, label %lor.lhs.false.1041, label %if.then.1045

lor.lhs.false.1041:                               ; preds = %if.end.1038
  %463 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %463, i32 0, i32 8
  %464 = load %struct.sm_file*, %struct.sm_file** %mci_out, align 8, !tbaa !36
  %call1042 = call i32 @sm_io_flush(%struct.sm_file* %464, i32 -2)
  %cmp1043 = icmp eq i32 %call1042, -1
  br i1 %cmp1043, label %if.then.1045, label %if.end.1046

if.then.1045:                                     ; preds = %lor.lhs.false.1041, %if.end.1038
  br label %writeerr

if.end.1046:                                      ; preds = %lor.lhs.false.1041
  %call1047 = call i32* @__errno_location() #6
  %465 = load i32, i32* %call1047, align 4, !tbaa !5
  %cmp1048 = icmp ne i32 %465, 0
  br i1 %cmp1048, label %if.then.1050, label %if.end.1051

if.then.1050:                                     ; preds = %if.end.1046
  br label %writeerr

writeerr:                                         ; preds = %if.then.1050, %cleanup.891, %cleanup.561, %cleanup.464, %cleanup.156, %if.then.1045, %if.then.1036, %if.then.1019, %if.then.1008, %if.then.996, %if.then.987, %if.then.979, %if.then.973, %if.then.942, %if.then.933, %if.then.924, %if.then.900, %if.then.543, %if.then.531, %if.then.510, %if.then.502, %if.then.488, %if.then.430, %if.then.421, %if.then.411, %if.then.397, %if.then.387, %if.then.304, %if.then.294, %if.then.280, %if.then.270, %if.then.237, %if.then.227, %if.then.213, %if.then.200, %if.then.191, %if.then.167, %if.then.104, %if.then.99, %if.then.84, %if.then.77, %if.then.66, %if.then.27, %if.then.9, %if.then.1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.142, i32 0, i32 0))
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1052

if.end.1051:                                      ; preds = %if.end.1046
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1052

cleanup.1052:                                     ; preds = %if.end.1051, %writeerr, %cleanup.891, %cleanup.561, %cleanup.464, %cleanup.156, %if.end.10
  %466 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %466) #1
  %467 = bitcast [2048 x i8]* %actual to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %467) #1
  %468 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %468) #1
  %469 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %469) #1
  %470 = bitcast %struct.sm_file** %xfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %470) #1
  %471 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %472 = bitcast i32* %pm_notify to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
  %473 = bitcast i32* %sendbody to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #1
  %474 = bitcast i32* %printheader to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %475 = load i32, i32* %retval
  ret i32 %475
}

declare i32 @setnewqueue(%struct.envelope*) #2

declare void @initsys(%struct.envelope*) #2

; Function Attrs: nounwind readnone
declare %struct.__res_state* @__res_state() #3

declare void @addheader(i8*, i8*, i32, %struct.envelope*, i32) #2

declare i8* @shortenstring(i8*, i64) #2

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

declare i64 @curtime() #2

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #2

declare i8* @hvalue(i8*, %struct.header*) #2

declare i32 @sm_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #5

declare void @eatheader(%struct.envelope*, i32, i32) #2

declare void @markstats(%struct.envelope*, %struct.address*, i32) #2

declare void @sendall(%struct.envelope*, i32) #2

declare i32 @dropenvelope(%struct.envelope*, i32, i32) #2

declare void @sm_rpool_free(%struct.SM_RPOOL_T*) #2

; Function Attrs: nounwind uwtable
define i8* @smtptodsn(i32 %smtpstat) #0 {
entry:
  %retval = alloca i8*, align 8
  %smtpstat.addr = alloca i32, align 4
  store i32 %smtpstat, i32* %smtpstat.addr, align 4, !tbaa !5
  %0 = load i32, i32* %smtpstat.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %smtpstat.addr, align 4, !tbaa !5
  switch i32 %1, label %sw.epilog [
    i32 450, label %sw.bb
    i32 451, label %sw.bb.1
    i32 452, label %sw.bb.2
    i32 500, label %sw.bb.3
    i32 501, label %sw.bb.4
    i32 502, label %sw.bb.5
    i32 503, label %sw.bb.6
    i32 504, label %sw.bb.7
    i32 550, label %sw.bb.8
    i32 551, label %sw.bb.9
    i32 552, label %sw.bb.10
    i32 553, label %sw.bb.11
    i32 554, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.10:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.11:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.12:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end
  %2 = load i32, i32* %smtpstat.addr, align 4, !tbaa !5
  %div = sdiv i32 %2, 100
  %cmp13 = icmp eq i32 %div, 2
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.epilog
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8** %retval
  br label %return

if.end.15:                                        ; preds = %sw.epilog
  %3 = load i32, i32* %smtpstat.addr, align 4, !tbaa !5
  %div16 = sdiv i32 %3, 100
  %cmp17 = icmp eq i32 %div16, 4
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.14, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i8* @xtextify(i8* %t, i8* %taboo) #0 {
entry:
  %retval = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  %taboo.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %l = alloca i32, align 4
  %nbogus = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c47 = alloca i32, align 4
  store i8* %t, i8** %t.addr, align 8, !tbaa !1
  store i8* %taboo, i8** %taboo.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %nbogus to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %taboo.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i8** %taboo.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %l, align 4, !tbaa !5
  store i32 0, i32* %nbogus, align 4, !tbaa !5
  %4 = load i8*, i8** %t.addr, align 8, !tbaa !1
  store i8* %4, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %conv = sext i8 %6 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !7
  %conv3 = sext i8 %9 to i32
  %and = and i32 %conv3, 255
  store i32 %and, i32* %c, align 4, !tbaa !5
  %10 = load i32, i32* %c, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %10, 33
  br i1 %cmp4, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i32, i32* %c, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %11, 126
  br i1 %cmp6, label %if.then.20, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* %c, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %12, 43
  br i1 %cmp9, label %if.then.20, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %13 = load i32, i32* %c, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %13, 92
  br i1 %cmp12, label %if.then.20, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %14 = load i32, i32* %c, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %14, 40
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %15 = load i8*, i8** %taboo.addr, align 8, !tbaa !1
  %16 = load i32, i32* %c, align 4, !tbaa !5
  %call = call i8* @strchr(i8* %15, i32 %16) #1
  %cmp18 = icmp ne i8* %call, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false, %for.body
  %17 = load i32, i32* %nbogus, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %nbogus, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %lor.lhs.false.17
  %18 = load i32, i32* %l, align 4, !tbaa !5
  %inc22 = add nsw i32 %18, 1
  store i32 %inc22, i32* %l, align 4, !tbaa !5
  %19 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %nbogus, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %21, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %for.end
  %22 = load i32, i32* %nbogus, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %22, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %23 = load i8*, i8** %t.addr, align 8, !tbaa !1
  store i8* %23, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.26
  %24 = load i32, i32* %nbogus, align 4, !tbaa !5
  %mul = mul nsw i32 %24, 2
  %add = add nsw i32 %mul, 1
  %25 = load i32, i32* %l, align 4, !tbaa !5
  %add31 = add nsw i32 %25, %add
  store i32 %add31, i32* %l, align 4, !tbaa !5
  %26 = load i32, i32* %l, align 4, !tbaa !5
  %27 = load i32, i32* @xtextify.bplen, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %26, %27
  br i1 %cmp32, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %if.end.30
  %28 = load i8*, i8** @xtextify.bp, align 8, !tbaa !1
  %cmp35 = icmp ne i8* %28, null
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.34
  %29 = load i8*, i8** @xtextify.bp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 1570)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.34
  %30 = load i32, i32* %l, align 4, !tbaa !5
  %conv39 = sext i32 %30 to i64
  %call40 = call i8* @sm_malloc_tagged_x(i64 %conv39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 1571, i32 0)
  store i8* %call40, i8** @xtextify.bp, align 8, !tbaa !1
  %31 = load i32, i32* %l, align 4, !tbaa !5
  store i32 %31, i32* @xtextify.bplen, align 4, !tbaa !5
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.38, %if.end.30
  %32 = load i8*, i8** @xtextify.bp, align 8, !tbaa !1
  store i8* %32, i8** %p, align 8, !tbaa !1
  br label %for.cond.42

for.cond.42:                                      ; preds = %if.end.78, %if.end.41
  %33 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !7
  %conv43 = sext i8 %34 to i32
  %cmp44 = icmp ne i32 %conv43, 0
  br i1 %cmp44, label %for.body.46, label %for.end.79

for.body.46:                                      ; preds = %for.cond.42
  %35 = bitcast i32* %c47 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr48, i8** %t.addr, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !7
  %conv49 = sext i8 %37 to i32
  %and50 = and i32 %conv49, 255
  store i32 %and50, i32* %c47, align 4, !tbaa !5
  %38 = load i32, i32* %c47, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %38, 33
  br i1 %cmp51, label %if.then.69, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %for.body.46
  %39 = load i32, i32* %c47, align 4, !tbaa !5
  %cmp54 = icmp sgt i32 %39, 126
  br i1 %cmp54, label %if.then.69, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.53
  %40 = load i32, i32* %c47, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %40, 43
  br i1 %cmp57, label %if.then.69, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.56
  %41 = load i32, i32* %c47, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %41, 92
  br i1 %cmp60, label %if.then.69, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.59
  %42 = load i32, i32* %c47, align 4, !tbaa !5
  %cmp63 = icmp eq i32 %42, 40
  br i1 %cmp63, label %if.then.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.62
  %43 = load i8*, i8** %taboo.addr, align 8, !tbaa !1
  %44 = load i32, i32* %c47, align 4, !tbaa !5
  %call66 = call i8* @strchr(i8* %43, i32 %44) #1
  %cmp67 = icmp ne i8* %call66, null
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.62, %lor.lhs.false.59, %lor.lhs.false.56, %lor.lhs.false.53, %for.body.46
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr70, i8** %p, align 8, !tbaa !1
  store i8 43, i8* %45, align 1, !tbaa !7
  %46 = load i32, i32* %c47, align 4, !tbaa !5
  %shr = ashr i32 %46, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @.str.74, i32 0, i64 %idxprom
  %47 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr71, i8** %p, align 8, !tbaa !1
  store i8 %47, i8* %48, align 1, !tbaa !7
  %49 = load i32, i32* %c47, align 4, !tbaa !5
  %and72 = and i32 %49, 15
  %idxprom73 = sext i32 %and72 to i64
  %arrayidx74 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.74, i32 0, i64 %idxprom73
  %50 = load i8, i8* %arrayidx74, align 1, !tbaa !7
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr75, i8** %p, align 8, !tbaa !1
  store i8 %50, i8* %51, align 1, !tbaa !7
  br label %if.end.78

if.else:                                          ; preds = %lor.lhs.false.65
  %52 = load i32, i32* %c47, align 4, !tbaa !5
  %conv76 = trunc i32 %52 to i8
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr77 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr77, i8** %p, align 8, !tbaa !1
  store i8 %conv76, i8* %53, align 1, !tbaa !7
  br label %if.end.78

if.end.78:                                        ; preds = %if.else, %if.then.69
  %54 = bitcast i32* %c47 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  br label %for.cond.42

for.end.79:                                       ; preds = %for.cond.42
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %55, align 1, !tbaa !7
  %56 = load i8*, i8** @xtextify.bp, align 8, !tbaa !1
  store i8* %56, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.79, %if.then.29
  %57 = bitcast i32* %nbogus to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i8*, i8** %retval
  ret i8* %60
}

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #5

declare void @sm_free_tagged(i8*, i8*, i32) #2

declare i8* @sm_malloc_tagged_x(i64, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i8* @xuntextify(i8* %t) #0 {
entry:
  %retval = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c = alloca i32, align 4
  store i8* %t, i8** %t.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %call = call i8* @strchr(i8* %2, i32 43) #1
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %t.addr, align 8, !tbaa !1
  store i8* %3, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %call1 = call i64 @strlen(i8* %4) #7
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %l, align 4, !tbaa !5
  %5 = load i32, i32* %l, align 4, !tbaa !5
  %6 = load i32, i32* @xuntextify.bplen, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %5, %6
  br i1 %cmp2, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %7 = load i8*, i8** @xuntextify.bp, align 8, !tbaa !1
  %cmp5 = icmp ne i8* %7, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  %8 = load i8*, i8** @xuntextify.bp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 1623)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.4
  %9 = load i32, i32* %l, align 4, !tbaa !5
  %call9 = call i8* @xalloc_tagged(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 1624)
  store i8* %call9, i8** @xuntextify.bp, align 8, !tbaa !1
  %10 = load i32, i32* %l, align 4, !tbaa !5
  store i32 %10, i32* @xuntextify.bplen, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.8, %if.end
  %11 = load i8*, i8** @xuntextify.bp, align 8, !tbaa !1
  store i8* %11, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %12 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !7
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %conv14 = sext i8 %16 to i32
  %and = and i32 %conv14, 255
  store i32 %and, i32* %c, align 4, !tbaa !5
  %17 = load i32, i32* %c, align 4, !tbaa !5
  %cmp15 = icmp ne i32 %17, 43
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.body
  %18 = load i32, i32* %c, align 4, !tbaa !5
  %conv18 = trunc i32 %18 to i8
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 %conv18, i8* %19, align 1, !tbaa !7
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %for.body
  %20 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr20, i8** %t.addr, align 8, !tbaa !1
  %21 = load i8, i8* %incdec.ptr20, align 1, !tbaa !7
  %conv21 = sext i8 %21 to i32
  %and22 = and i32 %conv21, 255
  store i32 %and22, i32* %c, align 4, !tbaa !5
  %22 = load i32, i32* %c, align 4, !tbaa !5
  %and23 = and i32 %22, -128
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %lor.lhs.false, label %if.then.29

lor.lhs.false:                                    ; preds = %if.end.19
  %23 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %call26 = call i16** @__ctype_b_loc() #6
  %24 = load i16*, i16** %call26, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %24, i64 %idxprom
  %25 = load i16, i16* %arrayidx, align 2, !tbaa !72
  %conv27 = zext i16 %25 to i32
  %and28 = and i32 %conv27, 4096
  %tobool = icmp ne i32 %and28, 0
  br i1 %tobool, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.19
  %26 = load i32, i32* %c, align 4, !tbaa !5
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i32 %26)
  %27 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %incdec.ptr30 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr30, i8** %t.addr, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %lor.lhs.false
  %28 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom32 = sext i32 %28 to i64
  %call33 = call i16** @__ctype_b_loc() #6
  %29 = load i16*, i16** %call33, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %29, i64 %idxprom32
  %30 = load i16, i16* %arrayidx34, align 2, !tbaa !72
  %conv35 = zext i16 %30 to i32
  %and36 = and i32 %conv35, 2048
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.31
  %31 = load i32, i32* %c, align 4, !tbaa !5
  %sub = sub nsw i32 %31, 48
  store i32 %sub, i32* %c, align 4, !tbaa !5
  br label %if.end.50

if.else:                                          ; preds = %if.end.31
  %32 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom39 = sext i32 %32 to i64
  %call40 = call i16** @__ctype_b_loc() #6
  %33 = load i16*, i16** %call40, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %33, i64 %idxprom39
  %34 = load i16, i16* %arrayidx41, align 2, !tbaa !72
  %conv42 = zext i16 %34 to i32
  %and43 = and i32 %conv42, 256
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.else
  %35 = load i32, i32* %c, align 4, !tbaa !5
  %sub46 = sub nsw i32 %35, 55
  store i32 %sub46, i32* %c, align 4, !tbaa !5
  br label %if.end.49

if.else.47:                                       ; preds = %if.else
  %36 = load i32, i32* %c, align 4, !tbaa !5
  %sub48 = sub nsw i32 %36, 87
  store i32 %sub48, i32* %c, align 4, !tbaa !5
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %if.then.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.38
  %37 = load i32, i32* %c, align 4, !tbaa !5
  %shl = shl i32 %37, 4
  %conv51 = trunc i32 %shl to i8
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 %conv51, i8* %38, align 1, !tbaa !7
  %39 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr52, i8** %t.addr, align 8, !tbaa !1
  %40 = load i8, i8* %incdec.ptr52, align 1, !tbaa !7
  %conv53 = sext i8 %40 to i32
  %and54 = and i32 %conv53, 255
  store i32 %and54, i32* %c, align 4, !tbaa !5
  %41 = load i32, i32* %c, align 4, !tbaa !5
  %and55 = and i32 %41, -128
  %cmp56 = icmp eq i32 %and55, 0
  br i1 %cmp56, label %lor.lhs.false.58, label %if.then.65

lor.lhs.false.58:                                 ; preds = %if.end.50
  %42 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom59 = sext i32 %42 to i64
  %call60 = call i16** @__ctype_b_loc() #6
  %43 = load i16*, i16** %call60, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i16, i16* %43, i64 %idxprom59
  %44 = load i16, i16* %arrayidx61, align 2, !tbaa !72
  %conv62 = zext i16 %44 to i32
  %and63 = and i32 %conv62, 4096
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.end.68, label %if.then.65

if.then.65:                                       ; preds = %lor.lhs.false.58, %if.end.50
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !7
  %conv66 = sext i8 %46 to i32
  %shr = ashr i32 %conv66, 4
  %47 = load i32, i32* %c, align 4, !tbaa !5
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0), i32 %shr, i32 %47)
  %48 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %incdec.ptr67, i8** %t.addr, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %lor.lhs.false.58
  %49 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom69 = sext i32 %49 to i64
  %call70 = call i16** @__ctype_b_loc() #6
  %50 = load i16*, i16** %call70, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i16, i16* %50, i64 %idxprom69
  %51 = load i16, i16* %arrayidx71, align 2, !tbaa !72
  %conv72 = zext i16 %51 to i32
  %and73 = and i32 %conv72, 2048
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %if.end.68
  %52 = load i32, i32* %c, align 4, !tbaa !5
  %sub76 = sub nsw i32 %52, 48
  store i32 %sub76, i32* %c, align 4, !tbaa !5
  br label %if.end.89

if.else.77:                                       ; preds = %if.end.68
  %53 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom78 = sext i32 %53 to i64
  %call79 = call i16** @__ctype_b_loc() #6
  %54 = load i16*, i16** %call79, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i16, i16* %54, i64 %idxprom78
  %55 = load i16, i16* %arrayidx80, align 2, !tbaa !72
  %conv81 = zext i16 %55 to i32
  %and82 = and i32 %conv81, 256
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %if.else.77
  %56 = load i32, i32* %c, align 4, !tbaa !5
  %sub85 = sub nsw i32 %56, 55
  store i32 %sub85, i32* %c, align 4, !tbaa !5
  br label %if.end.88

if.else.86:                                       ; preds = %if.else.77
  %57 = load i32, i32* %c, align 4, !tbaa !5
  %sub87 = sub nsw i32 %57, 87
  store i32 %sub87, i32* %c, align 4, !tbaa !5
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.84
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.75
  %58 = load i32, i32* %c, align 4, !tbaa !5
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr90 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr90, i8** %p, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !7
  %conv91 = sext i8 %60 to i32
  %or = or i32 %conv91, %58
  %conv92 = trunc i32 %or to i8
  store i8 %conv92, i8* %59, align 1, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.89, %if.then.65, %if.then.29, %if.then.17
  %61 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %62 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %incdec.ptr93 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr93, i8** %t.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %63, align 1, !tbaa !7
  %64 = load i8*, i8** @xuntextify.bp, align 8, !tbaa !1
  store i8* %64, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %for.end, %if.then
  %65 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = load i8*, i8** %retval
  ret i8* %67

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @xalloc_tagged(i32, i8*, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

declare void @usrerr(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @xtextok(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %entry
  %1 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !5
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %c, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %3, 43
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr4, i8** %s.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !7
  %conv5 = sext i8 %5 to i32
  store i32 %conv5, i32* %c, align 4, !tbaa !5
  %6 = load i32, i32* %c, align 4, !tbaa !5
  %and = and i32 %6, -128
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %call = call i16** @__ctype_b_loc() #6
  %8 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !72
  %conv8 = zext i16 %9 to i32
  %and9 = and i32 %conv8, 4096
  %tobool = icmp ne i32 %and9, 0
  br i1 %tobool, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr11, i8** %s.addr, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !7
  %conv12 = sext i8 %11 to i32
  store i32 %conv12, i32* %c, align 4, !tbaa !5
  %12 = load i32, i32* %c, align 4, !tbaa !5
  %and13 = and i32 %12, -128
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %lor.lhs.false.16, label %if.then.23

lor.lhs.false.16:                                 ; preds = %if.end
  %13 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom17 = sext i32 %13 to i64
  %call18 = call i16** @__ctype_b_loc() #6
  %14 = load i16*, i16** %call18, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %14, i64 %idxprom17
  %15 = load i16, i16* %arrayidx19, align 2, !tbaa !72
  %conv20 = zext i16 %15 to i32
  %and21 = and i32 %conv20, 4096
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.16, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false.16
  br label %if.end.35

if.else:                                          ; preds = %while.body
  %16 = load i32, i32* %c, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %16, 33
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.else
  %17 = load i32, i32* %c, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %17, 126
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.27
  %18 = load i32, i32* %c, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %18, 61
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.27, %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %lor.lhs.false.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.24
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.33, %if.then.23, %if.then.10
  %19 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @isatom(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !7
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end
  %4 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !7
  %conv3 = sext i8 %5 to i32
  store i32 %conv3, i32* %c, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %c, align 4, !tbaa !5
  %call = call i8* @strchr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), i32 %6) #1
  %cmp6 = icmp ne i8* %call, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %while.body
  %7 = load i32, i32* %c, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %7, 33
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end.9
  %8 = load i32, i32* %c, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %8, 126
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.12, %if.end.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %lor.lhs.false.12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.15, %if.then.8, %if.then
  %9 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #2

declare i8* @arpadate(i8*) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #5

declare i8* @translate_dollars(i8*, i8*, i32*) #2

declare i8* @exitstat(i8*) #2

declare i32 @putxline(i8*, i64, %struct.mailer_con_info*, i32) #2

declare i32 @putbody(%struct.mailer_con_info*, %struct.envelope*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare i32 @getmxrr(i8*, i8**, i16*, i32, i32*, i32, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !12, i64 292}
!9 = !{!"envelope", !2, i64 0, !10, i64 8, !10, i64 16, !2, i64 24, !11, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !10, i64 256, !2, i64 264, !10, i64 272, !6, i64 280, !12, i64 284, !12, i64 286, !12, i64 288, !12, i64 290, !12, i64 292, !12, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !10, i64 456, !6, i64 464, !10, i64 472, !10, i64 480, !13, i64 488, !2, i64 2576, !2, i64 2584, !14, i64 2592, !10, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!10 = !{!"long", !3, i64 0}
!11 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !10, i64 144, !2, i64 152, !12, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!12 = !{!"short", !3, i64 0}
!13 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!14 = !{!"sm_timers", !15, i64 0}
!15 = !{!"_timer", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!16 = !{!9, !2, i64 344}
!17 = !{!9, !2, i64 32}
!18 = !{!9, !2, i64 224}
!19 = !{!9, !2, i64 24}
!20 = !{!9, !10, i64 272}
!21 = !{!9, !2, i64 312}
!22 = !{!9, !2, i64 64}
!23 = !{!9, !2, i64 376}
!24 = !{!25, !10, i64 24}
!25 = !{!"sm_file", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !10, i64 24, !12, i64 32, !26, i64 40, !6, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !2, i64 152, !2, i64 160, !26, i64 168, !2, i64 184, !6, i64 192, !3, i64 196, !3, i64 199, !6, i64 200, !10, i64 208, !6, i64 216}
!26 = !{!"smbuf", !2, i64 0, !6, i64 8}
!27 = !{!9, !2, i64 248}
!28 = !{!11, !12, i64 160}
!29 = !{!11, !2, i64 72}
!30 = !{!9, !2, i64 392}
!31 = !{!9, !2, i64 88}
!32 = !{!9, !2, i64 40}
!33 = !{!9, !2, i64 336}
!34 = !{!10, !10, i64 0}
!35 = !{!9, !12, i64 284}
!36 = !{!37, !2, i64 40}
!37 = !{!"mailer_con_info", !10, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !6, i64 16, !10, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !10, i64 96, !2, i64 104, !2, i64 112, !10, i64 120, !6, i64 128, !2, i64 136, !2, i64 144, !6, i64 152, !2, i64 160, !13, i64 168}
!38 = !{!37, !2, i64 64}
!39 = !{!37, !10, i64 0}
!40 = !{!9, !2, i64 296}
!41 = !{!9, !2, i64 0}
!42 = !{!9, !2, i64 304}
!43 = !{!9, !2, i64 240}
!44 = !{!11, !2, i64 0}
!45 = !{!9, !10, i64 256}
!46 = !{!47, !6, i64 4}
!47 = !{!"__res_state", !6, i64 0, !6, i64 4, !10, i64 8, !6, i64 16, !3, i64 20, !12, i64 68, !3, i64 72, !3, i64 128, !10, i64 384, !6, i64 392, !6, i64 392, !6, i64 393, !6, i64 393, !3, i64 396, !2, i64 480, !2, i64 488, !6, i64 496, !6, i64 500, !6, i64 504, !3, i64 512}
!48 = !{!47, !6, i64 0}
!49 = !{!11, !10, i64 40}
!50 = !{!9, !6, i64 280}
!51 = !{!11, !2, i64 80}
!52 = !{!9, !2, i64 2640}
!53 = !{!9, !2, i64 424}
!54 = !{!9, !10, i64 72}
!55 = !{!11, !2, i64 136}
!56 = !{!9, !2, i64 440}
!57 = !{!58, !2, i64 16}
!58 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !12, i64 72, !12, i64 74, !2, i64 80, !12, i64 88, !12, i64 90, !12, i64 92, !12, i64 94, !2, i64 96, !10, i64 104, !6, i64 112, !6, i64 116, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !10, i64 152, !6, i64 160, !12, i64 164}
!59 = !{!9, !6, i64 2632}
!60 = !{!9, !10, i64 16}
!61 = !{!9, !10, i64 2624}
!62 = !{!11, !2, i64 120}
!63 = !{!11, !2, i64 8}
!64 = !{!11, !2, i64 32}
!65 = !{!58, !2, i64 24}
!66 = !{!11, !2, i64 112}
!67 = !{!11, !2, i64 128}
!68 = !{!11, !2, i64 152}
!69 = !{!58, !2, i64 32}
!70 = !{!11, !10, i64 144}
!71 = !{!9, !12, i64 294}
!72 = !{!12, !12, i64 0}
