; ModuleID = '23.recipient.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_exc_handler = type { %struct.sm_exc*, [1 x %struct.__jmp_buf_tag], %struct.sm_exc_handler*, i32 }
%struct.sm_exc = type { i8*, i64, %struct.sm_exc_type*, %union.sm_val* }
%struct.sm_exc_type = type { i8*, i8*, i8*, void (%struct.sm_exc*, %struct.sm_file*)*, i8* }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%union.sm_val = type { i64 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.mailer = type { i8*, i8*, i8*, i8*, i8*, [8 x i32], i16, i16, i8**, i16, i16, i16, i16, i8*, i64, i32, i32, i8*, i8*, i32, i32, i8*, i64, i32, i16 }
%struct.rewrite = type { i8**, i8**, %struct.rewrite*, i32 }
%struct.anon = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [3 x i64], [3 x i32] }
%struct.address = type { i8*, i8*, i8*, i8*, %struct.mailer*, i64, i32, i32, i8*, i8*, %struct.address*, %struct.address*, i8*, %struct.address*, %struct.address*, i8*, i8*, i8*, i8*, i64, i8*, i16, i8*, i32, i32, i8* }
%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.MACROS_T = type { %struct.SM_RPOOL_T*, [8 x i32], [256 x i8*] }
%struct.mailer_con_info = type { i64, i16, i16, i16, i16, i32, i64, %struct.sm_file*, %struct.sm_file*, i32, i8*, %struct.mailer*, i8*, i8*, i8*, i64, %struct.sm_file*, i8*, i64, i32, i8*, %struct.SM_RPOOL_T*, i32, %struct.address*, %struct.MACROS_T }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%struct.SM_RPOOL_T = type { i8*, void (i8*)**, i64, i64, i8*, i64, %struct.sm_poollink*, %struct.sm_resource*, i64, %struct.sm_rlist* }
%struct.sm_poollink = type { %struct.sm_poollink* }
%struct.sm_resource = type { void (i8*)*, i8* }
%struct.sm_rlist = type { [511 x %struct.sm_resource], %struct.sm_rlist* }
%struct.SM_MBDB_T = type { i32, i32, [256 x i8], [256 x i8], [4096 x i8], [4096 x i8] }
%struct.sm_event = type { i64, void (i32)*, i32, i32, %struct.sm_event* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"sendtolist: null list\00", align 1
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"sendto: %s\0A   ctladdr=\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"recipient.c\00", align 1
@SmHeapGroup = external global i32, align 4
@SmExcHandler = external global %struct.sm_exc_handler*, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"{addr_type}\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"e r\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SM_ASSERT(p < endp) failed\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"sendtolist: QSELFREF \00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"sendtolist: QS_DONTSEND \00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"SM_ASSERT(SmExcHandler == &_h) failed\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"removefromlist: null list\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"removefromlist: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"removefromlist: QS_REMOVED \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\0Arecipient (%d): \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"rfc822\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%s; %.800s\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%s; %.700s@%.100s\00", align 1
@MyHostName = external global i8*, align 8
@MaxAliasRecursion = external global i32, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"5.4.6\00", align 1
@SuprErrs = external global i32, align 4
@LogUsrErrs = external global i32, align 4
@LogLevel = external global i32, align 4
@.str.18 = private unnamed_addr constant [62 x i8] c"aliasing/forwarding loop broken: %s (%d aliases deep; %d max)\00", align 1
@FileName = external global i8*, align 8
@.str.19 = private unnamed_addr constant [62 x i8] c"554 aliasing/forwarding loop broken (%d aliases deep; %d max)\00", align 1
@ProgMailer = external global %struct.mailer*, align 8
@UseMSP = external global i32, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"5.7.1\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"550 Cannot mail directly to programs\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"550 UID %ld is an unknown user: cannot mail to programs\00", align 1
@.str.23 = private unnamed_addr constant [66 x i8] c"550 User %s@%s doesn't have a valid shell for mailing to programs\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"550 Unsafe for mailing to programs\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"550 Address %s is unsafe for mailing to programs\00", align 1
@FastSplit = external global i32, align 4
@NoConnect = external global i32, align 4
@.str.26 = private unnamed_addr constant [14 x i8] c"%s in sendq: \00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"duplicate suppressed\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"SM_ASSERT(pq != NULL) failed\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"at trylocaluser: \00", align 1
@InclMailer = external global %struct.mailer*, align 8
@.str.30 = private unnamed_addr constant [39 x i8] c"550 Cannot mail directly to :include:s\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"including file %s\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"include %s: transient error: %s\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"451 4.2.4 Cannot open %s: %s\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"5.2.4\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"550 Cannot open %s: %s\00", align 1
@FileMailer = external global %struct.mailer*, align 8
@.str.36 = private unnamed_addr constant [34 x i8] c"550 Cannot mail directly to files\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"550 UID %ld is an unknown user: cannot mail to files\00", align 1
@.str.38 = private unnamed_addr constant [63 x i8] c"550 User %s@%s doesn't have a valid shell for mailing to files\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"550 Unsafe for mailing to files\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"550 Address %s is unsafe for mailing to files\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"recipient: testing local?  cl=%d, rr5=%p\0A\09\00", align 1
@ConfigLevel = external global i32, align 4
@RewriteRules = external global [200 x %struct.rewrite*], align 16
@.str.42 = private unnamed_addr constant [6 x i8] c"4.5.2\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"5.1.1\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"550 5.1.1 User unknown\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"554 aliasing/forwarding loop for %s broken\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"testselfdestruct: \00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"SENDQ:\0A\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"----\0A\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"554 aliasing/forwarding loop broken\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"%s... expanded to multiple addresses\0A\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"{nrcpts}\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"finduser(%s): \00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"%s (non-fuzzy)\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"%s (lower case)\0A\00", align 1
@MatchGecos = external global i32, align 4
@.str.57 = private unnamed_addr constant [28 x i8] c"not found (fuzzy disabled)\0A\00", align 1
@SpaceSub = external global i8, align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"fuzzy matches %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"sending to login name %s\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"no fuzzy match found\0A\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"writable(%s, 0x%lx)\0A\00", align 1
@RealUid = external global i32, align 4
@RealGid = external global i32, align 4
@RealUserName = external global i8*, align 8
@DefUid = external global i32, align 4
@DefUser = external global i8*, align 8
@DefGid = external global i32, align 4
@DontBlameSendmail = external global [8 x i32], align 16
@LineNumber = external global i32, align 4
@.str.62 = private unnamed_addr constant [13 x i8] c"include(%s)\0A\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"   ruid=%ld euid=%ld\0A\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"ctladdr \00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"include: old uid = %ld/%ld\0A\00", align 1
@RunAsUid = external global i32, align 4
@.str.66 = private unnamed_addr constant [44 x i8] c"include: not safe (euid=%ld, RunAsUid=%ld)\0A\00", align 1
@DontInitGroups = external global i32, align 4
@.str.67 = private unnamed_addr constant [36 x i8] c"include: initgroups(%s, %ld) failed\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"include: setgroups() failed\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"setgid(%ld) failure\00", align 1
@.str.70 = private unnamed_addr constant [45 x i8] c"setreuid(0, %ld) failure (real=%ld, eff=%ld)\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"include: new uid = %ld/%ld\0A\00", align 1
@CtxIncludeTimeout = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@TimeOuts = external global %struct.anon, align 8
@.str.72 = private unnamed_addr constant [41 x i8] c"%s: unsafe directory path, marked unsafe\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"include: not safe (uid=%ld): %s\0A\00", align 1
@SmFtStdio_def = external global %struct.sm_file, align 8
@.str.74 = private unnamed_addr constant [19 x i8] c"include: open: %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"include: file changed after open\0A\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"!setreuid(-1, 0) failure (real=%ld, eff=%ld)\00", align 1
@.str.77 = private unnamed_addr constant [46 x i8] c"!setreuid(%ld, 0) failure (real=%ld, eff=%ld)\00", align 1
@.str.78 = private unnamed_addr constant [40 x i8] c"!setgid(%ld) failure (real=%ld eff=%ld)\00", align 1
@.str.79 = private unnamed_addr constant [30 x i8] c"include: reset uid = %ld/%ld\0A\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"451 4.4.1 open timeout on %s\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"Cannot fstat %s!\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"include: parent of %s is %s, chown is %ssafe\0A\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"dangerous\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"/SENDMAIL/ANY/SHELL/\00", align 1
@.str.87 = private unnamed_addr constant [40 x i8] c"%s: user %s has bad shell %s, marked %s\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"bogus\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"unsafe\00", align 1
@.str.90 = private unnamed_addr constant [43 x i8] c"include: %s is %s writable, marked unsafe\0A\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.93 = private unnamed_addr constant [39 x i8] c"%s: %s writable %s file, marked unsafe\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c":include:\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"%s to %s\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"forwarding\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"sending\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"forward %.200s => %s\00", align 1
@MaxForwardEntries = external global i32, align 4
@.str.100 = private unnamed_addr constant [54 x i8] c"Attempt to forward to more than %d addresses (in %s)!\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"include: read error: %s\0A\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"include: QS_DONTSEND \00", align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"self_reference(%s)\0A\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"\09... no self ref\0A\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"\09... getpwnam(%s)... \00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"found\0A\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"\09... local match (%s)\0A\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.111 = private unnamed_addr constant [33 x i8] c"\09... cannot break loop for \22%s\22\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @sendtolist(i8* %list, %struct.address* %ctladdr, %struct.address** %sendq, i32 %aliaslevel, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca i8*, align 8
  %ctladdr.addr = alloca %struct.address*, align 8
  %sendq.addr = alloca %struct.address**, align 8
  %aliaslevel.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %p = alloca i8*, align 8
  %al = alloca %struct.address*, align 8
  %delimiter = alloca i8, align 1
  %naddrs = alloca i32, align 4
  %i = alloca i32, align 4
  %endp = alloca i8*, align 8
  %oldto = alloca i8*, align 8
  %bufp = alloca i8*, align 8
  %buf = alloca [257 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %_h = alloca %struct.sm_exc_handler, align 8
  %delimptr = alloca i8*, align 8
  %a = alloca %struct.address*, align 8
  %b = alloca %struct.address*, align 8
  %a157 = alloca %struct.address*, align 8
  store i8* %list, i8** %list.addr, align 8, !tbaa !1
  store %struct.address* %ctladdr, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  store %struct.address** %sendq, %struct.address*** %sendq.addr, align 8, !tbaa !1
  store i32 %aliaslevel, i32* %aliaslevel.addr, align 4, !tbaa !5
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.address** %al to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %delimiter) #1
  %2 = bitcast i32* %naddrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %oldto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 3
  %7 = load i8*, i8** %e_to, align 8, !tbaa !7
  store i8* %7, i8** %oldto, align 8, !tbaa !1
  %8 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %9) #1
  %10 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.213

if.end:                                           ; preds = %entry
  %11 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 25), align 1, !tbaa !15
  %conv = zext i8 %11 to i32
  %cmp1 = icmp sge i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %12 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %list.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* %13)
  %call = call %struct.sm_file* @sm_debug_file()
  %14 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call, %struct.address* %14, i32 0)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %15 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.address* %15, null
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.23

land.lhs.true.7:                                  ; preds = %if.end.4
  %16 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call8 = call i8* @strchr(i8* %16, i32 44) #1
  %cmp9 = icmp ne i8* %call8, null
  br i1 %cmp9, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.7
  %17 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call11 = call i8* @strchr(i8* %17, i32 59) #1
  %cmp12 = icmp ne i8* %call11, null
  br i1 %cmp12, label %if.then.22, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %18 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call15 = call i8* @strchr(i8* %18, i32 60) #1
  %cmp16 = icmp ne i8* %call15, null
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.14
  %19 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call19 = call i8* @strchr(i8* %19, i32 40) #1
  %cmp20 = icmp ne i8* %call19, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false.14, %lor.lhs.false, %land.lhs.true.7
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 11
  %21 = load i64, i64* %e_flags, align 8, !tbaa !16
  %and = and i64 %21, -2
  store i64 %and, i64* %e_flags, align 8, !tbaa !16
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %lor.lhs.false.18, %if.end.4
  store i8 32, i8* %delimiter, align 1, !tbaa !15
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags24 = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 11
  %23 = load i64, i64* %e_flags24, align 8, !tbaa !16
  %and25 = and i64 %23, 1
  %cmp26 = icmp ne i64 %and25, 0
  br i1 %cmp26, label %lor.lhs.false.28, label %if.then.31

lor.lhs.false.28:                                 ; preds = %if.end.23
  %24 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %cmp29 = icmp ne %struct.address* %24, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %if.end.23
  store i8 44, i8* %delimiter, align 1, !tbaa !15
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %lor.lhs.false.28
  store %struct.address* null, %struct.address** %al, align 8, !tbaa !1
  store i32 0, i32* %naddrs, align 4, !tbaa !5
  %25 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call33 = call i64 @strlen(i8* %25) #10
  %add = add i64 %call33, 1
  %conv34 = trunc i64 %add to i32
  store i32 %conv34, i32* %i, align 4, !tbaa !5
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %conv35 = sext i32 %26 to i64
  %cmp36 = icmp ule i64 %conv35, 257
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.32
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %bufp, align 8, !tbaa !1
  store i32 257, i32* %i, align 4, !tbaa !5
  br label %if.end.41

if.else:                                          ; preds = %if.end.32
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %conv39 = sext i32 %27 to i64
  %28 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  %call40 = call i8* @sm_malloc_tagged_x(i64 %conv39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 209, i32 %28)
  store i8* %call40, i8** %bufp, align 8, !tbaa !1
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.38
  %29 = load i8*, i8** %bufp, align 8, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr, i8** %endp, align 8, !tbaa !1
  %31 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.start(i64 224, i8* %31) #1
  br label %do.body

do.body:                                          ; preds = %if.end.41
  %eh_value = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  store %struct.sm_exc* null, %struct.sm_exc** %eh_value, align 8, !tbaa !17
  %32 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_parent = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  store %struct.sm_exc_handler* %32, %struct.sm_exc_handler** %eh_parent, align 8, !tbaa !19
  %eh_state = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  store i32 2, i32* %eh_state, align 4, !tbaa !20
  store %struct.sm_exc_handler* %_h, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_context = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay42 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context, i32 0, i32 0
  %call43 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay42, i32 0) #11
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.166

if.then.46:                                       ; preds = %do.body
  %33 = load i8*, i8** %bufp, align 8, !tbaa !1
  %34 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call47 = call i8* @denlstring(i8* %34, i32 0, i32 1)
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %conv48 = sext i32 %35 to i64
  %call49 = call i64 @sm_strlcpy(i8* %33, i8* %call47, i64 %conv48)
  %36 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 46
  %call50 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8** null)
  %37 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %call50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 216, i32 %37)
  %38 = load i8*, i8** %bufp, align 8, !tbaa !1
  store i8* %38, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.152, %cleanup.149, %if.then.46
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !15
  %conv51 = sext i8 %40 to i32
  %cmp52 = icmp ne i32 %conv51, 0
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast %struct.address** %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %44 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp54 = icmp ult i8* %43, %44
  br i1 %cmp54, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 222, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %45, %for.body
  %46 = phi i1 [ true, %for.body ], [ false, %45 ]
  %lor.ext = zext i1 %46 to i32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %lor.end
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !15
  %conv56 = sext i8 %48 to i32
  %and57 = and i32 %conv56, -128
  %cmp58 = icmp eq i32 %and57, 0
  br i1 %cmp58, label %land.lhs.true.60, label %lor.rhs.66

land.lhs.true.60:                                 ; preds = %while.cond
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !15
  %conv61 = sext i8 %50 to i32
  %idxprom = sext i32 %conv61 to i64
  %call62 = call i16** @__ctype_b_loc() #13
  %51 = load i16*, i16** %call62, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %51, i64 %idxprom
  %52 = load i16, i16* %arrayidx, align 2, !tbaa !21
  %conv63 = zext i16 %52 to i32
  %and64 = and i32 %conv63, 8192
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %lor.end.70, label %lor.rhs.66

lor.rhs.66:                                       ; preds = %land.lhs.true.60, %while.cond
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !15
  %conv67 = sext i8 %54 to i32
  %cmp68 = icmp eq i32 %conv67, 44
  br label %lor.end.70

lor.end.70:                                       ; preds = %lor.rhs.66, %land.lhs.true.60
  %55 = phi i1 [ true, %land.lhs.true.60 ], [ %cmp68, %lor.rhs.66 ]
  br i1 %55, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end.70
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %lor.end.70
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %58 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp72 = icmp ult i8* %57, %58
  br i1 %cmp72, label %lor.end.75, label %lor.rhs.74

lor.rhs.74:                                       ; preds = %while.end
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.75

lor.end.75:                                       ; preds = %59, %while.end
  %60 = phi i1 [ true, %while.end ], [ false, %59 ]
  %lor.ext76 = zext i1 %60 to i32
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %62 = load i8, i8* %delimiter, align 1, !tbaa !15
  %conv77 = sext i8 %62 to i32
  %63 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call78 = call %struct.address* @parseaddr(i8* %61, %struct.address* null, i32 48, i32 %conv77, i8** %delimptr, %struct.envelope* %63, i32 1)
  store %struct.address* %call78, %struct.address** %a, align 8, !tbaa !1
  %64 = load i8*, i8** %delimptr, align 8, !tbaa !1
  store i8* %64, i8** %p, align 8, !tbaa !1
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %66 = load i8*, i8** %endp, align 8, !tbaa !1
  %cmp79 = icmp ult i8* %65, %66
  br i1 %cmp79, label %lor.end.82, label %lor.rhs.81

lor.rhs.81:                                       ; preds = %lor.end.75
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 231, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.82

lor.end.82:                                       ; preds = %67, %lor.end.75
  %68 = phi i1 [ true, %lor.end.75 ], [ false, %67 ]
  %lor.ext83 = zext i1 %68 to i32
  %69 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %cmp84 = icmp eq %struct.address* %69, null
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %lor.end.82
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.87:                                        ; preds = %lor.end.82
  %70 = load %struct.address*, %struct.address** %al, align 8, !tbaa !1
  %71 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %71, i32 0, i32 10
  store %struct.address* %70, %struct.address** %q_next, align 8, !tbaa !22
  %72 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %73 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_alias = getelementptr inbounds %struct.address, %struct.address* %73, i32 0, i32 11
  store %struct.address* %72, %struct.address** %q_alias, align 8, !tbaa !23
  %74 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %cmp88 = icmp ne %struct.address* %74, null
  br i1 %cmp88, label %if.then.90, label %if.end.148

if.then.90:                                       ; preds = %if.end.87
  %75 = bitcast %struct.address** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %77 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %call91 = call i32 @sameaddr(%struct.address* %76, %struct.address* %77)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.102

if.then.93:                                       ; preds = %if.then.90
  %78 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv94 = zext i8 %78 to i32
  %cmp95 = icmp sge i32 %conv94, 5
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.101

land.lhs.true.97:                                 ; preds = %if.then.93
  %79 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool98 = icmp ne i32 %79, 0
  br i1 %tobool98, label %if.end.101, label %if.then.99

if.then.99:                                       ; preds = %land.lhs.true.97
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  %call100 = call %struct.sm_file* @sm_debug_file()
  %80 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call100, %struct.address* %80, i32 0)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %land.lhs.true.97, %if.then.93
  %81 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %81, i32 0, i32 5
  %82 = load i64, i64* %q_flags, align 8, !tbaa !24
  %or = or i64 %82, 8
  store i64 %or, i64* %q_flags, align 8, !tbaa !24
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.90
  %83 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %call103 = call %struct.address* @self_reference(%struct.address* %83)
  store %struct.address* %call103, %struct.address** %b, align 8, !tbaa !1
  %84 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %cmp104 = icmp ne %struct.address* %84, null
  br i1 %cmp104, label %if.then.106, label %if.end.133

if.then.106:                                      ; preds = %if.end.102
  %85 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %q_flags107 = getelementptr inbounds %struct.address, %struct.address* %85, i32 0, i32 5
  %86 = load i64, i64* %q_flags107, align 8, !tbaa !24
  %or108 = or i64 %86, 8
  store i64 %or108, i64* %q_flags107, align 8, !tbaa !24
  %87 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv109 = zext i8 %87 to i32
  %cmp110 = icmp sge i32 %conv109, 5
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.116

land.lhs.true.112:                                ; preds = %if.then.106
  %88 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool113 = icmp ne i32 %88, 0
  br i1 %tobool113, label %if.end.116, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.112
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  %call115 = call %struct.sm_file* @sm_debug_file()
  %89 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call115, %struct.address* %89, i32 0)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %land.lhs.true.112, %if.then.106
  %90 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %91 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %cmp117 = icmp ne %struct.address* %90, %91
  br i1 %cmp117, label %if.then.119, label %if.end.132

if.then.119:                                      ; preds = %if.end.116
  %92 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv120 = zext i8 %92 to i32
  %cmp121 = icmp sge i32 %conv120, 5
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.127

land.lhs.true.123:                                ; preds = %if.then.119
  %93 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool124 = icmp ne i32 %93, 0
  br i1 %tobool124, label %if.end.127, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true.123
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  %call126 = call %struct.sm_file* @sm_debug_file()
  %94 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call126, %struct.address* %94, i32 0)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %land.lhs.true.123, %if.then.119
  %95 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %95, i32 0, i32 21
  store i16 6, i16* %q_state, align 2, !tbaa !25
  %96 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_flags128 = getelementptr inbounds %struct.address, %struct.address* %96, i32 0, i32 5
  %97 = load i64, i64* %q_flags128, align 8, !tbaa !24
  %and129 = and i64 %97, 4
  %98 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %q_flags130 = getelementptr inbounds %struct.address, %struct.address* %98, i32 0, i32 5
  %99 = load i64, i64* %q_flags130, align 8, !tbaa !24
  %or131 = or i64 %99, %and129
  store i64 %or131, i64* %q_flags130, align 8, !tbaa !24
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.132:                                       ; preds = %if.end.116
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.102
  %100 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_fullname = getelementptr inbounds %struct.address, %struct.address* %100, i32 0, i32 9
  %101 = load i8*, i8** %q_fullname, align 8, !tbaa !26
  %cmp134 = icmp eq i8* %101, null
  br i1 %cmp134, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %if.end.133
  %102 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_fullname137 = getelementptr inbounds %struct.address, %struct.address* %102, i32 0, i32 9
  %103 = load i8*, i8** %q_fullname137, align 8, !tbaa !26
  %104 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_fullname138 = getelementptr inbounds %struct.address, %struct.address* %104, i32 0, i32 9
  store i8* %103, i8** %q_fullname138, align 8, !tbaa !26
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %if.end.133
  %105 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_flags140 = getelementptr inbounds %struct.address, %struct.address* %105, i32 0, i32 5
  %106 = load i64, i64* %q_flags140, align 8, !tbaa !24
  %and141 = and i64 %106, -961
  store i64 %and141, i64* %q_flags140, align 8, !tbaa !24
  %107 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags142 = getelementptr inbounds %struct.address, %struct.address* %107, i32 0, i32 5
  %108 = load i64, i64* %q_flags142, align 8, !tbaa !24
  %and143 = and i64 %108, 960
  %109 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_flags144 = getelementptr inbounds %struct.address, %struct.address* %109, i32 0, i32 5
  %110 = load i64, i64* %q_flags144, align 8, !tbaa !24
  %or145 = or i64 %110, %and143
  store i64 %or145, i64* %q_flags144, align 8, !tbaa !24
  %111 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_finalrcpt = getelementptr inbounds %struct.address, %struct.address* %111, i32 0, i32 15
  %112 = load i8*, i8** %q_finalrcpt, align 8, !tbaa !27
  %113 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_finalrcpt146 = getelementptr inbounds %struct.address, %struct.address* %113, i32 0, i32 15
  store i8* %112, i8** %q_finalrcpt146, align 8, !tbaa !27
  %114 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_orcpt = getelementptr inbounds %struct.address, %struct.address* %114, i32 0, i32 16
  %115 = load i8*, i8** %q_orcpt, align 8, !tbaa !28
  %116 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %q_orcpt147 = getelementptr inbounds %struct.address, %struct.address* %116, i32 0, i32 16
  store i8* %115, i8** %q_orcpt147, align 8, !tbaa !28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.139, %if.end.127
  %117 = bitcast %struct.address** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.149 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.148

if.end.148:                                       ; preds = %cleanup.cont, %if.end.87
  %118 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  store %struct.address* %118, %struct.address** %al, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.149

cleanup.149:                                      ; preds = %if.end.148, %cleanup, %if.then.86
  %119 = bitcast %struct.address** %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %cleanup.dest.151 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.151, label %unreachable [
    i32 0, label %cleanup.cont.152
    i32 5, label %for.cond
  ]

cleanup.cont.152:                                 ; preds = %cleanup.149
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.153

while.cond.153:                                   ; preds = %while.body.156, %for.end
  %121 = load %struct.address*, %struct.address** %al, align 8, !tbaa !1
  %cmp154 = icmp ne %struct.address* %121, null
  br i1 %cmp154, label %while.body.156, label %while.end.160

while.body.156:                                   ; preds = %while.cond.153
  %122 = bitcast %struct.address** %a157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %122) #1
  %123 = load %struct.address*, %struct.address** %al, align 8, !tbaa !1
  store %struct.address* %123, %struct.address** %a157, align 8, !tbaa !1
  %124 = load %struct.address*, %struct.address** %a157, align 8, !tbaa !1
  %q_next158 = getelementptr inbounds %struct.address, %struct.address* %124, i32 0, i32 10
  %125 = load %struct.address*, %struct.address** %q_next158, align 8, !tbaa !22
  store %struct.address* %125, %struct.address** %al, align 8, !tbaa !1
  %126 = load %struct.address*, %struct.address** %a157, align 8, !tbaa !1
  %127 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  %128 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %129 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call159 = call %struct.address* @recipient(%struct.address* %126, %struct.address** %127, i32 %128, %struct.envelope* %129)
  store %struct.address* %call159, %struct.address** %a157, align 8, !tbaa !1
  %130 = load i32, i32* %naddrs, align 4, !tbaa !5
  %inc = add nsw i32 %130, 1
  store i32 %inc, i32* %naddrs, align 4, !tbaa !5
  %131 = bitcast %struct.address** %a157 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  br label %while.cond.153

while.end.160:                                    ; preds = %while.cond.153
  %132 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp161 = icmp eq %struct.sm_exc_handler* %132, %_h
  br i1 %cmp161, label %lor.end.164, label %lor.rhs.163

lor.rhs.163:                                      ; preds = %while.end.160
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 302, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.164

lor.end.164:                                      ; preds = %133, %while.end.160
  %134 = phi i1 [ true, %while.end.160 ], [ false, %133 ]
  %lor.ext165 = zext i1 %134 to i32
  br label %if.end.166

if.end.166:                                       ; preds = %lor.end.164, %do.body
  %eh_context167 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay168 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context167, i32 0, i32 0
  %call169 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay168, i32 0) #11
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.then.172, label %if.end.181

if.then.172:                                      ; preds = %if.end.166
  %135 = load i8*, i8** %oldto, align 8, !tbaa !1
  %136 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to173 = getelementptr inbounds %struct.envelope, %struct.envelope* %136, i32 0, i32 3
  store i8* %135, i8** %e_to173, align 8, !tbaa !7
  %137 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay174 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %cmp175 = icmp ne i8* %137, %arraydecay174
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.then.172
  %138 = load i8*, i8** %bufp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 306)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %if.then.172
  %139 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro179 = getelementptr inbounds %struct.envelope, %struct.envelope* %139, i32 0, i32 46
  %call180 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8** null)
  %140 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro179, i32 2, i32 %call180, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 307, i32 %140)
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.178, %if.end.166
  br label %do.cond

do.cond:                                          ; preds = %if.end.181
  br label %do.end

do.end:                                           ; preds = %do.cond
  %eh_state182 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %141 = load i32, i32* %eh_state182, align 4, !tbaa !20
  %cmp183 = icmp eq i32 %141, 2
  br i1 %cmp183, label %if.then.185, label %if.else.198

if.then.185:                                      ; preds = %do.end
  %142 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp186 = icmp eq %struct.sm_exc_handler* %142, %_h
  br i1 %cmp186, label %lor.end.189, label %lor.rhs.188

lor.rhs.188:                                      ; preds = %if.then.185
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 309, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.189

lor.end.189:                                      ; preds = %143, %if.then.185
  %144 = phi i1 [ true, %if.then.185 ], [ false, %143 ]
  %lor.ext190 = zext i1 %144 to i32
  %eh_parent191 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  %145 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent191, align 8, !tbaa !19
  store %struct.sm_exc_handler* %145, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_value192 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %146 = load %struct.sm_exc*, %struct.sm_exc** %eh_value192, align 8, !tbaa !17
  %cmp193 = icmp ne %struct.sm_exc* %146, null
  br i1 %cmp193, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %lor.end.189
  %eh_value196 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %147 = load %struct.sm_exc*, %struct.sm_exc** %eh_value196, align 8, !tbaa !17
  call void @sm_exc_raise_x(%struct.sm_exc* %147) #12
  unreachable

if.end.197:                                       ; preds = %lor.end.189
  br label %if.end.212

if.else.198:                                      ; preds = %do.end
  %eh_state199 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %148 = load i32, i32* %eh_state199, align 4, !tbaa !20
  %cmp200 = icmp eq i32 %148, 0
  br i1 %cmp200, label %if.then.202, label %if.else.209

if.then.202:                                      ; preds = %if.else.198
  %eh_value203 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %149 = load %struct.sm_exc*, %struct.sm_exc** %eh_value203, align 8, !tbaa !17
  %cmp204 = icmp ne %struct.sm_exc* %149, null
  br i1 %cmp204, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %if.then.202
  %eh_value207 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %150 = load %struct.sm_exc*, %struct.sm_exc** %eh_value207, align 8, !tbaa !17
  call void @sm_exc_raise_x(%struct.sm_exc* %150) #12
  unreachable

if.end.208:                                       ; preds = %if.then.202
  br label %if.end.211

if.else.209:                                      ; preds = %if.else.198
  %eh_value210 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %151 = load %struct.sm_exc*, %struct.sm_exc** %eh_value210, align 8, !tbaa !17
  call void @sm_exc_free(%struct.sm_exc* %151)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.209, %if.end.208
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.197
  %152 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.end(i64 224, i8* %152) #1
  %153 = load i32, i32* %naddrs, align 4, !tbaa !5
  store i32 %153, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.213

cleanup.213:                                      ; preds = %if.end.212, %if.then
  %154 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %154) #1
  %155 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i8** %oldto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %naddrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  call void @llvm.lifetime.end(i64 1, i8* %delimiter) #1
  %160 = bitcast %struct.address** %al to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = load i32, i32* %retval
  ret i32 %162

unreachable:                                      ; preds = %cleanup.149
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @syserr(i8*, ...) #2

declare void @sm_dprintf(i8*, ...) #2

declare void @printaddr(%struct.sm_file*, %struct.address*, i32) #2

declare %struct.sm_file* @sm_debug_file() #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @sm_malloc_tagged_x(i64, i8*, i32, i32) #2

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(%struct.__jmp_buf_tag*, i32) #5

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

declare i8* @denlstring(i8*, i32, i32) #2

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #2

declare i32 @macid_parse(i8*, i8**) #2

; Function Attrs: noreturn
declare void @sm_abort_at(i8*, i32, i8*) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

declare %struct.address* @parseaddr(i8*, %struct.address*, i32, i32, i8**, %struct.envelope*, i32) #2

declare i32 @sameaddr(%struct.address*, %struct.address*) #2

; Function Attrs: nounwind uwtable
define internal %struct.address* @self_reference(%struct.address* %a) #0 {
entry:
  %retval = alloca %struct.address*, align 8
  %a.addr = alloca %struct.address*, align 8
  %b = alloca %struct.address*, align 8
  %c = alloca %struct.address*, align 8
  %cleanup.dest.slot = alloca i32
  %user = alloca %struct.SM_MBDB_T, align 4
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  %0 = bitcast %struct.address** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.address** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv = zext i8 %2 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %4, i32 0, i32 0
  %5 = load i8*, i8** %q_paddr, align 8, !tbaa !29
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.103, i32 0, i32 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_alias = getelementptr inbounds %struct.address, %struct.address* %6, i32 0, i32 11
  %7 = load %struct.address*, %struct.address** %q_alias, align 8, !tbaa !23
  store %struct.address* %7, %struct.address** %b, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.address* %8, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %10 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %call = call i32 @sameaddr(%struct.address* %9, %struct.address* %10)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  br label %for.end

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %11 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %q_alias7 = getelementptr inbounds %struct.address, %struct.address* %11, i32 0, i32 11
  %12 = load %struct.address*, %struct.address** %q_alias7, align 8, !tbaa !23
  store %struct.address* %12, %struct.address** %b, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.5, %for.cond
  %13 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.address* %13, null
  br i1 %cmp8, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %for.end
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv11 = zext i8 %14 to i32
  %cmp12 = icmp sge i32 %conv11, 1
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.17

land.lhs.true.14:                                 ; preds = %if.then.10
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %15, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.14
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true.14, %if.then.10
  store %struct.address* null, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end.18:                                        ; preds = %for.end
  %16 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  store %struct.address* %16, %struct.address** %c, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.93, %if.end.18
  %17 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %cmp19 = icmp ne %struct.address* %17, null
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv21 = zext i8 %18 to i32
  %cmp22 = icmp sge i32 %conv21, 10
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.27

land.lhs.true.24:                                 ; preds = %while.body
  %19 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool25 = icmp ne i32 %19, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.24
  %20 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %20, i32 0, i32 1
  %21 = load i8*, i8** %q_user, align 8, !tbaa !30
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i8* %21)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true.24, %while.body
  %22 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %22, i32 0, i32 4
  %23 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !31
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %23, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %24 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %and = and i32 %24, 8388608
  %tobool28 = icmp ne i32 %and, 0
  br i1 %tobool28, label %if.then.29, label %if.else.61

if.then.29:                                       ; preds = %if.end.27
  %25 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.start(i64 8712, i8* %25) #1
  %26 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv30 = zext i8 %26 to i32
  %cmp31 = icmp sge i32 %conv30, 2
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.37

land.lhs.true.33:                                 ; preds = %if.then.29
  %27 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.end.37, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true.33
  %28 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %q_user36 = getelementptr inbounds %struct.address, %struct.address* %28, i32 0, i32 1
  %29 = load i8*, i8** %q_user36, align 8, !tbaa !30
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.106, i32 0, i32 0), i8* %29)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %land.lhs.true.33, %if.then.29
  %30 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %q_user38 = getelementptr inbounds %struct.address, %struct.address* %30, i32 0, i32 1
  %31 = load i8*, i8** %q_user38, align 8, !tbaa !30
  %call39 = call i32 @sm_mbdb_lookup(i8* %31, %struct.SM_MBDB_T* %user)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.53

if.then.42:                                       ; preds = %if.end.37
  %32 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv43 = zext i8 %32 to i32
  %cmp44 = icmp sge i32 %conv43, 2
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.49

land.lhs.true.46:                                 ; preds = %if.then.42
  %33 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool47 = icmp ne i32 %33, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.46
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %land.lhs.true.46, %if.then.42
  %34 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %35 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %call50 = call i32 @sameaddr(%struct.address* %34, %struct.address* %35)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.end.49
  %36 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  store %struct.address* %36, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.49
  %37 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  store %struct.address* %37, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end.37
  %38 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv54 = zext i8 %38 to i32
  %cmp55 = icmp sge i32 %conv54, 2
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.60

land.lhs.true.57:                                 ; preds = %if.end.53
  %39 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool58 = icmp ne i32 %39, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.57
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %land.lhs.true.57, %if.end.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.else, %if.then.52
  %40 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.end(i64 8712, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.103 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.86

if.else.61:                                       ; preds = %if.end.27
  %41 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %q_mailer62 = getelementptr inbounds %struct.address, %struct.address* %41, i32 0, i32 4
  %42 = load %struct.mailer*, %struct.mailer** %q_mailer62, align 8, !tbaa !31
  %m_flags63 = getelementptr inbounds %struct.mailer, %struct.mailer* %42, i32 0, i32 5
  %arrayidx64 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags63, i32 0, i64 3
  %43 = load i32, i32* %arrayidx64, align 4, !tbaa !5
  %and65 = and i32 %43, 4096
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.85

land.lhs.true.67:                                 ; preds = %if.else.61
  %44 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %q_mailer68 = getelementptr inbounds %struct.address, %struct.address* %44, i32 0, i32 4
  %45 = load %struct.mailer*, %struct.mailer** %q_mailer68, align 8, !tbaa !31
  %46 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %q_mailer69 = getelementptr inbounds %struct.address, %struct.address* %46, i32 0, i32 4
  %47 = load %struct.mailer*, %struct.mailer** %q_mailer69, align 8, !tbaa !31
  %cmp70 = icmp eq %struct.mailer* %45, %47
  br i1 %cmp70, label %if.then.72, label %if.end.85

if.then.72:                                       ; preds = %land.lhs.true.67
  %48 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv73 = zext i8 %48 to i32
  %cmp74 = icmp sge i32 %conv73, 2
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.80

land.lhs.true.76:                                 ; preds = %if.then.72
  %49 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool77 = icmp ne i32 %49, 0
  br i1 %tobool77, label %if.end.80, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.76
  %50 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %q_user79 = getelementptr inbounds %struct.address, %struct.address* %50, i32 0, i32 1
  %51 = load i8*, i8** %q_user79, align 8, !tbaa !30
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i32 0, i32 0), i8* %51)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %land.lhs.true.76, %if.then.72
  %52 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  %53 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %call81 = call i32 @sameaddr(%struct.address* %52, %struct.address* %53)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.end.80
  %54 = load %struct.address*, %struct.address** %b, align 8, !tbaa !1
  store %struct.address* %54, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.else.84:                                       ; preds = %if.end.80
  %55 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  store %struct.address* %55, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end.85:                                        ; preds = %land.lhs.true.67, %if.else.61
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %cleanup.cont
  %56 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv87 = zext i8 %56 to i32
  %cmp88 = icmp sge i32 %conv87, 10
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.93

land.lhs.true.90:                                 ; preds = %if.end.86
  %57 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool91 = icmp ne i32 %57, 0
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %land.lhs.true.90
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0))
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %land.lhs.true.90, %if.end.86
  %58 = load %struct.address*, %struct.address** %c, align 8, !tbaa !1
  %q_alias94 = getelementptr inbounds %struct.address, %struct.address* %58, i32 0, i32 11
  %59 = load %struct.address*, %struct.address** %q_alias94, align 8, !tbaa !23
  store %struct.address* %59, %struct.address** %c, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %60 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv95 = zext i8 %60 to i32
  %cmp96 = icmp sge i32 %conv95, 1
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.102

land.lhs.true.98:                                 ; preds = %while.end
  %61 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool99 = icmp ne i32 %61, 0
  br i1 %tobool99, label %if.end.102, label %if.then.100

if.then.100:                                      ; preds = %land.lhs.true.98
  %62 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_paddr101 = getelementptr inbounds %struct.address, %struct.address* %62, i32 0, i32 0
  %63 = load i8*, i8** %q_paddr101, align 8, !tbaa !29
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i32 0, i32 0), i8* %63)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %land.lhs.true.98, %while.end
  store %struct.address* null, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

cleanup.103:                                      ; preds = %if.end.102, %if.else.84, %if.then.83, %cleanup, %if.end.17
  %64 = bitcast %struct.address** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.address** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load %struct.address*, %struct.address** %retval
  ret %struct.address* %66
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.address* @recipient(%struct.address* %new, %struct.address** %sendq, i32 %aliaslevel, %struct.envelope* %e) #0 {
entry:
  %retval = alloca %struct.address*, align 8
  %new.addr = alloca %struct.address*, align 8
  %sendq.addr = alloca %struct.address**, align 8
  %aliaslevel.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %q = alloca %struct.address*, align 8
  %pq = alloca %struct.address**, align 8
  %prev = alloca %struct.address**, align 8
  %m = alloca %struct.mailer*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %buflen = alloca i32, align 4
  %quoted = alloca i32, align 4
  %insert = alloca i32, align 4
  %findusercount = alloca i32, align 4
  %initialdontsend = alloca i32, align 4
  %buf = alloca i8*, align 8
  %buf0 = alloca [257 x i8], align 16
  %sortfn = alloca i32 (%struct.address*, %struct.address*)*, align 8
  %frbuf = alloca [2048 x i8], align 16
  %qp = alloca i8*, align 8
  %b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ret = alloca i32, align 4
  %fuzzy = alloca i32, align 4
  %user = alloca %struct.SM_MBDB_T, align 4
  %status = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp607 = alloca i32, align 4
  %nrcpts = alloca i32, align 4
  %only = alloca %struct.address*, align 8
  store %struct.address* %new, %struct.address** %new.addr, align 8, !tbaa !1
  store %struct.address** %sendq, %struct.address*** %sendq.addr, align 8, !tbaa !1
  store i32 %aliaslevel, i32* %aliaslevel.addr, align 4, !tbaa !5
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.address*** %pq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.address*** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.mailer** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %buflen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %insert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %findusercount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %initialdontsend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast [257 x i8]* %buf0 to i8*
  call void @llvm.lifetime.start(i64 257, i8* %12) #1
  %13 = bitcast i32 (%struct.address*, %struct.address*)** %sortfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i8* null, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %quoted, align 4, !tbaa !5
  store i32 0, i32* %insert, align 4, !tbaa !5
  store i32 0, i32* %findusercount, align 4, !tbaa !5
  %14 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %14, i32 0, i32 21
  %15 = load i16, i16* %q_state, align 2, !tbaa !25
  %conv = sext i16 %15 to i32
  %cmp = icmp sge i32 %conv, 6
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %initialdontsend, align 4, !tbaa !5
  %16 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %16, i32 0, i32 0
  %17 = load i8*, i8** %q_paddr, align 8, !tbaa !29
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 3
  store i8* %17, i8** %e_to, align 8, !tbaa !7
  %19 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %19, i32 0, i32 4
  %20 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !31
  store %struct.mailer* %20, %struct.mailer** %m, align 8, !tbaa !1
  %call = call i32* @__errno_location() #13
  store i32 0, i32* %call, align 4, !tbaa !5
  %21 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %21, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %22, i32 0, i32 5
  %23 = load i64, i64* %q_flags, align 8, !tbaa !24
  %or = or i64 %23, 2
  store i64 %or, i64* %q_flags, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 26), align 1, !tbaa !15
  %conv4 = zext i8 %24 to i32
  %cmp5 = icmp sge i32 %conv4, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %25 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  %26 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 %26)
  %call8 = call %struct.sm_file* @sm_debug_file()
  %27 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call8, %struct.address* %27, i32 0)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %land.lhs.true, %if.end
  %28 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias = getelementptr inbounds %struct.address, %struct.address* %28, i32 0, i32 11
  %29 = load %struct.address*, %struct.address** %q_alias, align 8, !tbaa !23
  %cmp10 = icmp eq %struct.address* %29, null
  br i1 %cmp10, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %if.end.9
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_origrcpt = getelementptr inbounds %struct.envelope, %struct.envelope* %30, i32 0, i32 39
  %31 = load i8*, i8** %e_origrcpt, align 8, !tbaa !32
  %cmp13 = icmp eq i8* %31, null
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %32 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_paddr16 = getelementptr inbounds %struct.address, %struct.address* %32, i32 0, i32 0
  %33 = load i8*, i8** %q_paddr16, align 8, !tbaa !29
  %34 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_origrcpt17 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 39
  store i8* %33, i8** %e_origrcpt17, align 8, !tbaa !32
  br label %if.end.25

if.else:                                          ; preds = %if.then.12
  %35 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_origrcpt18 = getelementptr inbounds %struct.envelope, %struct.envelope* %35, i32 0, i32 39
  %36 = load i8*, i8** %e_origrcpt18, align 8, !tbaa !32
  %37 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_paddr19 = getelementptr inbounds %struct.address, %struct.address* %37, i32 0, i32 0
  %38 = load i8*, i8** %q_paddr19, align 8, !tbaa !29
  %cmp20 = icmp ne i8* %36, %38
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.else
  %39 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_origrcpt23 = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 39
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8** %e_origrcpt23, align 8, !tbaa !32
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.15
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.9
  %40 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  store %struct.address* %40, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %41 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_alias27 = getelementptr inbounds %struct.address, %struct.address* %41, i32 0, i32 11
  %42 = load %struct.address*, %struct.address** %q_alias27, align 8, !tbaa !23
  %cmp28 = icmp ne %struct.address* %42, null
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_alias30 = getelementptr inbounds %struct.address, %struct.address* %43, i32 0, i32 11
  %44 = load %struct.address*, %struct.address** %q_alias30, align 8, !tbaa !23
  store %struct.address* %44, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_finalrcpt = getelementptr inbounds %struct.address, %struct.address* %45, i32 0, i32 15
  %46 = load i8*, i8** %q_finalrcpt, align 8, !tbaa !27
  %cmp31 = icmp eq i8* %46, null
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.99

land.lhs.true.33:                                 ; preds = %for.end
  %47 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %47, i32 0, i32 4
  %q_mailer34 = getelementptr inbounds %struct.address, %struct.address* %e_from, i32 0, i32 4
  %48 = load %struct.mailer*, %struct.mailer** %q_mailer34, align 8, !tbaa !33
  %cmp35 = icmp ne %struct.mailer* %48, null
  br i1 %cmp35, label %if.then.37, label %if.end.99

if.then.37:                                       ; preds = %land.lhs.true.33
  %49 = bitcast [2048 x i8]* %frbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %49) #1
  %50 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from38 = getelementptr inbounds %struct.envelope, %struct.envelope* %50, i32 0, i32 4
  %q_mailer39 = getelementptr inbounds %struct.address, %struct.address* %e_from38, i32 0, i32 4
  %51 = load %struct.mailer*, %struct.mailer** %q_mailer39, align 8, !tbaa !33
  %m_addrtype = getelementptr inbounds %struct.mailer, %struct.mailer* %51, i32 0, i32 3
  %52 = load i8*, i8** %m_addrtype, align 8, !tbaa !34
  store i8* %52, i8** %p, align 8, !tbaa !1
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp40 = icmp eq i8* %53, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.37
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.37
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %call44 = call i32 @sm_strcasecmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.else.51

if.then.47:                                       ; preds = %if.end.43
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %frbuf, i32 0, i32 0
  %55 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_mailer48 = getelementptr inbounds %struct.address, %struct.address* %55, i32 0, i32 4
  %56 = load %struct.mailer*, %struct.mailer** %q_mailer48, align 8, !tbaa !31
  %m_addrtype49 = getelementptr inbounds %struct.mailer, %struct.mailer* %56, i32 0, i32 3
  %57 = load i8*, i8** %m_addrtype49, align 8, !tbaa !34
  %58 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %58, i32 0, i32 1
  %59 = load i8*, i8** %q_user, align 8, !tbaa !30
  %call50 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 2048, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* %57, i8* %59)
  br label %if.end.95

if.else.51:                                       ; preds = %if.end.43
  %60 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_user52 = getelementptr inbounds %struct.address, %struct.address* %60, i32 0, i32 1
  %61 = load i8*, i8** %q_user52, align 8, !tbaa !30
  %call53 = call i8* @strchr(i8* %61, i32 64) #1
  %cmp54 = icmp ne i8* %call53, null
  br i1 %cmp54, label %if.then.56, label %if.else.60

if.then.56:                                       ; preds = %if.else.51
  %arraydecay57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %frbuf, i32 0, i32 0
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %63 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_user58 = getelementptr inbounds %struct.address, %struct.address* %63, i32 0, i32 1
  %64 = load i8*, i8** %q_user58, align 8, !tbaa !30
  %call59 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay57, i64 2048, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* %62, i8* %64)
  br label %if.end.94

if.else.60:                                       ; preds = %if.else.51
  %65 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_paddr61 = getelementptr inbounds %struct.address, %struct.address* %65, i32 0, i32 0
  %66 = load i8*, i8** %q_paddr61, align 8, !tbaa !29
  %call62 = call i8* @strchr(i8* %66, i32 64) #1
  %cmp63 = icmp ne i8* %call62, null
  br i1 %cmp63, label %if.then.65, label %if.else.89

if.then.65:                                       ; preds = %if.else.60
  %67 = bitcast i8** %qp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_paddr66 = getelementptr inbounds %struct.address, %struct.address* %69, i32 0, i32 0
  %70 = load i8*, i8** %q_paddr66, align 8, !tbaa !29
  store i8* %70, i8** %qp, align 8, !tbaa !1
  store i32 0, i32* %b, align 4, !tbaa !5
  %71 = load i8*, i8** %qp, align 8, !tbaa !1
  %72 = load i8, i8* %71, align 1, !tbaa !15
  %conv67 = sext i8 %72 to i32
  %cmp68 = icmp eq i32 %conv67, 60
  br i1 %cmp68, label %if.then.70, label %if.end.81

if.then.70:                                       ; preds = %if.then.65
  %73 = load i8*, i8** %qp, align 8, !tbaa !1
  %call71 = call i64 @strlen(i8* %73) #10
  %sub = sub i64 %call71, 1
  %74 = load i8*, i8** %qp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %74, i64 %sub
  %75 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv72 = sext i8 %75 to i32
  %cmp73 = icmp eq i32 %conv72, 62
  %conv74 = zext i1 %cmp73 to i32
  store i32 %conv74, i32* %b, align 4, !tbaa !5
  %76 = load i32, i32* %b, align 4, !tbaa !5
  %tobool75 = icmp ne i32 %76, 0
  br i1 %tobool75, label %if.then.76, label %if.end.80

if.then.76:                                       ; preds = %if.then.70
  %77 = load i8*, i8** %qp, align 8, !tbaa !1
  %call77 = call i64 @strlen(i8* %77) #10
  %sub78 = sub i64 %call77, 1
  %78 = load i8*, i8** %qp, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %78, i64 %sub78
  store i8 0, i8* %arrayidx79, align 1, !tbaa !15
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.76, %if.then.70
  %79 = load i8*, i8** %qp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr, i8** %qp, align 8, !tbaa !1
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.65
  %arraydecay82 = getelementptr inbounds [2048 x i8], [2048 x i8]* %frbuf, i32 0, i32 0
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  %81 = load i8*, i8** %qp, align 8, !tbaa !1
  %call83 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay82, i64 2048, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* %80, i8* %81)
  %82 = load i32, i32* %b, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %82, 0
  br i1 %tobool84, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %if.end.81
  %83 = load i8*, i8** %qp, align 8, !tbaa !1
  %call86 = call i64 @strlen(i8* %83) #10
  %84 = load i8*, i8** %qp, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %84, i64 %call86
  store i8 62, i8* %arrayidx87, align 1, !tbaa !15
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %if.end.81
  %85 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i8** %qp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %if.end.93

if.else.89:                                       ; preds = %if.else.60
  %arraydecay90 = getelementptr inbounds [2048 x i8], [2048 x i8]* %frbuf, i32 0, i32 0
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %88 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_user91 = getelementptr inbounds %struct.address, %struct.address* %88, i32 0, i32 1
  %89 = load i8*, i8** %q_user91, align 8, !tbaa !30
  %90 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %call92 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay90, i64 2048, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* %87, i8* %89, i8* %90)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.89, %if.end.88
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.56
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.47
  %91 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %91, i32 0, i32 52
  %92 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !36
  %arraydecay96 = getelementptr inbounds [2048 x i8], [2048 x i8]* %frbuf, i32 0, i32 0
  %call97 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %92, i8* %arraydecay96)
  %93 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_finalrcpt98 = getelementptr inbounds %struct.address, %struct.address* %93, i32 0, i32 15
  store i8* %call97, i8** %q_finalrcpt98, align 8, !tbaa !27
  %94 = bitcast [2048 x i8]* %frbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %94) #1
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.95, %land.lhs.true.33, %for.end
  %95 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %96 = load i32, i32* @MaxAliasRecursion, align 4, !tbaa !5
  %cmp100 = icmp sgt i32 %95, %96
  br i1 %cmp100, label %if.then.102, label %if.end.123

if.then.102:                                      ; preds = %if.end.99
  %97 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state103 = getelementptr inbounds %struct.address, %struct.address* %97, i32 0, i32 21
  store i16 2, i16* %q_state103, align 2, !tbaa !25
  %98 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status = getelementptr inbounds %struct.address, %struct.address* %98, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8** %q_status, align 8, !tbaa !37
  %99 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias104 = getelementptr inbounds %struct.address, %struct.address* %99, i32 0, i32 11
  %100 = load %struct.address*, %struct.address** %q_alias104, align 8, !tbaa !23
  %cmp105 = icmp ne %struct.address* %100, null
  br i1 %cmp105, label %if.then.107, label %if.end.112

if.then.107:                                      ; preds = %if.then.102
  %101 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias108 = getelementptr inbounds %struct.address, %struct.address* %101, i32 0, i32 11
  %102 = load %struct.address*, %struct.address** %q_alias108, align 8, !tbaa !23
  %q_state109 = getelementptr inbounds %struct.address, %struct.address* %102, i32 0, i32 21
  store i16 2, i16* %q_state109, align 2, !tbaa !25
  %103 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias110 = getelementptr inbounds %struct.address, %struct.address* %103, i32 0, i32 11
  %104 = load %struct.address*, %struct.address** %q_alias110, align 8, !tbaa !23
  %q_status111 = getelementptr inbounds %struct.address, %struct.address* %104, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8** %q_status111, align 8, !tbaa !37
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.107, %if.then.102
  %105 = load i32, i32* @SuprErrs, align 4, !tbaa !5
  %tobool113 = icmp ne i32 %105, 0
  br i1 %tobool113, label %land.lhs.true.115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.112
  %106 = load i32, i32* @LogUsrErrs, align 4, !tbaa !5
  %tobool114 = icmp ne i32 %106, 0
  br i1 %tobool114, label %if.end.121, label %land.lhs.true.115

land.lhs.true.115:                                ; preds = %lor.lhs.false, %if.end.112
  %107 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp116 = icmp sgt i32 %107, 0
  br i1 %cmp116, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %land.lhs.true.115
  %108 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %108, i32 0, i32 25
  %109 = load i8*, i8** %e_id, align 8, !tbaa !38
  %110 = load i8*, i8** @FileName, align 8, !tbaa !1
  %cmp119 = icmp ne i8* %110, null
  br i1 %cmp119, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.118
  %111 = load i8*, i8** @FileName, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then.118
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %111, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), %cond.false ]
  %112 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %113 = load i32, i32* @MaxAliasRecursion, align 4, !tbaa !5
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %109, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i32 0, i32 0), i8* %cond, i32 %112, i32 %113)
  br label %if.end.121

if.end.121:                                       ; preds = %cond.end, %land.lhs.true.115, %lor.lhs.false
  %114 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status122 = getelementptr inbounds %struct.address, %struct.address* %114, i32 0, i32 17
  %115 = load i8*, i8** %q_status122, align 8, !tbaa !37
  %116 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %117 = load i32, i32* @MaxAliasRecursion, align 4, !tbaa !5
  call void (i8*, i8*, ...) @usrerrenh(i8* %115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i32 0, i32 0), i32 %116, i32 %117)
  %118 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  store %struct.address* %118, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.823

if.end.123:                                       ; preds = %if.end.99
  %119 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_user124 = getelementptr inbounds %struct.address, %struct.address* %119, i32 0, i32 1
  %120 = load i8*, i8** %q_user124, align 8, !tbaa !30
  %call125 = call i64 @strlen(i8* %120) #10
  %conv126 = trunc i64 %call125 to i32
  store i32 %conv126, i32* %i, align 4, !tbaa !5
  %121 = load i32, i32* %i, align 4, !tbaa !5
  %conv127 = sext i32 %121 to i64
  %cmp128 = icmp uge i64 %conv127, 257
  br i1 %cmp128, label %if.then.130, label %if.else.132

if.then.130:                                      ; preds = %if.end.123
  %122 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %122, 1
  store i32 %add, i32* %buflen, align 4, !tbaa !5
  %123 = load i32, i32* %buflen, align 4, !tbaa !5
  %call131 = call i8* @xalloc_tagged(i32 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 638)
  store i8* %call131, i8** %buf, align 8, !tbaa !1
  br label %if.end.134

if.else.132:                                      ; preds = %if.end.123
  %arraydecay133 = getelementptr inbounds [257 x i8], [257 x i8]* %buf0, i32 0, i32 0
  store i8* %arraydecay133, i8** %buf, align 8, !tbaa !1
  store i32 257, i32* %buflen, align 4, !tbaa !5
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.132, %if.then.130
  %124 = load i8*, i8** %buf, align 8, !tbaa !1
  %125 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_user135 = getelementptr inbounds %struct.address, %struct.address* %125, i32 0, i32 1
  %126 = load i8*, i8** %q_user135, align 8, !tbaa !30
  %127 = load i32, i32* %buflen, align 4, !tbaa !5
  %conv136 = sext i32 %127 to i64
  %call137 = call i64 @sm_strlcpy(i8* %124, i8* %126, i64 %conv136)
  %128 = load i8*, i8** %buf, align 8, !tbaa !1
  store i8* %128, i8** %p, align 8, !tbaa !1
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.149, %if.end.134
  %129 = load i8*, i8** %p, align 8, !tbaa !1
  %130 = load i8, i8* %129, align 1, !tbaa !15
  %conv139 = sext i8 %130 to i32
  %cmp140 = icmp ne i32 %conv139, 0
  br i1 %cmp140, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.138
  %131 = load i32, i32* %quoted, align 4, !tbaa !5
  %tobool142 = icmp ne i32 %131, 0
  %lnot = xor i1 %tobool142, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.138
  %132 = phi i1 [ false, %for.cond.138 ], [ %lnot, %land.rhs ]
  br i1 %132, label %for.body.143, label %for.end.151

for.body.143:                                     ; preds = %land.end
  %133 = load i8*, i8** %p, align 8, !tbaa !1
  %134 = load i8, i8* %133, align 1, !tbaa !15
  %conv144 = sext i8 %134 to i32
  %cmp145 = icmp eq i32 %conv144, 92
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %for.body.143
  store i32 1, i32* %quoted, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %for.body.143
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.148
  %135 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr150 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr150, i8** %p, align 8, !tbaa !1
  br label %for.cond.138

for.end.151:                                      ; preds = %land.end
  %136 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @stripquotes(i8* %136)
  %137 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %138 = load %struct.mailer*, %struct.mailer** @ProgMailer, align 8, !tbaa !1
  %cmp152 = icmp eq %struct.mailer* %137, %138
  br i1 %cmp152, label %if.then.154, label %if.end.203

if.then.154:                                      ; preds = %for.end.151
  %139 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias155 = getelementptr inbounds %struct.address, %struct.address* %139, i32 0, i32 11
  %140 = load %struct.address*, %struct.address** %q_alias155, align 8, !tbaa !23
  %cmp156 = icmp eq %struct.address* %140, null
  br i1 %cmp156, label %if.then.163, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %if.then.154
  %141 = load i32, i32* @UseMSP, align 4, !tbaa !5
  %tobool159 = icmp ne i32 %141, 0
  br i1 %tobool159, label %if.then.163, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false.158
  %142 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %142, i32 0, i32 11
  %143 = load i64, i64* %e_flags, align 8, !tbaa !16
  %and = and i64 %143, 134217728
  %cmp161 = icmp ne i64 %and, 0
  br i1 %cmp161, label %if.then.163, label %if.else.167

if.then.163:                                      ; preds = %lor.lhs.false.160, %lor.lhs.false.158, %if.then.154
  %144 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state164 = getelementptr inbounds %struct.address, %struct.address* %144, i32 0, i32 21
  store i16 2, i16* %q_state164, align 2, !tbaa !25
  %145 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status165 = getelementptr inbounds %struct.address, %struct.address* %145, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %q_status165, align 8, !tbaa !37
  %146 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status166 = getelementptr inbounds %struct.address, %struct.address* %146, i32 0, i32 17
  %147 = load i8*, i8** %q_status166, align 8, !tbaa !37
  call void (i8*, i8*, ...) @usrerrenh(i8* %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.202

if.else.167:                                      ; preds = %lor.lhs.false.160
  %148 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias168 = getelementptr inbounds %struct.address, %struct.address* %148, i32 0, i32 11
  %149 = load %struct.address*, %struct.address** %q_alias168, align 8, !tbaa !23
  %q_flags169 = getelementptr inbounds %struct.address, %struct.address* %149, i32 0, i32 5
  %150 = load i64, i64* %q_flags169, align 8, !tbaa !24
  %and170 = and i64 %150, 16
  %cmp171 = icmp ne i64 %and170, 0
  br i1 %cmp171, label %if.then.173, label %if.else.188

if.then.173:                                      ; preds = %if.else.167
  %151 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state174 = getelementptr inbounds %struct.address, %struct.address* %151, i32 0, i32 21
  store i16 2, i16* %q_state174, align 2, !tbaa !25
  %152 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status175 = getelementptr inbounds %struct.address, %struct.address* %152, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %q_status175, align 8, !tbaa !37
  %153 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias176 = getelementptr inbounds %struct.address, %struct.address* %153, i32 0, i32 11
  %154 = load %struct.address*, %struct.address** %q_alias176, align 8, !tbaa !23
  %q_ruser = getelementptr inbounds %struct.address, %struct.address* %154, i32 0, i32 2
  %155 = load i8*, i8** %q_ruser, align 8, !tbaa !39
  %cmp177 = icmp eq i8* %155, null
  br i1 %cmp177, label %if.then.179, label %if.else.183

if.then.179:                                      ; preds = %if.then.173
  %156 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status180 = getelementptr inbounds %struct.address, %struct.address* %156, i32 0, i32 17
  %157 = load i8*, i8** %q_status180, align 8, !tbaa !37
  %158 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias181 = getelementptr inbounds %struct.address, %struct.address* %158, i32 0, i32 11
  %159 = load %struct.address*, %struct.address** %q_alias181, align 8, !tbaa !23
  %q_uid = getelementptr inbounds %struct.address, %struct.address* %159, i32 0, i32 6
  %160 = load i32, i32* %q_uid, align 4, !tbaa !40
  %conv182 = zext i32 %160 to i64
  call void (i8*, i8*, ...) @usrerrenh(i8* %157, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), i64 %conv182)
  br label %if.end.187

if.else.183:                                      ; preds = %if.then.173
  %161 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status184 = getelementptr inbounds %struct.address, %struct.address* %161, i32 0, i32 17
  %162 = load i8*, i8** %q_status184, align 8, !tbaa !37
  %163 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias185 = getelementptr inbounds %struct.address, %struct.address* %163, i32 0, i32 11
  %164 = load %struct.address*, %struct.address** %q_alias185, align 8, !tbaa !23
  %q_ruser186 = getelementptr inbounds %struct.address, %struct.address* %164, i32 0, i32 2
  %165 = load i8*, i8** %q_ruser186, align 8, !tbaa !39
  %166 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, i8*, ...) @usrerrenh(i8* %162, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.23, i32 0, i32 0), i8* %165, i8* %166)
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.183, %if.then.179
  br label %if.end.201

if.else.188:                                      ; preds = %if.else.167
  %167 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias189 = getelementptr inbounds %struct.address, %struct.address* %167, i32 0, i32 11
  %168 = load %struct.address*, %struct.address** %q_alias189, align 8, !tbaa !23
  %q_flags190 = getelementptr inbounds %struct.address, %struct.address* %168, i32 0, i32 5
  %169 = load i64, i64* %q_flags190, align 8, !tbaa !24
  %and191 = and i64 %169, 32
  %cmp192 = icmp ne i64 %and191, 0
  br i1 %cmp192, label %if.then.194, label %if.end.200

if.then.194:                                      ; preds = %if.else.188
  %170 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state195 = getelementptr inbounds %struct.address, %struct.address* %170, i32 0, i32 21
  store i16 2, i16* %q_state195, align 2, !tbaa !25
  %171 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status196 = getelementptr inbounds %struct.address, %struct.address* %171, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %q_status196, align 8, !tbaa !37
  %172 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_rstatus = getelementptr inbounds %struct.address, %struct.address* %172, i32 0, i32 18
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8** %q_rstatus, align 8, !tbaa !41
  %173 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status197 = getelementptr inbounds %struct.address, %struct.address* %173, i32 0, i32 17
  %174 = load i8*, i8** %q_status197, align 8, !tbaa !37
  %175 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias198 = getelementptr inbounds %struct.address, %struct.address* %175, i32 0, i32 11
  %176 = load %struct.address*, %struct.address** %q_alias198, align 8, !tbaa !23
  %q_paddr199 = getelementptr inbounds %struct.address, %struct.address* %176, i32 0, i32 0
  %177 = load i8*, i8** %q_paddr199, align 8, !tbaa !29
  call void (i8*, i8*, ...) @usrerrenh(i8* %174, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0), i8* %177)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.194, %if.else.188
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.187
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.then.163
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %for.end.151
  store %struct.address** null, %struct.address*** %prev, align 8, !tbaa !1
  %178 = load i32, i32* @UseMSP, align 4, !tbaa !5
  %tobool204 = icmp ne i32 %178, 0
  br i1 %tobool204, label %if.then.225, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %if.end.203
  %179 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendmode = getelementptr inbounds %struct.envelope, %struct.envelope* %179, i32 0, i32 16
  %180 = load i16, i16* %e_sendmode, align 2, !tbaa !42
  %conv206 = sext i16 %180 to i32
  %cmp207 = icmp eq i32 %conv206, 113
  br i1 %cmp207, label %if.then.225, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %lor.lhs.false.205
  %181 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendmode210 = getelementptr inbounds %struct.envelope, %struct.envelope* %181, i32 0, i32 16
  %182 = load i16, i16* %e_sendmode210, align 2, !tbaa !42
  %conv211 = sext i16 %182 to i32
  %cmp212 = icmp eq i32 %conv211, 100
  br i1 %cmp212, label %if.then.225, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %lor.lhs.false.209
  %183 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags215 = getelementptr inbounds %struct.envelope, %struct.envelope* %183, i32 0, i32 11
  %184 = load i64, i64* %e_flags215, align 8, !tbaa !16
  %and216 = and i64 %184, 67108864
  %cmp217 = icmp ne i64 %and216, 0
  br i1 %cmp217, label %if.else.226, label %land.lhs.true.219

land.lhs.true.219:                                ; preds = %lor.lhs.false.214
  %185 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ntries = getelementptr inbounds %struct.envelope, %struct.envelope* %185, i32 0, i32 43
  %186 = load i32, i32* %e_ntries, align 4, !tbaa !43
  %cmp220 = icmp eq i32 %186, 0
  br i1 %cmp220, label %land.lhs.true.222, label %if.else.226

land.lhs.true.222:                                ; preds = %land.lhs.true.219
  %187 = load i32, i32* @FastSplit, align 4, !tbaa !5
  %cmp223 = icmp sgt i32 %187, 0
  br i1 %cmp223, label %if.then.225, label %if.else.226

if.then.225:                                      ; preds = %land.lhs.true.222, %lor.lhs.false.209, %lor.lhs.false.205, %if.end.203
  store i32 (%struct.address*, %struct.address*)* @sorthost, i32 (%struct.address*, %struct.address*)** %sortfn, align 8, !tbaa !1
  br label %if.end.236

if.else.226:                                      ; preds = %land.lhs.true.222, %land.lhs.true.219, %lor.lhs.false.214
  %188 = load i32, i32* @NoConnect, align 4, !tbaa !5
  %tobool227 = icmp ne i32 %188, 0
  br i1 %tobool227, label %land.lhs.true.228, label %if.else.234

land.lhs.true.228:                                ; preds = %if.else.226
  %189 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_mailer229 = getelementptr inbounds %struct.address, %struct.address* %189, i32 0, i32 4
  %190 = load %struct.mailer*, %struct.mailer** %q_mailer229, align 8, !tbaa !31
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %190, i32 0, i32 5
  %arrayidx230 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %191 = load i32, i32* %arrayidx230, align 4, !tbaa !5
  %and231 = and i32 %191, 32
  %tobool232 = icmp ne i32 %and231, 0
  br i1 %tobool232, label %if.then.233, label %if.else.234

if.then.233:                                      ; preds = %land.lhs.true.228
  store i32 (%struct.address*, %struct.address*)* @sortexpensive, i32 (%struct.address*, %struct.address*)** %sortfn, align 8, !tbaa !1
  br label %if.end.235

if.else.234:                                      ; preds = %land.lhs.true.228, %if.else.226
  store i32 (%struct.address*, %struct.address*)* @sortbysignature, i32 (%struct.address*, %struct.address*)** %sortfn, align 8, !tbaa !1
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.234, %if.then.233
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.225
  %192 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  store %struct.address** %192, %struct.address*** %pq, align 8, !tbaa !1
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.308, %if.end.236
  %193 = load %struct.address**, %struct.address*** %pq, align 8, !tbaa !1
  %194 = load %struct.address*, %struct.address** %193, align 8, !tbaa !1
  store %struct.address* %194, %struct.address** %q, align 8, !tbaa !1
  %cmp238 = icmp ne %struct.address* %194, null
  br i1 %cmp238, label %for.body.240, label %for.end.309

for.body.240:                                     ; preds = %for.cond.237
  %195 = load i32 (%struct.address*, %struct.address*)*, i32 (%struct.address*, %struct.address*)** %sortfn, align 8, !tbaa !1
  %196 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %197 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %call241 = call i32 %195(%struct.address* %196, %struct.address* %197)
  store i32 %call241, i32* %i, align 4, !tbaa !5
  %198 = load i32, i32* %i, align 4, !tbaa !5
  %cmp242 = icmp eq i32 %198, 0
  br i1 %cmp242, label %if.then.244, label %if.else.302

if.then.244:                                      ; preds = %for.body.240
  %199 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %200 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %call245 = call i32 @sameaddr(%struct.address* %199, %struct.address* %200)
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %land.lhs.true.247, label %if.end.301

land.lhs.true.247:                                ; preds = %if.then.244
  %201 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags248 = getelementptr inbounds %struct.address, %struct.address* %201, i32 0, i32 5
  %202 = load i64, i64* %q_flags248, align 8, !tbaa !24
  %and249 = and i64 %202, 2147483648
  %cmp250 = icmp ne i64 %and249, 0
  br i1 %cmp250, label %if.then.257, label %lor.lhs.false.252

lor.lhs.false.252:                                ; preds = %land.lhs.true.247
  %203 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags253 = getelementptr inbounds %struct.address, %struct.address* %203, i32 0, i32 5
  %204 = load i64, i64* %q_flags253, align 8, !tbaa !24
  %and254 = and i64 %204, 2
  %cmp255 = icmp ne i64 %and254, 0
  br i1 %cmp255, label %if.end.301, label %if.then.257

if.then.257:                                      ; preds = %lor.lhs.false.252, %land.lhs.true.247
  %205 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 26), align 1, !tbaa !15
  %conv258 = zext i8 %205 to i32
  %cmp259 = icmp sge i32 %conv258, 1
  br i1 %cmp259, label %land.lhs.true.261, label %if.end.266

land.lhs.true.261:                                ; preds = %if.then.257
  %206 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool262 = icmp ne i32 %206, 0
  br i1 %tobool262, label %if.end.266, label %if.then.263

if.then.263:                                      ; preds = %land.lhs.true.261
  %207 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_paddr264 = getelementptr inbounds %struct.address, %struct.address* %207, i32 0, i32 0
  %208 = load i8*, i8** %q_paddr264, align 8, !tbaa !29
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* %208)
  %call265 = call %struct.sm_file* @sm_debug_file()
  %209 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call265, %struct.address* %209, i32 0)
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.263, %land.lhs.true.261, %if.then.257
  %210 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags267 = getelementptr inbounds %struct.address, %struct.address* %210, i32 0, i32 5
  %211 = load i64, i64* %q_flags267, align 8, !tbaa !24
  %and268 = and i64 %211, 2
  %cmp269 = icmp ne i64 %and268, 0
  br i1 %cmp269, label %if.else.283, label %if.then.271

if.then.271:                                      ; preds = %if.end.266
  %212 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state272 = getelementptr inbounds %struct.address, %struct.address* %212, i32 0, i32 21
  %213 = load i16, i16* %q_state272, align 2, !tbaa !25
  %conv273 = sext i16 %213 to i32
  %cmp274 = icmp sge i32 %conv273, 6
  br i1 %cmp274, label %if.else.277, label %if.then.276

if.then.276:                                      ; preds = %if.then.271
  call void (i8*, ...) @message(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.279

if.else.277:                                      ; preds = %if.then.271
  %214 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state278 = getelementptr inbounds %struct.address, %struct.address* %214, i32 0, i32 21
  store i16 13, i16* %q_state278, align 2, !tbaa !25
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.277, %if.then.276
  %215 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags280 = getelementptr inbounds %struct.address, %struct.address* %215, i32 0, i32 5
  %216 = load i64, i64* %q_flags280, align 8, !tbaa !24
  %217 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags281 = getelementptr inbounds %struct.address, %struct.address* %217, i32 0, i32 5
  %218 = load i64, i64* %q_flags281, align 8, !tbaa !24
  %or282 = or i64 %218, %216
  store i64 %or282, i64* %q_flags281, align 8, !tbaa !24
  br label %if.end.300

if.else.283:                                      ; preds = %if.end.266
  %219 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags284 = getelementptr inbounds %struct.address, %struct.address* %219, i32 0, i32 5
  %220 = load i64, i64* %q_flags284, align 8, !tbaa !24
  %and285 = and i64 %220, 8
  %cmp286 = icmp ne i64 %and285, 0
  br i1 %cmp286, label %if.then.293, label %lor.lhs.false.288

lor.lhs.false.288:                                ; preds = %if.else.283
  %221 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state289 = getelementptr inbounds %struct.address, %struct.address* %221, i32 0, i32 21
  %222 = load i16, i16* %q_state289, align 2, !tbaa !25
  %conv290 = sext i16 %222 to i32
  %cmp291 = icmp eq i32 %conv290, 12
  br i1 %cmp291, label %if.then.293, label %if.end.299

if.then.293:                                      ; preds = %lor.lhs.false.288, %if.else.283
  %223 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state294 = getelementptr inbounds %struct.address, %struct.address* %223, i32 0, i32 21
  %224 = load i16, i16* %q_state294, align 2, !tbaa !25
  %225 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state295 = getelementptr inbounds %struct.address, %struct.address* %225, i32 0, i32 21
  store i16 %224, i16* %q_state295, align 2, !tbaa !25
  %226 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags296 = getelementptr inbounds %struct.address, %struct.address* %226, i32 0, i32 5
  %227 = load i64, i64* %q_flags296, align 8, !tbaa !24
  %228 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags297 = getelementptr inbounds %struct.address, %struct.address* %228, i32 0, i32 5
  %229 = load i64, i64* %q_flags297, align 8, !tbaa !24
  %or298 = or i64 %229, %227
  store i64 %or298, i64* %q_flags297, align 8, !tbaa !24
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.293, %lor.lhs.false.288
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.end.279
  %230 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  store %struct.address* %230, %struct.address** %new.addr, align 8, !tbaa !1
  br label %done

if.end.301:                                       ; preds = %lor.lhs.false.252, %if.then.244
  br label %if.end.307

if.else.302:                                      ; preds = %for.body.240
  %231 = load i32, i32* %i, align 4, !tbaa !5
  %cmp303 = icmp slt i32 %231, 0
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.else.302
  store i32 1, i32* %insert, align 4, !tbaa !5
  br label %for.end.309

if.end.306:                                       ; preds = %if.else.302
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.end.301
  %232 = load %struct.address**, %struct.address*** %pq, align 8, !tbaa !1
  store %struct.address** %232, %struct.address*** %prev, align 8, !tbaa !1
  br label %for.inc.308

for.inc.308:                                      ; preds = %if.end.307
  %233 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %233, i32 0, i32 10
  store %struct.address** %q_next, %struct.address*** %pq, align 8, !tbaa !1
  br label %for.cond.237

for.end.309:                                      ; preds = %if.then.305, %for.cond.237
  %234 = load %struct.address**, %struct.address*** %pq, align 8, !tbaa !1
  %cmp310 = icmp ne %struct.address** %234, null
  br i1 %cmp310, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end.309
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 784, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %235, %for.end.309
  %236 = phi i1 [ true, %for.end.309 ], [ false, %235 ]
  %lor.ext = zext i1 %236 to i32
  %237 = load i32, i32* %insert, align 4, !tbaa !5
  %tobool312 = icmp ne i32 %237, 0
  br i1 %tobool312, label %if.then.313, label %if.else.321

if.then.313:                                      ; preds = %lor.end
  %238 = load %struct.address**, %struct.address*** %pq, align 8, !tbaa !1
  %239 = load %struct.address*, %struct.address** %238, align 8, !tbaa !1
  %240 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_next314 = getelementptr inbounds %struct.address, %struct.address* %240, i32 0, i32 10
  store %struct.address* %239, %struct.address** %q_next314, align 8, !tbaa !22
  %241 = load %struct.address**, %struct.address*** %prev, align 8, !tbaa !1
  %cmp315 = icmp eq %struct.address** %241, null
  br i1 %cmp315, label %if.then.317, label %if.else.318

if.then.317:                                      ; preds = %if.then.313
  %242 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %243 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  store %struct.address* %242, %struct.address** %243, align 8, !tbaa !1
  br label %if.end.320

if.else.318:                                      ; preds = %if.then.313
  %244 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %245 = load %struct.address**, %struct.address*** %prev, align 8, !tbaa !1
  %246 = load %struct.address*, %struct.address** %245, align 8, !tbaa !1
  %q_next319 = getelementptr inbounds %struct.address, %struct.address* %246, i32 0, i32 10
  store %struct.address* %244, %struct.address** %q_next319, align 8, !tbaa !22
  br label %if.end.320

if.end.320:                                       ; preds = %if.else.318, %if.then.317
  br label %if.end.323

if.else.321:                                      ; preds = %lor.end
  %247 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_next322 = getelementptr inbounds %struct.address, %struct.address* %247, i32 0, i32 10
  store %struct.address* null, %struct.address** %q_next322, align 8, !tbaa !22
  %248 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %249 = load %struct.address**, %struct.address*** %pq, align 8, !tbaa !1
  store %struct.address* %248, %struct.address** %249, align 8, !tbaa !1
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.321, %if.end.320
  %250 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags324 = getelementptr inbounds %struct.envelope, %struct.envelope* %250, i32 0, i32 11
  %251 = load i64, i64* %e_flags324, align 8, !tbaa !16
  %and325 = and i64 %251, -67108865
  store i64 %and325, i64* %e_flags324, align 8, !tbaa !16
  br label %trylocaluser

trylocaluser:                                     ; preds = %cleanup, %if.end.323
  %252 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv326 = zext i8 %252 to i32
  %cmp327 = icmp sge i32 %conv326, 7
  br i1 %cmp327, label %land.lhs.true.329, label %if.end.333

land.lhs.true.329:                                ; preds = %trylocaluser
  %253 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool330 = icmp ne i32 %253, 0
  br i1 %tobool330, label %if.end.333, label %if.then.331

if.then.331:                                      ; preds = %land.lhs.true.329
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0))
  %call332 = call %struct.sm_file* @sm_debug_file()
  %254 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call332, %struct.address* %254, i32 0)
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.331, %land.lhs.true.329, %trylocaluser
  %255 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state334 = getelementptr inbounds %struct.address, %struct.address* %255, i32 0, i32 21
  %256 = load i16, i16* %q_state334, align 2, !tbaa !25
  %conv335 = sext i16 %256 to i32
  %cmp336 = icmp eq i32 %conv335, 0
  br i1 %cmp336, label %if.end.360, label %if.then.338

if.then.338:                                      ; preds = %if.end.333
  %257 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state339 = getelementptr inbounds %struct.address, %struct.address* %257, i32 0, i32 21
  %258 = load i16, i16* %q_state339, align 2, !tbaa !25
  %conv340 = sext i16 %258 to i32
  %cmp341 = icmp eq i32 %conv340, 0
  br i1 %cmp341, label %if.then.358, label %lor.lhs.false.343

lor.lhs.false.343:                                ; preds = %if.then.338
  %259 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state344 = getelementptr inbounds %struct.address, %struct.address* %259, i32 0, i32 21
  %260 = load i16, i16* %q_state344, align 2, !tbaa !25
  %conv345 = sext i16 %260 to i32
  %cmp346 = icmp eq i32 %conv345, 3
  br i1 %cmp346, label %if.then.358, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %lor.lhs.false.343
  %261 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state349 = getelementptr inbounds %struct.address, %struct.address* %261, i32 0, i32 21
  %262 = load i16, i16* %q_state349, align 2, !tbaa !25
  %conv350 = sext i16 %262 to i32
  %cmp351 = icmp eq i32 %conv350, 4
  br i1 %cmp351, label %if.then.358, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %lor.lhs.false.348
  %263 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state354 = getelementptr inbounds %struct.address, %struct.address* %263, i32 0, i32 21
  %264 = load i16, i16* %q_state354, align 2, !tbaa !25
  %conv355 = sext i16 %264 to i32
  %cmp356 = icmp eq i32 %conv355, 5
  br i1 %cmp356, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %lor.lhs.false.353, %lor.lhs.false.348, %lor.lhs.false.343, %if.then.338
  %265 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_nrcpts = getelementptr inbounds %struct.envelope, %struct.envelope* %265, i32 0, i32 12
  %266 = load i32, i32* %e_nrcpts, align 4, !tbaa !44
  %inc = add nsw i32 %266, 1
  store i32 %inc, i32* %e_nrcpts, align 4, !tbaa !44
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.358, %lor.lhs.false.353
  br label %testselfdestruct

if.end.360:                                       ; preds = %if.end.333
  %267 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %268 = load %struct.mailer*, %struct.mailer** @InclMailer, align 8, !tbaa !1
  %cmp361 = icmp eq %struct.mailer* %267, %268
  br i1 %cmp361, label %if.then.363, label %if.else.411

if.then.363:                                      ; preds = %if.end.360
  %269 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state364 = getelementptr inbounds %struct.address, %struct.address* %269, i32 0, i32 21
  store i16 14, i16* %q_state364, align 2, !tbaa !25
  %270 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias365 = getelementptr inbounds %struct.address, %struct.address* %270, i32 0, i32 11
  %271 = load %struct.address*, %struct.address** %q_alias365, align 8, !tbaa !23
  %cmp366 = icmp eq %struct.address* %271, null
  br i1 %cmp366, label %if.then.375, label %lor.lhs.false.368

lor.lhs.false.368:                                ; preds = %if.then.363
  %272 = load i32, i32* @UseMSP, align 4, !tbaa !5
  %tobool369 = icmp ne i32 %272, 0
  br i1 %tobool369, label %if.then.375, label %lor.lhs.false.370

lor.lhs.false.370:                                ; preds = %lor.lhs.false.368
  %273 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags371 = getelementptr inbounds %struct.envelope, %struct.envelope* %273, i32 0, i32 11
  %274 = load i64, i64* %e_flags371, align 8, !tbaa !16
  %and372 = and i64 %274, 134217728
  %cmp373 = icmp ne i64 %and372, 0
  br i1 %cmp373, label %if.then.375, label %if.else.379

if.then.375:                                      ; preds = %lor.lhs.false.370, %lor.lhs.false.368, %if.then.363
  %275 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state376 = getelementptr inbounds %struct.address, %struct.address* %275, i32 0, i32 21
  store i16 2, i16* %q_state376, align 2, !tbaa !25
  %276 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status377 = getelementptr inbounds %struct.address, %struct.address* %276, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %q_status377, align 8, !tbaa !37
  %277 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status378 = getelementptr inbounds %struct.address, %struct.address* %277, i32 0, i32 17
  %278 = load i8*, i8** %q_status378, align 8, !tbaa !37
  call void (i8*, i8*, ...) @usrerrenh(i8* %278, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.410

if.else.379:                                      ; preds = %lor.lhs.false.370
  %279 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %279) #1
  %280 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_user380 = getelementptr inbounds %struct.address, %struct.address* %280, i32 0, i32 1
  %281 = load i8*, i8** %q_user380, align 8, !tbaa !30
  call void (i8*, ...) @message(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* %281)
  %282 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_user381 = getelementptr inbounds %struct.address, %struct.address* %282, i32 0, i32 1
  %283 = load i8*, i8** %q_user381, align 8, !tbaa !30
  %284 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %285 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  %286 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %287 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call382 = call i32 @include(i8* %283, i32 0, %struct.address* %284, %struct.address** %285, i32 %286, %struct.envelope* %287)
  store i32 %call382, i32* %ret, align 4, !tbaa !5
  %288 = load i32, i32* %ret, align 4, !tbaa !5
  %call383 = call i32 @transienterror(i32 %288)
  %tobool384 = icmp ne i32 %call383, 0
  br i1 %tobool384, label %if.then.385, label %if.else.398

if.then.385:                                      ; preds = %if.else.379
  %289 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp386 = icmp sgt i32 %289, 2
  br i1 %cmp386, label %if.then.388, label %if.end.393

if.then.388:                                      ; preds = %if.then.385
  %290 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id389 = getelementptr inbounds %struct.envelope, %struct.envelope* %290, i32 0, i32 25
  %291 = load i8*, i8** %e_id389, align 8, !tbaa !38
  %292 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_user390 = getelementptr inbounds %struct.address, %struct.address* %292, i32 0, i32 1
  %293 = load i8*, i8** %q_user390, align 8, !tbaa !30
  %call391 = call i8* @shortenstring(i8* %293, i64 203)
  %294 = load i32, i32* %ret, align 4, !tbaa !5
  %call392 = call i8* @sm_errstring(i32 %294)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %291, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* %call391, i8* %call392)
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.388, %if.then.385
  %295 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state394 = getelementptr inbounds %struct.address, %struct.address* %295, i32 0, i32 21
  store i16 3, i16* %q_state394, align 2, !tbaa !25
  %296 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_user395 = getelementptr inbounds %struct.address, %struct.address* %296, i32 0, i32 1
  %297 = load i8*, i8** %q_user395, align 8, !tbaa !30
  %call396 = call i8* @shortenstring(i8* %297, i64 203)
  %298 = load i32, i32* %ret, align 4, !tbaa !5
  %call397 = call i8* @sm_errstring(i32 %298)
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i8* %call396, i8* %call397)
  br label %if.end.409

if.else.398:                                      ; preds = %if.else.379
  %299 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp399 = icmp ne i32 %299, 0
  br i1 %cmp399, label %if.then.401, label %if.end.408

if.then.401:                                      ; preds = %if.else.398
  %300 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state402 = getelementptr inbounds %struct.address, %struct.address* %300, i32 0, i32 21
  store i16 2, i16* %q_state402, align 2, !tbaa !25
  %301 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status403 = getelementptr inbounds %struct.address, %struct.address* %301, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8** %q_status403, align 8, !tbaa !37
  %302 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status404 = getelementptr inbounds %struct.address, %struct.address* %302, i32 0, i32 17
  %303 = load i8*, i8** %q_status404, align 8, !tbaa !37
  %304 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_user405 = getelementptr inbounds %struct.address, %struct.address* %304, i32 0, i32 1
  %305 = load i8*, i8** %q_user405, align 8, !tbaa !30
  %call406 = call i8* @shortenstring(i8* %305, i64 203)
  %306 = load i32, i32* %ret, align 4, !tbaa !5
  %call407 = call i8* @sm_errstring(i32 %306)
  call void (i8*, i8*, ...) @usrerrenh(i8* %303, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), i8* %call406, i8* %call407)
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.401, %if.else.398
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.end.393
  %307 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.then.375
  br label %if.end.469

if.else.411:                                      ; preds = %if.end.360
  %308 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %309 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  %cmp412 = icmp eq %struct.mailer* %308, %309
  br i1 %cmp412, label %if.then.414, label %if.end.468

if.then.414:                                      ; preds = %if.else.411
  %310 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias415 = getelementptr inbounds %struct.address, %struct.address* %310, i32 0, i32 11
  %311 = load %struct.address*, %struct.address** %q_alias415, align 8, !tbaa !23
  %cmp416 = icmp eq %struct.address* %311, null
  br i1 %cmp416, label %if.then.425, label %lor.lhs.false.418

lor.lhs.false.418:                                ; preds = %if.then.414
  %312 = load i32, i32* @UseMSP, align 4, !tbaa !5
  %tobool419 = icmp ne i32 %312, 0
  br i1 %tobool419, label %if.then.425, label %lor.lhs.false.420

lor.lhs.false.420:                                ; preds = %lor.lhs.false.418
  %313 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags421 = getelementptr inbounds %struct.envelope, %struct.envelope* %313, i32 0, i32 11
  %314 = load i64, i64* %e_flags421, align 8, !tbaa !16
  %and422 = and i64 %314, 134217728
  %cmp423 = icmp ne i64 %and422, 0
  br i1 %cmp423, label %if.then.425, label %if.else.429

if.then.425:                                      ; preds = %lor.lhs.false.420, %lor.lhs.false.418, %if.then.414
  %315 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state426 = getelementptr inbounds %struct.address, %struct.address* %315, i32 0, i32 21
  store i16 2, i16* %q_state426, align 2, !tbaa !25
  %316 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status427 = getelementptr inbounds %struct.address, %struct.address* %316, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %q_status427, align 8, !tbaa !37
  %317 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status428 = getelementptr inbounds %struct.address, %struct.address* %317, i32 0, i32 17
  %318 = load i8*, i8** %q_status428, align 8, !tbaa !37
  call void (i8*, i8*, ...) @usrerrenh(i8* %318, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.467

if.else.429:                                      ; preds = %lor.lhs.false.420
  %319 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias430 = getelementptr inbounds %struct.address, %struct.address* %319, i32 0, i32 11
  %320 = load %struct.address*, %struct.address** %q_alias430, align 8, !tbaa !23
  %q_flags431 = getelementptr inbounds %struct.address, %struct.address* %320, i32 0, i32 5
  %321 = load i64, i64* %q_flags431, align 8, !tbaa !24
  %and432 = and i64 %321, 16
  %cmp433 = icmp ne i64 %and432, 0
  br i1 %cmp433, label %if.then.435, label %if.else.452

if.then.435:                                      ; preds = %if.else.429
  %322 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state436 = getelementptr inbounds %struct.address, %struct.address* %322, i32 0, i32 21
  store i16 2, i16* %q_state436, align 2, !tbaa !25
  %323 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status437 = getelementptr inbounds %struct.address, %struct.address* %323, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %q_status437, align 8, !tbaa !37
  %324 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias438 = getelementptr inbounds %struct.address, %struct.address* %324, i32 0, i32 11
  %325 = load %struct.address*, %struct.address** %q_alias438, align 8, !tbaa !23
  %q_ruser439 = getelementptr inbounds %struct.address, %struct.address* %325, i32 0, i32 2
  %326 = load i8*, i8** %q_ruser439, align 8, !tbaa !39
  %cmp440 = icmp eq i8* %326, null
  br i1 %cmp440, label %if.then.442, label %if.else.447

if.then.442:                                      ; preds = %if.then.435
  %327 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status443 = getelementptr inbounds %struct.address, %struct.address* %327, i32 0, i32 17
  %328 = load i8*, i8** %q_status443, align 8, !tbaa !37
  %329 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias444 = getelementptr inbounds %struct.address, %struct.address* %329, i32 0, i32 11
  %330 = load %struct.address*, %struct.address** %q_alias444, align 8, !tbaa !23
  %q_uid445 = getelementptr inbounds %struct.address, %struct.address* %330, i32 0, i32 6
  %331 = load i32, i32* %q_uid445, align 4, !tbaa !40
  %conv446 = zext i32 %331 to i64
  call void (i8*, i8*, ...) @usrerrenh(i8* %328, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i32 0, i32 0), i64 %conv446)
  br label %if.end.451

if.else.447:                                      ; preds = %if.then.435
  %332 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status448 = getelementptr inbounds %struct.address, %struct.address* %332, i32 0, i32 17
  %333 = load i8*, i8** %q_status448, align 8, !tbaa !37
  %334 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias449 = getelementptr inbounds %struct.address, %struct.address* %334, i32 0, i32 11
  %335 = load %struct.address*, %struct.address** %q_alias449, align 8, !tbaa !23
  %q_ruser450 = getelementptr inbounds %struct.address, %struct.address* %335, i32 0, i32 2
  %336 = load i8*, i8** %q_ruser450, align 8, !tbaa !39
  %337 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, i8*, ...) @usrerrenh(i8* %333, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.38, i32 0, i32 0), i8* %336, i8* %337)
  br label %if.end.451

if.end.451:                                       ; preds = %if.else.447, %if.then.442
  br label %if.end.466

if.else.452:                                      ; preds = %if.else.429
  %338 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias453 = getelementptr inbounds %struct.address, %struct.address* %338, i32 0, i32 11
  %339 = load %struct.address*, %struct.address** %q_alias453, align 8, !tbaa !23
  %q_flags454 = getelementptr inbounds %struct.address, %struct.address* %339, i32 0, i32 5
  %340 = load i64, i64* %q_flags454, align 8, !tbaa !24
  %and455 = and i64 %340, 32
  %cmp456 = icmp ne i64 %and455, 0
  br i1 %cmp456, label %if.then.458, label %if.end.465

if.then.458:                                      ; preds = %if.else.452
  %341 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state459 = getelementptr inbounds %struct.address, %struct.address* %341, i32 0, i32 21
  store i16 2, i16* %q_state459, align 2, !tbaa !25
  %342 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status460 = getelementptr inbounds %struct.address, %struct.address* %342, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %q_status460, align 8, !tbaa !37
  %343 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_rstatus461 = getelementptr inbounds %struct.address, %struct.address* %343, i32 0, i32 18
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0), i8** %q_rstatus461, align 8, !tbaa !41
  %344 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status462 = getelementptr inbounds %struct.address, %struct.address* %344, i32 0, i32 17
  %345 = load i8*, i8** %q_status462, align 8, !tbaa !37
  %346 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias463 = getelementptr inbounds %struct.address, %struct.address* %346, i32 0, i32 11
  %347 = load %struct.address*, %struct.address** %q_alias463, align 8, !tbaa !23
  %q_paddr464 = getelementptr inbounds %struct.address, %struct.address* %347, i32 0, i32 0
  %348 = load i8*, i8** %q_paddr464, align 8, !tbaa !29
  call void (i8*, i8*, ...) @usrerrenh(i8* %345, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.40, i32 0, i32 0), i8* %348)
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.458, %if.else.452
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %if.end.451
  br label %if.end.467

if.end.467:                                       ; preds = %if.end.466, %if.then.425
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.467, %if.else.411
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %if.end.410
  %349 = load i32, i32* %quoted, align 4, !tbaa !5
  %tobool470 = icmp ne i32 %349, 0
  br i1 %tobool470, label %if.end.482, label %land.lhs.true.471

land.lhs.true.471:                                ; preds = %if.end.469
  %350 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state472 = getelementptr inbounds %struct.address, %struct.address* %350, i32 0, i32 21
  %351 = load i16, i16* %q_state472, align 2, !tbaa !25
  %conv473 = sext i16 %351 to i32
  %cmp474 = icmp eq i32 %conv473, 0
  br i1 %cmp474, label %land.lhs.true.476, label %if.end.482

land.lhs.true.476:                                ; preds = %land.lhs.true.471
  %352 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags477 = getelementptr inbounds %struct.mailer, %struct.mailer* %352, i32 0, i32 5
  %arrayidx478 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags477, i32 0, i64 2
  %353 = load i32, i32* %arrayidx478, align 4, !tbaa !5
  %and479 = and i32 %353, 2
  %tobool480 = icmp ne i32 %and479, 0
  br i1 %tobool480, label %if.then.481, label %if.end.482

if.then.481:                                      ; preds = %land.lhs.true.476
  %354 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %355 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  %356 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %357 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @alias(%struct.address* %354, %struct.address** %355, i32 %356, %struct.envelope* %357)
  br label %if.end.482

if.end.482:                                       ; preds = %if.then.481, %land.lhs.true.476, %land.lhs.true.471, %if.end.469
  %358 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv483 = zext i8 %358 to i32
  %cmp484 = icmp sge i32 %conv483, 5
  br i1 %cmp484, label %land.lhs.true.486, label %if.end.490

land.lhs.true.486:                                ; preds = %if.end.482
  %359 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool487 = icmp ne i32 %359, 0
  br i1 %tobool487, label %if.end.490, label %if.then.488

if.then.488:                                      ; preds = %land.lhs.true.486
  %360 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %361 = load %struct.rewrite*, %struct.rewrite** getelementptr inbounds ([200 x %struct.rewrite*], [200 x %struct.rewrite*]* @RewriteRules, i32 0, i64 5), align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0), i32 %360, %struct.rewrite* %361)
  %call489 = call %struct.sm_file* @sm_debug_file()
  %362 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call489, %struct.address* %362, i32 0)
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.488, %land.lhs.true.486, %if.end.482
  %363 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %cmp491 = icmp sge i32 %363, 2
  br i1 %cmp491, label %land.lhs.true.493, label %if.end.513

land.lhs.true.493:                                ; preds = %if.end.490
  %364 = load %struct.rewrite*, %struct.rewrite** getelementptr inbounds ([200 x %struct.rewrite*], [200 x %struct.rewrite*]* @RewriteRules, i32 0, i64 5), align 8, !tbaa !1
  %cmp494 = icmp ne %struct.rewrite* %364, null
  br i1 %cmp494, label %land.lhs.true.496, label %if.end.513

land.lhs.true.496:                                ; preds = %land.lhs.true.493
  %365 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags497 = getelementptr inbounds %struct.mailer, %struct.mailer* %365, i32 0, i32 5
  %arrayidx498 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags497, i32 0, i64 1
  %366 = load i32, i32* %arrayidx498, align 4, !tbaa !5
  %and499 = and i32 %366, 2097152
  %tobool500 = icmp ne i32 %and499, 0
  br i1 %tobool500, label %land.lhs.true.501, label %if.end.513

land.lhs.true.501:                                ; preds = %land.lhs.true.496
  %367 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags502 = getelementptr inbounds %struct.address, %struct.address* %367, i32 0, i32 5
  %368 = load i64, i64* %q_flags502, align 8, !tbaa !24
  %and503 = and i64 %368, 4
  %cmp504 = icmp ne i64 %and503, 0
  br i1 %cmp504, label %if.end.513, label %land.lhs.true.506

land.lhs.true.506:                                ; preds = %land.lhs.true.501
  %369 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state507 = getelementptr inbounds %struct.address, %struct.address* %369, i32 0, i32 21
  %370 = load i16, i16* %q_state507, align 2, !tbaa !25
  %conv508 = sext i16 %370 to i32
  %cmp509 = icmp eq i32 %conv508, 0
  br i1 %cmp509, label %if.then.511, label %if.end.513

if.then.511:                                      ; preds = %land.lhs.true.506
  %371 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %372 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  %373 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %add512 = add nsw i32 %373, 1
  %374 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @maplocaluser(%struct.address* %371, %struct.address** %372, i32 %add512, %struct.envelope* %374)
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.511, %land.lhs.true.506, %land.lhs.true.501, %land.lhs.true.496, %land.lhs.true.493, %if.end.490
  %375 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state514 = getelementptr inbounds %struct.address, %struct.address* %375, i32 0, i32 21
  %376 = load i16, i16* %q_state514, align 2, !tbaa !25
  %conv515 = sext i16 %376 to i32
  %cmp516 = icmp eq i32 %conv515, 0
  br i1 %cmp516, label %land.lhs.true.518, label %if.end.671

land.lhs.true.518:                                ; preds = %if.end.513
  %377 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %m_flags519 = getelementptr inbounds %struct.mailer, %struct.mailer* %377, i32 0, i32 5
  %arrayidx520 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags519, i32 0, i64 3
  %378 = load i32, i32* %arrayidx520, align 4, !tbaa !5
  %and521 = and i32 %378, 8388608
  %tobool522 = icmp ne i32 %and521, 0
  br i1 %tobool522, label %if.then.523, label %if.end.671

if.then.523:                                      ; preds = %land.lhs.true.518
  %379 = bitcast i32* %fuzzy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %379) #1
  %380 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.start(i64 8712, i8* %380) #1
  %381 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %381) #1
  %382 = load i8*, i8** %buf, align 8, !tbaa !1
  %call524 = call i32 @finduser(i8* %382, i32* %fuzzy, %struct.SM_MBDB_T* %user)
  store i32 %call524, i32* %status, align 4, !tbaa !5
  %383 = load i32, i32* %status, align 4, !tbaa !5
  switch i32 %383, label %sw.default [
    i32 75, label %sw.bb
    i32 0, label %sw.bb.534
  ]

sw.bb:                                            ; preds = %if.then.523
  %384 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state525 = getelementptr inbounds %struct.address, %struct.address* %384, i32 0, i32 21
  store i16 3, i16* %q_state525, align 2, !tbaa !25
  %385 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status526 = getelementptr inbounds %struct.address, %struct.address* %385, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8** %q_status526, align 8, !tbaa !37
  %386 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status527 = getelementptr inbounds %struct.address, %struct.address* %386, i32 0, i32 17
  %387 = load i8*, i8** %q_status527, align 8, !tbaa !37
  %388 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %389 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias528 = getelementptr inbounds %struct.address, %struct.address* %389, i32 0, i32 11
  %390 = load %struct.address*, %struct.address** %q_alias528, align 8, !tbaa !23
  %391 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %392 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  call void @giveresponse(i32 75, i8* %387, %struct.mailer* %388, %struct.mailer_con_info* null, %struct.address* %390, i64 0, %struct.envelope* %391, %struct.address* %392)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.523
  %393 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state529 = getelementptr inbounds %struct.address, %struct.address* %393, i32 0, i32 21
  store i16 2, i16* %q_state529, align 2, !tbaa !25
  %394 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status530 = getelementptr inbounds %struct.address, %struct.address* %394, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8** %q_status530, align 8, !tbaa !37
  %395 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_rstatus531 = getelementptr inbounds %struct.address, %struct.address* %395, i32 0, i32 18
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0), i8** %q_rstatus531, align 8, !tbaa !41
  %396 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status532 = getelementptr inbounds %struct.address, %struct.address* %396, i32 0, i32 17
  %397 = load i8*, i8** %q_status532, align 8, !tbaa !37
  %398 = load %struct.mailer*, %struct.mailer** %m, align 8, !tbaa !1
  %399 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias533 = getelementptr inbounds %struct.address, %struct.address* %399, i32 0, i32 11
  %400 = load %struct.address*, %struct.address** %q_alias533, align 8, !tbaa !23
  %401 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %402 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  call void @giveresponse(i32 67, i8* %397, %struct.mailer* %398, %struct.mailer_con_info* null, %struct.address* %400, i64 0, %struct.envelope* %401, %struct.address* %402)
  br label %sw.epilog

sw.bb.534:                                        ; preds = %if.then.523
  %403 = load i32, i32* %fuzzy, align 4, !tbaa !5
  %tobool535 = icmp ne i32 %403, 0
  br i1 %tobool535, label %if.then.536, label %if.end.555

if.then.536:                                      ; preds = %sw.bb.534
  %404 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool537 = getelementptr inbounds %struct.envelope, %struct.envelope* %404, i32 0, i32 52
  %405 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool537, align 8, !tbaa !36
  %mbdb_name = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 2
  %arraydecay538 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_name, i32 0, i32 0
  %call539 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %405, i8* %arraydecay538)
  %406 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_user540 = getelementptr inbounds %struct.address, %struct.address* %406, i32 0, i32 1
  store i8* %call539, i8** %q_user540, align 8, !tbaa !30
  %407 = load i32, i32* %findusercount, align 4, !tbaa !5
  %inc541 = add nsw i32 %407, 1
  store i32 %inc541, i32* %findusercount, align 4, !tbaa !5
  %cmp542 = icmp sgt i32 %407, 3
  br i1 %cmp542, label %if.then.544, label %if.end.550

if.then.544:                                      ; preds = %if.then.536
  %408 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state545 = getelementptr inbounds %struct.address, %struct.address* %408, i32 0, i32 21
  store i16 2, i16* %q_state545, align 2, !tbaa !25
  %409 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status546 = getelementptr inbounds %struct.address, %struct.address* %409, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8** %q_status546, align 8, !tbaa !37
  %410 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status547 = getelementptr inbounds %struct.address, %struct.address* %410, i32 0, i32 17
  %411 = load i8*, i8** %q_status547, align 8, !tbaa !37
  %mbdb_name548 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 2
  %arraydecay549 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_name548, i32 0, i32 0
  call void (i8*, i8*, ...) @usrerrenh(i8* %411, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay549)
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup

if.end.550:                                       ; preds = %if.then.536
  %412 = load i8*, i8** %buf, align 8, !tbaa !1
  %mbdb_name551 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 2
  %arraydecay552 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_name551, i32 0, i32 0
  %413 = load i32, i32* %buflen, align 4, !tbaa !5
  %conv553 = sext i32 %413 to i64
  %call554 = call i64 @sm_strlcpy(i8* %412, i8* %arraydecay552, i64 %conv553)
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup

if.end.555:                                       ; preds = %sw.bb.534
  %mbdb_homedir = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay556 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir, i32 0, i32 0
  %414 = load i8, i8* %arraydecay556, align 1, !tbaa !15
  %conv557 = sext i8 %414 to i32
  %cmp558 = icmp eq i32 %conv557, 0
  br i1 %cmp558, label %if.then.560, label %if.else.561

if.then.560:                                      ; preds = %if.end.555
  %415 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_home = getelementptr inbounds %struct.address, %struct.address* %415, i32 0, i32 8
  store i8* null, i8** %q_home, align 8, !tbaa !45
  br label %if.end.625

if.else.561:                                      ; preds = %if.end.555
  %416 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %416) #1
  %417 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %417) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.46 to i64)), i64 1), label %land.lhs.true.562, label %cond.false.608

land.lhs.true.562:                                ; preds = %if.else.561
  store i64 1, i64* %__s2_len, align 8, !tbaa !46
  %418 = load i64, i64* %__s2_len, align 8, !tbaa !46
  %cmp563 = icmp ult i64 %418, 4
  br i1 %cmp563, label %cond.true.565, label %cond.false.608

cond.true.565:                                    ; preds = %land.lhs.true.562
  %419 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %419) #1
  %mbdb_homedir567 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay568 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir567, i32 0, i32 0
  store i8* %arraydecay568, i8** %__s1, align 8, !tbaa !1
  %420 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %420) #1
  %421 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx570 = getelementptr inbounds i8, i8* %421, i64 0
  %422 = load i8, i8* %arrayidx570, align 1, !tbaa !15
  %conv571 = zext i8 %422 to i32
  %423 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), align 1, !tbaa !15
  %conv572 = zext i8 %423 to i32
  %sub573 = sub nsw i32 %conv571, %conv572
  store i32 %sub573, i32* %__result, align 4, !tbaa !5
  %424 = load i64, i64* %__s2_len, align 8, !tbaa !46
  %cmp574 = icmp ugt i64 %424, 0
  br i1 %cmp574, label %land.lhs.true.576, label %if.end.606

land.lhs.true.576:                                ; preds = %cond.true.565
  %425 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp577 = icmp eq i32 %425, 0
  br i1 %cmp577, label %if.then.579, label %if.end.606

if.then.579:                                      ; preds = %land.lhs.true.576
  %426 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx580 = getelementptr inbounds i8, i8* %426, i64 1
  %427 = load i8, i8* %arrayidx580, align 1, !tbaa !15
  %conv581 = zext i8 %427 to i32
  %428 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i64 1), align 1, !tbaa !15
  %conv582 = zext i8 %428 to i32
  %sub583 = sub nsw i32 %conv581, %conv582
  store i32 %sub583, i32* %__result, align 4, !tbaa !5
  %429 = load i64, i64* %__s2_len, align 8, !tbaa !46
  %cmp584 = icmp ugt i64 %429, 1
  br i1 %cmp584, label %land.lhs.true.586, label %if.end.605

land.lhs.true.586:                                ; preds = %if.then.579
  %430 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp587 = icmp eq i32 %430, 0
  br i1 %cmp587, label %if.then.589, label %if.end.605

if.then.589:                                      ; preds = %land.lhs.true.586
  %431 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx590 = getelementptr inbounds i8, i8* %431, i64 2
  %432 = load i8, i8* %arrayidx590, align 1, !tbaa !15
  %conv591 = zext i8 %432 to i32
  %433 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i64 2), align 1, !tbaa !15
  %conv592 = zext i8 %433 to i32
  %sub593 = sub nsw i32 %conv591, %conv592
  store i32 %sub593, i32* %__result, align 4, !tbaa !5
  %434 = load i64, i64* %__s2_len, align 8, !tbaa !46
  %cmp594 = icmp ugt i64 %434, 2
  br i1 %cmp594, label %land.lhs.true.596, label %if.end.604

land.lhs.true.596:                                ; preds = %if.then.589
  %435 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp597 = icmp eq i32 %435, 0
  br i1 %cmp597, label %if.then.599, label %if.end.604

if.then.599:                                      ; preds = %land.lhs.true.596
  %436 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx600 = getelementptr inbounds i8, i8* %436, i64 3
  %437 = load i8, i8* %arrayidx600, align 1, !tbaa !15
  %conv601 = zext i8 %437 to i32
  %438 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i64 3), align 1, !tbaa !15
  %conv602 = zext i8 %438 to i32
  %sub603 = sub nsw i32 %conv601, %conv602
  store i32 %sub603, i32* %__result, align 4, !tbaa !5
  br label %if.end.604

if.end.604:                                       ; preds = %if.then.599, %land.lhs.true.596, %if.then.589
  br label %if.end.605

if.end.605:                                       ; preds = %if.end.604, %land.lhs.true.586, %if.then.579
  br label %if.end.606

if.end.606:                                       ; preds = %if.end.605, %land.lhs.true.576, %cond.true.565
  %439 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %439, i32* %tmp607, !tbaa !5
  %440 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %440) #1
  %441 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %441) #1
  %442 = load i32, i32* %tmp607, !tbaa !5
  br label %cond.end.612

cond.false.608:                                   ; preds = %land.lhs.true.562, %if.else.561
  %mbdb_homedir609 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay610 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir609, i32 0, i32 0
  %call611 = call i32 @strcmp(i8* %arraydecay610, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0)) #1
  br label %cond.end.612

cond.end.612:                                     ; preds = %cond.false.608, %if.end.606
  %cond613 = phi i32 [ %442, %if.end.606 ], [ %call611, %cond.false.608 ]
  store i32 %cond613, i32* %tmp, !tbaa !5
  %443 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %443) #1
  %444 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %444) #1
  %445 = load i32, i32* %tmp, !tbaa !5
  %cmp614 = icmp eq i32 %445, 0
  br i1 %cmp614, label %if.then.616, label %if.else.618

if.then.616:                                      ; preds = %cond.end.612
  %446 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_home617 = getelementptr inbounds %struct.address, %struct.address* %446, i32 0, i32 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8** %q_home617, align 8, !tbaa !45
  br label %if.end.624

if.else.618:                                      ; preds = %cond.end.612
  %447 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool619 = getelementptr inbounds %struct.envelope, %struct.envelope* %447, i32 0, i32 52
  %448 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool619, align 8, !tbaa !36
  %mbdb_homedir620 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay621 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir620, i32 0, i32 0
  %call622 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %448, i8* %arraydecay621)
  %449 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_home623 = getelementptr inbounds %struct.address, %struct.address* %449, i32 0, i32 8
  store i8* %call622, i8** %q_home623, align 8, !tbaa !45
  br label %if.end.624

if.end.624:                                       ; preds = %if.else.618, %if.then.616
  br label %if.end.625

if.end.625:                                       ; preds = %if.end.624, %if.then.560
  %mbdb_uid = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %450 = load i32, i32* %mbdb_uid, align 4, !tbaa !47
  %cmp626 = icmp ne i32 %450, -1
  br i1 %cmp626, label %if.then.628, label %if.end.633

if.then.628:                                      ; preds = %if.end.625
  %mbdb_uid629 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %451 = load i32, i32* %mbdb_uid629, align 4, !tbaa !47
  %452 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_uid630 = getelementptr inbounds %struct.address, %struct.address* %452, i32 0, i32 6
  store i32 %451, i32* %q_uid630, align 4, !tbaa !40
  %mbdb_gid = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 1
  %453 = load i32, i32* %mbdb_gid, align 4, !tbaa !49
  %454 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_gid = getelementptr inbounds %struct.address, %struct.address* %454, i32 0, i32 7
  store i32 %453, i32* %q_gid, align 4, !tbaa !50
  %455 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags631 = getelementptr inbounds %struct.address, %struct.address* %455, i32 0, i32 5
  %456 = load i64, i64* %q_flags631, align 8, !tbaa !24
  %or632 = or i64 %456, 1
  store i64 %or632, i64* %q_flags631, align 8, !tbaa !24
  br label %if.end.633

if.end.633:                                       ; preds = %if.then.628, %if.end.625
  %457 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool634 = getelementptr inbounds %struct.envelope, %struct.envelope* %457, i32 0, i32 52
  %458 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool634, align 8, !tbaa !36
  %mbdb_name635 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 2
  %arraydecay636 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_name635, i32 0, i32 0
  %call637 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %458, i8* %arraydecay636)
  %459 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_ruser638 = getelementptr inbounds %struct.address, %struct.address* %459, i32 0, i32 2
  store i8* %call637, i8** %q_ruser638, align 8, !tbaa !39
  %mbdb_fullname = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 3
  %arrayidx639 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_fullname, i32 0, i64 0
  %460 = load i8, i8* %arrayidx639, align 1, !tbaa !15
  %conv640 = sext i8 %460 to i32
  %cmp641 = icmp ne i32 %conv640, 0
  br i1 %cmp641, label %if.then.643, label %if.end.648

if.then.643:                                      ; preds = %if.end.633
  %461 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool644 = getelementptr inbounds %struct.envelope, %struct.envelope* %461, i32 0, i32 52
  %462 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool644, align 8, !tbaa !36
  %mbdb_fullname645 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 3
  %arraydecay646 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_fullname645, i32 0, i32 0
  %call647 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %462, i8* %arraydecay646)
  %463 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_fullname = getelementptr inbounds %struct.address, %struct.address* %463, i32 0, i32 9
  store i8* %call647, i8** %q_fullname, align 8, !tbaa !26
  br label %if.end.648

if.end.648:                                       ; preds = %if.then.643, %if.end.633
  %mbdb_name649 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 2
  %arraydecay650 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_name649, i32 0, i32 0
  %mbdb_shell = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 5
  %arraydecay651 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_shell, i32 0, i32 0
  %call652 = call i32 @usershellok(i8* %arraydecay650, i8* %arraydecay651)
  %tobool653 = icmp ne i32 %call652, 0
  br i1 %tobool653, label %if.end.657, label %if.then.654

if.then.654:                                      ; preds = %if.end.648
  %464 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags655 = getelementptr inbounds %struct.address, %struct.address* %464, i32 0, i32 5
  %465 = load i64, i64* %q_flags655, align 8, !tbaa !24
  %or656 = or i64 %465, 16
  store i64 %or656, i64* %q_flags655, align 8, !tbaa !24
  br label %if.end.657

if.end.657:                                       ; preds = %if.then.654, %if.end.648
  %466 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags658 = getelementptr inbounds %struct.envelope, %struct.envelope* %466, i32 0, i32 11
  %467 = load i64, i64* %e_flags658, align 8, !tbaa !16
  %and659 = and i64 %467, 512
  %cmp660 = icmp ne i64 %and659, 0
  br i1 %cmp660, label %if.then.662, label %if.else.664

if.then.662:                                      ; preds = %if.end.657
  %468 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state663 = getelementptr inbounds %struct.address, %struct.address* %468, i32 0, i32 21
  store i16 5, i16* %q_state663, align 2, !tbaa !25
  br label %if.end.668

if.else.664:                                      ; preds = %if.end.657
  %469 = load i32, i32* %quoted, align 4, !tbaa !5
  %tobool665 = icmp ne i32 %469, 0
  br i1 %tobool665, label %if.end.667, label %if.then.666

if.then.666:                                      ; preds = %if.else.664
  %470 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %471 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  %472 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %473 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @forward(%struct.address* %470, %struct.address** %471, i32 %472, %struct.envelope* %473)
  br label %if.end.667

if.end.667:                                       ; preds = %if.then.666, %if.else.664
  br label %if.end.668

if.end.668:                                       ; preds = %if.end.667, %if.then.662
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.668, %sw.default, %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.544, %sw.epilog, %if.end.550
  %474 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %475 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.end(i64 8712, i8* %475) #1
  %476 = bitcast i32* %fuzzy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %476) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.823 [
    i32 0, label %cleanup.cont
    i32 12, label %trylocaluser
    i32 11, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.671

if.end.671:                                       ; preds = %cleanup.cont, %land.lhs.true.518, %if.end.513
  %477 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state672 = getelementptr inbounds %struct.address, %struct.address* %477, i32 0, i32 21
  %478 = load i16, i16* %q_state672, align 2, !tbaa !25
  %conv673 = sext i16 %478 to i32
  %cmp674 = icmp sge i32 %conv673, 6
  br i1 %cmp674, label %if.end.679, label %if.then.676

if.then.676:                                      ; preds = %if.end.671
  %479 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_nrcpts677 = getelementptr inbounds %struct.envelope, %struct.envelope* %479, i32 0, i32 12
  %480 = load i32, i32* %e_nrcpts677, align 4, !tbaa !44
  %inc678 = add nsw i32 %480, 1
  store i32 %inc678, i32* %e_nrcpts677, align 4, !tbaa !44
  br label %if.end.679

if.end.679:                                       ; preds = %if.then.676, %if.end.671
  br label %testselfdestruct

testselfdestruct:                                 ; preds = %if.end.679, %if.end.359
  %481 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags680 = getelementptr inbounds %struct.address, %struct.address* %481, i32 0, i32 5
  %482 = load i64, i64* %q_flags680, align 8, !tbaa !24
  %or681 = or i64 %482, 1073741824
  store i64 %or681, i64* %q_flags680, align 8, !tbaa !24
  %483 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 26), align 1, !tbaa !15
  %conv682 = zext i8 %483 to i32
  %cmp683 = icmp sge i32 %conv682, 8
  br i1 %cmp683, label %land.lhs.true.685, label %if.end.697

land.lhs.true.685:                                ; preds = %testselfdestruct
  %484 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool686 = icmp ne i32 %484, 0
  br i1 %tobool686, label %if.end.697, label %if.then.687

if.then.687:                                      ; preds = %land.lhs.true.685
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0))
  %call688 = call %struct.sm_file* @sm_debug_file()
  %485 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call688, %struct.address* %485, i32 0)
  %486 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 26), align 1, !tbaa !15
  %conv689 = zext i8 %486 to i32
  %cmp690 = icmp sge i32 %conv689, 10
  br i1 %cmp690, label %land.lhs.true.692, label %if.end.696

land.lhs.true.692:                                ; preds = %if.then.687
  %487 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool693 = icmp ne i32 %487, 0
  br i1 %tobool693, label %if.end.696, label %if.then.694

if.then.694:                                      ; preds = %land.lhs.true.692
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0))
  %call695 = call %struct.sm_file* @sm_debug_file()
  %488 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  %489 = load %struct.address*, %struct.address** %488, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call695, %struct.address* %489, i32 1)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.696

if.end.696:                                       ; preds = %if.then.694, %land.lhs.true.692, %if.then.687
  br label %if.end.697

if.end.697:                                       ; preds = %if.end.696, %land.lhs.true.685, %testselfdestruct
  %490 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_alias698 = getelementptr inbounds %struct.address, %struct.address* %490, i32 0, i32 11
  %491 = load %struct.address*, %struct.address** %q_alias698, align 8, !tbaa !23
  %cmp699 = icmp eq %struct.address* %491, null
  br i1 %cmp699, label %land.lhs.true.701, label %if.end.731

land.lhs.true.701:                                ; preds = %if.end.697
  %492 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %493 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from702 = getelementptr inbounds %struct.envelope, %struct.envelope* %493, i32 0, i32 4
  %cmp703 = icmp ne %struct.address* %492, %e_from702
  br i1 %cmp703, label %land.lhs.true.705, label %if.end.731

land.lhs.true.705:                                ; preds = %land.lhs.true.701
  %494 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state706 = getelementptr inbounds %struct.address, %struct.address* %494, i32 0, i32 21
  %495 = load i16, i16* %q_state706, align 2, !tbaa !25
  %conv707 = sext i16 %495 to i32
  %cmp708 = icmp sge i32 %conv707, 6
  br i1 %cmp708, label %if.then.710, label %if.end.731

if.then.710:                                      ; preds = %land.lhs.true.705
  %496 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  %497 = load %struct.address*, %struct.address** %496, align 8, !tbaa !1
  store %struct.address* %497, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.711

for.cond.711:                                     ; preds = %for.inc.721, %if.then.710
  %498 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp712 = icmp ne %struct.address* %498, null
  br i1 %cmp712, label %for.body.714, label %for.end.723

for.body.714:                                     ; preds = %for.cond.711
  %499 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state715 = getelementptr inbounds %struct.address, %struct.address* %499, i32 0, i32 21
  %500 = load i16, i16* %q_state715, align 2, !tbaa !25
  %conv716 = sext i16 %500 to i32
  %cmp717 = icmp sge i32 %conv716, 6
  br i1 %cmp717, label %if.end.720, label %if.then.719

if.then.719:                                      ; preds = %for.body.714
  br label %for.end.723

if.end.720:                                       ; preds = %for.body.714
  br label %for.inc.721

for.inc.721:                                      ; preds = %if.end.720
  %501 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next722 = getelementptr inbounds %struct.address, %struct.address* %501, i32 0, i32 10
  %502 = load %struct.address*, %struct.address** %q_next722, align 8, !tbaa !22
  store %struct.address* %502, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.711

for.end.723:                                      ; preds = %if.then.719, %for.cond.711
  %503 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp724 = icmp eq %struct.address* %503, null
  br i1 %cmp724, label %if.then.726, label %if.end.730

if.then.726:                                      ; preds = %for.end.723
  %504 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_state727 = getelementptr inbounds %struct.address, %struct.address* %504, i32 0, i32 21
  store i16 2, i16* %q_state727, align 2, !tbaa !25
  %505 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status728 = getelementptr inbounds %struct.address, %struct.address* %505, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8** %q_status728, align 8, !tbaa !37
  %506 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_status729 = getelementptr inbounds %struct.address, %struct.address* %506, i32 0, i32 17
  %507 = load i8*, i8** %q_status729, align 8, !tbaa !37
  call void (i8*, i8*, ...) @usrerrenh(i8* %507, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.730

if.end.730:                                       ; preds = %if.then.726, %for.end.723
  br label %if.end.731

if.end.731:                                       ; preds = %if.end.730, %land.lhs.true.705, %land.lhs.true.701, %if.end.697
  br label %done

done:                                             ; preds = %if.end.731, %cleanup, %if.end.300
  %508 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags732 = getelementptr inbounds %struct.address, %struct.address* %508, i32 0, i32 5
  %509 = load i64, i64* %q_flags732, align 8, !tbaa !24
  %or733 = or i64 %509, 1073741824
  store i64 %or733, i64* %q_flags732, align 8, !tbaa !24
  %510 = load i8*, i8** %buf, align 8, !tbaa !1
  %arraydecay734 = getelementptr inbounds [257 x i8], [257 x i8]* %buf0, i32 0, i32 0
  %cmp735 = icmp ne i8* %510, %arraydecay734
  br i1 %cmp735, label %if.then.737, label %if.end.738

if.then.737:                                      ; preds = %done
  %511 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %511, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1079)
  br label %if.end.738

if.end.738:                                       ; preds = %if.then.737, %done
  %512 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %cmp739 = icmp eq i32 %512, 0
  br i1 %cmp739, label %if.then.741, label %if.end.815

if.then.741:                                      ; preds = %if.end.738
  %513 = bitcast i32* %nrcpts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %513) #1
  store i32 0, i32* %nrcpts, align 4, !tbaa !5
  %514 = bitcast %struct.address** %only to i8*
  call void @llvm.lifetime.start(i64 8, i8* %514) #1
  store %struct.address* null, %struct.address** %only, align 8, !tbaa !1
  %515 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  %516 = load %struct.address*, %struct.address** %515, align 8, !tbaa !1
  store %struct.address* %516, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.744

for.cond.744:                                     ; preds = %for.inc.772, %if.then.741
  %517 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp745 = icmp ne %struct.address* %517, null
  br i1 %cmp745, label %for.body.747, label %for.end.774

for.body.747:                                     ; preds = %for.cond.744
  %518 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags748 = getelementptr inbounds %struct.address, %struct.address* %518, i32 0, i32 5
  %519 = load i64, i64* %q_flags748, align 8, !tbaa !24
  %and749 = and i64 %519, 1073741824
  %cmp750 = icmp ne i64 %and749, 0
  br i1 %cmp750, label %land.lhs.true.752, label %if.end.769

land.lhs.true.752:                                ; preds = %for.body.747
  %520 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state753 = getelementptr inbounds %struct.address, %struct.address* %520, i32 0, i32 21
  %521 = load i16, i16* %q_state753, align 2, !tbaa !25
  %conv754 = sext i16 %521 to i32
  %cmp755 = icmp eq i32 %conv754, 0
  br i1 %cmp755, label %if.then.767, label %lor.lhs.false.757

lor.lhs.false.757:                                ; preds = %land.lhs.true.752
  %522 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state758 = getelementptr inbounds %struct.address, %struct.address* %522, i32 0, i32 21
  %523 = load i16, i16* %q_state758, align 2, !tbaa !25
  %conv759 = sext i16 %523 to i32
  %cmp760 = icmp eq i32 %conv759, 3
  br i1 %cmp760, label %if.then.767, label %lor.lhs.false.762

lor.lhs.false.762:                                ; preds = %lor.lhs.false.757
  %524 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state763 = getelementptr inbounds %struct.address, %struct.address* %524, i32 0, i32 21
  %525 = load i16, i16* %q_state763, align 2, !tbaa !25
  %conv764 = sext i16 %525 to i32
  %cmp765 = icmp eq i32 %conv764, 4
  br i1 %cmp765, label %if.then.767, label %if.end.769

if.then.767:                                      ; preds = %lor.lhs.false.762, %lor.lhs.false.757, %land.lhs.true.752
  %526 = load i32, i32* %nrcpts, align 4, !tbaa !5
  %inc768 = add nsw i32 %526, 1
  store i32 %inc768, i32* %nrcpts, align 4, !tbaa !5
  %527 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  store %struct.address* %527, %struct.address** %only, align 8, !tbaa !1
  br label %if.end.769

if.end.769:                                       ; preds = %if.then.767, %lor.lhs.false.762, %for.body.747
  %528 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags770 = getelementptr inbounds %struct.address, %struct.address* %528, i32 0, i32 5
  %529 = load i64, i64* %q_flags770, align 8, !tbaa !24
  %and771 = and i64 %529, -1073741825
  store i64 %and771, i64* %q_flags770, align 8, !tbaa !24
  br label %for.inc.772

for.inc.772:                                      ; preds = %if.end.769
  %530 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next773 = getelementptr inbounds %struct.address, %struct.address* %530, i32 0, i32 10
  %531 = load %struct.address*, %struct.address** %q_next773, align 8, !tbaa !22
  store %struct.address* %531, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.744

for.end.774:                                      ; preds = %for.cond.744
  %532 = load i32, i32* %nrcpts, align 4, !tbaa !5
  %cmp775 = icmp eq i32 %532, 1
  br i1 %cmp775, label %if.then.777, label %if.else.791

if.then.777:                                      ; preds = %for.end.774
  %533 = load %struct.address*, %struct.address** %only, align 8, !tbaa !1
  store %struct.address* %533, %struct.address** %q, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.784, %if.then.777
  %534 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_alias778 = getelementptr inbounds %struct.address, %struct.address* %534, i32 0, i32 11
  %535 = load %struct.address*, %struct.address** %q_alias778, align 8, !tbaa !23
  store %struct.address* %535, %struct.address** %q, align 8, !tbaa !1
  %cmp779 = icmp ne %struct.address* %535, null
  br i1 %cmp779, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %536 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_owner = getelementptr inbounds %struct.address, %struct.address* %536, i32 0, i32 12
  %537 = load i8*, i8** %q_owner, align 8, !tbaa !51
  %cmp781 = icmp ne i8* %537, null
  br i1 %cmp781, label %if.then.783, label %if.end.784

if.then.783:                                      ; preds = %while.body
  br label %while.end

if.end.784:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.783, %while.cond
  %538 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp785 = icmp eq %struct.address* %538, null
  br i1 %cmp785, label %if.then.787, label %if.end.790

if.then.787:                                      ; preds = %while.end
  %539 = load %struct.address*, %struct.address** %only, align 8, !tbaa !1
  %q_flags788 = getelementptr inbounds %struct.address, %struct.address* %539, i32 0, i32 5
  %540 = load i64, i64* %q_flags788, align 8, !tbaa !24
  %or789 = or i64 %540, 2
  store i64 %or789, i64* %q_flags788, align 8, !tbaa !24
  br label %if.end.790

if.end.790:                                       ; preds = %if.then.787, %while.end
  br label %if.end.814

if.else.791:                                      ; preds = %for.end.774
  %541 = load i32, i32* %initialdontsend, align 4, !tbaa !5
  %tobool792 = icmp ne i32 %541, 0
  br i1 %tobool792, label %if.end.813, label %land.lhs.true.793

land.lhs.true.793:                                ; preds = %if.else.791
  %542 = load i32, i32* %nrcpts, align 4, !tbaa !5
  %cmp794 = icmp sgt i32 %542, 0
  br i1 %cmp794, label %if.then.796, label %if.end.813

if.then.796:                                      ; preds = %land.lhs.true.793
  %543 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags797 = getelementptr inbounds %struct.envelope, %struct.envelope* %543, i32 0, i32 11
  %544 = load i64, i64* %e_flags797, align 8, !tbaa !16
  %or798 = or i64 %544, 16
  store i64 %or798, i64* %e_flags797, align 8, !tbaa !16
  %545 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags799 = getelementptr inbounds %struct.address, %struct.address* %545, i32 0, i32 5
  %546 = load i64, i64* %q_flags799, align 8, !tbaa !24
  %or800 = or i64 %546, 2048
  store i64 %or800, i64* %q_flags799, align 8, !tbaa !24
  %547 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %547, i32 0, i32 32
  %548 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !52
  %cmp801 = icmp ne %struct.sm_file* %548, null
  br i1 %cmp801, label %land.lhs.true.803, label %if.end.812

land.lhs.true.803:                                ; preds = %if.then.796
  %549 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags804 = getelementptr inbounds %struct.address, %struct.address* %549, i32 0, i32 5
  %550 = load i64, i64* %q_flags804, align 8, !tbaa !24
  %and805 = and i64 %550, 64
  %cmp806 = icmp ne i64 %and805, 0
  br i1 %cmp806, label %if.then.808, label %if.end.812

if.then.808:                                      ; preds = %land.lhs.true.803
  %551 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp809 = getelementptr inbounds %struct.envelope, %struct.envelope* %551, i32 0, i32 32
  %552 = load %struct.sm_file*, %struct.sm_file** %e_xfp809, align 8, !tbaa !52
  %553 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_paddr810 = getelementptr inbounds %struct.address, %struct.address* %553, i32 0, i32 0
  %554 = load i8*, i8** %q_paddr810, align 8, !tbaa !29
  %call811 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %552, i32 -2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.51, i32 0, i32 0), i8* %554)
  br label %if.end.812

if.end.812:                                       ; preds = %if.then.808, %land.lhs.true.803, %if.then.796
  br label %if.end.813

if.end.813:                                       ; preds = %if.end.812, %land.lhs.true.793, %if.else.791
  br label %if.end.814

if.end.814:                                       ; preds = %if.end.813, %if.end.790
  %555 = bitcast %struct.address** %only to i8*
  call void @llvm.lifetime.end(i64 8, i8* %555) #1
  %556 = bitcast i32* %nrcpts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %556) #1
  br label %if.end.815

if.end.815:                                       ; preds = %if.end.814, %if.end.738
  %557 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  %q_flags816 = getelementptr inbounds %struct.address, %struct.address* %557, i32 0, i32 5
  %558 = load i64, i64* %q_flags816, align 8, !tbaa !24
  %or817 = or i64 %558, 2147483648
  store i64 %or817, i64* %q_flags816, align 8, !tbaa !24
  %arraydecay818 = getelementptr inbounds [257 x i8], [257 x i8]* %buf0, i32 0, i32 0
  %559 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_nrcpts819 = getelementptr inbounds %struct.envelope, %struct.envelope* %559, i32 0, i32 12
  %560 = load i32, i32* %e_nrcpts819, align 4, !tbaa !44
  %call820 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay818, i64 257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i32 %560)
  %561 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %561, i32 0, i32 46
  %call821 = call i32 @macid_parse(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8** null)
  %arraydecay822 = getelementptr inbounds [257 x i8], [257 x i8]* %buf0, i32 0, i32 0
  %562 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %call821, i8* %arraydecay822, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1130, i32 %562)
  %563 = load %struct.address*, %struct.address** %new.addr, align 8, !tbaa !1
  store %struct.address* %563, %struct.address** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.823

cleanup.823:                                      ; preds = %if.end.815, %cleanup, %if.end.121
  %564 = bitcast i32 (%struct.address*, %struct.address*)** %sortfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %564) #1
  %565 = bitcast [257 x i8]* %buf0 to i8*
  call void @llvm.lifetime.end(i64 257, i8* %565) #1
  %566 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %566) #1
  %567 = bitcast i32* %initialdontsend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %567) #1
  %568 = bitcast i32* %findusercount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %568) #1
  %569 = bitcast i32* %insert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %569) #1
  %570 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %570) #1
  %571 = bitcast i32* %buflen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %571) #1
  %572 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %572) #1
  %573 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %573) #1
  %574 = bitcast %struct.mailer** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %574) #1
  %575 = bitcast %struct.address*** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %575) #1
  %576 = bitcast %struct.address*** %pq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %576) #1
  %577 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %577) #1
  %578 = load %struct.address*, %struct.address** %retval
  ret %struct.address* %578
}

declare void @sm_free_tagged(i8*, i8*, i32) #2

; Function Attrs: noreturn
declare void @sm_exc_raise_x(%struct.sm_exc*) #6

declare void @sm_exc_free(%struct.sm_exc*) #2

; Function Attrs: nounwind uwtable
define i32 @removefromlist(i8* %list, %struct.address** %sendq, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca i8*, align 8
  %sendq.addr = alloca %struct.address**, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %delimiter = alloca i8, align 1
  %naddrs = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %oldto = alloca i8*, align 8
  %bufp = alloca i8*, align 8
  %buf = alloca [257 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %_h = alloca %struct.sm_exc_handler, align 8
  %a = alloca %struct.address, align 8
  %q = alloca %struct.address*, align 8
  %pq = alloca %struct.address**, align 8
  %delimptr = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %list, i8** %list.addr, align 8, !tbaa !1
  store %struct.address** %sendq, %struct.address*** %sendq.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %delimiter) #1
  %0 = bitcast i32* %naddrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %oldto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %4, i32 0, i32 3
  %5 = load i8*, i8** %e_to, align 8, !tbaa !7
  store i8* %5, i8** %oldto, align 8, !tbaa !1
  %6 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %7) #1
  %8 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end:                                           ; preds = %entry
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 25), align 1, !tbaa !15
  %conv = zext i8 %9 to i32
  %cmp1 = icmp sge i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %10 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %list.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %12 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call = call i8* @strchr(i8* %12, i32 44) #1
  %cmp5 = icmp ne i8* %call, null
  br i1 %cmp5, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %13 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call7 = call i8* @strchr(i8* %13, i32 59) #1
  %cmp8 = icmp ne i8* %call7, null
  br i1 %cmp8, label %if.then.18, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %14 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call11 = call i8* @strchr(i8* %14, i32 60) #1
  %cmp12 = icmp ne i8* %call11, null
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %15 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call15 = call i8* @strchr(i8* %15, i32 40) #1
  %cmp16 = icmp ne i8* %call15, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false, %if.end.4
  %16 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %16, i32 0, i32 11
  %17 = load i64, i64* %e_flags, align 8, !tbaa !16
  %and = and i64 %17, -2
  store i64 %and, i64* %e_flags, align 8, !tbaa !16
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %lor.lhs.false.14
  store i8 32, i8* %delimiter, align 1, !tbaa !15
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags20 = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 11
  %19 = load i64, i64* %e_flags20, align 8, !tbaa !16
  %and21 = and i64 %19, 1
  %cmp22 = icmp ne i64 %and21, 0
  br i1 %cmp22, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.19
  store i8 44, i8* %delimiter, align 1, !tbaa !15
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.19
  store i32 0, i32* %naddrs, align 4, !tbaa !5
  %20 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call26 = call i64 @strlen(i8* %20) #10
  %add = add i64 %call26, 1
  %conv27 = trunc i64 %add to i32
  store i32 %conv27, i32* %i, align 4, !tbaa !5
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %conv28 = sext i32 %21 to i64
  %cmp29 = icmp ule i64 %conv28, 257
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.25
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %bufp, align 8, !tbaa !1
  store i32 257, i32* %i, align 4, !tbaa !5
  br label %if.end.34

if.else:                                          ; preds = %if.end.25
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %conv32 = sext i32 %22 to i64
  %23 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  %call33 = call i8* @sm_malloc_tagged_x(i64 %conv32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 374, i32 %23)
  store i8* %call33, i8** %bufp, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.31
  %24 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.start(i64 224, i8* %24) #1
  br label %do.body

do.body:                                          ; preds = %if.end.34
  %eh_value = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  store %struct.sm_exc* null, %struct.sm_exc** %eh_value, align 8, !tbaa !17
  %25 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_parent = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  store %struct.sm_exc_handler* %25, %struct.sm_exc_handler** %eh_parent, align 8, !tbaa !19
  %eh_state = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  store i32 2, i32* %eh_state, align 4, !tbaa !20
  store %struct.sm_exc_handler* %_h, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_context = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay35 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context, i32 0, i32 0
  %call36 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay35, i32 0) #11
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.100

if.then.39:                                       ; preds = %do.body
  %26 = load i8*, i8** %bufp, align 8, !tbaa !1
  %27 = load i8*, i8** %list.addr, align 8, !tbaa !1
  %call40 = call i8* @denlstring(i8* %27, i32 0, i32 1)
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %conv41 = sext i32 %28 to i64
  %call42 = call i64 @sm_strlcpy(i8* %26, i8* %call40, i64 %conv41)
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 46
  %call43 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8** null)
  %30 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %call43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 386, i32 %30)
  %31 = load i8*, i8** %bufp, align 8, !tbaa !1
  store i8* %31, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %cleanup, %if.then.39
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !15
  %conv44 = sext i8 %33 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  %34 = bitcast %struct.address* %a to i8*
  call void @llvm.lifetime.start(i64 192, i8* %34) #1
  %35 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = bitcast %struct.address*** %pq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !15
  %conv47 = sext i8 %39 to i32
  %and48 = and i32 %conv47, -128
  %cmp49 = icmp eq i32 %and48, 0
  br i1 %cmp49, label %land.lhs.true.51, label %lor.rhs

land.lhs.true.51:                                 ; preds = %while.cond
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !15
  %conv52 = sext i8 %41 to i32
  %idxprom = sext i32 %conv52 to i64
  %call53 = call i16** @__ctype_b_loc() #13
  %42 = load i16*, i16** %call53, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %42, i64 %idxprom
  %43 = load i16, i16* %arrayidx, align 2, !tbaa !21
  %conv54 = zext i16 %43 to i32
  %and55 = and i32 %conv54, 8192
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.51, %while.cond
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !15
  %conv57 = sext i8 %45 to i32
  %cmp58 = icmp eq i32 %conv57, 44
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.51
  %46 = phi i1 [ true, %land.lhs.true.51 ], [ %cmp58, %lor.rhs ]
  br i1 %46, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %49 = load i8, i8* %delimiter, align 1, !tbaa !15
  %conv60 = sext i8 %49 to i32
  %50 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call61 = call %struct.address* @parseaddr(i8* %48, %struct.address* %a, i32 112, i32 %conv60, i8** %delimptr, %struct.envelope* %50, i32 1)
  %cmp62 = icmp eq %struct.address* %call61, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %while.end
  %51 = load i8*, i8** %delimptr, align 8, !tbaa !1
  store i8* %51, i8** %p, align 8, !tbaa !1
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %while.end
  %52 = load i8*, i8** %delimptr, align 8, !tbaa !1
  store i8* %52, i8** %p, align 8, !tbaa !1
  %53 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  store %struct.address** %53, %struct.address*** %pq, align 8, !tbaa !1
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc, %if.end.65
  %54 = load %struct.address**, %struct.address*** %pq, align 8, !tbaa !1
  %55 = load %struct.address*, %struct.address** %54, align 8, !tbaa !1
  store %struct.address* %55, %struct.address** %q, align 8, !tbaa !1
  %cmp67 = icmp ne %struct.address* %55, null
  br i1 %cmp67, label %for.body.69, label %for.end

for.body.69:                                      ; preds = %for.cond.66
  %56 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %56, i32 0, i32 21
  %57 = load i16, i16* %q_state, align 2, !tbaa !25
  %conv70 = sext i16 %57 to i32
  %cmp71 = icmp sge i32 %conv70, 6
  br i1 %cmp71, label %if.end.91, label %land.lhs.true.73

land.lhs.true.73:                                 ; preds = %for.body.69
  %58 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %call74 = call i32 @sameaddr(%struct.address* %58, %struct.address* %a)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.81, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.73
  %59 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %61 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %61, i32 0, i32 0
  %62 = load i8*, i8** %q_paddr, align 8, !tbaa !29
  %q_paddr77 = getelementptr inbounds %struct.address, %struct.address* %a, i32 0, i32 0
  %63 = load i8*, i8** %q_paddr77, align 8, !tbaa !29
  %call78 = call i32 @strcmp(i8* %62, i8* %63) #1
  store i32 %call78, i32* %tmp, !tbaa !5
  %64 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load i32, i32* %tmp, !tbaa !5
  %cmp79 = icmp eq i32 %66, 0
  br i1 %cmp79, label %if.then.81, label %if.end.91

if.then.81:                                       ; preds = %lor.lhs.false.76, %land.lhs.true.73
  %67 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 25), align 1, !tbaa !15
  %conv82 = zext i8 %67 to i32
  %cmp83 = icmp sge i32 %conv82, 5
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.89

land.lhs.true.85:                                 ; preds = %if.then.81
  %68 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool86 = icmp ne i32 %68, 0
  br i1 %tobool86, label %if.end.89, label %if.then.87

if.then.87:                                       ; preds = %land.lhs.true.85
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  %call88 = call %struct.sm_file* @sm_debug_file()
  call void @printaddr(%struct.sm_file* %call88, %struct.address* %a, i32 0)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %land.lhs.true.85, %if.then.81
  %69 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state90 = getelementptr inbounds %struct.address, %struct.address* %69, i32 0, i32 21
  store i16 12, i16* %q_state90, align 2, !tbaa !25
  %70 = load i32, i32* %naddrs, align 4, !tbaa !5
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %naddrs, align 4, !tbaa !5
  br label %for.end

if.end.91:                                        ; preds = %lor.lhs.false.76, %for.body.69
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %71 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %71, i32 0, i32 10
  store %struct.address** %q_next, %struct.address*** %pq, align 8, !tbaa !1
  br label %for.cond.66

for.end:                                          ; preds = %if.end.89, %for.cond.66
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.64
  %72 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.address*** %pq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.address* %a to i8*
  call void @llvm.lifetime.end(i64 192, i8* %75) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end.95:                                       ; preds = %for.cond
  %76 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp96 = icmp eq %struct.sm_exc_handler* %76, %_h
  br i1 %cmp96, label %lor.end.99, label %lor.rhs.98

lor.rhs.98:                                       ; preds = %for.end.95
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 422, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.99

lor.end.99:                                       ; preds = %77, %for.end.95
  %78 = phi i1 [ true, %for.end.95 ], [ false, %77 ]
  %lor.ext = zext i1 %78 to i32
  br label %if.end.100

if.end.100:                                       ; preds = %lor.end.99, %do.body
  %eh_context101 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 1
  %arraydecay102 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %eh_context101, i32 0, i32 0
  %call103 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay102, i32 0) #11
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %if.end.100
  %79 = load i8*, i8** %oldto, align 8, !tbaa !1
  %80 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to107 = getelementptr inbounds %struct.envelope, %struct.envelope* %80, i32 0, i32 3
  store i8* %79, i8** %e_to107, align 8, !tbaa !7
  %81 = load i8*, i8** %bufp, align 8, !tbaa !1
  %arraydecay108 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %cmp109 = icmp ne i8* %81, %arraydecay108
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.then.106
  %82 = load i8*, i8** %bufp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 426)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.then.106
  %83 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro113 = getelementptr inbounds %struct.envelope, %struct.envelope* %83, i32 0, i32 46
  %call114 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8** null)
  %84 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro113, i32 2, i32 %call114, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 427, i32 %84)
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.112, %if.end.100
  br label %do.cond

do.cond:                                          ; preds = %if.end.115
  br label %do.end

do.end:                                           ; preds = %do.cond
  %eh_state116 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %85 = load i32, i32* %eh_state116, align 4, !tbaa !20
  %cmp117 = icmp eq i32 %85, 2
  br i1 %cmp117, label %if.then.119, label %if.else.132

if.then.119:                                      ; preds = %do.end
  %86 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %cmp120 = icmp eq %struct.sm_exc_handler* %86, %_h
  br i1 %cmp120, label %lor.end.123, label %lor.rhs.122

lor.rhs.122:                                      ; preds = %if.then.119
  call void @sm_abort_at(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 429, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0)) #12
  unreachable
                                                  ; No predecessors!
  br label %lor.end.123

lor.end.123:                                      ; preds = %87, %if.then.119
  %88 = phi i1 [ true, %if.then.119 ], [ false, %87 ]
  %lor.ext124 = zext i1 %88 to i32
  %eh_parent125 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 2
  %89 = load %struct.sm_exc_handler*, %struct.sm_exc_handler** %eh_parent125, align 8, !tbaa !19
  store %struct.sm_exc_handler* %89, %struct.sm_exc_handler** @SmExcHandler, align 8, !tbaa !1
  %eh_value126 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %90 = load %struct.sm_exc*, %struct.sm_exc** %eh_value126, align 8, !tbaa !17
  %cmp127 = icmp ne %struct.sm_exc* %90, null
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %lor.end.123
  %eh_value130 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %91 = load %struct.sm_exc*, %struct.sm_exc** %eh_value130, align 8, !tbaa !17
  call void @sm_exc_raise_x(%struct.sm_exc* %91) #12
  unreachable

if.end.131:                                       ; preds = %lor.end.123
  br label %if.end.146

if.else.132:                                      ; preds = %do.end
  %eh_state133 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 3
  %92 = load i32, i32* %eh_state133, align 4, !tbaa !20
  %cmp134 = icmp eq i32 %92, 0
  br i1 %cmp134, label %if.then.136, label %if.else.143

if.then.136:                                      ; preds = %if.else.132
  %eh_value137 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %93 = load %struct.sm_exc*, %struct.sm_exc** %eh_value137, align 8, !tbaa !17
  %cmp138 = icmp ne %struct.sm_exc* %93, null
  br i1 %cmp138, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.then.136
  %eh_value141 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %94 = load %struct.sm_exc*, %struct.sm_exc** %eh_value141, align 8, !tbaa !17
  call void @sm_exc_raise_x(%struct.sm_exc* %94) #12
  unreachable

if.end.142:                                       ; preds = %if.then.136
  br label %if.end.145

if.else.143:                                      ; preds = %if.else.132
  %eh_value144 = getelementptr inbounds %struct.sm_exc_handler, %struct.sm_exc_handler* %_h, i32 0, i32 0
  %95 = load %struct.sm_exc*, %struct.sm_exc** %eh_value144, align 8, !tbaa !17
  call void @sm_exc_free(%struct.sm_exc* %95)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.143, %if.end.142
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.131
  %96 = bitcast %struct.sm_exc_handler* %_h to i8*
  call void @llvm.lifetime.end(i64 224, i8* %96) #1
  %97 = load i32, i32* %naddrs, align 4, !tbaa !5
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

cleanup.147:                                      ; preds = %if.end.146, %if.then
  %98 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %98) #1
  %99 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i8** %oldto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %naddrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  call void @llvm.lifetime.end(i64 1, i8* %delimiter) #1
  %104 = load i32, i32* %retval
  ret i32 %104

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

declare i32 @sm_strcasecmp(i8*, i8*) #2

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

declare void @usrerrenh(i8*, i8*, ...) #2

declare i8* @xalloc_tagged(i32, i8*, i32) #2

declare void @stripquotes(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sorthost(%struct.address* %xx, %struct.address* %yy) #0 {
entry:
  %xx.addr = alloca %struct.address*, align 8
  %yy.addr = alloca %struct.address*, align 8
  store %struct.address* %xx, %struct.address** %xx.addr, align 8, !tbaa !1
  store %struct.address* %yy, %struct.address** %yy.addr, align 8, !tbaa !1
  %0 = load %struct.address*, %struct.address** %xx.addr, align 8, !tbaa !1
  %q_host = getelementptr inbounds %struct.address, %struct.address* %0, i32 0, i32 3
  %1 = load i8*, i8** %q_host, align 8, !tbaa !53
  %2 = load %struct.address*, %struct.address** %yy.addr, align 8, !tbaa !1
  %q_host1 = getelementptr inbounds %struct.address, %struct.address* %2, i32 0, i32 3
  %3 = load i8*, i8** %q_host1, align 8, !tbaa !53
  %call = call i32 @sm_strcasecmp(i8* %1, i8* %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @sortexpensive(%struct.address* %xx, %struct.address* %yy) #0 {
entry:
  %retval = alloca i32, align 4
  %xx.addr = alloca %struct.address*, align 8
  %yy.addr = alloca %struct.address*, align 8
  store %struct.address* %xx, %struct.address** %xx.addr, align 8, !tbaa !1
  store %struct.address* %yy, %struct.address** %yy.addr, align 8, !tbaa !1
  %0 = load %struct.address*, %struct.address** %yy.addr, align 8, !tbaa !1
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %0, i32 0, i32 4
  %1 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !31
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %1, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %and = and i32 %2, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.address*, %struct.address** %xx.addr, align 8, !tbaa !1
  %q_host = getelementptr inbounds %struct.address, %struct.address* %3, i32 0, i32 3
  %4 = load i8*, i8** %q_host, align 8, !tbaa !53
  %5 = load %struct.address*, %struct.address** %yy.addr, align 8, !tbaa !1
  %q_host1 = getelementptr inbounds %struct.address, %struct.address* %5, i32 0, i32 3
  %6 = load i8*, i8** %q_host1, align 8, !tbaa !53
  %call = call i32 @sm_strcasecmp(i8* %4, i8* %6)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @sortbysignature(%struct.address* %xx, %struct.address* %yy) #0 {
entry:
  %retval = alloca i32, align 4
  %xx.addr = alloca %struct.address*, align 8
  %yy.addr = alloca %struct.address*, align 8
  %ret = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1_len16 = alloca i64, align 8
  %__s2_len18 = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.address* %xx, %struct.address** %xx.addr, align 8, !tbaa !1
  store %struct.address* %yy, %struct.address** %yy.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.address*, %struct.address** %xx.addr, align 8, !tbaa !1
  %q_signature = getelementptr inbounds %struct.address, %struct.address* %1, i32 0, i32 22
  %2 = load i8*, i8** %q_signature, align 8, !tbaa !54
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.address*, %struct.address** %xx.addr, align 8, !tbaa !1
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %3, i32 0, i32 4
  %4 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !31
  %5 = load %struct.address*, %struct.address** %xx.addr, align 8, !tbaa !1
  %q_host = getelementptr inbounds %struct.address, %struct.address* %5, i32 0, i32 3
  %6 = load i8*, i8** %q_host, align 8, !tbaa !53
  %call = call i8* @hostsignature(%struct.mailer* %4, i8* %6)
  %7 = load %struct.address*, %struct.address** %xx.addr, align 8, !tbaa !1
  %q_signature1 = getelementptr inbounds %struct.address, %struct.address* %7, i32 0, i32 22
  store i8* %call, i8** %q_signature1, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.address*, %struct.address** %yy.addr, align 8, !tbaa !1
  %q_signature2 = getelementptr inbounds %struct.address, %struct.address* %8, i32 0, i32 22
  %9 = load i8*, i8** %q_signature2, align 8, !tbaa !54
  %cmp3 = icmp eq i8* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.address*, %struct.address** %yy.addr, align 8, !tbaa !1
  %q_mailer5 = getelementptr inbounds %struct.address, %struct.address* %10, i32 0, i32 4
  %11 = load %struct.mailer*, %struct.mailer** %q_mailer5, align 8, !tbaa !31
  %12 = load %struct.address*, %struct.address** %yy.addr, align 8, !tbaa !1
  %q_host6 = getelementptr inbounds %struct.address, %struct.address* %12, i32 0, i32 3
  %13 = load i8*, i8** %q_host6, align 8, !tbaa !53
  %call7 = call i8* @hostsignature(%struct.mailer* %11, i8* %13)
  %14 = load %struct.address*, %struct.address** %yy.addr, align 8, !tbaa !1
  %q_signature8 = getelementptr inbounds %struct.address, %struct.address* %14, i32 0, i32 22
  store i8* %call7, i8** %q_signature8, align 8, !tbaa !54
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.end
  %15 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.address*, %struct.address** %xx.addr, align 8, !tbaa !1
  %q_signature10 = getelementptr inbounds %struct.address, %struct.address* %17, i32 0, i32 22
  %18 = load i8*, i8** %q_signature10, align 8, !tbaa !54
  %19 = load %struct.address*, %struct.address** %yy.addr, align 8, !tbaa !1
  %q_signature11 = getelementptr inbounds %struct.address, %struct.address* %19, i32 0, i32 22
  %20 = load i8*, i8** %q_signature11, align 8, !tbaa !54
  %call12 = call i32 @strcmp(i8* %18, i8* %20) #1
  store i32 %call12, i32* %tmp, !tbaa !5
  %21 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %tmp, !tbaa !5
  store i32 %23, i32* %ret, align 4, !tbaa !5
  %24 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %24, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.9
  %25 = bitcast i64* %__s1_len16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast i64* %__s2_len18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.address*, %struct.address** %yy.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %27, i32 0, i32 1
  %28 = load i8*, i8** %q_user, align 8, !tbaa !30
  %29 = load %struct.address*, %struct.address** %xx.addr, align 8, !tbaa !1
  %q_user20 = getelementptr inbounds %struct.address, %struct.address* %29, i32 0, i32 1
  %30 = load i8*, i8** %q_user20, align 8, !tbaa !30
  %call21 = call i32 @strcmp(i8* %28, i8* %30) #1
  store i32 %call21, i32* %tmp19, !tbaa !5
  %31 = bitcast i64* %__s2_len18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i64* %__s1_len16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %tmp19, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.9
  %34 = load i32, i32* %ret, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.14
  %35 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @message(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @include(i8* %fname, i32 %forwarding, %struct.address* %ctladdr, %struct.address** %sendq, i32 %aliaslevel, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %forwarding.addr = alloca i32, align 4
  %ctladdr.addr = alloca %struct.address*, align 8
  %sendq.addr = alloca %struct.address**, align 8
  %aliaslevel.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %fp = alloca %struct.sm_file*, align 8
  %oldto = alloca i8*, align 8
  %oldfilename = alloca i8*, align 8
  %oldlinenumber = alloca i32, align 4
  %ev = alloca %struct.sm_event*, align 8
  %nincludes = alloca i32, align 4
  %mode = alloca i32, align 4
  %maxreached = alloca i32, align 4
  %ca = alloca %struct.address*, align 8
  %saveduid = alloca i32, align 4
  %savedgid = alloca i32, align 4
  %uid = alloca i32, align 4
  %gid = alloca i32, align 4
  %user = alloca i8*, align 8
  %rval = alloca i32, align 4
  %sfflags = alloca i64, align 8
  %p = alloca i8*, align 8
  %safechown = alloca i32, align 4
  %safedir = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %buf = alloca [2048 x i8], align 16
  %gidset = alloca [1 x i32], align 4
  %cleanup.dest.slot = alloca i32
  %ret = alloca i32, align 4
  %pw = alloca %struct.passwd*, align 8
  %sh = alloca i8*, align 8
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %forwarding, i32* %forwarding.addr, align 4, !tbaa !5
  store %struct.address* %ctladdr, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  store %struct.address** %sendq, %struct.address*** %sendq.addr, align 8, !tbaa !1
  store i32 %aliaslevel, i32* %aliaslevel.addr, align 4, !tbaa !5
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast %struct.sm_file** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store volatile %struct.sm_file* null, %struct.sm_file** %fp, align 8, !tbaa !1
  %1 = bitcast i8** %oldto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 3
  %3 = load i8*, i8** %e_to, align 8, !tbaa !7
  store i8* %3, i8** %oldto, align 8, !tbaa !1
  %4 = bitcast i8** %oldfilename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** @FileName, align 8, !tbaa !1
  store i8* %5, i8** %oldfilename, align 8, !tbaa !1
  %6 = bitcast i32* %oldlinenumber to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* @LineNumber, align 4, !tbaa !5
  store i32 %7, i32* %oldlinenumber, align 4, !tbaa !5
  %8 = bitcast %struct.sm_event** %ev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.sm_event* null, %struct.sm_event** %ev, align 8, !tbaa !1
  %9 = bitcast i32* %nincludes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %maxreached to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store volatile i32 0, i32* %maxreached, align 4, !tbaa !5
  %12 = bitcast %struct.address** %ca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %saveduid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %savedgid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %uid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i8** %user to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %rval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %rval, align 4, !tbaa !5
  %19 = bitcast i64* %sfflags to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store volatile i64 128, i64* %sfflags, align 8, !tbaa !46
  %20 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i32* %safechown to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %safechown, align 4, !tbaa !5
  %22 = bitcast i32* %safedir to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store volatile i32 0, i32* %safedir, align 4, !tbaa !5
  %23 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start(i64 144, i8* %23) #1
  %24 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %24) #1
  %25 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv = zext i8 %25 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %26 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %27 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i8* %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %28 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv2 = zext i8 %28 to i32
  %cmp3 = icmp sge i32 %conv2, 4
  br i1 %cmp3, label %land.lhs.true.5, label %if.end.11

land.lhs.true.5:                                  ; preds = %if.end
  %29 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %29, 0
  br i1 %tobool6, label %if.end.11, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true.5
  %call = call i32 @getuid() #1
  %conv8 = zext i32 %call to i64
  %call9 = call i32 @geteuid() #1
  %conv10 = zext i32 %call9 to i64
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0), i64 %conv8, i64 %conv10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %land.lhs.true.5, %if.end
  %30 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv12 = zext i8 %30 to i32
  %cmp13 = icmp sge i32 %conv12, 14
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.19

land.lhs.true.15:                                 ; preds = %if.end.11
  %31 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool16 = icmp ne i32 %31, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.15
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0))
  %call18 = call %struct.sm_file* @sm_debug_file()
  %32 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call18, %struct.address* %32, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %land.lhs.true.15, %if.end.11
  %33 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv20 = zext i8 %33 to i32
  %cmp21 = icmp sge i32 %conv20, 9
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.30

land.lhs.true.23:                                 ; preds = %if.end.19
  %34 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool24 = icmp ne i32 %34, 0
  br i1 %tobool24, label %if.end.30, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.23
  %call26 = call i32 @getuid() #1
  %conv27 = zext i32 %call26 to i64
  %call28 = call i32 @geteuid() #1
  %conv29 = zext i32 %call28 to i64
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i32 0, i32 0), i64 %conv27, i64 %conv29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %land.lhs.true.23, %if.end.19
  %35 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool31 = icmp ne i32 %35, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.30
  %36 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or = or i64 %36, 5
  store volatile i64 %or, i64* %sfflags, align 8, !tbaa !46
  %37 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 1), align 4, !tbaa !5
  %and = and i32 %37, 32
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.end.36, label %if.then.34

if.then.34:                                       ; preds = %if.then.32
  %38 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or35 = or i64 %38, 2048
  store volatile i64 %or35, i64* %sfflags, align 8, !tbaa !46
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.then.32
  %39 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 1), align 4, !tbaa !5
  %and37 = and i32 %39, 128
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  %40 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or40 = or i64 %40, 4096
  store volatile i64 %or40, i64* %sfflags, align 8, !tbaa !46
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.36
  br label %if.end.52

if.else:                                          ; preds = %if.end.30
  %41 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 1), align 4, !tbaa !5
  %and42 = and i32 %41, 64
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %if.else
  %42 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or45 = or i64 %42, 2048
  store volatile i64 %or45, i64* %sfflags, align 8, !tbaa !46
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.else
  %43 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 1), align 4, !tbaa !5
  %and47 = and i32 %43, 256
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %if.end.46
  %44 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or50 = or i64 %44, 4096
  store volatile i64 %or50, i64* %sfflags, align 8, !tbaa !46
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.41
  %call53 = call i32 @geteuid() #1
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %land.lhs.true.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.52
  %45 = load i32, i32* @RunAsUid, align 4, !tbaa !5
  %cmp56 = icmp ne i32 %45, 0
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.73

land.lhs.true.58:                                 ; preds = %lor.lhs.false, %if.end.52
  %46 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %and59 = and i32 %46, -2147483648
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.end.73, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true.58
  %47 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv62 = zext i8 %47 to i32
  %cmp63 = icmp sge i32 %conv62, 4
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.71

land.lhs.true.65:                                 ; preds = %if.then.61
  %48 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool66 = icmp ne i32 %48, 0
  br i1 %tobool66, label %if.end.71, label %if.then.67

if.then.67:                                       ; preds = %land.lhs.true.65
  %call68 = call i32 @geteuid() #1
  %conv69 = zext i32 %call68 to i64
  %49 = load i32, i32* @RunAsUid, align 4, !tbaa !5
  %conv70 = zext i32 %49 to i64
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.66, i32 0, i32 0), i64 %conv69, i64 %conv70)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.67, %land.lhs.true.65, %if.then.61
  %50 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %50, i32 0, i32 5
  %51 = load i64, i64* %q_flags, align 8, !tbaa !24
  %or72 = or i64 %51, 32
  store i64 %or72, i64* %q_flags, align 8, !tbaa !24
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.71, %land.lhs.true.58, %lor.lhs.false
  %52 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %call74 = call %struct.address* @getctladdr(%struct.address* %52)
  store %struct.address* %call74, %struct.address** %ca, align 8, !tbaa !1
  %53 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %cmp75 = icmp eq %struct.address* %53, null
  br i1 %cmp75, label %if.then.83, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %if.end.73
  %54 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_uid = getelementptr inbounds %struct.address, %struct.address* %54, i32 0, i32 6
  %55 = load i32, i32* %q_uid, align 4, !tbaa !40
  %56 = load i32, i32* @DefUid, align 4, !tbaa !5
  %cmp78 = icmp eq i32 %55, %56
  br i1 %cmp78, label %land.lhs.true.80, label %if.else.84

land.lhs.true.80:                                 ; preds = %lor.lhs.false.77
  %57 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_gid = getelementptr inbounds %struct.address, %struct.address* %57, i32 0, i32 7
  %58 = load i32, i32* %q_gid, align 4, !tbaa !50
  %cmp81 = icmp eq i32 %58, 0
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %land.lhs.true.80, %if.end.73
  %59 = load i32, i32* @DefUid, align 4, !tbaa !5
  store volatile i32 %59, i32* %uid, align 4, !tbaa !5
  %60 = load i32, i32* @DefGid, align 4, !tbaa !5
  store volatile i32 %60, i32* %gid, align 4, !tbaa !5
  %61 = load i8*, i8** @DefUser, align 8, !tbaa !1
  store volatile i8* %61, i8** %user, align 8, !tbaa !1
  br label %if.end.87

if.else.84:                                       ; preds = %land.lhs.true.80, %lor.lhs.false.77
  %62 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_uid85 = getelementptr inbounds %struct.address, %struct.address* %62, i32 0, i32 6
  %63 = load i32, i32* %q_uid85, align 4, !tbaa !40
  store volatile i32 %63, i32* %uid, align 4, !tbaa !5
  %64 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_gid86 = getelementptr inbounds %struct.address, %struct.address* %64, i32 0, i32 7
  %65 = load i32, i32* %q_gid86, align 4, !tbaa !50
  store volatile i32 %65, i32* %gid, align 4, !tbaa !5
  %66 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %66, i32 0, i32 1
  %67 = load i8*, i8** %q_user, align 8, !tbaa !30
  store volatile i8* %67, i8** %user, align 8, !tbaa !1
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  %call88 = call i32 @geteuid() #1
  store volatile i32 %call88, i32* %saveduid, align 4, !tbaa !5
  %call89 = call i32 @getegid() #1
  store volatile i32 %call89, i32* %savedgid, align 4, !tbaa !5
  %68 = load volatile i32, i32* %saveduid, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %68, 0
  br i1 %cmp90, label %if.then.92, label %if.end.131

if.then.92:                                       ; preds = %if.end.87
  %69 = load i32, i32* @DontInitGroups, align 4, !tbaa !5
  %tobool93 = icmp ne i32 %69, 0
  br i1 %tobool93, label %if.else.101, label %if.then.94

if.then.94:                                       ; preds = %if.then.92
  %70 = load volatile i8*, i8** %user, align 8, !tbaa !1
  %71 = load volatile i32, i32* %gid, align 4, !tbaa !5
  %call95 = call i32 @initgroups(i8* %70, i32 %71)
  %cmp96 = icmp eq i32 %call95, -1
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.then.94
  store i32 11, i32* %rval, align 4, !tbaa !5
  %72 = load volatile i8*, i8** %user, align 8, !tbaa !1
  %73 = load volatile i32, i32* %gid, align 4, !tbaa !5
  %conv99 = zext i32 %73 to i64
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i32 0, i32 0), i8* %72, i64 %conv99)
  br label %resetuid

if.end.100:                                       ; preds = %if.then.94
  br label %if.end.107

if.else.101:                                      ; preds = %if.then.92
  %74 = bitcast [1 x i32]* %gidset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = load volatile i32, i32* %gid, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %gidset, i32 0, i64 0
  store i32 %75, i32* %arrayidx, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %gidset, i32 0, i32 0
  %call102 = call i32 @setgroups(i64 1, i32* %arraydecay) #1
  %cmp103 = icmp eq i32 %call102, -1
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.else.101
  store i32 11, i32* %rval, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i32 0, i32 0))
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.106:                                       ; preds = %if.else.101
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.105, %if.end.106
  %76 = bitcast [1 x i32]* %gidset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.691 [
    i32 0, label %cleanup.cont
    i32 2, label %resetuid
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.107

if.end.107:                                       ; preds = %cleanup.cont, %if.end.100
  %77 = load volatile i32, i32* %gid, align 4, !tbaa !5
  %cmp108 = icmp ne i32 %77, 0
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.116

land.lhs.true.110:                                ; preds = %if.end.107
  %78 = load volatile i32, i32* %gid, align 4, !tbaa !5
  %call111 = call i32 @setgid(i32 %78) #1
  %cmp112 = icmp slt i32 %call111, -1
  br i1 %cmp112, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %land.lhs.true.110
  store i32 11, i32* %rval, align 4, !tbaa !5
  %79 = load volatile i32, i32* %gid, align 4, !tbaa !5
  %conv115 = zext i32 %79 to i64
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i64 %conv115)
  br label %resetuid

if.end.116:                                       ; preds = %land.lhs.true.110, %if.end.107
  %80 = load volatile i32, i32* %uid, align 4, !tbaa !5
  %cmp117 = icmp ne i32 %80, 0
  br i1 %cmp117, label %if.then.119, label %if.end.130

if.then.119:                                      ; preds = %if.end.116
  %81 = load volatile i32, i32* %uid, align 4, !tbaa !5
  %call120 = call i32 @setreuid(i32 0, i32 %81) #1
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %if.then.123, label %if.end.129

if.then.123:                                      ; preds = %if.then.119
  store i32 11, i32* %rval, align 4, !tbaa !5
  %82 = load volatile i32, i32* %uid, align 4, !tbaa !5
  %conv124 = zext i32 %82 to i64
  %call125 = call i32 @getuid() #1
  %conv126 = zext i32 %call125 to i64
  %call127 = call i32 @geteuid() #1
  %conv128 = zext i32 %call127 to i64
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.70, i32 0, i32 0), i64 %conv124, i64 %conv126, i64 %conv128)
  br label %resetuid

if.end.129:                                       ; preds = %if.then.119
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.116
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.87
  %83 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv132 = zext i8 %83 to i32
  %cmp133 = icmp sge i32 %conv132, 9
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.142

land.lhs.true.135:                                ; preds = %if.end.131
  %84 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool136 = icmp ne i32 %84, 0
  br i1 %tobool136, label %if.end.142, label %if.then.137

if.then.137:                                      ; preds = %land.lhs.true.135
  %call138 = call i32 @getuid() #1
  %conv139 = zext i32 %call138 to i64
  %call140 = call i32 @geteuid() #1
  %conv141 = zext i32 %call140 to i64
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i32 0, i32 0), i64 %conv139, i64 %conv141)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.137, %land.lhs.true.135, %if.end.131
  %call143 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @CtxIncludeTimeout, i32 0, i32 0), i32 1) #11
  %cmp144 = icmp ne i32 %call143, 0
  br i1 %cmp144, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %if.end.142
  %85 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %85, i32 0, i32 21
  store i16 3, i16* %q_state, align 2, !tbaa !25
  %call147 = call i32* @__errno_location() #13
  store i32 0, i32* %call147, align 4, !tbaa !5
  store i32 256, i32* %rval, align 4, !tbaa !5
  br label %resetuid

if.end.148:                                       ; preds = %if.end.142
  %86 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 15), align 8, !tbaa !55
  %cmp149 = icmp sgt i64 %86, 0
  br i1 %cmp149, label %if.then.151, label %if.else.154

if.then.151:                                      ; preds = %if.end.148
  %87 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 15), align 8, !tbaa !55
  %mul = mul nsw i64 %87, 1000
  %conv152 = trunc i64 %mul to i32
  %call153 = call %struct.sm_event* @sm_seteventm(i32 %conv152, void (i32)* @includetimeout, i32 0)
  store %struct.sm_event* %call153, %struct.sm_event** %ev, align 8, !tbaa !1
  br label %if.end.155

if.else.154:                                      ; preds = %if.end.148
  store %struct.sm_event* null, %struct.sm_event** %ev, align 8, !tbaa !1
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.154, %if.then.151
  %88 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call156 = call i8* @strrchr(i8* %88, i32 47) #10
  store i8* %call156, i8** %p, align 8, !tbaa !1
  %89 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp157 = icmp ne i8* %89, null
  br i1 %cmp157, label %if.then.159, label %if.end.245

if.then.159:                                      ; preds = %if.end.155
  %90 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %91, align 1, !tbaa !15
  %92 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %93 = load volatile i32, i32* %uid, align 4, !tbaa !5
  %94 = load volatile i32, i32* %gid, align 4, !tbaa !5
  %95 = load volatile i8*, i8** %user, align 8, !tbaa !1
  %96 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or160 = or i64 %96, 256
  %call161 = call i32 @safedirpath(i8* %92, i32 %93, i32 %94, i8* %95, i64 %or160, i32 0, i32 0)
  store i32 %call161, i32* %ret, align 4, !tbaa !5
  %97 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp162 = icmp eq i32 %97, 0
  br i1 %cmp162, label %if.then.164, label %if.else.166

if.then.164:                                      ; preds = %if.then.159
  store volatile i32 1, i32* %safedir, align 4, !tbaa !5
  %98 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or165 = or i64 %98, 16
  store volatile i64 %or165, i64* %sfflags, align 8, !tbaa !46
  br label %if.end.244

if.else.166:                                      ; preds = %if.then.159
  %99 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool167 = icmp ne i32 %99, 0
  %cond = select i1 %tobool167, i32 7, i32 30
  %conv168 = trunc i32 %cond to i8
  %conv169 = zext i8 %conv168 to i64
  %div = udiv i64 %conv169, 32
  %and170 = and i64 %div, 7
  %arrayidx171 = getelementptr inbounds [8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 %and170
  %100 = load i32, i32* %arrayidx171, align 4, !tbaa !5
  %101 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool172 = icmp ne i32 %101, 0
  %cond173 = select i1 %tobool172, i32 7, i32 30
  %conv174 = trunc i32 %cond173 to i8
  %conv175 = zext i8 %conv174 to i64
  %rem = urem i64 %conv175, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and176 = and i32 %100, %shl
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %if.then.178, label %if.else.180

if.then.178:                                      ; preds = %if.else.166
  %102 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or179 = or i64 %102, 16
  store volatile i64 %or179, i64* %sfflags, align 8, !tbaa !46
  br label %if.end.215

if.else.180:                                      ; preds = %if.else.166
  %103 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool181 = icmp ne i32 %103, 0
  %cond182 = select i1 %tobool181, i32 21, i32 22
  %conv183 = trunc i32 %cond182 to i8
  %conv184 = zext i8 %conv183 to i64
  %div185 = udiv i64 %conv184, 32
  %and186 = and i64 %div185, 7
  %arrayidx187 = getelementptr inbounds [8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 %and186
  %104 = load i32, i32* %arrayidx187, align 4, !tbaa !5
  %105 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool188 = icmp ne i32 %105, 0
  %cond189 = select i1 %tobool188, i32 21, i32 22
  %conv190 = trunc i32 %cond189 to i8
  %conv191 = zext i8 %conv190 to i64
  %rem192 = urem i64 %conv191, 32
  %sh_prom193 = trunc i64 %rem192 to i32
  %shl194 = shl i32 1, %sh_prom193
  %and195 = and i32 %104, %shl194
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %land.lhs.true.197, label %if.else.212

land.lhs.true.197:                                ; preds = %if.else.180
  %106 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp198 = icmp eq i32 %106, 262
  br i1 %cmp198, label %if.then.200, label %if.else.212

if.then.200:                                      ; preds = %land.lhs.true.197
  %107 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %or201 = or i32 %107, 4
  store i32 %or201, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %108 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %109 = load volatile i32, i32* %uid, align 4, !tbaa !5
  %110 = load volatile i32, i32* %gid, align 4, !tbaa !5
  %111 = load volatile i8*, i8** %user, align 8, !tbaa !1
  %112 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or202 = or i64 %112, 256
  %call203 = call i32 @safedirpath(i8* %108, i32 %109, i32 %110, i8* %111, i64 %or202, i32 0, i32 0)
  store i32 %call203, i32* %ret, align 4, !tbaa !5
  %113 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %and204 = and i32 %113, -5
  store i32 %and204, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %114 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp205 = icmp eq i32 %114, 0
  br i1 %cmp205, label %if.then.207, label %if.else.209

if.then.207:                                      ; preds = %if.then.200
  %115 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or208 = or i64 %115, 16
  store volatile i64 %or208, i64* %sfflags, align 8, !tbaa !46
  br label %if.end.211

if.else.209:                                      ; preds = %if.then.200
  %116 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or210 = or i64 %116, 256
  store volatile i64 %or210, i64* %sfflags, align 8, !tbaa !46
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.209, %if.then.207
  br label %if.end.214

if.else.212:                                      ; preds = %land.lhs.true.197, %if.else.180
  %117 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or213 = or i64 %117, 256
  store volatile i64 %or213, i64* %sfflags, align 8, !tbaa !46
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.212, %if.end.211
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.then.178
  %118 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp216 = icmp sgt i32 %118, 256
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.243

land.lhs.true.218:                                ; preds = %if.end.215
  %119 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool219 = icmp ne i32 %119, 0
  %cond220 = select i1 %tobool219, i32 26, i32 27
  %conv221 = trunc i32 %cond220 to i8
  %conv222 = zext i8 %conv221 to i64
  %div223 = udiv i64 %conv222, 32
  %and224 = and i64 %div223, 7
  %arrayidx225 = getelementptr inbounds [8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 %and224
  %120 = load i32, i32* %arrayidx225, align 4, !tbaa !5
  %121 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool226 = icmp ne i32 %121, 0
  %cond227 = select i1 %tobool226, i32 26, i32 27
  %conv228 = trunc i32 %cond227 to i8
  %conv229 = zext i8 %conv228 to i64
  %rem230 = urem i64 %conv229, 32
  %sh_prom231 = trunc i64 %rem230 to i32
  %shl232 = shl i32 1, %sh_prom231
  %and233 = and i32 %120, %shl232
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %if.end.243, label %if.then.235

if.then.235:                                      ; preds = %land.lhs.true.218
  %122 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp236 = icmp sgt i32 %122, 11
  br i1 %cmp236, label %if.then.238, label %if.end.240

if.then.238:                                      ; preds = %if.then.235
  %123 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %123, i32 0, i32 25
  %124 = load i8*, i8** %e_id, align 8, !tbaa !38
  %125 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call239 = call i8* @shortenstring(i8* %125, i64 203)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %124, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.72, i32 0, i32 0), i8* %call239)
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.238, %if.then.235
  %126 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags241 = getelementptr inbounds %struct.address, %struct.address* %126, i32 0, i32 5
  %127 = load i64, i64* %q_flags241, align 8, !tbaa !24
  %or242 = or i64 %127, 32
  store i64 %or242, i64* %q_flags241, align 8, !tbaa !24
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.240, %land.lhs.true.218, %if.end.215
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.then.164
  %128 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 47, i8* %128, align 1, !tbaa !15
  %129 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.end.155
  %130 = load volatile i32, i32* %safedir, align 4, !tbaa !5
  %tobool246 = icmp ne i32 %130, 0
  br i1 %tobool246, label %if.end.266, label %land.lhs.true.247

land.lhs.true.247:                                ; preds = %if.end.245
  %131 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool248 = icmp ne i32 %131, 0
  %cond249 = select i1 %tobool248, i32 11, i32 12
  %conv250 = trunc i32 %cond249 to i8
  %conv251 = zext i8 %conv250 to i64
  %div252 = udiv i64 %conv251, 32
  %and253 = and i64 %div252, 7
  %arrayidx254 = getelementptr inbounds [8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 %and253
  %132 = load i32, i32* %arrayidx254, align 4, !tbaa !5
  %133 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool255 = icmp ne i32 %133, 0
  %cond256 = select i1 %tobool255, i32 11, i32 12
  %conv257 = trunc i32 %cond256 to i8
  %conv258 = zext i8 %conv257 to i64
  %rem259 = urem i64 %conv258, 32
  %sh_prom260 = trunc i64 %rem259 to i32
  %shl261 = shl i32 1, %sh_prom260
  %and262 = and i32 %132, %shl261
  %tobool263 = icmp ne i32 %and262, 0
  br i1 %tobool263, label %if.end.266, label %if.then.264

if.then.264:                                      ; preds = %land.lhs.true.247
  %134 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %or265 = or i64 %134, 514
  store volatile i64 %or265, i64* %sfflags, align 8, !tbaa !46
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.264, %land.lhs.true.247, %if.end.245
  %135 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %136 = load volatile i32, i32* %uid, align 4, !tbaa !5
  %137 = load volatile i32, i32* %gid, align 4, !tbaa !5
  %138 = load volatile i8*, i8** %user, align 8, !tbaa !1
  %139 = load volatile i64, i64* %sfflags, align 8, !tbaa !46
  %call267 = call i32 @safefile(i8* %135, i32 %136, i32 %137, i8* %138, i64 %139, i32 256, %struct.stat* %st)
  store i32 %call267, i32* %rval, align 4, !tbaa !5
  %140 = load i32, i32* %rval, align 4, !tbaa !5
  %cmp268 = icmp ne i32 %140, 0
  br i1 %cmp268, label %if.then.270, label %if.else.280

if.then.270:                                      ; preds = %if.end.266
  %141 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv271 = zext i8 %141 to i32
  %cmp272 = icmp sge i32 %conv271, 4
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.279

land.lhs.true.274:                                ; preds = %if.then.270
  %142 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool275 = icmp ne i32 %142, 0
  br i1 %tobool275, label %if.end.279, label %if.then.276

if.then.276:                                      ; preds = %land.lhs.true.274
  %143 = load volatile i32, i32* %uid, align 4, !tbaa !5
  %conv277 = zext i32 %143 to i64
  %144 = load i32, i32* %rval, align 4, !tbaa !5
  %call278 = call i8* @sm_errstring(i32 %144)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0), i64 %conv277, i8* %call278)
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.276, %land.lhs.true.274, %if.then.270
  br label %if.end.308

if.else.280:                                      ; preds = %if.end.266
  %145 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call281 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* %145, i32 2, i8* null)
  store volatile %struct.sm_file* %call281, %struct.sm_file** %fp, align 8, !tbaa !1
  %cmp282 = icmp eq %struct.sm_file* %call281, null
  br i1 %cmp282, label %if.then.284, label %if.else.294

if.then.284:                                      ; preds = %if.else.280
  %call285 = call i32* @__errno_location() #13
  %146 = load i32, i32* %call285, align 4, !tbaa !5
  store i32 %146, i32* %rval, align 4, !tbaa !5
  %147 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv286 = zext i8 %147 to i32
  %cmp287 = icmp sge i32 %conv286, 4
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.293

land.lhs.true.289:                                ; preds = %if.then.284
  %148 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool290 = icmp ne i32 %148, 0
  br i1 %tobool290, label %if.end.293, label %if.then.291

if.then.291:                                      ; preds = %land.lhs.true.289
  %149 = load i32, i32* %rval, align 4, !tbaa !5
  %call292 = call i8* @sm_errstring(i32 %149)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i32 0, i32 0), i8* %call292)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.291, %land.lhs.true.289, %if.then.284
  br label %if.end.307

if.else.294:                                      ; preds = %if.else.280
  %150 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %151 = load volatile %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call295 = call i32 @sm_io_getinfo(%struct.sm_file* %151, i32 3, i8* null)
  %call296 = call i32 @filechanged(i8* %150, i32 %call295, %struct.stat* %st)
  %tobool297 = icmp ne i32 %call296, 0
  br i1 %tobool297, label %if.then.298, label %if.end.306

if.then.298:                                      ; preds = %if.else.294
  store i32 263, i32* %rval, align 4, !tbaa !5
  %152 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv299 = zext i8 %152 to i32
  %cmp300 = icmp sge i32 %conv299, 4
  br i1 %cmp300, label %land.lhs.true.302, label %if.end.305

land.lhs.true.302:                                ; preds = %if.then.298
  %153 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool303 = icmp ne i32 %153, 0
  br i1 %tobool303, label %if.end.305, label %if.then.304

if.then.304:                                      ; preds = %land.lhs.true.302
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.304, %land.lhs.true.302, %if.then.298
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.else.294
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.end.293
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.end.279
  %154 = load %struct.sm_event*, %struct.sm_event** %ev, align 8, !tbaa !1
  %cmp309 = icmp ne %struct.sm_event* %154, null
  br i1 %cmp309, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %if.end.308
  %155 = load %struct.sm_event*, %struct.sm_event** %ev, align 8, !tbaa !1
  call void @sm_clrevent(%struct.sm_event* %155)
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.311, %if.end.308
  br label %resetuid

resetuid:                                         ; preds = %if.end.312, %cleanup, %if.then.146, %if.then.123, %if.then.114, %if.then.98
  %156 = load volatile i32, i32* %saveduid, align 4, !tbaa !5
  %cmp313 = icmp eq i32 %156, 0
  br i1 %cmp313, label %if.then.315, label %if.end.349

if.then.315:                                      ; preds = %resetuid
  %157 = load volatile i32, i32* %uid, align 4, !tbaa !5
  %cmp316 = icmp ne i32 %157, 0
  br i1 %cmp316, label %if.then.318, label %if.end.338

if.then.318:                                      ; preds = %if.then.315
  %call319 = call i32 @setreuid(i32 -1, i32 0) #1
  %cmp320 = icmp slt i32 %call319, 0
  br i1 %cmp320, label %if.then.322, label %if.end.327

if.then.322:                                      ; preds = %if.then.318
  %call323 = call i32 @getuid() #1
  %conv324 = zext i32 %call323 to i64
  %call325 = call i32 @geteuid() #1
  %conv326 = zext i32 %call325 to i64
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.76, i32 0, i32 0), i64 %conv324, i64 %conv326)
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.322, %if.then.318
  %158 = load i32, i32* @RealUid, align 4, !tbaa !5
  %call328 = call i32 @setreuid(i32 %158, i32 0) #1
  %cmp329 = icmp slt i32 %call328, 0
  br i1 %cmp329, label %if.then.331, label %if.end.337

if.then.331:                                      ; preds = %if.end.327
  %159 = load i32, i32* @RealUid, align 4, !tbaa !5
  %conv332 = zext i32 %159 to i64
  %call333 = call i32 @getuid() #1
  %conv334 = zext i32 %call333 to i64
  %call335 = call i32 @geteuid() #1
  %conv336 = zext i32 %call335 to i64
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.77, i32 0, i32 0), i64 %conv332, i64 %conv334, i64 %conv336)
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.331, %if.end.327
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %if.then.315
  %160 = load volatile i32, i32* %savedgid, align 4, !tbaa !5
  %call339 = call i32 @setgid(i32 %160) #1
  %cmp340 = icmp slt i32 %call339, 0
  br i1 %cmp340, label %if.then.342, label %if.end.348

if.then.342:                                      ; preds = %if.end.338
  %161 = load volatile i32, i32* %savedgid, align 4, !tbaa !5
  %conv343 = zext i32 %161 to i64
  %call344 = call i32 @getgid() #1
  %conv345 = zext i32 %call344 to i64
  %call346 = call i32 @getegid() #1
  %conv347 = zext i32 %call346 to i64
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.78, i32 0, i32 0), i64 %conv343, i64 %conv345, i64 %conv347)
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.342, %if.end.338
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %resetuid
  %162 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv350 = zext i8 %162 to i32
  %cmp351 = icmp sge i32 %conv350, 9
  br i1 %cmp351, label %land.lhs.true.353, label %if.end.360

land.lhs.true.353:                                ; preds = %if.end.349
  %163 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool354 = icmp ne i32 %163, 0
  br i1 %tobool354, label %if.end.360, label %if.then.355

if.then.355:                                      ; preds = %land.lhs.true.353
  %call356 = call i32 @getuid() #1
  %conv357 = zext i32 %call356 to i64
  %call358 = call i32 @geteuid() #1
  %conv359 = zext i32 %call358 to i64
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.79, i32 0, i32 0), i64 %conv357, i64 %conv359)
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.355, %land.lhs.true.353, %if.end.349
  %164 = load i32, i32* %rval, align 4, !tbaa !5
  %cmp361 = icmp eq i32 %164, 256
  br i1 %cmp361, label %if.then.363, label %if.end.364

if.then.363:                                      ; preds = %if.end.360
  %165 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.80, i32 0, i32 0), i8* %165)
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.363, %if.end.360
  %166 = load volatile %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %cmp365 = icmp eq %struct.sm_file* %166, null
  br i1 %cmp365, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %if.end.364
  %167 = load i32, i32* %rval, align 4, !tbaa !5
  store i32 %167, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

if.end.368:                                       ; preds = %if.end.364
  %168 = load volatile %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call369 = call i32 @sm_io_getinfo(%struct.sm_file* %168, i32 3, i8* null)
  %call370 = call i32 @fstat(i32 %call369, %struct.stat* %st) #1
  %cmp371 = icmp slt i32 %call370, 0
  br i1 %cmp371, label %if.then.373, label %if.end.376

if.then.373:                                      ; preds = %if.end.368
  %call374 = call i32* @__errno_location() #13
  %169 = load i32, i32* %call374, align 4, !tbaa !5
  store i32 %169, i32* %rval, align 4, !tbaa !5
  %170 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), i8* %170)
  %171 = load volatile %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call375 = call i32 @sm_io_close(%struct.sm_file* %171, i32 -2)
  %172 = load i32, i32* %rval, align 4, !tbaa !5
  store i32 %172, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

if.end.376:                                       ; preds = %if.end.368
  %173 = load volatile %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call377 = call i32 @sm_io_getinfo(%struct.sm_file* %173, i32 3, i8* null)
  %174 = load volatile i32, i32* %safedir, align 4, !tbaa !5
  %call378 = call i32 @chownsafe(i32 %call377, i32 %174)
  store i32 %call378, i32* %safechown, align 4, !tbaa !5
  %175 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv379 = zext i8 %175 to i32
  %cmp380 = icmp sge i32 %conv379, 6
  br i1 %cmp380, label %land.lhs.true.382, label %if.end.389

land.lhs.true.382:                                ; preds = %if.end.376
  %176 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool383 = icmp ne i32 %176, 0
  br i1 %tobool383, label %if.end.389, label %if.then.384

if.then.384:                                      ; preds = %land.lhs.true.382
  %177 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %178 = load volatile i32, i32* %safedir, align 4, !tbaa !5
  %tobool385 = icmp ne i32 %178, 0
  %cond386 = select i1 %tobool385, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0)
  %179 = load i32, i32* %safechown, align 4, !tbaa !5
  %tobool387 = icmp ne i32 %179, 0
  %cond388 = select i1 %tobool387, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.82, i32 0, i32 0), i8* %177, i8* %cond386, i8* %cond388)
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.384, %land.lhs.true.382, %if.end.376
  %180 = load i32, i32* %safechown, align 4, !tbaa !5
  %tobool390 = icmp ne i32 %180, 0
  br i1 %tobool390, label %land.lhs.true.391, label %if.end.407

land.lhs.true.391:                                ; preds = %if.end.389
  %181 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %cmp392 = icmp eq %struct.address* %181, null
  br i1 %cmp392, label %if.then.402, label %lor.lhs.false.394

lor.lhs.false.394:                                ; preds = %land.lhs.true.391
  %182 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_uid395 = getelementptr inbounds %struct.address, %struct.address* %182, i32 0, i32 6
  %183 = load i32, i32* %q_uid395, align 4, !tbaa !40
  %184 = load i32, i32* @DefUid, align 4, !tbaa !5
  %cmp396 = icmp eq i32 %183, %184
  br i1 %cmp396, label %land.lhs.true.398, label %if.end.407

land.lhs.true.398:                                ; preds = %lor.lhs.false.394
  %185 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_gid399 = getelementptr inbounds %struct.address, %struct.address* %185, i32 0, i32 7
  %186 = load i32, i32* %q_gid399, align 4, !tbaa !50
  %cmp400 = icmp eq i32 %186, 0
  br i1 %cmp400, label %if.then.402, label %if.end.407

if.then.402:                                      ; preds = %land.lhs.true.398, %land.lhs.true.391
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %187 = load i32, i32* %st_uid, align 4, !tbaa !57
  %188 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_uid403 = getelementptr inbounds %struct.address, %struct.address* %188, i32 0, i32 6
  store i32 %187, i32* %q_uid403, align 4, !tbaa !40
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 5
  %189 = load i32, i32* %st_gid, align 4, !tbaa !60
  %190 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_gid404 = getelementptr inbounds %struct.address, %struct.address* %190, i32 0, i32 7
  store i32 %189, i32* %q_gid404, align 4, !tbaa !50
  %191 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags405 = getelementptr inbounds %struct.address, %struct.address* %191, i32 0, i32 5
  %192 = load i64, i64* %q_flags405, align 8, !tbaa !24
  %or406 = or i64 %192, 1
  store i64 %or406, i64* %q_flags405, align 8, !tbaa !24
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.402, %land.lhs.true.398, %lor.lhs.false.394, %if.end.389
  %193 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %cmp408 = icmp ne %struct.address* %193, null
  br i1 %cmp408, label %land.lhs.true.410, label %if.else.421

land.lhs.true.410:                                ; preds = %if.end.407
  %194 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_uid411 = getelementptr inbounds %struct.address, %struct.address* %194, i32 0, i32 6
  %195 = load i32, i32* %q_uid411, align 4, !tbaa !40
  %st_uid412 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %196 = load i32, i32* %st_uid412, align 4, !tbaa !57
  %cmp413 = icmp eq i32 %195, %196
  br i1 %cmp413, label %if.then.415, label %if.else.421

if.then.415:                                      ; preds = %land.lhs.true.410
  %197 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_flags416 = getelementptr inbounds %struct.address, %struct.address* %197, i32 0, i32 5
  %198 = load i64, i64* %q_flags416, align 8, !tbaa !24
  %and417 = and i64 %198, 16
  %199 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags418 = getelementptr inbounds %struct.address, %struct.address* %199, i32 0, i32 5
  %200 = load i64, i64* %q_flags418, align 8, !tbaa !24
  %or419 = or i64 %200, %and417
  store i64 %or419, i64* %q_flags418, align 8, !tbaa !24
  %201 = load %struct.address*, %struct.address** %ca, align 8, !tbaa !1
  %q_ruser = getelementptr inbounds %struct.address, %struct.address* %201, i32 0, i32 2
  %202 = load i8*, i8** %q_ruser, align 8, !tbaa !39
  %203 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_ruser420 = getelementptr inbounds %struct.address, %struct.address* %203, i32 0, i32 2
  store i8* %202, i8** %q_ruser420, align 8, !tbaa !39
  br label %if.end.464

if.else.421:                                      ; preds = %land.lhs.true.410, %if.end.407
  %204 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool422 = icmp ne i32 %204, 0
  br i1 %tobool422, label %if.end.463, label %if.then.423

if.then.423:                                      ; preds = %if.else.421
  %205 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %205) #1
  %st_uid424 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %206 = load i32, i32* %st_uid424, align 4, !tbaa !57
  %call425 = call %struct.passwd* @sm_getpwuid(i32 %206)
  store %struct.passwd* %call425, %struct.passwd** %pw, align 8, !tbaa !1
  %207 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %cmp426 = icmp eq %struct.passwd* %207, null
  br i1 %cmp426, label %if.then.428, label %if.else.433

if.then.428:                                      ; preds = %if.then.423
  %st_uid429 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %208 = load i32, i32* %st_uid429, align 4, !tbaa !57
  %209 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_uid430 = getelementptr inbounds %struct.address, %struct.address* %209, i32 0, i32 6
  store i32 %208, i32* %q_uid430, align 4, !tbaa !40
  %210 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags431 = getelementptr inbounds %struct.address, %struct.address* %210, i32 0, i32 5
  %211 = load i64, i64* %q_flags431, align 8, !tbaa !24
  %or432 = or i64 %211, 16
  store i64 %or432, i64* %q_flags431, align 8, !tbaa !24
  br label %if.end.462

if.else.433:                                      ; preds = %if.then.423
  %212 = bitcast i8** %sh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %212) #1
  %213 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %213, i32 0, i32 52
  %214 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !36
  %215 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %215, i32 0, i32 0
  %216 = load i8*, i8** %pw_name, align 8, !tbaa !61
  %call434 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %214, i8* %216)
  %217 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_ruser435 = getelementptr inbounds %struct.address, %struct.address* %217, i32 0, i32 2
  store i8* %call434, i8** %q_ruser435, align 8, !tbaa !39
  %218 = load i32, i32* %safechown, align 4, !tbaa !5
  %tobool436 = icmp ne i32 %218, 0
  br i1 %tobool436, label %if.then.437, label %if.else.438

if.then.437:                                      ; preds = %if.else.433
  %219 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_shell = getelementptr inbounds %struct.passwd, %struct.passwd* %219, i32 0, i32 6
  %220 = load i8*, i8** %pw_shell, align 8, !tbaa !63
  store i8* %220, i8** %sh, align 8, !tbaa !1
  br label %if.end.439

if.else.438:                                      ; preds = %if.else.433
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0), i8** %sh, align 8, !tbaa !1
  br label %if.end.439

if.end.439:                                       ; preds = %if.else.438, %if.then.437
  %221 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_name440 = getelementptr inbounds %struct.passwd, %struct.passwd* %221, i32 0, i32 0
  %222 = load i8*, i8** %pw_name440, align 8, !tbaa !61
  %223 = load i8*, i8** %sh, align 8, !tbaa !1
  %call441 = call i32 @usershellok(i8* %222, i8* %223)
  %tobool442 = icmp ne i32 %call441, 0
  br i1 %tobool442, label %if.end.461, label %if.then.443

if.then.443:                                      ; preds = %if.end.439
  %224 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp444 = icmp sgt i32 %224, 11
  br i1 %cmp444, label %if.then.446, label %if.end.452

if.then.446:                                      ; preds = %if.then.443
  %225 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id447 = getelementptr inbounds %struct.envelope, %struct.envelope* %225, i32 0, i32 25
  %226 = load i8*, i8** %e_id447, align 8, !tbaa !38
  %227 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call448 = call i8* @shortenstring(i8* %227, i64 203)
  %228 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_name449 = getelementptr inbounds %struct.passwd, %struct.passwd* %228, i32 0, i32 0
  %229 = load i8*, i8** %pw_name449, align 8, !tbaa !61
  %230 = load i8*, i8** %sh, align 8, !tbaa !1
  %231 = load i32, i32* %safechown, align 4, !tbaa !5
  %tobool450 = icmp ne i32 %231, 0
  %cond451 = select i1 %tobool450, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %226, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.87, i32 0, i32 0), i8* %call448, i8* %229, i8* %230, i8* %cond451)
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.446, %if.then.443
  %232 = load i32, i32* %safechown, align 4, !tbaa !5
  %tobool453 = icmp ne i32 %232, 0
  br i1 %tobool453, label %if.then.454, label %if.else.457

if.then.454:                                      ; preds = %if.end.452
  %233 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags455 = getelementptr inbounds %struct.address, %struct.address* %233, i32 0, i32 5
  %234 = load i64, i64* %q_flags455, align 8, !tbaa !24
  %or456 = or i64 %234, 16
  store i64 %or456, i64* %q_flags455, align 8, !tbaa !24
  br label %if.end.460

if.else.457:                                      ; preds = %if.end.452
  %235 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags458 = getelementptr inbounds %struct.address, %struct.address* %235, i32 0, i32 5
  %236 = load i64, i64* %q_flags458, align 8, !tbaa !24
  %or459 = or i64 %236, 32
  store i64 %or459, i64* %q_flags458, align 8, !tbaa !24
  br label %if.end.460

if.end.460:                                       ; preds = %if.else.457, %if.then.454
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %if.end.439
  %237 = bitcast i8** %sh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461, %if.then.428
  %238 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462, %if.else.421
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %if.then.415
  %239 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %239, i32 0, i32 11
  %240 = load i64, i64* %e_flags, align 8, !tbaa !16
  %and465 = and i64 %240, 512
  %cmp466 = icmp ne i64 %and465, 0
  br i1 %cmp466, label %if.then.468, label %if.end.471

if.then.468:                                      ; preds = %if.end.464
  %241 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_state469 = getelementptr inbounds %struct.address, %struct.address* %241, i32 0, i32 21
  store i16 5, i16* %q_state469, align 2, !tbaa !25
  %242 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_nrcpts = getelementptr inbounds %struct.envelope, %struct.envelope* %242, i32 0, i32 12
  %243 = load i32, i32* %e_nrcpts, align 4, !tbaa !44
  %inc = add nsw i32 %243, 1
  store i32 %inc, i32* %e_nrcpts, align 4, !tbaa !44
  %244 = load volatile %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call470 = call i32 @sm_io_close(%struct.sm_file* %244, i32 -2)
  %245 = load i32, i32* %rval, align 4, !tbaa !5
  store i32 %245, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

if.end.471:                                       ; preds = %if.end.464
  store i32 2, i32* %mode, align 4, !tbaa !5
  %246 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool472 = icmp ne i32 %246, 0
  %cond473 = select i1 %tobool472, i32 3, i32 4
  %conv474 = trunc i32 %cond473 to i8
  %conv475 = zext i8 %conv474 to i64
  %div476 = udiv i64 %conv475, 32
  %and477 = and i64 %div476, 7
  %arrayidx478 = getelementptr inbounds [8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 %and477
  %247 = load i32, i32* %arrayidx478, align 4, !tbaa !5
  %248 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool479 = icmp ne i32 %248, 0
  %cond480 = select i1 %tobool479, i32 3, i32 4
  %conv481 = trunc i32 %cond480 to i8
  %conv482 = zext i8 %conv481 to i64
  %rem483 = urem i64 %conv482, 32
  %sh_prom484 = trunc i64 %rem483 to i32
  %shl485 = shl i32 1, %sh_prom484
  %and486 = and i32 %247, %shl485
  %tobool487 = icmp ne i32 %and486, 0
  br i1 %tobool487, label %if.end.490, label %if.then.488

if.then.488:                                      ; preds = %if.end.471
  %249 = load i32, i32* %mode, align 4, !tbaa !5
  %or489 = or i32 %249, 16
  store i32 %or489, i32* %mode, align 4, !tbaa !5
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.488, %if.end.471
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %250 = load i32, i32* %st_mode, align 4, !tbaa !64
  %251 = load i32, i32* %mode, align 4, !tbaa !5
  %and491 = and i32 %250, %251
  %cmp492 = icmp ne i32 %and491, 0
  br i1 %cmp492, label %if.then.494, label %if.end.523

if.then.494:                                      ; preds = %if.end.490
  %252 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv495 = zext i8 %252 to i32
  %cmp496 = icmp sge i32 %conv495, 6
  br i1 %cmp496, label %land.lhs.true.498, label %if.end.507

land.lhs.true.498:                                ; preds = %if.then.494
  %253 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool499 = icmp ne i32 %253, 0
  br i1 %tobool499, label %if.end.507, label %if.then.500

if.then.500:                                      ; preds = %land.lhs.true.498
  %254 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call501 = call i8* @shortenstring(i8* %254, i64 203)
  %st_mode502 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %255 = load i32, i32* %st_mode502, align 4, !tbaa !64
  %and503 = and i32 %255, 2
  %cmp504 = icmp ne i32 %and503, 0
  %cond506 = select i1 %cmp504, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.90, i32 0, i32 0), i8* %call501, i8* %cond506)
  br label %if.end.507

if.end.507:                                       ; preds = %if.then.500, %land.lhs.true.498, %if.then.494
  %256 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp508 = icmp sgt i32 %256, 11
  br i1 %cmp508, label %if.then.510, label %if.end.520

if.then.510:                                      ; preds = %if.end.507
  %257 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id511 = getelementptr inbounds %struct.envelope, %struct.envelope* %257, i32 0, i32 25
  %258 = load i8*, i8** %e_id511, align 8, !tbaa !38
  %259 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call512 = call i8* @shortenstring(i8* %259, i64 203)
  %st_mode513 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %260 = load i32, i32* %st_mode513, align 4, !tbaa !64
  %and514 = and i32 %260, 2
  %cmp515 = icmp ne i32 %and514, 0
  %cond517 = select i1 %cmp515, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0)
  %261 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool518 = icmp ne i32 %261, 0
  %cond519 = select i1 %tobool518, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %258, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.93, i32 0, i32 0), i8* %call512, i8* %cond517, i8* %cond519)
  br label %if.end.520

if.end.520:                                       ; preds = %if.then.510, %if.end.507
  %262 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags521 = getelementptr inbounds %struct.address, %struct.address* %262, i32 0, i32 5
  %263 = load i64, i64* %q_flags521, align 8, !tbaa !24
  %or522 = or i64 %263, 32
  store i64 %or522, i64* %q_flags521, align 8, !tbaa !24
  br label %if.end.523

if.end.523:                                       ; preds = %if.end.520, %if.end.490
  %264 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  store i8* %264, i8** @FileName, align 8, !tbaa !1
  store i32 0, i32* @LineNumber, align 4, !tbaa !5
  %265 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags524 = getelementptr inbounds %struct.address, %struct.address* %265, i32 0, i32 5
  %266 = load i64, i64* %q_flags524, align 8, !tbaa !24
  %and525 = and i64 %266, -9
  store i64 %and525, i64* %q_flags524, align 8, !tbaa !24
  store i32 0, i32* %nincludes, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.647, %if.then.621, %if.then.542, %if.end.523
  %267 = load volatile %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %arraydecay526 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call527 = call i32 @sm_io_fgets(%struct.sm_file* %267, i32 -2, i8* %arraydecay526, i32 2048)
  %cmp528 = icmp sge i32 %call527, 0
  br i1 %cmp528, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %268 = load volatile i32, i32* %maxreached, align 4, !tbaa !5
  %tobool530 = icmp ne i32 %268, 0
  %lnot = xor i1 %tobool530, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %269 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %269, label %while.body, label %while.end.648

while.body:                                       ; preds = %land.end
  %arraydecay531 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void @fixcrlf(i8* %arraydecay531, i32 1)
  %270 = load i32, i32* @LineNumber, align 4, !tbaa !5
  %inc532 = add nsw i32 %270, 1
  store i32 %inc532, i32* @LineNumber, align 4, !tbaa !5
  %arrayidx533 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 0
  %271 = load i8, i8* %arrayidx533, align 1, !tbaa !15
  %conv534 = sext i8 %271 to i32
  %cmp535 = icmp eq i32 %conv534, 35
  br i1 %cmp535, label %if.then.542, label %lor.lhs.false.537

lor.lhs.false.537:                                ; preds = %while.body
  %arrayidx538 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 0
  %272 = load i8, i8* %arrayidx538, align 1, !tbaa !15
  %conv539 = sext i8 %272 to i32
  %cmp540 = icmp eq i32 %conv539, 0
  br i1 %cmp540, label %if.then.542, label %if.end.543

if.then.542:                                      ; preds = %lor.lhs.false.537, %while.body
  br label %while.cond

if.end.543:                                       ; preds = %lor.lhs.false.537
  %arraydecay544 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay544, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.616, %if.end.543
  %273 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %call545 = call i8* @strchr(i8* %incdec.ptr, i32 35) #1
  store i8* %call545, i8** %p, align 8, !tbaa !1
  %cmp546 = icmp ne i8* %call545, null
  br i1 %cmp546, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %274 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx548 = getelementptr inbounds i8, i8* %274, i64 1
  %275 = load i8, i8* %arrayidx548, align 1, !tbaa !15
  %conv549 = sext i8 %275 to i32
  %cmp550 = icmp eq i32 %conv549, 64
  br i1 %cmp550, label %land.lhs.true.552, label %if.end.616

land.lhs.true.552:                                ; preds = %for.body
  %276 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx553 = getelementptr inbounds i8, i8* %276, i64 2
  %277 = load i8, i8* %arrayidx553, align 1, !tbaa !15
  %conv554 = sext i8 %277 to i32
  %cmp555 = icmp eq i32 %conv554, 35
  br i1 %cmp555, label %land.lhs.true.557, label %if.end.616

land.lhs.true.557:                                ; preds = %land.lhs.true.552
  %278 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx558 = getelementptr inbounds i8, i8* %278, i64 -1
  %279 = load i8, i8* %arrayidx558, align 1, !tbaa !15
  %conv559 = sext i8 %279 to i32
  %and560 = and i32 %conv559, -128
  %cmp561 = icmp eq i32 %and560, 0
  br i1 %cmp561, label %land.lhs.true.563, label %if.end.616

land.lhs.true.563:                                ; preds = %land.lhs.true.557
  %280 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx564 = getelementptr inbounds i8, i8* %280, i64 -1
  %281 = load i8, i8* %arrayidx564, align 1, !tbaa !15
  %conv565 = sext i8 %281 to i32
  %idxprom = sext i32 %conv565 to i64
  %call566 = call i16** @__ctype_b_loc() #13
  %282 = load i16*, i16** %call566, align 8, !tbaa !1
  %arrayidx567 = getelementptr inbounds i16, i16* %282, i64 %idxprom
  %283 = load i16, i16* %arrayidx567, align 2, !tbaa !21
  %conv568 = zext i16 %283 to i32
  %and569 = and i32 %conv568, 8192
  %tobool570 = icmp ne i32 %and569, 0
  br i1 %tobool570, label %land.lhs.true.571, label %if.end.616

land.lhs.true.571:                                ; preds = %land.lhs.true.563
  %284 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx572 = getelementptr inbounds i8, i8* %284, i64 3
  %285 = load i8, i8* %arrayidx572, align 1, !tbaa !15
  %conv573 = sext i8 %285 to i32
  %cmp574 = icmp eq i32 %conv573, 0
  br i1 %cmp574, label %if.then.591, label %lor.lhs.false.576

lor.lhs.false.576:                                ; preds = %land.lhs.true.571
  %286 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx577 = getelementptr inbounds i8, i8* %286, i64 3
  %287 = load i8, i8* %arrayidx577, align 1, !tbaa !15
  %conv578 = sext i8 %287 to i32
  %and579 = and i32 %conv578, -128
  %cmp580 = icmp eq i32 %and579, 0
  br i1 %cmp580, label %land.lhs.true.582, label %if.end.616

land.lhs.true.582:                                ; preds = %lor.lhs.false.576
  %288 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx583 = getelementptr inbounds i8, i8* %288, i64 3
  %289 = load i8, i8* %arrayidx583, align 1, !tbaa !15
  %conv584 = sext i8 %289 to i32
  %idxprom585 = sext i32 %conv584 to i64
  %call586 = call i16** @__ctype_b_loc() #13
  %290 = load i16*, i16** %call586, align 8, !tbaa !1
  %arrayidx587 = getelementptr inbounds i16, i16* %290, i64 %idxprom585
  %291 = load i16, i16* %arrayidx587, align 2, !tbaa !21
  %conv588 = zext i16 %291 to i32
  %and589 = and i32 %conv588, 8192
  %tobool590 = icmp ne i32 %and589, 0
  br i1 %tobool590, label %if.then.591, label %if.end.616

if.then.591:                                      ; preds = %land.lhs.true.582, %land.lhs.true.571
  %292 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr592 = getelementptr inbounds i8, i8* %292, i32 -1
  store i8* %incdec.ptr592, i8** %p, align 8, !tbaa !1
  br label %while.cond.593

while.cond.593:                                   ; preds = %while.body.613, %if.then.591
  %293 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay594 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %cmp595 = icmp ugt i8* %293, %arraydecay594
  br i1 %cmp595, label %land.lhs.true.597, label %land.end.612

land.lhs.true.597:                                ; preds = %while.cond.593
  %294 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx598 = getelementptr inbounds i8, i8* %294, i64 -1
  %295 = load i8, i8* %arrayidx598, align 1, !tbaa !15
  %conv599 = sext i8 %295 to i32
  %and600 = and i32 %conv599, -128
  %cmp601 = icmp eq i32 %and600, 0
  br i1 %cmp601, label %land.rhs.603, label %land.end.612

land.rhs.603:                                     ; preds = %land.lhs.true.597
  %296 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx604 = getelementptr inbounds i8, i8* %296, i64 -1
  %297 = load i8, i8* %arrayidx604, align 1, !tbaa !15
  %conv605 = sext i8 %297 to i32
  %idxprom606 = sext i32 %conv605 to i64
  %call607 = call i16** @__ctype_b_loc() #13
  %298 = load i16*, i16** %call607, align 8, !tbaa !1
  %arrayidx608 = getelementptr inbounds i16, i16* %298, i64 %idxprom606
  %299 = load i16, i16* %arrayidx608, align 2, !tbaa !21
  %conv609 = zext i16 %299 to i32
  %and610 = and i32 %conv609, 8192
  %tobool611 = icmp ne i32 %and610, 0
  br label %land.end.612

land.end.612:                                     ; preds = %land.rhs.603, %land.lhs.true.597, %while.cond.593
  %300 = phi i1 [ false, %land.lhs.true.597 ], [ false, %while.cond.593 ], [ %tobool611, %land.rhs.603 ]
  br i1 %300, label %while.body.613, label %while.end

while.body.613:                                   ; preds = %land.end.612
  %301 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr614 = getelementptr inbounds i8, i8* %301, i32 -1
  store i8* %incdec.ptr614, i8** %p, align 8, !tbaa !1
  br label %while.cond.593

while.end:                                        ; preds = %land.end.612
  %302 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx615 = getelementptr inbounds i8, i8* %302, i64 0
  store i8 0, i8* %arrayidx615, align 1, !tbaa !15
  br label %for.end

if.end.616:                                       ; preds = %land.lhs.true.582, %lor.lhs.false.576, %land.lhs.true.563, %land.lhs.true.557, %land.lhs.true.552, %for.body
  br label %for.cond

for.end:                                          ; preds = %while.end, %for.cond
  %arrayidx617 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 0
  %303 = load i8, i8* %arrayidx617, align 1, !tbaa !15
  %conv618 = sext i8 %303 to i32
  %cmp619 = icmp eq i32 %conv618, 0
  br i1 %cmp619, label %if.then.621, label %if.end.622

if.then.621:                                      ; preds = %for.end
  br label %while.cond

if.end.622:                                       ; preds = %for.end
  %304 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to623 = getelementptr inbounds %struct.envelope, %struct.envelope* %304, i32 0, i32 3
  store i8* null, i8** %e_to623, align 8, !tbaa !7
  %305 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool624 = icmp ne i32 %305, 0
  %cond625 = select i1 %tobool624, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0)
  %arraydecay626 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @message(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i8* %cond625, i8* %arraydecay626)
  %306 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool627 = icmp ne i32 %306, 0
  br i1 %tobool627, label %land.lhs.true.628, label %if.end.635

land.lhs.true.628:                                ; preds = %if.end.622
  %307 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp629 = icmp sgt i32 %307, 10
  br i1 %cmp629, label %if.then.631, label %if.end.635

if.then.631:                                      ; preds = %land.lhs.true.628
  %308 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id632 = getelementptr inbounds %struct.envelope, %struct.envelope* %308, i32 0, i32 25
  %309 = load i8*, i8** %e_id632, align 8, !tbaa !38
  %310 = load i8*, i8** %oldto, align 8, !tbaa !1
  %arraydecay633 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call634 = call i8* @shortenstring(i8* %arraydecay633, i64 203)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %309, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i32 0, i32 0), i8* %310, i8* %call634)
  br label %if.end.635

if.end.635:                                       ; preds = %if.then.631, %land.lhs.true.628, %if.end.622
  %arraydecay636 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %311 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %312 = load %struct.address**, %struct.address*** %sendq.addr, align 8, !tbaa !1
  %313 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %add = add nsw i32 %313, 1
  %314 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call637 = call i32 @sendtolist(i8* %arraydecay636, %struct.address* %311, %struct.address** %312, i32 %add, %struct.envelope* %314)
  %315 = load i32, i32* %nincludes, align 4, !tbaa !5
  %add638 = add nsw i32 %315, %call637
  store i32 %add638, i32* %nincludes, align 4, !tbaa !5
  %316 = load i32, i32* %forwarding.addr, align 4, !tbaa !5
  %tobool639 = icmp ne i32 %316, 0
  br i1 %tobool639, label %land.lhs.true.640, label %if.end.647

land.lhs.true.640:                                ; preds = %if.end.635
  %317 = load i32, i32* @MaxForwardEntries, align 4, !tbaa !5
  %cmp641 = icmp sgt i32 %317, 0
  br i1 %cmp641, label %land.lhs.true.643, label %if.end.647

land.lhs.true.643:                                ; preds = %land.lhs.true.640
  %318 = load i32, i32* %nincludes, align 4, !tbaa !5
  %319 = load i32, i32* @MaxForwardEntries, align 4, !tbaa !5
  %cmp644 = icmp sge i32 %318, %319
  br i1 %cmp644, label %if.then.646, label %if.end.647

if.then.646:                                      ; preds = %land.lhs.true.643
  %320 = load i32, i32* @MaxForwardEntries, align 4, !tbaa !5
  %321 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.100, i32 0, i32 0), i32 %320, i8* %321)
  store volatile i32 1, i32* %maxreached, align 4, !tbaa !5
  br label %if.end.647

if.end.647:                                       ; preds = %if.then.646, %land.lhs.true.643, %land.lhs.true.640, %if.end.635
  br label %while.cond

while.end.648:                                    ; preds = %land.end
  %322 = load volatile %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %f_flags = getelementptr inbounds %struct.sm_file, %struct.sm_file* %322, i32 0, i32 4
  %323 = load i64, i64* %f_flags, align 8, !tbaa !65
  %and649 = and i64 %323, 256
  %cmp650 = icmp ne i64 %and649, 0
  br i1 %cmp650, label %land.lhs.true.652, label %if.end.661

land.lhs.true.652:                                ; preds = %while.end.648
  %324 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv653 = zext i8 %324 to i32
  %cmp654 = icmp sge i32 %conv653, 3
  br i1 %cmp654, label %land.lhs.true.656, label %if.end.661

land.lhs.true.656:                                ; preds = %land.lhs.true.652
  %325 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool657 = icmp ne i32 %325, 0
  br i1 %tobool657, label %if.end.661, label %if.then.658

if.then.658:                                      ; preds = %land.lhs.true.656
  %call659 = call i32* @__errno_location() #13
  %326 = load i32, i32* %call659, align 4, !tbaa !5
  %call660 = call i8* @sm_errstring(i32 %326)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.101, i32 0, i32 0), i8* %call660)
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.658, %land.lhs.true.656, %land.lhs.true.652, %while.end.648
  %327 = load i32, i32* %nincludes, align 4, !tbaa !5
  %cmp662 = icmp sgt i32 %327, 0
  br i1 %cmp662, label %land.lhs.true.664, label %if.end.688

land.lhs.true.664:                                ; preds = %if.end.661
  %328 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags665 = getelementptr inbounds %struct.address, %struct.address* %328, i32 0, i32 5
  %329 = load i64, i64* %q_flags665, align 8, !tbaa !24
  %and666 = and i64 %329, 8
  %cmp667 = icmp ne i64 %and666, 0
  br i1 %cmp667, label %if.end.688, label %if.then.669

if.then.669:                                      ; preds = %land.lhs.true.664
  %330 = load i32, i32* %aliaslevel.addr, align 4, !tbaa !5
  %331 = load i32, i32* @MaxAliasRecursion, align 4, !tbaa !5
  %cmp670 = icmp sle i32 %330, %331
  br i1 %cmp670, label %if.then.677, label %lor.lhs.false.672

lor.lhs.false.672:                                ; preds = %if.then.669
  %332 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_state673 = getelementptr inbounds %struct.address, %struct.address* %332, i32 0, i32 21
  %333 = load i16, i16* %q_state673, align 2, !tbaa !25
  %conv674 = sext i16 %333 to i32
  %cmp675 = icmp ne i32 %conv674, 2
  br i1 %cmp675, label %if.then.677, label %if.end.687

if.then.677:                                      ; preds = %lor.lhs.false.672, %if.then.669
  %334 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_state678 = getelementptr inbounds %struct.address, %struct.address* %334, i32 0, i32 21
  store i16 6, i16* %q_state678, align 2, !tbaa !25
  %335 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 27), align 1, !tbaa !15
  %conv679 = zext i8 %335 to i32
  %cmp680 = icmp sge i32 %conv679, 5
  br i1 %cmp680, label %land.lhs.true.682, label %if.end.686

land.lhs.true.682:                                ; preds = %if.then.677
  %336 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool683 = icmp ne i32 %336, 0
  br i1 %tobool683, label %if.end.686, label %if.then.684

if.then.684:                                      ; preds = %land.lhs.true.682
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i32 0, i32 0))
  %call685 = call %struct.sm_file* @sm_debug_file()
  %337 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  call void @printaddr(%struct.sm_file* %call685, %struct.address* %337, i32 0)
  br label %if.end.686

if.end.686:                                       ; preds = %if.then.684, %land.lhs.true.682, %if.then.677
  br label %if.end.687

if.end.687:                                       ; preds = %if.end.686, %lor.lhs.false.672
  br label %if.end.688

if.end.688:                                       ; preds = %if.end.687, %land.lhs.true.664, %if.end.661
  %338 = load volatile %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call689 = call i32 @sm_io_close(%struct.sm_file* %338, i32 -2)
  %339 = load i8*, i8** %oldfilename, align 8, !tbaa !1
  store i8* %339, i8** @FileName, align 8, !tbaa !1
  %340 = load i32, i32* %oldlinenumber, align 4, !tbaa !5
  store i32 %340, i32* @LineNumber, align 4, !tbaa !5
  %341 = load i8*, i8** %oldto, align 8, !tbaa !1
  %342 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_to690 = getelementptr inbounds %struct.envelope, %struct.envelope* %342, i32 0, i32 3
  store i8* %341, i8** %e_to690, align 8, !tbaa !7
  %343 = load i32, i32* %rval, align 4, !tbaa !5
  store i32 %343, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

cleanup.691:                                      ; preds = %if.end.688, %if.then.468, %if.then.373, %if.then.367, %cleanup
  %344 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %344) #1
  %345 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.end(i64 144, i8* %345) #1
  %346 = bitcast i32* %safedir to i8*
  call void @llvm.lifetime.end(i64 4, i8* %346) #1
  %347 = bitcast i32* %safechown to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #1
  %348 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = bitcast i64* %sfflags to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #1
  %350 = bitcast i32* %rval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #1
  %351 = bitcast i8** %user to i8*
  call void @llvm.lifetime.end(i64 8, i8* %351) #1
  %352 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %352) #1
  %353 = bitcast i32* %uid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #1
  %354 = bitcast i32* %savedgid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #1
  %355 = bitcast i32* %saveduid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #1
  %356 = bitcast %struct.address** %ca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %356) #1
  %357 = bitcast i32* %maxreached to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #1
  %358 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %358) #1
  %359 = bitcast i32* %nincludes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %359) #1
  %360 = bitcast %struct.sm_event** %ev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #1
  %361 = bitcast i32* %oldlinenumber to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  %362 = bitcast i8** %oldfilename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %362) #1
  %363 = bitcast i8** %oldto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363) #1
  %364 = bitcast %struct.sm_file** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %364) #1
  %365 = load i32, i32* %retval
  ret i32 %365
}

declare i32 @transienterror(i32) #2

declare i8* @shortenstring(i8*, i64) #2

declare i8* @sm_errstring(i32) #2

declare void @usrerr(i8*, ...) #2

declare void @alias(%struct.address*, %struct.address**, i32, %struct.envelope*) #2

declare void @maplocaluser(%struct.address*, %struct.address**, i32, %struct.envelope*) #2

; Function Attrs: nounwind uwtable
define i32 @finduser(i8* %name, i32* %fuzzyp, %struct.SM_MBDB_T* %user) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %fuzzyp.addr = alloca i32*, align 8
  %user.addr = alloca %struct.SM_MBDB_T*, align 8
  %pw = alloca %struct.passwd*, align 8
  %p = alloca i8*, align 8
  %tryagain = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %buf = alloca [257 x i8], align 16
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i32* %fuzzyp, i32** %fuzzyp.addr, align 8, !tbaa !1
  store %struct.SM_MBDB_T* %user, %struct.SM_MBDB_T** %user.addr, align 8, !tbaa !1
  %0 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %tryagain to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv = zext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32*, i32** %fuzzyp.addr, align 8, !tbaa !1
  store i32 0, i32* %7, align 4, !tbaa !5
  %8 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %9 = load %struct.SM_MBDB_T*, %struct.SM_MBDB_T** %user.addr, align 8, !tbaa !1
  %call = call i32 @sm_mbdb_lookup(i8* %8, %struct.SM_MBDB_T* %9)
  store i32 %call, i32* %status, align 4, !tbaa !5
  %10 = load i32, i32* %status, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %10, 67
  br i1 %cmp2, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.end
  %11 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv5 = zext i8 %11 to i32
  %cmp6 = icmp sge i32 %conv5, 4
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.12

land.lhs.true.8:                                  ; preds = %if.then.4
  %12 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  %13 = load i32, i32* %status, align 4, !tbaa !5
  %call11 = call i8* @sm_strexit(i32 %13)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i8* %call11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %land.lhs.true.8, %if.then.4
  %14 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.13:                                        ; preds = %if.end
  store i32 0, i32* %tryagain, align 4, !tbaa !5
  %15 = load i8*, i8** %name.addr, align 8, !tbaa !1
  store i8* %15, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !15
  %conv14 = sext i8 %17 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !15
  %conv17 = sext i8 %19 to i32
  %and = and i32 %conv17, -128
  %cmp18 = icmp eq i32 %and, 0
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.32

land.lhs.true.20:                                 ; preds = %for.body
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !15
  %conv21 = sext i8 %21 to i32
  %idxprom = sext i32 %conv21 to i64
  %call22 = call i16** @__ctype_b_loc() #13
  %22 = load i16*, i16** %call22, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %22, i64 %idxprom
  %23 = load i16, i16* %arrayidx, align 2, !tbaa !21
  %conv23 = zext i16 %23 to i32
  %and24 = and i32 %conv23, 256
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %land.lhs.true.20
  %24 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !15
  %conv27 = sext i8 %26 to i32
  %idxprom28 = sext i32 %conv27 to i64
  %call29 = call i32** @__ctype_tolower_loc() #13
  %27 = load i32*, i32** %call29, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i32, i32* %27, i64 %idxprom28
  %28 = load i32, i32* %arrayidx30, align 4, !tbaa !5
  store i32 %28, i32* %__res, align 4, !tbaa !5
  %29 = load i32, i32* %__res, align 4, !tbaa !5
  store i32 %29, i32* %tmp, !tbaa !5
  %30 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i32, i32* %tmp, !tbaa !5
  %conv31 = trunc i32 %31 to i8
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 %conv31, i8* %32, align 1, !tbaa !15
  store i32 1, i32* %tryagain, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.26, %land.lhs.true.20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %tryagain, align 4, !tbaa !5
  %tobool33 = icmp ne i32 %34, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.47

land.lhs.true.34:                                 ; preds = %for.end
  %35 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %36 = load %struct.SM_MBDB_T*, %struct.SM_MBDB_T** %user.addr, align 8, !tbaa !1
  %call35 = call i32 @sm_mbdb_lookup(i8* %35, %struct.SM_MBDB_T* %36)
  store i32 %call35, i32* %status, align 4, !tbaa !5
  %cmp36 = icmp ne i32 %call35, 67
  br i1 %cmp36, label %if.then.38, label %if.end.47

if.then.38:                                       ; preds = %land.lhs.true.34
  %37 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv39 = zext i8 %37 to i32
  %cmp40 = icmp sge i32 %conv39, 4
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.46

land.lhs.true.42:                                 ; preds = %if.then.38
  %38 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool43 = icmp ne i32 %38, 0
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true.42
  %39 = load i32, i32* %status, align 4, !tbaa !5
  %call45 = call i8* @sm_strexit(i32 %39)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i8* %call45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %land.lhs.true.42, %if.then.38
  %40 = load i32*, i32** %fuzzyp.addr, align 8, !tbaa !1
  store i32 1, i32* %40, align 4, !tbaa !5
  %41 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.47:                                        ; preds = %land.lhs.true.34, %for.end
  %42 = load i32, i32* @MatchGecos, align 4, !tbaa !5
  %tobool48 = icmp ne i32 %42, 0
  br i1 %tobool48, label %if.end.57, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  %43 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv50 = zext i8 %43 to i32
  %cmp51 = icmp sge i32 %conv50, 4
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.56

land.lhs.true.53:                                 ; preds = %if.then.49
  %44 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool54 = icmp ne i32 %44, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.53, %if.then.49
  store i32 67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.57:                                        ; preds = %if.end.47
  %45 = load i8*, i8** %name.addr, align 8, !tbaa !1
  store i8* %45, i8** %p, align 8, !tbaa !1
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.73, %if.end.57
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !15
  %conv59 = sext i8 %47 to i32
  %cmp60 = icmp ne i32 %conv59, 0
  br i1 %cmp60, label %for.body.62, label %for.end.75

for.body.62:                                      ; preds = %for.cond.58
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %49 = load i8, i8* %48, align 1, !tbaa !15
  %conv63 = sext i8 %49 to i32
  %50 = load i8, i8* @SpaceSub, align 1, !tbaa !15
  %conv64 = sext i8 %50 to i32
  %and65 = and i32 %conv64, 127
  %cmp66 = icmp eq i32 %conv63, %and65
  br i1 %cmp66, label %if.then.71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.62
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !15
  %conv68 = sext i8 %52 to i32
  %cmp69 = icmp eq i32 %conv68, 95
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %lor.lhs.false, %for.body.62
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 32, i8* %53, align 1, !tbaa !15
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %lor.lhs.false
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr74, i8** %p, align 8, !tbaa !1
  br label %for.cond.58

for.end.75:                                       ; preds = %for.cond.58
  call void @setpwent()
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %for.end.75
  %call76 = call %struct.passwd* @getpwent()
  store %struct.passwd* %call76, %struct.passwd** %pw, align 8, !tbaa !1
  %cmp77 = icmp ne %struct.passwd* %call76, null
  br i1 %cmp77, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %55) #1
  %56 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_gecos = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i32 0, i32 4
  %57 = load i8*, i8** %pw_gecos, align 8, !tbaa !68
  %58 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %58, i32 0, i32 0
  %59 = load i8*, i8** %pw_name, align 8, !tbaa !61
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  call void @sm_pwfullname(i8* %57, i8* %59, i8* %arraydecay, i64 257)
  %arraydecay80 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %call81 = call i8* @strchr(i8* %arraydecay80, i32 32) #1
  %cmp82 = icmp ne i8* %call81, null
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.99

land.lhs.true.84:                                 ; preds = %while.body
  %arraydecay85 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %60 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call86 = call i32 @sm_strcasecmp(i8* %arraydecay85, i8* %60)
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %if.then.89, label %if.end.99

if.then.89:                                       ; preds = %land.lhs.true.84
  %61 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv90 = zext i8 %61 to i32
  %cmp91 = icmp sge i32 %conv90, 4
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.97

land.lhs.true.93:                                 ; preds = %if.then.89
  %62 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool94 = icmp ne i32 %62, 0
  br i1 %tobool94, label %if.end.97, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.93
  %63 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_name96 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i32 0, i32 0
  %64 = load i8*, i8** %pw_name96, align 8, !tbaa !61
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i8* %64)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %land.lhs.true.93, %if.then.89
  %65 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_name98 = getelementptr inbounds %struct.passwd, %struct.passwd* %65, i32 0, i32 0
  %66 = load i8*, i8** %pw_name98, align 8, !tbaa !61
  call void (i8*, ...) @message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i8* %66)
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

if.end.99:                                        ; preds = %land.lhs.true.84, %while.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.99, %if.end.97
  %67 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %67) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 9, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %68 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %cmp100 = icmp ne %struct.passwd* %68, null
  br i1 %cmp100, label %if.then.102, label %if.else

if.then.102:                                      ; preds = %while.end
  %69 = load i32*, i32** %fuzzyp.addr, align 8, !tbaa !1
  store i32 1, i32* %69, align 4, !tbaa !5
  br label %if.end.110

if.else:                                          ; preds = %while.end
  %70 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 29), align 1, !tbaa !15
  %conv103 = zext i8 %70 to i32
  %cmp104 = icmp sge i32 %conv103, 4
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.109

land.lhs.true.106:                                ; preds = %if.else
  %71 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool107 = icmp ne i32 %71, 0
  br i1 %tobool107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %land.lhs.true.106
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %land.lhs.true.106, %if.else
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.102
  %72 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %cmp111 = icmp eq %struct.passwd* %72, null
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  store i32 67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.114:                                       ; preds = %if.end.110
  %73 = load %struct.SM_MBDB_T*, %struct.SM_MBDB_T** %user.addr, align 8, !tbaa !1
  %74 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  call void @sm_mbdb_frompw(%struct.SM_MBDB_T* %73, %struct.passwd* %74)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %if.end.114, %if.then.113, %if.end.56, %if.end.46, %if.end.12
  %75 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %tryagain to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @giveresponse(i32, i8*, %struct.mailer*, %struct.mailer_con_info*, %struct.address*, i64, %struct.envelope*, %struct.address*) #2

declare i32 @usershellok(i8*, i8*) #2

declare void @forward(%struct.address*, %struct.address**, i32, %struct.envelope*) #2

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

declare i32 @sm_mbdb_lookup(i8*, %struct.SM_MBDB_T*) #2

declare i8* @sm_strexit(i32) #2

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #7

declare void @setpwent() #2

declare %struct.passwd* @getpwent() #2

declare void @sm_pwfullname(i8*, i8*, i8*, i64) #2

declare void @sm_mbdb_frompw(%struct.SM_MBDB_T*, %struct.passwd*) #2

; Function Attrs: nounwind uwtable
define i32 @writable(i8* %filename, %struct.address* %ctladdr, i64 %flags) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %ctladdr.addr = alloca %struct.address*, align 8
  %flags.addr = alloca i64, align 8
  %euid = alloca i32, align 4
  %egid = alloca i32, align 4
  %user = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store %struct.address* %ctladdr, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  store i64 %flags, i64* %flags.addr, align 8, !tbaa !46
  %0 = bitcast i32* %euid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %euid, align 4, !tbaa !5
  %1 = bitcast i32* %egid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %egid, align 4, !tbaa !5
  %2 = bitcast i8** %user to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %user, align 8, !tbaa !1
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 44), align 1, !tbaa !15
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %6 = load i64, i64* %flags.addr, align 8, !tbaa !46
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0), i8* %5, i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call = call i32 @geteuid() #1
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 @geteuid() #1
  store i32 %call5, i32* %euid, align 4, !tbaa !5
  %call6 = call i32 @getegid() #1
  store i32 %call6, i32* %egid, align 4, !tbaa !5
  store i8* null, i8** %user, align 8, !tbaa !1
  br label %if.end.38

if.else:                                          ; preds = %if.end
  %7 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.address* %7, null
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else
  %8 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_uid = getelementptr inbounds %struct.address, %struct.address* %8, i32 0, i32 6
  %9 = load i32, i32* %q_uid, align 4, !tbaa !40
  store i32 %9, i32* %euid, align 4, !tbaa !5
  %10 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_gid = getelementptr inbounds %struct.address, %struct.address* %10, i32 0, i32 7
  %11 = load i32, i32* %q_gid, align 4, !tbaa !50
  store i32 %11, i32* %egid, align 4, !tbaa !5
  %12 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_user = getelementptr inbounds %struct.address, %struct.address* %12, i32 0, i32 1
  %13 = load i8*, i8** %q_user, align 8, !tbaa !30
  store i8* %13, i8** %user, align 8, !tbaa !1
  br label %if.end.37

if.else.10:                                       ; preds = %if.else
  %14 = load i64, i64* %flags.addr, align 8, !tbaa !46
  %and = and i64 %14, 8
  %cmp11 = icmp ne i64 %and, 0
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.10
  %15 = load i32, i32* @RealUid, align 4, !tbaa !5
  store i32 %15, i32* %euid, align 4, !tbaa !5
  %16 = load i32, i32* @RealGid, align 4, !tbaa !5
  store i32 %16, i32* %egid, align 4, !tbaa !5
  %17 = load i8*, i8** @RealUserName, align 8, !tbaa !1
  store i8* %17, i8** %user, align 8, !tbaa !1
  br label %if.end.36

if.else.14:                                       ; preds = %if.else.10
  %18 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  %cmp15 = icmp ne %struct.mailer* %18, null
  br i1 %cmp15, label %land.lhs.true.17, label %if.else.34

land.lhs.true.17:                                 ; preds = %if.else.14
  %19 = load i64, i64* %flags.addr, align 8, !tbaa !46
  %and18 = and i64 %19, 4
  %cmp19 = icmp ne i64 %and18, 0
  br i1 %cmp19, label %if.else.34, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.17
  %20 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  %m_uid = getelementptr inbounds %struct.mailer, %struct.mailer* %20, i32 0, i32 19
  %21 = load i32, i32* %m_uid, align 4, !tbaa !69
  %cmp22 = icmp eq i32 %21, -1
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.then.21
  %22 = load i32, i32* @DefUid, align 4, !tbaa !5
  store i32 %22, i32* %euid, align 4, !tbaa !5
  %23 = load i8*, i8** @DefUser, align 8, !tbaa !1
  store i8* %23, i8** %user, align 8, !tbaa !1
  br label %if.end.27

if.else.25:                                       ; preds = %if.then.21
  %24 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  %m_uid26 = getelementptr inbounds %struct.mailer, %struct.mailer* %24, i32 0, i32 19
  %25 = load i32, i32* %m_uid26, align 4, !tbaa !69
  store i32 %25, i32* %euid, align 4, !tbaa !5
  store i8* null, i8** %user, align 8, !tbaa !1
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  %26 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  %m_gid = getelementptr inbounds %struct.mailer, %struct.mailer* %26, i32 0, i32 20
  %27 = load i32, i32* %m_gid, align 4, !tbaa !70
  %cmp28 = icmp eq i32 %27, -1
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  %28 = load i32, i32* @DefGid, align 4, !tbaa !5
  store i32 %28, i32* %egid, align 4, !tbaa !5
  br label %if.end.33

if.else.31:                                       ; preds = %if.end.27
  %29 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  %m_gid32 = getelementptr inbounds %struct.mailer, %struct.mailer* %29, i32 0, i32 20
  %30 = load i32, i32* %m_gid32, align 4, !tbaa !70
  store i32 %30, i32* %egid, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.35

if.else.34:                                       ; preds = %land.lhs.true.17, %if.else.14
  store i32 0, i32* %egid, align 4, !tbaa !5
  store i32 0, i32* %euid, align 4, !tbaa !5
  store i8* null, i8** %user, align 8, !tbaa !1
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.end.33
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.13
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.9
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.4
  %31 = load i64, i64* %flags.addr, align 8, !tbaa !46
  %and39 = and i64 %31, 4
  %cmp40 = icmp ne i64 %and39, 0
  br i1 %cmp40, label %if.end.51, label %if.then.42

if.then.42:                                       ; preds = %if.end.38
  %32 = load i32, i32* %euid, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %32, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.42
  %33 = load i32, i32* @DefUid, align 4, !tbaa !5
  store i32 %33, i32* %euid, align 4, !tbaa !5
  %34 = load i8*, i8** @DefUser, align 8, !tbaa !1
  store i8* %34, i8** %user, align 8, !tbaa !1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.then.42
  %35 = load i32, i32* %egid, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %35, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  %36 = load i32, i32* @DefGid, align 4, !tbaa !5
  store i32 %36, i32* %egid, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.46
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.38
  %call52 = call i32 @geteuid() #1
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.62

land.lhs.true.55:                                 ; preds = %if.end.51
  %37 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %cmp56 = icmp eq %struct.address* %37, null
  br i1 %cmp56, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.55
  %38 = load %struct.address*, %struct.address** %ctladdr.addr, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %38, i32 0, i32 5
  %39 = load i64, i64* %q_flags, align 8, !tbaa !24
  %and58 = and i64 %39, 1
  %cmp59 = icmp ne i64 %and58, 0
  br i1 %cmp59, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %lor.lhs.false, %land.lhs.true.55
  %40 = load i64, i64* %flags.addr, align 8, !tbaa !46
  %or = or i64 %40, 32
  store i64 %or, i64* %flags.addr, align 8, !tbaa !46
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %lor.lhs.false, %if.end.51
  %41 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %and63 = and i32 %41, 65536
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.end.67, label %if.then.65

if.then.65:                                       ; preds = %if.end.62
  %42 = load i64, i64* %flags.addr, align 8, !tbaa !46
  %or66 = or i64 %42, 2
  store i64 %or66, i64* %flags.addr, align 8, !tbaa !46
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.62
  %43 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %and68 = and i32 %43, 32768
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.end.72, label %if.then.70

if.then.70:                                       ; preds = %if.end.67
  %44 = load i64, i64* %flags.addr, align 8, !tbaa !46
  %or71 = or i64 %44, 512
  store i64 %or71, i64* %flags.addr, align 8, !tbaa !46
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.67
  %45 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %46 = load i32, i32* %euid, align 4, !tbaa !5
  %47 = load i32, i32* %egid, align 4, !tbaa !5
  %48 = load i8*, i8** %user, align 8, !tbaa !1
  %49 = load i64, i64* %flags.addr, align 8, !tbaa !46
  %call73 = call i32 @safefile(i8* %45, i32 %46, i32 %47, i8* %48, i64 %49, i32 128, %struct.stat* null)
  %call74 = call i32* @__errno_location() #13
  store i32 %call73, i32* %call74, align 4, !tbaa !5
  %call75 = call i32* @__errno_location() #13
  %50 = load i32, i32* %call75, align 4, !tbaa !5
  %cmp76 = icmp eq i32 %50, 0
  %conv77 = zext i1 %cmp76 to i32
  %51 = bitcast i8** %user to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %egid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %euid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  ret i32 %conv77
}

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: nounwind
declare i32 @getegid() #3

declare i32 @safefile(i8*, i32, i32, i8*, i64, i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @getuid() #3

; Function Attrs: nounwind uwtable
define %struct.address* @getctladdr(%struct.address* %a) #0 {
entry:
  %a.addr = alloca %struct.address*, align 8
  store %struct.address* %a, %struct.address** %a.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.address* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %1, i32 0, i32 5
  %2 = load i64, i64* %q_flags, align 8, !tbaa !24
  %and = and i64 %2, 1
  %cmp1 = icmp ne i64 %and, 0
  %lnot = xor i1 %cmp1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  %q_alias = getelementptr inbounds %struct.address, %struct.address* %4, i32 0, i32 11
  %5 = load %struct.address*, %struct.address** %q_alias, align 8, !tbaa !23
  store %struct.address* %5, %struct.address** %a.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load %struct.address*, %struct.address** %a.addr, align 8, !tbaa !1
  ret %struct.address* %6
}

declare i32 @initgroups(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @setgroups(i64, i32*) #3

; Function Attrs: nounwind
declare i32 @setgid(i32) #3

; Function Attrs: nounwind
declare i32 @setreuid(i32, i32) #3

declare %struct.sm_event* @sm_seteventm(i32, void (i32)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @includetimeout(i32 %ignore) #0 {
entry:
  %ignore.addr = alloca i32, align 4
  store i32 %ignore, i32* %ignore.addr, align 4, !tbaa !5
  %call = call i32* @__errno_location() #13
  store i32 110, i32* %call, align 4, !tbaa !5
  call void @siglongjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @CtxIncludeTimeout, i32 0, i32 0), i32 1) #14
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare i32 @safedirpath(i8*, i32, i32, i8*, i64, i32, i32) #2

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #2

declare i32 @filechanged(i8*, i32, %struct.stat*) #2

declare i32 @sm_io_getinfo(%struct.sm_file*, i32, i8*) #2

declare void @sm_clrevent(%struct.sm_event*) #2

; Function Attrs: nounwind
declare i32 @getgid() #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat(i32 %__fd, %struct.stat* nonnull %__statbuf) #8 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !5
  store %struct.stat* %__statbuf, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i32, i32* %__fd.addr, align 4, !tbaa !5
  %1 = load %struct.stat*, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* %1) #1
  ret i32 %call
}

declare i32 @sm_io_close(%struct.sm_file*, i32) #2

declare i32 @chownsafe(i32, i32) #2

declare %struct.passwd* @sm_getpwuid(i32) #2

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #2

declare void @fixcrlf(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @sendtoargv(i8** %argv, %struct.envelope* %e) #0 {
entry:
  %argv.addr = alloca i8**, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %p = alloca i8*, align 8
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %1, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %1, align 8, !tbaa !1
  store i8* %2, i8** %p, align 8, !tbaa !1
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %p, align 8, !tbaa !1
  %4 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %4, i32 0, i32 7
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call = call i32 @sendtolist(i8* %3, %struct.address* null, %struct.address** %e_sendqueue, i32 0, %struct.envelope* %5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret void
}

declare i8* @hostsignature(%struct.mailer*, i8*) #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) #3

; Function Attrs: noreturn nounwind
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #9

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind returns_twice }
attributes #12 = { noreturn }
attributes #13 = { nounwind readnone }
attributes #14 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 24}
!8 = !{!"envelope", !2, i64 0, !9, i64 8, !9, i64 16, !2, i64 24, !10, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !9, i64 256, !2, i64 264, !9, i64 272, !6, i64 280, !11, i64 284, !11, i64 286, !11, i64 288, !11, i64 290, !11, i64 292, !11, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !9, i64 456, !6, i64 464, !9, i64 472, !9, i64 480, !12, i64 488, !2, i64 2576, !2, i64 2584, !13, i64 2592, !9, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!9 = !{!"long", !3, i64 0}
!10 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !9, i64 144, !2, i64 152, !11, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!11 = !{!"short", !3, i64 0}
!12 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!13 = !{!"sm_timers", !14, i64 0}
!14 = !{!"_timer", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!15 = !{!3, !3, i64 0}
!16 = !{!8, !9, i64 272}
!17 = !{!18, !2, i64 0}
!18 = !{!"sm_exc_handler", !2, i64 0, !3, i64 8, !2, i64 208, !6, i64 216}
!19 = !{!18, !2, i64 208}
!20 = !{!18, !6, i64 216}
!21 = !{!11, !11, i64 0}
!22 = !{!10, !2, i64 72}
!23 = !{!10, !2, i64 80}
!24 = !{!10, !9, i64 40}
!25 = !{!10, !11, i64 160}
!26 = !{!10, !2, i64 64}
!27 = !{!10, !2, i64 112}
!28 = !{!10, !2, i64 120}
!29 = !{!10, !2, i64 0}
!30 = !{!10, !2, i64 8}
!31 = !{!10, !2, i64 32}
!32 = !{!8, !2, i64 432}
!33 = !{!8, !2, i64 64}
!34 = !{!35, !2, i64 24}
!35 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !11, i64 72, !11, i64 74, !2, i64 80, !11, i64 88, !11, i64 90, !11, i64 92, !11, i64 94, !2, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !9, i64 152, !6, i64 160, !11, i64 164}
!36 = !{!8, !2, i64 2640}
!37 = !{!10, !2, i64 128}
!38 = !{!8, !2, i64 344}
!39 = !{!10, !2, i64 16}
!40 = !{!10, !6, i64 48}
!41 = !{!10, !2, i64 136}
!42 = !{!8, !11, i64 290}
!43 = !{!8, !6, i64 464}
!44 = !{!8, !6, i64 280}
!45 = !{!10, !2, i64 56}
!46 = !{!9, !9, i64 0}
!47 = !{!48, !6, i64 0}
!48 = !{!"", !6, i64 0, !6, i64 4, !3, i64 8, !3, i64 264, !3, i64 520, !3, i64 4616}
!49 = !{!48, !6, i64 4}
!50 = !{!10, !6, i64 52}
!51 = !{!10, !2, i64 88}
!52 = !{!8, !2, i64 376}
!53 = !{!10, !2, i64 24}
!54 = !{!10, !2, i64 168}
!55 = !{!56, !9, i64 120}
!56 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !3, i64 144, !3, i64 208, !3, i64 272, !3, i64 296}
!57 = !{!58, !6, i64 28}
!58 = !{!"stat", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !59, i64 72, !59, i64 88, !59, i64 104, !3, i64 120}
!59 = !{!"timespec", !9, i64 0, !9, i64 8}
!60 = !{!58, !6, i64 32}
!61 = !{!62, !2, i64 0}
!62 = !{!"passwd", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !2, i64 24, !2, i64 32, !2, i64 40}
!63 = !{!62, !2, i64 40}
!64 = !{!58, !6, i64 24}
!65 = !{!66, !9, i64 24}
!66 = !{!"sm_file", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !9, i64 24, !11, i64 32, !67, i64 40, !6, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !2, i64 152, !2, i64 160, !67, i64 168, !2, i64 184, !6, i64 192, !3, i64 196, !3, i64 199, !6, i64 200, !9, i64 208, !6, i64 216}
!67 = !{!"smbuf", !2, i64 0, !6, i64 8}
!68 = !{!62, !2, i64 24}
!69 = !{!35, !6, i64 136}
!70 = !{!35, !6, i64 140}
