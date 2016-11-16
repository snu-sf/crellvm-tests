; ModuleID = '15.envelope.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.address = type { i8*, i8*, i8*, i8*, %struct.mailer*, i64, i32, i32, i8*, i8*, %struct.address*, %struct.address*, i8*, %struct.address*, %struct.address*, i8*, i8*, i8*, i8*, i64, i8*, i16, i8*, i32, i32, i8* }
%struct.mailer = type { i8*, i8*, i8*, i8*, i8*, [8 x i32], i16, i16, i8**, i16, i16, i16, i16, i8*, i64, i32, i32, i8*, i8*, i32, i32, i8*, i64, i32, i16 }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.MACROS_T = type { %struct.SM_RPOOL_T*, [8 x i32], [256 x i8*] }
%struct.mailer_con_info = type { i64, i16, i16, i16, i16, i32, i64, %struct.sm_file*, %struct.sm_file*, i32, i8*, %struct.mailer*, i8*, i8*, i8*, i64, %struct.sm_file*, i8*, i64, i32, i8*, %struct.SM_RPOOL_T*, i32, %struct.address*, %struct.MACROS_T }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%struct.SM_RPOOL_T = type { i8*, void (i8*)**, i64, i64, i8*, i64, %struct.sm_poollink*, %struct.sm_resource*, i64, %struct.sm_rlist* }
%struct.sm_poollink = type { %struct.sm_poollink* }
%struct.sm_resource = type { void (i8*)*, i8* }
%struct.sm_rlist = type { [511 x %struct.sm_resource], %struct.sm_rlist* }
%struct.anon = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [3 x i64], [3 x i32] }
%struct.eflags = type { i8*, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.SM_MBDB_T = type { i32, i32, [256 x i8], [256 x i8], [4096 x i8], [4096 x i8] }

@CurEnv = external global %struct.envelope*, align 8
@NullAddress = external global %struct.address, align 8
@.str = private unnamed_addr constant [13 x i8] c"{quarantine}\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"envelope.c\00", align 1
@SmHeapGroup = external global i32, align 4
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"dropenvelope %p: id=\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c", flags=\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sendq=\00", align 1
@LogLevel = external global i32, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"dropenvelope, e_flags=0x%lx, OpMode=%c, pid=%d\00", align 1
@OpMode = external global i8, align 1
@CurrentPid = external global i32, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"dropenvelope: e_id=%s, EF_LOGSENDER=%d, LogLevel=%d\0A\00", align 1
@StatFile = external global i8*, align 8
@TimeOuts = external global %struct.anon, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"delivery time expired %lds\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Cannot send message for %s\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Delivery time (%lds) expired\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Message could not be delivered for %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Message will be deleted from queue\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"5.4.7\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"4.4.7\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"owner-\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"-request\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Warning: Delivery time (%lds) exceeded\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"Warning: could not send message for past %s\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Warning: Delivery time (%lds) exceeded\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"Warning: message still undelivered after %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Will keep trying until message is %s old\0A\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"failure_return=%d delay_return=%d success_return=%d queueit=%d\0A\00", align 1
@PrivacyFlags = external global i64, align 8
@.str.24 = private unnamed_addr constant [42 x i8] c"dropenvelope(%s): sending return receipt\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Return receipt\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"dropenvelope(%s): saving mail\0A\00", align 1
@PostMasterCopy = external global i8*, align 8
@.str.27 = private unnamed_addr constant [49 x i8] c"dropenvelope(%s): sending postmaster copy to %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"postmaster\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"dropenvelope(%s): at simpledrop, queueit=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [59 x i8] c"\0A===== Dropping queue files for %s... queueit=%d, e_flags=\00", align 1
@QueueMode = external global i32, align 4
@.str.31 = private unnamed_addr constant [13 x i8] c"dropenvelope\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"done; delay=%s, ntries=%d\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"!dropenvelope(%s): cannot commit data file %s, uid=%ld\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"dropenvelope(%s): unlocking job\0A\00", align 1
@BlankEnvelope = external global %struct.envelope, align 8
@Verbose = external global i32, align 4
@OutChannel = external global %struct.sm_file*, align 8
@.str.35 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"{time}\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"%04d%02d%02d%02d%02d\00", align 1
@FileMode = external global i32, align 4
@XscriptFileBufferSize = external global i64, align 8
@.str.39 = private unnamed_addr constant [32 x i8] c"Can't create transcript file %s\00", align 1
@SmFtStdio_def = external global %struct.sm_file, align 8
@.str.40 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"!Can't open %s\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"openxscript(%s):\0A  \00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"setsender(%s)\0A\00", align 1
@ConfigLevel = external global i32, align 4
@SuprErrs = external global i32, align 4
@.str.44 = private unnamed_addr constant [12 x i8] c"{addr_type}\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"e s\00", align 1
@ProgMailer = external global %struct.mailer*, align 8
@FileMailer = external global %struct.mailer*, align 8
@InclMailer = external global %struct.mailer*, align 8
@RealHostName = external global i8*, align 8
@MyHostName = external global i8*, align 8
@.str.46 = private unnamed_addr constant [10 x i8] c"%.*s@%.*s\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"setsender: %s: invalid or unparsable, received from %s\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"5.1.7\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"553 Invalid sender address\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"\81n\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"553 5.3.0 setsender: can't even parse postmaster!\00", align 1
@FromFlag = external global i32, align 4
@.str.52 = private unnamed_addr constant [22 x i8] c"setsender: QS_SENDER \00", align 1
@FullName = external global i8*, align 8
@.str.53 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@RealUid = external global i32, align 4
@RealGid = external global i32, align 4
@IntTokenTab = external global [256 x i8], align 16
@.str.55 = private unnamed_addr constant [25 x i8] c"cannot prescan from (%s)\00", align 1
@ExitStat = external global i32, align 4
@.str.56 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"Saving from domain: \00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@EnvelopeFlags = internal global [29 x %struct.eflags] [%struct.eflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i64 1 }, %struct.eflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i64 2 }, %struct.eflags { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i64 4 }, %struct.eflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i64 8 }, %struct.eflags { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i64 16 }, %struct.eflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i64 32 }, %struct.eflags { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i64 64 }, %struct.eflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i64 128 }, %struct.eflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i64 256 }, %struct.eflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i64 512 }, %struct.eflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i64 1024 }, %struct.eflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i64 2048 }, %struct.eflags { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i64 4096 }, %struct.eflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i64 8192 }, %struct.eflags { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i64 16384 }, %struct.eflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i64 32768 }, %struct.eflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i64 65536 }, %struct.eflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i64 131072 }, %struct.eflags { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i64 262144 }, %struct.eflags { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i64 524288 }, %struct.eflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i64 1048576 }, %struct.eflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i64 2097152 }, %struct.eflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i64 4194304 }, %struct.eflags { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i64 8388608 }, %struct.eflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i64 16777216 }, %struct.eflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i64 33554432 }, %struct.eflags { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i64 67108864 }, %struct.eflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i64 134217728 }, %struct.eflags zeroinitializer], align 16
@.str.60 = private unnamed_addr constant [4 x i8] c"<%s\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"OLDSTYLE\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"INQUEUE\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"NO_BODY_RETN\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"CLRQUEUE\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"SENDRECEIPT\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"FATALERRS\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"DELETE_BCC\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"RESPONSE\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"RESENT\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"VRFYONLY\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"QUEUERUN\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"GLOBALERRS\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"PM_NOTIFY\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"METOO\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"LOGSENDER\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"NORECEIPT\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"HAS8BIT\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"NL_NOT_EOL\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"CRLF_NOT_EOL\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"RET_PARAM\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"HAS_DF\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"IS_MIME\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"DONT_MIME\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"DISCARD\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"TOOBIG\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"SPLIT\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"UNSAFE\00", align 1

; Function Attrs: nounwind uwtable
define void @clrsessenvelope(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.envelope* @newenvelope(%struct.envelope* %e, %struct.envelope* %parent, %struct.SM_RPOOL_T* %rpool) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %parent.addr = alloca %struct.envelope*, align 8
  %rpool.addr = alloca %struct.SM_RPOOL_T*, align 8
  %sendmode = alloca i32, align 4
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.envelope* %parent, %struct.envelope** %parent.addr, align 8, !tbaa !1
  store %struct.SM_RPOOL_T* %rpool, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %0 = bitcast i32* %sendmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.envelope*, %struct.envelope** %parent.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.envelope* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.envelope*, %struct.envelope** %parent.addr, align 8, !tbaa !1
  %e_sendmode = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 16
  %3 = load i16, i16* %e_sendmode, align 2, !tbaa !5
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %sendmode, align 4, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 -1, i32* %sendmode, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %5 = load %struct.envelope*, %struct.envelope** %parent.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.envelope* %4, %5
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 21
  %7 = load %struct.envelope*, %struct.envelope** %e_parent, align 8, !tbaa !15
  store %struct.envelope* %7, %struct.envelope** %parent.addr, align 8, !tbaa !1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %9 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  call void @clearenvelope(%struct.envelope* %8, i32 1, %struct.SM_RPOOL_T* %9)
  %10 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %11 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.envelope* %10, %11
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.end.4
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 4
  %13 = bitcast %struct.address* %e_from to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct.address* @NullAddress to i8*), i64 192, i32 1, i1 false)
  br label %if.end.11

if.else.8:                                        ; preds = %if.end.4
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from9 = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 4
  %15 = bitcast %struct.address* %e_from9 to i8*
  %16 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_from10 = getelementptr inbounds %struct.envelope, %struct.envelope* %16, i32 0, i32 4
  %17 = bitcast %struct.address* %e_from10 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %15, i8* %17, i64 192, i32 1, i1 false)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.8, %if.then.7
  %18 = load %struct.envelope*, %struct.envelope** %parent.addr, align 8, !tbaa !1
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent12 = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 21
  store %struct.envelope* %18, %struct.envelope** %e_parent12, align 8, !tbaa !15
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @assign_queueid(%struct.envelope* %20)
  %call = call i64 @curtime()
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ctime = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 2
  store i64 %call, i64* %e_ctime, align 8, !tbaa !16
  %22 = load %struct.envelope*, %struct.envelope** %parent.addr, align 8, !tbaa !1
  %cmp13 = icmp ne %struct.envelope* %22, null
  br i1 %cmp13, label %if.then.15, label %if.end.29

if.then.15:                                       ; preds = %if.end.11
  %23 = load %struct.envelope*, %struct.envelope** %parent.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 9
  %24 = load i64, i64* %e_msgsize, align 8, !tbaa !17
  %25 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgpriority = getelementptr inbounds %struct.envelope, %struct.envelope* %25, i32 0, i32 1
  store i64 %24, i64* %e_msgpriority, align 8, !tbaa !18
  %26 = load %struct.envelope*, %struct.envelope** %parent.addr, align 8, !tbaa !1
  %e_quarmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 36
  %27 = load i8*, i8** %e_quarmsg, align 8, !tbaa !19
  %cmp16 = icmp eq i8* %27, null
  br i1 %cmp16, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.then.15
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg19 = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 36
  store i8* null, i8** %e_quarmsg19, align 8, !tbaa !19
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 46
  %call20 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8** null)
  %30 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %call20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 122, i32 %30)
  br label %if.end.28

if.else.21:                                       ; preds = %if.then.15
  %31 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %32 = load %struct.envelope*, %struct.envelope** %parent.addr, align 8, !tbaa !1
  %e_quarmsg22 = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 36
  %33 = load i8*, i8** %e_quarmsg22, align 8, !tbaa !19
  %call23 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %31, i8* %33)
  %34 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg24 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 36
  store i8* %call23, i8** %e_quarmsg24, align 8, !tbaa !19
  %35 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro25 = getelementptr inbounds %struct.envelope, %struct.envelope* %35, i32 0, i32 46
  %call26 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8** null)
  %36 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg27 = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 36
  %37 = load i8*, i8** %e_quarmsg27, align 8, !tbaa !19
  %38 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro25, i32 2, i32 %call26, i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 129, i32 %38)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.21, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.11
  %39 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_puthdr = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 19
  store i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)* @putheader, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)** %e_puthdr, align 8, !tbaa !20
  %40 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_putbody = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 20
  store i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)* @putbody, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)** %e_putbody, align 8, !tbaa !21
  %41 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %41, i32 0, i32 32
  %42 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !22
  %cmp30 = icmp ne %struct.sm_file* %42, null
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.29
  %43 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_xfp33 = getelementptr inbounds %struct.envelope, %struct.envelope* %43, i32 0, i32 32
  %44 = load %struct.sm_file*, %struct.sm_file** %e_xfp33, align 8, !tbaa !22
  %call34 = call i32 @sm_io_flush(%struct.sm_file* %44, i32 -2)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.29
  %45 = load i32, i32* %sendmode, align 4, !tbaa !14
  %cmp36 = icmp ne i32 %45, -1
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  %46 = load i32, i32* %sendmode, align 4, !tbaa !14
  %47 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @set_delivery_mode(i32 %46, %struct.envelope* %47)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.35
  %48 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %49 = bitcast i32* %sendmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  ret %struct.envelope* %48
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @clearenvelope(%struct.envelope* %e, i32 %fullclear, %struct.SM_RPOOL_T* %rpool) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %fullclear.addr = alloca i32, align 4
  %rpool.addr = alloca %struct.SM_RPOOL_T*, align 8
  %bh = alloca %struct.header*, align 8
  %nhp = alloca %struct.header**, align 8
  %p = alloca i8**, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %fullclear, i32* %fullclear.addr, align 4, !tbaa !14
  store %struct.SM_RPOOL_T* %rpool, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %0 = bitcast %struct.header** %bh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.header*** %nhp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8*** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %fullclear.addr, align 4, !tbaa !14
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.10, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %4, i32 0, i32 32
  %5 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !22
  %cmp = icmp ne %struct.sm_file* %5, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp2 = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 32
  %7 = load %struct.sm_file*, %struct.sm_file** %e_xfp2, align 8, !tbaa !22
  %call = call i32 @sm_io_close(%struct.sm_file* %7, i32 -2)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %8 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 24
  %9 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !23
  %cmp3 = icmp ne %struct.sm_file* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp5 = getelementptr inbounds %struct.envelope, %struct.envelope* %10, i32 0, i32 24
  %11 = load %struct.sm_file*, %struct.sm_file** %e_dfp5, align 8, !tbaa !23
  %call6 = call i32 @sm_io_close(%struct.sm_file* %11, i32 -2)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp8 = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp8, align 8, !tbaa !23
  %13 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp9 = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 32
  store %struct.sm_file* null, %struct.sm_file** %e_xfp9, align 8, !tbaa !22
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.7, %entry
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %15 = bitcast %struct.envelope* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast (%struct.envelope* @BlankEnvelope to i8*), i64 2656, i32 8, i1 false), !tbaa.struct !24
  %16 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %16, i32 0, i32 34
  store i8* null, i8** %e_message, align 8, !tbaa !28
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_qfletter = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 37
  store i8 0, i8* %e_qfletter, align 1, !tbaa !29
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 36
  store i8* null, i8** %e_quarmsg, align 8, !tbaa !19
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 46
  %call11 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8** null)
  %20 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %call11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 702, i32 %20)
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro12 = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 46
  %mac_table = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %e_macro12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table, i32 0, i64 0
  store i8** %arrayidx, i8*** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %22 = load i8**, i8*** %p, align 8, !tbaa !1
  %23 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro13 = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 46
  %mac_table14 = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %e_macro13, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table14, i32 0, i64 255
  %cmp16 = icmp ule i8** %22, %arrayidx15
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8**, i8*** %p, align 8, !tbaa !1
  %25 = load i8*, i8** %24, align 8, !tbaa !1
  %cmp17 = icmp ne i8* %25, null
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %for.body
  %26 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %27 = load i8**, i8*** %p, align 8, !tbaa !1
  %28 = load i8*, i8** %27, align 8, !tbaa !1
  %call19 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %26, i8* %28)
  %29 = load i8**, i8*** %p, align 8, !tbaa !1
  store i8* %call19, i8** %29, align 8, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %30 = load i8**, i8*** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %incdec.ptr, i8*** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %32 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 52
  store %struct.SM_RPOOL_T* %31, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !30
  %33 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %34 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro21 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 46
  %mac_rpool = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %e_macro21, i32 0, i32 0
  store %struct.SM_RPOOL_T* %33, %struct.SM_RPOOL_T** %mac_rpool, align 8, !tbaa !31
  %35 = load i32, i32* @Verbose, align 4, !tbaa !14
  %tobool22 = icmp ne i32 %35, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end
  %36 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @set_delivery_mode(i32 105, %struct.envelope* %36)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %for.end
  %37 = load %struct.header*, %struct.header** getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 0), align 8, !tbaa !32
  store %struct.header* %37, %struct.header** %bh, align 8, !tbaa !1
  %38 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %38, i32 0, i32 0
  store %struct.header** %e_header, %struct.header*** %nhp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.24
  %39 = load %struct.header*, %struct.header** %bh, align 8, !tbaa !1
  %cmp25 = icmp ne %struct.header* %39, null
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %41 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  %call26 = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %40, i64 72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 733, i32 %41)
  %42 = bitcast i8* %call26 to %struct.header*
  %43 = load %struct.header**, %struct.header*** %nhp, align 8, !tbaa !1
  store %struct.header* %42, %struct.header** %43, align 8, !tbaa !1
  %44 = load %struct.header**, %struct.header*** %nhp, align 8, !tbaa !1
  %45 = load %struct.header*, %struct.header** %44, align 8, !tbaa !1
  %46 = bitcast %struct.header* %45 to i8*
  %47 = load %struct.header*, %struct.header** %bh, align 8, !tbaa !1
  %48 = bitcast %struct.header* %47 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %46, i8* %48, i64 72, i32 1, i1 false)
  %49 = load %struct.header*, %struct.header** %bh, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %49, i32 0, i32 2
  %50 = load %struct.header*, %struct.header** %h_link, align 8, !tbaa !33
  store %struct.header* %50, %struct.header** %bh, align 8, !tbaa !1
  %51 = load %struct.header**, %struct.header*** %nhp, align 8, !tbaa !1
  %52 = load %struct.header*, %struct.header** %51, align 8, !tbaa !1
  %h_link27 = getelementptr inbounds %struct.header, %struct.header* %52, i32 0, i32 2
  store %struct.header** %h_link27, %struct.header*** %nhp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %53 = bitcast i8*** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.header*** %nhp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.header** %bh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @assign_queueid(%struct.envelope*) #2

declare i64 @curtime() #2

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #2

declare i32 @macid_parse(i8*, i8**) #2

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #2

declare i32 @putheader(%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32) #2

declare i32 @putbody(%struct.mailer_con_info*, %struct.envelope*, i8*) #2

declare i32 @sm_io_flush(%struct.sm_file*, i32) #2

declare void @set_delivery_mode(i32, %struct.envelope*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @dropenvelope(%struct.envelope* %e, i32 %fulldrop, i32 %split) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %fulldrop.addr = alloca i32, align 4
  %split.addr = alloca i32, align 4
  %panic = alloca i32, align 4
  %queueit = alloca i32, align 4
  %msg_timeout = alloca i32, align 4
  %failure_return = alloca i32, align 4
  %delay_return = alloca i32, align 4
  %success_return = alloca i32, align 4
  %pmnotify = alloca i32, align 4
  %done = alloca i32, align 4
  %q = alloca %struct.address*, align 8
  %id = alloca i8*, align 8
  %now = alloca i64, align 8
  %buf = alloca [2048 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp375 = alloca i32, align 4
  %__s1_len559 = alloca i64, align 8
  %__s2_len561 = alloca i64, align 8
  %tmp562 = alloca i32, align 4
  %__s1568 = alloca i8*, align 8
  %__result572 = alloca i32, align 4
  %tmp610 = alloca i32, align 4
  %rlist = alloca %struct.address*, align 8
  %rlist676 = alloca %struct.address*, align 8
  %pcopy = alloca [256 x i8], align 16
  %oldsib = alloca %struct.envelope*, align 8
  %ee = alloca %struct.envelope*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %fulldrop, i32* %fulldrop.addr, align 4, !tbaa !14
  store i32 %split, i32* %split.addr, align 4, !tbaa !14
  %0 = bitcast i32* %panic to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %panic, align 4, !tbaa !14
  %1 = bitcast i32* %queueit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %queueit, align 4, !tbaa !14
  %2 = bitcast i32* %msg_timeout to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %msg_timeout, align 4, !tbaa !14
  %3 = bitcast i32* %failure_return to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %failure_return, align 4, !tbaa !14
  %4 = bitcast i32* %delay_return to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %delay_return, align 4, !tbaa !14
  %5 = bitcast i32* %success_return to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %success_return, align 4, !tbaa !14
  %6 = bitcast i32* %pmnotify to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 11
  %8 = load i64, i64* %e_flags, align 8, !tbaa !35
  %and = and i64 %8, 8192
  %cmp = icmp ne i64 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %pmnotify, align 4, !tbaa !14
  %9 = bitcast i32* %done to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %done, align 4, !tbaa !14
  %10 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 25
  %13 = load i8*, i8** %e_id, align 8, !tbaa !36
  store i8* %13, i8** %id, align 8, !tbaa !1
  %14 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %15) #1
  %16 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 50), align 1, !tbaa !27
  %conv1 = zext i8 %16 to i32
  %cmp2 = icmp sge i32 %conv1, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %17 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end.12, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), %struct.envelope* %18)
  %call = call %struct.sm_file* @sm_debug_file()
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id4 = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 25
  %20 = load i8*, i8** %e_id4, align 8, !tbaa !36
  call void @xputs(%struct.sm_file* %call, i8* %20)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @printenvflags(%struct.envelope* %21)
  %22 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 50), align 1, !tbaa !27
  %conv5 = zext i8 %22 to i32
  %cmp6 = icmp sge i32 %conv5, 10
  br i1 %cmp6, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %if.then
  %23 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool9 = icmp ne i32 %23, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  %call11 = call %struct.sm_file* @sm_debug_file()
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 7
  %25 = load %struct.address*, %struct.address** %e_sendqueue, align 8, !tbaa !37
  call void @printaddr(%struct.sm_file* %call11, %struct.address* %25, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true.8, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true, %entry
  %26 = load i32, i32* @LogLevel, align 4, !tbaa !14
  %cmp13 = icmp sgt i32 %26, 84
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %27 = load i8*, i8** %id, align 8, !tbaa !1
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags16 = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 11
  %29 = load i64, i64* %e_flags16, align 8, !tbaa !35
  %30 = load i8, i8* @OpMode, align 1, !tbaa !27
  %conv17 = sext i8 %30 to i32
  %31 = load i32, i32* @CurrentPid, align 4, !tbaa !14
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 7, i8* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i64 %29, i32 %conv17, i32 %31)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.12
  %32 = load i8*, i8** %id, align 8, !tbaa !1
  %cmp19 = icmp eq i8* %32, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.18
  %33 = load i8, i8* @OpMode, align 1, !tbaa !27
  %conv23 = sext i8 %33 to i32
  %cmp24 = icmp eq i32 %conv23, 118
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  br label %simpledrop

if.end.27:                                        ; preds = %if.end.22
  %34 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 92), align 1, !tbaa !27
  %conv28 = zext i8 %34 to i32
  %cmp29 = icmp sge i32 %conv28, 2
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.39

land.lhs.true.31:                                 ; preds = %if.end.27
  %35 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool32 = icmp ne i32 %35, 0
  br i1 %tobool32, label %if.end.39, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.31
  %36 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id34 = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 25
  %37 = load i8*, i8** %e_id34, align 8, !tbaa !36
  %38 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags35 = getelementptr inbounds %struct.envelope, %struct.envelope* %38, i32 0, i32 11
  %39 = load i64, i64* %e_flags35, align 8, !tbaa !35
  %and36 = and i64 %39, 32768
  %cmp37 = icmp ne i64 %and36, 0
  %conv38 = zext i1 %cmp37 to i32
  %40 = load i32, i32* @LogLevel, align 4, !tbaa !14
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0), i8* %37, i32 %conv38, i32 %40)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.33, %land.lhs.true.31, %if.end.27
  %41 = load i32, i32* @LogLevel, align 4, !tbaa !14
  %cmp40 = icmp sgt i32 %41, 4
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.48

land.lhs.true.42:                                 ; preds = %if.end.39
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags43 = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 11
  %43 = load i64, i64* %e_flags43, align 8, !tbaa !35
  %and44 = and i64 %43, 32768
  %cmp45 = icmp ne i64 %and44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true.42
  %44 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @logsender(%struct.envelope* %44, i8* null)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %land.lhs.true.42, %if.end.39
  %45 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags49 = getelementptr inbounds %struct.envelope, %struct.envelope* %45, i32 0, i32 11
  %46 = load i64, i64* %e_flags49, align 8, !tbaa !35
  %and50 = and i64 %46, -32769
  store i64 %and50, i64* %e_flags49, align 8, !tbaa !35
  %47 = load i8*, i8** @StatFile, align 8, !tbaa !1
  call void @poststats(i8* %47)
  %call51 = call i64 @curtime()
  store i64 %call51, i64* %now, align 8, !tbaa !25
  %48 = load i64, i64* %now, align 8, !tbaa !25
  %49 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ctime = getelementptr inbounds %struct.envelope, %struct.envelope* %49, i32 0, i32 2
  %50 = load i64, i64* %e_ctime, align 8, !tbaa !16
  %51 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass = getelementptr inbounds %struct.envelope, %struct.envelope* %51, i32 0, i32 18
  %52 = load i16, i16* %e_timeoutclass, align 2, !tbaa !38
  %idxprom = sext i16 %52 to i64
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 18), i32 0, i64 %idxprom
  %53 = load i64, i64* %arrayidx, align 8, !tbaa !25
  %add = add nsw i64 %50, %53
  %cmp52 = icmp sge i64 %48, %add
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.48
  store i32 1, i32* %msg_timeout, align 4, !tbaa !14
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.48
  %54 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag = getelementptr inbounds %struct.envelope, %struct.envelope* %54, i32 0, i32 51
  %55 = load i32, i32* %e_dlvr_flag, align 4, !tbaa !39
  %and56 = and i32 %55, 2
  %cmp57 = icmp ne i32 %and56, 0
  br i1 %cmp57, label %land.lhs.true.59, label %if.else

land.lhs.true.59:                                 ; preds = %if.end.55
  %56 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by = getelementptr inbounds %struct.envelope, %struct.envelope* %56, i32 0, i32 50
  %57 = load i64, i64* %e_deliver_by, align 8, !tbaa !40
  %cmp60 = icmp sgt i64 %57, 0
  br i1 %cmp60, label %land.lhs.true.62, label %if.else

land.lhs.true.62:                                 ; preds = %land.lhs.true.59
  %58 = load i64, i64* %now, align 8, !tbaa !25
  %59 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ctime63 = getelementptr inbounds %struct.envelope, %struct.envelope* %59, i32 0, i32 2
  %60 = load i64, i64* %e_ctime63, align 8, !tbaa !16
  %61 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by64 = getelementptr inbounds %struct.envelope, %struct.envelope* %61, i32 0, i32 50
  %62 = load i64, i64* %e_deliver_by64, align 8, !tbaa !40
  %add65 = add nsw i64 %60, %62
  %cmp66 = icmp sge i64 %58, %add65
  br i1 %cmp66, label %land.lhs.true.68, label %if.else

land.lhs.true.68:                                 ; preds = %land.lhs.true.62
  %63 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags69 = getelementptr inbounds %struct.envelope, %struct.envelope* %63, i32 0, i32 11
  %64 = load i64, i64* %e_flags69, align 8, !tbaa !35
  %and70 = and i64 %64, 128
  %cmp71 = icmp ne i64 %and70, 0
  br i1 %cmp71, label %if.else, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.68
  store i32 4, i32* %msg_timeout, align 4, !tbaa !14
  %65 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags74 = getelementptr inbounds %struct.envelope, %struct.envelope* %65, i32 0, i32 11
  %66 = load i64, i64* %e_flags74, align 8, !tbaa !35
  %or = or i64 %66, 40
  store i64 %or, i64* %e_flags74, align 8, !tbaa !35
  br label %if.end.89

if.else:                                          ; preds = %land.lhs.true.68, %land.lhs.true.62, %land.lhs.true.59, %if.end.55
  %67 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass75 = getelementptr inbounds %struct.envelope, %struct.envelope* %67, i32 0, i32 18
  %68 = load i16, i16* %e_timeoutclass75, align 2, !tbaa !38
  %idxprom76 = sext i16 %68 to i64
  %arrayidx77 = getelementptr inbounds [8 x i64], [8 x i64]* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 18), i32 0, i64 %idxprom76
  %69 = load i64, i64* %arrayidx77, align 8, !tbaa !25
  %cmp78 = icmp eq i64 %69, -1
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.88

land.lhs.true.80:                                 ; preds = %if.else
  %70 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags81 = getelementptr inbounds %struct.envelope, %struct.envelope* %70, i32 0, i32 11
  %71 = load i64, i64* %e_flags81, align 8, !tbaa !35
  %and82 = and i64 %71, 128
  %cmp83 = icmp ne i64 %and82, 0
  br i1 %cmp83, label %if.end.88, label %if.then.85

if.then.85:                                       ; preds = %land.lhs.true.80
  store i32 2, i32* %msg_timeout, align 4, !tbaa !14
  %72 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags86 = getelementptr inbounds %struct.envelope, %struct.envelope* %72, i32 0, i32 11
  %73 = load i64, i64* %e_flags86, align 8, !tbaa !35
  %or87 = or i64 %73, 40
  store i64 %or87, i64* %e_flags86, align 8, !tbaa !35
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %land.lhs.true.80, %if.else
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.73
  %74 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags90 = getelementptr inbounds %struct.envelope, %struct.envelope* %74, i32 0, i32 11
  %75 = load i64, i64* %e_flags90, align 8, !tbaa !35
  %and91 = and i64 %75, -2049
  store i64 %and91, i64* %e_flags90, align 8, !tbaa !35
  %76 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue92 = getelementptr inbounds %struct.envelope, %struct.envelope* %76, i32 0, i32 7
  %77 = load %struct.address*, %struct.address** %e_sendqueue92, align 8, !tbaa !37
  store %struct.address* %77, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.89
  %78 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp93 = icmp ne %struct.address* %78, null
  br i1 %cmp93, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %79 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state = getelementptr inbounds %struct.address, %struct.address* %79, i32 0, i32 21
  %80 = load i16, i16* %q_state, align 2, !tbaa !41
  %conv95 = sext i16 %80 to i32
  %cmp96 = icmp eq i32 %conv95, 0
  br i1 %cmp96, label %if.then.112, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %81 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state98 = getelementptr inbounds %struct.address, %struct.address* %81, i32 0, i32 21
  %82 = load i16, i16* %q_state98, align 2, !tbaa !41
  %conv99 = sext i16 %82 to i32
  %cmp100 = icmp eq i32 %conv99, 3
  br i1 %cmp100, label %if.then.112, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false
  %83 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state103 = getelementptr inbounds %struct.address, %struct.address* %83, i32 0, i32 21
  %84 = load i16, i16* %q_state103, align 2, !tbaa !41
  %conv104 = sext i16 %84 to i32
  %cmp105 = icmp eq i32 %conv104, 4
  br i1 %cmp105, label %if.then.112, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %lor.lhs.false.102
  %85 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state108 = getelementptr inbounds %struct.address, %struct.address* %85, i32 0, i32 21
  %86 = load i16, i16* %q_state108, align 2, !tbaa !41
  %conv109 = sext i16 %86 to i32
  %cmp110 = icmp eq i32 %conv109, 5
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %lor.lhs.false.107, %lor.lhs.false.102, %lor.lhs.false, %for.body
  store i32 1, i32* %queueit, align 4, !tbaa !14
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %lor.lhs.false.107
  %87 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %87, i32 0, i32 5
  %88 = load i64, i64* %q_flags, align 8, !tbaa !42
  %and114 = and i64 %88, 128
  %cmp115 = icmp ne i64 %and114, 0
  br i1 %cmp115, label %land.lhs.true.117, label %if.else.162

land.lhs.true.117:                                ; preds = %if.end.113
  %89 = load i32, i32* %msg_timeout, align 4, !tbaa !14
  %and118 = and i32 %89, 15
  %cmp119 = icmp ne i32 %and118, 0
  br i1 %cmp119, label %land.lhs.true.121, label %lor.lhs.false.141

land.lhs.true.121:                                ; preds = %land.lhs.true.117
  %90 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state122 = getelementptr inbounds %struct.address, %struct.address* %90, i32 0, i32 21
  %91 = load i16, i16* %q_state122, align 2, !tbaa !41
  %conv123 = sext i16 %91 to i32
  %cmp124 = icmp eq i32 %conv123, 0
  br i1 %cmp124, label %if.then.150, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %land.lhs.true.121
  %92 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state127 = getelementptr inbounds %struct.address, %struct.address* %92, i32 0, i32 21
  %93 = load i16, i16* %q_state127, align 2, !tbaa !41
  %conv128 = sext i16 %93 to i32
  %cmp129 = icmp eq i32 %conv128, 3
  br i1 %cmp129, label %if.then.150, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %lor.lhs.false.126
  %94 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state132 = getelementptr inbounds %struct.address, %struct.address* %94, i32 0, i32 21
  %95 = load i16, i16* %q_state132, align 2, !tbaa !41
  %conv133 = sext i16 %95 to i32
  %cmp134 = icmp eq i32 %conv133, 4
  br i1 %cmp134, label %if.then.150, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.131
  %96 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state137 = getelementptr inbounds %struct.address, %struct.address* %96, i32 0, i32 21
  %97 = load i16, i16* %q_state137, align 2, !tbaa !41
  %conv138 = sext i16 %97 to i32
  %cmp139 = icmp eq i32 %conv138, 5
  br i1 %cmp139, label %if.then.150, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %lor.lhs.false.136, %land.lhs.true.117
  %98 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state142 = getelementptr inbounds %struct.address, %struct.address* %98, i32 0, i32 21
  %99 = load i16, i16* %q_state142, align 2, !tbaa !41
  %conv143 = sext i16 %99 to i32
  %cmp144 = icmp eq i32 %conv143, 2
  br i1 %cmp144, label %if.then.150, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false.141
  %100 = load i32, i32* %msg_timeout, align 4, !tbaa !14
  %and147 = and i32 %100, 6
  %cmp148 = icmp ne i32 %and147, 0
  br i1 %cmp148, label %if.then.150, label %if.else.162

if.then.150:                                      ; preds = %lor.lhs.false.146, %lor.lhs.false.141, %lor.lhs.false.136, %lor.lhs.false.131, %lor.lhs.false.126, %land.lhs.true.121
  store i32 1, i32* %failure_return, align 4, !tbaa !14
  %101 = load i32, i32* %done, align 4, !tbaa !14
  %tobool151 = icmp ne i32 %101, 0
  br i1 %tobool151, label %if.end.161, label %land.lhs.true.152

land.lhs.true.152:                                ; preds = %if.then.150
  %102 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_owner = getelementptr inbounds %struct.address, %struct.address* %102, i32 0, i32 12
  %103 = load i8*, i8** %q_owner, align 8, !tbaa !43
  %cmp153 = icmp eq i8* %103, null
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.161

land.lhs.true.155:                                ; preds = %land.lhs.true.152
  %104 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %104, i32 0, i32 4
  %call156 = call i32 @emptyaddr(%struct.address* %e_from)
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.end.161, label %if.then.158

if.then.158:                                      ; preds = %land.lhs.true.155
  %105 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from159 = getelementptr inbounds %struct.envelope, %struct.envelope* %105, i32 0, i32 4
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %e_from159, i32 0, i32 0
  %106 = load i8*, i8** %q_paddr, align 8, !tbaa !44
  %107 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errorqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %107, i32 0, i32 8
  %108 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call160 = call i32 @sendtolist(i8* %106, %struct.address* null, %struct.address** %e_errorqueue, i32 0, %struct.envelope* %108)
  store i32 1, i32* %done, align 4, !tbaa !14
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.158, %land.lhs.true.155, %land.lhs.true.152, %if.then.150
  br label %if.end.193

if.else.162:                                      ; preds = %lor.lhs.false.146, %if.end.113
  %109 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags163 = getelementptr inbounds %struct.address, %struct.address* %109, i32 0, i32 5
  %110 = load i64, i64* %q_flags163, align 8, !tbaa !42
  %and164 = and i64 %110, 64
  %cmp165 = icmp ne i64 %and164, 0
  br i1 %cmp165, label %land.lhs.true.167, label %lor.lhs.false.181

land.lhs.true.167:                                ; preds = %if.else.162
  %111 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state168 = getelementptr inbounds %struct.address, %struct.address* %111, i32 0, i32 21
  %112 = load i16, i16* %q_state168, align 2, !tbaa !41
  %conv169 = sext i16 %112 to i32
  %cmp170 = icmp eq i32 %conv169, 1
  br i1 %cmp170, label %land.lhs.true.172, label %lor.lhs.false.176

land.lhs.true.172:                                ; preds = %land.lhs.true.167
  %113 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %113, i32 0, i32 4
  %114 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !45
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %114, i32 0, i32 5
  %arrayidx173 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %115 = load i32, i32* %arrayidx173, align 4, !tbaa !14
  %and174 = and i32 %115, 4096
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %if.then.191, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %land.lhs.true.172, %land.lhs.true.167
  %116 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags177 = getelementptr inbounds %struct.address, %struct.address* %116, i32 0, i32 5
  %117 = load i64, i64* %q_flags177, align 8, !tbaa !42
  %and178 = and i64 %117, 7168
  %cmp179 = icmp ne i64 %and178, 0
  br i1 %cmp179, label %if.then.191, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %lor.lhs.false.176, %if.else.162
  %118 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags182 = getelementptr inbounds %struct.address, %struct.address* %118, i32 0, i32 5
  %119 = load i64, i64* %q_flags182, align 8, !tbaa !42
  %and183 = and i64 %119, 32768
  %cmp184 = icmp ne i64 %and183, 0
  br i1 %cmp184, label %if.then.191, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %lor.lhs.false.181
  %120 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags187 = getelementptr inbounds %struct.address, %struct.address* %120, i32 0, i32 5
  %121 = load i64, i64* %q_flags187, align 8, !tbaa !42
  %and188 = and i64 %121, 131072
  %cmp189 = icmp ne i64 %and188, 0
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %lor.lhs.false.186, %lor.lhs.false.181, %lor.lhs.false.176, %land.lhs.true.172
  store i32 1, i32* %success_return, align 4, !tbaa !14
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.191, %lor.lhs.false.186
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.end.161
  br label %for.inc

for.inc:                                          ; preds = %if.end.193
  %122 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next = getelementptr inbounds %struct.address, %struct.address* %122, i32 0, i32 10
  %123 = load %struct.address*, %struct.address** %q_next, align 8, !tbaa !46
  store %struct.address* %123, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %124 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_class = getelementptr inbounds %struct.envelope, %struct.envelope* %124, i32 0, i32 13
  %125 = load i16, i16* %e_class, align 2, !tbaa !47
  %conv194 = sext i16 %125 to i32
  %cmp195 = icmp slt i32 %conv194, 0
  br i1 %cmp195, label %if.then.197, label %if.end.200

if.then.197:                                      ; preds = %for.end
  %126 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags198 = getelementptr inbounds %struct.envelope, %struct.envelope* %126, i32 0, i32 11
  %127 = load i64, i64* %e_flags198, align 8, !tbaa !35
  %or199 = or i64 %127, 4
  store i64 %or199, i64* %e_flags198, align 8, !tbaa !35
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.197, %for.end
  %128 = load i32, i32* %queueit, align 4, !tbaa !14
  %tobool201 = icmp ne i32 %128, 0
  br i1 %tobool201, label %if.else.203, label %if.then.202

if.then.202:                                      ; preds = %if.end.200
  br label %if.end.505

if.else.203:                                      ; preds = %if.end.200
  %129 = load i32, i32* %msg_timeout, align 4, !tbaa !14
  %and204 = and i32 %129, 15
  %cmp205 = icmp ne i32 %and204, 0
  br i1 %cmp205, label %if.then.207, label %if.else.280

if.then.207:                                      ; preds = %if.else.203
  %130 = load i32, i32* %failure_return, align 4, !tbaa !14
  %tobool208 = icmp ne i32 %130, 0
  br i1 %tobool208, label %if.then.209, label %if.end.228

if.then.209:                                      ; preds = %if.then.207
  %131 = load i32, i32* %msg_timeout, align 4, !tbaa !14
  %cmp210 = icmp eq i32 %131, 4
  br i1 %cmp210, label %if.then.212, label %if.else.215

if.then.212:                                      ; preds = %if.then.209
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %132 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by213 = getelementptr inbounds %struct.envelope, %struct.envelope* %132, i32 0, i32 50
  %133 = load i64, i64* %e_deliver_by213, align 8, !tbaa !40
  %call214 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 2048, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i64 %133)
  br label %if.end.222

if.else.215:                                      ; preds = %if.then.209
  %arraydecay216 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %134 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass217 = getelementptr inbounds %struct.envelope, %struct.envelope* %134, i32 0, i32 18
  %135 = load i16, i16* %e_timeoutclass217, align 2, !tbaa !38
  %idxprom218 = sext i16 %135 to i64
  %arrayidx219 = getelementptr inbounds [8 x i64], [8 x i64]* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 18), i32 0, i64 %idxprom218
  %136 = load i64, i64* %arrayidx219, align 8, !tbaa !25
  %call220 = call i8* @pintvl(i64 %136, i32 0)
  %call221 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay216, i64 2048, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* %call220)
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.215, %if.then.212
  %137 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %137, i32 0, i32 52
  %138 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !30
  %arraydecay223 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call224 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %138, i8* %arraydecay223)
  %139 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %139, i32 0, i32 34
  store i8* %call224, i8** %e_message, align 8, !tbaa !28
  %arraydecay225 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @message(i8* %arraydecay225)
  %140 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags226 = getelementptr inbounds %struct.envelope, %struct.envelope* %140, i32 0, i32 11
  %141 = load i64, i64* %e_flags226, align 8, !tbaa !35
  %or227 = or i64 %141, 8
  store i64 %or227, i64* %e_flags226, align 8, !tbaa !35
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.222, %if.then.207
  %142 = load i32, i32* %msg_timeout, align 4, !tbaa !14
  %cmp229 = icmp eq i32 %142, 4
  br i1 %cmp229, label %if.then.231, label %if.else.234

if.then.231:                                      ; preds = %if.end.228
  %143 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %143, i32 0, i32 32
  %144 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !22
  %145 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by232 = getelementptr inbounds %struct.envelope, %struct.envelope* %145, i32 0, i32 50
  %146 = load i64, i64* %e_deliver_by232, align 8, !tbaa !40
  %call233 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %144, i32 -2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i64 %146)
  br label %if.end.241

if.else.234:                                      ; preds = %if.end.228
  %147 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp235 = getelementptr inbounds %struct.envelope, %struct.envelope* %147, i32 0, i32 32
  %148 = load %struct.sm_file*, %struct.sm_file** %e_xfp235, align 8, !tbaa !22
  %149 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass236 = getelementptr inbounds %struct.envelope, %struct.envelope* %149, i32 0, i32 18
  %150 = load i16, i16* %e_timeoutclass236, align 2, !tbaa !38
  %idxprom237 = sext i16 %150 to i64
  %arrayidx238 = getelementptr inbounds [8 x i64], [8 x i64]* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 18), i32 0, i64 %idxprom237
  %151 = load i64, i64* %arrayidx238, align 8, !tbaa !25
  %call239 = call i8* @pintvl(i64 %151, i32 0)
  %call240 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %148, i32 -2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0), i8* %call239)
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.234, %if.then.231
  %152 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp242 = getelementptr inbounds %struct.envelope, %struct.envelope* %152, i32 0, i32 32
  %153 = load %struct.sm_file*, %struct.sm_file** %e_xfp242, align 8, !tbaa !22
  %call243 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %153, i32 -2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0))
  %154 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue244 = getelementptr inbounds %struct.envelope, %struct.envelope* %154, i32 0, i32 7
  %155 = load %struct.address*, %struct.address** %e_sendqueue244, align 8, !tbaa !37
  store %struct.address* %155, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.277, %if.end.241
  %156 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp246 = icmp ne %struct.address* %156, null
  br i1 %cmp246, label %for.body.248, label %for.end.279

for.body.248:                                     ; preds = %for.cond.245
  %157 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state249 = getelementptr inbounds %struct.address, %struct.address* %157, i32 0, i32 21
  %158 = load i16, i16* %q_state249, align 2, !tbaa !41
  %conv250 = sext i16 %158 to i32
  %cmp251 = icmp eq i32 %conv250, 0
  br i1 %cmp251, label %if.then.268, label %lor.lhs.false.253

lor.lhs.false.253:                                ; preds = %for.body.248
  %159 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state254 = getelementptr inbounds %struct.address, %struct.address* %159, i32 0, i32 21
  %160 = load i16, i16* %q_state254, align 2, !tbaa !41
  %conv255 = sext i16 %160 to i32
  %cmp256 = icmp eq i32 %conv255, 3
  br i1 %cmp256, label %if.then.268, label %lor.lhs.false.258

lor.lhs.false.258:                                ; preds = %lor.lhs.false.253
  %161 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state259 = getelementptr inbounds %struct.address, %struct.address* %161, i32 0, i32 21
  %162 = load i16, i16* %q_state259, align 2, !tbaa !41
  %conv260 = sext i16 %162 to i32
  %cmp261 = icmp eq i32 %conv260, 4
  br i1 %cmp261, label %if.then.268, label %lor.lhs.false.263

lor.lhs.false.263:                                ; preds = %lor.lhs.false.258
  %163 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state264 = getelementptr inbounds %struct.address, %struct.address* %163, i32 0, i32 21
  %164 = load i16, i16* %q_state264, align 2, !tbaa !41
  %conv265 = sext i16 %164 to i32
  %cmp266 = icmp eq i32 %conv265, 5
  br i1 %cmp266, label %if.then.268, label %if.end.276

if.then.268:                                      ; preds = %lor.lhs.false.263, %lor.lhs.false.258, %lor.lhs.false.253, %for.body.248
  %165 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state269 = getelementptr inbounds %struct.address, %struct.address* %165, i32 0, i32 21
  store i16 2, i16* %q_state269, align 2, !tbaa !41
  %166 = load i32, i32* %msg_timeout, align 4, !tbaa !14
  %cmp270 = icmp eq i32 %166, 4
  br i1 %cmp270, label %if.then.272, label %if.else.273

if.then.272:                                      ; preds = %if.then.268
  %167 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_status = getelementptr inbounds %struct.address, %struct.address* %167, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8** %q_status, align 8, !tbaa !48
  br label %if.end.275

if.else.273:                                      ; preds = %if.then.268
  %168 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_status274 = getelementptr inbounds %struct.address, %struct.address* %168, i32 0, i32 17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8** %q_status274, align 8, !tbaa !48
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.273, %if.then.272
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %lor.lhs.false.263
  br label %for.inc.277

for.inc.277:                                      ; preds = %if.end.276
  %169 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next278 = getelementptr inbounds %struct.address, %struct.address* %169, i32 0, i32 10
  %170 = load %struct.address*, %struct.address** %q_next278, align 8, !tbaa !46
  store %struct.address* %170, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.245

for.end.279:                                      ; preds = %for.cond.245
  br label %if.end.504

if.else.280:                                      ; preds = %if.else.203
  %171 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass281 = getelementptr inbounds %struct.envelope, %struct.envelope* %171, i32 0, i32 18
  %172 = load i16, i16* %e_timeoutclass281, align 2, !tbaa !38
  %idxprom282 = sext i16 %172 to i64
  %arrayidx283 = getelementptr inbounds [8 x i64], [8 x i64]* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 19), i32 0, i64 %idxprom282
  %173 = load i64, i64* %arrayidx283, align 8, !tbaa !25
  %cmp284 = icmp sgt i64 %173, 0
  br i1 %cmp284, label %land.lhs.true.286, label %if.else.295

land.lhs.true.286:                                ; preds = %if.else.280
  %174 = load i64, i64* %now, align 8, !tbaa !25
  %175 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ctime287 = getelementptr inbounds %struct.envelope, %struct.envelope* %175, i32 0, i32 2
  %176 = load i64, i64* %e_ctime287, align 8, !tbaa !16
  %177 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass288 = getelementptr inbounds %struct.envelope, %struct.envelope* %177, i32 0, i32 18
  %178 = load i16, i16* %e_timeoutclass288, align 2, !tbaa !38
  %idxprom289 = sext i16 %178 to i64
  %arrayidx290 = getelementptr inbounds [8 x i64], [8 x i64]* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 19), i32 0, i64 %idxprom289
  %179 = load i64, i64* %arrayidx290, align 8, !tbaa !25
  %add291 = add nsw i64 %176, %179
  %cmp292 = icmp sge i64 %174, %add291
  br i1 %cmp292, label %if.then.294, label %if.else.295

if.then.294:                                      ; preds = %land.lhs.true.286
  store i32 16, i32* %msg_timeout, align 4, !tbaa !14
  br label %if.end.312

if.else.295:                                      ; preds = %land.lhs.true.286, %if.else.280
  %180 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dlvr_flag296 = getelementptr inbounds %struct.envelope, %struct.envelope* %180, i32 0, i32 51
  %181 = load i32, i32* %e_dlvr_flag296, align 4, !tbaa !39
  %and297 = and i32 %181, 1
  %cmp298 = icmp ne i32 %and297, 0
  br i1 %cmp298, label %land.lhs.true.300, label %if.end.311

land.lhs.true.300:                                ; preds = %if.else.295
  %182 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by301 = getelementptr inbounds %struct.envelope, %struct.envelope* %182, i32 0, i32 50
  %183 = load i64, i64* %e_deliver_by301, align 8, !tbaa !40
  %cmp302 = icmp sgt i64 %183, 0
  br i1 %cmp302, label %land.lhs.true.304, label %if.end.311

land.lhs.true.304:                                ; preds = %land.lhs.true.300
  %184 = load i64, i64* %now, align 8, !tbaa !25
  %185 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ctime305 = getelementptr inbounds %struct.envelope, %struct.envelope* %185, i32 0, i32 2
  %186 = load i64, i64* %e_ctime305, align 8, !tbaa !16
  %187 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by306 = getelementptr inbounds %struct.envelope, %struct.envelope* %187, i32 0, i32 50
  %188 = load i64, i64* %e_deliver_by306, align 8, !tbaa !40
  %add307 = add nsw i64 %186, %188
  %cmp308 = icmp sge i64 %184, %add307
  br i1 %cmp308, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %land.lhs.true.304
  store i32 32, i32* %msg_timeout, align 4, !tbaa !14
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.310, %land.lhs.true.304, %land.lhs.true.300, %if.else.295
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %if.then.294
  %189 = load i32, i32* %msg_timeout, align 4, !tbaa !14
  %and313 = and i32 %189, 240
  %cmp314 = icmp ne i32 %and313, 0
  br i1 %cmp314, label %if.then.316, label %if.end.503

if.then.316:                                      ; preds = %if.end.312
  %190 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags317 = getelementptr inbounds %struct.envelope, %struct.envelope* %190, i32 0, i32 11
  %191 = load i64, i64* %e_flags317, align 8, !tbaa !35
  %and318 = and i64 %191, 1152
  %cmp319 = icmp ne i64 %and318, 0
  br i1 %cmp319, label %if.end.458, label %land.lhs.true.321

land.lhs.true.321:                                ; preds = %if.then.316
  %192 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_class322 = getelementptr inbounds %struct.envelope, %struct.envelope* %192, i32 0, i32 13
  %193 = load i16, i16* %e_class322, align 2, !tbaa !47
  %conv323 = sext i16 %193 to i32
  %cmp324 = icmp sge i32 %conv323, 0
  br i1 %cmp324, label %land.lhs.true.326, label %if.end.458

land.lhs.true.326:                                ; preds = %land.lhs.true.321
  %194 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from327 = getelementptr inbounds %struct.envelope, %struct.envelope* %194, i32 0, i32 4
  %q_paddr328 = getelementptr inbounds %struct.address, %struct.address* %e_from327, i32 0, i32 0
  %195 = load i8*, i8** %q_paddr328, align 8, !tbaa !44
  %cmp329 = icmp ne i8* %195, null
  br i1 %cmp329, label %land.lhs.true.331, label %if.end.458

land.lhs.true.331:                                ; preds = %land.lhs.true.326
  %196 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %196) #1
  %197 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %197) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.332, label %cond.false

land.lhs.true.332:                                ; preds = %land.lhs.true.331
  store i64 2, i64* %__s2_len, align 8, !tbaa !25
  %198 = load i64, i64* %__s2_len, align 8, !tbaa !25
  %cmp333 = icmp ult i64 %198, 4
  br i1 %cmp333, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.332
  %199 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %199) #1
  %200 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from336 = getelementptr inbounds %struct.envelope, %struct.envelope* %200, i32 0, i32 4
  %q_paddr337 = getelementptr inbounds %struct.address, %struct.address* %e_from336, i32 0, i32 0
  %201 = load i8*, i8** %q_paddr337, align 8, !tbaa !44
  store i8* %201, i8** %__s1, align 8, !tbaa !1
  %202 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %202) #1
  %203 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx339 = getelementptr inbounds i8, i8* %203, i64 0
  %204 = load i8, i8* %arrayidx339, align 1, !tbaa !27
  %conv340 = zext i8 %204 to i32
  %205 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !27
  %conv341 = zext i8 %205 to i32
  %sub = sub nsw i32 %conv340, %conv341
  store i32 %sub, i32* %__result, align 4, !tbaa !14
  %206 = load i64, i64* %__s2_len, align 8, !tbaa !25
  %cmp342 = icmp ugt i64 %206, 0
  br i1 %cmp342, label %land.lhs.true.344, label %if.end.374

land.lhs.true.344:                                ; preds = %cond.true
  %207 = load i32, i32* %__result, align 4, !tbaa !14
  %cmp345 = icmp eq i32 %207, 0
  br i1 %cmp345, label %if.then.347, label %if.end.374

if.then.347:                                      ; preds = %land.lhs.true.344
  %208 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx348 = getelementptr inbounds i8, i8* %208, i64 1
  %209 = load i8, i8* %arrayidx348, align 1, !tbaa !27
  %conv349 = zext i8 %209 to i32
  %210 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !27
  %conv350 = zext i8 %210 to i32
  %sub351 = sub nsw i32 %conv349, %conv350
  store i32 %sub351, i32* %__result, align 4, !tbaa !14
  %211 = load i64, i64* %__s2_len, align 8, !tbaa !25
  %cmp352 = icmp ugt i64 %211, 1
  br i1 %cmp352, label %land.lhs.true.354, label %if.end.373

land.lhs.true.354:                                ; preds = %if.then.347
  %212 = load i32, i32* %__result, align 4, !tbaa !14
  %cmp355 = icmp eq i32 %212, 0
  br i1 %cmp355, label %if.then.357, label %if.end.373

if.then.357:                                      ; preds = %land.lhs.true.354
  %213 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx358 = getelementptr inbounds i8, i8* %213, i64 2
  %214 = load i8, i8* %arrayidx358, align 1, !tbaa !27
  %conv359 = zext i8 %214 to i32
  %215 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !27
  %conv360 = zext i8 %215 to i32
  %sub361 = sub nsw i32 %conv359, %conv360
  store i32 %sub361, i32* %__result, align 4, !tbaa !14
  %216 = load i64, i64* %__s2_len, align 8, !tbaa !25
  %cmp362 = icmp ugt i64 %216, 2
  br i1 %cmp362, label %land.lhs.true.364, label %if.end.372

land.lhs.true.364:                                ; preds = %if.then.357
  %217 = load i32, i32* %__result, align 4, !tbaa !14
  %cmp365 = icmp eq i32 %217, 0
  br i1 %cmp365, label %if.then.367, label %if.end.372

if.then.367:                                      ; preds = %land.lhs.true.364
  %218 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx368 = getelementptr inbounds i8, i8* %218, i64 3
  %219 = load i8, i8* %arrayidx368, align 1, !tbaa !27
  %conv369 = zext i8 %219 to i32
  %220 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i64 3), align 1, !tbaa !27
  %conv370 = zext i8 %220 to i32
  %sub371 = sub nsw i32 %conv369, %conv370
  store i32 %sub371, i32* %__result, align 4, !tbaa !14
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.367, %land.lhs.true.364, %if.then.357
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %land.lhs.true.354, %if.then.347
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %land.lhs.true.344, %cond.true
  %221 = load i32, i32* %__result, align 4, !tbaa !14
  store i32 %221, i32* %tmp375, !tbaa !14
  %222 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = load i32, i32* %tmp375, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.332, %land.lhs.true.331
  %225 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from376 = getelementptr inbounds %struct.envelope, %struct.envelope* %225, i32 0, i32 4
  %q_paddr377 = getelementptr inbounds %struct.address, %struct.address* %e_from376, i32 0, i32 0
  %226 = load i8*, i8** %q_paddr377, align 8, !tbaa !44
  %call378 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.374
  %cond = phi i32 [ %224, %if.end.374 ], [ %call378, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !14
  %227 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #1
  %228 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %229 = load i32, i32* %tmp, !tbaa !14
  %cmp379 = icmp ne i32 %229, 0
  br i1 %cmp379, label %land.lhs.true.381, label %if.end.458

land.lhs.true.381:                                ; preds = %cond.end
  %230 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from382 = getelementptr inbounds %struct.envelope, %struct.envelope* %230, i32 0, i32 4
  %q_paddr383 = getelementptr inbounds %struct.address, %struct.address* %e_from382, i32 0, i32 0
  %231 = load i8*, i8** %q_paddr383, align 8, !tbaa !44
  %call384 = call i32 @sm_strncasecmp(i8* %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i64 6)
  %cmp385 = icmp ne i32 %call384, 0
  br i1 %cmp385, label %land.lhs.true.387, label %if.end.458

land.lhs.true.387:                                ; preds = %land.lhs.true.381
  %232 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from388 = getelementptr inbounds %struct.envelope, %struct.envelope* %232, i32 0, i32 4
  %q_paddr389 = getelementptr inbounds %struct.address, %struct.address* %e_from388, i32 0, i32 0
  %233 = load i8*, i8** %q_paddr389, align 8, !tbaa !44
  %call390 = call i64 @strlen(i8* %233) #5
  %cmp391 = icmp ule i64 %call390, 8
  br i1 %cmp391, label %if.then.404, label %lor.lhs.false.393

lor.lhs.false.393:                                ; preds = %land.lhs.true.387
  %234 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from394 = getelementptr inbounds %struct.envelope, %struct.envelope* %234, i32 0, i32 4
  %q_paddr395 = getelementptr inbounds %struct.address, %struct.address* %e_from394, i32 0, i32 0
  %235 = load i8*, i8** %q_paddr395, align 8, !tbaa !44
  %call396 = call i64 @strlen(i8* %235) #5
  %sub397 = sub i64 %call396, 8
  %236 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from398 = getelementptr inbounds %struct.envelope, %struct.envelope* %236, i32 0, i32 4
  %q_paddr399 = getelementptr inbounds %struct.address, %struct.address* %e_from398, i32 0, i32 0
  %237 = load i8*, i8** %q_paddr399, align 8, !tbaa !44
  %arrayidx400 = getelementptr inbounds i8, i8* %237, i64 %sub397
  %call401 = call i32 @sm_strcasecmp(i8* %arrayidx400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  %cmp402 = icmp ne i32 %call401, 0
  br i1 %cmp402, label %if.then.404, label %if.end.458

if.then.404:                                      ; preds = %lor.lhs.false.393, %land.lhs.true.387
  %238 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue405 = getelementptr inbounds %struct.envelope, %struct.envelope* %238, i32 0, i32 7
  %239 = load %struct.address*, %struct.address** %e_sendqueue405, align 8, !tbaa !37
  store %struct.address* %239, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.406

for.cond.406:                                     ; preds = %for.inc.455, %if.then.404
  %240 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp407 = icmp ne %struct.address* %240, null
  br i1 %cmp407, label %for.body.409, label %for.end.457

for.body.409:                                     ; preds = %for.cond.406
  %241 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state410 = getelementptr inbounds %struct.address, %struct.address* %241, i32 0, i32 21
  %242 = load i16, i16* %q_state410, align 2, !tbaa !41
  %conv411 = sext i16 %242 to i32
  %cmp412 = icmp eq i32 %conv411, 0
  br i1 %cmp412, label %if.then.429, label %lor.lhs.false.414

lor.lhs.false.414:                                ; preds = %for.body.409
  %243 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state415 = getelementptr inbounds %struct.address, %struct.address* %243, i32 0, i32 21
  %244 = load i16, i16* %q_state415, align 2, !tbaa !41
  %conv416 = sext i16 %244 to i32
  %cmp417 = icmp eq i32 %conv416, 3
  br i1 %cmp417, label %if.then.429, label %lor.lhs.false.419

lor.lhs.false.419:                                ; preds = %lor.lhs.false.414
  %245 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state420 = getelementptr inbounds %struct.address, %struct.address* %245, i32 0, i32 21
  %246 = load i16, i16* %q_state420, align 2, !tbaa !41
  %conv421 = sext i16 %246 to i32
  %cmp422 = icmp eq i32 %conv421, 4
  br i1 %cmp422, label %if.then.429, label %lor.lhs.false.424

lor.lhs.false.424:                                ; preds = %lor.lhs.false.419
  %247 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state425 = getelementptr inbounds %struct.address, %struct.address* %247, i32 0, i32 21
  %248 = load i16, i16* %q_state425, align 2, !tbaa !41
  %conv426 = sext i16 %248 to i32
  %cmp427 = icmp eq i32 %conv426, 5
  br i1 %cmp427, label %if.then.429, label %if.end.454

if.then.429:                                      ; preds = %lor.lhs.false.424, %lor.lhs.false.419, %lor.lhs.false.414, %for.body.409
  %249 = load i32, i32* %msg_timeout, align 4, !tbaa !14
  %cmp430 = icmp eq i32 %249, 32
  br i1 %cmp430, label %land.lhs.true.432, label %if.end.445

land.lhs.true.432:                                ; preds = %if.then.429
  %250 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags433 = getelementptr inbounds %struct.address, %struct.address* %250, i32 0, i32 5
  %251 = load i64, i64* %q_flags433, align 8, !tbaa !42
  %and434 = and i64 %251, 256
  %cmp435 = icmp ne i64 %and434, 0
  br i1 %cmp435, label %if.then.442, label %lor.lhs.false.437

lor.lhs.false.437:                                ; preds = %land.lhs.true.432
  %252 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags438 = getelementptr inbounds %struct.address, %struct.address* %252, i32 0, i32 5
  %253 = load i64, i64* %q_flags438, align 8, !tbaa !42
  %and439 = and i64 %253, 512
  %cmp440 = icmp ne i64 %and439, 0
  br i1 %cmp440, label %if.end.445, label %if.then.442

if.then.442:                                      ; preds = %lor.lhs.false.437, %land.lhs.true.432
  %254 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags443 = getelementptr inbounds %struct.address, %struct.address* %254, i32 0, i32 5
  %255 = load i64, i64* %q_flags443, align 8, !tbaa !42
  %or444 = or i64 %255, 65536
  store i64 %or444, i64* %q_flags443, align 8, !tbaa !42
  store i32 1, i32* %delay_return, align 4, !tbaa !14
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.442, %lor.lhs.false.437, %if.then.429
  %256 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags446 = getelementptr inbounds %struct.address, %struct.address* %256, i32 0, i32 5
  %257 = load i64, i64* %q_flags446, align 8, !tbaa !42
  %and447 = and i64 %257, 256
  %cmp448 = icmp ne i64 %and447, 0
  br i1 %cmp448, label %if.then.450, label %if.end.453

if.then.450:                                      ; preds = %if.end.445
  %258 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags451 = getelementptr inbounds %struct.address, %struct.address* %258, i32 0, i32 5
  %259 = load i64, i64* %q_flags451, align 8, !tbaa !42
  %or452 = or i64 %259, 8192
  store i64 %or452, i64* %q_flags451, align 8, !tbaa !42
  store i32 1, i32* %delay_return, align 4, !tbaa !14
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.450, %if.end.445
  br label %if.end.454

if.end.454:                                       ; preds = %if.end.453, %lor.lhs.false.424
  br label %for.inc.455

for.inc.455:                                      ; preds = %if.end.454
  %260 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next456 = getelementptr inbounds %struct.address, %struct.address* %260, i32 0, i32 10
  %261 = load %struct.address*, %struct.address** %q_next456, align 8, !tbaa !46
  store %struct.address* %261, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.406

for.end.457:                                      ; preds = %for.cond.406
  br label %if.end.458

if.end.458:                                       ; preds = %for.end.457, %lor.lhs.false.393, %land.lhs.true.381, %cond.end, %land.lhs.true.326, %land.lhs.true.321, %if.then.316
  %262 = load i32, i32* %delay_return, align 4, !tbaa !14
  %tobool459 = icmp ne i32 %262, 0
  br i1 %tobool459, label %if.then.460, label %if.end.482

if.then.460:                                      ; preds = %if.end.458
  %263 = load i32, i32* %msg_timeout, align 4, !tbaa !14
  %cmp461 = icmp eq i32 %263, 32
  br i1 %cmp461, label %if.then.463, label %if.else.467

if.then.463:                                      ; preds = %if.then.460
  %arraydecay464 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %264 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by465 = getelementptr inbounds %struct.envelope, %struct.envelope* %264, i32 0, i32 50
  %265 = load i64, i64* %e_deliver_by465, align 8, !tbaa !40
  %call466 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay464, i64 2048, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0), i64 %265)
  br label %if.end.474

if.else.467:                                      ; preds = %if.then.460
  %arraydecay468 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %266 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass469 = getelementptr inbounds %struct.envelope, %struct.envelope* %266, i32 0, i32 18
  %267 = load i16, i16* %e_timeoutclass469, align 2, !tbaa !38
  %idxprom470 = sext i16 %267 to i64
  %arrayidx471 = getelementptr inbounds [8 x i64], [8 x i64]* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 19), i32 0, i64 %idxprom470
  %268 = load i64, i64* %arrayidx471, align 8, !tbaa !25
  %call472 = call i8* @pintvl(i64 %268, i32 0)
  %call473 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay468, i64 2048, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i8* %call472)
  br label %if.end.474

if.end.474:                                       ; preds = %if.else.467, %if.then.463
  %269 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool475 = getelementptr inbounds %struct.envelope, %struct.envelope* %269, i32 0, i32 52
  %270 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool475, align 8, !tbaa !30
  %arraydecay476 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call477 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %270, i8* %arraydecay476)
  %271 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message478 = getelementptr inbounds %struct.envelope, %struct.envelope* %271, i32 0, i32 34
  store i8* %call477, i8** %e_message478, align 8, !tbaa !28
  %arraydecay479 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @message(i8* %arraydecay479)
  %272 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags480 = getelementptr inbounds %struct.envelope, %struct.envelope* %272, i32 0, i32 11
  %273 = load i64, i64* %e_flags480, align 8, !tbaa !35
  %or481 = or i64 %273, 1024
  store i64 %or481, i64* %e_flags480, align 8, !tbaa !35
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.474, %if.end.458
  %274 = load i32, i32* %msg_timeout, align 4, !tbaa !14
  %cmp483 = icmp eq i32 %274, 32
  br i1 %cmp483, label %if.then.485, label %if.else.489

if.then.485:                                      ; preds = %if.end.482
  %275 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp486 = getelementptr inbounds %struct.envelope, %struct.envelope* %275, i32 0, i32 32
  %276 = load %struct.sm_file*, %struct.sm_file** %e_xfp486, align 8, !tbaa !22
  %277 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_deliver_by487 = getelementptr inbounds %struct.envelope, %struct.envelope* %277, i32 0, i32 50
  %278 = load i64, i64* %e_deliver_by487, align 8, !tbaa !40
  %call488 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %276, i32 -2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0), i64 %278)
  br label %if.end.496

if.else.489:                                      ; preds = %if.end.482
  %279 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp490 = getelementptr inbounds %struct.envelope, %struct.envelope* %279, i32 0, i32 32
  %280 = load %struct.sm_file*, %struct.sm_file** %e_xfp490, align 8, !tbaa !22
  %281 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass491 = getelementptr inbounds %struct.envelope, %struct.envelope* %281, i32 0, i32 18
  %282 = load i16, i16* %e_timeoutclass491, align 2, !tbaa !38
  %idxprom492 = sext i16 %282 to i64
  %arrayidx493 = getelementptr inbounds [8 x i64], [8 x i64]* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 19), i32 0, i64 %idxprom492
  %283 = load i64, i64* %arrayidx493, align 8, !tbaa !25
  %call494 = call i8* @pintvl(i64 %283, i32 0)
  %call495 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %280, i32 -2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0), i8* %call494)
  br label %if.end.496

if.end.496:                                       ; preds = %if.else.489, %if.then.485
  %284 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp497 = getelementptr inbounds %struct.envelope, %struct.envelope* %284, i32 0, i32 32
  %285 = load %struct.sm_file*, %struct.sm_file** %e_xfp497, align 8, !tbaa !22
  %286 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass498 = getelementptr inbounds %struct.envelope, %struct.envelope* %286, i32 0, i32 18
  %287 = load i16, i16* %e_timeoutclass498, align 2, !tbaa !38
  %idxprom499 = sext i16 %287 to i64
  %arrayidx500 = getelementptr inbounds [8 x i64], [8 x i64]* getelementptr inbounds (%struct.anon, %struct.anon* @TimeOuts, i32 0, i32 18), i32 0, i64 %idxprom499
  %288 = load i64, i64* %arrayidx500, align 8, !tbaa !25
  %call501 = call i8* @pintvl(i64 %288, i32 0)
  %call502 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %285, i32 -2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i8* %call501)
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.496, %if.end.312
  br label %if.end.504

if.end.504:                                       ; preds = %if.end.503, %for.end.279
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.504, %if.then.202
  %289 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 50), align 1, !tbaa !27
  %conv506 = zext i8 %289 to i32
  %cmp507 = icmp sge i32 %conv506, 2
  br i1 %cmp507, label %land.lhs.true.509, label %if.end.512

land.lhs.true.509:                                ; preds = %if.end.505
  %290 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool510 = icmp ne i32 %290, 0
  br i1 %tobool510, label %if.end.512, label %if.then.511

if.then.511:                                      ; preds = %land.lhs.true.509
  %291 = load i32, i32* %failure_return, align 4, !tbaa !14
  %292 = load i32, i32* %delay_return, align 4, !tbaa !14
  %293 = load i32, i32* %success_return, align 4, !tbaa !14
  %294 = load i32, i32* %queueit, align 4, !tbaa !14
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i32 0, i32 0), i32 %291, i32 %292, i32 %293, i32 %294)
  br label %if.end.512

if.end.512:                                       ; preds = %if.then.511, %land.lhs.true.509, %if.end.505
  %295 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags513 = getelementptr inbounds %struct.envelope, %struct.envelope* %295, i32 0, i32 11
  %296 = load i64, i64* %e_flags513, align 8, !tbaa !35
  %and514 = and i64 %296, 32
  %cmp515 = icmp ne i64 %and514, 0
  br i1 %cmp515, label %land.lhs.true.517, label %if.end.545

land.lhs.true.517:                                ; preds = %if.end.512
  %297 = load i32, i32* %failure_return, align 4, !tbaa !14
  %tobool518 = icmp ne i32 %297, 0
  br i1 %tobool518, label %if.end.545, label %if.then.519

if.then.519:                                      ; preds = %land.lhs.true.517
  %298 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue520 = getelementptr inbounds %struct.envelope, %struct.envelope* %298, i32 0, i32 7
  %299 = load %struct.address*, %struct.address** %e_sendqueue520, align 8, !tbaa !37
  store %struct.address* %299, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.521

for.cond.521:                                     ; preds = %for.inc.542, %if.then.519
  %300 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %cmp522 = icmp ne %struct.address* %300, null
  br i1 %cmp522, label %for.body.524, label %for.end.544

for.body.524:                                     ; preds = %for.cond.521
  %301 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state525 = getelementptr inbounds %struct.address, %struct.address* %301, i32 0, i32 21
  %302 = load i16, i16* %q_state525, align 2, !tbaa !41
  %conv526 = sext i16 %302 to i32
  %cmp527 = icmp eq i32 %conv526, 0
  br i1 %cmp527, label %land.lhs.true.534, label %lor.lhs.false.529

lor.lhs.false.529:                                ; preds = %for.body.524
  %303 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state530 = getelementptr inbounds %struct.address, %struct.address* %303, i32 0, i32 21
  %304 = load i16, i16* %q_state530, align 2, !tbaa !41
  %conv531 = sext i16 %304 to i32
  %cmp532 = icmp eq i32 %conv531, 5
  br i1 %cmp532, label %land.lhs.true.534, label %if.end.541

land.lhs.true.534:                                ; preds = %lor.lhs.false.529, %for.body.524
  %305 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_flags535 = getelementptr inbounds %struct.address, %struct.address* %305, i32 0, i32 5
  %306 = load i64, i64* %q_flags535, align 8, !tbaa !42
  %and536 = and i64 %306, 128
  %cmp537 = icmp ne i64 %and536, 0
  br i1 %cmp537, label %if.then.539, label %if.end.541

if.then.539:                                      ; preds = %land.lhs.true.534
  store i32 1, i32* %failure_return, align 4, !tbaa !14
  %307 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_state540 = getelementptr inbounds %struct.address, %struct.address* %307, i32 0, i32 21
  store i16 2, i16* %q_state540, align 2, !tbaa !41
  br label %if.end.541

if.end.541:                                       ; preds = %if.then.539, %land.lhs.true.534, %lor.lhs.false.529
  br label %for.inc.542

for.inc.542:                                      ; preds = %if.end.541
  %308 = load %struct.address*, %struct.address** %q, align 8, !tbaa !1
  %q_next543 = getelementptr inbounds %struct.address, %struct.address* %308, i32 0, i32 10
  %309 = load %struct.address*, %struct.address** %q_next543, align 8, !tbaa !46
  store %struct.address* %309, %struct.address** %q, align 8, !tbaa !1
  br label %for.cond.521

for.end.544:                                      ; preds = %for.cond.521
  br label %if.end.545

if.end.545:                                       ; preds = %for.end.544, %land.lhs.true.517, %if.end.512
  %310 = load i32, i32* %success_return, align 4, !tbaa !14
  %tobool546 = icmp ne i32 %310, 0
  br i1 %tobool546, label %land.lhs.true.547, label %if.end.634

land.lhs.true.547:                                ; preds = %if.end.545
  %311 = load i32, i32* %failure_return, align 4, !tbaa !14
  %tobool548 = icmp ne i32 %311, 0
  br i1 %tobool548, label %if.end.634, label %land.lhs.true.549

land.lhs.true.549:                                ; preds = %land.lhs.true.547
  %312 = load i32, i32* %delay_return, align 4, !tbaa !14
  %tobool550 = icmp ne i32 %312, 0
  br i1 %tobool550, label %if.end.634, label %land.lhs.true.551

land.lhs.true.551:                                ; preds = %land.lhs.true.549
  %313 = load i32, i32* %fulldrop.addr, align 4, !tbaa !14
  %tobool552 = icmp ne i32 %313, 0
  br i1 %tobool552, label %land.lhs.true.553, label %if.end.634

land.lhs.true.553:                                ; preds = %land.lhs.true.551
  %314 = load i64, i64* @PrivacyFlags, align 8, !tbaa !25
  %and554 = and i64 %314, 2097152
  %cmp555 = icmp ne i64 %and554, 0
  br i1 %cmp555, label %if.end.634, label %land.lhs.true.557

land.lhs.true.557:                                ; preds = %land.lhs.true.553
  %315 = bitcast i64* %__s1_len559 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %315) #1
  %316 = bitcast i64* %__s2_len561 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %316) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.563, label %cond.false.611

land.lhs.true.563:                                ; preds = %land.lhs.true.557
  store i64 2, i64* %__s2_len561, align 8, !tbaa !25
  %317 = load i64, i64* %__s2_len561, align 8, !tbaa !25
  %cmp564 = icmp ult i64 %317, 4
  br i1 %cmp564, label %cond.true.566, label %cond.false.611

cond.true.566:                                    ; preds = %land.lhs.true.563
  %318 = bitcast i8** %__s1568 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %318) #1
  %319 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from569 = getelementptr inbounds %struct.envelope, %struct.envelope* %319, i32 0, i32 4
  %q_paddr570 = getelementptr inbounds %struct.address, %struct.address* %e_from569, i32 0, i32 0
  %320 = load i8*, i8** %q_paddr570, align 8, !tbaa !44
  store i8* %320, i8** %__s1568, align 8, !tbaa !1
  %321 = bitcast i32* %__result572 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %321) #1
  %322 = load i8*, i8** %__s1568, align 8, !tbaa !1
  %arrayidx573 = getelementptr inbounds i8, i8* %322, i64 0
  %323 = load i8, i8* %arrayidx573, align 1, !tbaa !27
  %conv574 = zext i8 %323 to i32
  %324 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !27
  %conv575 = zext i8 %324 to i32
  %sub576 = sub nsw i32 %conv574, %conv575
  store i32 %sub576, i32* %__result572, align 4, !tbaa !14
  %325 = load i64, i64* %__s2_len561, align 8, !tbaa !25
  %cmp577 = icmp ugt i64 %325, 0
  br i1 %cmp577, label %land.lhs.true.579, label %if.end.609

land.lhs.true.579:                                ; preds = %cond.true.566
  %326 = load i32, i32* %__result572, align 4, !tbaa !14
  %cmp580 = icmp eq i32 %326, 0
  br i1 %cmp580, label %if.then.582, label %if.end.609

if.then.582:                                      ; preds = %land.lhs.true.579
  %327 = load i8*, i8** %__s1568, align 8, !tbaa !1
  %arrayidx583 = getelementptr inbounds i8, i8* %327, i64 1
  %328 = load i8, i8* %arrayidx583, align 1, !tbaa !27
  %conv584 = zext i8 %328 to i32
  %329 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !27
  %conv585 = zext i8 %329 to i32
  %sub586 = sub nsw i32 %conv584, %conv585
  store i32 %sub586, i32* %__result572, align 4, !tbaa !14
  %330 = load i64, i64* %__s2_len561, align 8, !tbaa !25
  %cmp587 = icmp ugt i64 %330, 1
  br i1 %cmp587, label %land.lhs.true.589, label %if.end.608

land.lhs.true.589:                                ; preds = %if.then.582
  %331 = load i32, i32* %__result572, align 4, !tbaa !14
  %cmp590 = icmp eq i32 %331, 0
  br i1 %cmp590, label %if.then.592, label %if.end.608

if.then.592:                                      ; preds = %land.lhs.true.589
  %332 = load i8*, i8** %__s1568, align 8, !tbaa !1
  %arrayidx593 = getelementptr inbounds i8, i8* %332, i64 2
  %333 = load i8, i8* %arrayidx593, align 1, !tbaa !27
  %conv594 = zext i8 %333 to i32
  %334 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !27
  %conv595 = zext i8 %334 to i32
  %sub596 = sub nsw i32 %conv594, %conv595
  store i32 %sub596, i32* %__result572, align 4, !tbaa !14
  %335 = load i64, i64* %__s2_len561, align 8, !tbaa !25
  %cmp597 = icmp ugt i64 %335, 2
  br i1 %cmp597, label %land.lhs.true.599, label %if.end.607

land.lhs.true.599:                                ; preds = %if.then.592
  %336 = load i32, i32* %__result572, align 4, !tbaa !14
  %cmp600 = icmp eq i32 %336, 0
  br i1 %cmp600, label %if.then.602, label %if.end.607

if.then.602:                                      ; preds = %land.lhs.true.599
  %337 = load i8*, i8** %__s1568, align 8, !tbaa !1
  %arrayidx603 = getelementptr inbounds i8, i8* %337, i64 3
  %338 = load i8, i8* %arrayidx603, align 1, !tbaa !27
  %conv604 = zext i8 %338 to i32
  %339 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i64 3), align 1, !tbaa !27
  %conv605 = zext i8 %339 to i32
  %sub606 = sub nsw i32 %conv604, %conv605
  store i32 %sub606, i32* %__result572, align 4, !tbaa !14
  br label %if.end.607

if.end.607:                                       ; preds = %if.then.602, %land.lhs.true.599, %if.then.592
  br label %if.end.608

if.end.608:                                       ; preds = %if.end.607, %land.lhs.true.589, %if.then.582
  br label %if.end.609

if.end.609:                                       ; preds = %if.end.608, %land.lhs.true.579, %cond.true.566
  %340 = load i32, i32* %__result572, align 4, !tbaa !14
  store i32 %340, i32* %tmp610, !tbaa !14
  %341 = bitcast i32* %__result572 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i8** %__s1568 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #1
  %343 = load i32, i32* %tmp610, !tbaa !14
  br label %cond.end.615

cond.false.611:                                   ; preds = %land.lhs.true.563, %land.lhs.true.557
  %344 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from612 = getelementptr inbounds %struct.envelope, %struct.envelope* %344, i32 0, i32 4
  %q_paddr613 = getelementptr inbounds %struct.address, %struct.address* %e_from612, i32 0, i32 0
  %345 = load i8*, i8** %q_paddr613, align 8, !tbaa !44
  %call614 = call i32 @strcmp(i8* %345, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #1
  br label %cond.end.615

cond.end.615:                                     ; preds = %cond.false.611, %if.end.609
  %cond616 = phi i32 [ %343, %if.end.609 ], [ %call614, %cond.false.611 ]
  store i32 %cond616, i32* %tmp562, !tbaa !14
  %346 = bitcast i64* %__s2_len561 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = bitcast i64* %__s1_len559 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #1
  %348 = load i32, i32* %tmp562, !tbaa !14
  %cmp617 = icmp ne i32 %348, 0
  br i1 %cmp617, label %if.then.619, label %if.end.634

if.then.619:                                      ; preds = %cond.end.615
  %349 = bitcast %struct.address** %rlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %349) #1
  store %struct.address* null, %struct.address** %rlist, align 8, !tbaa !1
  %350 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 50), align 1, !tbaa !27
  %conv621 = zext i8 %350 to i32
  %cmp622 = icmp sge i32 %conv621, 8
  br i1 %cmp622, label %land.lhs.true.624, label %if.end.627

land.lhs.true.624:                                ; preds = %if.then.619
  %351 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool625 = icmp ne i32 %351, 0
  br i1 %tobool625, label %if.end.627, label %if.then.626

if.then.626:                                      ; preds = %land.lhs.true.624
  %352 = load i8*, i8** %id, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0), i8* %352)
  br label %if.end.627

if.end.627:                                       ; preds = %if.then.626, %land.lhs.true.624, %if.then.619
  %353 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags628 = getelementptr inbounds %struct.envelope, %struct.envelope* %353, i32 0, i32 11
  %354 = load i64, i64* %e_flags628, align 8, !tbaa !35
  %or629 = or i64 %354, 16
  store i64 %or629, i64* %e_flags628, align 8, !tbaa !35
  %355 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from630 = getelementptr inbounds %struct.envelope, %struct.envelope* %355, i32 0, i32 4
  %q_paddr631 = getelementptr inbounds %struct.address, %struct.address* %e_from630, i32 0, i32 0
  %356 = load i8*, i8** %q_paddr631, align 8, !tbaa !44
  %357 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call632 = call i32 @sendtolist(i8* %356, %struct.address* null, %struct.address** %rlist, i32 0, %struct.envelope* %357)
  %358 = load %struct.address*, %struct.address** %rlist, align 8, !tbaa !1
  %359 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call633 = call i32 @returntosender(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), %struct.address* %358, i32 0, %struct.envelope* %359)
  %360 = bitcast %struct.address** %rlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #1
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.627, %cond.end.615, %land.lhs.true.553, %land.lhs.true.551, %land.lhs.true.549, %land.lhs.true.547, %if.end.545
  %361 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags635 = getelementptr inbounds %struct.envelope, %struct.envelope* %361, i32 0, i32 11
  %362 = load i64, i64* %e_flags635, align 8, !tbaa !35
  %and636 = and i64 %362, -17
  store i64 %and636, i64* %e_flags635, align 8, !tbaa !35
  %363 = load i32, i32* %failure_return, align 4, !tbaa !14
  %tobool637 = icmp ne i32 %363, 0
  br i1 %tobool637, label %land.lhs.true.640, label %lor.lhs.false.638

lor.lhs.false.638:                                ; preds = %if.end.634
  %364 = load i32, i32* %delay_return, align 4, !tbaa !14
  %tobool639 = icmp ne i32 %364, 0
  br i1 %tobool639, label %land.lhs.true.640, label %if.end.657

land.lhs.true.640:                                ; preds = %lor.lhs.false.638, %if.end.634
  %365 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errormode = getelementptr inbounds %struct.envelope, %struct.envelope* %365, i32 0, i32 17
  %366 = load i16, i16* %e_errormode, align 2, !tbaa !49
  %conv641 = sext i16 %366 to i32
  %cmp642 = icmp ne i32 %conv641, 113
  br i1 %cmp642, label %if.then.644, label %if.end.657

if.then.644:                                      ; preds = %land.lhs.true.640
  %367 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 50), align 1, !tbaa !27
  %conv645 = zext i8 %367 to i32
  %cmp646 = icmp sge i32 %conv645, 8
  br i1 %cmp646, label %land.lhs.true.648, label %if.end.651

land.lhs.true.648:                                ; preds = %if.then.644
  %368 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool649 = icmp ne i32 %368, 0
  br i1 %tobool649, label %if.end.651, label %if.then.650

if.then.650:                                      ; preds = %land.lhs.true.648
  %369 = load i8*, i8** %id, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i8* %369)
  br label %if.end.651

if.end.651:                                       ; preds = %if.then.650, %land.lhs.true.648, %if.then.644
  %370 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %371 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags652 = getelementptr inbounds %struct.envelope, %struct.envelope* %371, i32 0, i32 11
  %372 = load i64, i64* %e_flags652, align 8, !tbaa !35
  %and653 = and i64 %372, 4
  %cmp654 = icmp ne i64 %and653, 0
  %lnot = xor i1 %cmp654, true
  %lnot.ext = zext i1 %lnot to i32
  %call656 = call i32 @savemail(%struct.envelope* %370, i32 %lnot.ext)
  store i32 %call656, i32* %panic, align 4, !tbaa !14
  br label %if.end.657

if.end.657:                                       ; preds = %if.end.651, %land.lhs.true.640, %lor.lhs.false.638
  %373 = load i32, i32* %failure_return, align 4, !tbaa !14
  %tobool658 = icmp ne i32 %373, 0
  br i1 %tobool658, label %land.lhs.true.661, label %lor.lhs.false.659

lor.lhs.false.659:                                ; preds = %if.end.657
  %374 = load i32, i32* %pmnotify, align 4, !tbaa !14
  %tobool660 = icmp ne i32 %374, 0
  br i1 %tobool660, label %land.lhs.true.661, label %if.end.698

land.lhs.true.661:                                ; preds = %lor.lhs.false.659, %if.end.657
  %375 = load i8*, i8** @PostMasterCopy, align 8, !tbaa !1
  %cmp662 = icmp ne i8* %375, null
  br i1 %cmp662, label %land.lhs.true.664, label %if.end.698

land.lhs.true.664:                                ; preds = %land.lhs.true.661
  %376 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags665 = getelementptr inbounds %struct.envelope, %struct.envelope* %376, i32 0, i32 11
  %377 = load i64, i64* %e_flags665, align 8, !tbaa !35
  %and666 = and i64 %377, 128
  %cmp667 = icmp ne i64 %and666, 0
  br i1 %cmp667, label %if.end.698, label %land.lhs.true.669

land.lhs.true.669:                                ; preds = %land.lhs.true.664
  %378 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_class670 = getelementptr inbounds %struct.envelope, %struct.envelope* %378, i32 0, i32 13
  %379 = load i16, i16* %e_class670, align 2, !tbaa !47
  %conv671 = sext i16 %379 to i32
  %cmp672 = icmp sge i32 %conv671, 0
  br i1 %cmp672, label %if.then.674, label %if.end.698

if.then.674:                                      ; preds = %land.lhs.true.669
  %380 = bitcast %struct.address** %rlist676 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %380) #1
  store %struct.address* null, %struct.address** %rlist676, align 8, !tbaa !1
  %381 = bitcast [256 x i8]* %pcopy to i8*
  call void @llvm.lifetime.start(i64 256, i8* %381) #1
  %382 = load i32, i32* %failure_return, align 4, !tbaa !14
  %tobool678 = icmp ne i32 %382, 0
  br i1 %tobool678, label %if.then.679, label %if.end.691

if.then.679:                                      ; preds = %if.then.674
  %383 = load i8*, i8** @PostMasterCopy, align 8, !tbaa !1
  %arraydecay680 = getelementptr inbounds [256 x i8], [256 x i8]* %pcopy, i32 0, i32 0
  %384 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %383, i8* %arraydecay680, i64 256, %struct.envelope* %384)
  %385 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 50), align 1, !tbaa !27
  %conv681 = zext i8 %385 to i32
  %cmp682 = icmp sge i32 %conv681, 8
  br i1 %cmp682, label %land.lhs.true.684, label %if.end.688

land.lhs.true.684:                                ; preds = %if.then.679
  %386 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool685 = icmp ne i32 %386, 0
  br i1 %tobool685, label %if.end.688, label %if.then.686

if.then.686:                                      ; preds = %land.lhs.true.684
  %387 = load i8*, i8** %id, align 8, !tbaa !1
  %arraydecay687 = getelementptr inbounds [256 x i8], [256 x i8]* %pcopy, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0), i8* %387, i8* %arraydecay687)
  br label %if.end.688

if.end.688:                                       ; preds = %if.then.686, %land.lhs.true.684, %if.then.679
  %arraydecay689 = getelementptr inbounds [256 x i8], [256 x i8]* %pcopy, i32 0, i32 0
  %388 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call690 = call i32 @sendtolist(i8* %arraydecay689, %struct.address* null, %struct.address** %rlist676, i32 0, %struct.envelope* %388)
  br label %if.end.691

if.end.691:                                       ; preds = %if.end.688, %if.then.674
  %389 = load i32, i32* %pmnotify, align 4, !tbaa !14
  %tobool692 = icmp ne i32 %389, 0
  br i1 %tobool692, label %if.then.693, label %if.end.695

if.then.693:                                      ; preds = %if.end.691
  %390 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call694 = call i32 @sendtolist(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct.address* null, %struct.address** %rlist676, i32 0, %struct.envelope* %390)
  br label %if.end.695

if.end.695:                                       ; preds = %if.then.693, %if.end.691
  %391 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_message696 = getelementptr inbounds %struct.envelope, %struct.envelope* %391, i32 0, i32 34
  %392 = load i8*, i8** %e_message696, align 8, !tbaa !28
  %393 = load %struct.address*, %struct.address** %rlist676, align 8, !tbaa !1
  %394 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call697 = call i32 @returntosender(i8* %392, %struct.address* %393, i32 2, %struct.envelope* %394)
  %395 = bitcast [256 x i8]* %pcopy to i8*
  call void @llvm.lifetime.end(i64 256, i8* %395) #1
  %396 = bitcast %struct.address** %rlist676 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %396) #1
  br label %if.end.698

if.end.698:                                       ; preds = %if.end.695, %land.lhs.true.669, %land.lhs.true.664, %land.lhs.true.661, %lor.lhs.false.659
  br label %simpledrop

simpledrop:                                       ; preds = %if.end.698, %if.then.26
  %397 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 50), align 1, !tbaa !27
  %conv699 = zext i8 %397 to i32
  %cmp700 = icmp sge i32 %conv699, 8
  br i1 %cmp700, label %land.lhs.true.702, label %if.end.705

land.lhs.true.702:                                ; preds = %simpledrop
  %398 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool703 = icmp ne i32 %398, 0
  br i1 %tobool703, label %if.end.705, label %if.then.704

if.then.704:                                      ; preds = %land.lhs.true.702
  %399 = load i8*, i8** %id, align 8, !tbaa !1
  %400 = load i32, i32* %queueit, align 4, !tbaa !14
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i32 0, i32 0), i8* %399, i32 %400)
  br label %if.end.705

if.end.705:                                       ; preds = %if.then.704, %land.lhs.true.702, %simpledrop
  %401 = load i32, i32* %queueit, align 4, !tbaa !14
  %tobool706 = icmp ne i32 %401, 0
  br i1 %tobool706, label %lor.lhs.false.707, label %if.then.712

lor.lhs.false.707:                                ; preds = %if.end.705
  %402 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags708 = getelementptr inbounds %struct.envelope, %struct.envelope* %402, i32 0, i32 11
  %403 = load i64, i64* %e_flags708, align 8, !tbaa !35
  %and709 = and i64 %403, 8
  %cmp710 = icmp ne i64 %and709, 0
  br i1 %cmp710, label %if.then.712, label %if.else.760

if.then.712:                                      ; preds = %lor.lhs.false.707, %if.end.705
  %404 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 50), align 1, !tbaa !27
  %conv713 = zext i8 %404 to i32
  %cmp714 = icmp sge i32 %conv713, 1
  br i1 %cmp714, label %land.lhs.true.716, label %if.end.720

land.lhs.true.716:                                ; preds = %if.then.712
  %405 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool717 = icmp ne i32 %405, 0
  br i1 %tobool717, label %if.end.720, label %if.then.718

if.then.718:                                      ; preds = %land.lhs.true.716
  %406 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id719 = getelementptr inbounds %struct.envelope, %struct.envelope* %406, i32 0, i32 25
  %407 = load i8*, i8** %e_id719, align 8, !tbaa !36
  %408 = load i32, i32* %queueit, align 4, !tbaa !14
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.30, i32 0, i32 0), i8* %407, i32 %408)
  %409 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @printenvflags(%struct.envelope* %409)
  br label %if.end.720

if.end.720:                                       ; preds = %if.then.718, %land.lhs.true.716, %if.then.712
  %410 = load i32, i32* %panic, align 4, !tbaa !14
  %tobool721 = icmp ne i32 %410, 0
  br i1 %tobool721, label %if.end.732, label %if.then.722

if.then.722:                                      ; preds = %if.end.720
  %411 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %411, i32 0, i32 24
  %412 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !23
  %cmp723 = icmp ne %struct.sm_file* %412, null
  br i1 %cmp723, label %if.then.725, label %if.end.729

if.then.725:                                      ; preds = %if.then.722
  %413 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp726 = getelementptr inbounds %struct.envelope, %struct.envelope* %413, i32 0, i32 24
  %414 = load %struct.sm_file*, %struct.sm_file** %e_dfp726, align 8, !tbaa !23
  %call727 = call i32 @sm_io_close(%struct.sm_file* %414, i32 -2)
  %415 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp728 = getelementptr inbounds %struct.envelope, %struct.envelope* %415, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp728, align 8, !tbaa !23
  br label %if.end.729

if.end.729:                                       ; preds = %if.then.725, %if.then.722
  %416 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call730 = call i8* @queuename(%struct.envelope* %416, i32 100)
  %call731 = call i32 @xunlink(i8* %call730)
  br label %if.end.732

if.end.732:                                       ; preds = %if.end.729, %if.end.720
  %417 = load i32, i32* %panic, align 4, !tbaa !14
  %tobool733 = icmp ne i32 %417, 0
  br i1 %tobool733, label %land.lhs.true.734, label %if.else.738

land.lhs.true.734:                                ; preds = %if.end.732
  %418 = load i32, i32* @QueueMode, align 4, !tbaa !14
  %cmp735 = icmp eq i32 %418, 76
  br i1 %cmp735, label %if.then.737, label %if.else.738

if.then.737:                                      ; preds = %land.lhs.true.734
  br label %if.end.747

if.else.738:                                      ; preds = %land.lhs.true.734, %if.end.732
  %419 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call739 = call i8* @queuename(%struct.envelope* %419, i32 63)
  %call740 = call i32 @xunlink(i8* %call739)
  %cmp741 = icmp eq i32 %call740, 0
  br i1 %cmp741, label %if.then.743, label %if.end.746

if.then.743:                                      ; preds = %if.else.738
  %420 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %421 = load i32, i32* %panic, align 4, !tbaa !14
  %tobool744 = icmp ne i32 %421, 0
  %cond745 = select i1 %tobool744, i32 0, i32 -1
  call void @upd_qs(%struct.envelope* %420, i32 -1, i32 %cond745, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.746

if.end.746:                                       ; preds = %if.then.743, %if.else.738
  br label %if.end.747

if.end.747:                                       ; preds = %if.end.746, %if.then.737
  %422 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ntries = getelementptr inbounds %struct.envelope, %struct.envelope* %422, i32 0, i32 43
  %423 = load i32, i32* %e_ntries, align 4, !tbaa !50
  %cmp748 = icmp sgt i32 %423, 0
  br i1 %cmp748, label %land.lhs.true.750, label %if.end.759

land.lhs.true.750:                                ; preds = %if.end.747
  %424 = load i32, i32* @LogLevel, align 4, !tbaa !14
  %cmp751 = icmp sgt i32 %424, 9
  br i1 %cmp751, label %if.then.753, label %if.end.759

if.then.753:                                      ; preds = %land.lhs.true.750
  %425 = load i8*, i8** %id, align 8, !tbaa !1
  %call754 = call i64 @curtime()
  %426 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ctime755 = getelementptr inbounds %struct.envelope, %struct.envelope* %426, i32 0, i32 2
  %427 = load i64, i64* %e_ctime755, align 8, !tbaa !16
  %sub756 = sub nsw i64 %call754, %427
  %call757 = call i8* @pintvl(i64 %sub756, i32 1)
  %428 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ntries758 = getelementptr inbounds %struct.envelope, %struct.envelope* %428, i32 0, i32 43
  %429 = load i32, i32* %e_ntries758, align 4, !tbaa !50
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %425, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8* %call757, i32 %429)
  br label %if.end.759

if.end.759:                                       ; preds = %if.then.753, %land.lhs.true.750, %if.end.747
  br label %if.end.825

if.else.760:                                      ; preds = %lor.lhs.false.707
  %430 = load i32, i32* %queueit, align 4, !tbaa !14
  %tobool761 = icmp ne i32 %430, 0
  br i1 %tobool761, label %if.then.767, label %lor.lhs.false.762

lor.lhs.false.762:                                ; preds = %if.else.760
  %431 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags763 = getelementptr inbounds %struct.envelope, %struct.envelope* %431, i32 0, i32 11
  %432 = load i64, i64* %e_flags763, align 8, !tbaa !35
  %and764 = and i64 %432, 2
  %cmp765 = icmp ne i64 %and764, 0
  br i1 %cmp765, label %if.end.824, label %if.then.767

if.then.767:                                      ; preds = %lor.lhs.false.762, %if.else.760
  %433 = load i32, i32* %split.addr, align 4, !tbaa !14
  %tobool768 = icmp ne i32 %433, 0
  br i1 %tobool768, label %if.else.770, label %if.then.769

if.then.769:                                      ; preds = %if.then.767
  %434 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @queueup(%struct.envelope* %434, i32 0, i32 1)
  br label %if.end.823

if.else.770:                                      ; preds = %if.then.767
  %435 = bitcast %struct.envelope** %oldsib to i8*
  call void @llvm.lifetime.start(i64 8, i8* %435) #1
  %436 = bitcast %struct.envelope** %ee to i8*
  call void @llvm.lifetime.start(i64 8, i8* %436) #1
  %437 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sibling = getelementptr inbounds %struct.envelope, %struct.envelope* %437, i32 0, i32 22
  %438 = load %struct.envelope*, %struct.envelope** %e_sibling, align 8, !tbaa !51
  store %struct.envelope* %438, %struct.envelope** %oldsib, align 8, !tbaa !1
  %439 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sibling773 = getelementptr inbounds %struct.envelope, %struct.envelope* %439, i32 0, i32 22
  store %struct.envelope* null, %struct.envelope** %e_sibling773, align 8, !tbaa !51
  %440 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call774 = call i32 @split_by_recipient(%struct.envelope* %440)
  %tobool775 = icmp ne i32 %call774, 0
  br i1 %tobool775, label %if.end.786, label %land.lhs.true.776

land.lhs.true.776:                                ; preds = %if.else.770
  %441 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags777 = getelementptr inbounds %struct.envelope, %struct.envelope* %441, i32 0, i32 11
  %442 = load i64, i64* %e_flags777, align 8, !tbaa !35
  %and778 = and i64 %442, 32
  %cmp779 = icmp ne i64 %and778, 0
  br i1 %cmp779, label %if.then.781, label %if.end.786

if.then.781:                                      ; preds = %land.lhs.true.776
  %443 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id782 = getelementptr inbounds %struct.envelope, %struct.envelope* %443, i32 0, i32 25
  %444 = load i8*, i8** %e_id782, align 8, !tbaa !36
  %445 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call783 = call i8* @queuename(%struct.envelope* %445, i32 100)
  %call784 = call i32 @geteuid() #1
  %conv785 = zext i32 %call784 to i64
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i32 0, i32 0), i8* %444, i8* %call783, i64 %conv785)
  br label %if.end.786

if.end.786:                                       ; preds = %if.then.781, %land.lhs.true.776, %if.else.770
  %446 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sibling787 = getelementptr inbounds %struct.envelope, %struct.envelope* %446, i32 0, i32 22
  %447 = load %struct.envelope*, %struct.envelope** %e_sibling787, align 8, !tbaa !51
  store %struct.envelope* %447, %struct.envelope** %ee, align 8, !tbaa !1
  br label %for.cond.788

for.cond.788:                                     ; preds = %for.inc.792, %if.end.786
  %448 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %cmp789 = icmp ne %struct.envelope* %448, null
  br i1 %cmp789, label %for.body.791, label %for.end.794

for.body.791:                                     ; preds = %for.cond.788
  %449 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @queueup(%struct.envelope* %449, i32 0, i32 1)
  br label %for.inc.792

for.inc.792:                                      ; preds = %for.body.791
  %450 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sibling793 = getelementptr inbounds %struct.envelope, %struct.envelope* %450, i32 0, i32 22
  %451 = load %struct.envelope*, %struct.envelope** %e_sibling793, align 8, !tbaa !51
  store %struct.envelope* %451, %struct.envelope** %ee, align 8, !tbaa !1
  br label %for.cond.788

for.end.794:                                      ; preds = %for.cond.788
  %452 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @queueup(%struct.envelope* %452, i32 0, i32 1)
  %453 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sibling795 = getelementptr inbounds %struct.envelope, %struct.envelope* %453, i32 0, i32 22
  %454 = load %struct.envelope*, %struct.envelope** %e_sibling795, align 8, !tbaa !51
  store %struct.envelope* %454, %struct.envelope** %ee, align 8, !tbaa !1
  br label %for.cond.796

for.cond.796:                                     ; preds = %for.inc.819, %for.end.794
  %455 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %cmp797 = icmp ne %struct.envelope* %455, null
  br i1 %cmp797, label %for.body.799, label %for.end.821

for.body.799:                                     ; preds = %for.cond.796
  %456 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 50), align 1, !tbaa !27
  %conv800 = zext i8 %456 to i32
  %cmp801 = icmp sge i32 %conv800, 8
  br i1 %cmp801, label %land.lhs.true.803, label %if.end.807

land.lhs.true.803:                                ; preds = %for.body.799
  %457 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool804 = icmp ne i32 %457, 0
  br i1 %tobool804, label %if.end.807, label %if.then.805

if.then.805:                                      ; preds = %land.lhs.true.803
  %458 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_id806 = getelementptr inbounds %struct.envelope, %struct.envelope* %458, i32 0, i32 25
  %459 = load i8*, i8** %e_id806, align 8, !tbaa !36
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i8* %459)
  br label %if.end.807

if.end.807:                                       ; preds = %if.then.805, %land.lhs.true.803, %for.body.799
  %460 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @closexscript(%struct.envelope* %460)
  %461 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  call void @unlockqueue(%struct.envelope* %461)
  %462 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_dfp808 = getelementptr inbounds %struct.envelope, %struct.envelope* %462, i32 0, i32 24
  %463 = load %struct.sm_file*, %struct.sm_file** %e_dfp808, align 8, !tbaa !23
  %cmp809 = icmp ne %struct.sm_file* %463, null
  br i1 %cmp809, label %if.then.811, label %if.end.815

if.then.811:                                      ; preds = %if.end.807
  %464 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_dfp812 = getelementptr inbounds %struct.envelope, %struct.envelope* %464, i32 0, i32 24
  %465 = load %struct.sm_file*, %struct.sm_file** %e_dfp812, align 8, !tbaa !23
  %call813 = call i32 @sm_io_close(%struct.sm_file* %465, i32 -2)
  %466 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_dfp814 = getelementptr inbounds %struct.envelope, %struct.envelope* %466, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp814, align 8, !tbaa !23
  br label %if.end.815

if.end.815:                                       ; preds = %if.then.811, %if.end.807
  %467 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_id816 = getelementptr inbounds %struct.envelope, %struct.envelope* %467, i32 0, i32 25
  store i8* null, i8** %e_id816, align 8, !tbaa !36
  %468 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_flags817 = getelementptr inbounds %struct.envelope, %struct.envelope* %468, i32 0, i32 11
  %469 = load i64, i64* %e_flags817, align 8, !tbaa !35
  %and818 = and i64 %469, -2097153
  store i64 %and818, i64* %e_flags817, align 8, !tbaa !35
  br label %for.inc.819

for.inc.819:                                      ; preds = %if.end.815
  %470 = load %struct.envelope*, %struct.envelope** %ee, align 8, !tbaa !1
  %e_sibling820 = getelementptr inbounds %struct.envelope, %struct.envelope* %470, i32 0, i32 22
  %471 = load %struct.envelope*, %struct.envelope** %e_sibling820, align 8, !tbaa !51
  store %struct.envelope* %471, %struct.envelope** %ee, align 8, !tbaa !1
  br label %for.cond.796

for.end.821:                                      ; preds = %for.cond.796
  %472 = load %struct.envelope*, %struct.envelope** %oldsib, align 8, !tbaa !1
  %473 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sibling822 = getelementptr inbounds %struct.envelope, %struct.envelope* %473, i32 0, i32 22
  store %struct.envelope* %472, %struct.envelope** %e_sibling822, align 8, !tbaa !51
  %474 = bitcast %struct.envelope** %ee to i8*
  call void @llvm.lifetime.end(i64 8, i8* %474) #1
  %475 = bitcast %struct.envelope** %oldsib to i8*
  call void @llvm.lifetime.end(i64 8, i8* %475) #1
  br label %if.end.823

if.end.823:                                       ; preds = %for.end.821, %if.then.769
  br label %if.end.824

if.end.824:                                       ; preds = %if.end.823, %lor.lhs.false.762
  br label %if.end.825

if.end.825:                                       ; preds = %if.end.824, %if.end.759
  %476 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 50), align 1, !tbaa !27
  %conv826 = zext i8 %476 to i32
  %cmp827 = icmp sge i32 %conv826, 8
  br i1 %cmp827, label %land.lhs.true.829, label %if.end.832

land.lhs.true.829:                                ; preds = %if.end.825
  %477 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool830 = icmp ne i32 %477, 0
  br i1 %tobool830, label %if.end.832, label %if.then.831

if.then.831:                                      ; preds = %land.lhs.true.829
  %478 = load i8*, i8** %id, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i8* %478)
  br label %if.end.832

if.end.832:                                       ; preds = %if.then.831, %land.lhs.true.829, %if.end.825
  %479 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @closexscript(%struct.envelope* %479)
  %480 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @unlockqueue(%struct.envelope* %480)
  %481 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp833 = getelementptr inbounds %struct.envelope, %struct.envelope* %481, i32 0, i32 24
  %482 = load %struct.sm_file*, %struct.sm_file** %e_dfp833, align 8, !tbaa !23
  %cmp834 = icmp ne %struct.sm_file* %482, null
  br i1 %cmp834, label %if.then.836, label %if.end.840

if.then.836:                                      ; preds = %if.end.832
  %483 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp837 = getelementptr inbounds %struct.envelope, %struct.envelope* %483, i32 0, i32 24
  %484 = load %struct.sm_file*, %struct.sm_file** %e_dfp837, align 8, !tbaa !23
  %call838 = call i32 @sm_io_close(%struct.sm_file* %484, i32 -2)
  %485 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp839 = getelementptr inbounds %struct.envelope, %struct.envelope* %485, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp839, align 8, !tbaa !23
  br label %if.end.840

if.end.840:                                       ; preds = %if.then.836, %if.end.832
  %486 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id841 = getelementptr inbounds %struct.envelope, %struct.envelope* %486, i32 0, i32 25
  store i8* null, i8** %e_id841, align 8, !tbaa !36
  %487 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags842 = getelementptr inbounds %struct.envelope, %struct.envelope* %487, i32 0, i32 11
  %488 = load i64, i64* %e_flags842, align 8, !tbaa !35
  %and843 = and i64 %488, -2097153
  store i64 %and843, i64* %e_flags842, align 8, !tbaa !35
  %489 = load i32, i32* %panic, align 4, !tbaa !14
  %tobool844 = icmp ne i32 %489, 0
  br i1 %tobool844, label %if.then.845, label %if.end.846

if.then.845:                                      ; preds = %if.end.840
  store i32 74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.846:                                       ; preds = %if.end.840
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.846, %if.then.845, %if.then.21
  %490 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %490) #1
  %491 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %491) #1
  %492 = bitcast i8** %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %492) #1
  %493 = bitcast %struct.address** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %493) #1
  %494 = bitcast i32* %done to i8*
  call void @llvm.lifetime.end(i64 4, i8* %494) #1
  %495 = bitcast i32* %pmnotify to i8*
  call void @llvm.lifetime.end(i64 4, i8* %495) #1
  %496 = bitcast i32* %success_return to i8*
  call void @llvm.lifetime.end(i64 4, i8* %496) #1
  %497 = bitcast i32* %delay_return to i8*
  call void @llvm.lifetime.end(i64 4, i8* %497) #1
  %498 = bitcast i32* %failure_return to i8*
  call void @llvm.lifetime.end(i64 4, i8* %498) #1
  %499 = bitcast i32* %msg_timeout to i8*
  call void @llvm.lifetime.end(i64 4, i8* %499) #1
  %500 = bitcast i32* %queueit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %500) #1
  %501 = bitcast i32* %panic to i8*
  call void @llvm.lifetime.end(i64 4, i8* %501) #1
  %502 = load i32, i32* %retval
  ret i32 %502
}

declare void @sm_dprintf(i8*, ...) #2

declare void @xputs(%struct.sm_file*, i8*) #2

declare %struct.sm_file* @sm_debug_file() #2

; Function Attrs: nounwind uwtable
define void @printenvflags(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %ef = alloca %struct.eflags*, align 8
  %first = alloca i32, align 4
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast %struct.eflags** %ef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 1, i32* %first, align 4, !tbaa !14
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 11
  %3 = load i64, i64* %e_flags, align 8, !tbaa !35
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i64 %3)
  store %struct.eflags* getelementptr inbounds ([29 x %struct.eflags], [29 x %struct.eflags]* @EnvelopeFlags, i32 0, i32 0), %struct.eflags** %ef, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.eflags*, %struct.eflags** %ef, align 8, !tbaa !1
  %ef_name = getelementptr inbounds %struct.eflags, %struct.eflags* %4, i32 0, i32 0
  %5 = load i8*, i8** %ef_name, align 8, !tbaa !52
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags1 = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 11
  %7 = load i64, i64* %e_flags1, align 8, !tbaa !35
  %8 = load %struct.eflags*, %struct.eflags** %ef, align 8, !tbaa !1
  %ef_bit = getelementptr inbounds %struct.eflags, %struct.eflags* %8, i32 0, i32 1
  %9 = load i64, i64* %ef_bit, align 8, !tbaa !54
  %and = and i64 %7, %9
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = load i32, i32* %first, align 4, !tbaa !14
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.eflags*, %struct.eflags** %ef, align 8, !tbaa !1
  %ef_name4 = getelementptr inbounds %struct.eflags, %struct.eflags* %11, i32 0, i32 0
  %12 = load i8*, i8** %ef_name4, align 8, !tbaa !52
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* %12)
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %13 = load %struct.eflags*, %struct.eflags** %ef, align 8, !tbaa !1
  %ef_name5 = getelementptr inbounds %struct.eflags, %struct.eflags* %13, i32 0, i32 0
  %14 = load i8*, i8** %ef_name5, align 8, !tbaa !52
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* %14)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  store i32 0, i32* %first, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end.6, %if.then
  %15 = load %struct.eflags*, %struct.eflags** %ef, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.eflags, %struct.eflags* %15, i32 1
  store %struct.eflags* %incdec.ptr, %struct.eflags** %ef, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %first, align 4, !tbaa !14
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.end
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  %17 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.eflags** %ef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret void
}

declare void @printaddr(%struct.sm_file*, %struct.address*, i32) #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

declare void @logsender(%struct.envelope*, i8*) #2

declare void @poststats(i8*) #2

declare i32 @emptyaddr(%struct.address*) #2

declare i32 @sendtolist(i8*, %struct.address*, %struct.address**, i32, %struct.envelope*) #2

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

declare i8* @pintvl(i64, i32) #2

declare void @message(i8*, ...) #2

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

declare i32 @sm_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @sm_strcasecmp(i8*, i8*) #2

declare i32 @returntosender(i8*, %struct.address*, i32, %struct.envelope*) #2

declare i32 @savemail(%struct.envelope*, i32) #2

declare void @expand(i8*, i8*, i64, %struct.envelope*) #2

declare i32 @sm_io_close(%struct.sm_file*, i32) #2

declare i32 @xunlink(i8*) #2

declare i8* @queuename(%struct.envelope*, i32) #2

declare void @upd_qs(%struct.envelope*, i32, i32, i8*) #2

declare void @queueup(%struct.envelope*, i32, i32) #2

declare i32 @split_by_recipient(%struct.envelope*) #2

declare void @syserr(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: nounwind uwtable
define void @closexscript(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %0, i32 0, i32 32
  %1 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !22
  %cmp = icmp eq %struct.sm_file* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp1 = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 32
  %3 = load %struct.sm_file*, %struct.sm_file** %e_xfp1, align 8, !tbaa !22
  %call = call i32 @sm_io_close(%struct.sm_file* %3, i32 -2)
  %4 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp2 = getelementptr inbounds %struct.envelope, %struct.envelope* %4, i32 0, i32 32
  store %struct.sm_file* null, %struct.sm_file** %e_xfp2, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @unlockqueue(%struct.envelope*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T*, i64, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @initsys(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %buf = alloca [10 x i8], align 1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast [10 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 10, i8* %0) #1
  %1 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @openxscript(%struct.envelope* %1)
  %call = call i64 @curtime()
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ctime = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 2
  store i64 %call, i64* %e_ctime, align 8, !tbaa !16
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_qfletter = getelementptr inbounds %struct.envelope, %struct.envelope* %3, i32 0, i32 37
  store i8 0, i8* %e_qfletter, align 1, !tbaa !29
  %4 = load i8, i8* @OpMode, align 1, !tbaa !27
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %5, i32 0, i32 11
  %6 = load i64, i64* %e_flags, align 8, !tbaa !35
  %and = and i64 %6, 2048
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 32
  %8 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !22
  %cmp5 = icmp ne %struct.sm_file* %8, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp7 = getelementptr inbounds %struct.envelope, %struct.envelope* %9, i32 0, i32 32
  %10 = load %struct.sm_file*, %struct.sm_file** %e_xfp7, align 8, !tbaa !22
  store %struct.sm_file* %10, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %entry
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %11 = load i32, i32* @CurrentPid, align 4, !tbaa !14
  %call8 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i32 %11)
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 46
  %arraydecay9 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %13 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 112, i8* %arraydecay9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 797, i32 %13)
  %arraydecay10 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_hopcount = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 14
  %15 = load i16, i16* %e_hopcount, align 2, !tbaa !55
  %conv11 = sext i16 %15 to i32
  %call12 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay10, i64 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i32 %conv11)
  %16 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro13 = getelementptr inbounds %struct.envelope, %struct.envelope* %16, i32 0, i32 46
  %arraydecay14 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %17 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro13, i32 1, i32 99, i8* %arraydecay14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 801, i32 %17)
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @settime(%struct.envelope* %18)
  call void @sm_getla()
  %19 = bitcast [10 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 10, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @openxscript(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %1, i32 0, i32 32
  %2 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !22
  %cmp = icmp ne %struct.sm_file* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call = call i8* @queuename(%struct.envelope* %3, i32 120)
  store i8* %call, i8** %p, align 8, !tbaa !1
  %4 = load i8*, i8** %p, align 8, !tbaa !1
  %5 = load i32, i32* @FileMode, align 4, !tbaa !14
  %6 = load i64, i64* @XscriptFileBufferSize, align 8, !tbaa !25
  %call1 = call %struct.sm_file* @bfopen(i8* %4, i32 %5, i64 %6, i64 139264)
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp2 = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 32
  store %struct.sm_file* %call1, %struct.sm_file** %e_xfp2, align 8, !tbaa !22
  %8 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp3 = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 32
  %9 = load %struct.sm_file*, %struct.sm_file** %e_xfp3, align 8, !tbaa !22
  %cmp4 = icmp eq %struct.sm_file* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0), i8* %10)
  %call6 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 1, i8* null)
  %11 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp7 = getelementptr inbounds %struct.envelope, %struct.envelope* %11, i32 0, i32 32
  store %struct.sm_file* %call6, %struct.sm_file** %e_xfp7, align 8, !tbaa !22
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp8 = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 32
  %13 = load %struct.sm_file*, %struct.sm_file** %e_xfp8, align 8, !tbaa !22
  %cmp9 = icmp eq %struct.sm_file* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp13 = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 32
  %15 = load %struct.sm_file*, %struct.sm_file** %e_xfp13, align 8, !tbaa !22
  %call14 = call i32 @sm_io_setvbuf(%struct.sm_file* %15, i32 -2, i8* null, i32 1, i64 0)
  %16 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 46), align 1, !tbaa !27
  %conv = zext i8 %16 to i32
  %cmp15 = icmp sge i32 %conv, 9
  br i1 %cmp15, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.12
  %17 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end.20, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i8* %18)
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp18 = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 32
  %20 = load %struct.sm_file*, %struct.sm_file** %e_xfp18, align 8, !tbaa !22
  %call19 = call i32 @sm_io_getinfo(%struct.sm_file* %20, i32 3, i8* null)
  call void @dumpfd(i32 %call19, i32 1, i32 0)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %land.lhs.true, %if.end.12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then
  %21 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
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
define void @settime(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %p = alloca i8*, align 8
  %now = alloca i64, align 8
  %buf = alloca [30 x i8], align 16
  %tm = alloca %struct.tm*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [30 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 30, i8* %2) #1
  %3 = bitcast %struct.tm** %tm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %call = call i64 @curtime()
  store i64 %call, i64* %now, align 8, !tbaa !25
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %4 = load i64, i64* %now, align 8, !tbaa !25
  %call1 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i64 %4)
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %5, i32 0, i32 46
  %call2 = call i32 @macid_parse(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8** null)
  %arraydecay3 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %6 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %call2, i8* %arraydecay3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 848, i32 %6)
  %call4 = call %struct.tm* @gmtime(i64* %now) #1
  store %struct.tm* %call4, %struct.tm** %tm, align 8, !tbaa !1
  %arraydecay5 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %7 = load %struct.tm*, %struct.tm** %tm, align 8, !tbaa !1
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 5
  %8 = load i32, i32* %tm_year, align 4, !tbaa !56
  %add = add nsw i32 %8, 1900
  %9 = load %struct.tm*, %struct.tm** %tm, align 8, !tbaa !1
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 4
  %10 = load i32, i32* %tm_mon, align 4, !tbaa !58
  %add6 = add nsw i32 %10, 1
  %11 = load %struct.tm*, %struct.tm** %tm, align 8, !tbaa !1
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 3
  %12 = load i32, i32* %tm_mday, align 4, !tbaa !59
  %13 = load %struct.tm*, %struct.tm** %tm, align 8, !tbaa !1
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %14 = load i32, i32* %tm_hour, align 4, !tbaa !60
  %15 = load %struct.tm*, %struct.tm** %tm, align 8, !tbaa !1
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 1
  %16 = load i32, i32* %tm_min, align 4, !tbaa !61
  %call7 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay5, i64 30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i32 %add, i32 %add6, i32 %12, i32 %14, i32 %16)
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro8 = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 46
  %arraydecay9 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %18 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro8, i32 1, i32 116, i8* %arraydecay9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 853, i32 %18)
  %arraydecay10 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %call11 = call i8* @ctime(i64* %now) #1
  %call12 = call i64 @sm_strlcpy(i8* %arraydecay10, i8* %call11, i64 30)
  %arraydecay13 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %call14 = call i8* @strchr(i8* %arraydecay13, i32 10) #1
  store i8* %call14, i8** %p, align 8, !tbaa !1
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp = icmp ne i8* %19, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %20, align 1, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro15 = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 46
  %arraydecay16 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %22 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro15, i32 1, i32 100, i8* %arraydecay16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 858, i32 %22)
  %23 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro17 = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 46
  %arraydecay18 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %call19 = call i8* @arpadate(i8* %arraydecay18)
  %24 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro17, i32 1, i32 98, i8* %call19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 859, i32 %24)
  %25 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call20 = call i8* @macvalue(i32 97, %struct.envelope* %25)
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end
  %26 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro23 = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 46
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call24 = call i8* @macvalue(i32 98, %struct.envelope* %27)
  %28 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro23, i32 2, i32 97, i8* %call24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 861, i32 %28)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end
  %29 = bitcast %struct.tm** %tm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast [30 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 30, i8* %30) #1
  %31 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  ret void
}

declare void @sm_getla() #2

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #3

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #3

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare i8* @arpadate(i8*) #2

declare i8* @macvalue(i32, %struct.envelope*) #2

declare %struct.sm_file* @bfopen(i8*, i32, i64, i64) #2

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #2

declare i32 @sm_io_setvbuf(%struct.sm_file*, i32, i8*, i32, i64) #2

declare void @dumpfd(i32, i32, i32) #2

declare i32 @sm_io_getinfo(%struct.sm_file*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @setsender(i8* %from, %struct.envelope* %e, i8** %delimptr, i32 %delimchar, i32 %internal) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %delimptr.addr = alloca i8**, align 8
  %delimchar.addr = alloca i32, align 4
  %internal.addr = alloca i32, align 4
  %pvp = alloca i8**, align 8
  %realname = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %buf = alloca [258 x i8], align 16
  %pvpbuf = alloca [1256 x i8], align 16
  %p = alloca i8*, align 8
  %ebuf = alloca [514 x i8], align 16
  %host = alloca i8*, align 8
  %nbuf = alloca [100 x i8], align 16
  %user = alloca %struct.SM_MBDB_T, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp217 = alloca i32, align 4
  %__s1_len261 = alloca i64, align 8
  %__s2_len263 = alloca i64, align 8
  %tmp264 = alloca i32, align 4
  %__s1_len321 = alloca i64, align 8
  %__s2_len323 = alloca i64, align 8
  %tmp324 = alloca i32, align 4
  %__s1330 = alloca i8*, align 8
  %__result334 = alloca i32, align 4
  %tmp372 = alloca i32, align 4
  %lastat = alloca i8**, align 8
  %__s1_len456 = alloca i64, align 8
  %__s2_len458 = alloca i64, align 8
  %tmp459 = alloca i32, align 4
  %__s1465 = alloca i8*, align 8
  %__result467 = alloca i32, align 4
  %tmp505 = alloca i32, align 4
  store i8* %from, i8** %from.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8** %delimptr, i8*** %delimptr.addr, align 8, !tbaa !1
  store i32 %delimchar, i32* %delimchar.addr, align 4, !tbaa !14
  store i32 %internal, i32* %internal.addr, align 4, !tbaa !14
  %0 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %realname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %realname, align 8, !tbaa !1
  %2 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast [258 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 258, i8* %3) #1
  %4 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 1256, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 45), align 1, !tbaa !27
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %7, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load i8*, i8** %from.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true ], [ %8, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %9, i32 0, i32 46
  %10 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 120, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 1001, i32 %10)
  %11 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %11, i32 0, i32 11
  %12 = load i64, i64* %e_flags, align 8, !tbaa !35
  %and = and i64 %12, 2048
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i8, i8* @OpMode, align 1, !tbaa !27
  %conv6 = sext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv6, 115
  br i1 %cmp7, label %if.then.17, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %14 = load i8, i8* @OpMode, align 1, !tbaa !27
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp eq i32 %conv10, 97
  br i1 %cmp11, label %if.then.17, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %15 = load i8, i8* @OpMode, align 1, !tbaa !27
  %conv14 = sext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv14, 100
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false, %if.end
  %16 = load i8*, i8** %from.addr, align 8, !tbaa !1
  store i8* %16, i8** %realname, align 8, !tbaa !1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %lor.lhs.false.13
  %17 = load i8*, i8** %realname, align 8, !tbaa !1
  %cmp19 = icmp eq i8* %17, null
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end.18
  %18 = load i8*, i8** %realname, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.21, %if.end.18
  %call = call i8* @username()
  store i8* %call, i8** %realname, align 8, !tbaa !1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %lor.lhs.false.21
  %20 = load i32, i32* @ConfigLevel, align 4, !tbaa !14
  %cmp27 = icmp slt i32 %20, 2
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store i32 1, i32* @SuprErrs, align 4, !tbaa !14
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro31 = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 46
  %call32 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8** null)
  %22 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro31, i32 2, i32 %call32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 1017, i32 %22)
  %23 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 4
  %q_state = getelementptr inbounds %struct.address, %struct.address* %e_from, i32 0, i32 21
  store i16 2, i16* %q_state, align 2, !tbaa !62
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from33 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 4
  %q_flags = getelementptr inbounds %struct.address, %struct.address* %e_from33, i32 0, i32 5
  store i64 0, i64* %q_flags, align 8, !tbaa !63
  %25 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %cmp34 = icmp eq i8* %25, null
  br i1 %cmp34, label %if.then.61, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end.30
  %26 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from37 = getelementptr inbounds %struct.envelope, %struct.envelope* %27, i32 0, i32 4
  %28 = load i32, i32* %delimchar.addr, align 4, !tbaa !14
  %29 = load i8**, i8*** %delimptr.addr, align 8, !tbaa !1
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call38 = call %struct.address* @parseaddr(i8* %26, %struct.address* %e_from37, i32 49, i32 %28, i8** %29, %struct.envelope* %30, i32 0)
  %cmp39 = icmp eq %struct.address* %call38, null
  br i1 %cmp39, label %if.then.61, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.36
  %31 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from42 = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 4
  %q_state43 = getelementptr inbounds %struct.address, %struct.address* %e_from42, i32 0, i32 21
  %32 = load i16, i16* %q_state43, align 2, !tbaa !62
  %conv44 = sext i16 %32 to i32
  %cmp45 = icmp eq i32 %conv44, 2
  br i1 %cmp45, label %if.then.61, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.41
  %33 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from48 = getelementptr inbounds %struct.envelope, %struct.envelope* %33, i32 0, i32 4
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %e_from48, i32 0, i32 4
  %34 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !64
  %35 = load %struct.mailer*, %struct.mailer** @ProgMailer, align 8, !tbaa !1
  %cmp49 = icmp eq %struct.mailer* %34, %35
  br i1 %cmp49, label %if.then.61, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %36 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from52 = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 4
  %q_mailer53 = getelementptr inbounds %struct.address, %struct.address* %e_from52, i32 0, i32 4
  %37 = load %struct.mailer*, %struct.mailer** %q_mailer53, align 8, !tbaa !64
  %38 = load %struct.mailer*, %struct.mailer** @FileMailer, align 8, !tbaa !1
  %cmp54 = icmp eq %struct.mailer* %37, %38
  br i1 %cmp54, label %if.then.61, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.51
  %39 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from57 = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 4
  %q_mailer58 = getelementptr inbounds %struct.address, %struct.address* %e_from57, i32 0, i32 4
  %40 = load %struct.mailer*, %struct.mailer** %q_mailer58, align 8, !tbaa !64
  %41 = load %struct.mailer*, %struct.mailer** @InclMailer, align 8, !tbaa !1
  %cmp59 = icmp eq %struct.mailer* %40, %41
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %lor.lhs.false.56, %lor.lhs.false.51, %lor.lhs.false.47, %lor.lhs.false.41, %lor.lhs.false.36, %if.end.30
  %42 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %cmp62 = icmp ne i8* %42, null
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.80

land.lhs.true.64:                                 ; preds = %if.then.61
  %43 = load i32, i32* @LogLevel, align 4, !tbaa !14
  %cmp65 = icmp sgt i32 %43, 2
  br i1 %cmp65, label %if.then.67, label %if.end.80

if.then.67:                                       ; preds = %land.lhs.true.64
  %44 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = bitcast [514 x i8]* %ebuf to i8*
  call void @llvm.lifetime.start(i64 514, i8* %45) #1
  %46 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call68 = call i8* @macvalue(i32 95, %struct.envelope* %46)
  store i8* %call68, i8** %p, align 8, !tbaa !1
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp69 = icmp eq i8* %47, null
  br i1 %cmp69, label %if.then.71, label %if.end.78

if.then.71:                                       ; preds = %if.then.67
  %48 = bitcast i8** %host to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  store i8* %49, i8** %host, align 8, !tbaa !1
  %50 = load i8*, i8** %host, align 8, !tbaa !1
  %cmp72 = icmp eq i8* %50, null
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.71
  %51 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  store i8* %51, i8** %host, align 8, !tbaa !1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.then.71
  %arraydecay = getelementptr inbounds [514 x i8], [514 x i8]* %ebuf, i32 0, i32 0
  %52 = load i8*, i8** %realname, align 8, !tbaa !1
  %53 = load i8*, i8** %host, align 8, !tbaa !1
  %call76 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 514, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 256, i8* %52, i32 256, i8* %53)
  %arraydecay77 = getelementptr inbounds [514 x i8], [514 x i8]* %ebuf, i32 0, i32 0
  store i8* %arraydecay77, i8** %p, align 8, !tbaa !1
  %54 = bitcast i8** %host to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.75, %if.then.67
  %55 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %55, i32 0, i32 25
  %56 = load i8*, i8** %e_id, align 8, !tbaa !36
  %57 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %call79 = call i8* @shortenstring(i8* %57, i64 83)
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %56, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.47, i32 0, i32 0), i8* %call79, i8* %58)
  %59 = bitcast [514 x i8]* %ebuf to i8*
  call void @llvm.lifetime.end(i64 514, i8* %59) #1
  %60 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.78, %land.lhs.true.64, %if.then.61
  %61 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %cmp81 = icmp ne i8* %61, null
  br i1 %cmp81, label %if.then.83, label %if.end.92

if.then.83:                                       ; preds = %if.end.80
  %62 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from84 = getelementptr inbounds %struct.envelope, %struct.envelope* %62, i32 0, i32 4
  %q_state85 = getelementptr inbounds %struct.address, %struct.address* %e_from84, i32 0, i32 21
  %63 = load i16, i16* %q_state85, align 2, !tbaa !62
  %conv86 = sext i16 %63 to i32
  %cmp87 = icmp eq i32 %conv86, 2
  br i1 %cmp87, label %if.end.91, label %if.then.89

if.then.89:                                       ; preds = %if.then.83
  %64 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_status = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 41
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8** %e_status, align 8, !tbaa !65
  %65 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_status90 = getelementptr inbounds %struct.envelope, %struct.envelope* %65, i32 0, i32 41
  %66 = load i8*, i8** %e_status90, align 8, !tbaa !65
  call void (i8*, i8*, ...) @usrerrenh(i8* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.then.83
  store i32 1, i32* @SuprErrs, align 4, !tbaa !14
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.80
  %67 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %68 = load i8*, i8** %realname, align 8, !tbaa !1
  %cmp93 = icmp eq i8* %67, %68
  br i1 %cmp93, label %if.then.100, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %if.end.92
  %69 = load i8*, i8** %realname, align 8, !tbaa !1
  store i8* %69, i8** %from.addr, align 8, !tbaa !1
  %70 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from96 = getelementptr inbounds %struct.envelope, %struct.envelope* %70, i32 0, i32 4
  %71 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call97 = call %struct.address* @parseaddr(i8* %69, %struct.address* %e_from96, i32 49, i32 32, i8** null, %struct.envelope* %71, i32 0)
  %cmp98 = icmp eq %struct.address* %call97, null
  br i1 %cmp98, label %if.then.100, label %if.end.115

if.then.100:                                      ; preds = %lor.lhs.false.95, %if.end.92
  %72 = bitcast [100 x i8]* %nbuf to i8*
  call void @llvm.lifetime.start(i64 100, i8* %72) #1
  store i32 1, i32* @SuprErrs, align 4, !tbaa !14
  %arraydecay101 = getelementptr inbounds [100 x i8], [100 x i8]* %nbuf, i32 0, i32 0
  %73 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* %arraydecay101, i64 100, %struct.envelope* %73)
  %74 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %74, i32 0, i32 52
  %75 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !30
  %arraydecay102 = getelementptr inbounds [100 x i8], [100 x i8]* %nbuf, i32 0, i32 0
  %call103 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %75, i8* %arraydecay102)
  store i8* %call103, i8** %from.addr, align 8, !tbaa !1
  %76 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %77 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from104 = getelementptr inbounds %struct.envelope, %struct.envelope* %77, i32 0, i32 4
  %78 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call105 = call %struct.address* @parseaddr(i8* %76, %struct.address* %e_from104, i32 48, i32 32, i8** null, %struct.envelope* %78, i32 0)
  %cmp106 = icmp eq %struct.address* %call105, null
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.114

land.lhs.true.108:                                ; preds = %if.then.100
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8** %from.addr, align 8, !tbaa !1
  %79 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from109 = getelementptr inbounds %struct.envelope, %struct.envelope* %79, i32 0, i32 4
  %80 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call110 = call %struct.address* @parseaddr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct.address* %e_from109, i32 48, i32 32, i8** null, %struct.envelope* %80, i32 0)
  %cmp111 = icmp eq %struct.address* %call110, null
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.108
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %land.lhs.true.108, %if.then.100
  %81 = bitcast [100 x i8]* %nbuf to i8*
  call void @llvm.lifetime.end(i64 100, i8* %81) #1
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %lor.lhs.false.95
  br label %if.end.116

if.else:                                          ; preds = %lor.lhs.false.56
  store i32 1, i32* @FromFlag, align 4, !tbaa !14
  br label %if.end.116

if.end.116:                                       ; preds = %if.else, %if.end.115
  %82 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from117 = getelementptr inbounds %struct.envelope, %struct.envelope* %82, i32 0, i32 4
  %q_state118 = getelementptr inbounds %struct.address, %struct.address* %e_from117, i32 0, i32 21
  store i16 8, i16* %q_state118, align 2, !tbaa !62
  %83 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 45), align 1, !tbaa !27
  %conv119 = zext i8 %83 to i32
  %cmp120 = icmp sge i32 %conv119, 5
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.127

land.lhs.true.122:                                ; preds = %if.end.116
  %84 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool123 = icmp ne i32 %84, 0
  br i1 %tobool123, label %if.end.127, label %if.then.124

if.then.124:                                      ; preds = %land.lhs.true.122
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0))
  %call125 = call %struct.sm_file* @sm_debug_file()
  %85 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from126 = getelementptr inbounds %struct.envelope, %struct.envelope* %85, i32 0, i32 4
  call void @printaddr(%struct.sm_file* %call125, %struct.address* %e_from126, i32 0)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %land.lhs.true.122, %if.end.116
  store i32 0, i32* @SuprErrs, align 4, !tbaa !14
  %86 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from128 = getelementptr inbounds %struct.envelope, %struct.envelope* %86, i32 0, i32 4
  %q_mailer129 = getelementptr inbounds %struct.address, %struct.address* %e_from128, i32 0, i32 4
  %87 = load %struct.mailer*, %struct.mailer** %q_mailer129, align 8, !tbaa !64
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %87, i32 0, i32 5
  %arrayidx130 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %88 = load i32, i32* %arrayidx130, align 4, !tbaa !14
  %and131 = and i32 %88, 8388608
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %if.then.133, label %if.else.287

if.then.133:                                      ; preds = %if.end.127
  %89 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.start(i64 8712, i8* %89) #1
  %90 = load i32, i32* %internal.addr, align 4, !tbaa !14
  %tobool134 = icmp ne i32 %90, 0
  br i1 %tobool134, label %if.end.153, label %if.then.135

if.then.135:                                      ; preds = %if.then.133
  %91 = load i8*, i8** @FullName, align 8, !tbaa !1
  %cmp136 = icmp eq i8* %91, null
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %if.then.135
  %92 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call139 = call i8* @macvalue(i32 120, %struct.envelope* %92)
  store i8* %call139, i8** @FullName, align 8, !tbaa !1
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.then.135
  %93 = load i8*, i8** @FullName, align 8, !tbaa !1
  %cmp141 = icmp ne i8* %93, null
  br i1 %cmp141, label %if.then.143, label %if.end.152

if.then.143:                                      ; preds = %if.end.140
  %94 = load i8*, i8** @FullName, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i8, i8* %94, i64 0
  %95 = load i8, i8* %arrayidx144, align 1, !tbaa !27
  %conv145 = sext i8 %95 to i32
  %cmp146 = icmp eq i32 %conv145, 0
  br i1 %cmp146, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %if.then.143
  store i8* null, i8** @FullName, align 8, !tbaa !1
  br label %if.end.151

if.else.149:                                      ; preds = %if.then.143
  %96 = load i8*, i8** @FullName, align 8, !tbaa !1
  %call150 = call i8* @newstr(i8* %96)
  store i8* %call150, i8** @FullName, align 8, !tbaa !1
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.149, %if.then.148
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.140
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.133
  %97 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from154 = getelementptr inbounds %struct.envelope, %struct.envelope* %97, i32 0, i32 4
  %q_user = getelementptr inbounds %struct.address, %struct.address* %e_from154, i32 0, i32 1
  %98 = load i8*, i8** %q_user, align 8, !tbaa !66
  %arrayidx155 = getelementptr inbounds i8, i8* %98, i64 0
  %99 = load i8, i8* %arrayidx155, align 1, !tbaa !27
  %conv156 = sext i8 %99 to i32
  %cmp157 = icmp ne i32 %conv156, 0
  br i1 %cmp157, label %land.lhs.true.159, label %if.else.276

land.lhs.true.159:                                ; preds = %if.end.153
  %100 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from160 = getelementptr inbounds %struct.envelope, %struct.envelope* %100, i32 0, i32 4
  %q_user161 = getelementptr inbounds %struct.address, %struct.address* %e_from160, i32 0, i32 1
  %101 = load i8*, i8** %q_user161, align 8, !tbaa !66
  %call162 = call i32 @sm_mbdb_lookup(i8* %101, %struct.SM_MBDB_T* %user)
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %if.then.165, label %if.else.276

if.then.165:                                      ; preds = %land.lhs.true.159
  %mbdb_homedir = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay166 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir, i32 0, i32 0
  %102 = load i8, i8* %arraydecay166, align 1, !tbaa !27
  %conv167 = sext i8 %102 to i32
  %cmp168 = icmp eq i32 %conv167, 0
  br i1 %cmp168, label %if.then.170, label %if.else.172

if.then.170:                                      ; preds = %if.then.165
  %103 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from171 = getelementptr inbounds %struct.envelope, %struct.envelope* %103, i32 0, i32 4
  %q_home = getelementptr inbounds %struct.address, %struct.address* %e_from171, i32 0, i32 8
  store i8* null, i8** %q_home, align 8, !tbaa !67
  br label %if.end.237

if.else.172:                                      ; preds = %if.then.165
  %104 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  %105 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.53 to i64)), i64 1), label %land.lhs.true.173, label %cond.false.218

land.lhs.true.173:                                ; preds = %if.else.172
  store i64 1, i64* %__s2_len, align 8, !tbaa !25
  %106 = load i64, i64* %__s2_len, align 8, !tbaa !25
  %cmp174 = icmp ult i64 %106, 4
  br i1 %cmp174, label %cond.true.176, label %cond.false.218

cond.true.176:                                    ; preds = %land.lhs.true.173
  %107 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %mbdb_homedir178 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay179 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir178, i32 0, i32 0
  store i8* %arraydecay179, i8** %__s1, align 8, !tbaa !1
  %108 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %109, i64 0
  %110 = load i8, i8* %arrayidx181, align 1, !tbaa !27
  %conv182 = zext i8 %110 to i32
  %111 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), align 1, !tbaa !27
  %conv183 = zext i8 %111 to i32
  %sub = sub nsw i32 %conv182, %conv183
  store i32 %sub, i32* %__result, align 4, !tbaa !14
  %112 = load i64, i64* %__s2_len, align 8, !tbaa !25
  %cmp184 = icmp ugt i64 %112, 0
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.216

land.lhs.true.186:                                ; preds = %cond.true.176
  %113 = load i32, i32* %__result, align 4, !tbaa !14
  %cmp187 = icmp eq i32 %113, 0
  br i1 %cmp187, label %if.then.189, label %if.end.216

if.then.189:                                      ; preds = %land.lhs.true.186
  %114 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx190, align 1, !tbaa !27
  %conv191 = zext i8 %115 to i32
  %116 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i64 1), align 1, !tbaa !27
  %conv192 = zext i8 %116 to i32
  %sub193 = sub nsw i32 %conv191, %conv192
  store i32 %sub193, i32* %__result, align 4, !tbaa !14
  %117 = load i64, i64* %__s2_len, align 8, !tbaa !25
  %cmp194 = icmp ugt i64 %117, 1
  br i1 %cmp194, label %land.lhs.true.196, label %if.end.215

land.lhs.true.196:                                ; preds = %if.then.189
  %118 = load i32, i32* %__result, align 4, !tbaa !14
  %cmp197 = icmp eq i32 %118, 0
  br i1 %cmp197, label %if.then.199, label %if.end.215

if.then.199:                                      ; preds = %land.lhs.true.196
  %119 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i8, i8* %119, i64 2
  %120 = load i8, i8* %arrayidx200, align 1, !tbaa !27
  %conv201 = zext i8 %120 to i32
  %121 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i64 2), align 1, !tbaa !27
  %conv202 = zext i8 %121 to i32
  %sub203 = sub nsw i32 %conv201, %conv202
  store i32 %sub203, i32* %__result, align 4, !tbaa !14
  %122 = load i64, i64* %__s2_len, align 8, !tbaa !25
  %cmp204 = icmp ugt i64 %122, 2
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.214

land.lhs.true.206:                                ; preds = %if.then.199
  %123 = load i32, i32* %__result, align 4, !tbaa !14
  %cmp207 = icmp eq i32 %123, 0
  br i1 %cmp207, label %if.then.209, label %if.end.214

if.then.209:                                      ; preds = %land.lhs.true.206
  %124 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i8, i8* %124, i64 3
  %125 = load i8, i8* %arrayidx210, align 1, !tbaa !27
  %conv211 = zext i8 %125 to i32
  %126 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i64 3), align 1, !tbaa !27
  %conv212 = zext i8 %126 to i32
  %sub213 = sub nsw i32 %conv211, %conv212
  store i32 %sub213, i32* %__result, align 4, !tbaa !14
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.209, %land.lhs.true.206, %if.then.199
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %land.lhs.true.196, %if.then.189
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %land.lhs.true.186, %cond.true.176
  %127 = load i32, i32* %__result, align 4, !tbaa !14
  store i32 %127, i32* %tmp217, !tbaa !14
  %128 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = load i32, i32* %tmp217, !tbaa !14
  br label %cond.end.222

cond.false.218:                                   ; preds = %land.lhs.true.173, %if.else.172
  %mbdb_homedir219 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay220 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir219, i32 0, i32 0
  %call221 = call i32 @strcmp(i8* %arraydecay220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0)) #1
  br label %cond.end.222

cond.end.222:                                     ; preds = %cond.false.218, %if.end.216
  %cond223 = phi i32 [ %130, %if.end.216 ], [ %call221, %cond.false.218 ]
  store i32 %cond223, i32* %tmp, !tbaa !14
  %131 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = load i32, i32* %tmp, !tbaa !14
  %cmp224 = icmp eq i32 %133, 0
  br i1 %cmp224, label %if.then.226, label %if.else.229

if.then.226:                                      ; preds = %cond.end.222
  %134 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from227 = getelementptr inbounds %struct.envelope, %struct.envelope* %134, i32 0, i32 4
  %q_home228 = getelementptr inbounds %struct.address, %struct.address* %e_from227, i32 0, i32 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %q_home228, align 8, !tbaa !67
  br label %if.end.236

if.else.229:                                      ; preds = %cond.end.222
  %135 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool230 = getelementptr inbounds %struct.envelope, %struct.envelope* %135, i32 0, i32 52
  %136 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool230, align 8, !tbaa !30
  %mbdb_homedir231 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay232 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir231, i32 0, i32 0
  %call233 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %136, i8* %arraydecay232)
  %137 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from234 = getelementptr inbounds %struct.envelope, %struct.envelope* %137, i32 0, i32 4
  %q_home235 = getelementptr inbounds %struct.address, %struct.address* %e_from234, i32 0, i32 8
  store i8* %call233, i8** %q_home235, align 8, !tbaa !67
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.229, %if.then.226
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.170
  %138 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro238 = getelementptr inbounds %struct.envelope, %struct.envelope* %138, i32 0, i32 46
  %139 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from239 = getelementptr inbounds %struct.envelope, %struct.envelope* %139, i32 0, i32 4
  %q_home240 = getelementptr inbounds %struct.address, %struct.address* %e_from239, i32 0, i32 8
  %140 = load i8*, i8** %q_home240, align 8, !tbaa !67
  %141 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro238, i32 2, i32 122, i8* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 1134, i32 %141)
  %mbdb_uid = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %142 = load i32, i32* %mbdb_uid, align 4, !tbaa !68
  %cmp241 = icmp ne i32 %142, -1
  br i1 %cmp241, label %if.then.243, label %if.end.249

if.then.243:                                      ; preds = %if.end.237
  %mbdb_uid244 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %143 = load i32, i32* %mbdb_uid244, align 4, !tbaa !68
  %144 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from245 = getelementptr inbounds %struct.envelope, %struct.envelope* %144, i32 0, i32 4
  %q_uid = getelementptr inbounds %struct.address, %struct.address* %e_from245, i32 0, i32 6
  store i32 %143, i32* %q_uid, align 4, !tbaa !70
  %mbdb_gid = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 1
  %145 = load i32, i32* %mbdb_gid, align 4, !tbaa !71
  %146 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from246 = getelementptr inbounds %struct.envelope, %struct.envelope* %146, i32 0, i32 4
  %q_gid = getelementptr inbounds %struct.address, %struct.address* %e_from246, i32 0, i32 7
  store i32 %145, i32* %q_gid, align 4, !tbaa !72
  %147 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from247 = getelementptr inbounds %struct.envelope, %struct.envelope* %147, i32 0, i32 4
  %q_flags248 = getelementptr inbounds %struct.address, %struct.address* %e_from247, i32 0, i32 5
  %148 = load i64, i64* %q_flags248, align 8, !tbaa !63
  %or = or i64 %148, 1
  store i64 %or, i64* %q_flags248, align 8, !tbaa !63
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.243, %if.end.237
  %149 = load i8*, i8** @FullName, align 8, !tbaa !1
  %cmp250 = icmp eq i8* %149, null
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.275

land.lhs.true.252:                                ; preds = %if.end.249
  %150 = load i32, i32* %internal.addr, align 4, !tbaa !14
  %tobool253 = icmp ne i32 %150, 0
  br i1 %tobool253, label %if.end.275, label %land.lhs.true.254

land.lhs.true.254:                                ; preds = %land.lhs.true.252
  %mbdb_fullname = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 3
  %arrayidx255 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_fullname, i32 0, i64 0
  %151 = load i8, i8* %arrayidx255, align 1, !tbaa !27
  %conv256 = sext i8 %151 to i32
  %cmp257 = icmp ne i32 %conv256, 0
  br i1 %cmp257, label %land.lhs.true.259, label %if.end.275

land.lhs.true.259:                                ; preds = %land.lhs.true.254
  %152 = bitcast i64* %__s1_len261 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %152) #1
  %153 = bitcast i64* %__s2_len263 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  %mbdb_name = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 2
  %arraydecay265 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_name, i32 0, i32 0
  %154 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from266 = getelementptr inbounds %struct.envelope, %struct.envelope* %154, i32 0, i32 4
  %q_user267 = getelementptr inbounds %struct.address, %struct.address* %e_from266, i32 0, i32 1
  %155 = load i8*, i8** %q_user267, align 8, !tbaa !66
  %call268 = call i32 @strcmp(i8* %arraydecay265, i8* %155) #1
  store i32 %call268, i32* %tmp264, !tbaa !14
  %156 = bitcast i64* %__s2_len263 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i64* %__s1_len261 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = load i32, i32* %tmp264, !tbaa !14
  %cmp269 = icmp eq i32 %158, 0
  br i1 %cmp269, label %if.then.271, label %if.end.275

if.then.271:                                      ; preds = %land.lhs.true.259
  %mbdb_fullname272 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 3
  %arraydecay273 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_fullname272, i32 0, i32 0
  %call274 = call i8* @newstr(i8* %arraydecay273)
  store i8* %call274, i8** @FullName, align 8, !tbaa !1
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.271, %land.lhs.true.259, %land.lhs.true.254, %land.lhs.true.252, %if.end.249
  br label %if.end.279

if.else.276:                                      ; preds = %land.lhs.true.159, %if.end.153
  %159 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from277 = getelementptr inbounds %struct.envelope, %struct.envelope* %159, i32 0, i32 4
  %q_home278 = getelementptr inbounds %struct.address, %struct.address* %e_from277, i32 0, i32 8
  store i8* null, i8** %q_home278, align 8, !tbaa !67
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.276, %if.end.275
  %160 = load i8*, i8** @FullName, align 8, !tbaa !1
  %cmp280 = icmp ne i8* %160, null
  br i1 %cmp280, label %land.lhs.true.282, label %if.end.286

land.lhs.true.282:                                ; preds = %if.end.279
  %161 = load i32, i32* %internal.addr, align 4, !tbaa !14
  %tobool283 = icmp ne i32 %161, 0
  br i1 %tobool283, label %if.end.286, label %if.then.284

if.then.284:                                      ; preds = %land.lhs.true.282
  %162 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro285 = getelementptr inbounds %struct.envelope, %struct.envelope* %162, i32 0, i32 46
  %163 = load i8*, i8** @FullName, align 8, !tbaa !1
  %164 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro285, i32 1, i32 120, i8* %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 1157, i32 %164)
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.284, %land.lhs.true.282, %if.end.279
  %165 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.end(i64 8712, i8* %165) #1
  br label %if.end.396

if.else.287:                                      ; preds = %if.end.127
  %166 = load i32, i32* %internal.addr, align 4, !tbaa !14
  %tobool288 = icmp ne i32 %166, 0
  br i1 %tobool288, label %if.end.395, label %land.lhs.true.289

land.lhs.true.289:                                ; preds = %if.else.287
  %167 = load i8, i8* @OpMode, align 1, !tbaa !27
  %conv290 = sext i8 %167 to i32
  %cmp291 = icmp ne i32 %conv290, 100
  br i1 %cmp291, label %land.lhs.true.293, label %if.end.395

land.lhs.true.293:                                ; preds = %land.lhs.true.289
  %168 = load i8, i8* @OpMode, align 1, !tbaa !27
  %conv294 = sext i8 %168 to i32
  %cmp295 = icmp ne i32 %conv294, 115
  br i1 %cmp295, label %if.then.297, label %if.end.395

if.then.297:                                      ; preds = %land.lhs.true.293
  %169 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from298 = getelementptr inbounds %struct.envelope, %struct.envelope* %169, i32 0, i32 4
  %q_home299 = getelementptr inbounds %struct.address, %struct.address* %e_from298, i32 0, i32 8
  %170 = load i8*, i8** %q_home299, align 8, !tbaa !67
  %cmp300 = icmp eq i8* %170, null
  br i1 %cmp300, label %if.then.302, label %if.end.387

if.then.302:                                      ; preds = %if.then.297
  %call303 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0)) #1
  %171 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from304 = getelementptr inbounds %struct.envelope, %struct.envelope* %171, i32 0, i32 4
  %q_home305 = getelementptr inbounds %struct.address, %struct.address* %e_from304, i32 0, i32 8
  store i8* %call303, i8** %q_home305, align 8, !tbaa !67
  %172 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from306 = getelementptr inbounds %struct.envelope, %struct.envelope* %172, i32 0, i32 4
  %q_home307 = getelementptr inbounds %struct.address, %struct.address* %e_from306, i32 0, i32 8
  %173 = load i8*, i8** %q_home307, align 8, !tbaa !67
  %cmp308 = icmp ne i8* %173, null
  br i1 %cmp308, label %if.then.310, label %if.end.386

if.then.310:                                      ; preds = %if.then.302
  %174 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from311 = getelementptr inbounds %struct.envelope, %struct.envelope* %174, i32 0, i32 4
  %q_home312 = getelementptr inbounds %struct.address, %struct.address* %e_from311, i32 0, i32 8
  %175 = load i8*, i8** %q_home312, align 8, !tbaa !67
  %176 = load i8, i8* %175, align 1, !tbaa !27
  %conv313 = sext i8 %176 to i32
  %cmp314 = icmp eq i32 %conv313, 0
  br i1 %cmp314, label %if.then.316, label %if.else.319

if.then.316:                                      ; preds = %if.then.310
  %177 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from317 = getelementptr inbounds %struct.envelope, %struct.envelope* %177, i32 0, i32 4
  %q_home318 = getelementptr inbounds %struct.address, %struct.address* %e_from317, i32 0, i32 8
  store i8* null, i8** %q_home318, align 8, !tbaa !67
  br label %if.end.385

if.else.319:                                      ; preds = %if.then.310
  %178 = bitcast i64* %__s1_len321 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #1
  %179 = bitcast i64* %__s2_len323 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.53 to i64)), i64 1), label %land.lhs.true.325, label %cond.false.373

land.lhs.true.325:                                ; preds = %if.else.319
  store i64 1, i64* %__s2_len323, align 8, !tbaa !25
  %180 = load i64, i64* %__s2_len323, align 8, !tbaa !25
  %cmp326 = icmp ult i64 %180, 4
  br i1 %cmp326, label %cond.true.328, label %cond.false.373

cond.true.328:                                    ; preds = %land.lhs.true.325
  %181 = bitcast i8** %__s1330 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  %182 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from331 = getelementptr inbounds %struct.envelope, %struct.envelope* %182, i32 0, i32 4
  %q_home332 = getelementptr inbounds %struct.address, %struct.address* %e_from331, i32 0, i32 8
  %183 = load i8*, i8** %q_home332, align 8, !tbaa !67
  store i8* %183, i8** %__s1330, align 8, !tbaa !1
  %184 = bitcast i32* %__result334 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %185 = load i8*, i8** %__s1330, align 8, !tbaa !1
  %arrayidx335 = getelementptr inbounds i8, i8* %185, i64 0
  %186 = load i8, i8* %arrayidx335, align 1, !tbaa !27
  %conv336 = zext i8 %186 to i32
  %187 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), align 1, !tbaa !27
  %conv337 = zext i8 %187 to i32
  %sub338 = sub nsw i32 %conv336, %conv337
  store i32 %sub338, i32* %__result334, align 4, !tbaa !14
  %188 = load i64, i64* %__s2_len323, align 8, !tbaa !25
  %cmp339 = icmp ugt i64 %188, 0
  br i1 %cmp339, label %land.lhs.true.341, label %if.end.371

land.lhs.true.341:                                ; preds = %cond.true.328
  %189 = load i32, i32* %__result334, align 4, !tbaa !14
  %cmp342 = icmp eq i32 %189, 0
  br i1 %cmp342, label %if.then.344, label %if.end.371

if.then.344:                                      ; preds = %land.lhs.true.341
  %190 = load i8*, i8** %__s1330, align 8, !tbaa !1
  %arrayidx345 = getelementptr inbounds i8, i8* %190, i64 1
  %191 = load i8, i8* %arrayidx345, align 1, !tbaa !27
  %conv346 = zext i8 %191 to i32
  %192 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i64 1), align 1, !tbaa !27
  %conv347 = zext i8 %192 to i32
  %sub348 = sub nsw i32 %conv346, %conv347
  store i32 %sub348, i32* %__result334, align 4, !tbaa !14
  %193 = load i64, i64* %__s2_len323, align 8, !tbaa !25
  %cmp349 = icmp ugt i64 %193, 1
  br i1 %cmp349, label %land.lhs.true.351, label %if.end.370

land.lhs.true.351:                                ; preds = %if.then.344
  %194 = load i32, i32* %__result334, align 4, !tbaa !14
  %cmp352 = icmp eq i32 %194, 0
  br i1 %cmp352, label %if.then.354, label %if.end.370

if.then.354:                                      ; preds = %land.lhs.true.351
  %195 = load i8*, i8** %__s1330, align 8, !tbaa !1
  %arrayidx355 = getelementptr inbounds i8, i8* %195, i64 2
  %196 = load i8, i8* %arrayidx355, align 1, !tbaa !27
  %conv356 = zext i8 %196 to i32
  %197 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i64 2), align 1, !tbaa !27
  %conv357 = zext i8 %197 to i32
  %sub358 = sub nsw i32 %conv356, %conv357
  store i32 %sub358, i32* %__result334, align 4, !tbaa !14
  %198 = load i64, i64* %__s2_len323, align 8, !tbaa !25
  %cmp359 = icmp ugt i64 %198, 2
  br i1 %cmp359, label %land.lhs.true.361, label %if.end.369

land.lhs.true.361:                                ; preds = %if.then.354
  %199 = load i32, i32* %__result334, align 4, !tbaa !14
  %cmp362 = icmp eq i32 %199, 0
  br i1 %cmp362, label %if.then.364, label %if.end.369

if.then.364:                                      ; preds = %land.lhs.true.361
  %200 = load i8*, i8** %__s1330, align 8, !tbaa !1
  %arrayidx365 = getelementptr inbounds i8, i8* %200, i64 3
  %201 = load i8, i8* %arrayidx365, align 1, !tbaa !27
  %conv366 = zext i8 %201 to i32
  %202 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i64 3), align 1, !tbaa !27
  %conv367 = zext i8 %202 to i32
  %sub368 = sub nsw i32 %conv366, %conv367
  store i32 %sub368, i32* %__result334, align 4, !tbaa !14
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.364, %land.lhs.true.361, %if.then.354
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %land.lhs.true.351, %if.then.344
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %land.lhs.true.341, %cond.true.328
  %203 = load i32, i32* %__result334, align 4, !tbaa !14
  store i32 %203, i32* %tmp372, !tbaa !14
  %204 = bitcast i32* %__result334 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i8** %__s1330 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = load i32, i32* %tmp372, !tbaa !14
  br label %cond.end.377

cond.false.373:                                   ; preds = %land.lhs.true.325, %if.else.319
  %207 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from374 = getelementptr inbounds %struct.envelope, %struct.envelope* %207, i32 0, i32 4
  %q_home375 = getelementptr inbounds %struct.address, %struct.address* %e_from374, i32 0, i32 8
  %208 = load i8*, i8** %q_home375, align 8, !tbaa !67
  %call376 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0)) #1
  br label %cond.end.377

cond.end.377:                                     ; preds = %cond.false.373, %if.end.371
  %cond378 = phi i32 [ %206, %if.end.371 ], [ %call376, %cond.false.373 ]
  store i32 %cond378, i32* %tmp324, !tbaa !14
  %209 = bitcast i64* %__s2_len323 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i64* %__s1_len321 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = load i32, i32* %tmp324, !tbaa !14
  %cmp379 = icmp eq i32 %211, 0
  br i1 %cmp379, label %if.then.381, label %if.end.384

if.then.381:                                      ; preds = %cond.end.377
  %212 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from382 = getelementptr inbounds %struct.envelope, %struct.envelope* %212, i32 0, i32 4
  %q_home383 = getelementptr inbounds %struct.address, %struct.address* %e_from382, i32 0, i32 8
  %213 = load i8*, i8** %q_home383, align 8, !tbaa !67
  %incdec.ptr = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr, i8** %q_home383, align 8, !tbaa !67
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.381, %cond.end.377
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.then.316
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.then.302
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %if.then.297
  %214 = load i32, i32* @RealUid, align 4, !tbaa !14
  %215 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from388 = getelementptr inbounds %struct.envelope, %struct.envelope* %215, i32 0, i32 4
  %q_uid389 = getelementptr inbounds %struct.address, %struct.address* %e_from388, i32 0, i32 6
  store i32 %214, i32* %q_uid389, align 4, !tbaa !70
  %216 = load i32, i32* @RealGid, align 4, !tbaa !14
  %217 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from390 = getelementptr inbounds %struct.envelope, %struct.envelope* %217, i32 0, i32 4
  %q_gid391 = getelementptr inbounds %struct.address, %struct.address* %e_from390, i32 0, i32 7
  store i32 %216, i32* %q_gid391, align 4, !tbaa !72
  %218 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from392 = getelementptr inbounds %struct.envelope, %struct.envelope* %218, i32 0, i32 4
  %q_flags393 = getelementptr inbounds %struct.address, %struct.address* %e_from392, i32 0, i32 5
  %219 = load i64, i64* %q_flags393, align 8, !tbaa !63
  %or394 = or i64 %219, 1
  store i64 %or394, i64* %q_flags393, align 8, !tbaa !63
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.387, %land.lhs.true.293, %land.lhs.true.289, %if.else.287
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %if.end.286
  %220 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %221 = load i32, i32* %delimchar.addr, align 4, !tbaa !14
  %arraydecay397 = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf, i32 0, i32 0
  %call398 = call i8** @prescan(i8* %220, i32 %221, i8* %arraydecay397, i32 1256, i8** null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @IntTokenTab, i32 0, i32 0), i32 0)
  store i8** %call398, i8*** %pvp, align 8, !tbaa !1
  %222 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %cmp399 = icmp eq i8** %222, null
  br i1 %cmp399, label %if.then.401, label %if.end.408

if.then.401:                                      ; preds = %if.end.396
  %223 = load i32, i32* @LogLevel, align 4, !tbaa !14
  %cmp402 = icmp sgt i32 %223, 2
  br i1 %cmp402, label %if.then.404, label %if.end.407

if.then.404:                                      ; preds = %if.then.401
  %224 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id405 = getelementptr inbounds %struct.envelope, %struct.envelope* %224, i32 0, i32 25
  %225 = load i8*, i8** %e_id405, align 8, !tbaa !36
  %226 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %call406 = call i8* @shortenstring(i8* %226, i64 203)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %225, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i32 0, i32 0), i8* %call406)
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.404, %if.then.401
  %227 = load i32, i32* @ExitStat, align 4, !tbaa !14
  call void @finis(i32 1, i32 1, i32 %227)
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.407, %if.end.396
  %228 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %229 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call409 = call i32 @rewrite(i8** %228, i32 3, i32 0, %struct.envelope* %229, i32 1000)
  %230 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %231 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call410 = call i32 @rewrite(i8** %230, i32 1, i32 0, %struct.envelope* %231, i32 1000)
  %232 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %233 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call411 = call i32 @rewrite(i8** %232, i32 4, i32 0, %struct.envelope* %233, i32 1000)
  %234 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro412 = getelementptr inbounds %struct.envelope, %struct.envelope* %234, i32 0, i32 46
  %call413 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8** null)
  %235 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro412, i32 2, i32 %call413, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 1196, i32 %235)
  %arraydecay414 = getelementptr inbounds [258 x i8], [258 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay414, i64 1
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  %236 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %237 = load i8*, i8** %bp, align 8, !tbaa !1
  call void @cataddr(i8** %236, i8** null, i8* %237, i32 256, i32 0, i32 0)
  %238 = load i8*, i8** %bp, align 8, !tbaa !1
  %239 = load i8, i8* %238, align 1, !tbaa !27
  %conv415 = sext i8 %239 to i32
  %cmp416 = icmp eq i32 %conv415, 64
  br i1 %cmp416, label %land.lhs.true.418, label %if.end.428

land.lhs.true.418:                                ; preds = %if.end.408
  %240 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from419 = getelementptr inbounds %struct.envelope, %struct.envelope* %240, i32 0, i32 4
  %q_mailer420 = getelementptr inbounds %struct.address, %struct.address* %e_from419, i32 0, i32 4
  %241 = load %struct.mailer*, %struct.mailer** %q_mailer420, align 8, !tbaa !64
  %m_flags421 = getelementptr inbounds %struct.mailer, %struct.mailer* %241, i32 0, i32 5
  %arrayidx422 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags421, i32 0, i64 3
  %242 = load i32, i32* %arrayidx422, align 4, !tbaa !14
  %and423 = and i32 %242, 16
  %tobool424 = icmp ne i32 %and423, 0
  br i1 %tobool424, label %if.end.428, label %if.then.425

if.then.425:                                      ; preds = %land.lhs.true.418
  %243 = load i8*, i8** %bp, align 8, !tbaa !1
  %call426 = call i64 @sm_strlcat(i8* %243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i64 257)
  %244 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr427 = getelementptr inbounds i8, i8* %244, i32 -1
  store i8* %incdec.ptr427, i8** %bp, align 8, !tbaa !1
  store i8 60, i8* %incdec.ptr427, align 1, !tbaa !27
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.425, %land.lhs.true.418, %if.end.408
  %245 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool429 = getelementptr inbounds %struct.envelope, %struct.envelope* %245, i32 0, i32 52
  %246 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool429, align 8, !tbaa !30
  %247 = load i8*, i8** %bp, align 8, !tbaa !1
  %call430 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %246, i8* %247)
  %248 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sender = getelementptr inbounds %struct.envelope, %struct.envelope* %248, i32 0, i32 5
  store i8* %call430, i8** %e_sender, align 8, !tbaa !73
  %249 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro431 = getelementptr inbounds %struct.envelope, %struct.envelope* %249, i32 0, i32 46
  %250 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sender432 = getelementptr inbounds %struct.envelope, %struct.envelope* %250, i32 0, i32 5
  %251 = load i8*, i8** %e_sender432, align 8, !tbaa !73
  %252 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro431, i32 2, i32 102, i8* %251, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 1206, i32 %252)
  %253 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from433 = getelementptr inbounds %struct.envelope, %struct.envelope* %253, i32 0, i32 4
  %q_mailer434 = getelementptr inbounds %struct.address, %struct.address* %e_from433, i32 0, i32 4
  %254 = load %struct.mailer*, %struct.mailer** %q_mailer434, align 8, !tbaa !64
  %cmp435 = icmp ne %struct.mailer* %254, null
  br i1 %cmp435, label %land.lhs.true.437, label %if.end.530

land.lhs.true.437:                                ; preds = %if.end.428
  %255 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from438 = getelementptr inbounds %struct.envelope, %struct.envelope* %255, i32 0, i32 4
  %q_mailer439 = getelementptr inbounds %struct.address, %struct.address* %e_from438, i32 0, i32 4
  %256 = load %struct.mailer*, %struct.mailer** %q_mailer439, align 8, !tbaa !64
  %m_flags440 = getelementptr inbounds %struct.mailer, %struct.mailer* %256, i32 0, i32 5
  %arrayidx441 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags440, i32 0, i64 2
  %257 = load i32, i32* %arrayidx441, align 4, !tbaa !14
  %and442 = and i32 %257, 8
  %tobool443 = icmp ne i32 %and442, 0
  br i1 %tobool443, label %if.then.444, label %if.end.530

if.then.444:                                      ; preds = %land.lhs.true.437
  %258 = bitcast i8*** %lastat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %258) #1
  %259 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro446 = getelementptr inbounds %struct.envelope, %struct.envelope* %259, i32 0, i32 46
  %call447 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8** null)
  %260 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro446, i32 2, i32 %call447, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 1215, i32 %260)
  %261 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %262 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call448 = call i32 @rewrite(i8** %261, i32 3, i32 0, %struct.envelope* %262, i32 1000)
  %263 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %264 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call449 = call i32 @rewrite(i8** %263, i32 1, i32 0, %struct.envelope* %264, i32 1000)
  %265 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %266 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call450 = call i32 @rewrite(i8** %265, i32 4, i32 0, %struct.envelope* %266, i32 1000)
  %267 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro451 = getelementptr inbounds %struct.envelope, %struct.envelope* %267, i32 0, i32 46
  %call452 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8** null)
  %268 = load i32, i32* @SmHeapGroup, align 4, !tbaa !14
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro451, i32 2, i32 %call452, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 1219, i32 %268)
  store i8** null, i8*** %lastat, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.444
  %269 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %270 = load i8*, i8** %269, align 8, !tbaa !1
  %cmp453 = icmp ne i8* %270, null
  br i1 %cmp453, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %271 = bitcast i64* %__s1_len456 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %271) #1
  %272 = bitcast i64* %__s2_len458 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %272) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.57 to i64)), i64 1), label %land.lhs.true.460, label %cond.false.506

land.lhs.true.460:                                ; preds = %for.body
  store i64 1, i64* %__s2_len458, align 8, !tbaa !25
  %273 = load i64, i64* %__s2_len458, align 8, !tbaa !25
  %cmp461 = icmp ult i64 %273, 4
  br i1 %cmp461, label %cond.true.463, label %cond.false.506

cond.true.463:                                    ; preds = %land.lhs.true.460
  %274 = bitcast i8** %__s1465 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %274) #1
  %275 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %276 = load i8*, i8** %275, align 8, !tbaa !1
  store i8* %276, i8** %__s1465, align 8, !tbaa !1
  %277 = bitcast i32* %__result467 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %277) #1
  %278 = load i8*, i8** %__s1465, align 8, !tbaa !1
  %arrayidx468 = getelementptr inbounds i8, i8* %278, i64 0
  %279 = load i8, i8* %arrayidx468, align 1, !tbaa !27
  %conv469 = zext i8 %279 to i32
  %280 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), align 1, !tbaa !27
  %conv470 = zext i8 %280 to i32
  %sub471 = sub nsw i32 %conv469, %conv470
  store i32 %sub471, i32* %__result467, align 4, !tbaa !14
  %281 = load i64, i64* %__s2_len458, align 8, !tbaa !25
  %cmp472 = icmp ugt i64 %281, 0
  br i1 %cmp472, label %land.lhs.true.474, label %if.end.504

land.lhs.true.474:                                ; preds = %cond.true.463
  %282 = load i32, i32* %__result467, align 4, !tbaa !14
  %cmp475 = icmp eq i32 %282, 0
  br i1 %cmp475, label %if.then.477, label %if.end.504

if.then.477:                                      ; preds = %land.lhs.true.474
  %283 = load i8*, i8** %__s1465, align 8, !tbaa !1
  %arrayidx478 = getelementptr inbounds i8, i8* %283, i64 1
  %284 = load i8, i8* %arrayidx478, align 1, !tbaa !27
  %conv479 = zext i8 %284 to i32
  %285 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i64 1), align 1, !tbaa !27
  %conv480 = zext i8 %285 to i32
  %sub481 = sub nsw i32 %conv479, %conv480
  store i32 %sub481, i32* %__result467, align 4, !tbaa !14
  %286 = load i64, i64* %__s2_len458, align 8, !tbaa !25
  %cmp482 = icmp ugt i64 %286, 1
  br i1 %cmp482, label %land.lhs.true.484, label %if.end.503

land.lhs.true.484:                                ; preds = %if.then.477
  %287 = load i32, i32* %__result467, align 4, !tbaa !14
  %cmp485 = icmp eq i32 %287, 0
  br i1 %cmp485, label %if.then.487, label %if.end.503

if.then.487:                                      ; preds = %land.lhs.true.484
  %288 = load i8*, i8** %__s1465, align 8, !tbaa !1
  %arrayidx488 = getelementptr inbounds i8, i8* %288, i64 2
  %289 = load i8, i8* %arrayidx488, align 1, !tbaa !27
  %conv489 = zext i8 %289 to i32
  %290 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i64 2), align 1, !tbaa !27
  %conv490 = zext i8 %290 to i32
  %sub491 = sub nsw i32 %conv489, %conv490
  store i32 %sub491, i32* %__result467, align 4, !tbaa !14
  %291 = load i64, i64* %__s2_len458, align 8, !tbaa !25
  %cmp492 = icmp ugt i64 %291, 2
  br i1 %cmp492, label %land.lhs.true.494, label %if.end.502

land.lhs.true.494:                                ; preds = %if.then.487
  %292 = load i32, i32* %__result467, align 4, !tbaa !14
  %cmp495 = icmp eq i32 %292, 0
  br i1 %cmp495, label %if.then.497, label %if.end.502

if.then.497:                                      ; preds = %land.lhs.true.494
  %293 = load i8*, i8** %__s1465, align 8, !tbaa !1
  %arrayidx498 = getelementptr inbounds i8, i8* %293, i64 3
  %294 = load i8, i8* %arrayidx498, align 1, !tbaa !27
  %conv499 = zext i8 %294 to i32
  %295 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i64 3), align 1, !tbaa !27
  %conv500 = zext i8 %295 to i32
  %sub501 = sub nsw i32 %conv499, %conv500
  store i32 %sub501, i32* %__result467, align 4, !tbaa !14
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.497, %land.lhs.true.494, %if.then.487
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %land.lhs.true.484, %if.then.477
  br label %if.end.504

if.end.504:                                       ; preds = %if.end.503, %land.lhs.true.474, %cond.true.463
  %296 = load i32, i32* %__result467, align 4, !tbaa !14
  store i32 %296, i32* %tmp505, !tbaa !14
  %297 = bitcast i32* %__result467 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i8** %__s1465 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #1
  %299 = load i32, i32* %tmp505, !tbaa !14
  br label %cond.end.508

cond.false.506:                                   ; preds = %land.lhs.true.460, %for.body
  %300 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %301 = load i8*, i8** %300, align 8, !tbaa !1
  %call507 = call i32 @strcmp(i8* %301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0)) #1
  br label %cond.end.508

cond.end.508:                                     ; preds = %cond.false.506, %if.end.504
  %cond509 = phi i32 [ %299, %if.end.504 ], [ %call507, %cond.false.506 ]
  store i32 %cond509, i32* %tmp459, !tbaa !14
  %302 = bitcast i64* %__s2_len458 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #1
  %303 = bitcast i64* %__s1_len456 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = load i32, i32* %tmp459, !tbaa !14
  %cmp510 = icmp eq i32 %304, 0
  br i1 %cmp510, label %if.then.512, label %if.end.513

if.then.512:                                      ; preds = %cond.end.508
  %305 = load i8**, i8*** %pvp, align 8, !tbaa !1
  store i8** %305, i8*** %lastat, align 8, !tbaa !1
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.512, %cond.end.508
  br label %for.inc

for.inc:                                          ; preds = %if.end.513
  %306 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr514 = getelementptr inbounds i8*, i8** %306, i32 1
  store i8** %incdec.ptr514, i8*** %pvp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %307 = load i8**, i8*** %lastat, align 8, !tbaa !1
  %cmp515 = icmp ne i8** %307, null
  br i1 %cmp515, label %if.then.517, label %if.end.529

if.then.517:                                      ; preds = %for.end
  %308 = load i8**, i8*** %lastat, align 8, !tbaa !1
  %309 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool518 = getelementptr inbounds %struct.envelope, %struct.envelope* %309, i32 0, i32 52
  %310 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool518, align 8, !tbaa !30
  %call519 = call i8** @copyplist(i8** %308, i32 1, %struct.SM_RPOOL_T* %310)
  %311 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_fromdomain = getelementptr inbounds %struct.envelope, %struct.envelope* %311, i32 0, i32 6
  store i8** %call519, i8*** %e_fromdomain, align 8, !tbaa !74
  %312 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 45), align 1, !tbaa !27
  %conv520 = zext i8 %312 to i32
  %cmp521 = icmp sge i32 %conv520, 3
  br i1 %cmp521, label %land.lhs.true.523, label %if.end.528

land.lhs.true.523:                                ; preds = %if.then.517
  %313 = load volatile i32, i32* @IntSig, align 4, !tbaa !14
  %tobool524 = icmp ne i32 %313, 0
  br i1 %tobool524, label %if.end.528, label %if.then.525

if.then.525:                                      ; preds = %land.lhs.true.523
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0))
  %call526 = call %struct.sm_file* @sm_debug_file()
  %314 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_fromdomain527 = getelementptr inbounds %struct.envelope, %struct.envelope* %314, i32 0, i32 6
  %315 = load i8**, i8*** %e_fromdomain527, align 8, !tbaa !74
  call void @printav(%struct.sm_file* %call526, i8** %315)
  br label %if.end.528

if.end.528:                                       ; preds = %if.then.525, %land.lhs.true.523, %if.then.517
  br label %if.end.529

if.end.529:                                       ; preds = %if.end.528, %for.end
  %316 = bitcast i8*** %lastat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  br label %if.end.530

if.end.530:                                       ; preds = %if.end.529, %land.lhs.true.437, %if.end.428
  %317 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 1256, i8* %317) #1
  %318 = bitcast [258 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 258, i8* %318) #1
  %319 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #1
  %320 = bitcast i8** %realname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %320) #1
  %321 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #1
  ret void
}

declare i8* @username() #2

declare %struct.address* @parseaddr(i8*, %struct.address*, i32, i32, i8**, %struct.envelope*, i32) #2

declare i8* @shortenstring(i8*, i64) #2

declare void @usrerrenh(i8*, i8*, ...) #2

declare i8* @newstr(i8*) #2

declare i32 @sm_mbdb_lookup(i8*, %struct.SM_MBDB_T*) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

declare i8** @prescan(i8*, i32, i8*, i32, i8**, i8*, i32) #2

declare void @finis(i32, i32, i32) #2

declare i32 @rewrite(i8**, i32, i32, %struct.envelope*, i32) #2

declare void @cataddr(i8**, i8**, i8*, i32, i32, i32) #2

declare i64 @sm_strlcat(i8*, i8*, i64) #2

declare i8** @copyplist(i8**, i32, %struct.SM_RPOOL_T*) #2

declare void @printav(%struct.sm_file*, i8**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !10, i64 290}
!6 = !{!"envelope", !2, i64 0, !7, i64 8, !7, i64 16, !2, i64 24, !8, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !7, i64 256, !2, i64 264, !7, i64 272, !9, i64 280, !10, i64 284, !10, i64 286, !10, i64 288, !10, i64 290, !10, i64 292, !10, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !9, i64 352, !9, i64 356, !9, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !7, i64 456, !9, i64 464, !7, i64 472, !7, i64 480, !11, i64 488, !2, i64 2576, !2, i64 2584, !12, i64 2592, !7, i64 2624, !9, i64 2632, !2, i64 2640, !9, i64 2648}
!7 = !{!"long", !3, i64 0}
!8 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !9, i64 48, !9, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !10, i64 160, !2, i64 168, !9, i64 176, !9, i64 180, !2, i64 184}
!9 = !{!"int", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!12 = !{!"sm_timers", !13, i64 0}
!13 = !{!"_timer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!14 = !{!9, !9, i64 0}
!15 = !{!6, !2, i64 312}
!16 = !{!6, !7, i64 16}
!17 = !{!6, !7, i64 256}
!18 = !{!6, !7, i64 8}
!19 = !{!6, !2, i64 408}
!20 = !{!6, !2, i64 296}
!21 = !{!6, !2, i64 304}
!22 = !{!6, !2, i64 376}
!23 = !{!6, !2, i64 336}
!24 = !{i64 0, i64 8, !1, i64 8, i64 8, !25, i64 16, i64 8, !25, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !25, i64 80, i64 4, !14, i64 84, i64 4, !14, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !25, i64 184, i64 8, !1, i64 192, i64 2, !26, i64 200, i64 8, !1, i64 208, i64 4, !14, i64 212, i64 4, !14, i64 216, i64 8, !1, i64 224, i64 8, !1, i64 232, i64 8, !1, i64 240, i64 8, !1, i64 248, i64 8, !1, i64 256, i64 8, !25, i64 264, i64 8, !1, i64 272, i64 8, !25, i64 280, i64 4, !14, i64 284, i64 2, !26, i64 286, i64 2, !26, i64 288, i64 2, !26, i64 290, i64 2, !26, i64 292, i64 2, !26, i64 294, i64 2, !26, i64 296, i64 8, !1, i64 304, i64 8, !1, i64 312, i64 8, !1, i64 320, i64 8, !1, i64 328, i64 8, !1, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 4, !14, i64 356, i64 4, !14, i64 360, i64 4, !14, i64 364, i64 4, !14, i64 368, i64 4, !14, i64 372, i64 4, !14, i64 376, i64 8, !1, i64 384, i64 8, !1, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 8, !1, i64 416, i64 1, !27, i64 424, i64 8, !1, i64 432, i64 8, !1, i64 440, i64 8, !1, i64 448, i64 8, !1, i64 456, i64 8, !25, i64 464, i64 4, !14, i64 472, i64 8, !25, i64 480, i64 8, !25, i64 488, i64 8, !1, i64 496, i64 32, !27, i64 528, i64 2048, !27, i64 2576, i64 8, !1, i64 2584, i64 8, !1, i64 2592, i64 8, !25, i64 2600, i64 8, !25, i64 2608, i64 8, !25, i64 2616, i64 8, !25, i64 2624, i64 8, !25, i64 2632, i64 4, !14, i64 2640, i64 8, !1, i64 2648, i64 4, !14}
!25 = !{!7, !7, i64 0}
!26 = !{!10, !10, i64 0}
!27 = !{!3, !3, i64 0}
!28 = !{!6, !2, i64 392}
!29 = !{!6, !3, i64 416}
!30 = !{!6, !2, i64 2640}
!31 = !{!6, !2, i64 488}
!32 = !{!6, !2, i64 0}
!33 = !{!34, !2, i64 16}
!34 = !{!"header", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24, !7, i64 32, !3, i64 40}
!35 = !{!6, !7, i64 272}
!36 = !{!6, !2, i64 344}
!37 = !{!6, !2, i64 240}
!38 = !{!6, !10, i64 294}
!39 = !{!6, !9, i64 2632}
!40 = !{!6, !7, i64 2624}
!41 = !{!8, !10, i64 160}
!42 = !{!8, !7, i64 40}
!43 = !{!8, !2, i64 88}
!44 = !{!6, !2, i64 32}
!45 = !{!8, !2, i64 32}
!46 = !{!8, !2, i64 72}
!47 = !{!6, !10, i64 284}
!48 = !{!8, !2, i64 128}
!49 = !{!6, !10, i64 292}
!50 = !{!6, !9, i64 464}
!51 = !{!6, !2, i64 320}
!52 = !{!53, !2, i64 0}
!53 = !{!"eflags", !2, i64 0, !7, i64 8}
!54 = !{!53, !7, i64 8}
!55 = !{!6, !10, i64 286}
!56 = !{!57, !9, i64 20}
!57 = !{!"tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !7, i64 40, !2, i64 48}
!58 = !{!57, !9, i64 16}
!59 = !{!57, !9, i64 12}
!60 = !{!57, !9, i64 8}
!61 = !{!57, !9, i64 4}
!62 = !{!6, !10, i64 192}
!63 = !{!6, !7, i64 72}
!64 = !{!6, !2, i64 64}
!65 = !{!6, !2, i64 448}
!66 = !{!6, !2, i64 40}
!67 = !{!6, !2, i64 88}
!68 = !{!69, !9, i64 0}
!69 = !{!"", !9, i64 0, !9, i64 4, !3, i64 8, !3, i64 264, !3, i64 520, !3, i64 4616}
!70 = !{!6, !9, i64 80}
!71 = !{!69, !9, i64 4}
!72 = !{!6, !9, i64 84}
!73 = !{!6, !2, i64 224}
!74 = !{!6, !2, i64 232}
