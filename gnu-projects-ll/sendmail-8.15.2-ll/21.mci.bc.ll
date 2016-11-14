; ModuleID = '21.mci.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailer_con_info = type { i64, i16, i16, i16, i16, i32, i64, %struct.sm_file*, %struct.sm_file*, i32, i8*, %struct.mailer*, i8*, i8*, i8*, i64, %struct.sm_file*, i8*, i64, i32, i8*, %struct.SM_RPOOL_T*, i32, %struct.address*, %struct.MACROS_T }
%struct.mailer = type { i8*, i8*, i8*, i8*, i8*, [8 x i32], i16, i16, i8**, i16, i16, i16, i16, i8*, i64, i32, i32, i8*, i8*, i32, i32, i8*, i64, i32, i16 }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.SM_RPOOL_T = type { i8*, void (i8*)**, i64, i64, i8*, i64, %struct.sm_poollink*, %struct.sm_resource*, i64, %struct.sm_rlist* }
%struct.sm_poollink = type { %struct.sm_poollink* }
%struct.sm_resource = type { void (i8*)*, i8* }
%struct.sm_rlist = type { [511 x %struct.sm_resource], %struct.sm_rlist* }
%struct.address = type { i8*, i8*, i8*, i8*, %struct.mailer*, i64, i32, i32, i8*, i8*, %struct.address*, %struct.address*, i8*, %struct.address*, %struct.address*, i8*, i8*, i8*, i8*, i64, i8*, i16, i8*, i32, i32, i8* }
%struct.MACROS_T = type { %struct.SM_RPOOL_T*, [8 x i32], [256 x i8*] }
%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%union.bigsockaddr = type { %struct.sockaddr_in, [96 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.mcifbits = type { i32, i8* }
%struct.symtab = type { i8*, i16, %struct.symtab*, %union.anon }
%union.anon = type { %struct.mailer_con_info }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str = private unnamed_addr constant [39 x i8] c"mci_cache: caching %p (%s) in slot %d\0A\00", align 1
@MciCache = internal global %struct.mailer_con_info** null, align 8
@CurEnv = external global %struct.envelope*, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"mci_cache: caching %lx (%.100s) in slot %d\00", align 1
@MaxMciCache = external global i32, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"mci.c\00", align 1
@MciCacheTimeout = external global i64, align 8
@CurHostAddr = external global %union.bigsockaddr, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"!negative mno %d (%s)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"mci_get(%s %s): lock failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"mci_get(%s %s): mci_state=%d, _flags=%lx, _exitstat=%d, _errno=%d\0A\00", align 1
@MciInfoTimeout = external global i64, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"mci_close: mci_out!=NULL, where=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"mci_close: mci_in!=NULL, where=%s\0A\00", align 1
@SmHeapGroup = external global i32, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"MCI@%p: \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"flags=%lx\00", align 1
@MciFlags = internal global [20 x %struct.mcifbits] [%struct.mcifbits { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0) }, %struct.mcifbits { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0) }, %struct.mcifbits { i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0) }, %struct.mcifbits { i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0) }, %struct.mcifbits { i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0) }, %struct.mcifbits { i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0) }, %struct.mcifbits { i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0) }, %struct.mcifbits { i32 512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0) }, %struct.mcifbits { i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0) }, %struct.mcifbits { i32 2048, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0) }, %struct.mcifbits { i32 4096, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0) }, %struct.mcifbits { i32 8192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0) }, %struct.mcifbits { i32 16384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0) }, %struct.mcifbits { i32 32768, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0) }, %struct.mcifbits { i32 33554432, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0) }, %struct.mcifbits { i32 65536, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0) }, %struct.mcifbits { i32 131072, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0) }, %struct.mcifbits { i32 262144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0) }, %struct.mcifbits { i32 4194304, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0) }, %struct.mcifbits zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c",%serrno=%d, herrno=%d, exitstat=%d, state=%d, pid=%d,%s\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"maxsize=%ld, phase=%s, mailer=%s,%s\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"status=%s, rstatus=%s,%s\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"host=%s, lastuse=%s\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%.1000s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"mci_lock_host: NULL mci\0A\00", align 1
@SingleThreadDelivery = external global i32, align 4
@.str.21 = private unnamed_addr constant [27 x i8] c"mci_unlock_host: NULL mci\0A\00", align 1
@HostStatDir = external global i8*, align 8
@.str.22 = private unnamed_addr constant [43 x i8] c"mci_unlock_host: stat file already locked\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"mci_unlock_host: store prior to unlock\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"mci_store_persistent: NULL mci\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"mci_store_persistent: Storing information for %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"mci_store_persistent: no statfile\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"V0\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"E%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"H%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"S%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"D%.80s\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"R%.80s\0A\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"U%ld\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"mci_traverse: pathname is %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"mci_traverse: Failed to stat %s: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"mci_traverse: opendir %s: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"mci_traverse: path \22%s\22 too long\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"mci_traverse: path \22%s%s\22 too long\00", align 1
@StopRequest = external global i32, align 4
@.str.40 = private unnamed_addr constant [50 x i8] c"mci_traverse: path %s: ret %d removed %d left %d\0A\00", align 1
@mci_print_persistent.initflag = internal global i32 0, align 4
@Verbose = external global i32, align 4
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.41 = private unnamed_addr constant [81 x i8] c" -------------- Hostname --------------- How long ago ---------Results---------\0A\00", align 1
@FileMode = external global i32, align 4
@.str.42 = private unnamed_addr constant [42 x i8] c"mci_print_persistent: cannot open %s: %s\0A\00", align 1
@FileName = external global i8*, align 8
@.str.43 = private unnamed_addr constant [31 x i8] c"%s: could not read status file\00", align 1
@.str.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"%c%-39s %12s \00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"Deferred: %.*s\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"Unknown mailer error %d\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"OK: %.*s\0A\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"mci_purge_persistent: purging %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"mci_purge_persistent: Failed to stat %s: %s\0A\00", align 1
@LogLevel = external global i32, align 4
@.str.53 = private unnamed_addr constant [46 x i8] c"mci_purge_persistent: failed to unlink %s: %s\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"mci_purge_persistent: failed to unlink %s: %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"mci_purge_persistent: dpurge %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"mci_purge_persistent: rmdir %s: %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [50 x i8] c"mci_uncache: uncaching %p (%s) from slot %d (%d)\0A\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"mci_uncache: uncaching %lx (%.100s) from slot %d (%d)\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"Closing connection to %s\00", align 1
@BlankEnvelope = external global %struct.envelope, align 8
@.str.60 = private unnamed_addr constant [6 x i8] c"VALID\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"CACHED\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"ESMTP\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"EXPN\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"8BITMIME\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"7BIT\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"INHEADER\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"CVT8TO7\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"DSN\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"8BITOK\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"CVT7TO8\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"INMIME\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"AUTH2\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"AUTHACT\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"ENHSTAT\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"PIPELINED\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"DLVR_BY\00", align 1
@.str.79 = private unnamed_addr constant [38 x i8] c"mci_lock_host: attempting to lock %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"mci_lock_host: Failed to generate host path for %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"mci_lock_host: cannot create host lock file %s\00", align 1
@.str.82 = private unnamed_addr constant [40 x i8] c"mci_lock_host: couldn't get lock on %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [45 x i8] c"mci_lock_host: Sanity check -- lock is good\0A\00", align 1
@.str.84 = private unnamed_addr constant [40 x i8] c"mci_generate_persistent_path: null host\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"mci_generate_persistent_path: null path\00", align 1
@.str.86 = private unnamed_addr constant [35 x i8] c"mci_generate_persistent_path(%s): \00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"FAILURE %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"SUCCESS %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"mci_load_persistent: NULL mci\0A\00", align 1
@IgnoreHostStatus = external global i32, align 4
@.str.90 = private unnamed_addr constant [71 x i8] c"mci_load_persistent: Attempting to load persistent information for %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [50 x i8] c"mci_load_persistent: Couldn't generate host path\0A\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"mci_load_persistent: open(%s): %s\0A\00", align 1
@LineNumber = external global i32, align 4
@.str.93 = private unnamed_addr constant [29 x i8] c"mci_read_persistent: NULL fp\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"mci_read_persistent: NULL mci\00", align 1
@.str.95 = private unnamed_addr constant [34 x i8] c"mci_read_persistent: fp=%lx, mci=\00", align 1
@.str.96 = private unnamed_addr constant [39 x i8] c"Unknown host status version %d: %d max\00", align 1
@.str.97 = private unnamed_addr constant [43 x i8] c"%s: line %d: Unknown host status line \22%s\22\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"incomplete (missing dot for EOF)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @mci_cache(%struct.mailer_con_info* %mci) #0 {
entry:
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %mcislot = alloca %struct.mailer_con_info**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = bitcast %struct.mailer_con_info*** %mcislot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call = call %struct.mailer_con_info** @mci_scan(%struct.mailer_con_info* %1)
  store %struct.mailer_con_info** %call, %struct.mailer_con_info*** %mcislot, align 8, !tbaa !1
  %2 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %mcislot, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %3, i32 0, i32 12
  %4 = load i8*, i8** %mci_host, align 8, !tbaa !5
  %cmp1 = icmp eq i8* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %5, i32 0, i32 0
  %6 = load i64, i64* %mci_flags, align 8, !tbaa !11
  %and = and i64 %6, 4
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.3
  %7 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %mcislot, align 8, !tbaa !1
  %8 = load %struct.mailer_con_info*, %struct.mailer_con_info** %7, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.mailer_con_info* %8, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %9 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %mcislot, align 8, !tbaa !1
  call void @mci_uncache(%struct.mailer_con_info** %9, i32 1)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %10 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 42), align 1, !tbaa !12
  %conv = zext i8 %10 to i32
  %cmp10 = icmp sge i32 %conv, 5
  br i1 %cmp10, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.9
  %11 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %13 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host13 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %13, i32 0, i32 12
  %14 = load i8*, i8** %mci_host13, align 8, !tbaa !5
  %15 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %mcislot, align 8, !tbaa !1
  %16 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.mailer_con_info** %15 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.mailer_con_info** %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv14 = trunc i64 %sub.ptr.div to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), %struct.mailer_con_info* %12, i8* %14, i32 %conv14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.9
  %17 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 91), align 1, !tbaa !12
  %conv16 = zext i8 %17 to i32
  %cmp17 = icmp sge i32 %conv16, 100
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.28

land.lhs.true.19:                                 ; preds = %if.end.15
  %18 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %if.end.28, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.19
  %19 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 25
  %20 = load i8*, i8** %e_id, align 8, !tbaa !14
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %22 = ptrtoint %struct.mailer_con_info* %21 to i64
  %23 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host22 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %23, i32 0, i32 12
  %24 = load i8*, i8** %mci_host22, align 8, !tbaa !5
  %25 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %mcislot, align 8, !tbaa !1
  %26 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %sub.ptr.lhs.cast23 = ptrtoint %struct.mailer_con_info** %25 to i64
  %sub.ptr.rhs.cast24 = ptrtoint %struct.mailer_con_info** %26 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %sub.ptr.div26 = sdiv exact i64 %sub.ptr.sub25, 8
  %conv27 = trunc i64 %sub.ptr.div26 to i32
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 7, i8* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i64 %22, i8* %24, i32 %conv27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.21, %land.lhs.true.19, %if.end.15
  %27 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %28 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %mcislot, align 8, !tbaa !1
  store %struct.mailer_con_info* %27, %struct.mailer_con_info** %28, align 8, !tbaa !1
  %29 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags29 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %29, i32 0, i32 0
  %30 = load i64, i64* %mci_flags29, align 8, !tbaa !11
  %or = or i64 %30, 4
  store i64 %or, i64* %mci_flags29, align 8, !tbaa !11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.5, %if.then.2, %if.then
  %31 = bitcast %struct.mailer_con_info*** %mcislot to i8*
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

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.mailer_con_info** @mci_scan(%struct.mailer_con_info* %savemci) #0 {
entry:
  %retval = alloca %struct.mailer_con_info**, align 8
  %savemci.addr = alloca %struct.mailer_con_info*, align 8
  %now = alloca i64, align 8
  %bestmci = alloca %struct.mailer_con_info**, align 8
  %mci = alloca %struct.mailer_con_info*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.mailer_con_info* %savemci, %struct.mailer_con_info** %savemci.addr, align 8, !tbaa !1
  %0 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.mailer_con_info*** %bestmci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.mailer_con_info** %mci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* @MaxMciCache, align 4, !tbaa !13
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.mailer_con_info** null, %struct.mailer_con_info*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.mailer_con_info** %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* @MaxMciCache, align 4, !tbaa !13
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @sm_malloc_tagged_x(i64 %mul, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 143, i32 0)
  %7 = bitcast i8* %call to %struct.mailer_con_info**
  store %struct.mailer_con_info** %7, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %8 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %9 = bitcast %struct.mailer_con_info** %8 to i8*
  %10 = load i32, i32* @MaxMciCache, align 4, !tbaa !13
  %conv3 = sext i32 %10 to i64
  %mul4 = mul i64 %conv3, 8
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %mul4, i32 1, i1 false)
  %11 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.mailer_con_info*, %struct.mailer_con_info** %11, i64 0
  store %struct.mailer_con_info** %arrayidx, %struct.mailer_con_info*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %call6 = call i64 @curtime()
  store i64 %call6, i64* %now, align 8, !tbaa !19
  %12 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.mailer_con_info*, %struct.mailer_con_info** %12, i64 0
  store %struct.mailer_con_info** %arrayidx7, %struct.mailer_con_info*** %bestmci, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %13 = load i32, i32* %i, align 4, !tbaa !13
  %14 = load i32, i32* @MaxMciCache, align 4, !tbaa !13
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.mailer_con_info*, %struct.mailer_con_info** %16, i64 %idxprom
  %17 = load %struct.mailer_con_info*, %struct.mailer_con_info** %arrayidx10, align 8, !tbaa !1
  store %struct.mailer_con_info* %17, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %18 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.mailer_con_info* %18, null
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %19 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %19, i32 0, i32 4
  %20 = load i16, i16* %mci_state, align 2, !tbaa !20
  %conv13 = sext i16 %20 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %lor.lhs.false, %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.mailer_con_info*, %struct.mailer_con_info** %22, i64 %idxprom17
  store %struct.mailer_con_info** %arrayidx18, %struct.mailer_con_info*** %bestmci, align 8, !tbaa !1
  br label %for.inc

if.end.19:                                        ; preds = %lor.lhs.false
  %23 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_lastuse = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %23, i32 0, i32 15
  %24 = load i64, i64* %mci_lastuse, align 8, !tbaa !21
  %25 = load i64, i64* @MciCacheTimeout, align 8, !tbaa !19
  %add = add nsw i64 %24, %25
  %26 = load i64, i64* %now, align 8, !tbaa !19
  %cmp20 = icmp sle i64 %add, %26
  br i1 %cmp20, label %land.lhs.true.34, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %if.end.19
  %27 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %27, i32 0, i32 11
  %28 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !22
  %cmp23 = icmp ne %struct.mailer* %28, null
  br i1 %cmp23, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %lor.lhs.false.22
  %29 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_mailer25 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %29, i32 0, i32 11
  %30 = load %struct.mailer*, %struct.mailer** %mci_mailer25, align 8, !tbaa !22
  %m_maxdeliveries = getelementptr inbounds %struct.mailer, %struct.mailer* %30, i32 0, i32 16
  %31 = load i32, i32* %m_maxdeliveries, align 4, !tbaa !23
  %cmp26 = icmp sgt i32 %31, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.40

land.lhs.true.28:                                 ; preds = %land.lhs.true
  %32 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_deliveries = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %32, i32 0, i32 5
  %33 = load i32, i32* %mci_deliveries, align 4, !tbaa !25
  %add29 = add nsw i32 %33, 1
  %34 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_mailer30 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %34, i32 0, i32 11
  %35 = load %struct.mailer*, %struct.mailer** %mci_mailer30, align 8, !tbaa !22
  %m_maxdeliveries31 = getelementptr inbounds %struct.mailer, %struct.mailer* %35, i32 0, i32 16
  %36 = load i32, i32* %m_maxdeliveries31, align 4, !tbaa !23
  %cmp32 = icmp sge i32 %add29, %36
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.40

land.lhs.true.34:                                 ; preds = %land.lhs.true.28, %if.end.19
  %37 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %38 = load %struct.mailer_con_info*, %struct.mailer_con_info** %savemci.addr, align 8, !tbaa !1
  %cmp35 = icmp ne %struct.mailer_con_info* %37, %38
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %land.lhs.true.34
  %39 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom38 = sext i32 %39 to i64
  %40 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.mailer_con_info*, %struct.mailer_con_info** %40, i64 %idxprom38
  store %struct.mailer_con_info** %arrayidx39, %struct.mailer_con_info*** %bestmci, align 8, !tbaa !1
  %41 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %bestmci, align 8, !tbaa !1
  call void @mci_uncache(%struct.mailer_con_info** %41, i32 1)
  br label %for.inc

if.end.40:                                        ; preds = %land.lhs.true.34, %land.lhs.true.28, %land.lhs.true, %lor.lhs.false.22
  %42 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %bestmci, align 8, !tbaa !1
  %43 = load %struct.mailer_con_info*, %struct.mailer_con_info** %42, align 8, !tbaa !1
  %cmp41 = icmp eq %struct.mailer_con_info* %43, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  br label %for.inc

if.end.44:                                        ; preds = %if.end.40
  %44 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_lastuse45 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %44, i32 0, i32 15
  %45 = load i64, i64* %mci_lastuse45, align 8, !tbaa !21
  %46 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %bestmci, align 8, !tbaa !1
  %47 = load %struct.mailer_con_info*, %struct.mailer_con_info** %46, align 8, !tbaa !1
  %mci_lastuse46 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %47, i32 0, i32 15
  %48 = load i64, i64* %mci_lastuse46, align 8, !tbaa !21
  %cmp47 = icmp slt i64 %45, %48
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.44
  %49 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom50 = sext i32 %49 to i64
  %50 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds %struct.mailer_con_info*, %struct.mailer_con_info** %50, i64 %idxprom50
  store %struct.mailer_con_info** %arrayidx51, %struct.mailer_con_info*** %bestmci, align 8, !tbaa !1
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.end.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.52, %if.then.43, %if.then.37, %if.then.16
  %51 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %bestmci, align 8, !tbaa !1
  store %struct.mailer_con_info** %52, %struct.mailer_con_info*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.2, %if.then
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %struct.mailer_con_info** %mci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.mailer_con_info*** %bestmci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %retval
  ret %struct.mailer_con_info** %57
}

; Function Attrs: nounwind uwtable
define internal void @mci_uncache(%struct.mailer_con_info** %mcislot, i32 %doquit) #0 {
entry:
  %mcislot.addr = alloca %struct.mailer_con_info**, align 8
  %doquit.addr = alloca i32, align 4
  %mci = alloca %struct.mailer_con_info*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mailer_con_info** %mcislot, %struct.mailer_con_info*** %mcislot.addr, align 8, !tbaa !1
  store i32 %doquit, i32* %doquit.addr, align 4, !tbaa !13
  %0 = bitcast %struct.mailer_con_info** %mci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %mcislot.addr, align 8, !tbaa !1
  %2 = load %struct.mailer_con_info*, %struct.mailer_con_info** %1, align 8, !tbaa !1
  store %struct.mailer_con_info* %2, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %3 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %mcislot.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* null, %struct.mailer_con_info** %4, align 8, !tbaa !1
  %5 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %5, i32 0, i32 12
  %6 = load i8*, i8** %mci_host, align 8, !tbaa !5
  %cmp1 = icmp eq i8* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  call void @mci_unlock_host(%struct.mailer_con_info* %7)
  %8 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 42), align 1, !tbaa !12
  %conv = zext i8 %8 to i32
  %cmp4 = icmp sge i32 %conv, 5
  br i1 %cmp4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.3
  %9 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_host7 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %11, i32 0, i32 12
  %12 = load i8*, i8** %mci_host7, align 8, !tbaa !5
  %13 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %mcislot.addr, align 8, !tbaa !1
  %14 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.mailer_con_info** %13 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.mailer_con_info** %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv8 = trunc i64 %sub.ptr.div to i32
  %15 = load i32, i32* %doquit.addr, align 4, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.57, i32 0, i32 0), %struct.mailer_con_info* %10, i8* %12, i32 %conv8, i32 %15)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %land.lhs.true, %if.end.3
  %16 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 91), align 1, !tbaa !12
  %conv10 = zext i8 %16 to i32
  %cmp11 = icmp sge i32 %conv10, 100
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.22

land.lhs.true.13:                                 ; preds = %if.end.9
  %17 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.end.22, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.13
  %18 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 25
  %19 = load i8*, i8** %e_id, align 8, !tbaa !14
  %20 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %21 = ptrtoint %struct.mailer_con_info* %20 to i64
  %22 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_host16 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %22, i32 0, i32 12
  %23 = load i8*, i8** %mci_host16, align 8, !tbaa !5
  %24 = load %struct.mailer_con_info**, %struct.mailer_con_info*** %mcislot.addr, align 8, !tbaa !1
  %25 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %sub.ptr.lhs.cast17 = ptrtoint %struct.mailer_con_info** %24 to i64
  %sub.ptr.rhs.cast18 = ptrtoint %struct.mailer_con_info** %25 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %sub.ptr.div20 = sdiv exact i64 %sub.ptr.sub19, 8
  %conv21 = trunc i64 %sub.ptr.div20 to i32
  %26 = load i32, i32* %doquit.addr, align 4, !tbaa !13
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 7, i8* %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.58, i32 0, i32 0), i64 %21, i8* %23, i32 %conv21, i32 %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %land.lhs.true.13, %if.end.9
  %27 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_deliveries = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %27, i32 0, i32 5
  store i32 0, i32* %mci_deliveries, align 4, !tbaa !25
  %28 = load i32, i32* %doquit.addr, align 4, !tbaa !13
  %tobool23 = icmp ne i32 %28, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.22
  %29 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_host25 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %29, i32 0, i32 12
  %30 = load i8*, i8** %mci_host25, align 8, !tbaa !5
  call void (i8*, ...) @message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i8* %30)
  %31 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %31, i32 0, i32 0
  %32 = load i64, i64* %mci_flags, align 8, !tbaa !11
  %and = and i64 %32, -5
  store i64 %and, i64* %mci_flags, align 8, !tbaa !11
  %33 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %33, i32 0, i32 4
  %34 = load i16, i16* %mci_state, align 2, !tbaa !20
  %conv26 = sext i16 %34 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.24
  %35 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %35, i32 0, i32 11
  %36 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !22
  %37 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  call void @smtpquit(%struct.mailer* %36, %struct.mailer_con_info* %37, %struct.envelope* @BlankEnvelope)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.24
  br label %if.end.46

if.else:                                          ; preds = %if.end.22
  %38 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_in = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %38, i32 0, i32 7
  %39 = load %struct.sm_file*, %struct.sm_file** %mci_in, align 8, !tbaa !26
  %cmp31 = icmp ne %struct.sm_file* %39, null
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.else
  %40 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_in34 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %40, i32 0, i32 7
  %41 = load %struct.sm_file*, %struct.sm_file** %mci_in34, align 8, !tbaa !26
  %call = call i32 @sm_io_close(%struct.sm_file* %41, i32 -2)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.else
  %42 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_out = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %42, i32 0, i32 8
  %43 = load %struct.sm_file*, %struct.sm_file** %mci_out, align 8, !tbaa !27
  %cmp36 = icmp ne %struct.sm_file* %43, null
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.35
  %44 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_out39 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %44, i32 0, i32 8
  %45 = load %struct.sm_file*, %struct.sm_file** %mci_out39, align 8, !tbaa !27
  %call40 = call i32 @sm_io_close(%struct.sm_file* %45, i32 -2)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.35
  %46 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_out42 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %46, i32 0, i32 8
  store %struct.sm_file* null, %struct.sm_file** %mci_out42, align 8, !tbaa !27
  %47 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_in43 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %47, i32 0, i32 7
  store %struct.sm_file* null, %struct.sm_file** %mci_in43, align 8, !tbaa !26
  %48 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_state44 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %48, i32 0, i32 4
  store i16 0, i16* %mci_state44, align 2, !tbaa !20
  %49 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_exitstat = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %49, i32 0, i32 3
  store i16 0, i16* %mci_exitstat, align 2, !tbaa !28
  %50 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %50, i32 0, i32 1
  store i16 0, i16* %mci_errno, align 2, !tbaa !29
  %51 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_flags45 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %51, i32 0, i32 0
  store i64 0, i64* %mci_flags45, align 8, !tbaa !11
  %52 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_retryrcpt = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %52, i32 0, i32 19
  store i32 0, i32* %mci_retryrcpt, align 4, !tbaa !30
  %53 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_tolist = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %53, i32 0, i32 20
  store i8* null, i8** %mci_tolist, align 8, !tbaa !31
  %54 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_okrcpts = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %54, i32 0, i32 22
  store i32 0, i32* %mci_okrcpts, align 4, !tbaa !32
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.41, %if.end.30
  br label %do.body

do.body:                                          ; preds = %if.end.46
  %55 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_status = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %55, i32 0, i32 13
  %56 = load i8*, i8** %mci_status, align 8, !tbaa !33
  %cmp47 = icmp ne i8* %56, null
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %do.body
  %57 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_status50 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %57, i32 0, i32 13
  %58 = load i8*, i8** %mci_status50, align 8, !tbaa !33
  call void @sm_free_tagged(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 253)
  %59 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_status51 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %59, i32 0, i32 13
  store i8* null, i8** %mci_status51, align 8, !tbaa !33
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.52
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.53

do.body.53:                                       ; preds = %do.end
  %60 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rstatus = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %60, i32 0, i32 14
  %61 = load i8*, i8** %mci_rstatus, align 8, !tbaa !34
  %cmp54 = icmp ne i8* %61, null
  br i1 %cmp54, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %do.body.53
  %62 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rstatus57 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %62, i32 0, i32 14
  %63 = load i8*, i8** %mci_rstatus57, align 8, !tbaa !34
  call void @sm_free_tagged(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 254)
  %64 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rstatus58 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %64, i32 0, i32 14
  store i8* null, i8** %mci_rstatus58, align 8, !tbaa !34
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %do.body.53
  br label %do.cond.60

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61

do.end.61:                                        ; preds = %do.cond.60
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.61
  %65 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_heloname = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %65, i32 0, i32 17
  %66 = load i8*, i8** %mci_heloname, align 8, !tbaa !35
  %cmp63 = icmp ne i8* %66, null
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %do.body.62
  %67 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_heloname66 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %67, i32 0, i32 17
  %68 = load i8*, i8** %mci_heloname66, align 8, !tbaa !35
  call void @sm_free_tagged(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 255)
  %69 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_heloname67 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %69, i32 0, i32 17
  store i8* null, i8** %mci_heloname67, align 8, !tbaa !35
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %do.body.62
  br label %do.cond.69

do.cond.69:                                       ; preds = %if.end.68
  br label %do.end.70

do.end.70:                                        ; preds = %do.cond.69
  %70 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rpool = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %70, i32 0, i32 21
  %71 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %mci_rpool, align 8, !tbaa !36
  %cmp71 = icmp ne %struct.SM_RPOOL_T* %71, null
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %do.end.70
  %72 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rpool74 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %72, i32 0, i32 21
  %73 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %mci_rpool74, align 8, !tbaa !36
  call void @sm_rpool_free(%struct.SM_RPOOL_T* %73)
  %74 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_macro = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %74, i32 0, i32 24
  %mac_rpool = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %mci_macro, i32 0, i32 0
  store %struct.SM_RPOOL_T* null, %struct.SM_RPOOL_T** %mac_rpool, align 8, !tbaa !37
  %75 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rpool75 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %75, i32 0, i32 21
  store %struct.SM_RPOOL_T* null, %struct.SM_RPOOL_T** %mci_rpool75, align 8, !tbaa !36
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %do.end.70
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.76, %if.then.2, %if.then
  %76 = bitcast %struct.mailer_con_info** %mci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
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

declare void @sm_dprintf(i8*, ...) #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i8* @sm_malloc_tagged_x(i64, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i64 @curtime() #2

; Function Attrs: nounwind uwtable
define void @mci_flush(i32 %doquit, %struct.mailer_con_info* %allbut) #0 {
entry:
  %doquit.addr = alloca i32, align 4
  %allbut.addr = alloca %struct.mailer_con_info*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %doquit, i32* %doquit.addr, align 4, !tbaa !13
  store %struct.mailer_con_info* %allbut, %struct.mailer_con_info** %allbut.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !tbaa !13
  %3 = load i32, i32* @MaxMciCache, align 4, !tbaa !13
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.mailer_con_info*, %struct.mailer_con_info** %allbut.addr, align 8, !tbaa !1
  %5 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.mailer_con_info*, %struct.mailer_con_info** %6, i64 %idxprom
  %7 = load %struct.mailer_con_info*, %struct.mailer_con_info** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.mailer_con_info* %4, %7
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.mailer_con_info*, %struct.mailer_con_info** %9, i64 %idxprom4
  %10 = load i32, i32* %doquit.addr, align 4, !tbaa !13
  call void @mci_uncache(%struct.mailer_con_info** %arrayidx5, i32 %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %11 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
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
define void @mci_clr_extensions(%struct.mailer_con_info* %mci) #0 {
entry:
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %1, i32 0, i32 0
  %2 = load i64, i64* %mci_flags, align 8, !tbaa !11
  %and = and i64 %2, -33724529
  store i64 %and, i64* %mci_flags, align 8, !tbaa !11
  %3 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_maxsize = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %3, i32 0, i32 6
  store i64 0, i64* %mci_maxsize, align 8, !tbaa !38
  %4 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_min_by = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %4, i32 0, i32 18
  store i64 0, i64* %mci_min_by, align 8, !tbaa !39
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.mailer_con_info* @mci_get(i8* %host, %struct.mailer* %m) #0 {
entry:
  %retval = alloca %struct.mailer_con_info*, align 8
  %host.addr = alloca i8*, align 8
  %m.addr = alloca %struct.mailer*, align 8
  %mci = alloca %struct.mailer_con_info*, align 8
  %s = alloca %struct.symtab*, align 8
  %cleanup.dest.slot = alloca i32
  %socklen = alloca i32, align 4
  %now = alloca i64, align 8
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  %0 = bitcast %struct.mailer_con_info** %mci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  call void @llvm.memset.p0i8.i64(i8* bitcast (%union.bigsockaddr* @CurHostAddr to i8*), i8 0, i64 112, i32 4, i1 false)
  %call = call %struct.mailer_con_info** @mci_scan(%struct.mailer_con_info* null)
  %2 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_mno = getelementptr inbounds %struct.mailer, %struct.mailer* %2, i32 0, i32 6
  %3 = load i16, i16* %m_mno, align 2, !tbaa !40
  %conv = sext i16 %3 to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_mno2 = getelementptr inbounds %struct.mailer, %struct.mailer* %4, i32 0, i32 6
  %5 = load i16, i16* %m_mno2, align 2, !tbaa !40
  %conv3 = sext i16 %5 to i32
  %6 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_name = getelementptr inbounds %struct.mailer, %struct.mailer* %6, i32 0, i32 0
  %7 = load i8*, i8** %m_name, align 8, !tbaa !41
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %conv3, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %9 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_mno4 = getelementptr inbounds %struct.mailer, %struct.mailer* %9, i32 0, i32 6
  %10 = load i16, i16* %m_mno4, align 2, !tbaa !40
  %conv5 = sext i16 %10 to i32
  %add = add nsw i32 17, %conv5
  %call6 = call %struct.symtab* @stab(i8* %8, i32 %add, i32 1)
  store %struct.symtab* %call6, %struct.symtab** %s, align 8, !tbaa !1
  %11 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %11, i32 0, i32 3
  %sv_mci = bitcast %union.anon* %s_value to %struct.mailer_con_info*
  store %struct.mailer_con_info* %sv_mci, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_retryrcpt = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %12, i32 0, i32 19
  store i32 0, i32* %mci_retryrcpt, align 4, !tbaa !30
  %13 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_tolist = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %13, i32 0, i32 20
  store i8* null, i8** %mci_tolist, align 8, !tbaa !31
  %14 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_okrcpts = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %14, i32 0, i32 22
  store i32 0, i32* %mci_okrcpts, align 4, !tbaa !32
  %15 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %15, i32 0, i32 0
  %16 = load i64, i64* %mci_flags, align 8, !tbaa !11
  store i64 %16, i64* %mci_flags, align 8, !tbaa !11
  %17 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rpool = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %17, i32 0, i32 21
  %18 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %mci_rpool, align 8, !tbaa !36
  %cmp7 = icmp eq %struct.SM_RPOOL_T* %18, null
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %call10 = call %struct.SM_RPOOL_T* @sm_rpool_new_x(%struct.SM_RPOOL_T* null)
  %19 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rpool11 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %19, i32 0, i32 21
  store %struct.SM_RPOOL_T* %call10, %struct.SM_RPOOL_T** %mci_rpool11, align 8, !tbaa !36
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %20 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_macro = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %20, i32 0, i32 24
  %mac_rpool = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %mci_macro, i32 0, i32 0
  %21 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %mac_rpool, align 8, !tbaa !37
  %cmp13 = icmp eq %struct.SM_RPOOL_T* %21, null
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.12
  %22 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rpool16 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %22, i32 0, i32 21
  %23 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %mci_rpool16, align 8, !tbaa !36
  %24 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_macro17 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %24, i32 0, i32 24
  %mac_rpool18 = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %mci_macro17, i32 0, i32 0
  store %struct.SM_RPOOL_T* %23, %struct.SM_RPOOL_T** %mac_rpool18, align 8, !tbaa !37
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end.12
  %25 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %25, i32 0, i32 12
  %26 = load i8*, i8** %mci_host, align 8, !tbaa !5
  %cmp20 = icmp eq i8* %26, null
  br i1 %cmp20, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.19
  %27 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_name = getelementptr inbounds %struct.symtab, %struct.symtab* %27, i32 0, i32 0
  %28 = load i8*, i8** %s_name, align 8, !tbaa !42
  %29 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_host22 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %29, i32 0, i32 12
  store i8* %28, i8** %mci_host22, align 8, !tbaa !5
  %cmp23 = icmp ne i8* %28, null
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.36

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %30 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %call26 = call i32 @mci_load_persistent(%struct.mailer_con_info* %30)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.end.36, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.25
  %31 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 42), align 1, !tbaa !12
  %conv28 = zext i8 %31 to i32
  %cmp29 = icmp sge i32 %conv28, 2
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.35

land.lhs.true.31:                                 ; preds = %if.then.27
  %32 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool32 = icmp ne i32 %32, 0
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.31
  %33 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %34 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_name34 = getelementptr inbounds %struct.mailer, %struct.mailer* %34, i32 0, i32 0
  %35 = load i8*, i8** %m_name34, align 8, !tbaa !41
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* %33, i8* %35)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %land.lhs.true.31, %if.then.27
  %36 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_exitstat = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %36, i32 0, i32 3
  store i16 75, i16* %mci_exitstat, align 2, !tbaa !28
  %37 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %37, i32 0, i32 4
  store i16 0, i16* %mci_state, align 2, !tbaa !20
  %38 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_statfile = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %38, i32 0, i32 16
  store %struct.sm_file* null, %struct.sm_file** %mci_statfile, align 8, !tbaa !44
  %39 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  store %struct.mailer_con_info* %39, %struct.mailer_con_info** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %land.lhs.true.25, %land.lhs.true, %if.end.19
  %40 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 42), align 1, !tbaa !12
  %conv37 = zext i8 %40 to i32
  %cmp38 = icmp sge i32 %conv37, 2
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.50

land.lhs.true.40:                                 ; preds = %if.end.36
  %41 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool41 = icmp ne i32 %41, 0
  br i1 %tobool41, label %if.end.50, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.40
  %42 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %43 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_name43 = getelementptr inbounds %struct.mailer, %struct.mailer* %43, i32 0, i32 0
  %44 = load i8*, i8** %m_name43, align 8, !tbaa !41
  %45 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_state44 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %45, i32 0, i32 4
  %46 = load i16, i16* %mci_state44, align 2, !tbaa !20
  %conv45 = sext i16 %46 to i32
  %47 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_flags46 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %47, i32 0, i32 0
  %48 = load i64, i64* %mci_flags46, align 8, !tbaa !11
  %49 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_exitstat47 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %49, i32 0, i32 3
  %50 = load i16, i16* %mci_exitstat47, align 2, !tbaa !28
  %conv48 = sext i16 %50 to i32
  %51 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %51, i32 0, i32 1
  %52 = load i16, i16* %mci_errno, align 2, !tbaa !29
  %conv49 = sext i16 %52 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i32 0, i32 0), i8* %42, i8* %44, i32 %conv45, i64 %48, i32 %conv48, i32 %conv49)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.42, %land.lhs.true.40, %if.end.36
  %53 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_state51 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %53, i32 0, i32 4
  %54 = load i16, i16* %mci_state51, align 2, !tbaa !20
  %conv52 = sext i16 %54 to i32
  %cmp53 = icmp eq i32 %conv52, 2
  br i1 %cmp53, label %if.then.55, label %if.end.68

if.then.55:                                       ; preds = %if.end.50
  %55 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %call56 = call i32 @smtpprobe(%struct.mailer_con_info* %55)
  %56 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_state57 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %56, i32 0, i32 4
  %57 = load i16, i16* %mci_state57, align 2, !tbaa !20
  %conv58 = sext i16 %57 to i32
  %cmp59 = icmp ne i32 %conv58, 2
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.then.55
  %58 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_errno62 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %58, i32 0, i32 1
  store i16 0, i16* %mci_errno62, align 2, !tbaa !29
  %59 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_exitstat63 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %59, i32 0, i32 3
  store i16 0, i16* %mci_exitstat63, align 2, !tbaa !28
  %60 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_state64 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %60, i32 0, i32 4
  store i16 0, i16* %mci_state64, align 2, !tbaa !20
  br label %if.end.67

if.else:                                          ; preds = %if.then.55
  %61 = bitcast i32* %socklen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  store i32 112, i32* %socklen, align 4, !tbaa !13
  %62 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_in = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %62, i32 0, i32 7
  %63 = load %struct.sm_file*, %struct.sm_file** %mci_in, align 8, !tbaa !26
  %call65 = call i32 @sm_io_getinfo(%struct.sm_file* %63, i32 3, i8* null)
  %call66 = call i32 @getpeername(i32 %call65, %struct.sockaddr* bitcast (%union.bigsockaddr* @CurHostAddr to %struct.sockaddr*), i32* %socklen) #1
  %64 = bitcast i32* %socklen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.then.61
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.50
  %65 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_state69 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %65, i32 0, i32 4
  %66 = load i16, i16* %mci_state69, align 2, !tbaa !20
  %conv70 = sext i16 %66 to i32
  %cmp71 = icmp eq i32 %conv70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.83

if.then.73:                                       ; preds = %if.end.68
  %67 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %call74 = call i64 @curtime()
  store i64 %call74, i64* %now, align 8, !tbaa !19
  %68 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_lastuse = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %68, i32 0, i32 15
  %69 = load i64, i64* %mci_lastuse, align 8, !tbaa !21
  %70 = load i64, i64* @MciInfoTimeout, align 8, !tbaa !19
  %add75 = add nsw i64 %69, %70
  %71 = load i64, i64* %now, align 8, !tbaa !19
  %cmp76 = icmp sle i64 %add75, %71
  br i1 %cmp76, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %if.then.73
  %72 = load i64, i64* %now, align 8, !tbaa !19
  %73 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_lastuse79 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %73, i32 0, i32 15
  store i64 %72, i64* %mci_lastuse79, align 8, !tbaa !21
  %74 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_errno80 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %74, i32 0, i32 1
  store i16 0, i16* %mci_errno80, align 2, !tbaa !29
  %75 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_exitstat81 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %75, i32 0, i32 3
  store i16 0, i16* %mci_exitstat81, align 2, !tbaa !28
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.78, %if.then.73
  %76 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.68
  %77 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  store %struct.mailer_con_info* %77, %struct.mailer_con_info** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.83, %if.end.35
  %78 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.mailer_con_info** %mci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load %struct.mailer_con_info*, %struct.mailer_con_info** %retval
  ret %struct.mailer_con_info* %80
}

declare void @syserr(i8*, ...) #2

declare %struct.symtab* @stab(i8*, i32, i32) #2

declare %struct.SM_RPOOL_T* @sm_rpool_new_x(%struct.SM_RPOOL_T*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mci_load_persistent(%struct.mailer_con_info* %mci) #0 {
entry:
  %retval = alloca i32, align 4
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %save_errno = alloca i32, align 4
  %locked = alloca i32, align 4
  %fp = alloca %struct.sm_file*, align 8
  %fname = alloca [4096 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %call = call i32* @__errno_location() #8
  %1 = load i32, i32* %call, align 4, !tbaa !13
  store i32 %1, i32* %save_errno, align 4, !tbaa !13
  %2 = bitcast i32* %locked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %locked, align 4, !tbaa !13
  %3 = bitcast %struct.sm_file** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [4096 x i8]* %fname to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %4) #1
  %5 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info* %5, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %6 to i32
  %cmp1 = icmp sge i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.4:                                         ; preds = %entry
  %8 = load i32, i32* @IgnoreHostStatus, align 4, !tbaa !13
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %9 = load i8*, i8** @HostStatDir, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %9, null
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %10 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %10, i32 0, i32 12
  %11 = load i8*, i8** %mci_host, align 8, !tbaa !5
  %cmp9 = icmp eq i8* %11, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false, %if.end.4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.12:                                        ; preds = %lor.lhs.false.8
  %12 = load i32, i32* @SingleThreadDelivery, align 4, !tbaa !13
  %tobool13 = icmp ne i32 %12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.18

land.lhs.true.14:                                 ; preds = %if.end.12
  %13 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %13, i32 0, i32 16
  %14 = load %struct.sm_file*, %struct.sm_file** %mci_statfile, align 8, !tbaa !44
  %cmp15 = icmp ne %struct.sm_file* %14, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.14
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.18:                                        ; preds = %land.lhs.true.14, %if.end.12
  %15 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp sge i32 %conv19, 1
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.26

land.lhs.true.22:                                 ; preds = %if.end.18
  %16 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool23 = icmp ne i32 %16, 0
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22
  %17 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host25 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %17, i32 0, i32 12
  %18 = load i8*, i8** %mci_host25, align 8, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.90, i32 0, i32 0), i8* %18)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %land.lhs.true.22, %if.end.18
  %19 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host27 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %19, i32 0, i32 12
  %20 = load i8*, i8** %mci_host27, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call28 = call i32 @mci_generate_persistent_path(i8* %20, i8* %arraydecay, i32 4096, i32 0)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %if.end.26
  %21 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv32 = zext i8 %21 to i32
  %cmp33 = icmp sge i32 %conv32, 1
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.38

land.lhs.true.35:                                 ; preds = %if.then.31
  %22 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool36 = icmp ne i32 %22, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.35
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %land.lhs.true.35, %if.then.31
  br label %cleanup

if.end.39:                                        ; preds = %if.end.26
  %arraydecay40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %23 = load i32, i32* @FileMode, align 4, !tbaa !13
  %call41 = call %struct.sm_file* @safefopen(i8* %arraydecay40, i32 0, i32 %23, i64 25474)
  store %struct.sm_file* %call41, %struct.sm_file** %fp, align 8, !tbaa !1
  %24 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %cmp42 = icmp eq %struct.sm_file* %24, null
  br i1 %cmp42, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %if.end.39
  %25 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv45 = zext i8 %25 to i32
  %cmp46 = icmp sge i32 %conv45, 1
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.54

land.lhs.true.48:                                 ; preds = %if.then.44
  %26 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool49 = icmp ne i32 %26, 0
  br i1 %tobool49, label %if.end.54, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.48
  %arraydecay51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call52 = call i32* @__errno_location() #8
  %27 = load i32, i32* %call52, align 4, !tbaa !13
  %call53 = call i8* @sm_errstring(i32 %27)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.92, i32 0, i32 0), i8* %arraydecay51, i8* %call53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %land.lhs.true.48, %if.then.44
  br label %cleanup

if.end.55:                                        ; preds = %if.end.39
  %arraydecay56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  store i8* %arraydecay56, i8** @FileName, align 8, !tbaa !1
  %28 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call57 = call i32 @sm_io_getinfo(%struct.sm_file* %28, i32 3, i8* null)
  %arraydecay58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call59 = call i32 @lockfile(i32 %call57, i8* %arraydecay58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i32 0, i32 0), i32 5)
  store i32 %call59, i32* %locked, align 4, !tbaa !13
  %29 = load i32, i32* %locked, align 4, !tbaa !13
  %tobool60 = icmp ne i32 %29, 0
  br i1 %tobool60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %if.end.55
  %30 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %31 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call62 = call i32 @mci_read_persistent(%struct.sm_file* %30, %struct.mailer_con_info* %31)
  %32 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call63 = call i32 @sm_io_getinfo(%struct.sm_file* %32, i32 3, i8* null)
  %arraydecay64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call65 = call i32 @lockfile(i32 %call63, i8* %arraydecay64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i32 0, i32 0), i32 8)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %if.end.55
  store i8* null, i8** @FileName, align 8, !tbaa !1
  %33 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call67 = call i32 @sm_io_close(%struct.sm_file* %33, i32 -2)
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.end.54, %if.end.38
  %34 = load i32, i32* %save_errno, align 4, !tbaa !13
  %call68 = call i32* @__errno_location() #8
  store i32 %34, i32* %call68, align 4, !tbaa !13
  %35 = load i32, i32* %locked, align 4, !tbaa !13
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

cleanup.69:                                       ; preds = %cleanup, %if.then.17, %if.then.11, %if.end
  %36 = bitcast [4096 x i8]* %fname to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %36) #1
  %37 = bitcast %struct.sm_file** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %locked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @smtpprobe(%struct.mailer_con_info*) #2

; Function Attrs: nounwind
declare i32 @getpeername(i32, %struct.sockaddr*, i32*) #3

declare i32 @sm_io_getinfo(%struct.sm_file*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @mci_close(%struct.mailer_con_info* %mci, i8* %where) #0 {
entry:
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %where.addr = alloca i8*, align 8
  %dumped = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store i8* %where, i8** %where.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dumped to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %dumped, align 4, !tbaa !13
  %2 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %2, i32 0, i32 8
  %3 = load %struct.sm_file*, %struct.sm_file** %mci_out, align 8, !tbaa !27
  %cmp1 = icmp ne %struct.sm_file* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %4 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %4 to i32
  %cmp3 = icmp sge i32 %conv, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.then.2
  %5 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* %6)
  %call = call %struct.sm_file* @sm_debug_file()
  %7 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_dump(%struct.sm_file* %call, %struct.mailer_con_info* %7, i32 0)
  store i32 1, i32* %dumped, align 4, !tbaa !13
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %if.then.2
  %8 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out7 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %8, i32 0, i32 8
  %9 = load %struct.sm_file*, %struct.sm_file** %mci_out7, align 8, !tbaa !27
  %call8 = call i32 @sm_io_close(%struct.sm_file* %9, i32 -2)
  %10 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out9 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %10, i32 0, i32 8
  store %struct.sm_file* null, %struct.sm_file** %mci_out9, align 8, !tbaa !27
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.6, %if.end
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_in = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %11, i32 0, i32 7
  %12 = load %struct.sm_file*, %struct.sm_file** %mci_in, align 8, !tbaa !26
  %cmp11 = icmp ne %struct.sm_file* %12, null
  br i1 %cmp11, label %if.then.13, label %if.end.28

if.then.13:                                       ; preds = %if.end.10
  %13 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv14 = zext i8 %13 to i32
  %cmp15 = icmp sge i32 %conv14, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.24

land.lhs.true.17:                                 ; preds = %if.then.13
  %14 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool18 = icmp ne i32 %14, 0
  br i1 %tobool18, label %if.end.24, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.17
  %15 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i8* %15)
  %16 = load i32, i32* %dumped, align 4, !tbaa !13
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.then.19
  %call22 = call %struct.sm_file* @sm_debug_file()
  %17 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_dump(%struct.sm_file* %call22, %struct.mailer_con_info* %17, i32 0)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true.17, %if.then.13
  %18 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_in25 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %18, i32 0, i32 7
  %19 = load %struct.sm_file*, %struct.sm_file** %mci_in25, align 8, !tbaa !26
  %call26 = call i32 @sm_io_close(%struct.sm_file* %19, i32 -2)
  %20 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_in27 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %20, i32 0, i32 7
  store %struct.sm_file* null, %struct.sm_file** %mci_in27, align 8, !tbaa !26
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.24, %if.end.10
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %21, i32 0, i32 4
  store i16 0, i16* %mci_state, align 2, !tbaa !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then
  %22 = bitcast i32* %dumped to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
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
define void @mci_dump(%struct.sm_file* %fp, %struct.mailer_con_info* %mci, i32 %logit) #0 {
entry:
  %fp.addr = alloca %struct.sm_file*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %logit.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %sep = alloca i8*, align 8
  %buf = alloca [4000 x i8], align 16
  %f = alloca %struct.mcifbits*, align 8
  store %struct.sm_file* %fp, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store i32 %logit, i32* %logit.addr, align 4, !tbaa !13
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %sep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [4000 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4000, i8* %2) #1
  %3 = load i32, i32* %logit.addr, align 4, !tbaa !13
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)
  store i8* %cond, i8** %sep, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  %4 = load i8*, i8** %p, align 8, !tbaa !1
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 4000, %sub.ptr.sub
  %6 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %4, i64 %sub, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), %struct.mailer_con_info* %6)
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %7) #9
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %call2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %9 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast4 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %arraydecay3 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  %sub7 = sub i64 4000, %sub.ptr.sub6
  %call8 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %10, i64 %sub7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %printit

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay9 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast10 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %arraydecay9 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %sub13 = sub i64 4000, %sub.ptr.sub12
  %14 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %14, i32 0, i32 0
  %15 = load i64, i64* %mci_flags, align 8, !tbaa !11
  %call14 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %12, i64 %sub13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i64 %15)
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %call15 = call i64 @strlen(i8* %16) #9
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i8, i8* %17, i64 %call15
  store i8* %add.ptr16, i8** %p, align 8, !tbaa !1
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay17 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  %add.ptr18 = getelementptr inbounds i8, i8* %arraydecay17, i64 4000
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 -4
  %cmp20 = icmp uge i8* %18, %add.ptr19
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end
  br label %printit

if.end.22:                                        ; preds = %if.end
  %19 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags23 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %19, i32 0, i32 0
  %20 = load i64, i64* %mci_flags23, align 8, !tbaa !11
  %cmp24 = icmp ne i64 %20, 0
  br i1 %cmp24, label %if.then.25, label %if.end.42

if.then.25:                                       ; preds = %if.end.22
  %21 = bitcast %struct.mcifbits** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 60, i8* %22, align 1, !tbaa !12
  store %struct.mcifbits* getelementptr inbounds ([20 x %struct.mcifbits], [20 x %struct.mcifbits]* @MciFlags, i32 0, i32 0), %struct.mcifbits** %f, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %23 = load %struct.mcifbits*, %struct.mcifbits** %f, align 8, !tbaa !1
  %mcif_bit = getelementptr inbounds %struct.mcifbits, %struct.mcifbits* %23, i32 0, i32 0
  %24 = load i32, i32* %mcif_bit, align 4, !tbaa !45
  %cmp26 = icmp ne i32 %24, 0
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags27 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %25, i32 0, i32 0
  %26 = load i64, i64* %mci_flags27, align 8, !tbaa !11
  %27 = load %struct.mcifbits*, %struct.mcifbits** %f, align 8, !tbaa !1
  %mcif_bit28 = getelementptr inbounds %struct.mcifbits, %struct.mcifbits* %27, i32 0, i32 0
  %28 = load i32, i32* %mcif_bit28, align 4, !tbaa !45
  %conv = sext i32 %28 to i64
  %and = and i64 %26, %conv
  %cmp29 = icmp ne i64 %and, 0
  br i1 %cmp29, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %for.body
  br label %for.inc

if.end.32:                                        ; preds = %for.body
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay33 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast34 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast35 = ptrtoint i8* %arraydecay33 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %sub37 = sub i64 4000, %sub.ptr.sub36
  %31 = load %struct.mcifbits*, %struct.mcifbits** %f, align 8, !tbaa !1
  %mcif_name = getelementptr inbounds %struct.mcifbits, %struct.mcifbits* %31, i32 0, i32 1
  %32 = load i8*, i8** %mcif_name, align 8, !tbaa !47
  %call38 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %29, i64 %sub37, i32 2, i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %call39 = call i64 @strlen(i8* %33) #9
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds i8, i8* %34, i64 %call39
  store i8* %add.ptr40, i8** %p, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.32, %if.then.31
  %35 = load %struct.mcifbits*, %struct.mcifbits** %f, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds %struct.mcifbits, %struct.mcifbits* %35, i32 1
  store %struct.mcifbits* %incdec.ptr41, %struct.mcifbits** %f, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 -1
  store i8 62, i8* %arrayidx, align 1, !tbaa !12
  %37 = bitcast %struct.mcifbits** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %if.end.42

if.end.42:                                        ; preds = %for.end, %if.end.22
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay43 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast44 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast45 = ptrtoint i8* %arraydecay43 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %sub47 = sub i64 4000, %sub.ptr.sub46
  %40 = load i8*, i8** %sep, align 8, !tbaa !1
  %41 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %41, i32 0, i32 1
  %42 = load i16, i16* %mci_errno, align 2, !tbaa !29
  %conv48 = sext i16 %42 to i32
  %43 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_herrno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %43, i32 0, i32 2
  %44 = load i16, i16* %mci_herrno, align 2, !tbaa !48
  %conv49 = sext i16 %44 to i32
  %45 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_exitstat = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %45, i32 0, i32 3
  %46 = load i16, i16* %mci_exitstat, align 2, !tbaa !28
  %conv50 = sext i16 %46 to i32
  %47 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %47, i32 0, i32 4
  %48 = load i16, i16* %mci_state, align 2, !tbaa !20
  %conv51 = sext i16 %48 to i32
  %49 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_pid = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %49, i32 0, i32 9
  %50 = load i32, i32* %mci_pid, align 4, !tbaa !49
  %51 = load i8*, i8** %sep, align 8, !tbaa !1
  %call52 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %38, i64 %sub47, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i32 0, i32 0), i8* %40, i32 %conv48, i32 %conv49, i32 %conv50, i32 %conv51, i32 %50, i8* %51)
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %call53 = call i64 @strlen(i8* %52) #9
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds i8, i8* %53, i64 %call53
  store i8* %add.ptr54, i8** %p, align 8, !tbaa !1
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay55 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast56 = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %arraydecay55 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %sub59 = sub i64 4000, %sub.ptr.sub58
  %56 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_maxsize = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %56, i32 0, i32 6
  %57 = load i64, i64* %mci_maxsize, align 8, !tbaa !38
  %58 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %58, i32 0, i32 10
  %59 = load i8*, i8** %mci_phase, align 8, !tbaa !50
  %60 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %60, i32 0, i32 11
  %61 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !22
  %cmp60 = icmp eq %struct.mailer* %61, null
  br i1 %cmp60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.42
  br label %cond.end

cond.false:                                       ; preds = %if.end.42
  %62 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer62 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %62, i32 0, i32 11
  %63 = load %struct.mailer*, %struct.mailer** %mci_mailer62, align 8, !tbaa !22
  %m_name = getelementptr inbounds %struct.mailer, %struct.mailer* %63, i32 0, i32 0
  %64 = load i8*, i8** %m_name, align 8, !tbaa !41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond63 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true ], [ %64, %cond.false ]
  %65 = load i8*, i8** %sep, align 8, !tbaa !1
  %call64 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %54, i64 %sub59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i64 %57, i8* %59, i8* %cond63, i8* %65)
  %66 = load i8*, i8** %p, align 8, !tbaa !1
  %call65 = call i64 @strlen(i8* %66) #9
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds i8, i8* %67, i64 %call65
  store i8* %add.ptr66, i8** %p, align 8, !tbaa !1
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %69 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay67 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast68 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast69 = ptrtoint i8* %arraydecay67 to i64
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %sub71 = sub i64 4000, %sub.ptr.sub70
  %70 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %70, i32 0, i32 13
  %71 = load i8*, i8** %mci_status, align 8, !tbaa !33
  %72 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %72, i32 0, i32 14
  %73 = load i8*, i8** %mci_rstatus, align 8, !tbaa !34
  %74 = load i8*, i8** %sep, align 8, !tbaa !1
  %call72 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %68, i64 %sub71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* %71, i8* %73, i8* %74)
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %call73 = call i64 @strlen(i8* %75) #9
  %76 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr74 = getelementptr inbounds i8, i8* %76, i64 %call73
  store i8* %add.ptr74, i8** %p, align 8, !tbaa !1
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay75 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast76 = ptrtoint i8* %78 to i64
  %sub.ptr.rhs.cast77 = ptrtoint i8* %arraydecay75 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %sub79 = sub i64 4000, %sub.ptr.sub78
  %79 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %79, i32 0, i32 12
  %80 = load i8*, i8** %mci_host, align 8, !tbaa !5
  %81 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_lastuse = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %81, i32 0, i32 15
  %call80 = call i8* @ctime(i64* %mci_lastuse) #1
  %call81 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %77, i64 %sub79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %80, i8* %call80)
  br label %printit

printit:                                          ; preds = %cond.end, %if.then.21, %if.then
  %82 = load i32, i32* %logit.addr, align 4, !tbaa !13
  %tobool82 = icmp ne i32 %82, 0
  br i1 %tobool82, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %printit
  %83 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %83, i32 0, i32 25
  %84 = load i8*, i8** %e_id, align 8, !tbaa !14
  %arraydecay84 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 7, i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay84)
  br label %if.end.87

if.else:                                          ; preds = %printit
  %85 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %arraydecay85 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buf, i32 0, i32 0
  %call86 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %85, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay85)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else, %if.then.83
  %86 = bitcast [4000 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 4000, i8* %86) #1
  %87 = bitcast i8** %sep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  ret void
}

declare %struct.sm_file* @sm_debug_file() #2

declare i32 @sm_io_close(%struct.sm_file*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.mailer_con_info* @mci_new(%struct.SM_RPOOL_T* %rpool) #0 {
entry:
  %rpool.addr = alloca %struct.SM_RPOOL_T*, align 8
  %mci = alloca %struct.mailer_con_info*, align 8
  store %struct.SM_RPOOL_T* %rpool, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %0 = bitcast %struct.mailer_con_info** %mci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.SM_RPOOL_T* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @SmHeapGroup, align 4, !tbaa !13
  %call = call i8* @sm_malloc_tagged_x(i64 2256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 494, i32 %2)
  %3 = bitcast i8* %call to %struct.mailer_con_info*
  store %struct.mailer_con_info* %3, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %5 = load i32, i32* @SmHeapGroup, align 4, !tbaa !13
  %call1 = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %4, i64 2256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 496, i32 %5)
  %6 = bitcast i8* %call1 to %struct.mailer_con_info*
  store %struct.mailer_con_info* %6, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %8 = bitcast %struct.mailer_con_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 2256, i32 1, i1 false)
  %call2 = call %struct.SM_RPOOL_T* @sm_rpool_new_x(%struct.SM_RPOOL_T* null)
  %9 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rpool = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %9, i32 0, i32 21
  store %struct.SM_RPOOL_T* %call2, %struct.SM_RPOOL_T** %mci_rpool, align 8, !tbaa !36
  %10 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_rpool3 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %10, i32 0, i32 21
  %11 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %mci_rpool3, align 8, !tbaa !36
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_macro = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %12, i32 0, i32 24
  %mac_rpool = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %mci_macro, i32 0, i32 0
  store %struct.SM_RPOOL_T* %11, %struct.SM_RPOOL_T** %mac_rpool, align 8, !tbaa !37
  %13 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %14 = bitcast %struct.mailer_con_info** %mci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret %struct.mailer_con_info* %13
}

declare i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T*, i64, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @mci_match(i8* %host, %struct.mailer* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i8*, align 8
  %m.addr = alloca %struct.mailer*, align 8
  %mci = alloca %struct.mailer_con_info*, align 8
  %s = alloca %struct.symtab*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  store %struct.mailer* %m, %struct.mailer** %m.addr, align 8, !tbaa !1
  %0 = bitcast %struct.mailer_con_info** %mci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_mno = getelementptr inbounds %struct.mailer, %struct.mailer* %2, i32 0, i32 6
  %3 = load i16, i16* %m_mno, align 2, !tbaa !40
  %conv = sext i16 %3 to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_mno2 = getelementptr inbounds %struct.mailer, %struct.mailer* %4, i32 0, i32 6
  %5 = load i16, i16* %m_mno2, align 2, !tbaa !40
  %conv3 = sext i16 %5 to i32
  %cmp4 = icmp sgt i32 %conv3, 25
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %7 = load %struct.mailer*, %struct.mailer** %m.addr, align 8, !tbaa !1
  %m_mno6 = getelementptr inbounds %struct.mailer, %struct.mailer* %7, i32 0, i32 6
  %8 = load i16, i16* %m_mno6, align 2, !tbaa !40
  %conv7 = sext i16 %8 to i32
  %add = add nsw i32 17, %conv7
  %call = call %struct.symtab* @stab(i8* %6, i32 %add, i32 0)
  store %struct.symtab* %call, %struct.symtab** %s, align 8, !tbaa !1
  %9 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.symtab* %9, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %10 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %10, i32 0, i32 3
  %sv_mci = bitcast %union.anon* %s_value to %struct.mailer_con_info*
  store %struct.mailer_con_info* %sv_mci, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci, align 8, !tbaa !1
  %mci_state = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %11, i32 0, i32 4
  %12 = load i16, i16* %mci_state, align 2, !tbaa !20
  %conv12 = sext i16 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 2
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %13 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.mailer_con_info** %mci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @mci_setstat(%struct.mailer_con_info* %mci, i32 %xstat, i8* %dstat, i8* %rstat) #0 {
entry:
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %xstat.addr = alloca i32, align 4
  %dstat.addr = alloca i8*, align 8
  %rstat.addr = alloca i8*, align 8
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store i32 %xstat, i32* %xstat.addr, align 4, !tbaa !13
  store i8* %dstat, i8** %dstat.addr, align 8, !tbaa !1
  store i8* %rstat, i8** %rstat.addr, align 8, !tbaa !1
  %0 = load i32, i32* %xstat.addr, align 4, !tbaa !13
  %cmp = icmp ne i32 %0, -5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %xstat.addr, align 4, !tbaa !13
  %cmp1 = icmp ne i32 %1, 76
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %xstat.addr, align 4, !tbaa !13
  %conv = trunc i32 %2 to i16
  %3 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_exitstat = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %3, i32 0, i32 3
  store i16 %conv, i16* %mci_exitstat, align 2, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %4, i32 0, i32 13
  %5 = load i8*, i8** %mci_status, align 8, !tbaa !33
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %do.body
  %6 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status5 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %6, i32 0, i32 13
  %7 = load i8*, i8** %mci_status5, align 8, !tbaa !33
  call void @sm_free_tagged(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 554)
  %8 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status6 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %8, i32 0, i32 13
  store i8* null, i8** %mci_status6, align 8, !tbaa !33
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %9 = load i8*, i8** %dstat.addr, align 8, !tbaa !1
  %cmp8 = icmp ne i8* %9, null
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %dstat.addr, align 8, !tbaa !1
  %call = call i8* @sm_strdup_x(i8* %10)
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status11 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %11, i32 0, i32 13
  store i8* %call, i8** %mci_status11, align 8, !tbaa !33
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %do.end
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.12
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %12, i32 0, i32 14
  %13 = load i8*, i8** %mci_rstatus, align 8, !tbaa !34
  %cmp14 = icmp ne i8* %13, null
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %do.body.13
  %14 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus17 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %14, i32 0, i32 14
  %15 = load i8*, i8** %mci_rstatus17, align 8, !tbaa !34
  call void @sm_free_tagged(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 558)
  %16 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus18 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %16, i32 0, i32 14
  store i8* null, i8** %mci_rstatus18, align 8, !tbaa !34
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %do.body.13
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %17 = load i8*, i8** %rstat.addr, align 8, !tbaa !1
  %cmp21 = icmp ne i8* %17, null
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %do.end.20
  %18 = load i8*, i8** %rstat.addr, align 8, !tbaa !1
  %call24 = call i8* @sm_strdup_x(i8* %18)
  %19 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus25 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %19, i32 0, i32 14
  store i8* %call24, i8** %mci_rstatus25, align 8, !tbaa !34
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %do.end.20
  ret void
}

declare void @sm_free_tagged(i8*, i8*, i32) #2

declare i8* @sm_strdup_x(i8*) #2

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #3

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @mci_dump_all(%struct.sm_file* %fp, i32 %logit) #0 {
entry:
  %fp.addr = alloca %struct.sm_file*, align 8
  %logit.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.sm_file* %fp, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  store i32 %logit, i32* %logit.addr, align 4, !tbaa !13
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !tbaa !13
  %3 = load i32, i32* @MaxMciCache, align 4, !tbaa !13
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %5 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.mailer_con_info**, %struct.mailer_con_info*** @MciCache, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.mailer_con_info*, %struct.mailer_con_info** %6, i64 %idxprom
  %7 = load %struct.mailer_con_info*, %struct.mailer_con_info** %arrayidx, align 8, !tbaa !1
  %8 = load i32, i32* %logit.addr, align 4, !tbaa !13
  call void @mci_dump(%struct.sm_file* %4, %struct.mailer_con_info* %7, i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
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
define i32 @mci_lock_host(%struct.mailer_con_info* %mci) #0 {
entry:
  %retval = alloca i32, align 4
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info* %0, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %1 to i32
  %cmp1 = icmp sge i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %3 = load i32, i32* @SingleThreadDelivery, align 4, !tbaa !13
  %tobool5 = icmp ne i32 %3, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %4 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call = call i32 @mci_lock_host_statfile(%struct.mailer_con_info* %4)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.end
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @mci_lock_host_statfile(%struct.mailer_con_info* %mci) #0 {
entry:
  %retval = alloca i32, align 4
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %save_errno = alloca i32, align 4
  %retVal = alloca i32, align 4
  %fname = alloca [4096 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %call = call i32* @__errno_location() #8
  %1 = load i32, i32* %call, align 4, !tbaa !13
  store i32 %1, i32* %save_errno, align 4, !tbaa !13
  %2 = bitcast i32* %retVal to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %retVal, align 4, !tbaa !13
  %3 = bitcast [4096 x i8]* %fname to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %3) #1
  %4 = load i8*, i8** @HostStatDir, align 8, !tbaa !1
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %5, i32 0, i32 12
  %6 = load i8*, i8** %mci_host, align 8, !tbaa !5
  %cmp1 = icmp eq i8* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %7 to i32
  %cmp2 = icmp sge i32 %conv, 2
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %8 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %9 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host5 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %9, i32 0, i32 12
  %10 = load i8*, i8** %mci_host5, align 8, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.79, i32 0, i32 0), i8* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host7 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %11, i32 0, i32 12
  %12 = load i8*, i8** %mci_host7, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call8 = call i32 @mci_generate_persistent_path(i8* %12, i8* %arraydecay, i32 4096, i32 1)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end.6
  %13 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv12 = zext i8 %13 to i32
  %cmp13 = icmp sge i32 %conv12, 2
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.19

land.lhs.true.15:                                 ; preds = %if.then.11
  %14 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.15
  %15 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host18 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %15, i32 0, i32 12
  %16 = load i8*, i8** %mci_host18, align 8, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.80, i32 0, i32 0), i8* %16)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %land.lhs.true.15, %if.then.11
  store i32 75, i32* %retVal, align 4, !tbaa !13
  br label %cleanup

if.end.20:                                        ; preds = %if.end.6
  %arraydecay21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %17 = load i32, i32* @FileMode, align 4, !tbaa !13
  %call22 = call %struct.sm_file* @safefopen(i8* %arraydecay21, i32 2, i32 %17, i64 25538)
  %18 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %18, i32 0, i32 16
  store %struct.sm_file* %call22, %struct.sm_file** %mci_statfile, align 8, !tbaa !44
  %19 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile23 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %19, i32 0, i32 16
  %20 = load %struct.sm_file*, %struct.sm_file** %mci_statfile23, align 8, !tbaa !44
  %cmp24 = icmp eq %struct.sm_file* %20, null
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.20
  %arraydecay27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.81, i32 0, i32 0), i8* %arraydecay27)
  br label %cleanup

if.end.28:                                        ; preds = %if.end.20
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile29 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %21, i32 0, i32 16
  %22 = load %struct.sm_file*, %struct.sm_file** %mci_statfile29, align 8, !tbaa !44
  %call30 = call i32 @sm_io_getinfo(%struct.sm_file* %22, i32 3, i8* null)
  %arraydecay31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call32 = call i32 @lockfile(i32 %call30, i8* %arraydecay31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i32 0, i32 0), i32 6)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.46, label %if.then.34

if.then.34:                                       ; preds = %if.end.28
  %23 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv35 = zext i8 %23 to i32
  %cmp36 = icmp sge i32 %conv35, 2
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.42

land.lhs.true.38:                                 ; preds = %if.then.34
  %24 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool39 = icmp ne i32 %24, 0
  br i1 %tobool39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.38
  %arraydecay41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.82, i32 0, i32 0), i8* %arraydecay41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true.38, %if.then.34
  %25 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile43 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %25, i32 0, i32 16
  %26 = load %struct.sm_file*, %struct.sm_file** %mci_statfile43, align 8, !tbaa !44
  %call44 = call i32 @sm_io_close(%struct.sm_file* %26, i32 -2)
  %27 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile45 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %27, i32 0, i32 16
  store %struct.sm_file* null, %struct.sm_file** %mci_statfile45, align 8, !tbaa !44
  store i32 75, i32* %retVal, align 4, !tbaa !13
  br label %cleanup

if.end.46:                                        ; preds = %if.end.28
  %28 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv47 = zext i8 %28 to i32
  %cmp48 = icmp sge i32 %conv47, 12
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.57

land.lhs.true.50:                                 ; preds = %if.end.46
  %29 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool51 = icmp ne i32 %29, 0
  br i1 %tobool51, label %if.end.57, label %land.lhs.true.52

land.lhs.true.52:                                 ; preds = %land.lhs.true.50
  %30 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile53 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %30, i32 0, i32 16
  %31 = load %struct.sm_file*, %struct.sm_file** %mci_statfile53, align 8, !tbaa !44
  %cmp54 = icmp ne %struct.sm_file* %31, null
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.52
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.lhs.true.52, %land.lhs.true.50, %if.end.46
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.end.42, %if.then.26, %if.end.19
  %32 = load i32, i32* %save_errno, align 4, !tbaa !13
  %call58 = call i32* @__errno_location() #8
  store i32 %32, i32* %call58, align 4, !tbaa !13
  %33 = load i32, i32* %retVal, align 4, !tbaa !13
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %cleanup, %if.then
  %34 = bitcast [4096 x i8]* %fname to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %34) #1
  %35 = bitcast i32* %retVal to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define void @mci_unlock_host(%struct.mailer_con_info* %mci) #0 {
entry:
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %save_errno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %call = call i32* @__errno_location() #8
  %1 = load i32, i32* %call, align 4, !tbaa !13
  store i32 %1, i32* %save_errno, align 4, !tbaa !13
  %2 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %3 to i32
  %cmp1 = icmp sge i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %entry
  %5 = load i8*, i8** @HostStatDir, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %5, null
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %6 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %6, i32 0, i32 12
  %7 = load i8*, i8** %mci_host, align 8, !tbaa !5
  %cmp7 = icmp eq i8* %7, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %lor.lhs.false
  %8 = load i32, i32* @SingleThreadDelivery, align 4, !tbaa !13
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %if.else, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %if.end.10
  %9 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call13 = call i32 @mci_lock_host_statfile(%struct.mailer_con_info* %9)
  %cmp14 = icmp eq i32 %call13, 75
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true.12
  %10 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv17 = zext i8 %10 to i32
  %cmp18 = icmp sge i32 %conv17, 1
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.23

land.lhs.true.20:                                 ; preds = %if.then.16
  %11 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool21 = icmp ne i32 %11, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.20
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true.20, %if.then.16
  br label %if.end.31

if.else:                                          ; preds = %land.lhs.true.12, %if.end.10
  %12 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv24 = zext i8 %12 to i32
  %cmp25 = icmp sge i32 %conv24, 2
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.30

land.lhs.true.27:                                 ; preds = %if.else
  %13 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool28 = icmp ne i32 %13, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %land.lhs.true.27, %if.else
  %14 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_store_persistent(%struct.mailer_con_info* %14)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.23
  %15 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %15, i32 0, i32 16
  %16 = load %struct.sm_file*, %struct.sm_file** %mci_statfile, align 8, !tbaa !44
  %cmp32 = icmp ne %struct.sm_file* %16, null
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.end.31
  %17 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile35 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %17, i32 0, i32 16
  %18 = load %struct.sm_file*, %struct.sm_file** %mci_statfile35, align 8, !tbaa !44
  %call36 = call i32 @sm_io_close(%struct.sm_file* %18, i32 -2)
  %19 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile37 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %19, i32 0, i32 16
  store %struct.sm_file* null, %struct.sm_file** %mci_statfile37, align 8, !tbaa !44
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.end.31
  %20 = load i32, i32* %save_errno, align 4, !tbaa !13
  %call39 = call i32* @__errno_location() #8
  store i32 %20, i32* %call39, align 4, !tbaa !13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.9, %if.end
  %21 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
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
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define void @mci_store_persistent(%struct.mailer_con_info* %mci) #0 {
entry:
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %save_errno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %call = call i32* @__errno_location() #8
  %1 = load i32, i32* %call, align 4, !tbaa !13
  store i32 %1, i32* %save_errno, align 4, !tbaa !13
  %2 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.mailer_con_info* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %3 to i32
  %cmp1 = icmp sge i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %entry
  %5 = load i8*, i8** @HostStatDir, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %5, null
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %6 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %6, i32 0, i32 12
  %7 = load i8*, i8** %mci_host, align 8, !tbaa !5
  %cmp7 = icmp eq i8* %7, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %lor.lhs.false
  %8 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv11 = zext i8 %8 to i32
  %cmp12 = icmp sge i32 %conv11, 1
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.18

land.lhs.true.14:                                 ; preds = %if.end.10
  %9 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool15 = icmp ne i32 %9, 0
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.14
  %10 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host17 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %10, i32 0, i32 12
  %11 = load i8*, i8** %mci_host17, align 8, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0), i8* %11)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %land.lhs.true.14, %if.end.10
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %12, i32 0, i32 16
  %13 = load %struct.sm_file*, %struct.sm_file** %mci_statfile, align 8, !tbaa !44
  %cmp19 = icmp eq %struct.sm_file* %13, null
  br i1 %cmp19, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.18
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv22 = zext i8 %14 to i32
  %cmp23 = icmp sge i32 %conv22, 1
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.28

land.lhs.true.25:                                 ; preds = %if.then.21
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool26 = icmp ne i32 %15, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.25
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true.25, %if.then.21
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.18
  %16 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile30 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %16, i32 0, i32 16
  %17 = load %struct.sm_file*, %struct.sm_file** %mci_statfile30, align 8, !tbaa !44
  call void @sm_io_rewind(%struct.sm_file* %17, i32 -2)
  %18 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile31 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %18, i32 0, i32 16
  %19 = load %struct.sm_file*, %struct.sm_file** %mci_statfile31, align 8, !tbaa !44
  %call32 = call i32 @sm_io_getinfo(%struct.sm_file* %19, i32 3, i8* null)
  %call33 = call i32 @ftruncate(i32 %call32, i64 0) #1
  %20 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile34 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %20, i32 0, i32 16
  %21 = load %struct.sm_file*, %struct.sm_file** %mci_statfile34, align 8, !tbaa !44
  %call35 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %21, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0))
  %22 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile36 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %22, i32 0, i32 16
  %23 = load %struct.sm_file*, %struct.sm_file** %mci_statfile36, align 8, !tbaa !44
  %24 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %24, i32 0, i32 1
  %25 = load i16, i16* %mci_errno, align 2, !tbaa !29
  %conv37 = sext i16 %25 to i32
  %call38 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %23, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 %conv37)
  %26 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile39 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %26, i32 0, i32 16
  %27 = load %struct.sm_file*, %struct.sm_file** %mci_statfile39, align 8, !tbaa !44
  %28 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_herrno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %28, i32 0, i32 2
  %29 = load i16, i16* %mci_herrno, align 2, !tbaa !48
  %conv40 = sext i16 %29 to i32
  %call41 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %27, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 %conv40)
  %30 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile42 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %30, i32 0, i32 16
  %31 = load %struct.sm_file*, %struct.sm_file** %mci_statfile42, align 8, !tbaa !44
  %32 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_exitstat = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %32, i32 0, i32 3
  %33 = load i16, i16* %mci_exitstat, align 2, !tbaa !28
  %conv43 = sext i16 %33 to i32
  %call44 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %31, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 %conv43)
  %34 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %34, i32 0, i32 13
  %35 = load i8*, i8** %mci_status, align 8, !tbaa !33
  %cmp45 = icmp ne i8* %35, null
  br i1 %cmp45, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %if.end.29
  %36 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile48 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %36, i32 0, i32 16
  %37 = load %struct.sm_file*, %struct.sm_file** %mci_statfile48, align 8, !tbaa !44
  %38 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status49 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %38, i32 0, i32 13
  %39 = load i8*, i8** %mci_status49, align 8, !tbaa !33
  %call50 = call i8* @denlstring(i8* %39, i32 1, i32 0)
  %call51 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %37, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* %call50)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.47, %if.end.29
  %40 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %40, i32 0, i32 14
  %41 = load i8*, i8** %mci_rstatus, align 8, !tbaa !34
  %cmp53 = icmp ne i8* %41, null
  br i1 %cmp53, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %if.end.52
  %42 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile56 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %42, i32 0, i32 16
  %43 = load %struct.sm_file*, %struct.sm_file** %mci_statfile56, align 8, !tbaa !44
  %44 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus57 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %44, i32 0, i32 14
  %45 = load i8*, i8** %mci_rstatus57, align 8, !tbaa !34
  %call58 = call i8* @denlstring(i8* %45, i32 1, i32 0)
  %call59 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %43, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* %call58)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %if.end.52
  %46 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile61 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %46, i32 0, i32 16
  %47 = load %struct.sm_file*, %struct.sm_file** %mci_statfile61, align 8, !tbaa !44
  %48 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_lastuse = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %48, i32 0, i32 15
  %49 = load i64, i64* %mci_lastuse, align 8, !tbaa !21
  %call62 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %47, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i64 %49)
  %50 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile63 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %50, i32 0, i32 16
  %51 = load %struct.sm_file*, %struct.sm_file** %mci_statfile63, align 8, !tbaa !44
  %call64 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %51, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0))
  %52 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_statfile65 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %52, i32 0, i32 16
  %53 = load %struct.sm_file*, %struct.sm_file** %mci_statfile65, align 8, !tbaa !44
  %call66 = call i32 @sm_io_flush(%struct.sm_file* %53, i32 -2)
  %54 = load i32, i32* %save_errno, align 4, !tbaa !13
  %call67 = call i32* @__errno_location() #8
  store i32 %54, i32* %call67, align 4, !tbaa !13
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.end.28, %if.then.9, %if.end
  %55 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  ret void
}

declare void @sm_io_rewind(%struct.sm_file*, i32) #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #3

declare i8* @denlstring(i8*, i32, i32) #2

declare i32 @sm_io_flush(%struct.sm_file*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @mci_traverse_persistent(i32 (i8*, i8*)* %action, i8* %pathname) #0 {
entry:
  %retval = alloca i32, align 4
  %action.addr = alloca i32 (i8*, i8*)*, align 8
  %pathname.addr = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %d = alloca %struct.__dirstream*, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %leftone = alloca i32, align 4
  %removedone = alloca i32, align 4
  %len = alloca i64, align 8
  %newptr = alloca i8*, align 8
  %e = alloca %struct.dirent*, align 8
  %newpath = alloca [4096 x i8], align 16
  %save_errno = alloca i32, align 4
  %end = alloca i8*, align 8
  %start = alloca i8*, align 8
  %scan = alloca i8*, align 8
  %host = alloca [64 x i8], align 16
  %hostptr = alloca i8*, align 8
  store i32 (i8*, i8*)* %action, i32 (i8*, i8*)** %action.addr, align 8, !tbaa !1
  store i8* %pathname, i8** %pathname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stat* %statbuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %1 = bitcast %struct.__dirstream** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @HostStatDir, align 8, !tbaa !1
  store i8* %4, i8** %pathname.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.181

if.end.3:                                         ; preds = %if.end
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %6 to i32
  %cmp4 = icmp sge i32 %conv, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end.3
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %8 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i8* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %land.lhs.true, %if.end.3
  %9 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call = call i32 @stat(i8* %9, %struct.stat* %statbuf) #1
  store i32 %call, i32* %ret, align 4, !tbaa !13
  %10 = load i32, i32* %ret, align 4, !tbaa !13
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.7
  %11 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv11 = zext i8 %11 to i32
  %cmp12 = icmp sge i32 %conv11, 2
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.19

land.lhs.true.14:                                 ; preds = %if.then.10
  %12 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.14
  %13 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call17 = call i32* @__errno_location() #8
  %14 = load i32, i32* %call17, align 4, !tbaa !13
  %call18 = call i8* @sm_errstring(i32 %14)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i32 0, i32 0), i8* %13, i8* %call18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %land.lhs.true.14, %if.then.10
  %15 = load i32, i32* %ret, align 4, !tbaa !13
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.181

if.end.20:                                        ; preds = %if.end.7
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %16 = load i32, i32* %st_mode, align 4, !tbaa !51
  %and = and i32 %16, 61440
  %cmp21 = icmp eq i32 %and, 16384
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.20
  %17 = bitcast i32* %leftone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %removedone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i8** %newptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast %struct.dirent** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast [4096 x i8]* %newpath to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %22) #1
  %23 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call24 = call %struct.__dirstream* @opendir(i8* %23)
  store %struct.__dirstream* %call24, %struct.__dirstream** %d, align 8, !tbaa !1
  %cmp25 = icmp eq %struct.__dirstream* %call24, null
  br i1 %cmp25, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %if.then.23
  %24 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv28 = zext i8 %24 to i32
  %cmp29 = icmp sge i32 %conv28, 2
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.36

land.lhs.true.31:                                 ; preds = %if.then.27
  %25 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool32 = icmp ne i32 %25, 0
  br i1 %tobool32, label %if.end.36, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.31
  %26 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call34 = call i32* @__errno_location() #8
  %27 = load i32, i32* %call34, align 4, !tbaa !13
  %call35 = call i8* @sm_errstring(i32 %27)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0), i8* %26, i8* %call35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %land.lhs.true.31, %if.then.27
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.23
  store i64 4093, i64* %len, align 8, !tbaa !19
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %newpath, i32 0, i32 0
  %28 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %29 = load i64, i64* %len, align 8, !tbaa !19
  %call38 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %28, i64 %29)
  %30 = load i64, i64* %len, align 8, !tbaa !19
  %cmp39 = icmp uge i64 %call38, %30
  br i1 %cmp39, label %if.then.41, label %if.end.52

if.then.41:                                       ; preds = %if.end.37
  %31 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %call42 = call i32* @__errno_location() #8
  %32 = load i32, i32* %call42, align 4, !tbaa !13
  store i32 %32, i32* %save_errno, align 4, !tbaa !13
  %33 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv43 = zext i8 %33 to i32
  %cmp44 = icmp sge i32 %conv43, 2
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.49

land.lhs.true.46:                                 ; preds = %if.then.41
  %34 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool47 = icmp ne i32 %34, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.46
  %35 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i8* %35)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %land.lhs.true.46, %if.then.41
  %36 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8, !tbaa !1
  %call50 = call i32 @closedir(%struct.__dirstream* %36)
  %37 = load i32, i32* %save_errno, align 4, !tbaa !13
  %call51 = call i32* @__errno_location() #8
  store i32 %37, i32* %call51, align 4, !tbaa !13
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %38 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  br label %cleanup

if.end.52:                                        ; preds = %if.end.37
  %arraydecay53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %newpath, i32 0, i32 0
  %arraydecay54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %newpath, i32 0, i32 0
  %call55 = call i64 @strlen(i8* %arraydecay54) #9
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay53, i64 %call55
  store i8* %add.ptr, i8** %newptr, align 8, !tbaa !1
  %39 = load i8*, i8** %newptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %newptr, align 8, !tbaa !1
  store i8 47, i8* %39, align 1, !tbaa !12
  %40 = load i8*, i8** %newptr, align 8, !tbaa !1
  %arraydecay56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %newpath, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay56 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 4096, %sub.ptr.sub
  store i64 %sub, i64* %len, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.52
  store i32 0, i32* %removedone, align 4, !tbaa !13
  store i32 0, i32* %leftone, align 4, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %if.end.103, %if.end.80, %if.then.63, %do.body
  %41 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8, !tbaa !1
  %call57 = call %struct.dirent* @readdir(%struct.__dirstream* %41)
  store %struct.dirent* %call57, %struct.dirent** %e, align 8, !tbaa !1
  %cmp58 = icmp ne %struct.dirent* %call57, null
  br i1 %cmp58, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load %struct.dirent*, %struct.dirent** %e, align 8, !tbaa !1
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i64 0
  %43 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv60 = sext i8 %43 to i32
  %cmp61 = icmp eq i32 %conv60, 46
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %while.body
  br label %while.cond

if.end.64:                                        ; preds = %while.body
  %44 = load i8*, i8** %newptr, align 8, !tbaa !1
  %45 = load %struct.dirent*, %struct.dirent** %e, align 8, !tbaa !1
  %d_name65 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 4
  %arraydecay66 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name65, i32 0, i32 0
  %46 = load i64, i64* %len, align 8, !tbaa !19
  %call67 = call i64 @sm_strlcpy(i8* %44, i8* %arraydecay66, i64 %46)
  %47 = load i64, i64* %len, align 8, !tbaa !19
  %cmp68 = icmp uge i64 %call67, %47
  br i1 %cmp68, label %if.then.70, label %if.end.81

if.then.70:                                       ; preds = %if.end.64
  %48 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv71 = zext i8 %48 to i32
  %cmp72 = icmp sge i32 %conv71, 4
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.80

land.lhs.true.74:                                 ; preds = %if.then.70
  %49 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool75 = icmp ne i32 %49, 0
  br i1 %tobool75, label %if.end.80, label %if.then.76

if.then.76:                                       ; preds = %land.lhs.true.74
  %50 = load i8*, i8** %newptr, align 8, !tbaa !1
  store i8 0, i8* %50, align 1, !tbaa !12
  %arraydecay77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %newpath, i32 0, i32 0
  %51 = load %struct.dirent*, %struct.dirent** %e, align 8, !tbaa !1
  %d_name78 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 4
  %arraydecay79 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name78, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay77, i8* %arraydecay79)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.76, %land.lhs.true.74, %if.then.70
  br label %while.cond

if.end.81:                                        ; preds = %if.end.64
  %52 = load volatile i32, i32* @StopRequest, align 4, !tbaa !13
  %tobool82 = icmp ne i32 %52, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.81
  call void @stop_sendmail()
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.81
  %53 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %action.addr, align 8, !tbaa !1
  %arraydecay85 = getelementptr inbounds [4096 x i8], [4096 x i8]* %newpath, i32 0, i32 0
  %call86 = call i32 @mci_traverse_persistent(i32 (i8*, i8*)* %53, i8* %arraydecay85)
  store i32 %call86, i32* %ret, align 4, !tbaa !13
  %54 = load i32, i32* %ret, align 4, !tbaa !13
  %cmp87 = icmp slt i32 %54, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.84
  br label %while.end

if.end.90:                                        ; preds = %if.end.84
  %55 = load i32, i32* %ret, align 4, !tbaa !13
  %cmp91 = icmp eq i32 %55, 1
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.90
  store i32 1, i32* %leftone, align 4, !tbaa !13
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.end.90
  %56 = load i32, i32* %removedone, align 4, !tbaa !13
  %tobool95 = icmp ne i32 %56, 0
  br i1 %tobool95, label %if.end.103, label %land.lhs.true.96

land.lhs.true.96:                                 ; preds = %if.end.94
  %57 = load i32, i32* %ret, align 4, !tbaa !13
  %cmp97 = icmp eq i32 %57, 0
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.103

land.lhs.true.99:                                 ; preds = %land.lhs.true.96
  %58 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %action.addr, align 8, !tbaa !1
  %cmp100 = icmp eq i32 (i8*, i8*)* %58, @mci_purge_persistent
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %land.lhs.true.99
  store i32 1, i32* %removedone, align 4, !tbaa !13
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %land.lhs.true.99, %land.lhs.true.96, %if.end.94
  br label %while.cond

while.end:                                        ; preds = %if.then.89, %while.cond
  %59 = load i32, i32* %ret, align 4, !tbaa !13
  %cmp104 = icmp slt i32 %59, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %while.end
  br label %do.end

if.end.107:                                       ; preds = %while.end
  %60 = load i32, i32* %removedone, align 4, !tbaa !13
  %tobool108 = icmp ne i32 %60, 0
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.107
  %61 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8, !tbaa !1
  call void @rewinddir(%struct.__dirstream* %61) #1
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.107
  %62 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv111 = zext i8 %62 to i32
  %cmp112 = icmp sge i32 %conv111, 40
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.117

land.lhs.true.114:                                ; preds = %if.end.110
  %63 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool115 = icmp ne i32 %63, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %land.lhs.true.114
  %64 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %65 = load i32, i32* %ret, align 4, !tbaa !13
  %66 = load i32, i32* %removedone, align 4, !tbaa !13
  %67 = load i32, i32* %leftone, align 4, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0), i8* %64, i32 %65, i32 %66, i32 %67)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %land.lhs.true.114, %if.end.110
  br label %do.cond

do.cond:                                          ; preds = %if.end.117
  %68 = load i32, i32* %removedone, align 4, !tbaa !13
  %tobool118 = icmp ne i32 %68, 0
  br i1 %tobool118, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.106
  %69 = load i32, i32* %leftone, align 4, !tbaa !13
  %tobool119 = icmp ne i32 %69, 0
  br i1 %tobool119, label %if.end.124, label %if.then.120

if.then.120:                                      ; preds = %do.end
  %70 = load i8*, i8** %newptr, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %incdec.ptr121, i8** %newptr, align 8, !tbaa !1
  store i8 0, i8* %incdec.ptr121, align 1, !tbaa !12
  %71 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %action.addr, align 8, !tbaa !1
  %arraydecay122 = getelementptr inbounds [4096 x i8], [4096 x i8]* %newpath, i32 0, i32 0
  %call123 = call i32 %71(i8* %arraydecay122, i8* null)
  store i32 %call123, i32* %ret, align 4, !tbaa !13
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.120, %do.end
  %72 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8, !tbaa !1
  %call125 = call i32 @closedir(%struct.__dirstream* %72)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.124, %if.end.49, %if.end.36
  %73 = bitcast [4096 x i8]* %newpath to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %73) #1
  %74 = bitcast %struct.dirent** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i8** %newptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32* %removedone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %leftone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.181 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.180

if.else:                                          ; preds = %if.end.20
  %st_mode131 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %79 = load i32, i32* %st_mode131, align 4, !tbaa !51
  %and132 = and i32 %79, 61440
  %cmp133 = icmp eq i32 %and132, 32768
  br i1 %cmp133, label %if.then.135, label %if.end.179

if.then.135:                                      ; preds = %if.else
  %80 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %82 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call136 = call i64 @strlen(i8* %82) #9
  %add.ptr137 = getelementptr inbounds i8, i8* %81, i64 %call136
  %add.ptr138 = getelementptr inbounds i8, i8* %add.ptr137, i64 -1
  store i8* %add.ptr138, i8** %end, align 8, !tbaa !1
  %83 = bitcast i8** %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  %84 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = bitcast [64 x i8]* %host to i8*
  call void @llvm.lifetime.start(i64 64, i8* %85) #1
  %86 = bitcast i8** %hostptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %arraydecay139 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  store i8* %arraydecay139, i8** %hostptr, align 8, !tbaa !1
  br label %do.body.140

do.body.140:                                      ; preds = %land.end.175, %if.then.135
  %87 = load i8*, i8** %hostptr, align 8, !tbaa !1
  %arraydecay141 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %cmp142 = icmp ne i8* %87, %arraydecay141
  br i1 %cmp142, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %do.body.140
  %88 = load i8*, i8** %hostptr, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr145, i8** %hostptr, align 8, !tbaa !1
  store i8 46, i8* %88, align 1, !tbaa !12
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.144, %do.body.140
  %89 = load i8*, i8** %end, align 8, !tbaa !1
  store i8* %89, i8** %start, align 8, !tbaa !1
  br label %while.cond.147

while.cond.147:                                   ; preds = %while.body.154, %if.end.146
  %90 = load i8*, i8** %start, align 8, !tbaa !1
  %91 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %cmp148 = icmp ugt i8* %90, %91
  br i1 %cmp148, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.147
  %92 = load i8*, i8** %start, align 8, !tbaa !1
  %add.ptr150 = getelementptr inbounds i8, i8* %92, i64 -1
  %93 = load i8, i8* %add.ptr150, align 1, !tbaa !12
  %conv151 = sext i8 %93 to i32
  %cmp152 = icmp ne i32 %conv151, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.147
  %94 = phi i1 [ false, %while.cond.147 ], [ %cmp152, %land.rhs ]
  br i1 %94, label %while.body.154, label %while.end.156

while.body.154:                                   ; preds = %land.end
  %95 = load i8*, i8** %start, align 8, !tbaa !1
  %incdec.ptr155 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %incdec.ptr155, i8** %start, align 8, !tbaa !1
  br label %while.cond.147

while.end.156:                                    ; preds = %land.end
  %96 = load i8*, i8** %end, align 8, !tbaa !1
  %97 = load i8, i8* %96, align 1, !tbaa !12
  %conv157 = sext i8 %97 to i32
  %cmp158 = icmp eq i32 %conv157, 46
  br i1 %cmp158, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %while.end.156
  %98 = load i8*, i8** %end, align 8, !tbaa !1
  %incdec.ptr161 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %incdec.ptr161, i8** %end, align 8, !tbaa !1
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %while.end.156
  %99 = load i8*, i8** %start, align 8, !tbaa !1
  store i8* %99, i8** %scan, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.162
  %100 = load i8*, i8** %scan, align 8, !tbaa !1
  %101 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp163 = icmp ule i8* %100, %101
  br i1 %cmp163, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %102 = load i8*, i8** %scan, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !12
  %104 = load i8*, i8** %hostptr, align 8, !tbaa !1
  %incdec.ptr165 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr165, i8** %hostptr, align 8, !tbaa !1
  store i8 %103, i8* %104, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %105 = load i8*, i8** %scan, align 8, !tbaa !1
  %incdec.ptr166 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr166, i8** %scan, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %106 = load i8*, i8** %start, align 8, !tbaa !1
  %add.ptr167 = getelementptr inbounds i8, i8* %106, i64 -2
  store i8* %add.ptr167, i8** %end, align 8, !tbaa !1
  br label %do.cond.168

do.cond.168:                                      ; preds = %for.end
  %107 = load i8*, i8** %end, align 8, !tbaa !1
  %108 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %cmp169 = icmp ugt i8* %107, %108
  br i1 %cmp169, label %land.rhs.171, label %land.end.175

land.rhs.171:                                     ; preds = %do.cond.168
  %109 = load i8*, i8** %end, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !12
  %conv172 = sext i8 %110 to i32
  %cmp173 = icmp eq i32 %conv172, 46
  br label %land.end.175

land.end.175:                                     ; preds = %land.rhs.171, %do.cond.168
  %111 = phi i1 [ false, %do.cond.168 ], [ %cmp173, %land.rhs.171 ]
  br i1 %111, label %do.body.140, label %do.end.176

do.end.176:                                       ; preds = %land.end.175
  %112 = load i8*, i8** %hostptr, align 8, !tbaa !1
  store i8 0, i8* %112, align 1, !tbaa !12
  %113 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %action.addr, align 8, !tbaa !1
  %114 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %arraydecay177 = getelementptr inbounds [64 x i8], [64 x i8]* %host, i32 0, i32 0
  %call178 = call i32 %113(i8* %114, i8* %arraydecay177)
  store i32 %call178, i32* %ret, align 4, !tbaa !13
  %115 = bitcast i8** %hostptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast [64 x i8]* %host to i8*
  call void @llvm.lifetime.end(i64 64, i8* %116) #1
  %117 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i8** %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  br label %if.end.179

if.end.179:                                       ; preds = %do.end.176, %if.else
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %cleanup.cont
  %120 = load i32, i32* %ret, align 4, !tbaa !13
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.181

cleanup.181:                                      ; preds = %if.end.180, %cleanup, %if.end.19, %if.then.2
  %121 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast %struct.__dirstream** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast %struct.stat* %statbuf to i8*
  call void @llvm.lifetime.end(i64 144, i8* %123) #1
  %124 = load i32, i32* %retval
  ret i32 %124
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @stat(i8* nonnull %__path, %struct.stat* nonnull %__statbuf) #6 {
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

declare i8* @sm_errstring(i32) #2

declare %struct.__dirstream* @opendir(i8*) #2

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

declare i32 @closedir(%struct.__dirstream*) #2

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

declare void @stop_sendmail() #2

; Function Attrs: nounwind uwtable
define i32 @mci_purge_persistent(i8* %pathname, i8* %hostname) #0 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %hostname.addr = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %end = alloca i8*, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %pathname, i8** %pathname.addr, align 8, !tbaa !1
  store i8* %hostname, i8** %hostname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stat* %statbuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %1 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %3) #9
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %end, align 8, !tbaa !1
  %4 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.51, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call3 = call i32 @stat(i8* %8, %struct.stat* %statbuf) #1
  store i32 %call3, i32* %ret, align 4, !tbaa !13
  %9 = load i32, i32* %ret, align 4, !tbaa !13
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.end
  %10 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv7 = zext i8 %10 to i32
  %cmp8 = icmp sge i32 %conv7, 2
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.15

land.lhs.true.10:                                 ; preds = %if.then.6
  %11 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.10
  %12 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call13 = call i32* @__errno_location() #8
  %13 = load i32, i32* %call13, align 4, !tbaa !13
  %call14 = call i8* @sm_errstring(i32 %13)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.52, i32 0, i32 0), i8* %12, i8* %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %land.lhs.true.10, %if.then.6
  %14 = load i32, i32* %ret, align 4, !tbaa !13
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end
  %call17 = call i64 @curtime()
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %15 = load i64, i64* %tv_sec, align 8, !tbaa !54
  %sub = sub nsw i64 %call17, %15
  %16 = load i64, i64* @MciInfoTimeout, align 8, !tbaa !19
  %cmp18 = icmp sle i64 %sub, %16
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.16
  %17 = load i8*, i8** %hostname.addr, align 8, !tbaa !1
  %cmp22 = icmp ne i8* %17, null
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.21
  %18 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call25 = call i32 @unlink(i8* %18) #1
  store i32 %call25, i32* %ret, align 4, !tbaa !13
  %19 = load i32, i32* %ret, align 4, !tbaa !13
  %cmp26 = icmp slt i32 %19, 0
  br i1 %cmp26, label %if.then.28, label %if.end.44

if.then.28:                                       ; preds = %if.then.24
  %20 = load i32, i32* @LogLevel, align 4, !tbaa !13
  %cmp29 = icmp sgt i32 %20, 8
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.then.28
  %21 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call32 = call i32* @__errno_location() #8
  %22 = load i32, i32* %call32, align 4, !tbaa !13
  %call33 = call i8* @sm_errstring(i32 %22)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.53, i32 0, i32 0), i8* %21, i8* %call33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.then.28
  %23 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv35 = zext i8 %23 to i32
  %cmp36 = icmp sge i32 %conv35, 2
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.43

land.lhs.true.38:                                 ; preds = %if.end.34
  %24 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool39 = icmp ne i32 %24, 0
  br i1 %tobool39, label %if.end.43, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.38
  %25 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call41 = call i32* @__errno_location() #8
  %26 = load i32, i32* %call41, align 4, !tbaa !13
  %call42 = call i8* @sm_errstring(i32 %26)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i32 0, i32 0), i8* %25, i8* %call42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %land.lhs.true.38, %if.end.34
  %27 = load i32, i32* %ret, align 4, !tbaa !13
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.then.24
  br label %if.end.71

if.else:                                          ; preds = %if.end.21
  %28 = load i8*, i8** %end, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !12
  %conv45 = sext i8 %29 to i32
  %cmp46 = icmp ne i32 %conv45, 46
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.else
  %30 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv50 = zext i8 %30 to i32
  %cmp51 = icmp sge i32 %conv50, 1
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.56

land.lhs.true.53:                                 ; preds = %if.end.49
  %31 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool54 = icmp ne i32 %31, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  %32 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0), i8* %32)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.53, %if.end.49
  %33 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call57 = call i32 @rmdir(i8* %33) #1
  store i32 %call57, i32* %ret, align 4, !tbaa !13
  %34 = load i32, i32* %ret, align 4, !tbaa !13
  %cmp58 = icmp slt i32 %34, 0
  br i1 %cmp58, label %if.then.60, label %if.end.70

if.then.60:                                       ; preds = %if.end.56
  %35 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv61 = zext i8 %35 to i32
  %cmp62 = icmp sge i32 %conv61, 2
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.69

land.lhs.true.64:                                 ; preds = %if.then.60
  %36 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool65 = icmp ne i32 %36, 0
  br i1 %tobool65, label %if.end.69, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.64
  %37 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call67 = call i32* @__errno_location() #8
  %38 = load i32, i32* %call67, align 4, !tbaa !13
  %call68 = call i8* @sm_errstring(i32 %38)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i32 0, i32 0), i8* %37, i8* %call68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %land.lhs.true.64, %if.then.60
  %39 = load i32, i32* %ret, align 4, !tbaa !13
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %if.end.56
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.71, %if.end.69, %if.then.48, %if.end.43, %if.then.20, %if.end.15
  %40 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.stat* %statbuf to i8*
  call void @llvm.lifetime.end(i64 144, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind
declare void @rewinddir(%struct.__dirstream*) #3

; Function Attrs: nounwind uwtable
define i32 @mci_print_persistent(i8* %pathname, i8* %hostname) #0 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %hostname.addr = alloca i8*, align 8
  %fp = alloca %struct.sm_file*, align 8
  %width = alloca i32, align 4
  %locked = alloca i32, align 4
  %mcib = alloca %struct.mailer_con_info, align 8
  %cleanup.dest.slot = alloca i32
  %exmsg = alloca i8*, align 8
  %buf = alloca [80 x i8], align 16
  store i8* %pathname, i8** %pathname.addr, align 8, !tbaa !1
  store i8* %hostname, i8** %hostname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.sm_file** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* @Verbose, align 4, !tbaa !13
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 78, i32 25
  store i32 %cond, i32* %width, align 4, !tbaa !13
  %3 = bitcast i32* %locked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.mailer_con_info* %mcib to i8*
  call void @llvm.lifetime.start(i64 2256, i8* %4) #1
  %5 = load i8*, i8** %hostname.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load volatile i32, i32* @StopRequest, align 4, !tbaa !13
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @stop_sendmail()
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load i32, i32* @mci_print_persistent.initflag, align 4, !tbaa !13
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* @mci_print_persistent.initflag, align 4, !tbaa !13
  %call = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %8 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %9 = load i32, i32* @FileMode, align 4, !tbaa !13
  %call7 = call %struct.sm_file* @safefopen(i8* %8, i32 0, i32 %9, i64 25474)
  store %struct.sm_file* %call7, %struct.sm_file** %fp, align 8, !tbaa !1
  %10 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.sm_file* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.end.6
  %11 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %11 to i32
  %cmp10 = icmp sge i32 %conv, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.9
  %12 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool12 = icmp ne i32 %12, 0
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true
  %13 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call14 = call i32* @__errno_location() #8
  %14 = load i32, i32* %call14, align 4, !tbaa !13
  %call15 = call i8* @sm_errstring(i32 %14)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0), i8* %13, i8* %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %land.lhs.true, %if.then.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.6
  %15 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  store i8* %15, i8** @FileName, align 8, !tbaa !1
  %16 = bitcast %struct.mailer_con_info* %mcib to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 2256, i32 8, i1 false)
  %17 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call18 = call i32 @mci_read_persistent(%struct.sm_file* %17, %struct.mailer_con_info* %mcib)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.17
  %18 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0), i8* %18)
  %19 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call22 = call i32 @sm_io_close(%struct.sm_file* %19, i32 -2)
  store i8* null, i8** @FileName, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.17
  %20 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call24 = call i32 @sm_io_getinfo(%struct.sm_file* %20, i32 3, i8* null)
  %21 = load i8*, i8** %pathname.addr, align 8, !tbaa !1
  %call25 = call i32 @lockfile(i32 %call24, i8* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i32 0, i32 0), i32 5)
  %tobool26 = icmp ne i32 %call25, 0
  %lnot = xor i1 %tobool26, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %locked, align 4, !tbaa !13
  %22 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !1
  %call27 = call i32 @sm_io_close(%struct.sm_file* %22, i32 -2)
  store i8* null, i8** @FileName, align 8, !tbaa !1
  %23 = load i32, i32* %locked, align 4, !tbaa !13
  %tobool28 = icmp ne i32 %23, 0
  %cond29 = select i1 %tobool28, i32 42, i32 32
  %24 = load i8*, i8** %hostname.addr, align 8, !tbaa !1
  %call30 = call i64 @curtime()
  %mci_lastuse = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 15
  %25 = load i64, i64* %mci_lastuse, align 8, !tbaa !21
  %sub = sub nsw i64 %call30, %25
  %call31 = call i8* @pintvl(i64 %sub, i32 1)
  %call32 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i32 %cond29, i8* %24, i8* %call31)
  %mci_rstatus = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 14
  %26 = load i8*, i8** %mci_rstatus, align 8, !tbaa !34
  %cmp33 = icmp ne i8* %26, null
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.23
  %27 = load i32, i32* %width, align 4, !tbaa !13
  %mci_rstatus36 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 14
  %28 = load i8*, i8** %mci_rstatus36, align 8, !tbaa !34
  %call37 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %27, i8* %28)
  br label %if.end.87

if.else:                                          ; preds = %if.end.23
  %mci_exitstat = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 3
  %29 = load i16, i16* %mci_exitstat, align 2, !tbaa !28
  %conv38 = sext i16 %29 to i32
  %cmp39 = icmp eq i32 %conv38, 75
  br i1 %cmp39, label %land.lhs.true.41, label %if.else.51

land.lhs.true.41:                                 ; preds = %if.else
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 1
  %30 = load i16, i16* %mci_errno, align 2, !tbaa !29
  %conv42 = sext i16 %30 to i32
  %cmp43 = icmp ne i32 %conv42, 0
  br i1 %cmp43, label %if.then.45, label %if.else.51

if.then.45:                                       ; preds = %land.lhs.true.41
  %31 = load i32, i32* %width, align 4, !tbaa !13
  %sub46 = sub nsw i32 %31, 10
  %mci_errno47 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 1
  %32 = load i16, i16* %mci_errno47, align 2, !tbaa !29
  %conv48 = sext i16 %32 to i32
  %call49 = call i8* @sm_errstring(i32 %conv48)
  %call50 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i32 %sub46, i8* %call49)
  br label %if.end.86

if.else.51:                                       ; preds = %land.lhs.true.41, %if.else
  %mci_exitstat52 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 3
  %33 = load i16, i16* %mci_exitstat52, align 2, !tbaa !28
  %conv53 = sext i16 %33 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.else.71

if.then.56:                                       ; preds = %if.else.51
  %34 = bitcast i8** %exmsg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %mci_exitstat57 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 3
  %35 = load i16, i16* %mci_exitstat57, align 2, !tbaa !28
  %conv58 = sext i16 %35 to i32
  %call59 = call i8* @sm_sysexmsg(i32 %conv58)
  store i8* %call59, i8** %exmsg, align 8, !tbaa !1
  %36 = load i8*, i8** %exmsg, align 8, !tbaa !1
  %cmp60 = icmp eq i8* %36, null
  br i1 %cmp60, label %if.then.62, label %if.else.68

if.then.62:                                       ; preds = %if.then.56
  %37 = bitcast [80 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 80, i8* %37) #1
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %mci_exitstat63 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 3
  %38 = load i16, i16* %mci_exitstat63, align 2, !tbaa !28
  %conv64 = sext i16 %38 to i32
  %call65 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0), i32 %conv64)
  %39 = load i32, i32* %width, align 4, !tbaa !13
  %arraydecay66 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call67 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %39, i8* %arraydecay66)
  %40 = bitcast [80 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 80, i8* %40) #1
  br label %if.end.70

if.else.68:                                       ; preds = %if.then.56
  %41 = load i32, i32* %width, align 4, !tbaa !13
  %42 = load i8*, i8** %exmsg, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 5
  %call69 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %41, i8* %arrayidx)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.62
  %43 = bitcast i8** %exmsg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %if.end.85

if.else.71:                                       ; preds = %if.else.51
  %mci_errno72 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 1
  %44 = load i16, i16* %mci_errno72, align 2, !tbaa !29
  %conv73 = sext i16 %44 to i32
  %cmp74 = icmp eq i32 %conv73, 0
  br i1 %cmp74, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %if.else.71
  %call77 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.84

if.else.78:                                       ; preds = %if.else.71
  %45 = load i32, i32* %width, align 4, !tbaa !13
  %sub79 = sub nsw i32 %45, 4
  %mci_errno80 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %mcib, i32 0, i32 1
  %46 = load i16, i16* %mci_errno80, align 2, !tbaa !29
  %conv81 = sext i16 %46 to i32
  %call82 = call i8* @sm_errstring(i32 %conv81)
  %call83 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 %sub79, i8* %call82)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.78, %if.then.76
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.70
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.45
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.87, %if.then.21, %if.end.16, %if.then
  %47 = bitcast %struct.mailer_con_info* %mcib to i8*
  call void @llvm.lifetime.end(i64 2256, i8* %47) #1
  %48 = bitcast i32* %locked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.sm_file** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare %struct.sm_file* @safefopen(i8*, i32, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @mci_read_persistent(%struct.sm_file* %fp, %struct.mailer_con_info* %mci) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct.sm_file*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %ver = alloca i32, align 4
  %p = alloca i8*, align 8
  %saveLineNumber = alloca i32, align 4
  %buf = alloca [2048 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.sm_file* %fp, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ver to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %saveLineNumber to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* @LineNumber, align 4, !tbaa !13
  store i32 %3, i32* %saveLineNumber, align 4, !tbaa !13
  %4 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %4) #1
  %5 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.sm_file* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.93, i32 0, i32 0))
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.mailer_con_info* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0))
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %7 to i32
  %cmp4 = icmp sge i32 %conv, 93
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end.3
  %8 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %10 = ptrtoint %struct.sm_file* %9 to i64
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.95, i32 0, i32 0), i64 %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %land.lhs.true, %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %11 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %11, i32 0, i32 13
  %12 = load i8*, i8** %mci_status, align 8, !tbaa !33
  %cmp8 = icmp ne i8* %12, null
  br i1 %cmp8, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %do.body
  %13 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status11 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %13, i32 0, i32 13
  %14 = load i8*, i8** %mci_status11, align 8, !tbaa !33
  call void @sm_free_tagged(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 970)
  %15 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status12 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %15, i32 0, i32 13
  store i8* null, i8** %mci_status12, align 8, !tbaa !33
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %16 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %16, i32 0, i32 14
  %17 = load i8*, i8** %mci_rstatus, align 8, !tbaa !34
  %cmp15 = icmp ne i8* %17, null
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.body.14
  %18 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus18 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %18, i32 0, i32 14
  %19 = load i8*, i8** %mci_rstatus18, align 8, !tbaa !34
  call void @sm_free_tagged(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 971)
  %20 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus19 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %20, i32 0, i32 14
  store i8* null, i8** %mci_rstatus19, align 8, !tbaa !34
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.body.14
  br label %do.cond.21

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %21 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  call void @sm_io_rewind(%struct.sm_file* %21, i32 -2)
  store i32 -1, i32* %ver, align 4, !tbaa !13
  store i32 0, i32* @LineNumber, align 4, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %do.end.22
  %22 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call = call i32 @sm_io_fgets(%struct.sm_file* %22, i32 -2, i8* %arraydecay, i32 2048)
  %cmp23 = icmp sge i32 %call, 0
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* @LineNumber, align 4, !tbaa !13
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* @LineNumber, align 4, !tbaa !13
  %arraydecay25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call26 = call i8* @strchr(i8* %arraydecay25, i32 10) #1
  store i8* %call26, i8** %p, align 8, !tbaa !1
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp27 = icmp ne i8* %24, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.body
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %25, align 1, !tbaa !12
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %while.body
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 0
  %26 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv31 = sext i8 %26 to i32
  switch i32 %conv31, label %sw.default [
    i32 86, label %sw.bb
    i32 69, label %sw.bb.40
    i32 72, label %sw.bb.44
    i32 83, label %sw.bb.48
    i32 68, label %sw.bb.52
    i32 82, label %sw.bb.56
    i32 85, label %sw.bb.60
    i32 46, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end.30
  %arrayidx32 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 1
  %call33 = call i32 @atoi(i8* %arrayidx32) #9
  store i32 %call33, i32* %ver, align 4, !tbaa !13
  %27 = load i32, i32* %ver, align 4, !tbaa !13
  %cmp34 = icmp slt i32 %27, 0
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %28 = load i32, i32* %ver, align 4, !tbaa !13
  %cmp36 = icmp sgt i32 %28, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %sw.bb
  %29 = load i32, i32* %ver, align 4, !tbaa !13
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.96, i32 0, i32 0), i32 %29, i32 0)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %lor.lhs.false
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.30
  %arrayidx41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 1
  %call42 = call i32 @atoi(i8* %arrayidx41) #9
  %conv43 = trunc i32 %call42 to i16
  %30 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_errno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %30, i32 0, i32 1
  store i16 %conv43, i16* %mci_errno, align 2, !tbaa !29
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.30
  %arrayidx45 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 1
  %call46 = call i32 @atoi(i8* %arrayidx45) #9
  %conv47 = trunc i32 %call46 to i16
  %31 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_herrno = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %31, i32 0, i32 2
  store i16 %conv47, i16* %mci_herrno, align 2, !tbaa !48
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.30
  %arrayidx49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 1
  %call50 = call i32 @atoi(i8* %arrayidx49) #9
  %conv51 = trunc i32 %call50 to i16
  %32 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_exitstat = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %32, i32 0, i32 3
  store i16 %conv51, i16* %mci_exitstat, align 2, !tbaa !28
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.30
  %arrayidx53 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 1
  %call54 = call i8* @newstr(i8* %arrayidx53)
  %33 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_status55 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %33, i32 0, i32 13
  store i8* %call54, i8** %mci_status55, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end.30
  %arrayidx57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 1
  %call58 = call i8* @newstr(i8* %arrayidx57)
  %34 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_rstatus59 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %34, i32 0, i32 14
  store i8* %call58, i8** %mci_rstatus59, align 8, !tbaa !34
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.30
  %arrayidx61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 1
  %call62 = call i64 @atol(i8* %arrayidx61) #9
  %35 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_lastuse = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %35, i32 0, i32 15
  store i64 %call62, i64* %mci_lastuse, align 8, !tbaa !21
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.30
  %36 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv64 = zext i8 %36 to i32
  %cmp65 = icmp sge i32 %conv64, 93
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.71

land.lhs.true.67:                                 ; preds = %sw.bb.63
  %37 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool68 = icmp ne i32 %37, 0
  br i1 %tobool68, label %if.end.71, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true.67
  %call70 = call %struct.sm_file* @sm_debug_file()
  %38 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_dump(%struct.sm_file* %call70, %struct.mailer_con_info* %38, i32 0)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %land.lhs.true.67, %sw.bb.63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end.30
  %39 = load i8*, i8** @FileName, align 8, !tbaa !1
  %cmp72 = icmp eq i8* %39, null
  br i1 %cmp72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  %40 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_host = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %40, i32 0, i32 12
  %41 = load i8*, i8** %mci_host, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  %42 = load i8*, i8** @FileName, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %41, %cond.true ], [ %42, %cond.false ]
  %43 = load i32, i32* @LineNumber, align 4, !tbaa !13
  %arraydecay74 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.97, i32 0, i32 0), i8* %cond, i32 %43, i8* %arraydecay74)
  %44 = load i32, i32* %saveLineNumber, align 4, !tbaa !13
  store i32 %44, i32* @LineNumber, align 4, !tbaa !13
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.60, %sw.bb.56, %sw.bb.52, %sw.bb.48, %sw.bb.44, %sw.bb.40, %if.end.39
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load i32, i32* %saveLineNumber, align 4, !tbaa !13
  store i32 %45, i32* @LineNumber, align 4, !tbaa !13
  %46 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv75 = zext i8 %46 to i32
  %cmp76 = icmp sge i32 %conv75, 93
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.81

land.lhs.true.78:                                 ; preds = %while.end
  %47 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool79 = icmp ne i32 %47, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.78
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %land.lhs.true.78, %while.end
  %48 = load i32, i32* %ver, align 4, !tbaa !13
  %cmp82 = icmp slt i32 %48, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.end.81
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.85, %if.then.84, %cond.end, %if.end.71, %if.then.2, %if.then
  %49 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %49) #1
  %50 = bitcast i32* %saveLineNumber to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %ver to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @lockfile(i32, i8*, i8*, i32) #2

declare i8* @pintvl(i64, i32) #2

declare i8* @sm_sysexmsg(i32) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #3

declare void @message(i8*, ...) #2

declare void @smtpquit(%struct.mailer*, %struct.mailer_con_info*, %struct.envelope*) #2

declare void @sm_rpool_free(%struct.SM_RPOOL_T*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mci_generate_persistent_path(i8* %host, i8* %path, i32 %pathlen, i32 %createflag) #0 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %pathlen.addr = alloca i32, align 4
  %createflag.addr = alloca i32, align 4
  %elem = alloca i8*, align 8
  %p = alloca i8*, align 8
  %x = alloca i8*, align 8
  %ch = alloca i8, align 1
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %t_host = alloca [64 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %good = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  store i8* %path, i8** %path.addr, align 8, !tbaa !1
  store i32 %pathlen, i32* %pathlen.addr, align 4, !tbaa !13
  store i32 %createflag, i32* %createflag.addr, align 4, !tbaa !13
  %0 = bitcast i8** %elem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %3 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %ret, align 4, !tbaa !13
  %4 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [64 x i8]* %t_host to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #1
  %6 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.84, i32 0, i32 0))
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.85, i32 0, i32 0))
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.3:                                         ; preds = %if.end
  %8 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv = zext i8 %8 to i32
  %cmp4 = icmp sge i32 %conv, 80
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end.3
  %9 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %host.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i32 0, i32 0), i8* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %land.lhs.true, %if.end.3
  %11 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !12
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %13 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !12
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 46
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.7
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.15:                                        ; preds = %lor.lhs.false
  %15 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %15) #9
  %cmp16 = icmp ugt i64 %call, 63
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.19:                                        ; preds = %if.end.15
  %16 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp eq i32 %conv20, 91
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.19
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %t_host, i32 0, i32 0
  %18 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %call24 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %add.ptr, i64 64)
  br label %if.end.27

if.else:                                          ; preds = %if.end.19
  %arraydecay25 = getelementptr inbounds [64 x i8], [64 x i8]* %t_host, i32 0, i32 0
  %19 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call26 = call i64 @sm_strlcpy(i8* %arraydecay25, i8* %19, i64 64)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.23
  %arraydecay28 = getelementptr inbounds [64 x i8], [64 x i8]* %t_host, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [64 x i8], [64 x i8]* %t_host, i32 0, i32 0
  %call30 = call i64 @strlen(i8* %arraydecay29) #9
  %add.ptr31 = getelementptr inbounds i8, i8* %arraydecay28, i64 %call30
  store i8* %add.ptr31, i8** %elem, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.27
  %20 = load i8*, i8** %elem, align 8, !tbaa !1
  %arraydecay32 = getelementptr inbounds [64 x i8], [64 x i8]* %t_host, i32 0, i32 0
  %cmp33 = icmp ugt i8* %20, %arraydecay32
  br i1 %cmp33, label %land.rhs, label %land.end.48

land.rhs:                                         ; preds = %while.cond
  %21 = load i8*, i8** %elem, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %21, i64 -1
  %22 = load i8, i8* %arrayidx35, align 1, !tbaa !12
  %conv36 = sext i8 %22 to i32
  %cmp37 = icmp eq i32 %conv36, 46
  br i1 %cmp37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %23 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx39, align 1, !tbaa !12
  %conv40 = sext i8 %24 to i32
  %cmp41 = icmp eq i32 %conv40, 91
  br i1 %cmp41, label %land.rhs.43, label %land.end

land.rhs.43:                                      ; preds = %lor.rhs
  %25 = load i8*, i8** %elem, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %25, i64 -1
  %26 = load i8, i8* %arrayidx44, align 1, !tbaa !12
  %conv45 = sext i8 %26 to i32
  %cmp46 = icmp eq i32 %conv45, 93
  br label %land.end

land.end:                                         ; preds = %land.rhs.43, %lor.rhs
  %27 = phi i1 [ false, %lor.rhs ], [ %cmp46, %land.rhs.43 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %28 = phi i1 [ true, %land.rhs ], [ %27, %land.end ]
  br label %land.end.48

land.end.48:                                      ; preds = %lor.end, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %28, %lor.end ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.48
  %30 = load i8*, i8** %elem, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr, i8** %elem, align 8, !tbaa !1
  store i8 0, i8* %incdec.ptr, align 1, !tbaa !12
  br label %while.cond

while.end:                                        ; preds = %land.end.48
  %31 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx49, align 1, !tbaa !12
  %conv50 = sext i8 %32 to i32
  %cmp51 = icmp eq i32 %conv50, 91
  br i1 %cmp51, label %if.then.53, label %if.end.63

if.then.53:                                       ; preds = %while.end
  %33 = bitcast i32* %good to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 0, i32* %good, align 4, !tbaa !13
  %arraydecay54 = getelementptr inbounds [64 x i8], [64 x i8]* %t_host, i32 0, i32 0
  %call55 = call i32 @inet_addr(i8* %arraydecay54) #1
  %cmp56 = icmp ne i32 %call55, -1
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.53
  store i32 1, i32* %good, align 4, !tbaa !13
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.then.53
  %34 = load i32, i32* %good, align 4, !tbaa !13
  %tobool60 = icmp ne i32 %34, 0
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.end.59
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.end.59
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.62, %if.then.61
  %35 = bitcast i32* %good to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.177 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.63

if.end.63:                                        ; preds = %cleanup.cont, %while.end
  %36 = load i8*, i8** @HostStatDir, align 8, !tbaa !1
  %call64 = call i64 @strlen(i8* %36) #9
  %add = add i64 %call64, 2
  %conv65 = trunc i64 %add to i32
  store i32 %conv65, i32* %len, align 4, !tbaa !13
  %arraydecay66 = getelementptr inbounds [64 x i8], [64 x i8]* %t_host, i32 0, i32 0
  store i8* %arraydecay66, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.63
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !12
  %conv67 = sext i8 %38 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !12
  %conv70 = sext i8 %40 to i32
  %cmp71 = icmp eq i32 %conv70, 46
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %for.body
  %41 = load i32, i32* %len, align 4, !tbaa !13
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %len, align 4, !tbaa !13
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %for.body
  %42 = load i32, i32* %len, align 4, !tbaa !13
  %inc75 = add nsw i32 %42, 1
  store i32 %inc75, i32* %len, align 4, !tbaa !13
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx76, align 1, !tbaa !12
  %conv77 = sext i8 %44 to i32
  %cmp78 = icmp eq i32 %conv77, 46
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.86

land.lhs.true.80:                                 ; preds = %if.end.74
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx81, align 1, !tbaa !12
  %conv82 = sext i8 %46 to i32
  %cmp83 = icmp eq i32 %conv82, 46
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true.80
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.86:                                        ; preds = %land.lhs.true.80, %if.end.74
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr87 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr87, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i32, i32* %len, align 4, !tbaa !13
  %49 = load i32, i32* %pathlen.addr, align 4, !tbaa !13
  %cmp88 = icmp sgt i32 %48, %49
  br i1 %cmp88, label %if.then.93, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %for.end
  %50 = load i32, i32* %len, align 4, !tbaa !13
  %cmp91 = icmp slt i32 %50, 1
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %lor.lhs.false.90, %for.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.94:                                        ; preds = %lor.lhs.false.90
  %51 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %52 = load i8*, i8** @HostStatDir, align 8, !tbaa !1
  %53 = load i32, i32* %pathlen.addr, align 4, !tbaa !13
  %conv95 = sext i32 %53 to i64
  %call96 = call i64 @sm_strlcpy(i8* %51, i8* %52, i64 %conv95)
  %54 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %call97 = call i64 @strlen(i8* %55) #9
  %add.ptr98 = getelementptr inbounds i8, i8* %54, i64 %call97
  store i8* %add.ptr98, i8** %p, align 8, !tbaa !1
  br label %while.cond.99

while.cond.99:                                    ; preds = %if.end.163, %if.end.94
  %56 = load i8*, i8** %elem, align 8, !tbaa !1
  %arraydecay100 = getelementptr inbounds [64 x i8], [64 x i8]* %t_host, i32 0, i32 0
  %cmp101 = icmp ugt i8* %56, %arraydecay100
  br i1 %cmp101, label %while.body.103, label %while.end.164

while.body.103:                                   ; preds = %while.cond.99
  %57 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %58 = load i32, i32* %createflag.addr, align 4, !tbaa !13
  %call104 = call i32 @path_is_dir(i8* %57, i32 %58)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %while.body.103
  store i32 -1, i32* %ret, align 4, !tbaa !13
  br label %while.end.164

if.end.107:                                       ; preds = %while.body.103
  %59 = load i8*, i8** %elem, align 8, !tbaa !1
  %incdec.ptr108 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %incdec.ptr108, i8** %elem, align 8, !tbaa !1
  br label %while.cond.109

while.cond.109:                                   ; preds = %while.body.118, %if.end.107
  %60 = load i8*, i8** %elem, align 8, !tbaa !1
  %arraydecay110 = getelementptr inbounds [64 x i8], [64 x i8]* %t_host, i32 0, i32 0
  %cmp111 = icmp uge i8* %60, %arraydecay110
  br i1 %cmp111, label %land.rhs.113, label %land.end.117

land.rhs.113:                                     ; preds = %while.cond.109
  %61 = load i8*, i8** %elem, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !12
  %conv114 = sext i8 %62 to i32
  %cmp115 = icmp ne i32 %conv114, 46
  br label %land.end.117

land.end.117:                                     ; preds = %land.rhs.113, %while.cond.109
  %63 = phi i1 [ false, %while.cond.109 ], [ %cmp115, %land.rhs.113 ]
  br i1 %63, label %while.body.118, label %while.end.120

while.body.118:                                   ; preds = %land.end.117
  %64 = load i8*, i8** %elem, align 8, !tbaa !1
  %incdec.ptr119 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %incdec.ptr119, i8** %elem, align 8, !tbaa !1
  br label %while.cond.109

while.end.120:                                    ; preds = %land.end.117
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr121, i8** %p, align 8, !tbaa !1
  store i8 47, i8* %65, align 1, !tbaa !12
  %66 = load i8*, i8** %elem, align 8, !tbaa !1
  %add.ptr122 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %add.ptr122, i8** %x, align 8, !tbaa !1
  br label %while.cond.123

while.cond.123:                                   ; preds = %if.end.155, %while.end.120
  %67 = load i8*, i8** %x, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr124, i8** %x, align 8, !tbaa !1
  %68 = load i8, i8* %67, align 1, !tbaa !12
  store i8 %68, i8* %ch, align 1, !tbaa !12
  %conv125 = sext i8 %68 to i32
  %cmp126 = icmp ne i32 %conv125, 0
  br i1 %cmp126, label %land.rhs.128, label %land.end.132

land.rhs.128:                                     ; preds = %while.cond.123
  %69 = load i8, i8* %ch, align 1, !tbaa !12
  %conv129 = sext i8 %69 to i32
  %cmp130 = icmp ne i32 %conv129, 46
  br label %land.end.132

land.end.132:                                     ; preds = %land.rhs.128, %while.cond.123
  %70 = phi i1 [ false, %while.cond.123 ], [ %cmp130, %land.rhs.128 ]
  br i1 %70, label %while.body.133, label %while.end.157

while.body.133:                                   ; preds = %land.end.132
  %71 = load i8, i8* %ch, align 1, !tbaa !12
  %conv134 = sext i8 %71 to i32
  %and = and i32 %conv134, -128
  %cmp135 = icmp eq i32 %and, 0
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.150

land.lhs.true.137:                                ; preds = %while.body.133
  %72 = load i8, i8* %ch, align 1, !tbaa !12
  %conv138 = sext i8 %72 to i32
  %idxprom = sext i32 %conv138 to i64
  %call139 = call i16** @__ctype_b_loc() #8
  %73 = load i16*, i16** %call139, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i16, i16* %73, i64 %idxprom
  %74 = load i16, i16* %arrayidx140, align 2, !tbaa !55
  %conv141 = zext i16 %74 to i32
  %and142 = and i32 %conv141, 256
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.then.144, label %if.end.150

if.then.144:                                      ; preds = %land.lhs.true.137
  %75 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i8, i8* %ch, align 1, !tbaa !12
  %conv145 = sext i8 %76 to i32
  %idxprom146 = sext i32 %conv145 to i64
  %call147 = call i32** @__ctype_tolower_loc() #8
  %77 = load i32*, i32** %call147, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i32, i32* %77, i64 %idxprom146
  %78 = load i32, i32* %arrayidx148, align 4, !tbaa !13
  store i32 %78, i32* %__res, align 4, !tbaa !13
  %79 = load i32, i32* %__res, align 4, !tbaa !13
  store i32 %79, i32* %tmp, !tbaa !13
  %80 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = load i32, i32* %tmp, !tbaa !13
  %conv149 = trunc i32 %81 to i8
  store i8 %conv149, i8* %ch, align 1, !tbaa !12
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.144, %land.lhs.true.137, %while.body.133
  %82 = load i8, i8* %ch, align 1, !tbaa !12
  %conv151 = sext i8 %82 to i32
  %cmp152 = icmp eq i32 %conv151, 47
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.150
  store i8 58, i8* %ch, align 1, !tbaa !12
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %if.end.150
  %83 = load i8, i8* %ch, align 1, !tbaa !12
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr156 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr156, i8** %p, align 8, !tbaa !1
  store i8 %83, i8* %84, align 1, !tbaa !12
  br label %while.cond.123

while.end.157:                                    ; preds = %land.end.132
  %85 = load i8*, i8** %elem, align 8, !tbaa !1
  %arraydecay158 = getelementptr inbounds [64 x i8], [64 x i8]* %t_host, i32 0, i32 0
  %cmp159 = icmp uge i8* %85, %arraydecay158
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %while.end.157
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr162 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr162, i8** %p, align 8, !tbaa !1
  store i8 46, i8* %86, align 1, !tbaa !12
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %while.end.157
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %87, align 1, !tbaa !12
  br label %while.cond.99

while.end.164:                                    ; preds = %if.then.106, %while.cond.99
  %88 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 56), align 1, !tbaa !12
  %conv165 = zext i8 %88 to i32
  %cmp166 = icmp sge i32 %conv165, 80
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.176

land.lhs.true.168:                                ; preds = %while.end.164
  %89 = load volatile i32, i32* @IntSig, align 4, !tbaa !13
  %tobool169 = icmp ne i32 %89, 0
  br i1 %tobool169, label %if.end.176, label %if.then.170

if.then.170:                                      ; preds = %land.lhs.true.168
  %90 = load i32, i32* %ret, align 4, !tbaa !13
  %cmp171 = icmp slt i32 %90, 0
  br i1 %cmp171, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %if.then.170
  %91 = load i32, i32* %ret, align 4, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i32 %91)
  br label %if.end.175

if.else.174:                                      ; preds = %if.then.170
  %92 = load i8*, i8** %path.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i8* %92)
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.174, %if.then.173
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %land.lhs.true.168, %while.end.164
  %93 = load i32, i32* %ret, align 4, !tbaa !13
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

cleanup.177:                                      ; preds = %if.end.176, %if.then.93, %if.then.85, %cleanup, %if.then.18, %if.then.14, %if.then.2, %if.then
  %94 = bitcast [64 x i8]* %t_host to i8*
  call void @llvm.lifetime.end(i64 64, i8* %94) #1
  %95 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %97 = bitcast i8** %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i8** %elem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = load i32, i32* %retval
  ret i32 %100
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #3

declare i32 @path_is_dir(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #5

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) #3

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #7 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #1
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i8* @newstr(i8*) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i64 @atol(i8* nonnull %__nptr) #7 {
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
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 72}
!6 = !{!"mailer_con_info", !7, i64 0, !8, i64 8, !8, i64 10, !8, i64 12, !8, i64 14, !9, i64 16, !7, i64 24, !2, i64 32, !2, i64 40, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !7, i64 96, !2, i64 104, !2, i64 112, !7, i64 120, !9, i64 128, !2, i64 136, !2, i64 144, !9, i64 152, !2, i64 160, !10, i64 168}
!7 = !{!"long", !3, i64 0}
!8 = !{!"short", !3, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!11 = !{!6, !7, i64 0}
!12 = !{!3, !3, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !2, i64 344}
!15 = !{!"envelope", !2, i64 0, !7, i64 8, !7, i64 16, !2, i64 24, !16, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !7, i64 256, !2, i64 264, !7, i64 272, !9, i64 280, !8, i64 284, !8, i64 286, !8, i64 288, !8, i64 290, !8, i64 292, !8, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !9, i64 352, !9, i64 356, !9, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !7, i64 456, !9, i64 464, !7, i64 472, !7, i64 480, !10, i64 488, !2, i64 2576, !2, i64 2584, !17, i64 2592, !7, i64 2624, !9, i64 2632, !2, i64 2640, !9, i64 2648}
!16 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !9, i64 48, !9, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !8, i64 160, !2, i64 168, !9, i64 176, !9, i64 180, !2, i64 184}
!17 = !{!"sm_timers", !18, i64 0}
!18 = !{!"_timer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!19 = !{!7, !7, i64 0}
!20 = !{!6, !8, i64 14}
!21 = !{!6, !7, i64 96}
!22 = !{!6, !2, i64 64}
!23 = !{!24, !9, i64 116}
!24 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !8, i64 72, !8, i64 74, !2, i64 80, !8, i64 88, !8, i64 90, !8, i64 92, !8, i64 94, !2, i64 96, !7, i64 104, !9, i64 112, !9, i64 116, !2, i64 120, !2, i64 128, !9, i64 136, !9, i64 140, !2, i64 144, !7, i64 152, !9, i64 160, !8, i64 164}
!25 = !{!6, !9, i64 16}
!26 = !{!6, !2, i64 32}
!27 = !{!6, !2, i64 40}
!28 = !{!6, !8, i64 12}
!29 = !{!6, !8, i64 8}
!30 = !{!6, !9, i64 128}
!31 = !{!6, !2, i64 136}
!32 = !{!6, !9, i64 152}
!33 = !{!6, !2, i64 80}
!34 = !{!6, !2, i64 88}
!35 = !{!6, !2, i64 112}
!36 = !{!6, !2, i64 144}
!37 = !{!6, !2, i64 168}
!38 = !{!6, !7, i64 24}
!39 = !{!6, !7, i64 120}
!40 = !{!24, !8, i64 72}
!41 = !{!24, !2, i64 0}
!42 = !{!43, !2, i64 0}
!43 = !{!"symtab", !2, i64 0, !8, i64 8, !2, i64 16, !3, i64 24}
!44 = !{!6, !2, i64 104}
!45 = !{!46, !9, i64 0}
!46 = !{!"mcifbits", !9, i64 0, !2, i64 8}
!47 = !{!46, !2, i64 8}
!48 = !{!6, !8, i64 10}
!49 = !{!6, !9, i64 48}
!50 = !{!6, !2, i64 56}
!51 = !{!52, !9, i64 24}
!52 = !{!"stat", !7, i64 0, !7, i64 8, !7, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !53, i64 72, !53, i64 88, !53, i64 104, !3, i64 120}
!53 = !{!"timespec", !7, i64 0, !7, i64 8}
!54 = !{!52, !7, i64 88}
!55 = !{!8, !8, i64 0}
