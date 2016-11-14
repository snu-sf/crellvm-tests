; ModuleID = '6.util.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_debug = type { i8*, i32, i8*, i8*, %struct.sm_debug* }
%struct.sm_exc = type { i8*, i64, %struct.sm_exc_type*, %union.sm_val* }
%struct.sm_exc_type = type { i8*, i8*, i8*, void (%struct.sm_exc*, %struct.sm_file*)*, i8* }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%union.sm_val = type { i64 }
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
%struct.termescape = type { i8*, i8*, i8* }
%struct.metamac = type { i8, i8 }
%struct.procs = type { i32, i8*, i32, i32, i32, %union.bigsockaddr }
%union.bigsockaddr = type { %struct.sockaddr_in, [96 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"util.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"SM_ASSERT(l + 1 > l) failed\00", align 1
@SmHeapGroup = external global i32, align 4
@MustQuoteChars = external global i8*, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"7BIT\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"8BITMIME\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SM_REQUIRE(sz >= 0) failed\00", align 1
@SmXtrapCount = external global i32, align 4
@SmXtrapDebug = external global %struct.sm_debug, align 8
@SmHeapOutOfMemory = external global %struct.sm_exc, align 8
@TrustedUid = external global i32, align 4
@RealUid = external global i32, align 4
@PidFile = external global i8*, align 8
@FileMode = external global i32, align 4
@Pidf = internal global %struct.sm_file* null, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"unable to write pid to %s: file in use by another process\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"unable to write pid to %s: %s\00", align 1
@PidFilePid = external global i32, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CommandLineArgs = external global i8*, align 8
@LogLevel = external global i32, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"started as: %s\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"{deliveryMode}\00", align 1
@OpMode = external global i8, align 1
@BlankEnvelope = external global %struct.envelope, align 8
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"\0A\09%08lx=\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@xputs.DebugANSI = internal global %struct.sm_debug { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SmDebugMagic, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.16, i32 0, i32 0), %struct.sm_debug* null }, align 8
@SmDebugMagic = external constant [0 x i8], align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ANSI\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"@(#)$Debug: ANSI - enable reverse video in debug output $\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\1B[7m\00", align 1
@TermEscape = external global %struct.termescape, align 8
@.str.18 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"%s<null>%s\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s$\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"=~&?\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"{%s}\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@MetaMacros = external global [0 x %struct.metamac], align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%s$%c\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%sM-\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c" %o \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c" %#x \00", align 1
@TrafficLogFile = external global %struct.sm_file*, align 8
@.str.28 = private unnamed_addr constant [10 x i8] c"%05d >>> \00", align 1
@CurrentPid = external global i32, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"!\0A%05d >>>  \00", align 1
@CurEnv = external global %struct.envelope*, align 8
@.str.31 = private unnamed_addr constant [10 x i8] c"unlink %s\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"%s: unlink-fail %d\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"SM_REQUIRE(siz > 0) failed\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"SM_REQUIRE(buf != NULL) failed\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"timeout waiting for input from %.100s during %s\00", align 1
@CurHostName = external global i8*, align 8
@.str.36 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"%05d <<< [TIMEOUT]\0A\00", align 1
@LineNumber = external global i32, align 4
@.str.38 = private unnamed_addr constant [16 x i8] c"%05d <<< [EOF]\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"%05d <<< %s\00", align 1
@SevenBitInput = external global i32, align 4
@HasEightBits = external global i32, align 4
@.str.40 = private unnamed_addr constant [30 x i8] c"SM_REQUIRE(np != NULL) failed\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"SM_REQUIRE(n > 0) failed\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"tTyY\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"checkfdopen(%d): %s not open as expected!\00", align 1
@checkfds.baseline = internal global [8 x i32] zeroinitializer, align 16
@DtableSize = external global i32, align 4
@.str.44 = private unnamed_addr constant [17 x i8] c"%s: changed fds:\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"%3d: \00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"CANNOT STAT (%s)\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"CLOSED\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"fl=0x%x, \00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"mode=%o: \00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"SOCK \00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"CHR: \00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"BLK: \00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"FIFO: \00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"DIR: \00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"LNK: \00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"dev=%ld/%ld, ino=%llu, nlink=%d, u/gid=%ld/%ld, \00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"size=%llu\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"%.800s\00", align 1
@.str.62 = private unnamed_addr constant [34 x i8] c"%s: cannot create pipe for stdout\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"%s: cannot fork\00", align 1
@RestartRequest = external global i8*, align 8
@RestartWorkGroup = external global i32, align 4
@ShutdownRequest = external global i8*, align 8
@PendingSignal = external global i32, align 4
@.str.64 = private unnamed_addr constant [27 x i8] c"%s: cannot dup2 for stdout\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"%s: cannot dup2 for stderr\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"%s: lockfp does not have a fd\00", align 1
@ProgMailer = external global %struct.mailer*, align 8
@.str.67 = private unnamed_addr constant [29 x i8] c"prog_open: cannot chroot(%s)\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"prog_open: cannot chdir(/)\00", align 1
@DefGid = external global i32, align 4
@.str.70 = private unnamed_addr constant [30 x i8] c"prog_open: setgid(%ld) failed\00", align 1
@DefUid = external global i32, align 4
@.str.71 = private unnamed_addr constant [30 x i8] c"prog_open: setuid(%ld) failed\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@DontBlameSendmail = external global [8 x i32], align 16
@DefUser = external global i8*, align 8
@.str.73 = private unnamed_addr constant [42 x i8] c"Warning: prog_open: program %s unsafe: %s\00", align 1
@UserEnviron = external global [101 x i8*], align 16
@.str.74 = private unnamed_addr constant [16 x i8] c"%s: cannot exec\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"!cleanstrcpy: length == 0\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"!#$%&'*+-./^_`{|}~\00", align 1
@denlstring.bp = internal global i8* null, align 8
@denlstring.bl = internal global i32 0, align 4
@.str.78 = private unnamed_addr constant [52 x i8] c"POSSIBLE ATTACK from %.100s: newline in string \22%s\22\00", align 1
@RealHostName = external global i8*, align 8
@.str.79 = private unnamed_addr constant [10 x i8] c"[UNKNOWN]\00", align 1
@ProcListSize = internal global i32 0, align 4
@ProcListVec = internal global %struct.procs* null, align 8
@.str.80 = private unnamed_addr constant [57 x i8] c"SM_ASSERT(ProcListSize < INT_MAX - PROC_LIST_SEG) failed\00", align 1
@CurChildren = external global i32, align 4
@.str.81 = private unnamed_addr constant [40 x i8] c"SM_ASSERT(CurChildren < INT_MAX) failed\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"control socket\00", align 1
@CurRunners = external global i32, align 4
@.str.83 = private unnamed_addr constant [29 x i8] c"proc_list_probe: lost pid %d\00", align 1
@.str.84 = private unnamed_addr constant [60 x i8] c"%s: CurRunners=%d, i=%d, count=%d, status=should not happen\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"proc_list_probe\00", align 1
@DaemonPid = external global i32, align 4
@.str.86 = private unnamed_addr constant [48 x i8] c"proc_list_probe: found %d children, expected %d\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"%s%d %s%s\0A\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1

; Function Attrs: nounwind uwtable
define i8* @newstr(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %l = alloca i64, align 8
  %n = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #10
  store i64 %call, i64* %l, align 8, !tbaa !5
  %3 = load i64, i64* %l, align 8, !tbaa !5
  %add = add i64 %3, 1
  %4 = load i64, i64* %l, align 8, !tbaa !5
  %cmp = icmp ugt i64 %add, %4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  call void @sm_abort_at(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %5, %entry
  %6 = phi i1 [ true, %entry ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32
  %7 = load i64, i64* %l, align 8, !tbaa !5
  %add1 = add i64 %7, 1
  %conv = trunc i64 %add1 to i32
  %call2 = call i8* @xalloc_tagged(i32 %conv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 41)
  store i8* %call2, i8** %n, align 8, !tbaa !1
  %8 = load i8*, i8** %n, align 8, !tbaa !1
  %9 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %10 = load i64, i64* %l, align 8, !tbaa !5
  %add3 = add i64 %10, 1
  %call4 = call i64 @sm_strlcpy(i8* %8, i8* %9, i64 %add3)
  %11 = load i8*, i8** %n, align 8, !tbaa !1
  %12 = bitcast i8** %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret i8* %11
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: noreturn
declare void @sm_abort_at(i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @xalloc_tagged(i32 %sz, i8* %file, i32 %line) #0 {
entry:
  %sz.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i32 %sz, i32* %sz.addr, align 4, !tbaa !7
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !7
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %sz.addr, align 4, !tbaa !7
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  call void @sm_abort_at(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 461, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %2, %entry
  %3 = phi i1 [ true, %entry ], [ false, %2 ]
  %lor.ext = zext i1 %3 to i32
  %4 = load i32, i32* %sz.addr, align 4, !tbaa !7
  %cmp1 = icmp sle i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  store i32 1, i32* %sz.addr, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %5 = load i32, i32* @SmXtrapCount, align 4, !tbaa !7
  %inc = add i32 %5, 1
  store i32 %inc, i32* @SmXtrapCount, align 4, !tbaa !7
  %6 = load i32, i32* getelementptr inbounds (%struct.sm_debug, %struct.sm_debug* @SmXtrapDebug, i32 0, i32 1), align 4, !tbaa !9
  %cmp2 = icmp eq i32 %6, -1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call = call i32 @sm_debug_loadlevel(%struct.sm_debug* @SmXtrapDebug)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load i32, i32* getelementptr inbounds (%struct.sm_debug, %struct.sm_debug* @SmXtrapDebug, i32 0, i32 1), align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %7, %cond.false ]
  %cmp3 = icmp eq i32 %inc, %cond
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %cond.end
  call void @sm_exc_raise_x(%struct.sm_exc* @SmHeapOutOfMemory) #11
  unreachable

if.else:                                          ; preds = %cond.end
  br label %if.end.5

if.end.5:                                         ; preds = %if.else
  %8 = load i32, i32* %sz.addr, align 4, !tbaa !7
  %conv = zext i32 %8 to i64
  %9 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %10 = load i32, i32* %line.addr, align 4, !tbaa !7
  %11 = load i32, i32* @SmHeapGroup, align 4, !tbaa !7
  %call6 = call i8* @sm_malloc_tagged(i64 %conv, i8* %9, i32 %10, i32 %11)
  store i8* %call6, i8** %p, align 8, !tbaa !1
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %12, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  call void @sm_exc_raise_x(%struct.sm_exc* @SmHeapOutOfMemory) #11
  unreachable

if.end.10:                                        ; preds = %if.end.5
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %14 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i8* %13
}

declare i64 @sm_strlcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i8* @addquotes(i8* %s, %struct.SM_RPOOL_T* %rpool) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %rpool.addr = alloca %struct.SM_RPOOL_T*, align 8
  %len = alloca i32, align 4
  %c = alloca i8, align 1
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %r = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  store %struct.SM_RPOOL_T* %rpool, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %len, align 4, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !1
  store i8* %2, i8** %p, align 8, !tbaa !1
  %3 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end
  %6 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !11
  store i8 %7, i8* %c, align 1, !tbaa !11
  %conv = sext i8 %7 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %len, align 4, !tbaa !7
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %len, align 4, !tbaa !7
  %9 = load i8, i8* %c, align 1, !tbaa !11
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %10 = load i8, i8* %c, align 1, !tbaa !11
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 34
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %lor.lhs.false, %while.body
  %11 = load i32, i32* %len, align 4, !tbaa !7
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %len, align 4, !tbaa !7
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %13 = load i32, i32* %len, align 4, !tbaa !7
  %add = add nsw i32 %13, 3
  %conv12 = sext i32 %add to i64
  %14 = load i32, i32* @SmHeapGroup, align 4, !tbaa !7
  %call = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %12, i64 %conv12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 79, i32 %14)
  store i8* %call, i8** %r, align 8, !tbaa !1
  store i8* %call, i8** %q, align 8, !tbaa !1
  %15 = load i8*, i8** %s.addr, align 8, !tbaa !1
  store i8* %15, i8** %p, align 8, !tbaa !1
  %16 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr13, i8** %q, align 8, !tbaa !1
  store i8 34, i8* %16, align 1, !tbaa !11
  br label %while.cond.14

while.cond.14:                                    ; preds = %if.end.29, %while.end
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr15, i8** %p, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !11
  store i8 %18, i8* %c, align 1, !tbaa !11
  %conv16 = sext i8 %18 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %while.body.19, label %while.end.31

while.body.19:                                    ; preds = %while.cond.14
  %19 = load i8, i8* %c, align 1, !tbaa !11
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 92
  br i1 %cmp21, label %if.then.27, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %while.body.19
  %20 = load i8, i8* %c, align 1, !tbaa !11
  %conv24 = sext i8 %20 to i32
  %cmp25 = icmp eq i32 %conv24, 34
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %lor.lhs.false.23, %while.body.19
  %21 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr28, i8** %q, align 8, !tbaa !1
  store i8 92, i8* %21, align 1, !tbaa !11
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %lor.lhs.false.23
  %22 = load i8, i8* %c, align 1, !tbaa !11
  %23 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr30 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr30, i8** %q, align 8, !tbaa !1
  store i8 %22, i8* %23, align 1, !tbaa !11
  br label %while.cond.14

while.end.31:                                     ; preds = %while.cond.14
  %24 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr32, i8** %q, align 8, !tbaa !1
  store i8 34, i8* %24, align 1, !tbaa !11
  %25 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %25, align 1, !tbaa !11
  %26 = load i8*, i8** %r, align 8, !tbaa !1
  store i8* %26, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.31, %if.then
  %27 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %30 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i8*, i8** %retval
  ret i8* %31
}

declare i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T*, i64, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define void @stripbackslash(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !11
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8*, i8** %s.addr, align 8, !tbaa !1
  store i8* %5, i8** %q, align 8, !tbaa !1
  store i8* %5, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i8*, i8** %p, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !11
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %land.rhs, label %land.end.19

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 92
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx9, align 1, !tbaa !11
  %conv10 = sext i8 %11 to i32
  %and = and i32 %conv10, -128
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %land.rhs.13, label %land.end

land.rhs.13:                                      ; preds = %lor.rhs
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx14, align 1, !tbaa !11
  %conv15 = sext i8 %13 to i32
  %idxprom = sext i32 %conv15 to i64
  %call = call i16** @__ctype_b_loc() #12
  %14 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx16, align 2, !tbaa !12
  %conv17 = zext i16 %15 to i32
  %and18 = and i32 %conv17, 8
  %tobool = icmp ne i32 %and18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.13, %lor.rhs
  %16 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs.13 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %17 = phi i1 [ true, %land.rhs ], [ %16, %land.end ]
  br label %land.end.19

land.end.19:                                      ; preds = %lor.end, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %17, %lor.end ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.19
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end.19
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !11
  %22 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr21, i8** %q, align 8, !tbaa !1
  store i8 %21, i8* %22, align 1, !tbaa !11
  store i8 %21, i8* %c, align 1, !tbaa !11
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %23 = load i8, i8* %c, align 1, !tbaa !11
  %conv22 = sext i8 %23 to i32
  %cmp23 = icmp ne i32 %conv22, 0
  br i1 %cmp23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %24 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
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

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind uwtable
define i32 @rfc822_string(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %quoted = alloca i32, align 4
  %commentlev = alloca i32, align 4
  %c = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %quoted, align 4, !tbaa !7
  %1 = bitcast i32* %commentlev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %commentlev, align 4, !tbaa !7
  %2 = bitcast i8** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %s.addr, align 8, !tbaa !1
  store i8* %3, i8** %c, align 8, !tbaa !1
  %4 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %if.end
  %5 = load i8*, i8** %c, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !11
  %conv = sext i8 %6 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %c, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !11
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %while.body
  %9 = load i8*, i8** %c, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %c, align 8, !tbaa !1
  %10 = load i8*, i8** %c, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !11
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.6
  br label %if.end.48

if.else:                                          ; preds = %while.body
  %12 = load i32, i32* %commentlev, align 4, !tbaa !7
  %cmp12 = icmp eq i32 %12, 0
  br i1 %cmp12, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %if.else
  %13 = load i8*, i8** %c, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !11
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 34
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quoted, align 4, !tbaa !7
  br label %if.end.47

if.else.18:                                       ; preds = %land.lhs.true, %if.else
  %16 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool19 = icmp ne i32 %16, 0
  br i1 %tobool19, label %if.end.46, label %if.then.20

if.then.20:                                       ; preds = %if.else.18
  %17 = load i8*, i8** %c, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !11
  %conv21 = sext i8 %18 to i32
  %cmp22 = icmp eq i32 %conv21, 41
  br i1 %cmp22, label %if.then.24, label %if.else.30

if.then.24:                                       ; preds = %if.then.20
  %19 = load i32, i32* %commentlev, align 4, !tbaa !7
  %cmp25 = icmp eq i32 %19, 0
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.then.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.28:                                       ; preds = %if.then.24
  %20 = load i32, i32* %commentlev, align 4, !tbaa !7
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %commentlev, align 4, !tbaa !7
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28
  br label %if.end.45

if.else.30:                                       ; preds = %if.then.20
  %21 = load i8*, i8** %c, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !11
  %conv31 = sext i8 %22 to i32
  %cmp32 = icmp eq i32 %conv31, 40
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.30
  %23 = load i32, i32* %commentlev, align 4, !tbaa !7
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %commentlev, align 4, !tbaa !7
  br label %if.end.44

if.else.35:                                       ; preds = %if.else.30
  %24 = load i32, i32* %commentlev, align 4, !tbaa !7
  %cmp36 = icmp eq i32 %24, 0
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.43

land.lhs.true.38:                                 ; preds = %if.else.35
  %25 = load i8*, i8** @MustQuoteChars, align 8, !tbaa !1
  %26 = load i8*, i8** %c, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !11
  %conv39 = sext i8 %27 to i32
  %call = call i8* @strchr(i8* %25, i32 %conv39) #1
  %cmp40 = icmp ne i8* %call, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %land.lhs.true.38, %if.else.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.34
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.29
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.else.18
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.17
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.11
  %28 = load i8*, i8** %c, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr49, i8** %c, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool50 = icmp ne i32 %29, 0
  br i1 %tobool50, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.end
  %30 = load i32, i32* %commentlev, align 4, !tbaa !7
  %cmp51 = icmp eq i32 %30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.end
  %31 = phi i1 [ false, %while.end ], [ %cmp51, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then.42, %if.then.27, %if.then.10, %if.then
  %32 = bitcast i8** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %commentlev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind uwtable
define i32 @shorten_rfc822_string(i8* %string, i64 %length) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %backslash = alloca i32, align 4
  %modified = alloca i32, align 4
  %quoted = alloca i32, align 4
  %slen = alloca i64, align 8
  %parencount = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8, !tbaa !1
  store i64 %length, i64* %length.addr, align 8, !tbaa !5
  %0 = bitcast i32* %backslash to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %backslash, align 4, !tbaa !7
  %1 = bitcast i32* %modified to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %modified, align 4, !tbaa !7
  %2 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %quoted, align 4, !tbaa !7
  %3 = bitcast i64* %slen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %parencount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %parencount, align 4, !tbaa !7
  %5 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %string.addr, align 8, !tbaa !1
  store i8* %6, i8** %ptr, align 8, !tbaa !1
  %7 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %7) #10
  store i64 %call, i64* %slen, align 8, !tbaa !5
  %8 = load i64, i64* %length.addr, align 8, !tbaa !5
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i64, i64* %slen, align 8, !tbaa !5
  %10 = load i64, i64* %length.addr, align 8, !tbaa !5
  %cmp1 = icmp ult i64 %9, %10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load i64, i64* %slen, align 8, !tbaa !5
  store i64 %11, i64* %length.addr, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.68, %if.end
  %12 = load i8*, i8** %ptr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !11
  %conv = sext i8 %13 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %backslash, align 4, !tbaa !7
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  store i32 0, i32* %backslash, align 4, !tbaa !7
  br label %increment

if.end.5:                                         ; preds = %while.body
  %15 = load i8*, i8** %ptr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !11
  %conv6 = sext i8 %16 to i32
  %cmp7 = icmp eq i32 %conv6, 92
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.5
  store i32 1, i32* %backslash, align 4, !tbaa !7
  br label %if.end.28

if.else:                                          ; preds = %if.end.5
  %17 = load i8*, i8** %ptr, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !11
  %conv10 = sext i8 %18 to i32
  %cmp11 = icmp eq i32 %conv10, 40
  br i1 %cmp11, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %if.else
  %19 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.13
  %20 = load i32, i32* %parencount, align 4, !tbaa !7
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %parencount, align 4, !tbaa !7
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  br label %if.end.27

if.else.17:                                       ; preds = %if.else
  %21 = load i8*, i8** %ptr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !11
  %conv18 = sext i8 %22 to i32
  %cmp19 = icmp eq i32 %conv18, 41
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.else.17
  %23 = load i32, i32* %parencount, align 4, !tbaa !7
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %parencount, align 4, !tbaa !7
  %cmp22 = icmp slt i32 %dec, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.21
  store i32 0, i32* %parencount, align 4, !tbaa !7
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.else.17
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.16
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.9
  %24 = load i32, i32* %parencount, align 4, !tbaa !7
  %cmp29 = icmp sle i32 %24, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.28
  %25 = load i8*, i8** %ptr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !11
  %conv31 = sext i8 %26 to i32
  %cmp32 = icmp eq i32 %conv31, 34
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %land.lhs.true
  %27 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool35 = icmp ne i32 %27, 0
  %lnot = xor i1 %tobool35, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quoted, align 4, !tbaa !7
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %land.lhs.true, %if.end.28
  br label %increment

increment:                                        ; preds = %if.end.36, %if.then.4
  %28 = load i64, i64* %length.addr, align 8, !tbaa !5
  %29 = load i8*, i8** %ptr, align 8, !tbaa !1
  %30 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %28, %sub.ptr.sub
  %31 = load i32, i32* %backslash, align 4, !tbaa !7
  %tobool37 = icmp ne i32 %31, 0
  %cond = select i1 %tobool37, i32 1, i32 0
  %32 = load i32, i32* %parencount, align 4, !tbaa !7
  %add = add nsw i32 %cond, %32
  %33 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool38 = icmp ne i32 %33, 0
  %cond39 = select i1 %tobool38, i32 1, i32 0
  %add40 = add nsw i32 %add, %cond39
  %conv41 = sext i32 %add40 to i64
  %cmp42 = icmp ule i64 %sub, %conv41
  br i1 %cmp42, label %if.then.44, label %if.end.68

if.then.44:                                       ; preds = %increment
  %34 = load i8*, i8** %ptr, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !11
  %conv45 = sext i8 %35 to i32
  %cmp46 = icmp eq i32 %conv45, 92
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.then.44
  store i32 0, i32* %backslash, align 4, !tbaa !7
  br label %if.end.67

if.else.49:                                       ; preds = %if.then.44
  %36 = load i8*, i8** %ptr, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !11
  %conv50 = sext i8 %37 to i32
  %cmp51 = icmp eq i32 %conv50, 40
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.57

land.lhs.true.53:                                 ; preds = %if.else.49
  %38 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool54 = icmp ne i32 %38, 0
  br i1 %tobool54, label %if.else.57, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  %39 = load i32, i32* %parencount, align 4, !tbaa !7
  %dec56 = add nsw i32 %39, -1
  store i32 %dec56, i32* %parencount, align 4, !tbaa !7
  br label %if.end.66

if.else.57:                                       ; preds = %land.lhs.true.53, %if.else.49
  %40 = load i8*, i8** %ptr, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !11
  %conv58 = sext i8 %41 to i32
  %cmp59 = icmp eq i32 %conv58, 34
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.65

land.lhs.true.61:                                 ; preds = %if.else.57
  %42 = load i32, i32* %parencount, align 4, !tbaa !7
  %cmp62 = icmp eq i32 %42, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.61
  store i32 0, i32* %quoted, align 4, !tbaa !7
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %land.lhs.true.61, %if.else.57
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.55
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.48
  br label %while.end

if.end.68:                                        ; preds = %increment
  %43 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.end.67, %while.cond
  br label %while.cond.69

while.cond.69:                                    ; preds = %if.end.78, %while.end
  %44 = load i32, i32* %parencount, align 4, !tbaa !7
  %dec70 = add nsw i32 %44, -1
  store i32 %dec70, i32* %parencount, align 4, !tbaa !7
  %cmp71 = icmp sgt i32 %44, 0
  br i1 %cmp71, label %while.body.73, label %while.end.80

while.body.73:                                    ; preds = %while.cond.69
  %45 = load i8*, i8** %ptr, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !11
  %conv74 = sext i8 %46 to i32
  %cmp75 = icmp ne i32 %conv74, 41
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %while.body.73
  store i32 1, i32* %modified, align 4, !tbaa !7
  %47 = load i8*, i8** %ptr, align 8, !tbaa !1
  store i8 41, i8* %47, align 1, !tbaa !11
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %while.body.73
  %48 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr79 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr79, i8** %ptr, align 8, !tbaa !1
  br label %while.cond.69

while.end.80:                                     ; preds = %while.cond.69
  %49 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool81 = icmp ne i32 %49, 0
  br i1 %tobool81, label %if.then.82, label %if.end.89

if.then.82:                                       ; preds = %while.end.80
  %50 = load i8*, i8** %ptr, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !11
  %conv83 = sext i8 %51 to i32
  %cmp84 = icmp ne i32 %conv83, 34
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.82
  store i32 1, i32* %modified, align 4, !tbaa !7
  %52 = load i8*, i8** %ptr, align 8, !tbaa !1
  store i8 34, i8* %52, align 1, !tbaa !11
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.then.82
  %53 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr88 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr88, i8** %ptr, align 8, !tbaa !1
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.87, %while.end.80
  %54 = load i8*, i8** %ptr, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !11
  %conv90 = sext i8 %55 to i32
  %cmp91 = icmp ne i32 %conv90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.89
  store i32 1, i32* %modified, align 4, !tbaa !7
  %56 = load i8*, i8** %ptr, align 8, !tbaa !1
  store i8 0, i8* %56, align 1, !tbaa !11
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.end.89
  %57 = load i32, i32* %modified, align 4, !tbaa !7
  %58 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %parencount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i64* %slen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %modified to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %backslash to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define i8* @find_character(i8* %string, i32 %character) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %character.addr = alloca i32, align 4
  %backslash = alloca i32, align 4
  %quoted = alloca i32, align 4
  %parencount = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8, !tbaa !1
  store i32 %character, i32* %character.addr, align 4, !tbaa !7
  %0 = bitcast i32* %backslash to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %backslash, align 4, !tbaa !7
  %1 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %quoted, align 4, !tbaa !7
  %2 = bitcast i32* %parencount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %parencount, align 4, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.then.24, %if.end, %entry
  %3 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !11
  %conv = sext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %backslash, align 4, !tbaa !7
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  store i32 0, i32* %backslash, align 4, !tbaa !7
  %8 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %9 = load i32, i32* %character.addr, align 4, !tbaa !7
  %cmp4 = icmp eq i32 %9, 92
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %10 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !11
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 92
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true.6
  br label %while.end

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true, %if.then
  %12 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8, !tbaa !1
  br label %while.cond

if.end.11:                                        ; preds = %while.body
  %13 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !11
  %conv12 = sext i8 %14 to i32
  switch i32 %conv12, label %sw.epilog [
    i32 92, label %sw.bb
    i32 40, label %sw.bb.13
    i32 41, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end.11
  store i32 1, i32* %backslash, align 4, !tbaa !7
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.11
  %15 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.13
  %16 = load i32, i32* %parencount, align 4, !tbaa !7
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %parencount, align 4, !tbaa !7
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %sw.bb.13
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.11
  %17 = load i32, i32* %parencount, align 4, !tbaa !7
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %parencount, align 4, !tbaa !7
  %cmp18 = icmp slt i32 %dec, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.bb.17
  store i32 0, i32* %parencount, align 4, !tbaa !7
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %sw.bb.17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.11, %if.end.21, %if.end.16, %sw.bb
  %18 = load i32, i32* %parencount, align 4, !tbaa !7
  %cmp22 = icmp sgt i32 %18, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %sw.epilog
  %19 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr25, i8** %string.addr, align 8, !tbaa !1
  br label %while.cond

if.end.26:                                        ; preds = %sw.epilog
  %20 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !11
  %conv27 = sext i8 %21 to i32
  %cmp28 = icmp eq i32 %conv27, 34
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.26
  %22 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool31 = icmp ne i32 %22, 0
  %lnot = xor i1 %tobool31, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quoted, align 4, !tbaa !7
  br label %if.end.39

if.else:                                          ; preds = %if.end.26
  %23 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !11
  %conv32 = sext i8 %24 to i32
  %25 = load i32, i32* %character.addr, align 4, !tbaa !7
  %cmp33 = icmp eq i32 %conv32, %25
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.38

land.lhs.true.35:                                 ; preds = %if.else
  %26 = load i32, i32* %quoted, align 4, !tbaa !7
  %tobool36 = icmp ne i32 %26, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.35
  br label %while.end

if.end.38:                                        ; preds = %land.lhs.true.35, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.30
  %27 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %incdec.ptr40 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr40, i8** %string.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.then.37, %if.then.10, %land.end
  %28 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %29 = bitcast i32* %parencount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %backslash to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  ret i8* %28
}

; Function Attrs: nounwind uwtable
define i32 @check_bodytype(i8* %bodytype) #0 {
entry:
  %retval = alloca i32, align 4
  %bodytype.addr = alloca i8*, align 8
  store i8* %bodytype, i8** %bodytype.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %bodytype.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %bodytype.addr, align 8, !tbaa !1
  %call = call i32 @sm_strcasecmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i8*, i8** %bodytype.addr, align 8, !tbaa !1
  %call4 = call i32 @sm_strcasecmp(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 2, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @sm_strcasecmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @truncate_at_delim(i8* %str, i64 %len, i32 %delim) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %delim.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i64 %len, i64* %len.addr, align 8, !tbaa !5
  store i32 %delim, i32* %delim.addr, align 4, !tbaa !7
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %len.addr, align 8, !tbaa !5
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %3) #10
  %4 = load i64, i64* %len.addr, align 8, !tbaa !5
  %cmp3 = icmp ult i64 %call, %4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %6 = load i64, i64* %len.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8 0, i8* %add.ptr4, align 1, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end
  %7 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %8 = load i32, i32* %delim.addr, align 4, !tbaa !7
  %call5 = call i8* @strrchr(i8* %7, i32 %8) #10
  store i8* %call5, i8** %p, align 8, !tbaa !1
  %cmp6 = icmp ne i8* %call5, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %9, align 1, !tbaa !11
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %11 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 4
  %12 = load i64, i64* %len.addr, align 8, !tbaa !5
  %cmp7 = icmp ult i64 %add, %12
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %while.body
  %13 = load i32, i32* %delim.addr, align 4, !tbaa !7
  %conv = trunc i32 %13 to i8
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 %conv, i8* %14, align 1, !tbaa !11
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %15, align 1, !tbaa !11
  %16 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %17 = load i64, i64* %len.addr, align 8, !tbaa !5
  %call9 = call i64 @sm_strlcat(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %17)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i64, i64* %len.addr, align 8, !tbaa !5
  %cmp11 = icmp ugt i64 %18, 3
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %while.end
  %19 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %20 = load i64, i64* %len.addr, align 8, !tbaa !5
  %call14 = call i64 @sm_strlcpy(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %20)
  br label %if.end.15

if.else:                                          ; preds = %while.end
  %21 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.8, %if.then
  %22 = bitcast i8** %p to i8*
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

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare i64 @sm_strlcat(i8*, i8*, i64) #4

declare i32 @sm_debug_loadlevel(%struct.sm_debug*) #4

; Function Attrs: noreturn
declare void @sm_exc_raise_x(%struct.sm_exc*) #3

declare i8* @sm_malloc_tagged(i64, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define i8** @copyplist(i8** %list, i32 %copycont, %struct.SM_RPOOL_T* %rpool) #0 {
entry:
  %list.addr = alloca i8**, align 8
  %copycont.addr = alloca i32, align 4
  %rpool.addr = alloca %struct.SM_RPOOL_T*, align 8
  %vp = alloca i8**, align 8
  %newvp = alloca i8**, align 8
  store i8** %list, i8*** %list.addr, align 8, !tbaa !1
  store i32 %copycont, i32* %copycont.addr, align 4, !tbaa !7
  store %struct.SM_RPOOL_T* %rpool, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %0 = bitcast i8*** %vp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8*** %newvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8**, i8*** %list.addr, align 8, !tbaa !1
  store i8** %2, i8*** %vp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8**, i8*** %vp, align 8, !tbaa !1
  %4 = load i8*, i8** %3, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8**, i8*** %vp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %incdec.ptr, i8*** %vp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i8**, i8*** %vp, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr1, i8*** %vp, align 8, !tbaa !1
  %7 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %8 = load i8**, i8*** %vp, align 8, !tbaa !1
  %9 = load i8**, i8*** %list.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8** %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8** %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %mul = mul i64 %sub.ptr.div, 8
  %10 = load i32, i32* @SmHeapGroup, align 4, !tbaa !7
  %call = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %7, i64 %mul, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 510, i32 %10)
  %11 = bitcast i8* %call to i8**
  store i8** %11, i8*** %newvp, align 8, !tbaa !1
  %12 = load i8**, i8*** %newvp, align 8, !tbaa !1
  %13 = bitcast i8** %12 to i8*
  %14 = load i8**, i8*** %list.addr, align 8, !tbaa !1
  %15 = bitcast i8** %14 to i8*
  %16 = load i8**, i8*** %vp, align 8, !tbaa !1
  %17 = load i8**, i8*** %list.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast2 = ptrtoint i8** %16 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i8** %17 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 8
  %conv = trunc i64 %sub.ptr.div5 to i32
  %conv6 = sext i32 %conv to i64
  %mul7 = mul i64 %conv6, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %13, i8* %15, i64 %mul7, i32 1, i1 false)
  %18 = load i32, i32* %copycont.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %19 = load i8**, i8*** %newvp, align 8, !tbaa !1
  store i8** %19, i8*** %vp, align 8, !tbaa !1
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.13, %if.then
  %20 = load i8**, i8*** %vp, align 8, !tbaa !1
  %21 = load i8*, i8** %20, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %21, null
  br i1 %cmp9, label %for.body.11, label %for.end.15

for.body.11:                                      ; preds = %for.cond.8
  %22 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %23 = load i8**, i8*** %vp, align 8, !tbaa !1
  %24 = load i8*, i8** %23, align 8, !tbaa !1
  %call12 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %22, i8* %24)
  %25 = load i8**, i8*** %vp, align 8, !tbaa !1
  store i8* %call12, i8** %25, align 8, !tbaa !1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.11
  %26 = load i8**, i8*** %vp, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr14, i8*** %vp, align 8, !tbaa !1
  br label %for.cond.8

for.end.15:                                       ; preds = %for.cond.8
  br label %if.end

if.end:                                           ; preds = %for.end.15, %for.end
  %27 = load i8**, i8*** %newvp, align 8, !tbaa !1
  %28 = bitcast i8*** %newvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i8*** %vp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret i8** %27
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct.address* @copyqueue(%struct.address* %addr, %struct.SM_RPOOL_T* %rpool) #0 {
entry:
  %addr.addr = alloca %struct.address*, align 8
  %rpool.addr = alloca %struct.SM_RPOOL_T*, align 8
  %newaddr = alloca %struct.address*, align 8
  %ret = alloca %struct.address*, align 8
  %tail = alloca %struct.address**, align 8
  store %struct.address* %addr, %struct.address** %addr.addr, align 8, !tbaa !1
  store %struct.SM_RPOOL_T* %rpool, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %0 = bitcast %struct.address** %newaddr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.address** %ret to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.address*** %tail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.address** %ret, %struct.address*** %tail, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.address*, %struct.address** %addr.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.address* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.address*, %struct.address** %addr.addr, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %4, i32 0, i32 21
  %5 = load i16, i16* %q_state, align 2, !tbaa !14
  %conv = sext i16 %5 to i32
  %cmp1 = icmp sge i32 %conv, 6
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %6 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %7 = load i32, i32* @SmHeapGroup, align 4, !tbaa !7
  %call = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %6, i64 192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 550, i32 %7)
  %8 = bitcast i8* %call to %struct.address*
  store %struct.address* %8, %struct.address** %newaddr, align 8, !tbaa !1
  %9 = load %struct.address*, %struct.address** %newaddr, align 8, !tbaa !1
  %10 = load %struct.address*, %struct.address** %addr.addr, align 8, !tbaa !1
  %11 = bitcast %struct.address* %9 to i8*
  %12 = bitcast %struct.address* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 192, i32 8, i1 false), !tbaa.struct !16
  %13 = load %struct.address*, %struct.address** %newaddr, align 8, !tbaa !1
  %14 = load %struct.address**, %struct.address*** %tail, align 8, !tbaa !1
  store %struct.address* %13, %struct.address** %14, align 8, !tbaa !1
  %15 = load %struct.address*, %struct.address** %newaddr, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %15, i32 0, i32 10
  store %struct.address** %q_next, %struct.address*** %tail, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %16 = load %struct.address*, %struct.address** %addr.addr, align 8, !tbaa !1
  %q_next3 = getelementptr inbounds %struct.address, %struct.address* %16, i32 0, i32 10
  %17 = load %struct.address*, %struct.address** %q_next3, align 8, !tbaa !17
  store %struct.address* %17, %struct.address** %addr.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.address**, %struct.address*** %tail, align 8, !tbaa !1
  store %struct.address* null, %struct.address** %18, align 8, !tbaa !1
  %19 = load %struct.address*, %struct.address** %ret, align 8, !tbaa !1
  %20 = bitcast %struct.address*** %tail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.address** %ret to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.address** %newaddr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret %struct.address* %19
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @log_sendmail_pid(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %sff = alloca i64, align 8
  %pidpath = alloca [4096 x i8], align 16
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [4096 x i8]* %pidpath to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %1) #1
  store i64 524998, i64* %sff, align 8, !tbaa !5
  %2 = load i32, i32* @TrustedUid, align 4, !tbaa !7
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* @RealUid, align 4, !tbaa !7
  %4 = load i32, i32* @TrustedUid, align 4, !tbaa !7
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* %sff, align 8, !tbaa !5
  %or = or i64 %5, 8192
  store i64 %or, i64* %sff, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i8*, i8** @PidFile, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %pidpath, i32 0, i32 0
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %6, i8* %arraydecay, i64 4096, %struct.envelope* %7)
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pidpath, i32 0, i32 0
  %8 = load i32, i32* @FileMode, align 4, !tbaa !7
  %9 = load i64, i64* %sff, align 8, !tbaa !5
  %call = call %struct.sm_file* @safefopen(i8* %arraydecay2, i32 513, i32 %8, i64 %9)
  store %struct.sm_file* %call, %struct.sm_file** @Pidf, align 8, !tbaa !1
  %10 = load %struct.sm_file*, %struct.sm_file** @Pidf, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.sm_file* %10, null
  br i1 %cmp3, label %if.then.4, label %if.else.13

if.then.4:                                        ; preds = %if.end
  %call5 = call i32* @__errno_location() #12
  %11 = load i32, i32* %call5, align 4, !tbaa !7
  %cmp6 = icmp eq i32 %11, 11
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %arraydecay8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pidpath, i32 0, i32 0
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay8)
  br label %if.end.12

if.else:                                          ; preds = %if.then.4
  %arraydecay9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pidpath, i32 0, i32 0
  %call10 = call i32* @__errno_location() #12
  %12 = load i32, i32* %call10, align 4, !tbaa !7
  %call11 = call i8* @sm_errstring(i32 %12)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay9, i8* %call11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.7
  br label %if.end.18

if.else.13:                                       ; preds = %if.end
  %call14 = call i32 @getpid() #1
  store i32 %call14, i32* @PidFilePid, align 4, !tbaa !7
  %13 = load %struct.sm_file*, %struct.sm_file** @Pidf, align 8, !tbaa !1
  %14 = load i32, i32* @PidFilePid, align 4, !tbaa !7
  %conv = sext i32 %14 to i64
  %call15 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %13, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i64 %conv)
  %15 = load %struct.sm_file*, %struct.sm_file** @Pidf, align 8, !tbaa !1
  %16 = load i8*, i8** @CommandLineArgs, align 8, !tbaa !1
  %call16 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %15, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %16)
  %17 = load %struct.sm_file*, %struct.sm_file** @Pidf, align 8, !tbaa !1
  %call17 = call i32 @sm_io_flush(%struct.sm_file* %17, i32 -2)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.end.12
  %18 = load i32, i32* @LogLevel, align 4, !tbaa !7
  %cmp19 = icmp sgt i32 %18, 9
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %19 = load i8*, i8** @CommandLineArgs, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* %19)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  %20 = bitcast [4096 x i8]* %pidpath to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %20) #1
  %21 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  ret void
}

declare void @expand(i8*, i8*, i64, %struct.envelope*) #4

declare %struct.sm_file* @safefopen(i8*, i32, i32, i64) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @sm_syslog(i32, i8*, i8*, ...) #4

declare i8* @sm_errstring(i32) #4

; Function Attrs: nounwind
declare i32 @getpid() #6

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #4

declare i32 @sm_io_flush(%struct.sm_file*, i32) #4

; Function Attrs: nounwind uwtable
define void @close_sendmail_pid() #0 {
entry:
  %0 = load %struct.sm_file*, %struct.sm_file** @Pidf, align 8, !tbaa !1
  %cmp = icmp eq %struct.sm_file* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sm_file*, %struct.sm_file** @Pidf, align 8, !tbaa !1
  %call = call i32 @sm_io_close(%struct.sm_file* %1, i32 -2)
  store %struct.sm_file* null, %struct.sm_file** @Pidf, align 8, !tbaa !1
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @sm_io_close(%struct.sm_file*, i32) #4

; Function Attrs: nounwind uwtable
define void @set_delivery_mode(i32 %mode, %struct.envelope* %e) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %buf = alloca [2 x i8], align 1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !7
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i32, i32* %mode.addr, align 4, !tbaa !7
  %conv = trunc i32 %1 to i8
  %conv1 = sext i8 %conv to i16
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendmode = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 16
  store i16 %conv1, i16* %e_sendmode, align 2, !tbaa !18
  %3 = load i32, i32* %mode.addr, align 4, !tbaa !7
  %conv2 = trunc i32 %3 to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  store i8 %conv2, i8* %arrayidx, align 1, !tbaa !11
  %arrayidx3 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  store i8 0, i8* %arrayidx3, align 1, !tbaa !11
  %4 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %4, i32 0, i32 46
  %call = call i32 @macid_parse(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8** null)
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  %5 = load i32, i32* @SmHeapGroup, align 4, !tbaa !7
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %call, i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 672, i32 %5)
  %6 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2, i8* %6) #1
  ret void
}

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #4

declare i32 @macid_parse(i8*, i8**) #4

; Function Attrs: nounwind uwtable
define void @set_op_mode(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !7
  %0 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i32, i32* %mode.addr, align 4, !tbaa !7
  %conv = trunc i32 %1 to i8
  store i8 %conv, i8* @OpMode, align 1, !tbaa !11
  %2 = load i32, i32* %mode.addr, align 4, !tbaa !7
  %conv1 = trunc i32 %2 to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  store i8 %conv1, i8* %arrayidx, align 1, !tbaa !11
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  store i8 0, i8* %arrayidx2, align 1, !tbaa !11
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  %3 = load i32, i32* @SmHeapGroup, align 4, !tbaa !7
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 1, i32 130, i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 699, i32 %3)
  %4 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2, i8* %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @printav(%struct.sm_file* %fp, i8** %av) #0 {
entry:
  %fp.addr = alloca %struct.sm_file*, align 8
  %av.addr = alloca i8**, align 8
  store %struct.sm_file* %fp, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %0 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %0, align 8, !tbaa !1
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 0), align 1, !tbaa !11
  %conv = zext i8 %2 to i32
  %cmp1 = icmp sge i32 %conv, 44
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %3 = load volatile i32, i32* @IntSig, align 4, !tbaa !7
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %4, align 8, !tbaa !1
  %6 = ptrtoint i8* %5 to i64
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i64 %6)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %7 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call = call i32 @sm_io_putc(%struct.sm_file* %7, i32 -2, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 0), align 1, !tbaa !11
  %conv3 = zext i8 %8 to i32
  %cmp4 = icmp sge i32 %conv3, 99
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.10

land.lhs.true.6:                                  ; preds = %if.end
  %9 = load volatile i32, i32* @IntSig, align 4, !tbaa !7
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.else.10, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true.6
  %10 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %av.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %10, align 8, !tbaa !1
  %call9 = call i8* @str2prt(i8* %11)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %call9)
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.6, %if.end
  %12 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %13 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr11, i8*** %av.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %13, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %12, i8* %14)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call13 = call i32 @sm_io_putc(%struct.sm_file* %15, i32 -2, i32 10)
  ret void
}

declare void @sm_dprintf(i8*, ...) #4

declare i32 @sm_io_putc(%struct.sm_file*, i32, i32) #4

declare i8* @str2prt(i8*) #4

; Function Attrs: nounwind uwtable
define void @xputs(%struct.sm_file* %fp, i8* %s) #0 {
entry:
  %fp.addr = alloca %struct.sm_file*, align 8
  %s.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %mp = alloca %struct.metamac*, align 8
  %shiftout = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.sm_file* %fp, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.metamac** %mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %shiftout to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %shiftout, align 4, !tbaa !7
  %3 = load i32, i32* getelementptr inbounds (%struct.sm_debug, %struct.sm_debug* @xputs.DebugANSI, i32 0, i32 1), align 4, !tbaa !9
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.sm_debug, %struct.sm_debug* @xputs.DebugANSI, i32 0, i32 1), align 4, !tbaa !9
  %cmp1 = icmp uge i32 %4, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* getelementptr inbounds (%struct.sm_debug, %struct.sm_debug* @xputs.DebugANSI, i32 0, i32 1), align 4, !tbaa !9
  %cmp2 = icmp ne i32 %5, -1
  br i1 %cmp2, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = call i32 @sm_debug_loadactive(%struct.sm_debug* @xputs.DebugANSI, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 0), align 8, !tbaa !23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 2), align 8, !tbaa !25
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %if.then
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 0), align 8, !tbaa !23
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 2), align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %6 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %7 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %8 = load i8*, i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 0), align 8, !tbaa !23
  %9 = load i8*, i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 2), align 8, !tbaa !25
  %call7 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %7, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* %8, i8* %9)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  br label %while.cond

while.cond:                                       ; preds = %if.end.191, %if.then.137, %if.then.124, %if.end.78, %if.then.53, %if.then.32, %if.end.8
  %10 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !11
  %conv = sext i8 %11 to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %c, align 4, !tbaa !7
  %cmp9 = icmp ne i32 %and, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %shiftout, align 4, !tbaa !7
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %while.body
  %13 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %14 = load i8*, i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 2), align 8, !tbaa !25
  %call13 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %13, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %14)
  store i32 0, i32* %shiftout, align 4, !tbaa !7
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %while.body
  %15 = load i32, i32* %c, align 4, !tbaa !7
  %and15 = and i32 %15, -128
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %if.end.128, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %if.end.14
  %16 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 84), align 1, !tbaa !11
  %conv19 = zext i8 %16 to i32
  %cmp20 = icmp sge i32 %conv19, 1
  br i1 %cmp20, label %land.lhs.true.22, label %if.then.24

land.lhs.true.22:                                 ; preds = %land.lhs.true.18
  %17 = load volatile i32, i32* @IntSig, align 4, !tbaa !7
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.end.128

if.then.24:                                       ; preds = %land.lhs.true.22, %land.lhs.true.18
  %18 = load i32, i32* %c, align 4, !tbaa !7
  %cmp25 = icmp eq i32 %18, 149
  br i1 %cmp25, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %if.then.24
  %19 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %20 = load i8*, i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 0), align 8, !tbaa !23
  %call28 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %19, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* %20)
  store i32 1, i32* %shiftout, align 4, !tbaa !7
  %21 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !11
  %conv29 = sext i8 %22 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.27
  br label %while.cond

if.end.33:                                        ; preds = %if.then.27
  %23 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr34, i8** %s.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !11
  %conv35 = sext i8 %24 to i32
  %and36 = and i32 %conv35, 255
  store i32 %and36, i32* %c, align 4, !tbaa !7
  br label %printchar

if.end.37:                                        ; preds = %if.then.24
  %25 = load i32, i32* %c, align 4, !tbaa !7
  %cmp38 = icmp eq i32 %25, 129
  br i1 %cmp38, label %if.then.43, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end.37
  %26 = load i32, i32* %c, align 4, !tbaa !7
  %cmp41 = icmp eq i32 %26, 130
  br i1 %cmp41, label %if.then.43, label %if.end.79

if.then.43:                                       ; preds = %lor.lhs.false.40, %if.end.37
  %27 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %28 = load i8*, i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 0), align 8, !tbaa !23
  %call44 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %27, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* %28)
  %29 = load i32, i32* %c, align 4, !tbaa !7
  %cmp45 = icmp eq i32 %29, 130
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.43
  %30 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call48 = call i32 @sm_io_putc(%struct.sm_file* %30, i32 -2, i32 38)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.43
  store i32 1, i32* %shiftout, align 4, !tbaa !7
  %31 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !11
  %conv50 = sext i8 %32 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.49
  br label %while.cond

if.end.54:                                        ; preds = %if.end.49
  %33 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !11
  %conv55 = sext i8 %34 to i32
  %call56 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 %conv55) #1
  %cmp57 = icmp ne i8* %call56, null
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.end.54
  %35 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr60, i8** %s.addr, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !11
  %conv61 = sext i8 %37 to i32
  %call62 = call i32 @sm_io_putc(%struct.sm_file* %35, i32 -2, i32 %conv61)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.end.54
  %38 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !11
  %conv64 = sext i8 %39 to i32
  %and65 = and i32 %conv64, 128
  %cmp66 = icmp ne i32 %and65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.74

if.then.68:                                       ; preds = %if.end.63
  %40 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %41 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr69 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr69, i8** %s.addr, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !11
  %conv70 = sext i8 %42 to i32
  %and71 = and i32 %conv70, 255
  %call72 = call i8* @macname(i32 %and71)
  %call73 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %40, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* %call72)
  br label %if.end.78

if.else.74:                                       ; preds = %if.end.63
  %43 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %44 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr75, i8** %s.addr, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !11
  %conv76 = sext i8 %45 to i32
  %call77 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %43, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 %conv76)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.74, %if.then.68
  br label %while.cond

if.end.79:                                        ; preds = %lor.lhs.false.40
  store %struct.metamac* getelementptr inbounds ([0 x %struct.metamac], [0 x %struct.metamac]* @MetaMacros, i32 0, i32 0), %struct.metamac** %mp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.79
  %46 = load %struct.metamac*, %struct.metamac** %mp, align 8, !tbaa !1
  %metaname = getelementptr inbounds %struct.metamac, %struct.metamac* %46, i32 0, i32 0
  %47 = load i8, i8* %metaname, align 1, !tbaa !26
  %conv80 = sext i8 %47 to i32
  %cmp81 = icmp ne i32 %conv80, 0
  br i1 %cmp81, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load %struct.metamac*, %struct.metamac** %mp, align 8, !tbaa !1
  %metaval = getelementptr inbounds %struct.metamac, %struct.metamac* %48, i32 0, i32 1
  %49 = load i8, i8* %metaval, align 1, !tbaa !28
  %conv83 = zext i8 %49 to i32
  %and84 = and i32 %conv83, 255
  %50 = load i32, i32* %c, align 4, !tbaa !7
  %cmp85 = icmp eq i32 %and84, %50
  br i1 %cmp85, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %for.body
  %51 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %52 = load i8*, i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 0), align 8, !tbaa !23
  %53 = load %struct.metamac*, %struct.metamac** %mp, align 8, !tbaa !1
  %metaname88 = getelementptr inbounds %struct.metamac, %struct.metamac* %53, i32 0, i32 0
  %54 = load i8, i8* %metaname88, align 1, !tbaa !26
  %conv89 = sext i8 %54 to i32
  %call90 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %51, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* %52, i32 %conv89)
  store i32 1, i32* %shiftout, align 4, !tbaa !7
  br label %for.end

if.end.91:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %55 = load %struct.metamac*, %struct.metamac** %mp, align 8, !tbaa !1
  %incdec.ptr92 = getelementptr inbounds %struct.metamac, %struct.metamac* %55, i32 1
  store %struct.metamac* %incdec.ptr92, %struct.metamac** %mp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.87, %for.cond
  %56 = load i32, i32* %c, align 4, !tbaa !7
  %cmp93 = icmp eq i32 %56, 147
  br i1 %cmp93, label %if.then.98, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %for.end
  %57 = load i32, i32* %c, align 4, !tbaa !7
  %cmp96 = icmp eq i32 %57, 148
  br i1 %cmp96, label %if.then.98, label %if.end.119

if.then.98:                                       ; preds = %lor.lhs.false.95, %for.end
  %58 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !11
  %conv99 = sext i8 %59 to i32
  %and100 = and i32 %conv99, 128
  %cmp101 = icmp ne i32 %and100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.109

if.then.103:                                      ; preds = %if.then.98
  %60 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr104 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr104, i8** %s.addr, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !11
  %conv105 = sext i8 %62 to i32
  %and106 = and i32 %conv105, 255
  %call107 = call i8* @macname(i32 %and106)
  %call108 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %60, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* %call107)
  br label %if.end.118

if.else.109:                                      ; preds = %if.then.98
  %63 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %64 = load i8, i8* %63, align 1, !tbaa !11
  %conv110 = sext i8 %64 to i32
  %cmp111 = icmp ne i32 %conv110, 0
  br i1 %cmp111, label %if.then.113, label %if.end.117

if.then.113:                                      ; preds = %if.else.109
  %65 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %66 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr114, i8** %s.addr, align 8, !tbaa !1
  %67 = load i8, i8* %66, align 1, !tbaa !11
  %conv115 = sext i8 %67 to i32
  %call116 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %65, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 %conv115)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.113, %if.else.109
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.103
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %lor.lhs.false.95
  %68 = load %struct.metamac*, %struct.metamac** %mp, align 8, !tbaa !1
  %metaname120 = getelementptr inbounds %struct.metamac, %struct.metamac* %68, i32 0, i32 0
  %69 = load i8, i8* %metaname120, align 1, !tbaa !26
  %conv121 = sext i8 %69 to i32
  %cmp122 = icmp ne i32 %conv121, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.119
  br label %while.cond

if.end.125:                                       ; preds = %if.end.119
  %70 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %71 = load i8*, i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 0), align 8, !tbaa !23
  %call126 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %70, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* %71)
  store i32 1, i32* %shiftout, align 4, !tbaa !7
  %72 = load i32, i32* %c, align 4, !tbaa !7
  %and127 = and i32 %72, 127
  store i32 %and127, i32* %c, align 4, !tbaa !7
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.125, %land.lhs.true.22, %if.end.14
  br label %printchar

printchar:                                        ; preds = %if.end.128, %if.end.33
  %73 = load i32, i32* %c, align 4, !tbaa !7
  %and129 = and i32 %73, -128
  %cmp130 = icmp eq i32 %and129, 0
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.139

land.lhs.true.132:                                ; preds = %printchar
  %74 = load i32, i32* %c, align 4, !tbaa !7
  %idxprom = sext i32 %74 to i64
  %call133 = call i16** @__ctype_b_loc() #12
  %75 = load i16*, i16** %call133, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %75, i64 %idxprom
  %76 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv134 = zext i16 %76 to i32
  %and135 = and i32 %conv134, 16384
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %land.lhs.true.132
  %77 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %78 = load i32, i32* %c, align 4, !tbaa !7
  %call138 = call i32 @sm_io_putc(%struct.sm_file* %77, i32 -2, i32 %78)
  br label %while.cond

if.end.139:                                       ; preds = %land.lhs.true.132, %printchar
  %79 = load i32, i32* %c, align 4, !tbaa !7
  switch i32 %79, label %sw.epilog [
    i32 10, label %sw.bb
    i32 13, label %sw.bb.140
    i32 9, label %sw.bb.141
  ]

sw.bb:                                            ; preds = %if.end.139
  store i32 110, i32* %c, align 4, !tbaa !7
  br label %sw.epilog

sw.bb.140:                                        ; preds = %if.end.139
  store i32 114, i32* %c, align 4, !tbaa !7
  br label %sw.epilog

sw.bb.141:                                        ; preds = %if.end.139
  store i32 116, i32* %c, align 4, !tbaa !7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.139, %sw.bb.141, %sw.bb.140, %sw.bb
  %80 = load i32, i32* %shiftout, align 4, !tbaa !7
  %tobool142 = icmp ne i32 %80, 0
  br i1 %tobool142, label %if.end.145, label %if.then.143

if.then.143:                                      ; preds = %sw.epilog
  %81 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %82 = load i8*, i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 0), align 8, !tbaa !23
  %call144 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %81, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %82)
  store i32 1, i32* %shiftout, align 4, !tbaa !7
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %sw.epilog
  %83 = load i32, i32* %c, align 4, !tbaa !7
  %and146 = and i32 %83, -128
  %cmp147 = icmp eq i32 %and146, 0
  br i1 %cmp147, label %land.lhs.true.149, label %if.else.159

land.lhs.true.149:                                ; preds = %if.end.145
  %84 = load i32, i32* %c, align 4, !tbaa !7
  %idxprom150 = sext i32 %84 to i64
  %call151 = call i16** @__ctype_b_loc() #12
  %85 = load i16*, i16** %call151, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i16, i16* %85, i64 %idxprom150
  %86 = load i16, i16* %arrayidx152, align 2, !tbaa !12
  %conv153 = zext i16 %86 to i32
  %and154 = and i32 %conv153, 16384
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.then.156, label %if.else.159

if.then.156:                                      ; preds = %land.lhs.true.149
  %87 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call157 = call i32 @sm_io_putc(%struct.sm_file* %87, i32 -2, i32 92)
  %88 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %89 = load i32, i32* %c, align 4, !tbaa !7
  %call158 = call i32 @sm_io_putc(%struct.sm_file* %88, i32 -2, i32 %89)
  br label %if.end.191

if.else.159:                                      ; preds = %land.lhs.true.149, %if.end.145
  %90 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 84), align 1, !tbaa !11
  %conv160 = zext i8 %90 to i32
  %cmp161 = icmp sge i32 %conv160, 2
  br i1 %cmp161, label %land.lhs.true.163, label %if.else.167

land.lhs.true.163:                                ; preds = %if.else.159
  %91 = load volatile i32, i32* @IntSig, align 4, !tbaa !7
  %tobool164 = icmp ne i32 %91, 0
  br i1 %tobool164, label %if.else.167, label %if.then.165

if.then.165:                                      ; preds = %land.lhs.true.163
  %92 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %93 = load i32, i32* %c, align 4, !tbaa !7
  %call166 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %92, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %93)
  br label %if.end.190

if.else.167:                                      ; preds = %land.lhs.true.163, %if.else.159
  %94 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 84), align 1, !tbaa !11
  %conv168 = zext i8 %94 to i32
  %cmp169 = icmp sge i32 %conv168, 1
  br i1 %cmp169, label %land.lhs.true.171, label %if.else.175

land.lhs.true.171:                                ; preds = %if.else.167
  %95 = load volatile i32, i32* @IntSig, align 4, !tbaa !7
  %tobool172 = icmp ne i32 %95, 0
  br i1 %tobool172, label %if.else.175, label %if.then.173

if.then.173:                                      ; preds = %land.lhs.true.171
  %96 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %97 = load i32, i32* %c, align 4, !tbaa !7
  %call174 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %96, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %97)
  br label %if.end.189

if.else.175:                                      ; preds = %land.lhs.true.171, %if.else.167
  %98 = load i32, i32* %c, align 4, !tbaa !7
  %and176 = and i32 %98, -128
  %cmp177 = icmp eq i32 %and176, 0
  br i1 %cmp177, label %if.end.188, label %land.lhs.true.179

land.lhs.true.179:                                ; preds = %if.else.175
  %99 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 84), align 1, !tbaa !11
  %conv180 = zext i8 %99 to i32
  %cmp181 = icmp sge i32 %conv180, 1
  br i1 %cmp181, label %land.lhs.true.183, label %if.then.185

land.lhs.true.183:                                ; preds = %land.lhs.true.179
  %100 = load volatile i32, i32* @IntSig, align 4, !tbaa !7
  %tobool184 = icmp ne i32 %100, 0
  br i1 %tobool184, label %if.then.185, label %if.end.188

if.then.185:                                      ; preds = %land.lhs.true.183, %land.lhs.true.179
  %101 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call186 = call i32 @sm_io_putc(%struct.sm_file* %101, i32 -2, i32 94)
  %102 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %103 = load i32, i32* %c, align 4, !tbaa !7
  %xor = xor i32 %103, 64
  %call187 = call i32 @sm_io_putc(%struct.sm_file* %102, i32 -2, i32 %xor)
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.185, %land.lhs.true.183, %if.else.175
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.then.173
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.165
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.156
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %104 = load i32, i32* %shiftout, align 4, !tbaa !7
  %tobool192 = icmp ne i32 %104, 0
  br i1 %tobool192, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %while.end
  %105 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %106 = load i8*, i8** getelementptr inbounds (%struct.termescape, %struct.termescape* @TermEscape, i32 0, i32 2), align 8, !tbaa !25
  %call194 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %105, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %106)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.193, %while.end
  %107 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call196 = call i32 @sm_io_flush(%struct.sm_file* %107, i32 -2)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.195, %if.then.6
  %108 = bitcast i32* %shiftout to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast %struct.metamac** %mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
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

declare i32 @sm_debug_loadactive(%struct.sm_debug*, i32) #4

declare i8* @macname(i32) #4

; Function Attrs: nounwind uwtable
define void @makelower(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !11
  store i8 %2, i8* %c, align 1, !tbaa !11
  %conv = sext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8, i8* %c, align 1, !tbaa !11
  %conv3 = sext i8 %3 to i32
  %and = and i32 %conv3, -128
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8, i8* %c, align 1, !tbaa !11
  %conv6 = sext i8 %4 to i32
  %idxprom = sext i32 %conv6 to i64
  %call = call i16** @__ctype_b_loc() #12
  %5 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %land.lhs.true
  %7 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i8, i8* %c, align 1, !tbaa !11
  %conv10 = sext i8 %8 to i32
  %idxprom11 = sext i32 %conv10 to i64
  %call12 = call i32** @__ctype_tolower_loc() #12
  %9 = load i32*, i32** %call12, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %9, i64 %idxprom11
  %10 = load i32, i32* %arrayidx13, align 4, !tbaa !7
  store i32 %10, i32* %__res, align 4, !tbaa !7
  %11 = load i32, i32* %__res, align 4, !tbaa !7
  store i32 %11, i32* %tmp, !tbaa !7
  %12 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %tmp, !tbaa !7
  %conv14 = trunc i32 %13 to i8
  %14 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8 %conv14, i8* %14, align 1, !tbaa !11
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %15 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
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

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #5

; Function Attrs: nounwind uwtable
define void @fixcrlf(i8* %line, i32 %stripnl) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %stripnl.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %stripnl, i32* %stripnl.addr, align 4, !tbaa !7
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call = call i8* @strchr(i8* %1, i32 10) #1
  store i8* %call, i8** %p, align 8, !tbaa !1
  %2 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p, align 8, !tbaa !1
  %4 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %cmp1 = icmp ugt i8* %3, %4
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 -1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 13
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %8 = load i32, i32* %stripnl.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end.5
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8, !tbaa !1
  store i8 10, i8* %9, align 1, !tbaa !11
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.5
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %10, align 1, !tbaa !11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %11 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
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
define i32 @putline(i8* %l, %struct.mailer_con_info* %mci) #0 {
entry:
  %l.addr = alloca i8*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  store i8* %l, i8** %l.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #10
  %2 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1 = call i32 @putxline(i8* %0, i64 %call, %struct.mailer_con_info* %2, i32 1)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @putxline(i8* %l, i64 %len, %struct.mailer_con_info* %mci, i32 %pxflags) #0 {
entry:
  %l.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %pxflags.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %slop = alloca i32, align 4
  %dead = alloca i32, align 4
  %quotenext = alloca i32, align 4
  %strip8bit = alloca i32, align 4
  %noeol = alloca i32, align 4
  %q = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %c = alloca i8, align 1
  %c221 = alloca i8, align 1
  store i8* %l, i8** %l.addr, align 8, !tbaa !1
  store i64 %len, i64* %len.addr, align 8, !tbaa !5
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store i32 %pxflags, i32* %pxflags.addr, align 4, !tbaa !7
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %slop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %dead to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %quotenext to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %strip8bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %6, i32 0, i32 0
  %7 = load i64, i64* %mci_flags, align 8, !tbaa !29
  %and = and i64 %7, 128
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %8 = load i32, i32* %pxflags.addr, align 4, !tbaa !7
  %and1 = and i32 %8, 2
  %cmp2 = icmp ne i32 %and1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %9 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32
  store i32 %lor.ext, i32* %strip8bit, align 4, !tbaa !7
  store i32 0, i32* %dead, align 4, !tbaa !7
  store i32 0, i32* %slop, align 4, !tbaa !7
  %10 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %11 = load i64, i64* %len.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.326, %lor.end
  %12 = bitcast i32* %noeol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %noeol, align 4, !tbaa !7
  %13 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %end, align 8, !tbaa !1
  %15 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i8* @memchr(i8* %13, i32 10, i64 %sub.ptr.sub) #10
  store i8* %call, i8** %p, align 8, !tbaa !1
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %16, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %17 = load i8*, i8** %end, align 8, !tbaa !1
  store i8* %17, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %noeol, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %18 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.sm_file* %18, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %19 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %20 = load i32, i32* @CurrentPid, align 4, !tbaa !7
  %call6 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %19, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 %20)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.140, %if.end.7
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %21, i32 0, i32 11
  %22 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !31
  %m_linelimit = getelementptr inbounds %struct.mailer, %struct.mailer* %22, i32 0, i32 15
  %23 = load i32, i32* %m_linelimit, align 4, !tbaa !32
  %cmp8 = icmp sgt i32 %23, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %25 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast9 = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %25 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %26 = load i32, i32* %slop, align 4, !tbaa !7
  %conv = sext i32 %26 to i64
  %add = add nsw i64 %sub.ptr.sub11, %conv
  %27 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer12 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %27, i32 0, i32 11
  %28 = load %struct.mailer*, %struct.mailer** %mci_mailer12, align 8, !tbaa !31
  %m_linelimit13 = getelementptr inbounds %struct.mailer, %struct.mailer* %28, i32 0, i32 15
  %29 = load i32, i32* %m_linelimit13, align 4, !tbaa !32
  %conv14 = sext i32 %29 to i64
  %cmp15 = icmp sgt i64 %add, %conv14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %30, label %while.body, label %while.end.141

while.body:                                       ; preds = %land.end
  %31 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer17 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %32, i32 0, i32 11
  %33 = load %struct.mailer*, %struct.mailer** %mci_mailer17, align 8, !tbaa !31
  %m_linelimit18 = getelementptr inbounds %struct.mailer, %struct.mailer* %33, i32 0, i32 15
  %34 = load i32, i32* %m_linelimit18, align 4, !tbaa !32
  %35 = load i32, i32* %slop, align 4, !tbaa !7
  %sub = sub nsw i32 %34, %35
  %sub19 = sub nsw i32 %sub, 1
  %idxprom = sext i32 %sub19 to i64
  %36 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 %idxprom
  store i8* %arrayidx, i8** %q, align 8, !tbaa !1
  %37 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx20, align 1, !tbaa !11
  %conv21 = sext i8 %38 to i32
  %cmp22 = icmp eq i32 %conv21, 46
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %39 = load i32, i32* %slop, align 4, !tbaa !7
  %cmp24 = icmp eq i32 %39, 0
  br i1 %cmp24, label %land.lhs.true.26, label %if.else

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %40 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer27 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %40, i32 0, i32 11
  %41 = load %struct.mailer*, %struct.mailer** %mci_mailer27, align 8, !tbaa !31
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %41, i32 0, i32 5
  %arrayidx28 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 2
  %42 = load i32, i32* %arrayidx28, align 4, !tbaa !7
  %and29 = and i32 %42, 16777216
  %tobool = icmp ne i32 %and29, 0
  br i1 %tobool, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true.26
  %43 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %43, i32 0, i32 8
  %44 = load %struct.sm_file*, %struct.sm_file** %mci_out, align 8, !tbaa !34
  %call31 = call i32 @sm_io_putc(%struct.sm_file* %44, i32 -2, i32 46)
  %cmp32 = icmp eq i32 %call31, -1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.30
  store i32 1, i32* %dead, align 4, !tbaa !7
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.30
  %45 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp36 = icmp ne %struct.sm_file* %45, null
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.35
  %46 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %call39 = call i32 @sm_io_putc(%struct.sm_file* %46, i32 -2, i32 46)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.35
  br label %if.end.75

if.else:                                          ; preds = %land.lhs.true.26, %land.lhs.true, %while.body
  %47 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx41, align 1, !tbaa !11
  %conv42 = sext i8 %48 to i32
  %cmp43 = icmp eq i32 %conv42, 70
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.74

land.lhs.true.45:                                 ; preds = %if.else
  %49 = load i32, i32* %slop, align 4, !tbaa !7
  %cmp46 = icmp eq i32 %49, 0
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.74

land.lhs.true.48:                                 ; preds = %land.lhs.true.45
  %50 = load i32, i32* %pxflags.addr, align 4, !tbaa !7
  %and49 = and i32 %50, 1
  %cmp50 = icmp ne i32 %and49, 0
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.74

land.lhs.true.52:                                 ; preds = %land.lhs.true.48
  %51 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %call53 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i64 5) #10
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.74

land.lhs.true.56:                                 ; preds = %land.lhs.true.52
  %52 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer57 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %52, i32 0, i32 11
  %53 = load %struct.mailer*, %struct.mailer** %mci_mailer57, align 8, !tbaa !31
  %m_flags58 = getelementptr inbounds %struct.mailer, %struct.mailer* %53, i32 0, i32 5
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags58, i32 0, i64 2
  %54 = load i32, i32* %arrayidx59, align 4, !tbaa !7
  %and60 = and i32 %54, 32
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.74

if.then.62:                                       ; preds = %land.lhs.true.56
  %55 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out63 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %55, i32 0, i32 8
  %56 = load %struct.sm_file*, %struct.sm_file** %mci_out63, align 8, !tbaa !34
  %call64 = call i32 @sm_io_putc(%struct.sm_file* %56, i32 -2, i32 62)
  %cmp65 = icmp eq i32 %call64, -1
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.62
  store i32 1, i32* %dead, align 4, !tbaa !7
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.then.62
  %57 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp69 = icmp ne %struct.sm_file* %57, null
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.68
  %58 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %call72 = call i32 @sm_io_putc(%struct.sm_file* %58, i32 -2, i32 62)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.68
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true.56, %land.lhs.true.52, %land.lhs.true.48, %land.lhs.true.45, %if.else
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.40
  %59 = load i32, i32* %dead, align 4, !tbaa !7
  %tobool76 = icmp ne i32 %59, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.75
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.138

if.end.78:                                        ; preds = %if.end.75
  br label %do.body.79

do.body.79:                                       ; preds = %if.end.78
  store i32 0, i32* %quotenext, align 4, !tbaa !7
  br label %while.cond.80

while.cond.80:                                    ; preds = %cleanup.cont, %cleanup, %do.body.79
  %60 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp81 = icmp ult i8* %60, %61
  br i1 %cmp81, label %while.body.83, label %while.end

while.body.83:                                    ; preds = %while.cond.80
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %62 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr, i8** %l.addr, align 8, !tbaa !1
  %63 = load i8, i8* %62, align 1, !tbaa !11
  store i8 %63, i8* %c, align 1, !tbaa !11
  %64 = load i32, i32* %pxflags.addr, align 4, !tbaa !7
  %and84 = and i32 %64, 16
  %cmp85 = icmp ne i32 %and84, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.94

land.lhs.true.87:                                 ; preds = %while.body.83
  %65 = load i32, i32* %quotenext, align 4, !tbaa !7
  %tobool88 = icmp ne i32 %65, 0
  br i1 %tobool88, label %if.end.94, label %land.lhs.true.89

land.lhs.true.89:                                 ; preds = %land.lhs.true.87
  %66 = load i8, i8* %c, align 1, !tbaa !11
  %conv90 = zext i8 %66 to i32
  %cmp91 = icmp eq i32 %conv90, 255
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %land.lhs.true.89
  store i32 1, i32* %quotenext, align 4, !tbaa !7
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.94:                                        ; preds = %land.lhs.true.89, %land.lhs.true.87, %while.body.83
  store i32 0, i32* %quotenext, align 4, !tbaa !7
  %67 = load i32, i32* %strip8bit, align 4, !tbaa !7
  %tobool95 = icmp ne i32 %67, 0
  br i1 %tobool95, label %if.then.96, label %if.end.100

if.then.96:                                       ; preds = %if.end.94
  %68 = load i8, i8* %c, align 1, !tbaa !11
  %conv97 = zext i8 %68 to i32
  %and98 = and i32 %conv97, 127
  %conv99 = trunc i32 %and98 to i8
  store i8 %conv99, i8* %c, align 1, !tbaa !11
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.96, %if.end.94
  %69 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out101 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %69, i32 0, i32 8
  %70 = load %struct.sm_file*, %struct.sm_file** %mci_out101, align 8, !tbaa !34
  %71 = load i8, i8* %c, align 1, !tbaa !11
  %conv102 = zext i8 %71 to i32
  %call103 = call i32 @sm_io_putc(%struct.sm_file* %70, i32 -2, i32 %conv102)
  %cmp104 = icmp eq i32 %call103, -1
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.100
  store i32 1, i32* %dead, align 4, !tbaa !7
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

if.end.107:                                       ; preds = %if.end.100
  %72 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp108 = icmp ne %struct.sm_file* %72, null
  br i1 %cmp108, label %if.then.110, label %if.end.113

if.then.110:                                      ; preds = %if.end.107
  %73 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %74 = load i8, i8* %c, align 1, !tbaa !11
  %conv111 = zext i8 %74 to i32
  %call112 = call i32 @sm_io_putc(%struct.sm_file* %73, i32 -2, i32 %conv111)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %if.end.107
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.113, %if.then.106, %if.then.93
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %while.cond.80
    i32 9, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.80

while.end:                                        ; preds = %cleanup, %while.cond.80
  br label %do.cond

do.cond:                                          ; preds = %while.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %75 = load i32, i32* %dead, align 4, !tbaa !7
  %tobool114 = icmp ne i32 %75, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %do.end
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.138

if.end.116:                                       ; preds = %do.end
  %76 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out117 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %76, i32 0, i32 8
  %77 = load %struct.sm_file*, %struct.sm_file** %mci_out117, align 8, !tbaa !34
  %call118 = call i32 @sm_io_putc(%struct.sm_file* %77, i32 -2, i32 33)
  %cmp119 = icmp eq i32 %call118, -1
  br i1 %cmp119, label %if.then.131, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.116
  %78 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out121 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %78, i32 0, i32 8
  %79 = load %struct.sm_file*, %struct.sm_file** %mci_out121, align 8, !tbaa !34
  %80 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer122 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %80, i32 0, i32 11
  %81 = load %struct.mailer*, %struct.mailer** %mci_mailer122, align 8, !tbaa !31
  %m_eol = getelementptr inbounds %struct.mailer, %struct.mailer* %81, i32 0, i32 13
  %82 = load i8*, i8** %m_eol, align 8, !tbaa !35
  %call123 = call i32 @sm_io_fputs(%struct.sm_file* %79, i32 -2, i8* %82)
  %cmp124 = icmp eq i32 %call123, -1
  br i1 %cmp124, label %if.then.131, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false
  %83 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out127 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %83, i32 0, i32 8
  %84 = load %struct.sm_file*, %struct.sm_file** %mci_out127, align 8, !tbaa !34
  %call128 = call i32 @sm_io_putc(%struct.sm_file* %84, i32 -2, i32 32)
  %cmp129 = icmp eq i32 %call128, -1
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %lor.lhs.false.126, %lor.lhs.false, %if.end.116
  store i32 1, i32* %dead, align 4, !tbaa !7
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.138

if.end.132:                                       ; preds = %lor.lhs.false.126
  %85 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp133 = icmp ne %struct.sm_file* %85, null
  br i1 %cmp133, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.end.132
  %86 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %87 = load i32, i32* @CurrentPid, align 4, !tbaa !7
  %call136 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %86, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 %87)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.end.132
  store i32 1, i32* %slop, align 4, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.138

cleanup.138:                                      ; preds = %if.end.137, %if.then.131, %if.then.115, %if.then.77
  %88 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %cleanup.dest.139 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.139, label %unreachable [
    i32 0, label %cleanup.cont.140
    i32 5, label %while.end.141
  ]

cleanup.cont.140:                                 ; preds = %cleanup.138
  br label %while.cond

while.end.141:                                    ; preds = %cleanup.138, %land.end
  %89 = load i32, i32* %dead, align 4, !tbaa !7
  %tobool142 = icmp ne i32 %89, 0
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %while.end.141
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.144:                                       ; preds = %while.end.141
  %90 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx145, align 1, !tbaa !11
  %conv146 = sext i8 %91 to i32
  %cmp147 = icmp eq i32 %conv146, 46
  br i1 %cmp147, label %land.lhs.true.149, label %if.else.175

land.lhs.true.149:                                ; preds = %if.end.144
  %92 = load i32, i32* %slop, align 4, !tbaa !7
  %cmp150 = icmp eq i32 %92, 0
  br i1 %cmp150, label %land.lhs.true.152, label %if.else.175

land.lhs.true.152:                                ; preds = %land.lhs.true.149
  %93 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer153 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %93, i32 0, i32 11
  %94 = load %struct.mailer*, %struct.mailer** %mci_mailer153, align 8, !tbaa !31
  %m_flags154 = getelementptr inbounds %struct.mailer, %struct.mailer* %94, i32 0, i32 5
  %arrayidx155 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags154, i32 0, i64 2
  %95 = load i32, i32* %arrayidx155, align 4, !tbaa !7
  %and156 = and i32 %95, 16777216
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %land.lhs.true.158, label %if.else.175

land.lhs.true.158:                                ; preds = %land.lhs.true.152
  %96 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags159 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %96, i32 0, i32 0
  %97 = load i64, i64* %mci_flags159, align 8, !tbaa !29
  %and160 = and i64 %97, 16777216
  %cmp161 = icmp ne i64 %and160, 0
  br i1 %cmp161, label %if.else.175, label %if.then.163

if.then.163:                                      ; preds = %land.lhs.true.158
  %98 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out164 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %98, i32 0, i32 8
  %99 = load %struct.sm_file*, %struct.sm_file** %mci_out164, align 8, !tbaa !34
  %call165 = call i32 @sm_io_putc(%struct.sm_file* %99, i32 -2, i32 46)
  %cmp166 = icmp eq i32 %call165, -1
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.then.163
  store i32 1, i32* %dead, align 4, !tbaa !7
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.169:                                       ; preds = %if.then.163
  %100 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp170 = icmp ne %struct.sm_file* %100, null
  br i1 %cmp170, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %if.end.169
  %101 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %call173 = call i32 @sm_io_putc(%struct.sm_file* %101, i32 -2, i32 46)
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.172, %if.end.169
  br label %if.end.215

if.else.175:                                      ; preds = %land.lhs.true.158, %land.lhs.true.152, %land.lhs.true.149, %if.end.144
  %102 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i8, i8* %102, i64 0
  %103 = load i8, i8* %arrayidx176, align 1, !tbaa !11
  %conv177 = sext i8 %103 to i32
  %cmp178 = icmp eq i32 %conv177, 70
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.214

land.lhs.true.180:                                ; preds = %if.else.175
  %104 = load i32, i32* %slop, align 4, !tbaa !7
  %cmp181 = icmp eq i32 %104, 0
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.214

land.lhs.true.183:                                ; preds = %land.lhs.true.180
  %105 = load i32, i32* %pxflags.addr, align 4, !tbaa !7
  %and184 = and i32 %105, 1
  %cmp185 = icmp ne i32 %and184, 0
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.214

land.lhs.true.187:                                ; preds = %land.lhs.true.183
  %106 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %call188 = call i32 @strncmp(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i64 5) #10
  %cmp189 = icmp eq i32 %call188, 0
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.214

land.lhs.true.191:                                ; preds = %land.lhs.true.187
  %107 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer192 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %107, i32 0, i32 11
  %108 = load %struct.mailer*, %struct.mailer** %mci_mailer192, align 8, !tbaa !31
  %m_flags193 = getelementptr inbounds %struct.mailer, %struct.mailer* %108, i32 0, i32 5
  %arrayidx194 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags193, i32 0, i64 2
  %109 = load i32, i32* %arrayidx194, align 4, !tbaa !7
  %and195 = and i32 %109, 32
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %land.lhs.true.197, label %if.end.214

land.lhs.true.197:                                ; preds = %land.lhs.true.191
  %110 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags198 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %110, i32 0, i32 0
  %111 = load i64, i64* %mci_flags198, align 8, !tbaa !29
  %and199 = and i64 %111, 16777216
  %cmp200 = icmp ne i64 %and199, 0
  br i1 %cmp200, label %if.end.214, label %if.then.202

if.then.202:                                      ; preds = %land.lhs.true.197
  %112 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out203 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %112, i32 0, i32 8
  %113 = load %struct.sm_file*, %struct.sm_file** %mci_out203, align 8, !tbaa !34
  %call204 = call i32 @sm_io_putc(%struct.sm_file* %113, i32 -2, i32 62)
  %cmp205 = icmp eq i32 %call204, -1
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.then.202
  store i32 1, i32* %dead, align 4, !tbaa !7
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.208:                                       ; preds = %if.then.202
  %114 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp209 = icmp ne %struct.sm_file* %114, null
  br i1 %cmp209, label %if.then.211, label %if.end.213

if.then.211:                                      ; preds = %if.end.208
  %115 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %call212 = call i32 @sm_io_putc(%struct.sm_file* %115, i32 -2, i32 62)
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.211, %if.end.208
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %land.lhs.true.197, %land.lhs.true.191, %land.lhs.true.187, %land.lhs.true.183, %land.lhs.true.180, %if.else.175
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.174
  br label %do.body.216

do.body.216:                                      ; preds = %if.end.215
  store i32 0, i32* %quotenext, align 4, !tbaa !7
  br label %while.cond.217

while.cond.217:                                   ; preds = %cleanup.cont.255, %cleanup.253, %do.body.216
  %116 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp218 = icmp ult i8* %116, %117
  br i1 %cmp218, label %while.body.220, label %while.end.256

while.body.220:                                   ; preds = %while.cond.217
  call void @llvm.lifetime.start(i64 1, i8* %c221) #1
  %118 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %incdec.ptr222 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr222, i8** %l.addr, align 8, !tbaa !1
  %119 = load i8, i8* %118, align 1, !tbaa !11
  store i8 %119, i8* %c221, align 1, !tbaa !11
  %120 = load i32, i32* %pxflags.addr, align 4, !tbaa !7
  %and223 = and i32 %120, 16
  %cmp224 = icmp ne i32 %and223, 0
  br i1 %cmp224, label %land.lhs.true.226, label %if.end.233

land.lhs.true.226:                                ; preds = %while.body.220
  %121 = load i32, i32* %quotenext, align 4, !tbaa !7
  %tobool227 = icmp ne i32 %121, 0
  br i1 %tobool227, label %if.end.233, label %land.lhs.true.228

land.lhs.true.228:                                ; preds = %land.lhs.true.226
  %122 = load i8, i8* %c221, align 1, !tbaa !11
  %conv229 = zext i8 %122 to i32
  %cmp230 = icmp eq i32 %conv229, 255
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %land.lhs.true.228
  store i32 1, i32* %quotenext, align 4, !tbaa !7
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup.253

if.end.233:                                       ; preds = %land.lhs.true.228, %land.lhs.true.226, %while.body.220
  store i32 0, i32* %quotenext, align 4, !tbaa !7
  %123 = load i32, i32* %strip8bit, align 4, !tbaa !7
  %tobool234 = icmp ne i32 %123, 0
  br i1 %tobool234, label %if.then.235, label %if.end.239

if.then.235:                                      ; preds = %if.end.233
  %124 = load i8, i8* %c221, align 1, !tbaa !11
  %conv236 = zext i8 %124 to i32
  %and237 = and i32 %conv236, 127
  %conv238 = trunc i32 %and237 to i8
  store i8 %conv238, i8* %c221, align 1, !tbaa !11
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.235, %if.end.233
  %125 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out240 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %125, i32 0, i32 8
  %126 = load %struct.sm_file*, %struct.sm_file** %mci_out240, align 8, !tbaa !34
  %127 = load i8, i8* %c221, align 1, !tbaa !11
  %conv241 = zext i8 %127 to i32
  %call242 = call i32 @sm_io_putc(%struct.sm_file* %126, i32 -2, i32 %conv241)
  %cmp243 = icmp eq i32 %call242, -1
  br i1 %cmp243, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.end.239
  store i32 1, i32* %dead, align 4, !tbaa !7
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.253

if.end.246:                                       ; preds = %if.end.239
  %128 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp247 = icmp ne %struct.sm_file* %128, null
  br i1 %cmp247, label %if.then.249, label %if.end.252

if.then.249:                                      ; preds = %if.end.246
  %129 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %130 = load i8, i8* %c221, align 1, !tbaa !11
  %conv250 = zext i8 %130 to i32
  %call251 = call i32 @sm_io_putc(%struct.sm_file* %129, i32 -2, i32 %conv250)
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.249, %if.end.246
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.253

cleanup.253:                                      ; preds = %if.end.252, %if.then.245, %if.then.232
  call void @llvm.lifetime.end(i64 1, i8* %c221) #1
  %cleanup.dest.254 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.254, label %unreachable [
    i32 0, label %cleanup.cont.255
    i32 12, label %while.cond.217
    i32 13, label %while.end.256
  ]

cleanup.cont.255:                                 ; preds = %cleanup.253
  br label %while.cond.217

while.end.256:                                    ; preds = %cleanup.253, %while.cond.217
  br label %do.cond.257

do.cond.257:                                      ; preds = %while.end.256
  br label %do.end.258

do.end.258:                                       ; preds = %do.cond.257
  %131 = load i32, i32* %dead, align 4, !tbaa !7
  %tobool259 = icmp ne i32 %131, 0
  br i1 %tobool259, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %do.end.258
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.261:                                       ; preds = %do.end.258
  %132 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp262 = icmp ne %struct.sm_file* %132, null
  br i1 %cmp262, label %if.then.264, label %if.end.266

if.then.264:                                      ; preds = %if.end.261
  %133 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %call265 = call i32 @sm_io_putc(%struct.sm_file* %133, i32 -2, i32 10)
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.264, %if.end.261
  %134 = load i32, i32* %pxflags.addr, align 4, !tbaa !7
  %and267 = and i32 %134, 8
  %cmp268 = icmp ne i32 %and267, 0
  br i1 %cmp268, label %lor.lhs.false.270, label %if.then.272

lor.lhs.false.270:                                ; preds = %if.end.266
  %135 = load i32, i32* %noeol, align 4, !tbaa !7
  %tobool271 = icmp ne i32 %135, 0
  br i1 %tobool271, label %if.else.283, label %if.then.272

if.then.272:                                      ; preds = %lor.lhs.false.270, %if.end.266
  %136 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags273 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %136, i32 0, i32 0
  %137 = load i64, i64* %mci_flags273, align 8, !tbaa !29
  %and274 = and i64 %137, -16777217
  store i64 %and274, i64* %mci_flags273, align 8, !tbaa !29
  %138 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out275 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %138, i32 0, i32 8
  %139 = load %struct.sm_file*, %struct.sm_file** %mci_out275, align 8, !tbaa !34
  %140 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer276 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %140, i32 0, i32 11
  %141 = load %struct.mailer*, %struct.mailer** %mci_mailer276, align 8, !tbaa !31
  %m_eol277 = getelementptr inbounds %struct.mailer, %struct.mailer* %141, i32 0, i32 13
  %142 = load i8*, i8** %m_eol277, align 8, !tbaa !35
  %call278 = call i32 @sm_io_fputs(%struct.sm_file* %139, i32 -2, i8* %142)
  %cmp279 = icmp eq i32 %call278, -1
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %if.then.272
  store i32 1, i32* %dead, align 4, !tbaa !7
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.282:                                       ; preds = %if.then.272
  br label %if.end.285

if.else.283:                                      ; preds = %lor.lhs.false.270
  %143 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags284 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %143, i32 0, i32 0
  %144 = load i64, i64* %mci_flags284, align 8, !tbaa !29
  %or = or i64 %144, 16777216
  store i64 %or, i64* %mci_flags284, align 8, !tbaa !29
  br label %if.end.285

if.end.285:                                       ; preds = %if.else.283, %if.end.282
  %145 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %146 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp286 = icmp ult i8* %145, %146
  br i1 %cmp286, label %land.lhs.true.288, label %if.end.322

land.lhs.true.288:                                ; preds = %if.end.285
  %147 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %148 = load i8, i8* %147, align 1, !tbaa !11
  %conv289 = sext i8 %148 to i32
  %cmp290 = icmp eq i32 %conv289, 10
  br i1 %cmp290, label %if.then.292, label %if.end.322

if.then.292:                                      ; preds = %land.lhs.true.288
  %149 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %incdec.ptr293 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr293, i8** %l.addr, align 8, !tbaa !1
  %150 = load i8, i8* %incdec.ptr293, align 1, !tbaa !11
  %conv294 = sext i8 %150 to i32
  %cmp295 = icmp ne i32 %conv294, 32
  br i1 %cmp295, label %land.lhs.true.297, label %if.end.321

land.lhs.true.297:                                ; preds = %if.then.292
  %151 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %152 = load i8, i8* %151, align 1, !tbaa !11
  %conv298 = sext i8 %152 to i32
  %cmp299 = icmp ne i32 %conv298, 9
  br i1 %cmp299, label %land.lhs.true.301, label %if.end.321

land.lhs.true.301:                                ; preds = %land.lhs.true.297
  %153 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %154 = load i8, i8* %153, align 1, !tbaa !11
  %conv302 = sext i8 %154 to i32
  %cmp303 = icmp ne i32 %conv302, 0
  br i1 %cmp303, label %land.lhs.true.305, label %if.end.321

land.lhs.true.305:                                ; preds = %land.lhs.true.301
  %155 = load i32, i32* %pxflags.addr, align 4, !tbaa !7
  %and306 = and i32 %155, 4
  %cmp307 = icmp ne i32 %and306, 0
  br i1 %cmp307, label %if.then.309, label %if.end.321

if.then.309:                                      ; preds = %land.lhs.true.305
  %156 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out310 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %156, i32 0, i32 8
  %157 = load %struct.sm_file*, %struct.sm_file** %mci_out310, align 8, !tbaa !34
  %call311 = call i32 @sm_io_putc(%struct.sm_file* %157, i32 -2, i32 32)
  %cmp312 = icmp eq i32 %call311, -1
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.then.309
  store i32 1, i32* %dead, align 4, !tbaa !7
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.315:                                       ; preds = %if.then.309
  %158 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp316 = icmp ne %struct.sm_file* %158, null
  br i1 %cmp316, label %if.then.318, label %if.end.320

if.then.318:                                      ; preds = %if.end.315
  %159 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %call319 = call i32 @sm_io_putc(%struct.sm_file* %159, i32 -2, i32 32)
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.318, %if.end.315
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %land.lhs.true.305, %land.lhs.true.301, %land.lhs.true.297, %if.then.292
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %land.lhs.true.288, %if.end.285
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.323

cleanup.323:                                      ; preds = %if.end.322, %if.then.314, %if.then.281, %if.then.260, %if.then.207, %if.then.168, %if.then.143
  %160 = bitcast i32* %noeol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %cleanup.dest.324 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.324, label %unreachable [
    i32 0, label %cleanup.cont.325
    i32 2, label %do.end.329
  ]

cleanup.cont.325:                                 ; preds = %cleanup.323
  br label %do.cond.326

do.cond.326:                                      ; preds = %cleanup.cont.325
  %161 = load i8*, i8** %l.addr, align 8, !tbaa !1
  %162 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp327 = icmp ult i8* %161, %162
  br i1 %cmp327, label %do.body, label %do.end.329

do.end.329:                                       ; preds = %do.cond.326, %cleanup.323
  %163 = load i32, i32* %dead, align 4, !tbaa !7
  %tobool330 = icmp ne i32 %163, 0
  %lnot = xor i1 %tobool330, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 1, i32* %cleanup.dest.slot
  %164 = bitcast i32* %strip8bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %quotenext to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %dead to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %slop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  ret i32 %lnot.ext

unreachable:                                      ; preds = %cleanup.323, %cleanup.253, %cleanup.138, %cleanup
  unreachable
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i32 @sm_io_fputs(%struct.sm_file*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @xunlink(i8* %f) #0 {
entry:
  %f.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %save_errno = alloca i32, align 4
  store i8* %f, i8** %f.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* @LogLevel, align 4, !tbaa !7
  %cmp = icmp sgt i32 %2, 98
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %3, i32 0, i32 25
  %4 = load i8*, i8** %e_id, align 8, !tbaa !36
  %5 = load i8*, i8** %f.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 7, i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %f.addr, align 8, !tbaa !1
  %call = call i32 @unlink(i8* %6) #1
  store i32 %call, i32* %i, align 4, !tbaa !7
  %call1 = call i32* @__errno_location() #12
  %7 = load i32, i32* %call1, align 4, !tbaa !7
  store i32 %7, i32* %save_errno, align 4, !tbaa !7
  %8 = load i32, i32* %i, align 4, !tbaa !7
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* @LogLevel, align 4, !tbaa !7
  %cmp3 = icmp sgt i32 %9, 97
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %land.lhs.true
  %10 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id5 = getelementptr inbounds %struct.envelope, %struct.envelope* %10, i32 0, i32 25
  %11 = load i8*, i8** %e_id5, align 8, !tbaa !36
  %12 = load i8*, i8** %f.addr, align 8, !tbaa !1
  %call6 = call i32* @__errno_location() #12
  %13 = load i32, i32* %call6, align 4, !tbaa !7
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 7, i8* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* %12, i32 %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !7
  %cmp8 = icmp sge i32 %14, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %15 = load i8*, i8** %f.addr, align 8, !tbaa !1
  call void @sync_dir(i8* %15, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %16 = load i32, i32* %save_errno, align 4, !tbaa !7
  %call11 = call i32* @__errno_location() #12
  store i32 %16, i32* %call11, align 4, !tbaa !7
  %17 = load i32, i32* %i, align 4, !tbaa !7
  %18 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret i32 %17
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #6

declare void @sync_dir(i8*, i32) #4

; Function Attrs: nounwind uwtable
define i8* @sfgets(i8* %buf, i32 %siz, %struct.sm_file* %fp, i64 %timeout, i8* %during) #0 {
entry:
  %retval = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %siz.addr = alloca i32, align 4
  %fp.addr = alloca %struct.sm_file*, align 8
  %timeout.addr = alloca i64, align 8
  %during.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %save_errno = alloca i32, align 4
  %io_timeout = alloca i32, align 4
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %siz, i32* %siz.addr, align 4, !tbaa !7
  store %struct.sm_file* %fp, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  store i64 %timeout, i64* %timeout.addr, align 8, !tbaa !5
  store i8* %during, i8** %during.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %io_timeout to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %siz.addr, align 4, !tbaa !7
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  call void @sm_abort_at(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1290, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %5, %entry
  %6 = phi i1 [ true, %entry ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32
  %7 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %7, null
  br i1 %cmp1, label %lor.end.3, label %lor.rhs.2

lor.rhs.2:                                        ; preds = %lor.end
  call void @sm_abort_at(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1291, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end.3

lor.end.3:                                        ; preds = %8, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ false, %8 ]
  %lor.ext4 = zext i1 %9 to i32
  %10 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.sm_file* %10, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end.3
  %11 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  %call = call i32* @__errno_location() #12
  store i32 9, i32* %call, align 4, !tbaa !7
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.end.3
  store i32 -1, i32* %l, align 4, !tbaa !7
  %call6 = call i32* @__errno_location() #12
  store i32 0, i32* %call6, align 4, !tbaa !7
  %12 = load i64, i64* %timeout.addr, align 8, !tbaa !5
  %cmp7 = icmp sle i64 %12, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load i64, i64* %timeout.addr, align 8, !tbaa !5
  %mul = mul nsw i64 %13, 1000
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -2, %cond.true ], [ %mul, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %io_timeout, align 4, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %cond.end
  %14 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %f_flags = getelementptr inbounds %struct.sm_file, %struct.sm_file* %14, i32 0, i32 4
  %15 = load i64, i64* %f_flags, align 8, !tbaa !37
  %and = and i64 %15, 128
  %cmp8 = icmp ne i64 %and, 0
  br i1 %cmp8, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %16 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %f_flags10 = getelementptr inbounds %struct.sm_file, %struct.sm_file* %16, i32 0, i32 4
  %17 = load i64, i64* %f_flags10, align 8, !tbaa !37
  %and11 = and i64 %17, 256
  %cmp12 = icmp ne i64 %and11, 0
  %lnot = xor i1 %cmp12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call14 = call i32* @__errno_location() #12
  store i32 0, i32* %call14, align 4, !tbaa !7
  %19 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %20 = load i32, i32* %io_timeout, align 4, !tbaa !7
  %21 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %22 = load i32, i32* %siz.addr, align 4, !tbaa !7
  %call15 = call i32 @sm_io_fgets(%struct.sm_file* %19, i32 %20, i8* %21, i32 %22)
  store i32 %call15, i32* %l, align 4, !tbaa !7
  %23 = load i32, i32* %l, align 4, !tbaa !7
  %cmp16 = icmp slt i32 %23, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %while.body
  %call18 = call i32* @__errno_location() #12
  %24 = load i32, i32* %call18, align 4, !tbaa !7
  %cmp19 = icmp eq i32 %24, 11
  br i1 %cmp19, label %if.then.21, label %if.end.39

if.then.21:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* @LogLevel, align 4, !tbaa !7
  %cmp22 = icmp sgt i32 %25, 1
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.then.21
  %26 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 25
  %27 = load i8*, i8** %e_id, align 8, !tbaa !36
  %28 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp25 = icmp eq i8* %28, null
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %if.then.24
  br label %cond.end.29

cond.false.28:                                    ; preds = %if.then.24
  %29 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.27
  %cond30 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), %cond.true.27 ], [ %29, %cond.false.28 ]
  %30 = load i8*, i8** %during.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0), i8* %cond30, i8* %30)
  br label %if.end.31

if.end.31:                                        ; preds = %cond.end.29, %if.then.21
  %31 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %arrayidx32, align 1, !tbaa !11
  %32 = load i8*, i8** %during.addr, align 8, !tbaa !1
  call void @checkfd012(i8* %32)
  %33 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp33 = icmp ne %struct.sm_file* %33, null
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.31
  %34 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %35 = load i32, i32* @CurrentPid, align 4, !tbaa !7
  %call36 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %34, i32 -2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i32 %35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.31
  %call38 = call i32* @__errno_location() #12
  store i32 110, i32* %call38, align 4, !tbaa !7
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %land.lhs.true, %while.body
  %36 = load i32, i32* %l, align 4, !tbaa !7
  %cmp40 = icmp sge i32 %36, 0
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.39
  %call42 = call i32* @__errno_location() #12
  %37 = load i32, i32* %call42, align 4, !tbaa !7
  %cmp43 = icmp ne i32 %37, 4
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false, %if.end.39
  br label %while.end

if.end.46:                                        ; preds = %lor.lhs.false
  %38 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %f_flags47 = getelementptr inbounds %struct.sm_file, %struct.sm_file* %38, i32 0, i32 4
  %39 = load i64, i64* %f_flags47, align 8, !tbaa !37
  %and48 = and i64 %39, -385
  store i64 %and48, i64* %f_flags47, align 8, !tbaa !37
  br label %while.cond

while.end:                                        ; preds = %if.then.45, %land.end
  %call49 = call i32* @__errno_location() #12
  %40 = load i32, i32* %call49, align 4, !tbaa !7
  store i32 %40, i32* %save_errno, align 4, !tbaa !7
  %41 = load i32, i32* @LineNumber, align 4, !tbaa !7
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* @LineNumber, align 4, !tbaa !7
  %42 = load i32, i32* %l, align 4, !tbaa !7
  %cmp50 = icmp slt i32 %42, 0
  br i1 %cmp50, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %while.end
  %43 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %arrayidx53, align 1, !tbaa !11
  %44 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp54 = icmp ne %struct.sm_file* %44, null
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.then.52
  %45 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %46 = load i32, i32* @CurrentPid, align 4, !tbaa !7
  %call57 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %45, i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 %46)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.52
  %47 = load i32, i32* %save_errno, align 4, !tbaa !7
  %call59 = call i32* @__errno_location() #12
  store i32 %47, i32* %call59, align 4, !tbaa !7
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %while.end
  %48 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp61 = icmp ne %struct.sm_file* %48, null
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.60
  %49 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %50 = load i32, i32* @CurrentPid, align 4, !tbaa !7
  %51 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call64 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %49, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 %50, i8* %51)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.60
  %52 = load i32, i32* @SevenBitInput, align 4, !tbaa !7
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %if.end.65
  %53 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %53, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.66
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !11
  %conv67 = sext i8 %55 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !11
  %conv70 = sext i8 %57 to i32
  %and71 = and i32 %conv70, -129
  %conv72 = trunc i32 %and71 to i8
  store i8 %conv72, i8* %56, align 1, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.90

if.else:                                          ; preds = %if.end.65
  %59 = load i32, i32* @HasEightBits, align 4, !tbaa !7
  %tobool73 = icmp ne i32 %59, 0
  br i1 %tobool73, label %if.end.89, label %if.then.74

if.then.74:                                       ; preds = %if.else
  %60 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %60, i8** %p, align 8, !tbaa !1
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.86, %if.then.74
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !11
  %conv76 = sext i8 %62 to i32
  %cmp77 = icmp ne i32 %conv76, 0
  br i1 %cmp77, label %for.body.79, label %for.end.88

for.body.79:                                      ; preds = %for.cond.75
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %64 = load i8, i8* %63, align 1, !tbaa !11
  %conv80 = sext i8 %64 to i32
  %and81 = and i32 %conv80, 128
  %cmp82 = icmp ne i32 %and81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.body.79
  store i32 1, i32* @HasEightBits, align 4, !tbaa !7
  br label %for.end.88

if.end.85:                                        ; preds = %for.body.79
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr87 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr87, i8** %p, align 8, !tbaa !1
  br label %for.cond.75

for.end.88:                                       ; preds = %if.then.84, %for.cond.75
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %if.else
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %for.end
  %66 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %66, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.90, %if.end.58, %if.end.37, %if.then
  %67 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %io_timeout to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = load i8*, i8** %retval
  ret i8* %71
}

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #4

; Function Attrs: nounwind uwtable
define void @checkfd012(i8* %where) #0 {
entry:
  %where.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %where, i8** %where.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !7
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !7
  %3 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void @fill_fd(i32 %2, i8* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @fgetfolded(i8* %buf, i32* %np, %struct.sm_file* %f) #0 {
entry:
  %retval = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %np.addr = alloca i32*, align 8
  %f.addr = alloca %struct.sm_file*, align 8
  %p = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %nbp = alloca i8*, align 8
  %nn = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32* %np, i32** %np.addr, align 8, !tbaa !1
  store %struct.sm_file* %f, %struct.sm_file** %f.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %1, i8** %p, align 8, !tbaa !1
  %2 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %3, i8** %bp, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32*, i32** %np.addr, align 8, !tbaa !1
  %cmp = icmp ne i32* %6, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  call void @sm_abort_at(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1402, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %7, %entry
  %8 = phi i1 [ true, %entry ], [ false, %7 ]
  %lor.ext = zext i1 %8 to i32
  %9 = load i32*, i32** %np.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !7
  store i32 %10, i32* %n, align 4, !tbaa !7
  %11 = load i32, i32* %n, align 4, !tbaa !7
  %cmp1 = icmp sgt i32 %11, 0
  br i1 %cmp1, label %lor.end.3, label %lor.rhs.2

lor.rhs.2:                                        ; preds = %lor.end
  call void @sm_abort_at(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1404, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end.3

lor.end.3:                                        ; preds = %12, %lor.end
  %13 = phi i1 [ true, %lor.end ], [ false, %12 ]
  %lor.ext4 = zext i1 %13 to i32
  %14 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp5 = icmp ne i8* %14, null
  br i1 %cmp5, label %lor.end.7, label %lor.rhs.6

lor.rhs.6:                                        ; preds = %lor.end.3
  call void @sm_abort_at(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1405, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end.7

lor.end.7:                                        ; preds = %15, %lor.end.3
  %16 = phi i1 [ true, %lor.end.3 ], [ false, %15 ]
  %lor.ext8 = zext i1 %16 to i32
  %17 = load %struct.sm_file*, %struct.sm_file** %f.addr, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.sm_file* %17, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end.7
  %18 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  %call = call i32* @__errno_location() #12
  store i32 9, i32* %call, align 4, !tbaa !7
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.end.7
  %19 = load i32, i32* %n, align 4, !tbaa !7
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %n, align 4, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %if.end.65, %if.end
  %20 = load %struct.sm_file*, %struct.sm_file** %f.addr, align 8, !tbaa !1
  %call10 = call i32 @sm_io_getc(%struct.sm_file* %20, i32 -2)
  store i32 %call10, i32* %i, align 4, !tbaa !7
  %cmp11 = icmp ne i32 %call10, -1
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %cmp12 = icmp eq i32 %21, 13
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %while.body
  %22 = load %struct.sm_file*, %struct.sm_file** %f.addr, align 8, !tbaa !1
  %call14 = call i32 @sm_io_getc(%struct.sm_file* %22, i32 -2)
  store i32 %call14, i32* %i, align 4, !tbaa !7
  %23 = load i32, i32* %i, align 4, !tbaa !7
  %cmp15 = icmp ne i32 %23, 10
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.then.13
  %24 = load i32, i32* %i, align 4, !tbaa !7
  %cmp17 = icmp ne i32 %24, -1
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.16
  %25 = load %struct.sm_file*, %struct.sm_file** %f.addr, align 8, !tbaa !1
  %26 = load i32, i32* %i, align 4, !tbaa !7
  %call19 = call i32 @sm_io_ungetc(%struct.sm_file* %25, i32 -2, i32 %26)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.16
  store i32 13, i32* %i, align 4, !tbaa !7
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.13
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %while.body
  %27 = load i32, i32* %n, align 4, !tbaa !7
  %dec23 = add nsw i32 %27, -1
  store i32 %dec23, i32* %n, align 4, !tbaa !7
  %cmp24 = icmp sle i32 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.48

if.then.25:                                       ; preds = %if.end.22
  %28 = bitcast i8** %nbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = bitcast i32* %nn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %31 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %nn, align 4, !tbaa !7
  %32 = load i32, i32* %nn, align 4, !tbaa !7
  %cmp26 = icmp slt i32 %32, 1024
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.25
  %33 = load i32, i32* %nn, align 4, !tbaa !7
  %mul = mul nsw i32 %33, 2
  store i32 %mul, i32* %nn, align 4, !tbaa !7
  br label %if.end.29

if.else:                                          ; preds = %if.then.25
  %34 = load i32, i32* %nn, align 4, !tbaa !7
  %add = add nsw i32 %34, 1024
  store i32 %add, i32* %nn, align 4, !tbaa !7
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  %35 = load i32, i32* %nn, align 4, !tbaa !7
  %conv30 = sext i32 %35 to i64
  %36 = load i32, i32* @SmHeapGroup, align 4, !tbaa !7
  %call31 = call i8* @sm_malloc_tagged_x(i64 %conv30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1438, i32 %36)
  store i8* %call31, i8** %nbp, align 8, !tbaa !1
  %37 = load i8*, i8** %nbp, align 8, !tbaa !1
  %38 = load i8*, i8** %bp, align 8, !tbaa !1
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast32 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast33 = ptrtoint i8* %40 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %sub.ptr.sub34, i32 1, i1 false)
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %42 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast35 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast36 = ptrtoint i8* %42 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %43 = load i8*, i8** %nbp, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %43, i64 %sub.ptr.sub37
  store i8* %arrayidx38, i8** %p, align 8, !tbaa !1
  %44 = load i8*, i8** %bp, align 8, !tbaa !1
  %45 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp39 = icmp ne i8* %44, %45
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.29
  %46 = load i8*, i8** %bp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1442)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.29
  %47 = load i8*, i8** %nbp, align 8, !tbaa !1
  store i8* %47, i8** %bp, align 8, !tbaa !1
  %48 = load i32, i32* %nn, align 4, !tbaa !7
  %conv43 = sext i32 %48 to i64
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %50 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast44 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast45 = ptrtoint i8* %50 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %sub = sub nsw i64 %conv43, %sub.ptr.sub46
  %conv47 = trunc i64 %sub to i32
  store i32 %conv47, i32* %n, align 4, !tbaa !7
  %51 = load i32, i32* %nn, align 4, !tbaa !7
  %52 = load i32*, i32** %np.addr, align 8, !tbaa !1
  store i32 %51, i32* %52, align 4, !tbaa !7
  %53 = bitcast i32* %nn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i8** %nbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.42, %if.end.22
  %55 = load i32, i32* %i, align 4, !tbaa !7
  %conv49 = trunc i32 %55 to i8
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 %conv49, i8* %56, align 1, !tbaa !11
  %57 = load i32, i32* %i, align 4, !tbaa !7
  %cmp50 = icmp eq i32 %57, 10
  br i1 %cmp50, label %if.then.52, label %if.end.65

if.then.52:                                       ; preds = %if.end.48
  %58 = load i32, i32* @LineNumber, align 4, !tbaa !7
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* @LineNumber, align 4, !tbaa !7
  %59 = load %struct.sm_file*, %struct.sm_file** %f.addr, align 8, !tbaa !1
  %call53 = call i32 @sm_io_getc(%struct.sm_file* %59, i32 -2)
  store i32 %call53, i32* %i, align 4, !tbaa !7
  %60 = load i32, i32* %i, align 4, !tbaa !7
  %cmp54 = icmp ne i32 %60, -1
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.then.52
  %61 = load %struct.sm_file*, %struct.sm_file** %f.addr, align 8, !tbaa !1
  %62 = load i32, i32* %i, align 4, !tbaa !7
  %call57 = call i32 @sm_io_ungetc(%struct.sm_file* %61, i32 -2, i32 %62)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.52
  %63 = load i32, i32* %i, align 4, !tbaa !7
  %cmp59 = icmp ne i32 %63, 32
  br i1 %cmp59, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %if.end.58
  %64 = load i32, i32* %i, align 4, !tbaa !7
  %cmp61 = icmp ne i32 %64, 9
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true
  br label %while.end

if.end.64:                                        ; preds = %land.lhs.true, %if.end.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.48
  br label %while.cond

while.end:                                        ; preds = %if.then.63, %while.cond
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %66 = load i8*, i8** %bp, align 8, !tbaa !1
  %cmp66 = icmp eq i8* %65, %66
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %while.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %while.end
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %67, i64 -1
  %68 = load i8, i8* %arrayidx70, align 1, !tbaa !11
  %conv71 = sext i8 %68 to i32
  %cmp72 = icmp eq i32 %conv71, 10
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.69
  %69 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %incdec.ptr75, i8** %p, align 8, !tbaa !1
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.end.69
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %70, align 1, !tbaa !11
  %71 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8* %71, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.76, %if.then.68, %if.then
  %72 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i8*, i8** %retval
  ret i8* %76
}

declare i32 @sm_io_getc(%struct.sm_file*, i32) #4

declare i32 @sm_io_ungetc(%struct.sm_file*, i32, i32) #4

declare i8* @sm_malloc_tagged_x(i64, i8*, i32, i32) #4

declare void @sm_free_tagged(i8*, i8*, i32) #4

; Function Attrs: nounwind uwtable
define i64 @curtime() #0 {
entry:
  %t = alloca i64, align 8
  %0 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call i64 @time(i64* %t) #1
  %1 = load i64, i64* %t, align 8, !tbaa !5
  %2 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2) #1
  ret i64 %1
}

; Function Attrs: nounwind
declare i64 @time(i64*) #6

; Function Attrs: nounwind uwtable
define i32 @atobool(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !11
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !11
  %conv4 = sext i8 %4 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 %conv4) #1
  %cmp5 = icmp ne i8* %call, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @atooct(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !11
  %conv = sext i8 %2 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !11
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp sle i32 %conv2, 55
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %i, align 4, !tbaa !7
  %shl = shl i32 %6, 3
  %7 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !11
  %conv5 = sext i8 %8 to i32
  %sub = sub nsw i32 %conv5, 48
  %or = or i32 %shl, %sub
  store i32 %or, i32* %i, align 4, !tbaa !7
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %i, align 4, !tbaa !7
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @bitintersect(i32* %a, i32* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %a, i32** %a.addr, align 8, !tbaa !1
  store i32* %b, i32** %b.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 8, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !7
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %i, align 4, !tbaa !7
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %5 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** %b.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4, !tbaa !7
  %and = and i32 %4, %7
  %cmp3 = icmp ne i32 %and, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @bitzerop(i32* %map) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %map, i32** %map.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 8, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !7
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %i, align 4, !tbaa !7
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %map.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @strcontainedin(i32 %icase, i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %icase.addr = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %la = alloca i32, align 4
  %lb = alloca i32, align 4
  %c = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res33 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %icase, i32* %icase.addr, align 4, !tbaa !7
  store i8* %a, i8** %a.addr, align 8, !tbaa !1
  store i8* %b, i8** %b.addr, align 8, !tbaa !1
  %0 = bitcast i32* %la to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %a.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %3) #10
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %la, align 4, !tbaa !7
  %4 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %call1 = call i64 @strlen(i8* %4) #10
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %lb, align 4, !tbaa !7
  %5 = load i8*, i8** %a.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !11
  %conv3 = sext i8 %6 to i32
  store i32 %conv3, i32* %c, align 4, !tbaa !7
  %7 = load i32, i32* %icase.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %c, align 4, !tbaa !7
  %and = and i32 %8, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %c, align 4, !tbaa !7
  %idxprom = sext i32 %9 to i64
  %call6 = call i16** @__ctype_b_loc() #12
  %10 = load i16*, i16** %call6, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv7 = zext i16 %11 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5
  %12 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %c, align 4, !tbaa !7
  %call10 = call i32 @tolower(i32 %13) #1
  store i32 %call10, i32* %__res, align 4, !tbaa !7
  %14 = load i32, i32* %__res, align 4, !tbaa !7
  store i32 %14, i32* %tmp, !tbaa !7
  %15 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %tmp, !tbaa !7
  store i32 %16, i32* %c, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.5, %land.lhs.true, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %lb, align 4, !tbaa !7
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %lb, align 4, !tbaa !7
  %18 = load i32, i32* %la, align 4, !tbaa !7
  %cmp11 = icmp sge i32 %17, %18
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %icase.addr, align 4, !tbaa !7
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  %20 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !11
  %conv15 = sext i8 %21 to i32
  %22 = load i32, i32* %c, align 4, !tbaa !7
  %cmp16 = icmp ne i32 %conv15, %22
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.42

land.lhs.true.18:                                 ; preds = %if.then.14
  %23 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !11
  %conv19 = sext i8 %24 to i32
  %and20 = and i32 %conv19, -128
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.42

land.lhs.true.23:                                 ; preds = %land.lhs.true.18
  %25 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !11
  %conv24 = sext i8 %26 to i32
  %idxprom25 = sext i32 %conv24 to i64
  %call26 = call i16** @__ctype_b_loc() #12
  %27 = load i16*, i16** %call26, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i16, i16* %27, i64 %idxprom25
  %28 = load i16, i16* %arrayidx27, align 2, !tbaa !12
  %conv28 = zext i16 %28 to i32
  %and29 = and i32 %conv28, 256
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.42

land.lhs.true.31:                                 ; preds = %land.lhs.true.23
  %29 = bitcast i32* %__res33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !11
  %conv34 = sext i8 %31 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %call36 = call i32** @__ctype_tolower_loc() #12
  %32 = load i32*, i32** %call36, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i32, i32* %32, i64 %idxprom35
  %33 = load i32, i32* %arrayidx37, align 4, !tbaa !7
  store i32 %33, i32* %__res33, align 4, !tbaa !7
  %34 = load i32, i32* %__res33, align 4, !tbaa !7
  store i32 %34, i32* %tmp38, !tbaa !7
  %35 = bitcast i32* %__res33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %tmp38, !tbaa !7
  %37 = load i32, i32* %c, align 4, !tbaa !7
  %cmp39 = icmp ne i32 %36, %37
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.31
  br label %for.inc

if.end.42:                                        ; preds = %land.lhs.true.31, %land.lhs.true.23, %land.lhs.true.18, %if.then.14
  %38 = load i8*, i8** %a.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %40 = load i32, i32* %la, align 4, !tbaa !7
  %conv43 = sext i32 %40 to i64
  %call44 = call i32 @sm_strncasecmp(i8* %38, i8* %39, i64 %conv43)
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.42
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end.42
  br label %if.end.60

if.else:                                          ; preds = %for.body
  %41 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !11
  %conv49 = sext i8 %42 to i32
  %43 = load i32, i32* %c, align 4, !tbaa !7
  %cmp50 = icmp ne i32 %conv49, %43
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else
  br label %for.inc

if.end.53:                                        ; preds = %if.else
  %44 = load i8*, i8** %a.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %46 = load i32, i32* %la, align 4, !tbaa !7
  %conv54 = sext i32 %46 to i64
  %call55 = call i32 @strncmp(i8* %44, i8* %45, i64 %conv54) #10
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.53
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.60, %if.then.52, %if.then.41
  %47 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %b.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.58, %if.then.47
  %48 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %lb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %la to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @tolower(i32 %__c) #7 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !7
  %0 = load i32, i32* %__c.addr, align 4, !tbaa !7
  %cmp = icmp sge i32 %0, -128
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %__c.addr, align 4, !tbaa !7
  %cmp1 = icmp slt i32 %1, 256
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %__c.addr, align 4, !tbaa !7
  %idxprom = sext i32 %2 to i64
  %call = call i32** @__ctype_tolower_loc() #12
  %3 = load i32*, i32** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %__c.addr, align 4, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  ret i32 %cond
}

declare i32 @sm_strncasecmp(i8*, i8*, i64) #4

declare void @fill_fd(i32, i8*) #4

; Function Attrs: nounwind uwtable
define void @checkfdopen(i32 %fd, i8* %where) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %where.addr = alloca i8*, align 8
  %st = alloca %struct.stat, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !7
  store i8* %where, i8** %where.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %1 = load i32, i32* %fd.addr, align 4, !tbaa !7
  %call = call i32 @fstat(i32 %1, %struct.stat* %st) #1
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32* @__errno_location() #12
  %2 = load i32, i32* %call1, align 4, !tbaa !7
  %cmp2 = icmp eq i32 %2, 9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %fd.addr, align 4, !tbaa !7
  %4 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0), i32 %3, i8* %4)
  call void @printopenfds(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.end(i64 144, i8* %5) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat(i32 %__fd, %struct.stat* nonnull %__statbuf) #7 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !7
  store %struct.stat* %__statbuf, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i32, i32* %__fd.addr, align 4, !tbaa !7
  %1 = load %struct.stat*, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* %1) #1
  ret i32 %call
}

declare void @syserr(i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @printopenfds(i32 %logit) #0 {
entry:
  %logit.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  store i32 %logit, i32* %logit.addr, align 4, !tbaa !7
  %0 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %fd, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %fd, align 4, !tbaa !7
  %2 = load i32, i32* @DtableSize, align 4, !tbaa !7
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %fd, align 4, !tbaa !7
  %4 = load i32, i32* %logit.addr, align 4, !tbaa !7
  call void @dumpfd(i32 %3, i32 0, i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %fd, align 4, !tbaa !7
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %fd, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @checkfds(i8* %where) #0 {
entry:
  %where.addr = alloca i8*, align 8
  %maxfd = alloca i32, align 4
  %fd = alloca i32, align 4
  %printhdr = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %stbuf = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %where, i8** %where.addr, align 8, !tbaa !1
  %0 = bitcast i32* %maxfd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %printhdr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %printhdr, align 4, !tbaa !7
  %3 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %call = call i32* @__errno_location() #12
  %4 = load i32, i32* %call, align 4, !tbaa !7
  store i32 %4, i32* %save_errno, align 4, !tbaa !7
  %5 = load i32, i32* @DtableSize, align 4, !tbaa !7
  %cmp = icmp sgt i32 %5, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 256, i32* %maxfd, align 4, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* @DtableSize, align 4, !tbaa !7
  store i32 %6, i32* %maxfd, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %where.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @llvm.memset.p0i8.i64(i8* bitcast ([8 x i32]* @checkfds.baseline to i8*), i8 0, i64 32, i32 1, i1 false)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %fd, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %8 = load i32, i32* %fd, align 4, !tbaa !7
  %9 = load i32, i32* %maxfd, align 4, !tbaa !7
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast %struct.stat* %stbuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %10) #1
  %11 = load i32, i32* %fd, align 4, !tbaa !7
  %call5 = call i32 @fstat(i32 %11, %struct.stat* %stbuf) #1
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else.27

land.lhs.true:                                    ; preds = %for.body
  %call7 = call i32* @__errno_location() #12
  %12 = load i32, i32* %call7, align 4, !tbaa !7
  %cmp8 = icmp ne i32 %12, 95
  br i1 %cmp8, label %if.then.9, label %if.else.27

if.then.9:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %fd, align 4, !tbaa !7
  %conv = trunc i32 %13 to i8
  %conv10 = zext i8 %conv to i64
  %div = udiv i64 %conv10, 32
  %and = and i64 %div, 7
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @checkfds.baseline, i32 0, i64 %and
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %15 = load i32, i32* %fd, align 4, !tbaa !7
  %conv11 = trunc i32 %15 to i8
  %conv12 = zext i8 %conv11 to i64
  %rem = urem i64 %conv12, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and13 = and i32 %14, %shl
  %tobool = icmp ne i32 %and13, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.9
  %16 = load i32, i32* %fd, align 4, !tbaa !7
  %conv16 = trunc i32 %16 to i8
  %conv17 = zext i8 %conv16 to i64
  %rem18 = urem i64 %conv17, 32
  %sh_prom19 = trunc i64 %rem18 to i32
  %shl20 = shl i32 1, %sh_prom19
  %neg = xor i32 %shl20, -1
  %17 = load i32, i32* %fd, align 4, !tbaa !7
  %conv21 = trunc i32 %17 to i8
  %conv22 = zext i8 %conv21 to i64
  %div23 = udiv i64 %conv22, 32
  %and24 = and i64 %div23, 7
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* @checkfds.baseline, i32 0, i64 %and24
  %18 = load i32, i32* %arrayidx25, align 4, !tbaa !7
  %and26 = and i32 %18, %neg
  store i32 %and26, i32* %arrayidx25, align 4, !tbaa !7
  br label %if.end.53

if.else.27:                                       ; preds = %land.lhs.true, %for.body
  %19 = load i32, i32* %fd, align 4, !tbaa !7
  %conv28 = trunc i32 %19 to i8
  %conv29 = zext i8 %conv28 to i64
  %div30 = udiv i64 %conv29, 32
  %and31 = and i64 %div30, 7
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* @checkfds.baseline, i32 0, i64 %and31
  %20 = load i32, i32* %arrayidx32, align 4, !tbaa !7
  %21 = load i32, i32* %fd, align 4, !tbaa !7
  %conv33 = trunc i32 %21 to i8
  %conv34 = zext i8 %conv33 to i64
  %rem35 = urem i64 %conv34, 32
  %sh_prom36 = trunc i64 %rem35 to i32
  %shl37 = shl i32 1, %sh_prom36
  %and38 = and i32 %20, %shl37
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.else.51, label %if.then.40

if.then.40:                                       ; preds = %if.else.27
  %22 = load i32, i32* %fd, align 4, !tbaa !7
  %conv41 = trunc i32 %22 to i8
  %conv42 = zext i8 %conv41 to i64
  %rem43 = urem i64 %conv42, 32
  %sh_prom44 = trunc i64 %rem43 to i32
  %shl45 = shl i32 1, %sh_prom44
  %23 = load i32, i32* %fd, align 4, !tbaa !7
  %conv46 = trunc i32 %23 to i8
  %conv47 = zext i8 %conv46 to i64
  %div48 = udiv i64 %conv47, 32
  %and49 = and i64 %div48, 7
  %arrayidx50 = getelementptr inbounds [8 x i32], [8 x i32]* @checkfds.baseline, i32 0, i64 %and49
  %24 = load i32, i32* %arrayidx50, align 4, !tbaa !7
  %or = or i32 %24, %shl45
  store i32 %or, i32* %arrayidx50, align 4, !tbaa !7
  br label %if.end.52

if.else.51:                                       ; preds = %if.else.27
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.then.40
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.15
  %25 = load i8*, i8** %where.addr, align 8, !tbaa !1
  %cmp54 = icmp eq i8* %25, null
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.53
  %26 = load i32, i32* %printhdr, align 4, !tbaa !7
  %tobool58 = icmp ne i32 %26, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  %27 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %27, i32 0, i32 25
  %28 = load i8*, i8** %e_id, align 8, !tbaa !36
  %29 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 7, i8* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* %29)
  store i32 0, i32* %printhdr, align 4, !tbaa !7
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.57
  %30 = load i32, i32* %fd, align 4, !tbaa !7
  call void @dumpfd(i32 %30, i32 1, i32 1)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.56, %if.else.51, %if.then.14
  %31 = bitcast %struct.stat* %stbuf to i8*
  call void @llvm.lifetime.end(i64 144, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %32 = load i32, i32* %fd, align 4, !tbaa !7
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %fd, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %save_errno, align 4, !tbaa !7
  %call61 = call i32* @__errno_location() #12
  store i32 %33, i32* %call61, align 4, !tbaa !7
  %34 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %printhdr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %maxfd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @dumpfd(i32 %fd, i32 %printclosed, i32 %logit) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %printclosed.addr = alloca i32, align 4
  %logit.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %hp = alloca i8*, align 8
  %sa = alloca %union.bigsockaddr, align 4
  %slen = alloca i32, align 4
  %i = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %buf = alloca [200 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  %__v132 = alloca i16, align 2
  %__x134 = alloca i16, align 2
  %tmp137 = alloca i16, align 2
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !7
  store i32 %printclosed, i32* %printclosed.addr, align 4, !tbaa !7
  store i32 %logit, i32* %logit.addr, align 4, !tbaa !7
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %union.bigsockaddr* %sa to i8*
  call void @llvm.lifetime.start(i64 112, i8* %2) #1
  %3 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start(i64 144, i8* %5) #1
  %6 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %6) #1
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 200, %sub.ptr.sub
  %9 = load i32, i32* %fd.addr, align 4, !tbaa !7
  %call = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %7, i64 %sub, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %9)
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %10) #10
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %call2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %12 = load i32, i32* %fd.addr, align 4, !tbaa !7
  %call3 = call i32 @fstat(i32 %12, %struct.stat* %st) #1
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %call4 = call i32* @__errno_location() #12
  %13 = load i32, i32* %call4, align 4, !tbaa !7
  %cmp5 = icmp ne i32 %13, 9
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay7 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast8 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast9 = ptrtoint i8* %arraydecay7 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  %sub11 = sub i64 200, %sub.ptr.sub10
  %call12 = call i32* @__errno_location() #12
  %16 = load i32, i32* %call12, align 4, !tbaa !7
  %call13 = call i8* @sm_errstring(i32 %16)
  %call14 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %14, i64 %sub11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i8* %call13)
  br label %printit

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* %printclosed.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay16 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast17 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %arraydecay16 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %sub20 = sub i64 200, %sub.ptr.sub19
  %call21 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %18, i64 %sub20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0))
  br label %printit

if.end:                                           ; preds = %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %entry
  %20 = load i32, i32* %fd.addr, align 4, !tbaa !7
  %call24 = call i32 (i32, i32, ...) @fcntl(i32 %20, i32 3, i32 0)
  store i32 %call24, i32* %i, align 4, !tbaa !7
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %cmp25 = icmp ne i32 %21, -1
  br i1 %cmp25, label %if.then.26, label %if.end.35

if.then.26:                                       ; preds = %if.end.23
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay27 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast28 = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast29 = ptrtoint i8* %arraydecay27 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %sub31 = sub i64 200, %sub.ptr.sub30
  %24 = load i32, i32* %i, align 4, !tbaa !7
  %call32 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %22, i64 %sub31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 %24)
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %call33 = call i64 @strlen(i8* %25) #10
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %26, i64 %call33
  store i8* %add.ptr34, i8** %p, align 8, !tbaa !1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.26, %if.end.23
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay36 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast37 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i8* %arraydecay36 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %sub40 = sub i64 200, %sub.ptr.sub39
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %29 = load i32, i32* %st_mode, align 4, !tbaa !40
  %call41 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %27, i64 %sub40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 %29)
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %call42 = call i64 @strlen(i8* %30) #10
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds i8, i8* %31, i64 %call42
  store i8* %add.ptr43, i8** %p, align 8, !tbaa !1
  %st_mode44 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %32 = load i32, i32* %st_mode44, align 4, !tbaa !40
  %and = and i32 %32, 61440
  switch i32 %and, label %sw.default [
    i32 49152, label %sw.bb
    i32 8192, label %sw.bb.150
    i32 24576, label %sw.bb.159
    i32 4096, label %sw.bb.168
    i32 16384, label %sw.bb.177
    i32 40960, label %sw.bb.186
  ]

sw.bb:                                            ; preds = %if.end.35
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay45 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast46 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8* %arraydecay45 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub49 = sub i64 200, %sub.ptr.sub48
  %call50 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %33, i64 %sub49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0))
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %call51 = call i64 @strlen(i8* %35) #10
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr52 = getelementptr inbounds i8, i8* %36, i64 %call51
  store i8* %add.ptr52, i8** %p, align 8, !tbaa !1
  %37 = bitcast %union.bigsockaddr* %sa to i8*
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 112, i32 4, i1 false)
  store i32 112, i32* %slen, align 4, !tbaa !7
  %38 = load i32, i32* %fd.addr, align 4, !tbaa !7
  %sa53 = bitcast %union.bigsockaddr* %sa to %struct.sockaddr*
  %call54 = call i32 @getsockname(i32 %38, %struct.sockaddr* %sa53, i32* %slen) #1
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.65

if.then.56:                                       ; preds = %sw.bb
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay57 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast58 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast59 = ptrtoint i8* %arraydecay57 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %sub61 = sub i64 200, %sub.ptr.sub60
  %call62 = call i32* @__errno_location() #12
  %41 = load i32, i32* %call62, align 4, !tbaa !7
  %call63 = call i8* @sm_errstring(i32 %41)
  %call64 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %39, i64 %sub61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* %call63)
  br label %if.end.90

if.else.65:                                       ; preds = %sw.bb
  %call66 = call i8* @hostnamebyanyaddr(%union.bigsockaddr* %sa)
  store i8* %call66, i8** %hp, align 8, !tbaa !1
  %42 = load i8*, i8** %hp, align 8, !tbaa !1
  %cmp67 = icmp eq i8* %42, null
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %if.else.65
  br label %if.end.89

if.else.69:                                       ; preds = %if.else.65
  %sa70 = bitcast %union.bigsockaddr* %sa to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa70, i32 0, i32 0
  %43 = load i16, i16* %sa_family, align 2, !tbaa !43
  %conv = zext i16 %43 to i32
  %cmp71 = icmp eq i32 %conv, 2
  br i1 %cmp71, label %if.then.73, label %if.else.81

if.then.73:                                       ; preds = %if.else.69
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay74 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast75 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast76 = ptrtoint i8* %arraydecay74 to i64
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76
  %sub78 = sub i64 200, %sub.ptr.sub77
  %46 = load i8*, i8** %hp, align 8, !tbaa !1
  %47 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %47) #1
  %48 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %48) #1
  %sin = bitcast %union.bigsockaddr* %sa to %struct.sockaddr_in*
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 1
  %49 = load i16, i16* %sin_port, align 2, !tbaa !45
  store i16 %49, i16* %__x, align 2, !tbaa !12
  %50 = load i16, i16* %__x, align 2, !tbaa !12
  %51 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %50) #12, !srcloc !48
  store i16 %51, i16* %__v, align 2, !tbaa !12
  %52 = load i16, i16* %__v, align 2, !tbaa !12
  store i16 %52, i16* %tmp, !tbaa !12
  %53 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %53) #1
  %54 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %54) #1
  %55 = load i16, i16* %tmp, !tbaa !12
  %conv79 = zext i16 %55 to i32
  %call80 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %44, i64 %sub78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* %46, i32 %conv79)
  br label %if.end.88

if.else.81:                                       ; preds = %if.else.69
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay82 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast83 = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast84 = ptrtoint i8* %arraydecay82 to i64
  %sub.ptr.sub85 = sub i64 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast84
  %sub86 = sub i64 200, %sub.ptr.sub85
  %58 = load i8*, i8** %hp, align 8, !tbaa !1
  %call87 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %56, i64 %sub86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %58)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.81, %if.then.73
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.68
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.56
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %call91 = call i64 @strlen(i8* %59) #10
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds i8, i8* %60, i64 %call91
  store i8* %add.ptr92, i8** %p, align 8, !tbaa !1
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay93 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast94 = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast95 = ptrtoint i8* %arraydecay93 to i64
  %sub.ptr.sub96 = sub i64 %sub.ptr.lhs.cast94, %sub.ptr.rhs.cast95
  %sub97 = sub i64 200, %sub.ptr.sub96
  %call98 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %61, i64 %sub97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0))
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %call99 = call i64 @strlen(i8* %63) #10
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr100 = getelementptr inbounds i8, i8* %64, i64 %call99
  store i8* %add.ptr100, i8** %p, align 8, !tbaa !1
  store i32 112, i32* %slen, align 4, !tbaa !7
  %65 = load i32, i32* %fd.addr, align 4, !tbaa !7
  %sa101 = bitcast %union.bigsockaddr* %sa to %struct.sockaddr*
  %call102 = call i32 @getpeername(i32 %65, %struct.sockaddr* %sa101, i32* %slen) #1
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then.105, label %if.else.114

if.then.105:                                      ; preds = %if.end.90
  %66 = load i8*, i8** %p, align 8, !tbaa !1
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay106 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast107 = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast108 = ptrtoint i8* %arraydecay106 to i64
  %sub.ptr.sub109 = sub i64 %sub.ptr.lhs.cast107, %sub.ptr.rhs.cast108
  %sub110 = sub i64 200, %sub.ptr.sub109
  %call111 = call i32* @__errno_location() #12
  %68 = load i32, i32* %call111, align 4, !tbaa !7
  %call112 = call i8* @sm_errstring(i32 %68)
  %call113 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %66, i64 %sub110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* %call112)
  br label %if.end.149

if.else.114:                                      ; preds = %if.end.90
  %call115 = call i8* @hostnamebyanyaddr(%union.bigsockaddr* %sa)
  store i8* %call115, i8** %hp, align 8, !tbaa !1
  %69 = load i8*, i8** %hp, align 8, !tbaa !1
  %cmp116 = icmp eq i8* %69, null
  br i1 %cmp116, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %if.else.114
  br label %if.end.148

if.else.119:                                      ; preds = %if.else.114
  %sa120 = bitcast %union.bigsockaddr* %sa to %struct.sockaddr*
  %sa_family121 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa120, i32 0, i32 0
  %70 = load i16, i16* %sa_family121, align 2, !tbaa !43
  %conv122 = zext i16 %70 to i32
  %cmp123 = icmp eq i32 %conv122, 2
  br i1 %cmp123, label %if.then.125, label %if.else.140

if.then.125:                                      ; preds = %if.else.119
  %71 = load i8*, i8** %p, align 8, !tbaa !1
  %72 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay126 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast127 = ptrtoint i8* %72 to i64
  %sub.ptr.rhs.cast128 = ptrtoint i8* %arraydecay126 to i64
  %sub.ptr.sub129 = sub i64 %sub.ptr.lhs.cast127, %sub.ptr.rhs.cast128
  %sub130 = sub i64 200, %sub.ptr.sub129
  %73 = load i8*, i8** %hp, align 8, !tbaa !1
  %74 = bitcast i16* %__v132 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %74) #1
  %75 = bitcast i16* %__x134 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %75) #1
  %sin135 = bitcast %union.bigsockaddr* %sa to %struct.sockaddr_in*
  %sin_port136 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin135, i32 0, i32 1
  %76 = load i16, i16* %sin_port136, align 2, !tbaa !45
  store i16 %76, i16* %__x134, align 2, !tbaa !12
  %77 = load i16, i16* %__x134, align 2, !tbaa !12
  %78 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %77) #12, !srcloc !49
  store i16 %78, i16* %__v132, align 2, !tbaa !12
  %79 = load i16, i16* %__v132, align 2, !tbaa !12
  store i16 %79, i16* %tmp137, !tbaa !12
  %80 = bitcast i16* %__x134 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %80) #1
  %81 = bitcast i16* %__v132 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %81) #1
  %82 = load i16, i16* %tmp137, !tbaa !12
  %conv138 = zext i16 %82 to i32
  %call139 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %71, i64 %sub130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* %73, i32 %conv138)
  br label %if.end.147

if.else.140:                                      ; preds = %if.else.119
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay141 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast142 = ptrtoint i8* %84 to i64
  %sub.ptr.rhs.cast143 = ptrtoint i8* %arraydecay141 to i64
  %sub.ptr.sub144 = sub i64 %sub.ptr.lhs.cast142, %sub.ptr.rhs.cast143
  %sub145 = sub i64 200, %sub.ptr.sub144
  %85 = load i8*, i8** %hp, align 8, !tbaa !1
  %call146 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %83, i64 %sub145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %85)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.140, %if.then.125
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.118
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.105
  br label %sw.epilog

sw.bb.150:                                        ; preds = %if.end.35
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay151 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast152 = ptrtoint i8* %87 to i64
  %sub.ptr.rhs.cast153 = ptrtoint i8* %arraydecay151 to i64
  %sub.ptr.sub154 = sub i64 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153
  %sub155 = sub i64 200, %sub.ptr.sub154
  %call156 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %86, i64 %sub155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0))
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %call157 = call i64 @strlen(i8* %88) #10
  %89 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr158 = getelementptr inbounds i8, i8* %89, i64 %call157
  store i8* %add.ptr158, i8** %p, align 8, !tbaa !1
  br label %defprint

sw.bb.159:                                        ; preds = %if.end.35
  %90 = load i8*, i8** %p, align 8, !tbaa !1
  %91 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay160 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast161 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast162 = ptrtoint i8* %arraydecay160 to i64
  %sub.ptr.sub163 = sub i64 %sub.ptr.lhs.cast161, %sub.ptr.rhs.cast162
  %sub164 = sub i64 200, %sub.ptr.sub163
  %call165 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %90, i64 %sub164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0))
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %call166 = call i64 @strlen(i8* %92) #10
  %93 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr167 = getelementptr inbounds i8, i8* %93, i64 %call166
  store i8* %add.ptr167, i8** %p, align 8, !tbaa !1
  br label %defprint

sw.bb.168:                                        ; preds = %if.end.35
  %94 = load i8*, i8** %p, align 8, !tbaa !1
  %95 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay169 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast170 = ptrtoint i8* %95 to i64
  %sub.ptr.rhs.cast171 = ptrtoint i8* %arraydecay169 to i64
  %sub.ptr.sub172 = sub i64 %sub.ptr.lhs.cast170, %sub.ptr.rhs.cast171
  %sub173 = sub i64 200, %sub.ptr.sub172
  %call174 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %94, i64 %sub173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0))
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  %call175 = call i64 @strlen(i8* %96) #10
  %97 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr176 = getelementptr inbounds i8, i8* %97, i64 %call175
  store i8* %add.ptr176, i8** %p, align 8, !tbaa !1
  br label %defprint

sw.bb.177:                                        ; preds = %if.end.35
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  %99 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay178 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast179 = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast180 = ptrtoint i8* %arraydecay178 to i64
  %sub.ptr.sub181 = sub i64 %sub.ptr.lhs.cast179, %sub.ptr.rhs.cast180
  %sub182 = sub i64 200, %sub.ptr.sub181
  %call183 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %98, i64 %sub182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0))
  %100 = load i8*, i8** %p, align 8, !tbaa !1
  %call184 = call i64 @strlen(i8* %100) #10
  %101 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr185 = getelementptr inbounds i8, i8* %101, i64 %call184
  store i8* %add.ptr185, i8** %p, align 8, !tbaa !1
  br label %defprint

sw.bb.186:                                        ; preds = %if.end.35
  %102 = load i8*, i8** %p, align 8, !tbaa !1
  %103 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay187 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast188 = ptrtoint i8* %103 to i64
  %sub.ptr.rhs.cast189 = ptrtoint i8* %arraydecay187 to i64
  %sub.ptr.sub190 = sub i64 %sub.ptr.lhs.cast188, %sub.ptr.rhs.cast189
  %sub191 = sub i64 200, %sub.ptr.sub190
  %call192 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %102, i64 %sub191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0))
  %104 = load i8*, i8** %p, align 8, !tbaa !1
  %call193 = call i64 @strlen(i8* %104) #10
  %105 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr194 = getelementptr inbounds i8, i8* %105, i64 %call193
  store i8* %add.ptr194, i8** %p, align 8, !tbaa !1
  br label %defprint

sw.default:                                       ; preds = %if.end.35
  br label %defprint

defprint:                                         ; preds = %sw.default, %sw.bb.186, %sw.bb.177, %sw.bb.168, %sw.bb.159, %sw.bb.150
  %106 = load i8*, i8** %p, align 8, !tbaa !1
  %107 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay195 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast196 = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast197 = ptrtoint i8* %arraydecay195 to i64
  %sub.ptr.sub198 = sub i64 %sub.ptr.lhs.cast196, %sub.ptr.rhs.cast197
  %sub199 = sub i64 200, %sub.ptr.sub198
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0
  %108 = load i64, i64* %st_dev, align 8, !tbaa !50
  %call200 = call i32 @gnu_dev_major(i64 %108) #12
  %conv201 = zext i32 %call200 to i64
  %st_dev202 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0
  %109 = load i64, i64* %st_dev202, align 8, !tbaa !50
  %call203 = call i32 @gnu_dev_minor(i64 %109) #12
  %conv204 = zext i32 %call203 to i64
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1
  %110 = load i64, i64* %st_ino, align 8, !tbaa !51
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 2
  %111 = load i64, i64* %st_nlink, align 8, !tbaa !52
  %conv205 = trunc i64 %111 to i32
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %112 = load i32, i32* %st_uid, align 4, !tbaa !53
  %conv206 = zext i32 %112 to i64
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 5
  %113 = load i32, i32* %st_gid, align 4, !tbaa !54
  %conv207 = zext i32 %113 to i64
  %call208 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %106, i64 %sub199, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.59, i32 0, i32 0), i64 %conv201, i64 %conv204, i64 %110, i32 %conv205, i64 %conv206, i64 %conv207)
  %114 = load i8*, i8** %p, align 8, !tbaa !1
  %call209 = call i64 @strlen(i8* %114) #10
  %115 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr210 = getelementptr inbounds i8, i8* %115, i64 %call209
  store i8* %add.ptr210, i8** %p, align 8, !tbaa !1
  %116 = load i8*, i8** %p, align 8, !tbaa !1
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay211 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast212 = ptrtoint i8* %117 to i64
  %sub.ptr.rhs.cast213 = ptrtoint i8* %arraydecay211 to i64
  %sub.ptr.sub214 = sub i64 %sub.ptr.lhs.cast212, %sub.ptr.rhs.cast213
  %sub215 = sub i64 200, %sub.ptr.sub214
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %118 = load i64, i64* %st_size, align 8, !tbaa !55
  %call216 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %116, i64 %sub215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i64 %118)
  br label %sw.epilog

sw.epilog:                                        ; preds = %defprint, %if.end.149
  br label %printit

printit:                                          ; preds = %sw.epilog, %if.then.15, %if.then.6
  %119 = load i32, i32* %logit.addr, align 4, !tbaa !7
  %tobool217 = icmp ne i32 %119, 0
  br i1 %tobool217, label %if.then.218, label %if.else.221

if.then.218:                                      ; preds = %printit
  %120 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %tobool219 = icmp ne %struct.envelope* %120, null
  br i1 %tobool219, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.218
  %121 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %121, i32 0, i32 25
  %122 = load i8*, i8** %e_id, align 8, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %if.then.218
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %122, %cond.true ], [ null, %cond.false ]
  %arraydecay220 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 7, i8* %cond, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i8* %arraydecay220)
  br label %if.end.223

if.else.221:                                      ; preds = %printit
  %arraydecay222 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay222)
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.221, %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.223, %if.end.22
  %123 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %123) #1
  %124 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.end(i64 144, i8* %124) #1
  %125 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast %union.bigsockaddr* %sa to i8*
  call void @llvm.lifetime.end(i64 112, i8* %127) #1
  %128 = bitcast i8** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
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

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #4

declare i32 @fcntl(i32, i32, ...) #4

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #6

declare i8* @hostnamebyanyaddr(%union.bigsockaddr*) #4

; Function Attrs: nounwind
declare i32 @getpeername(i32, %struct.sockaddr*, i32*) #6

; Function Attrs: inlinehint nounwind readnone uwtable
define available_externally i32 @gnu_dev_major(i64 %__dev) #8 {
entry:
  %__dev.addr = alloca i64, align 8
  store i64 %__dev, i64* %__dev.addr, align 8, !tbaa !56
  %0 = load i64, i64* %__dev.addr, align 8, !tbaa !56
  %shr = lshr i64 %0, 8
  %and = and i64 %shr, 4095
  %1 = load i64, i64* %__dev.addr, align 8, !tbaa !56
  %shr1 = lshr i64 %1, 32
  %conv = trunc i64 %shr1 to i32
  %and2 = and i32 %conv, -4096
  %conv3 = zext i32 %and2 to i64
  %or = or i64 %and, %conv3
  %conv4 = trunc i64 %or to i32
  ret i32 %conv4
}

; Function Attrs: inlinehint nounwind readnone uwtable
define available_externally i32 @gnu_dev_minor(i64 %__dev) #8 {
entry:
  %__dev.addr = alloca i64, align 8
  store i64 %__dev, i64* %__dev.addr, align 8, !tbaa !56
  %0 = load i64, i64* %__dev.addr, align 8, !tbaa !56
  %and = and i64 %0, 255
  %1 = load i64, i64* %__dev.addr, align 8, !tbaa !56
  %shr = lshr i64 %1, 12
  %conv = trunc i64 %shr to i32
  %and1 = and i32 %conv, -256
  %conv2 = zext i32 %and1 to i64
  %or = or i64 %and, %conv2
  %conv3 = trunc i64 %or to i32
  ret i32 %conv3
}

; Function Attrs: nounwind uwtable
define i8* @shorten_hostname(i8* %host) #0 {
entry:
  %retval = alloca i8*, align 8
  %host.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %mydom = alloca i8*, align 8
  %i = alloca i32, align 4
  %canon = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %mydom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %canon to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %canon, align 4, !tbaa !7
  %4 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #10
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %i, align 4, !tbaa !7
  %5 = load i32, i32* %i, align 4, !tbaa !7
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %i, align 4, !tbaa !7
  %sub = sub nsw i32 %6, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ]
  %idxprom = sext i32 %cond to i64
  %7 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8* %arrayidx, i8** %p, align 8, !tbaa !1
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !11
  %conv2 = sext i8 %9 to i32
  %cmp3 = icmp eq i32 %conv2, 46
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %10, align 1, !tbaa !11
  store i32 1, i32* %canon, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %11 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call5 = call i8* @strchr(i8* %11, i32 46) #1
  store i8* %call5, i8** %p, align 8, !tbaa !1
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %12, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %13 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %call10 = call i8* @macvalue(i32 109, %struct.envelope* %13)
  store i8* %call10, i8** %mydom, align 8, !tbaa !1
  %14 = load i8*, i8** %mydom, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %14, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8** %mydom, align 8, !tbaa !1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.9
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %call15 = call i64 @strlen(i8* %incdec.ptr) #10
  %conv16 = trunc i64 %call15 to i32
  store i32 %conv16, i32* %i, align 4, !tbaa !7
  %16 = load i32, i32* %canon, align 4, !tbaa !7
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %if.end.14
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i8*, i8** %mydom, align 8, !tbaa !1
  %call18 = call i32 @sm_strcasecmp(i8* %17, i8* %18)
  br label %cond.end.22

cond.false.19:                                    ; preds = %if.end.14
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %20 = load i8*, i8** %mydom, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %conv20 = sext i32 %21 to i64
  %call21 = call i32 @sm_strncasecmp(i8* %19, i8* %20, i64 %conv20)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.17
  %cond23 = phi i32 [ %call18, %cond.true.17 ], [ %call21, %cond.false.19 ]
  %cmp24 = icmp eq i32 %cond23, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %cond.end.22
  %22 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom26 = sext i32 %22 to i64
  %23 = load i8*, i8** %mydom, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %23, i64 %idxprom26
  %24 = load i8, i8* %arrayidx27, align 1, !tbaa !11
  %conv28 = sext i8 %24 to i32
  %cmp29 = icmp eq i32 %conv28, 46
  br i1 %cmp29, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %25 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom31 = sext i32 %25 to i64
  %26 = load i8*, i8** %mydom, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %26, i64 %idxprom31
  %27 = load i8, i8* %arrayidx32, align 1, !tbaa !11
  %conv33 = sext i8 %27 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %incdec.ptr37, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %incdec.ptr37, align 1, !tbaa !11
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %29, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %lor.lhs.false, %cond.end.22
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.36, %if.then.8
  %30 = bitcast i32* %canon to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %mydom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i8*, i8** %retval
  ret i8* %34
}

declare i8* @macvalue(i32, %struct.envelope*) #4

; Function Attrs: nounwind uwtable
define i32 @prog_open(i8** %argv, i32* %pfd, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %pfd.addr = alloca i32*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %pid = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %sff = alloca i32, align 4
  %ret = alloca i32, align 4
  %fdv = alloca [2 x i32], align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %buf = alloca [4096 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %xfd = alloca i32, align 4
  %fd = alloca i32, align 4
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !1
  store i32* %pfd, i32** %pfd.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %sff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [2 x i32]* %fdv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %7) #1
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %fdv, i32 0, i32 0
  %call = call i32 @pipe(i32* %arraydecay) #1
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.62, i32 0, i32 0), i8* %9)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @fork() #1
  store i32 %call1, i32* %pid, align 4, !tbaa !7
  %10 = load i32, i32* %pid, align 4, !tbaa !7
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.end
  %11 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i8* %12)
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %fdv, i32 0, i64 0
  %13 = load i32, i32* %arrayidx5, align 4, !tbaa !7
  %call6 = call i32 @close(i32 %13)
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %fdv, i32 0, i64 1
  %14 = load i32, i32* %arrayidx7, align 4, !tbaa !7
  %call8 = call i32 @close(i32 %14)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %15 = load i32, i32* %pid, align 4, !tbaa !7
  %cmp10 = icmp sgt i32 %15, 0
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.9
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %fdv, i32 0, i64 1
  %16 = load i32, i32* %arrayidx12, align 4, !tbaa !7
  %call13 = call i32 @close(i32 %16)
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %fdv, i32 0, i64 0
  %17 = load i32, i32* %arrayidx14, align 4, !tbaa !7
  %18 = load i32*, i32** %pfd.addr, align 8, !tbaa !1
  store i32 %17, i32* %18, align 4, !tbaa !7
  %19 = load i32, i32* %pid, align 4, !tbaa !7
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.9
  store volatile i8* null, i8** @RestartRequest, align 8, !tbaa !1
  store volatile i32 0, i32* @RestartWorkGroup, align 4, !tbaa !7
  store volatile i8* null, i8** @ShutdownRequest, align 8, !tbaa !1
  store volatile i32 0, i32* @PendingSignal, align 4, !tbaa !7
  %call16 = call i32 @getpid() #1
  store i32 %call16, i32* @CurrentPid, align 4, !tbaa !7
  call void @sm_exc_newthread(void (%struct.sm_exc*)* @fatal_error)
  %call17 = call i32 @close(i32 0)
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %fdv, i32 0, i64 0
  %20 = load i32, i32* %arrayidx18, align 4, !tbaa !7
  %call19 = call i32 @close(i32 %20)
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %fdv, i32 0, i64 1
  %21 = load i32, i32* %arrayidx20, align 4, !tbaa !7
  %call21 = call i32 @dup2(i32 %21, i32 1) #1
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.15
  %22 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8*, i8** %22, i64 0
  %23 = load i8*, i8** %arrayidx24, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i8* %23)
  call void @_exit(i32 71) #11
  unreachable

if.end.25:                                        ; preds = %if.end.15
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %fdv, i32 0, i64 1
  %24 = load i32, i32* %arrayidx26, align 4, !tbaa !7
  %call27 = call i32 @close(i32 %24)
  %25 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %25, i32 0, i32 32
  %26 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !58
  %cmp28 = icmp ne %struct.sm_file* %26, null
  br i1 %cmp28, label %if.then.29, label %if.end.38

if.then.29:                                       ; preds = %if.end.25
  %27 = bitcast i32* %xfd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp30 = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 32
  %29 = load %struct.sm_file*, %struct.sm_file** %e_xfp30, align 8, !tbaa !58
  %call31 = call i32 @sm_io_getinfo(%struct.sm_file* %29, i32 3, i8* null)
  store i32 %call31, i32* %xfd, align 4, !tbaa !7
  %30 = load i32, i32* %xfd, align 4, !tbaa !7
  %cmp32 = icmp sge i32 %30, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.then.29
  %31 = load i32, i32* %xfd, align 4, !tbaa !7
  %call33 = call i32 @dup2(i32 %31, i32 2) #1
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true
  %32 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8*, i8** %32, i64 0
  %33 = load i8*, i8** %arrayidx36, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), i8* %33)
  call void @_exit(i32 71) #11
  unreachable

if.end.37:                                        ; preds = %land.lhs.true, %if.then.29
  %34 = bitcast i32* %xfd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.25
  %35 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_lockfp = getelementptr inbounds %struct.envelope, %struct.envelope* %35, i32 0, i32 33
  %36 = load %struct.sm_file*, %struct.sm_file** %e_lockfp, align 8, !tbaa !59
  %cmp39 = icmp ne %struct.sm_file* %36, null
  br i1 %cmp39, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %if.end.38
  %37 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_lockfp41 = getelementptr inbounds %struct.envelope, %struct.envelope* %38, i32 0, i32 33
  %39 = load %struct.sm_file*, %struct.sm_file** %e_lockfp41, align 8, !tbaa !59
  %call42 = call i32 @sm_io_getinfo(%struct.sm_file* %39, i32 3, i8* null)
  store i32 %call42, i32* %fd, align 4, !tbaa !7
  %40 = load i32, i32* %fd, align 4, !tbaa !7
  %cmp43 = icmp sge i32 %40, 0
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.then.40
  %41 = load i32, i32* %fd, align 4, !tbaa !7
  %call45 = call i32 @close(i32 %41)
  br label %if.end.47

if.else:                                          ; preds = %if.then.40
  %42 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8*, i8** %42, i64 0
  %43 = load i8*, i8** %arrayidx46, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i32 0, i32 0), i8* %43)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.44
  %44 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.38
  %45 = load %struct.mailer*, %struct.mailer** @ProgMailer, align 8, !tbaa !1
  %cmp49 = icmp ne %struct.mailer* %45, null
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.65

land.lhs.true.50:                                 ; preds = %if.end.48
  %46 = load %struct.mailer*, %struct.mailer** @ProgMailer, align 8, !tbaa !1
  %m_rootdir = getelementptr inbounds %struct.mailer, %struct.mailer* %46, i32 0, i32 18
  %47 = load i8*, i8** %m_rootdir, align 8, !tbaa !60
  %cmp51 = icmp ne i8* %47, null
  br i1 %cmp51, label %if.then.52, label %if.end.65

if.then.52:                                       ; preds = %land.lhs.true.50
  %48 = load %struct.mailer*, %struct.mailer** @ProgMailer, align 8, !tbaa !1
  %m_rootdir53 = getelementptr inbounds %struct.mailer, %struct.mailer* %48, i32 0, i32 18
  %49 = load i8*, i8** %m_rootdir53, align 8, !tbaa !60
  %arraydecay54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %50 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %49, i8* %arraydecay54, i64 4096, %struct.envelope* %50)
  %arraydecay55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call56 = call i32 @chroot(i8* %arraydecay55) #1
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.then.52
  %arraydecay59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i32 0, i32 0), i8* %arraydecay59)
  call void @exit(i32 75) #13
  unreachable

if.end.60:                                        ; preds = %if.then.52
  %call61 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #1
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0))
  call void @exit(i32 75) #13
  unreachable

if.end.64:                                        ; preds = %if.end.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true.50, %if.end.48
  call void @endpwent()
  call void @sm_mbdb_terminate()
  %51 = load i32, i32* @DefGid, align 4, !tbaa !7
  %call66 = call i32 @setgid(i32 %51) #1
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %land.lhs.true.68, label %if.end.72

land.lhs.true.68:                                 ; preds = %if.end.65
  %call69 = call i32 @geteuid() #1
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.68
  %52 = load i32, i32* @DefGid, align 4, !tbaa !7
  %conv = zext i32 %52 to i64
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i32 0, i32 0), i64 %conv)
  call void @exit(i32 75) #13
  unreachable

if.end.72:                                        ; preds = %land.lhs.true.68, %if.end.65
  %53 = load i32, i32* @DefUid, align 4, !tbaa !7
  %call73 = call i32 @setuid(i32 %53) #1
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.82

land.lhs.true.76:                                 ; preds = %if.end.72
  %call77 = call i32 @geteuid() #1
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %land.lhs.true.76
  %54 = load i32, i32* @DefUid, align 4, !tbaa !7
  %conv81 = zext i32 %54 to i64
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0), i64 %conv81)
  call void @exit(i32 75) #13
  unreachable

if.end.82:                                        ; preds = %land.lhs.true.76, %if.end.72
  %55 = load %struct.mailer*, %struct.mailer** @ProgMailer, align 8, !tbaa !1
  %cmp83 = icmp ne %struct.mailer* %55, null
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %if.end.82
  %56 = load %struct.mailer*, %struct.mailer** @ProgMailer, align 8, !tbaa !1
  %m_execdir = getelementptr inbounds %struct.mailer, %struct.mailer* %56, i32 0, i32 17
  %57 = load i8*, i8** %m_execdir, align 8, !tbaa !61
  store i8* %57, i8** %p, align 8, !tbaa !1
  br label %if.end.87

if.else.86:                                       ; preds = %if.end.82
  store i8* null, i8** %p, align 8, !tbaa !1
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.86, %if.then.85
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.87
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp88 = icmp ne i8* %58, null
  br i1 %cmp88, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %call90 = call i8* @strchr(i8* %59, i32 58) #1
  store i8* %call90, i8** %q, align 8, !tbaa !1
  %60 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp91 = icmp ne i8* %60, null
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %for.body
  %61 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %61, align 1, !tbaa !11
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %for.body
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay95 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %63 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %62, i8* %arraydecay95, i64 4096, %struct.envelope* %63)
  %64 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp96 = icmp ne i8* %64, null
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.94
  %65 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 58, i8* %65, align 1, !tbaa !11
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.94
  %arrayidx100 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i64 0
  %66 = load i8, i8* %arrayidx100, align 1, !tbaa !11
  %conv101 = sext i8 %66 to i32
  %cmp102 = icmp ne i32 %conv101, 0
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.110

land.lhs.true.104:                                ; preds = %if.end.99
  %arraydecay105 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call106 = call i32 @chdir(i8* %arraydecay105) #1
  %cmp107 = icmp sge i32 %call106, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true.104
  br label %for.end

if.end.110:                                       ; preds = %land.lhs.true.104, %if.end.99
  br label %for.inc

for.inc:                                          ; preds = %if.end.110
  %67 = load i8*, i8** %q, align 8, !tbaa !1
  store i8* %67, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.109, %for.cond
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp111 = icmp eq i8* %68, null
  br i1 %cmp111, label %if.then.113, label %if.end.120

if.then.113:                                      ; preds = %for.end
  %call114 = call i32 @chdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0)) #1
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.then.113
  %call118 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.then.113
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %for.end
  store i32 262148, i32* %sff, align 4, !tbaa !7
  %69 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !7
  %and = and i32 %69, 536870912
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.124, label %if.then.121

if.then.121:                                      ; preds = %if.end.120
  %70 = load i32, i32* %sff, align 4, !tbaa !7
  %conv122 = sext i32 %70 to i64
  %or = or i64 %conv122, 6144
  %conv123 = trunc i64 %or to i32
  store i32 %conv123, i32* %sff, align 4, !tbaa !7
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.end.120
  %71 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !7
  %and125 = and i32 %71, 268435456
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %if.then.127, label %if.else.131

if.then.127:                                      ; preds = %if.end.124
  %72 = load i32, i32* %sff, align 4, !tbaa !7
  %conv128 = sext i32 %72 to i64
  %or129 = or i64 %conv128, 16
  %conv130 = trunc i64 %or129 to i32
  store i32 %conv130, i32* %sff, align 4, !tbaa !7
  br label %if.end.135

if.else.131:                                      ; preds = %if.end.124
  %73 = load i32, i32* %sff, align 4, !tbaa !7
  %conv132 = sext i32 %73 to i64
  %or133 = or i64 %conv132, 256
  %conv134 = trunc i64 %or133 to i32
  store i32 %conv134, i32* %sff, align 4, !tbaa !7
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.131, %if.then.127
  %74 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i8*, i8** %74, i64 0
  %75 = load i8*, i8** %arrayidx136, align 8, !tbaa !1
  %76 = load i32, i32* @DefUid, align 4, !tbaa !7
  %77 = load i32, i32* @DefGid, align 4, !tbaa !7
  %78 = load i8*, i8** @DefUser, align 8, !tbaa !1
  %79 = load i32, i32* %sff, align 4, !tbaa !7
  %conv137 = sext i32 %79 to i64
  %call138 = call i32 @safefile(i8* %75, i32 %76, i32 %77, i8* %78, i64 %conv137, i32 0, %struct.stat* null)
  store i32 %call138, i32* %ret, align 4, !tbaa !7
  %80 = load i32, i32* %ret, align 4, !tbaa !7
  %cmp139 = icmp ne i32 %80, 0
  br i1 %cmp139, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %if.end.135
  %81 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %81, i32 0, i32 25
  %82 = load i8*, i8** %e_id, align 8, !tbaa !36
  %83 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i8*, i8** %83, i64 0
  %84 = load i8*, i8** %arrayidx142, align 8, !tbaa !1
  %85 = load i32, i32* %ret, align 4, !tbaa !7
  %call143 = call i8* @sm_errstring(i32 %85)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.73, i32 0, i32 0), i8* %84, i8* %call143)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.141, %if.end.135
  %86 = load i32, i32* @DtableSize, align 4, !tbaa !7
  call void @sm_close_on_exec(i32 3, i32 %86)
  %87 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i8*, i8** %87, i64 0
  %88 = load i8*, i8** %arrayidx145, align 8, !tbaa !1
  %89 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %call146 = call i32 @execve(i8* %88, i8** %89, i8** getelementptr inbounds ([101 x i8*], [101 x i8*]* @UserEnviron, i32 0, i32 0)) #1
  %call147 = call i32* @__errno_location() #12
  %90 = load i32, i32* %call147, align 4, !tbaa !7
  store i32 %90, i32* %save_errno, align 4, !tbaa !7
  %91 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i8*, i8** %91, i64 0
  %92 = load i8*, i8** %arrayidx148, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i8* %92)
  %93 = load i32, i32* %save_errno, align 4, !tbaa !7
  %call149 = call i32 @transienterror(i32 %93)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.144
  call void @_exit(i32 71) #11
  unreachable

if.end.152:                                       ; preds = %if.end.144
  call void @_exit(i32 78) #11
  unreachable

cleanup:                                          ; preds = %if.then.11, %if.then.3, %if.then
  %94 = bitcast [4096 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %94) #1
  %95 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast [2 x i32]* %fdv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %sff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = load i32, i32* %retval
  ret i32 %102
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #6

; Function Attrs: nounwind
declare i32 @fork() #6

declare i32 @close(i32) #4

declare void @sm_exc_newthread(void (%struct.sm_exc*)*) #4

declare void @fatal_error(%struct.sm_exc*) #4

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #6

; Function Attrs: noreturn
declare void @_exit(i32) #3

declare i32 @sm_io_getinfo(%struct.sm_file*, i32, i8*) #4

; Function Attrs: nounwind
declare i32 @chroot(i8*) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

; Function Attrs: nounwind
declare i32 @chdir(i8*) #6

declare void @endpwent() #4

declare void @sm_mbdb_terminate() #4

; Function Attrs: nounwind
declare i32 @setgid(i32) #6

; Function Attrs: nounwind
declare i32 @geteuid() #6

; Function Attrs: nounwind
declare i32 @setuid(i32) #6

declare i32 @safefile(i8*, i32, i32, i8*, i64, i32, %struct.stat*) #4

declare void @sm_close_on_exec(i32, i32) #4

; Function Attrs: nounwind
declare i32 @execve(i8*, i8**, i8**) #6

declare i32 @transienterror(i32) #4

; Function Attrs: nounwind uwtable
define i8* @get_column(i8* %line, i32 %col, i32 %delim, i8* %buf, i32 %buflen) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  %col.addr = alloca i32, align 4
  %delim.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %begin = alloca i8*, align 8
  %end = alloca i8*, align 8
  %i = alloca i32, align 4
  %delimbuf = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32
  %__a0 = alloca i8, align 1
  %__a1 = alloca i8, align 1
  %__a2 = alloca i8, align 1
  %tmp = alloca i8*, align 8
  %__a077 = alloca i8, align 1
  %__a179 = alloca i8, align 1
  %__a281 = alloca i8, align 1
  %tmp82 = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %col, i32* %col.addr, align 4, !tbaa !7
  store i32 %delim, i32* %delim.addr, align 4, !tbaa !7
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buflen, i32* %buflen.addr, align 4, !tbaa !7
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %begin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [4 x i8]* %delimbuf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %delim.addr, align 4, !tbaa !7
  %conv = trunc i32 %5 to i8
  %conv1 = sext i8 %conv to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %delimbuf, i32 0, i32 0
  %call = call i64 @sm_strlcpy(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i64 4)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %delim.addr, align 4, !tbaa !7
  %conv3 = trunc i32 %6 to i8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %delimbuf, i32 0, i64 0
  store i8 %conv3, i8* %arrayidx, align 1, !tbaa !11
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %delimbuf, i32 0, i64 1
  store i8 0, i8* %arrayidx4, align 1, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %line.addr, align 8, !tbaa !1
  store i8* %7, i8** %p, align 8, !tbaa !1
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !11
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !11
  %conv10 = sext i8 %11 to i32
  %12 = load i32, i32* %delim.addr, align 4, !tbaa !7
  %conv11 = trunc i32 %12 to i8
  %conv12 = sext i8 %conv11 to i32
  %cmp13 = icmp eq i32 %conv10, %conv12
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.9
  %13 = load i32, i32* %col.addr, align 4, !tbaa !7
  %cmp15 = icmp eq i32 %13, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %land.lhs.true, %if.end.9
  %14 = load i8*, i8** %line.addr, align 8, !tbaa !1
  store i8* %14, i8** %begin, align 8, !tbaa !1
  %15 = load i32, i32* %col.addr, align 4, !tbaa !7
  %cmp19 = icmp eq i32 %15, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.39

land.lhs.true.21:                                 ; preds = %if.end.18
  %16 = load i32, i32* %delim.addr, align 4, !tbaa !7
  %conv22 = trunc i32 %16 to i8
  %conv23 = sext i8 %conv22 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %land.lhs.true.21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.26
  %17 = load i8*, i8** %begin, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !11
  %conv27 = sext i8 %18 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br i1 %cmp28, label %land.lhs.true.30, label %land.end

land.lhs.true.30:                                 ; preds = %while.cond
  %19 = load i8*, i8** %begin, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !11
  %conv31 = sext i8 %20 to i32
  %and = and i32 %conv31, -128
  %cmp32 = icmp eq i32 %and, 0
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.30
  %21 = load i8*, i8** %begin, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !11
  %conv34 = sext i8 %22 to i32
  %idxprom = sext i32 %conv34 to i64
  %call35 = call i16** @__ctype_b_loc() #12
  %23 = load i16*, i16** %call35, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %23, i64 %idxprom
  %24 = load i16, i16* %arrayidx36, align 2, !tbaa !12
  %conv37 = zext i16 %24 to i32
  %and38 = and i32 %conv37, 8192
  %tobool = icmp ne i32 %and38, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.30, %while.cond
  %25 = phi i1 [ false, %land.lhs.true.30 ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %26 = load i8*, i8** %begin, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %begin, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.39

if.end.39:                                        ; preds = %while.end, %land.lhs.true.21, %if.end.18
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %27 = load i32, i32* %i, align 4, !tbaa !7
  %28 = load i32, i32* %col.addr, align 4, !tbaa !7
  %cmp40 = icmp slt i32 %27, %28
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %__a0) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2) #1
  %29 = load i8*, i8** %begin, align 8, !tbaa !1
  %arraydecay42 = getelementptr inbounds [4 x i8], [4 x i8]* %delimbuf, i32 0, i32 0
  %call43 = call i8* @strpbrk(i8* %29, i8* %arraydecay42) #1
  store i8* %call43, i8** %tmp, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %__a2) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0) #1
  %30 = load i8*, i8** %tmp, !tbaa !1
  store i8* %30, i8** %begin, align 8, !tbaa !1
  %cmp44 = icmp eq i8* %30, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.body
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %for.body
  %31 = load i8*, i8** %begin, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr48, i8** %begin, align 8, !tbaa !1
  %32 = load i32, i32* %delim.addr, align 4, !tbaa !7
  %conv49 = trunc i32 %32 to i8
  %conv50 = sext i8 %conv49 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.75

if.then.53:                                       ; preds = %if.end.47
  br label %while.cond.54

while.cond.54:                                    ; preds = %while.body.72, %if.then.53
  %33 = load i8*, i8** %begin, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !11
  %conv55 = sext i8 %34 to i32
  %cmp56 = icmp ne i32 %conv55, 0
  br i1 %cmp56, label %land.lhs.true.58, label %land.end.71

land.lhs.true.58:                                 ; preds = %while.cond.54
  %35 = load i8*, i8** %begin, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !11
  %conv59 = sext i8 %36 to i32
  %and60 = and i32 %conv59, -128
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %land.rhs.63, label %land.end.71

land.rhs.63:                                      ; preds = %land.lhs.true.58
  %37 = load i8*, i8** %begin, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !11
  %conv64 = sext i8 %38 to i32
  %idxprom65 = sext i32 %conv64 to i64
  %call66 = call i16** @__ctype_b_loc() #12
  %39 = load i16*, i16** %call66, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i16, i16* %39, i64 %idxprom65
  %40 = load i16, i16* %arrayidx67, align 2, !tbaa !12
  %conv68 = zext i16 %40 to i32
  %and69 = and i32 %conv68, 8192
  %tobool70 = icmp ne i32 %and69, 0
  br label %land.end.71

land.end.71:                                      ; preds = %land.rhs.63, %land.lhs.true.58, %while.cond.54
  %41 = phi i1 [ false, %land.lhs.true.58 ], [ false, %while.cond.54 ], [ %tobool70, %land.rhs.63 ]
  br i1 %41, label %while.body.72, label %while.end.74

while.body.72:                                    ; preds = %land.end.71
  %42 = load i8*, i8** %begin, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr73, i8** %begin, align 8, !tbaa !1
  br label %while.cond.54

while.end.74:                                     ; preds = %land.end.71
  br label %if.end.75

if.end.75:                                        ; preds = %while.end.74, %if.end.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.75
  %43 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %__a077) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a179) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a281) #1
  %44 = load i8*, i8** %begin, align 8, !tbaa !1
  %arraydecay83 = getelementptr inbounds [4 x i8], [4 x i8]* %delimbuf, i32 0, i32 0
  %call84 = call i8* @strpbrk(i8* %44, i8* %arraydecay83) #1
  store i8* %call84, i8** %tmp82, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %__a281) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a179) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a077) #1
  %45 = load i8*, i8** %tmp82, !tbaa !1
  store i8* %45, i8** %end, align 8, !tbaa !1
  %46 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp85 = icmp eq i8* %46, null
  br i1 %cmp85, label %if.then.87, label %if.else.90

if.then.87:                                       ; preds = %for.end
  %47 = load i8*, i8** %begin, align 8, !tbaa !1
  %call88 = call i64 @strlen(i8* %47) #10
  %conv89 = trunc i64 %call88 to i32
  store i32 %conv89, i32* %i, align 4, !tbaa !7
  br label %if.end.92

if.else.90:                                       ; preds = %for.end
  %48 = load i8*, i8** %end, align 8, !tbaa !1
  %49 = load i8*, i8** %begin, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv91 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv91, i32* %i, align 4, !tbaa !7
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.87
  %50 = load i32, i32* %i, align 4, !tbaa !7
  %51 = load i32, i32* %buflen.addr, align 4, !tbaa !7
  %cmp93 = icmp sge i32 %50, %51
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.92
  %52 = load i32, i32* %buflen.addr, align 4, !tbaa !7
  %sub = sub nsw i32 %52, 1
  store i32 %sub, i32* %i, align 4, !tbaa !7
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.end.92
  %53 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %begin, align 8, !tbaa !1
  %55 = load i32, i32* %i, align 4, !tbaa !7
  %add = add nsw i32 %55, 1
  %conv97 = sext i32 %add to i64
  %call98 = call i64 @sm_strlcpy(i8* %53, i8* %54, i64 %conv97)
  %56 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %56, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.96, %if.then.46, %if.then.17, %if.then.8
  %57 = bitcast [4 x i8]* %delimbuf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i8** %begin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i8*, i8** %retval
  ret i8* %62
}

; Function Attrs: nounwind
declare i8* @strpbrk(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define void @cleanstrcpy(i8* %t, i8* %f, i32 %l) #0 {
entry:
  %t.addr = alloca i8*, align 8
  %f.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  store i8* %t, i8** %t.addr, align 8, !tbaa !1
  store i8* %f, i8** %f.addr, align 8, !tbaa !1
  store i32 %l, i32* %l.addr, align 4, !tbaa !7
  %0 = load i8*, i8** %f.addr, align 8, !tbaa !1
  %call = call i8* @denlstring(i8* %0, i32 1, i32 1)
  %1 = load i32, i32* %l.addr, align 4, !tbaa !7
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %l.addr, align 4, !tbaa !7
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %l.addr, align 4, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.end
  %3 = load i32, i32* %l.addr, align 4, !tbaa !7
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %f.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !11
  %conv = sext i8 %5 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %f.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !11
  %conv4 = sext i8 %8 to i32
  %and = and i32 %conv4, -128
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %while.body
  %9 = load i8*, i8** %f.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !11
  %conv7 = sext i8 %10 to i32
  %idxprom = sext i32 %conv7 to i64
  %call8 = call i16** @__ctype_b_loc() #12
  %11 = load i16*, i16** %call8, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv9 = zext i16 %12 to i32
  %and10 = and i32 %conv9, 8
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load i8*, i8** %f.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !11
  %conv11 = sext i8 %14 to i32
  %call12 = call i8* @strchr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.77, i32 0, i32 0), i32 %conv11) #1
  %cmp13 = icmp ne i8* %call12, null
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %15 = load i32, i32* %l.addr, align 4, !tbaa !7
  %dec16 = add nsw i32 %15, -1
  store i32 %dec16, i32* %l.addr, align 4, !tbaa !7
  %16 = load i8*, i8** %f.addr, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !11
  %18 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %t.addr, align 8, !tbaa !1
  store i8 %17, i8* %18, align 1, !tbaa !11
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %lor.lhs.false, %while.body
  %19 = load i8*, i8** %f.addr, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr18, i8** %f.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load i8*, i8** %t.addr, align 8, !tbaa !1
  store i8 0, i8* %20, align 1, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @denlstring(i8* %s, i32 %strict, i32 %logattacks) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %strict.addr = alloca i32, align 4
  %logattacks.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %nbp = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  store i32 %strict, i32* %strict.addr, align 4, !tbaa !7
  store i32 %logattacks, i32* %logattacks.addr, align 4, !tbaa !7
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !1
  store i8* %2, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i8*, i8** %p, align 8, !tbaa !1
  %call = call i8* @strchr(i8* %3, i32 10) #1
  store i8* %call, i8** %p, align 8, !tbaa !1
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %strict.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %6 = load i8, i8* %incdec.ptr, align 1, !tbaa !11
  %conv = sext i8 %6 to i32
  %cmp1 = icmp ne i32 %conv, 32
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !11
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp ne i32 %conv3, 9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %while.body
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %9, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.end
  %10 = load i8*, i8** %s.addr, align 8, !tbaa !1
  store i8* %10, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %while.end
  %11 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %call10 = call i64 @strlen(i8* %11) #10
  %add = add i64 %call10, 1
  %conv11 = trunc i64 %add to i32
  store i32 %conv11, i32* %l, align 4, !tbaa !7
  %12 = load i32, i32* @denlstring.bl, align 4, !tbaa !7
  %13 = load i32, i32* %l, align 4, !tbaa !7
  %cmp12 = icmp slt i32 %12, %13
  br i1 %cmp12, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.end.9
  %14 = bitcast i8** %nbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i32, i32* %l, align 4, !tbaa !7
  %conv15 = sext i32 %15 to i64
  %call16 = call i8* @sm_malloc_tagged_x(i64 %conv15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2337, i32 0)
  store i8* %call16, i8** %nbp, align 8, !tbaa !1
  %16 = load i8*, i8** @denlstring.bp, align 8, !tbaa !1
  %cmp17 = icmp ne i8* %16, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.14
  %17 = load i8*, i8** @denlstring.bp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2340)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.14
  %18 = load i8*, i8** %nbp, align 8, !tbaa !1
  store i8* %18, i8** @denlstring.bp, align 8, !tbaa !1
  %19 = load i32, i32* %l, align 4, !tbaa !7
  store i32 %19, i32* @denlstring.bl, align 4, !tbaa !7
  %20 = bitcast i8** %nbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.9
  %21 = load i8*, i8** @denlstring.bp, align 8, !tbaa !1
  %22 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %23 = load i32, i32* %l, align 4, !tbaa !7
  %conv22 = sext i32 %23 to i64
  %call23 = call i64 @sm_strlcpy(i8* %21, i8* %22, i64 %conv22)
  %24 = load i8*, i8** @denlstring.bp, align 8, !tbaa !1
  store i8* %24, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end.21
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %call24 = call i8* @strchr(i8* %25, i32 10) #1
  store i8* %call24, i8** %p, align 8, !tbaa !1
  %cmp25 = icmp ne i8* %call24, null
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8, !tbaa !1
  store i8 32, i8* %26, align 1, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %logattacks.addr, align 4, !tbaa !7
  %tobool28 = icmp ne i32 %27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.38

if.then.29:                                       ; preds = %for.end
  %28 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %tobool30 = icmp ne %struct.envelope* %28, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.29
  %29 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 25
  %30 = load i8*, i8** %e_id, align 8, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %if.then.29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %30, %cond.true ], [ null, %cond.false ]
  %31 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %cmp31 = icmp eq i8* %31, null
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end
  br label %cond.end.35

cond.false.34:                                    ; preds = %cond.end
  %32 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), %cond.true.33 ], [ %32, %cond.false.34 ]
  %33 = load i8*, i8** @denlstring.bp, align 8, !tbaa !1
  %call37 = call i8* @shortenstring(i8* %33, i64 203)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %cond, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.78, i32 0, i32 0), i8* %cond36, i8* %call37)
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.35, %for.end
  %34 = load i8*, i8** @denlstring.bp, align 8, !tbaa !1
  store i8* %34, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.8
  %35 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i8*, i8** %retval
  ret i8* %37
}

declare i8* @shortenstring(i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @strreplnonprt(i8* %s, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %ok = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  store i32 %c, i32* %c.addr, align 4, !tbaa !7
  %0 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %ok, align 4, !tbaa !7
  %1 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ok, align 4, !tbaa !7
  store i32 %2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end
  %3 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !11
  %conv = sext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !11
  %conv3 = sext i8 %6 to i32
  %and = and i32 %conv3, -128
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %land.lhs.true, label %if.then.9

land.lhs.true:                                    ; preds = %while.body
  %7 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !11
  %conv6 = sext i8 %8 to i32
  %idxprom = sext i32 %conv6 to i64
  %call = call i16** @__ctype_b_loc() #12
  %9 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv7 = zext i16 %10 to i32
  %and8 = and i32 %conv7, 16384
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true, %while.body
  %11 = load i32, i32* %c.addr, align 4, !tbaa !7
  %conv10 = trunc i32 %11 to i8
  %12 = load i8*, i8** %s.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %12, align 1, !tbaa !11
  store i32 0, i32* %ok, align 4, !tbaa !7
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %land.lhs.true
  %13 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32, i32* %ok, align 4, !tbaa !7
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %15 = bitcast i32* %ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @path_is_dir(i8* %pathname, i32 %createflag) #0 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %createflag.addr = alloca i32, align 4
  %statbuf = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pathname, i8** %pathname.addr, align 8, !tbaa !1
  store i32 %createflag, i32* %createflag.addr, align 4, !tbaa !7
  %0 = bitcast %struct.stat* %statbuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %1 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call = call i32 @lstat(i8* %1, %struct.stat* %statbuf) #1
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #12
  %2 = load i32, i32* %call1, align 4, !tbaa !7
  %cmp2 = icmp ne i32 %2, 2
  br i1 %cmp2, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %createflag.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call4 = call i32 @mkdir(i8* %4, i32 493) #1
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %5 = load i32, i32* %st_mode, align 4, !tbaa !40
  %and = and i32 %5, 61440
  %cmp9 = icmp eq i32 %and, 16384
  br i1 %cmp9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %call11 = call i32* @__errno_location() #12
  store i32 20, i32* %call11, align 4, !tbaa !7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %st_mode13 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %6 = load i32, i32* %st_mode13, align 4, !tbaa !40
  %and14 = and i32 %6, 18
  %cmp15 = icmp ne i32 %and14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.12
  %call17 = call i32* @__errno_location() #12
  store i32 13, i32* %call17, align 4, !tbaa !7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.12
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.16, %if.then.10, %if.end.7, %if.then.6, %if.then.3
  %7 = bitcast %struct.stat* %statbuf to i8*
  call void @llvm.lifetime.end(i64 144, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @lstat(i8* nonnull %__path, %struct.stat* nonnull %__statbuf) #7 {
entry:
  %__path.addr = alloca i8*, align 8
  %__statbuf.addr = alloca %struct.stat*, align 8
  store i8* %__path, i8** %__path.addr, align 8, !tbaa !1
  store %struct.stat* %__statbuf, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__path.addr, align 8, !tbaa !1
  %1 = load %struct.stat*, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__lxstat(i32 1, i8* %0, %struct.stat* %1) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #6

; Function Attrs: nounwind uwtable
define void @proc_list_add(i32 %pid, i8* %task, i32 %type, i32 %count, i32 %other, %union.bigsockaddr* %hostaddr) #0 {
entry:
  %pid.addr = alloca i32, align 4
  %task.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %other.addr = alloca i32, align 4
  %hostaddr.addr = alloca %union.bigsockaddr*, align 8
  %i = alloca i32, align 4
  %chldwasblocked = alloca i32, align 4
  %npv = alloca %struct.procs*, align 8
  %_newval = alloca i8*, align 8
  store i32 %pid, i32* %pid.addr, align 4, !tbaa !7
  store i8* %task, i8** %task.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  store i32 %count, i32* %count.addr, align 4, !tbaa !7
  store i32 %other, i32* %other.addr, align 4, !tbaa !7
  store %union.bigsockaddr* %hostaddr, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !7
  %2 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %3 to i64
  %4 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.procs, %struct.procs* %4, i64 %idxprom
  %proc_pid = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %proc_pid, align 4, !tbaa !62
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !7
  %8 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp2 = icmp sge i32 %7, %8
  br i1 %cmp2, label %if.then.3, label %if.end.16

if.then.3:                                        ; preds = %for.end
  call void @proc_list_probe()
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.13, %if.then.3
  %9 = load i32, i32* %i, align 4, !tbaa !7
  %10 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body.6, label %for.end.15

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom7 = sext i32 %11 to i64
  %12 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.procs, %struct.procs* %12, i64 %idxprom7
  %proc_pid9 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx8, i32 0, i32 0
  %13 = load i32, i32* %proc_pid9, align 4, !tbaa !62
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body.6
  br label %for.end.15

if.end.12:                                        ; preds = %for.body.6
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end.12
  %14 = load i32, i32* %i, align 4, !tbaa !7
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, i32* %i, align 4, !tbaa !7
  br label %for.cond.4

for.end.15:                                       ; preds = %if.then.11, %for.cond.4
  br label %if.end.16

if.end.16:                                        ; preds = %for.end.15, %for.end
  %15 = load i32, i32* %i, align 4, !tbaa !7
  %16 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp17 = icmp sge i32 %15, %16
  br i1 %cmp17, label %if.then.18, label %if.end.48

if.then.18:                                       ; preds = %if.end.16
  %17 = bitcast i32* %chldwasblocked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast %struct.procs** %npv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp19 = icmp slt i32 %19, 2147483615
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.18
  call void @sm_abort_at(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2508, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.80, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %20, %if.then.18
  %21 = phi i1 [ true, %if.then.18 ], [ false, %20 ]
  %lor.ext = zext i1 %21 to i32
  %22 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %add = add nsw i32 %22, 32
  %conv = sext i32 %add to i64
  %mul = mul i64 144, %conv
  %call = call i8* @sm_malloc_tagged_x(i64 %mul, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2510, i32 0)
  %23 = bitcast i8* %call to %struct.procs*
  store %struct.procs* %23, %struct.procs** %npv, align 8, !tbaa !1
  %call20 = call i32 @sm_blocksignal(i32 17)
  store i32 %call20, i32* %chldwasblocked, align 4, !tbaa !7
  %24 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp21 = icmp sgt i32 %24, 0
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %lor.end
  %25 = load %struct.procs*, %struct.procs** %npv, align 8, !tbaa !1
  %26 = bitcast %struct.procs* %25 to i8*
  %27 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %28 = bitcast %struct.procs* %27 to i8*
  %29 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %conv24 = sext i32 %29 to i64
  %mul25 = mul i64 %conv24, 144
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %26, i8* %28, i64 %mul25, i32 8, i1 false)
  %30 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %31 = bitcast %struct.procs* %30 to i8*
  call void @sm_free_tagged(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2518)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %lor.end
  %32 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  store i32 %32, i32* %i, align 4, !tbaa !7
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.39, %if.end.26
  %33 = load i32, i32* %i, align 4, !tbaa !7
  %34 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %add28 = add nsw i32 %34, 32
  %cmp29 = icmp slt i32 %33, %add28
  br i1 %cmp29, label %for.body.31, label %for.end.41

for.body.31:                                      ; preds = %for.cond.27
  %35 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom32 = sext i32 %35 to i64
  %36 = load %struct.procs*, %struct.procs** %npv, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds %struct.procs, %struct.procs* %36, i64 %idxprom32
  %proc_pid34 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx33, i32 0, i32 0
  store i32 0, i32* %proc_pid34, align 4, !tbaa !62
  %37 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.procs*, %struct.procs** %npv, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds %struct.procs, %struct.procs* %38, i64 %idxprom35
  %proc_task = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx36, i32 0, i32 1
  store i8* null, i8** %proc_task, align 8, !tbaa !64
  %39 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom37 = sext i32 %39 to i64
  %40 = load %struct.procs*, %struct.procs** %npv, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.procs, %struct.procs* %40, i64 %idxprom37
  %proc_type = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx38, i32 0, i32 2
  store i32 0, i32* %proc_type, align 4, !tbaa !65
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.31
  %41 = load i32, i32* %i, align 4, !tbaa !7
  %inc40 = add nsw i32 %41, 1
  store i32 %inc40, i32* %i, align 4, !tbaa !7
  br label %for.cond.27

for.end.41:                                       ; preds = %for.cond.27
  %42 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  store i32 %42, i32* %i, align 4, !tbaa !7
  %43 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %add42 = add nsw i32 %43, 32
  store i32 %add42, i32* @ProcListSize, align 4, !tbaa !7
  %44 = load %struct.procs*, %struct.procs** %npv, align 8, !tbaa !1
  store volatile %struct.procs* %44, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %45 = load i32, i32* %chldwasblocked, align 4, !tbaa !7
  %cmp43 = icmp eq i32 %45, 0
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %for.end.41
  %call46 = call i32 @sm_releasesignal(i32 17)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %for.end.41
  %46 = bitcast %struct.procs** %npv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %chldwasblocked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.16
  %48 = load i32, i32* %pid.addr, align 4, !tbaa !7
  %49 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom49 = sext i32 %49 to i64
  %50 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds %struct.procs, %struct.procs* %50, i64 %idxprom49
  %proc_pid51 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx50, i32 0, i32 0
  store i32 %48, i32* %proc_pid51, align 4, !tbaa !62
  br label %do.body

do.body:                                          ; preds = %if.end.48
  %51 = bitcast i8** %_newval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load i8*, i8** %task.addr, align 8, !tbaa !1
  %call52 = call i8* @sm_pstrdup_x(i8* %52)
  store i8* %call52, i8** %_newval, align 8, !tbaa !1
  %53 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom53 = sext i32 %53 to i64
  %54 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds %struct.procs, %struct.procs* %54, i64 %idxprom53
  %proc_task55 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx54, i32 0, i32 1
  %55 = load i8*, i8** %proc_task55, align 8, !tbaa !64
  %cmp56 = icmp ne i8* %55, null
  br i1 %cmp56, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %do.body
  %56 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom59 = sext i32 %56 to i64
  %57 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds %struct.procs, %struct.procs* %57, i64 %idxprom59
  %proc_task61 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx60, i32 0, i32 1
  %58 = load i8*, i8** %proc_task61, align 8, !tbaa !64
  call void @sm_free_tagged(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2535)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %do.body
  %59 = load i8*, i8** %_newval, align 8, !tbaa !1
  %60 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom63 = sext i32 %60 to i64
  %61 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds %struct.procs, %struct.procs* %61, i64 %idxprom63
  %proc_task65 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx64, i32 0, i32 1
  store i8* %59, i8** %proc_task65, align 8, !tbaa !64
  %62 = bitcast i8** %_newval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  br label %do.cond

do.cond:                                          ; preds = %if.end.62
  br label %do.end

do.end:                                           ; preds = %do.cond
  %63 = load i32, i32* %type.addr, align 4, !tbaa !7
  %64 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom66 = sext i32 %64 to i64
  %65 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds %struct.procs, %struct.procs* %65, i64 %idxprom66
  %proc_type68 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx67, i32 0, i32 2
  store i32 %63, i32* %proc_type68, align 4, !tbaa !65
  %66 = load i32, i32* %count.addr, align 4, !tbaa !7
  %67 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom69 = sext i32 %67 to i64
  %68 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct.procs, %struct.procs* %68, i64 %idxprom69
  %proc_count = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx70, i32 0, i32 3
  store i32 %66, i32* %proc_count, align 4, !tbaa !66
  %69 = load i32, i32* %other.addr, align 4, !tbaa !7
  %70 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom71 = sext i32 %70 to i64
  %71 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds %struct.procs, %struct.procs* %71, i64 %idxprom71
  %proc_other = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx72, i32 0, i32 4
  store i32 %69, i32* %proc_other, align 4, !tbaa !67
  %72 = load %union.bigsockaddr*, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  %cmp73 = icmp ne %union.bigsockaddr* %72, null
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %do.end
  %73 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom76 = sext i32 %73 to i64
  %74 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds %struct.procs, %struct.procs* %74, i64 %idxprom76
  %proc_hostaddr = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx77, i32 0, i32 5
  %75 = load %union.bigsockaddr*, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  %76 = bitcast %union.bigsockaddr* %proc_hostaddr to i8*
  %77 = bitcast %union.bigsockaddr* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 112, i32 4, i1 false), !tbaa.struct !68
  br label %if.end.81

if.else:                                          ; preds = %do.end
  %78 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom78 = sext i32 %78 to i64
  %79 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds %struct.procs, %struct.procs* %79, i64 %idxprom78
  %proc_hostaddr80 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx79, i32 0, i32 5
  %80 = bitcast %union.bigsockaddr* %proc_hostaddr80 to i8*
  call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 112, i32 4, i1 false)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.75
  %81 = load i32, i32* %pid.addr, align 4, !tbaa !7
  %82 = load i32, i32* @CurrentPid, align 4, !tbaa !7
  %cmp82 = icmp ne i32 %81, %82
  br i1 %cmp82, label %if.then.84, label %if.end.91

if.then.84:                                       ; preds = %if.end.81
  %83 = load volatile i32, i32* @CurChildren, align 4, !tbaa !7
  %cmp85 = icmp slt i32 %83, 2147483647
  br i1 %cmp85, label %lor.end.88, label %lor.rhs.87

lor.rhs.87:                                       ; preds = %if.then.84
  call void @sm_abort_at(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2548, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.81, i32 0, i32 0)) #11
  unreachable
                                                  ; No predecessors!
  br label %lor.end.88

lor.end.88:                                       ; preds = %84, %if.then.84
  %85 = phi i1 [ true, %if.then.84 ], [ false, %84 ]
  %lor.ext89 = zext i1 %85 to i32
  %86 = load volatile i32, i32* @CurChildren, align 4, !tbaa !7
  %inc90 = add nsw i32 %86, 1
  store volatile i32 %inc90, i32* @CurChildren, align 4, !tbaa !7
  br label %if.end.91

if.end.91:                                        ; preds = %lor.end.88, %if.end.81
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @proc_list_probe() #0 {
entry:
  %i = alloca i32, align 4
  %children = alloca i32, align 4
  %chldwasblocked = alloca i32, align 4
  %pid = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %children to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %chldwasblocked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %children, align 4, !tbaa !7
  %call = call i32 @sm_blocksignal(i32 17)
  store i32 %call, i32* %chldwasblocked, align 4, !tbaa !7
  store i32 1, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !7
  %5 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %6 to i64
  %7 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.procs, %struct.procs* %7, i64 %idxprom
  %proc_pid = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %proc_pid, align 4, !tbaa !62
  store i32 %8, i32* %pid, align 4, !tbaa !7
  %9 = load i32, i32* %pid, align 4, !tbaa !7
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %pid, align 4, !tbaa !7
  %11 = load i32, i32* @CurrentPid, align 4, !tbaa !7
  %cmp2 = icmp eq i32 %10, %11
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i32, i32* %pid, align 4, !tbaa !7
  %call3 = call i32 @kill(i32 %12, i32 0) #1
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %13 = load i32, i32* @LogLevel, align 4, !tbaa !7
  %cmp6 = icmp sgt i32 %13, 3
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.then.5
  %14 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 25
  %15 = load i8*, i8** %e_id, align 8, !tbaa !36
  %16 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom8 = sext i32 %16 to i64
  %17 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.procs, %struct.procs* %17, i64 %idxprom8
  %proc_pid10 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx9, i32 0, i32 0
  %18 = load i32, i32* %proc_pid10, align 4, !tbaa !62
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 7, i8* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i32 0, i32 0), i32 %18)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.then.5
  %19 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom12 = sext i32 %19 to i64
  %20 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.procs, %struct.procs* %20, i64 %idxprom12
  %proc_pid14 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx13, i32 0, i32 0
  store i32 0, i32* %proc_pid14, align 4, !tbaa !62
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom15 = sext i32 %21 to i64
  %22 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.procs, %struct.procs* %22, i64 %idxprom15
  %proc_task = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx16, i32 0, i32 1
  %23 = load i8*, i8** %proc_task, align 8, !tbaa !64
  %cmp17 = icmp ne i8* %23, null
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body
  %24 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom19 = sext i32 %24 to i64
  %25 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.procs, %struct.procs* %25, i64 %idxprom19
  %proc_task21 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx20, i32 0, i32 1
  %26 = load i8*, i8** %proc_task21, align 8, !tbaa !64
  call void @sm_free_tagged(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2709)
  %27 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom22 = sext i32 %27 to i64
  %28 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.procs, %struct.procs* %28, i64 %idxprom22
  %proc_task24 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx23, i32 0, i32 1
  store i8* null, i8** %proc_task24, align 8, !tbaa !64
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom26 = sext i32 %29 to i64
  %30 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.procs, %struct.procs* %30, i64 %idxprom26
  %proc_type = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx27, i32 0, i32 2
  %31 = load i32, i32* %proc_type, align 4, !tbaa !65
  %cmp28 = icmp eq i32 %31, 3
  br i1 %cmp28, label %if.then.29, label %if.end.44

if.then.29:                                       ; preds = %do.end
  %32 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom30 = sext i32 %32 to i64
  %33 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds %struct.procs, %struct.procs* %33, i64 %idxprom30
  %proc_count = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx31, i32 0, i32 3
  %34 = load i32, i32* %proc_count, align 4, !tbaa !66
  %35 = load volatile i32, i32* @CurRunners, align 4, !tbaa !7
  %sub = sub nsw i32 %35, %34
  store volatile i32 %sub, i32* @CurRunners, align 4, !tbaa !7
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.29
  %36 = load volatile i32, i32* @CurRunners, align 4, !tbaa !7
  %cmp33 = icmp slt i32 %36, 0
  br i1 %cmp33, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %do.body.32
  %37 = load i32, i32* @LogLevel, align 4, !tbaa !7
  %cmp35 = icmp sgt i32 %37, 3
  br i1 %cmp35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.then.34
  %38 = load volatile i32, i32* @CurRunners, align 4, !tbaa !7
  %39 = load i32, i32* %i, align 4, !tbaa !7
  %40 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom37 = sext i32 %40 to i64
  %41 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.procs, %struct.procs* %41, i64 %idxprom37
  %proc_count39 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx38, i32 0, i32 3
  %42 = load i32, i32* %proc_count39, align 4, !tbaa !66
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0), i32 %38, i32 %39, i32 %42)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.then.34
  store volatile i32 0, i32* @CurRunners, align 4, !tbaa !7
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %do.body.32
  br label %do.cond.42

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %do.end
  %43 = load volatile i32, i32* @CurChildren, align 4, !tbaa !7
  %dec = add nsw i32 %43, -1
  store volatile i32 %dec, i32* @CurChildren, align 4, !tbaa !7
  br label %if.end.45

if.else:                                          ; preds = %if.end
  %44 = load i32, i32* %children, align 4, !tbaa !7
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %children, align 4, !tbaa !7
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.end.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.45, %if.then
  %45 = load i32, i32* %i, align 4, !tbaa !7
  %inc46 = add nsw i32 %45, 1
  store i32 %inc46, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load volatile i32, i32* @CurChildren, align 4, !tbaa !7
  %cmp47 = icmp slt i32 %46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end
  store volatile i32 0, i32* @CurChildren, align 4, !tbaa !7
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %for.end
  %47 = load i32, i32* %chldwasblocked, align 4, !tbaa !7
  %cmp50 = icmp eq i32 %47, 0
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.49
  %call52 = call i32 @sm_releasesignal(i32 17)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.49
  %48 = load i32, i32* @LogLevel, align 4, !tbaa !7
  %cmp54 = icmp sgt i32 %48, 10
  br i1 %cmp54, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.53
  %49 = load i32, i32* %children, align 4, !tbaa !7
  %50 = load volatile i32, i32* @CurChildren, align 4, !tbaa !7
  %cmp55 = icmp ne i32 %49, %50
  br i1 %cmp55, label %land.lhs.true.56, label %if.end.59

land.lhs.true.56:                                 ; preds = %land.lhs.true
  %51 = load i32, i32* @CurrentPid, align 4, !tbaa !7
  %52 = load i32, i32* @DaemonPid, align 4, !tbaa !7
  %cmp57 = icmp eq i32 %51, %52
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.56
  %53 = load i32, i32* %children, align 4, !tbaa !7
  %54 = load volatile i32, i32* @CurChildren, align 4, !tbaa !7
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.86, i32 0, i32 0), i32 %53, i32 %54)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true.56, %land.lhs.true, %if.end.53
  %55 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %chldwasblocked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %children to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  ret void
}

declare i32 @sm_blocksignal(i32) #4

declare i32 @sm_releasesignal(i32) #4

declare i8* @sm_pstrdup_x(i8*) #4

; Function Attrs: nounwind uwtable
define void @proc_list_set(i32 %pid, i8* %task) #0 {
entry:
  %pid.addr = alloca i32, align 4
  %task.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %_newval = alloca i8*, align 8
  store i32 %pid, i32* %pid.addr, align 4, !tbaa !7
  store i8* %task, i8** %task.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !7
  %2 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %3 to i64
  %4 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.procs, %struct.procs* %4, i64 %idxprom
  %proc_pid = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %proc_pid, align 4, !tbaa !62
  %6 = load i32, i32* %pid.addr, align 4, !tbaa !7
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = bitcast i8** %_newval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %task.addr, align 8, !tbaa !1
  %call = call i8* @sm_pstrdup_x(i8* %8)
  store i8* %call, i8** %_newval, align 8, !tbaa !1
  %9 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2 = sext i32 %9 to i64
  %10 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.procs, %struct.procs* %10, i64 %idxprom2
  %proc_task = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx3, i32 0, i32 1
  %11 = load i8*, i8** %proc_task, align 8, !tbaa !64
  %cmp4 = icmp ne i8* %11, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %do.body
  %12 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom6 = sext i32 %12 to i64
  %13 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.procs, %struct.procs* %13, i64 %idxprom6
  %proc_task8 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx7, i32 0, i32 1
  %14 = load i8*, i8** %proc_task8, align 8, !tbaa !64
  call void @sm_free_tagged(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2575)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %do.body
  %15 = load i8*, i8** %_newval, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom9 = sext i32 %16 to i64
  %17 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.procs, %struct.procs* %17, i64 %idxprom9
  %proc_task11 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx10, i32 0, i32 1
  store i8* %15, i8** %proc_task11, align 8, !tbaa !64
  %18 = bitcast i8** %_newval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.end

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %19 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %do.end, %for.cond
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @proc_list_drop(i32 %pid, i32 %st, i32* %other) #0 {
entry:
  %pid.addr = alloca i32, align 4
  %st.addr = alloca i32, align 4
  %other.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %type = alloca i32, align 4
  %.compoundliteral = alloca %union.anon, align 4
  %.compoundliteral18 = alloca %union.anon.0, align 4
  %.compoundliteral24 = alloca %union.anon.1, align 4
  %.compoundliteral36 = alloca %union.anon.2, align 4
  store i32 %pid, i32* %pid.addr, align 4, !tbaa !7
  store i32 %st, i32* %st.addr, align 4, !tbaa !7
  store i32* %other, i32** %other.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %type, align 4, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !7
  %3 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %4 to i64
  %5 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.procs, %struct.procs* %5, i64 %idxprom
  %proc_pid = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %proc_pid, align 4, !tbaa !62
  %7 = load i32, i32* %pid.addr, align 4, !tbaa !7
  %cmp1 = icmp eq i32 %6, %7
  br i1 %cmp1, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2 = sext i32 %8 to i64
  %9 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.procs, %struct.procs* %9, i64 %idxprom2
  %proc_pid4 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx3, i32 0, i32 0
  store i32 0, i32* %proc_pid4, align 4, !tbaa !62
  %10 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom5 = sext i32 %10 to i64
  %11 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.procs, %struct.procs* %11, i64 %idxprom5
  %proc_type = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx6, i32 0, i32 2
  %12 = load i32, i32* %proc_type, align 4, !tbaa !65
  store i32 %12, i32* %type, align 4, !tbaa !7
  %13 = load i32*, i32** %other.addr, align 8, !tbaa !1
  %cmp7 = icmp ne i32* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %14 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom9 = sext i32 %14 to i64
  %15 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.procs, %struct.procs* %15, i64 %idxprom9
  %proc_other = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx10, i32 0, i32 4
  %16 = load i32, i32* %proc_other, align 4, !tbaa !67
  %17 = load i32*, i32** %other.addr, align 8, !tbaa !1
  store i32 %16, i32* %17, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %18 = load volatile i32, i32* @CurChildren, align 4, !tbaa !7
  %cmp11 = icmp sgt i32 %18, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %19 = load volatile i32, i32* @CurChildren, align 4, !tbaa !7
  %dec = add nsw i32 %19, -1
  store volatile i32 %dec, i32* @CurChildren, align 4, !tbaa !7
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  br label %for.end

if.end.14:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %if.end.13, %for.cond
  %21 = load i32, i32* %type, align 4, !tbaa !7
  %cmp15 = icmp eq i32 %21, 4
  br i1 %cmp15, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %for.end
  %__in = bitcast %union.anon* %.compoundliteral to i32*
  %22 = load i32, i32* %st.addr, align 4, !tbaa !7
  store i32 %22, i32* %__in, align 4, !tbaa !7
  %__i = bitcast %union.anon* %.compoundliteral to i32*
  %23 = load i32, i32* %__i, align 4, !tbaa !7
  %and = and i32 %23, 127
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %if.then.17, label %if.else.33

if.then.17:                                       ; preds = %land.lhs.true
  %__in19 = bitcast %union.anon.0* %.compoundliteral18 to i32*
  %24 = load i32, i32* %st.addr, align 4, !tbaa !7
  store i32 %24, i32* %__in19, align 4, !tbaa !7
  %__i20 = bitcast %union.anon.0* %.compoundliteral18 to i32*
  %25 = load i32, i32* %__i20, align 4, !tbaa !7
  %and21 = and i32 %25, 65280
  %shr = ashr i32 %and21, 8
  %cmp22 = icmp eq i32 %shr, 23
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.17
  store volatile i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0), i8** @RestartRequest, align 8, !tbaa !1
  br label %if.end.32

if.else:                                          ; preds = %if.then.17
  %__in25 = bitcast %union.anon.1* %.compoundliteral24 to i32*
  %26 = load i32, i32* %st.addr, align 4, !tbaa !7
  store i32 %26, i32* %__in25, align 4, !tbaa !7
  %__i26 = bitcast %union.anon.1* %.compoundliteral24 to i32*
  %27 = load i32, i32* %__i26, align 4, !tbaa !7
  %and27 = and i32 %27, 65280
  %shr28 = ashr i32 %and27, 8
  %cmp29 = icmp eq i32 %shr28, 24
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else
  store volatile i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0), i8** @ShutdownRequest, align 8, !tbaa !1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.23
  br label %if.end.60

if.else.33:                                       ; preds = %land.lhs.true, %for.end
  %28 = load i32, i32* %type, align 4, !tbaa !7
  %cmp34 = icmp eq i32 %28, 3
  br i1 %cmp34, label %land.lhs.true.35, label %if.else.50

land.lhs.true.35:                                 ; preds = %if.else.33
  %__in37 = bitcast %union.anon.2* %.compoundliteral36 to i32*
  %29 = load i32, i32* %st.addr, align 4, !tbaa !7
  store i32 %29, i32* %__in37, align 4, !tbaa !7
  %__i38 = bitcast %union.anon.2* %.compoundliteral36 to i32*
  %30 = load i32, i32* %__i38, align 4, !tbaa !7
  %and39 = and i32 %30, 255
  %cmp40 = icmp eq i32 %and39, 127
  br i1 %cmp40, label %if.else.50, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %land.lhs.true.35
  %31 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom42 = sext i32 %31 to i64
  %32 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.procs, %struct.procs* %32, i64 %idxprom42
  %proc_other44 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx43, i32 0, i32 4
  %33 = load i32, i32* %proc_other44, align 4, !tbaa !67
  %cmp45 = icmp sgt i32 %33, -1
  br i1 %cmp45, label %if.then.46, label %if.else.50

if.then.46:                                       ; preds = %land.lhs.true.41
  %34 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom47 = sext i32 %34 to i64
  %35 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.procs, %struct.procs* %35, i64 %idxprom47
  %proc_other49 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx48, i32 0, i32 4
  %36 = load i32, i32* %proc_other49, align 4, !tbaa !67
  %37 = load i32, i32* %st.addr, align 4, !tbaa !7
  call void @mark_work_group_restart(i32 %36, i32 %37)
  br label %if.end.59

if.else.50:                                       ; preds = %land.lhs.true.41, %land.lhs.true.35, %if.else.33
  %38 = load i32, i32* %type, align 4, !tbaa !7
  %cmp51 = icmp eq i32 %38, 3
  br i1 %cmp51, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %if.else.50
  %39 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom53 = sext i32 %39 to i64
  %40 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds %struct.procs, %struct.procs* %40, i64 %idxprom53
  %proc_count = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx54, i32 0, i32 3
  %41 = load i32, i32* %proc_count, align 4, !tbaa !66
  %42 = load volatile i32, i32* @CurRunners, align 4, !tbaa !7
  %sub = sub nsw i32 %42, %41
  store volatile i32 %sub, i32* @CurRunners, align 4, !tbaa !7
  %43 = load volatile i32, i32* @CurRunners, align 4, !tbaa !7
  %cmp55 = icmp slt i32 %43, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.52
  store volatile i32 0, i32* @CurRunners, align 4, !tbaa !7
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.then.52
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.else.50
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.46
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.32
  %44 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  ret void
}

declare void @mark_work_group_restart(i32, i32) #4

; Function Attrs: nounwind uwtable
define void @proc_list_clear() #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !7
  %2 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %3 to i64
  %4 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.procs, %struct.procs* %4, i64 %idxprom
  %proc_pid = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx, i32 0, i32 0
  store i32 0, i32* %proc_pid, align 4, !tbaa !62
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store volatile i32 0, i32* @CurChildren, align 4, !tbaa !7
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #6

; Function Attrs: nounwind uwtable
define void @proc_list_display(%struct.sm_file* %out, i8* %prefix) #0 {
entry:
  %out.addr = alloca %struct.sm_file*, align 8
  %prefix.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.sm_file* %out, %struct.sm_file** %out.addr, align 8, !tbaa !1
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !7
  %2 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %3 to i64
  %4 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.procs, %struct.procs* %4, i64 %idxprom
  %proc_pid = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %proc_pid, align 4, !tbaa !62
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load %struct.sm_file*, %struct.sm_file** %out.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2 = sext i32 %8 to i64
  %9 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.procs, %struct.procs* %9, i64 %idxprom2
  %proc_pid4 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx3, i32 0, i32 0
  %10 = load i32, i32* %proc_pid4, align 4, !tbaa !62
  %11 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom5 = sext i32 %11 to i64
  %12 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.procs, %struct.procs* %12, i64 %idxprom5
  %proc_task = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx6, i32 0, i32 1
  %13 = load i8*, i8** %proc_task, align 8, !tbaa !64
  %cmp7 = icmp ne i8* %13, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom8 = sext i32 %14 to i64
  %15 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.procs, %struct.procs* %15, i64 %idxprom8
  %proc_task10 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx9, i32 0, i32 1
  %16 = load i8*, i8** %proc_task10, align 8, !tbaa !64
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), %cond.false ]
  %17 = load i8, i8* @OpMode, align 1, !tbaa !11
  %conv = sext i8 %17 to i32
  %cmp11 = icmp eq i32 %conv, 115
  br i1 %cmp11, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %18 = load i8, i8* @OpMode, align 1, !tbaa !11
  %conv13 = sext i8 %18 to i32
  %cmp14 = icmp eq i32 %conv13, 100
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %19 = load i8, i8* @OpMode, align 1, !tbaa !11
  %conv16 = sext i8 %19 to i32
  %cmp17 = icmp eq i32 %conv16, 97
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %cond.end
  %20 = phi i1 [ true, %lor.lhs.false ], [ true, %cond.end ], [ %cmp17, %lor.rhs ]
  %cond19 = select i1 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)
  %call = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %6, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), i8* %7, i32 %10, i8* %cond, i8* %cond19)
  br label %for.inc

for.inc:                                          ; preds = %lor.end, %if.then
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @proc_list_signal(i32 %type, i32 %signal) #0 {
entry:
  %type.addr = alloca i32, align 4
  %signal.addr = alloca i32, align 4
  %chldwasblocked = alloca i32, align 4
  %alrmwasblocked = alloca i32, align 4
  %i = alloca i32, align 4
  %mypid = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  store i32 %signal, i32* %signal.addr, align 4, !tbaa !7
  %0 = bitcast i32* %chldwasblocked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %alrmwasblocked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %mypid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %call = call i32 @getpid() #1
  store i32 %call, i32* %mypid, align 4, !tbaa !7
  %call1 = call i32 @sm_blocksignal(i32 17)
  store i32 %call1, i32* %chldwasblocked, align 4, !tbaa !7
  %call2 = call i32 @sm_blocksignal(i32 14)
  store i32 %call2, i32* %alrmwasblocked, align 4, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !7
  %5 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %6 to i64
  %7 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.procs, %struct.procs* %7, i64 %idxprom
  %proc_pid = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %proc_pid, align 4, !tbaa !62
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom4 = sext i32 %9 to i64
  %10 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.procs, %struct.procs* %10, i64 %idxprom4
  %proc_pid6 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx5, i32 0, i32 0
  %11 = load i32, i32* %proc_pid6, align 4, !tbaa !62
  %12 = load i32, i32* %mypid, align 4, !tbaa !7
  %cmp7 = icmp eq i32 %11, %12
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom8 = sext i32 %13 to i64
  %14 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.procs, %struct.procs* %14, i64 %idxprom8
  %proc_type = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx9, i32 0, i32 2
  %15 = load i32, i32* %proc_type, align 4, !tbaa !65
  %16 = load i32, i32* %type.addr, align 4, !tbaa !7
  %cmp10 = icmp ne i32 %15, %16
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  br label %for.inc

if.end.12:                                        ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom13 = sext i32 %17 to i64
  %18 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct.procs, %struct.procs* %18, i64 %idxprom13
  %proc_pid15 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx14, i32 0, i32 0
  %19 = load i32, i32* %proc_pid15, align 4, !tbaa !62
  %20 = load i32, i32* %signal.addr, align 4, !tbaa !7
  %call16 = call i32 @kill(i32 %19, i32 %20) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.12, %if.then.11, %if.then
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %alrmwasblocked, align 4, !tbaa !7
  %cmp17 = icmp eq i32 %22, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %for.end
  %call19 = call i32 @sm_releasesignal(i32 14)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.end
  %23 = load i32, i32* %chldwasblocked, align 4, !tbaa !7
  %cmp21 = icmp eq i32 %23, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %call23 = call i32 @sm_releasesignal(i32 17)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %24 = bitcast i32* %mypid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %alrmwasblocked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %chldwasblocked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @count_open_connections(%union.bigsockaddr* %hostaddr) #0 {
entry:
  %retval = alloca i32, align 4
  %hostaddr.addr = alloca %union.bigsockaddr*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %union.bigsockaddr* %hostaddr, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %union.bigsockaddr*, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  %cmp = icmp eq %union.bigsockaddr* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, i32* %n, align 4, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !tbaa !7
  %4 = load i32, i32* @ProcListSize, align 4, !tbaa !7
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %5 to i64
  %6 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.procs, %struct.procs* %6, i64 %idxprom
  %proc_pid = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %proc_pid, align 4, !tbaa !62
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  br label %for.inc

if.end.4:                                         ; preds = %for.body
  %8 = load %union.bigsockaddr*, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  %sa = bitcast %union.bigsockaddr* %8 to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  %9 = load i16, i16* %sa_family, align 2, !tbaa !43
  %conv = zext i16 %9 to i32
  %10 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom5 = sext i32 %10 to i64
  %11 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.procs, %struct.procs* %11, i64 %idxprom5
  %proc_hostaddr = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx6, i32 0, i32 5
  %sa7 = bitcast %union.bigsockaddr* %proc_hostaddr to %struct.sockaddr*
  %sa_family8 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa7, i32 0, i32 0
  %12 = load i16, i16* %sa_family8, align 2, !tbaa !43
  %conv9 = zext i16 %12 to i32
  %cmp10 = icmp ne i32 %conv, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.4
  br label %for.inc

if.end.13:                                        ; preds = %if.end.4
  %13 = load %union.bigsockaddr*, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  %sa14 = bitcast %union.bigsockaddr* %13 to %struct.sockaddr*
  %sa_family15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa14, i32 0, i32 0
  %14 = load i16, i16* %sa_family15, align 2, !tbaa !43
  %conv16 = zext i16 %14 to i32
  %cmp17 = icmp eq i32 %conv16, 2
  br i1 %cmp17, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.13
  %15 = load %union.bigsockaddr*, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  %sin = bitcast %union.bigsockaddr* %15 to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  %16 = load i32, i32* %s_addr, align 4, !tbaa !69
  %17 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom19 = sext i32 %17 to i64
  %18 = load volatile %struct.procs*, %struct.procs** @ProcListVec, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.procs, %struct.procs* %18, i64 %idxprom19
  %proc_hostaddr21 = getelementptr inbounds %struct.procs, %struct.procs* %arrayidx20, i32 0, i32 5
  %sin22 = bitcast %union.bigsockaddr* %proc_hostaddr21 to %struct.sockaddr_in*
  %sin_addr23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin22, i32 0, i32 2
  %s_addr24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr23, i32 0, i32 0
  %19 = load i32, i32* %s_addr24, align 4, !tbaa !69
  %cmp25 = icmp eq i32 %16, %19
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  %20 = load i32, i32* %n, align 4, !tbaa !7
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %n, align 4, !tbaa !7
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.28, %if.then.12, %if.then.3
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %inc29 = add nsw i32 %21, 1
  store i32 %inc29, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %n, align 4, !tbaa !7
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %23 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) #6

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn }
attributes #12 = { nounwind readnone }
attributes #13 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !8, i64 8}
!10 = !{!"sm_debug", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!11 = !{!3, !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !3, i64 0}
!14 = !{!15, !13, i64 160}
!15 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !8, i64 48, !8, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !6, i64 144, !2, i64 152, !13, i64 160, !2, i64 168, !8, i64 176, !8, i64 180, !2, i64 184}
!16 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !5, i64 48, i64 4, !7, i64 52, i64 4, !7, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !5, i64 152, i64 8, !1, i64 160, i64 2, !12, i64 168, i64 8, !1, i64 176, i64 4, !7, i64 180, i64 4, !7, i64 184, i64 8, !1}
!17 = !{!15, !2, i64 72}
!18 = !{!19, !13, i64 290}
!19 = !{!"envelope", !2, i64 0, !6, i64 8, !6, i64 16, !2, i64 24, !15, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !6, i64 256, !2, i64 264, !6, i64 272, !8, i64 280, !13, i64 284, !13, i64 286, !13, i64 288, !13, i64 290, !13, i64 292, !13, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !6, i64 456, !8, i64 464, !6, i64 472, !6, i64 480, !20, i64 488, !2, i64 2576, !2, i64 2584, !21, i64 2592, !6, i64 2624, !8, i64 2632, !2, i64 2640, !8, i64 2648}
!20 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!21 = !{!"sm_timers", !22, i64 0}
!22 = !{!"_timer", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!23 = !{!24, !2, i64 0}
!24 = !{!"termescape", !2, i64 0, !2, i64 8, !2, i64 16}
!25 = !{!24, !2, i64 16}
!26 = !{!27, !3, i64 0}
!27 = !{!"metamac", !3, i64 0, !3, i64 1}
!28 = !{!27, !3, i64 1}
!29 = !{!30, !6, i64 0}
!30 = !{!"mailer_con_info", !6, i64 0, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !8, i64 16, !6, i64 24, !2, i64 32, !2, i64 40, !8, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !2, i64 104, !2, i64 112, !6, i64 120, !8, i64 128, !2, i64 136, !2, i64 144, !8, i64 152, !2, i64 160, !20, i64 168}
!31 = !{!30, !2, i64 64}
!32 = !{!33, !8, i64 112}
!33 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !13, i64 72, !13, i64 74, !2, i64 80, !13, i64 88, !13, i64 90, !13, i64 92, !13, i64 94, !2, i64 96, !6, i64 104, !8, i64 112, !8, i64 116, !2, i64 120, !2, i64 128, !8, i64 136, !8, i64 140, !2, i64 144, !6, i64 152, !8, i64 160, !13, i64 164}
!34 = !{!30, !2, i64 40}
!35 = !{!33, !2, i64 96}
!36 = !{!19, !2, i64 344}
!37 = !{!38, !6, i64 24}
!38 = !{!"sm_file", !2, i64 0, !2, i64 8, !8, i64 16, !8, i64 20, !6, i64 24, !13, i64 32, !39, i64 40, !8, i64 56, !2, i64 64, !8, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !8, i64 136, !8, i64 140, !2, i64 144, !2, i64 152, !2, i64 160, !39, i64 168, !2, i64 184, !8, i64 192, !3, i64 196, !3, i64 199, !8, i64 200, !6, i64 208, !8, i64 216}
!39 = !{!"smbuf", !2, i64 0, !8, i64 8}
!40 = !{!41, !8, i64 24}
!41 = !{!"stat", !6, i64 0, !6, i64 8, !6, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !42, i64 72, !42, i64 88, !42, i64 104, !3, i64 120}
!42 = !{!"timespec", !6, i64 0, !6, i64 8}
!43 = !{!44, !13, i64 0}
!44 = !{!"sockaddr", !13, i64 0, !3, i64 2}
!45 = !{!46, !13, i64 2}
!46 = !{!"sockaddr_in", !13, i64 0, !13, i64 2, !47, i64 4, !3, i64 8}
!47 = !{!"in_addr", !8, i64 0}
!48 = !{i32 236913}
!49 = !{i32 237732}
!50 = !{!41, !6, i64 0}
!51 = !{!41, !6, i64 8}
!52 = !{!41, !6, i64 16}
!53 = !{!41, !8, i64 28}
!54 = !{!41, !8, i64 32}
!55 = !{!41, !6, i64 48}
!56 = !{!57, !57, i64 0}
!57 = !{!"long long", !3, i64 0}
!58 = !{!19, !2, i64 376}
!59 = !{!19, !2, i64 384}
!60 = !{!33, !2, i64 128}
!61 = !{!33, !2, i64 120}
!62 = !{!63, !8, i64 0}
!63 = !{!"procs", !8, i64 0, !2, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !3, i64 28}
!64 = !{!63, !2, i64 8}
!65 = !{!63, !8, i64 16}
!66 = !{!63, !8, i64 20}
!67 = !{!63, !8, i64 24}
!68 = !{i64 0, i64 2, !12, i64 2, i64 14, !11, i64 0, i64 2, !12, i64 2, i64 108, !11, i64 0, i64 2, !12, i64 2, i64 2, !12, i64 4, i64 4, !7, i64 8, i64 8, !11}
!69 = !{!46, !8, i64 4}
