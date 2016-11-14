; ModuleID = '33.err.bc'
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
%struct.sm_exc_type = type { i8*, i8*, i8*, void (%struct.sm_exc*, %struct.sm_file*)*, i8* }
%struct.sm_exc = type { i8*, i64, %struct.sm_exc_type*, %union.sm_val* }
%union.sm_val = type { i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@fatal_error.buf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"!%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"421\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"4.0.0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"554\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"5.0.0\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"451\00", align 1
@MsgBuf = common global [16384 x i8] zeroinitializer, align 16
@CurEnv = external global %struct.envelope*, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"err.c\00", align 1
@ExitStat = external global i32, align 4
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"syserr: ExitStat = %d\0A\00", align 1
@RealUid = external global i32, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"UID%d\00", align 1
@LogLevel = external global i32, align 4
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"SYSERR(%s): %.900s\00", align 1
@SmIoF = external global [0 x %struct.sm_file], align 8
@QuickAbort = external global i32, align 4
@EtypeQuickAbort = external constant %struct.sm_exc_type, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"2.0.0\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"550\00", align 1
@SuprErrs = external global i32, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"Postmaster warning: %.*s\00", align 1
@LogUsrErrs = external global i32, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"%.900s\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"050\00", align 1
@HeldMessageBuf = internal global [16384 x i8] zeroinitializer, align 16
@HoldErrs = external global i32, align 4
@sm_errstring.buf = internal global [2048 x i8] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"Error %d\00", align 1
@CurHostName = external global i8*, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c" with \00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Connection reset by \00", align 1
@SmtpPhase = external global i8*, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c" during %s\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Host %s is down\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Connection refused by \00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"host not found\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"host name lookup failure\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"non-recoverable error\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"no data known\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Operation not permitted\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Timeout on file open\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Symbolic links not allowed\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Hard links not allowed\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Regular files only\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Executable files not allowed\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"World writable directory\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Group writable directory\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"File changed after open\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"World writable file\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Group writable file\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Group readable file\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"World readable file\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"Name server: \00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"--- %s%s%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c" (hold)\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c" (held)\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"45\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@OpMode = external global i8, align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"--- %s%s%s\00", align 1
@Verbose = external global i32, align 4
@OutChannel = external global %struct.sm_file*, align 8
@DisConnected = external global i32, align 4
@.str.47 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@TrafficLogFile = external global %struct.sm_file*, align 8
@.str.48 = private unnamed_addr constant [13 x i8] c"%05d >>> %s\0A\00", align 1
@CurrentPid = external global i32, align 4
@OnlyOneError = external global i32, align 4
@Errors = external global i32, align 4
@SoftBounce = external global i32, align 4
@.str.49 = private unnamed_addr constant [9 x i8] c"4%2.2s%c\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"%3.3s%c\00", align 1
@FileName = external global i8*, align 8
@.str.51 = private unnamed_addr constant [14 x i8] c"%s: line %d: \00", align 1
@LineNumber = external global i32, align 4
@.str.52 = private unnamed_addr constant [4 x i8] c"250\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"252\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"450\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"553\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"... \00", align 1

; Function Attrs: nounwind uwtable
define void @fatal_error(%struct.sm_exc* %exc) #0 {
entry:
  %exc.addr = alloca %struct.sm_exc*, align 8
  %f = alloca %struct.sm_file, align 8
  store %struct.sm_exc* %exc, %struct.sm_exc** %exc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.sm_file* %f to i8*
  call void @llvm.lifetime.start(i64 224, i8* %0) #1
  call void @sm_strio_init(%struct.sm_file* %f, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fatal_error.buf, i32 0, i32 0), i64 256)
  %1 = load %struct.sm_exc*, %struct.sm_exc** %exc.addr, align 8, !tbaa !1
  call void @sm_exc_write(%struct.sm_exc* %1, %struct.sm_file* %f)
  %call = call i32 @sm_io_flush(%struct.sm_file* %f, i32 -2)
  %call1 = call i32* @__errno_location() #8
  store i32 12, i32* %call1, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fatal_error.buf, i32 0, i32 0))
  %2 = bitcast %struct.sm_file* %f to i8*
  call void @llvm.lifetime.end(i64 224, i8* %2) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @sm_strio_init(%struct.sm_file*, i8*, i64) #2

declare void @sm_exc_write(%struct.sm_exc*, %struct.sm_file*) #2

declare i32 @sm_io_flush(%struct.sm_file*, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind uwtable
define void @syserr(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %save_errno = alloca i32, align 4
  %panic = alloca i32, align 4
  %exiting = alloca i32, align 4
  %keep = alloca i32, align 4
  %user = alloca i8*, align 8
  %enhsc = alloca i8*, align 8
  %errtxt = alloca i8*, align 8
  %pw = alloca %struct.passwd*, align 8
  %ubuf = alloca [80 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %nmsg = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %call = call i32* @__errno_location() #8
  %2 = load i32, i32* %call, align 4, !tbaa !5
  store i32 %2, i32* %save_errno, align 4, !tbaa !5
  %3 = bitcast i32* %panic to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %exiting to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %keep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8** %user to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast [80 x i8]* %ubuf to i8*
  call void @llvm.lifetime.start(i64 80, i8* %10) #1
  %11 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %11) #1
  store i32 0, i32* %keep, align 4, !tbaa !5
  store i32 0, i32* %exiting, align 4, !tbaa !5
  store i32 0, i32* %panic, align 4, !tbaa !5
  %12 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !7
  %conv = sext i8 %13 to i32
  switch i32 %conv, label %sw.default [
    i32 33, label %sw.bb
    i32 64, label %sw.bb.1
    i32 43, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %14 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %fmt.addr, align 8, !tbaa !1
  store i32 1, i32* %exiting, align 4, !tbaa !5
  store i32 1, i32* %panic, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %15 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr2, i8** %fmt.addr, align 8, !tbaa !1
  store i32 1, i32* %exiting, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %16 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr4, i8** %fmt.addr, align 8, !tbaa !1
  store i32 1, i32* %keep, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.1, %sw.bb
  %17 = load i32, i32* %exiting, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %enhsc, align 8, !tbaa !1
  br label %if.end.8

if.else:                                          ; preds = %sw.epilog
  %18 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %enhsc, align 8, !tbaa !1
  br label %if.end

if.else.7:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %enhsc, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay9 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay9)
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %20 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %21 = load i32, i32* %save_errno, align 4, !tbaa !5
  %22 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call11 = call i8* @fmtmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i32 0), i8* null, i8* %19, i8* %20, i32 %21, i8* %22, %struct.__va_list_tag* %arraydecay10)
  store i8* %call11, i8** %errtxt, align 8, !tbaa !1
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1213 = bitcast %struct.__va_list_tag* %arraydecay12 to i8*
  call void @llvm.va_end(i8* %arraydecay1213)
  call void @puterrmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i32 0))
  %23 = load i32, i32* %panic, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %if.end.34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.8
  %24 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %cmp15 = icmp ne %struct.envelope* %24, null
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.34

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %25 = load i32, i32* %keep, align 4, !tbaa !5
  %tobool18 = icmp ne i32 %25, 0
  br i1 %tobool18, label %lor.lhs.false, label %if.then.21

lor.lhs.false:                                    ; preds = %land.lhs.true.17
  %26 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 34
  %27 = load i8*, i8** %e_message, align 8, !tbaa !8
  %cmp19 = icmp eq i8* %27, null
  br i1 %cmp19, label %if.then.21, label %if.end.34

if.then.21:                                       ; preds = %lor.lhs.false, %land.lhs.true.17
  %28 = bitcast i8** %nmsg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 52
  %30 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %31 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %call22 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %30, i8* %31)
  store i8* %call22, i8** %nmsg, align 8, !tbaa !1
  %32 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool23 = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 52
  %33 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool23, align 8, !tbaa !16
  %cmp24 = icmp eq %struct.SM_RPOOL_T* %33, null
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.32

land.lhs.true.26:                                 ; preds = %if.then.21
  %34 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message27 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 34
  %35 = load i8*, i8** %e_message27, align 8, !tbaa !8
  %cmp28 = icmp ne i8* %35, null
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %land.lhs.true.26
  %36 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message31 = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 34
  %37 = load i8*, i8** %e_message31, align 8, !tbaa !8
  call void @sm_free_tagged(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 190)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %land.lhs.true.26, %if.then.21
  %38 = load i8*, i8** %nmsg, align 8, !tbaa !1
  %39 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message33 = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 34
  store i8* %38, i8** %e_message33, align 8, !tbaa !8
  %40 = bitcast i8** %nmsg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.32, %lor.lhs.false, %land.lhs.true, %if.end.8
  %41 = load i32, i32* @ExitStat, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %41, 0
  br i1 %cmp35, label %if.then.37, label %if.end.50

if.then.37:                                       ; preds = %if.end.34
  %42 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %42, 0
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.37
  store i32 70, i32* @ExitStat, align 4, !tbaa !5
  br label %if.end.42

if.else.41:                                       ; preds = %if.then.37
  store i32 71, i32* @ExitStat, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  %43 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 54), align 1, !tbaa !7
  %conv43 = zext i8 %43 to i32
  %cmp44 = icmp sge i32 %conv43, 1
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.49

land.lhs.true.46:                                 ; preds = %if.end.42
  %44 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool47 = icmp ne i32 %44, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.46
  %45 = load i32, i32* @ExitStat, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 %45)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %land.lhs.true.46, %if.end.42
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.34
  %46 = load i32, i32* @RealUid, align 4, !tbaa !5
  %call51 = call %struct.passwd* @sm_getpwuid(i32 %46)
  store %struct.passwd* %call51, %struct.passwd** %pw, align 8, !tbaa !1
  %47 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %cmp52 = icmp ne %struct.passwd* %47, null
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.end.50
  %48 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !1
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %48, i32 0, i32 0
  %49 = load i8*, i8** %pw_name, align 8, !tbaa !17
  store i8* %49, i8** %user, align 8, !tbaa !1
  br label %if.end.59

if.else.55:                                       ; preds = %if.end.50
  %arraydecay56 = getelementptr inbounds [80 x i8], [80 x i8]* %ubuf, i32 0, i32 0
  store i8* %arraydecay56, i8** %user, align 8, !tbaa !1
  %arraydecay57 = getelementptr inbounds [80 x i8], [80 x i8]* %ubuf, i32 0, i32 0
  %50 = load i32, i32* @RealUid, align 4, !tbaa !5
  %call58 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay57, i64 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %50)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.55, %if.then.54
  %51 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp60 = icmp sgt i32 %51, 0
  br i1 %cmp60, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %if.end.59
  %52 = load i32, i32* %panic, align 4, !tbaa !5
  %tobool63 = icmp ne i32 %52, 0
  %cond = select i1 %tobool63, i32 1, i32 2
  %53 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %cmp64 = icmp eq %struct.envelope* %53, null
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.62
  br label %cond.end

cond.false:                                       ; preds = %if.then.62
  %54 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %54, i32 0, i32 25
  %55 = load i8*, i8** %e_id, align 8, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond66 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), %cond.true ], [ %55, %cond.false ]
  %56 = load i8*, i8** %user, align 8, !tbaa !1
  %57 = load i8*, i8** %errtxt, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 %cond, i8* %cond66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %56, i8* %57)
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end, %if.end.59
  %58 = load i32, i32* %save_errno, align 4, !tbaa !5
  switch i32 %58, label %sw.epilog.69 [
    i32 9, label %sw.bb.68
    i32 23, label %sw.bb.68
    i32 24, label %sw.bb.68
    i32 25, label %sw.bb.68
    i32 27, label %sw.bb.68
    i32 29, label %sw.bb.68
    i32 32, label %sw.bb.68
    i32 105, label %sw.bb.68
    i32 116, label %sw.bb.68
  ]

sw.bb.68:                                         ; preds = %if.end.67, %if.end.67, %if.end.67, %if.end.67, %if.end.67, %if.end.67, %if.end.67, %if.end.67, %if.end.67
  call void @printopenfds(i32 1)
  call void @mci_dump_all(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 1)
  br label %sw.epilog.69

sw.epilog.69:                                     ; preds = %if.end.67, %sw.bb.68
  %59 = load i32, i32* %panic, align 4, !tbaa !5
  %tobool70 = icmp ne i32 %59, 0
  br i1 %tobool70, label %if.then.71, label %if.end.79

if.then.71:                                       ; preds = %sw.epilog.69
  call void @sync_queue_time()
  %60 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 0), align 1, !tbaa !7
  %conv72 = zext i8 %60 to i32
  %cmp73 = icmp sge i32 %conv72, 1
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.78

land.lhs.true.75:                                 ; preds = %if.then.71
  %61 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool76 = icmp ne i32 %61, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %land.lhs.true.75
  call void @abort() #9
  unreachable

if.end.78:                                        ; preds = %land.lhs.true.75, %if.then.71
  call void @exit(i32 71) #9
  unreachable

if.end.79:                                        ; preds = %sw.epilog.69
  %call80 = call i32* @__errno_location() #8
  store i32 0, i32* %call80, align 4, !tbaa !5
  %62 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  %tobool81 = icmp ne i32 %62, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.79
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 2) #10
  unreachable

if.end.83:                                        ; preds = %if.end.79
  %63 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %63) #1
  %64 = bitcast [80 x i8]* %ubuf to i8*
  call void @llvm.lifetime.end(i64 80, i8* %64) #1
  %65 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i8** %user to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i32* %keep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %exiting to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %panic to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @fmtmsg(i8* %eb, i8* %to, i8* %num, i8* %enhsc, i32 %eno, i8* %fmt, %struct.__va_list_tag* %ap) #0 {
entry:
  %eb.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  %num.addr = alloca i8*, align 8
  %enhsc.addr = alloca i8*, align 8
  %eno.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %del = alloca i8, align 1
  %l = alloca i32, align 4
  %spaceleft = alloca i32, align 4
  %errtxt = alloca i8*, align 8
  store i8* %eb, i8** %eb.addr, align 8, !tbaa !1
  store i8* %to, i8** %to.addr, align 8, !tbaa !1
  store i8* %num, i8** %num.addr, align 8, !tbaa !1
  store i8* %enhsc, i8** %enhsc.addr, align 8, !tbaa !1
  store i32 %eno, i32* %eno.addr, align 4, !tbaa !5
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %del) #1
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %spaceleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 16384, i32* %spaceleft, align 4, !tbaa !5
  %2 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %and = and i32 %conv, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = sext i8 %6 to i32
  %idxprom = sext i32 %conv3 to i64
  %call = call i16** @__ctype_b_loc() #8
  %7 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx4, align 2, !tbaa !20
  %conv5 = zext i16 %8 to i32
  %and6 = and i32 %conv5, 2048
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %9 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = sext i8 %10 to i32
  %and10 = and i32 %conv9, -128
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true.7
  %11 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %conv15 = sext i8 %12 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %call17 = call i16** @__ctype_b_loc() #8
  %13 = load i16*, i16** %call17, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %13, i64 %idxprom16
  %14 = load i16, i16* %arrayidx18, align 2, !tbaa !20
  %conv19 = zext i16 %14 to i32
  %and20 = and i32 %conv19, 2048
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true.13
  %15 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = sext i8 %16 to i32
  %and25 = and i32 %conv24, -128
  %cmp26 = icmp eq i32 %and25, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %land.lhs.true.22
  %17 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = sext i8 %18 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %call32 = call i16** @__ctype_b_loc() #8
  %19 = load i16*, i16** %call32, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i16, i16* %19, i64 %idxprom31
  %20 = load i16, i16* %arrayidx33, align 2, !tbaa !20
  %conv34 = zext i16 %20 to i32
  %and35 = and i32 %conv34, 2048
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.28
  %21 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  store i8* %21, i8** %num.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %add.ptr, i8** %fmt.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.28, %land.lhs.true.22, %land.lhs.true.13, %land.lhs.true.7, %land.lhs.true, %entry
  %23 = load i8*, i8** %num.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %23, i64 3
  %24 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = sext i8 %24 to i32
  %cmp39 = icmp eq i32 %conv38, 45
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.end
  store i8 45, i8* %del, align 1, !tbaa !7
  br label %if.end.42

if.else:                                          ; preds = %if.end
  store i8 32, i8* %del, align 1, !tbaa !7
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.41
  %25 = load i32, i32* @SoftBounce, align 4, !tbaa !5
  %tobool43 = icmp ne i32 %25, 0
  br i1 %tobool43, label %land.lhs.true.44, label %if.else.54

land.lhs.true.44:                                 ; preds = %if.end.42
  %26 = load i8*, i8** %num.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx45, align 1, !tbaa !7
  %conv46 = sext i8 %27 to i32
  %cmp47 = icmp eq i32 %conv46, 53
  br i1 %cmp47, label %if.then.49, label %if.else.54

if.then.49:                                       ; preds = %land.lhs.true.44
  %28 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %29 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %conv50 = sext i32 %29 to i64
  %30 = load i8*, i8** %num.addr, align 8, !tbaa !1
  %add.ptr51 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %del, align 1, !tbaa !7
  %conv52 = sext i8 %31 to i32
  %call53 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %28, i64 %conv50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* %add.ptr51, i32 %conv52)
  br label %if.end.58

if.else.54:                                       ; preds = %land.lhs.true.44, %if.end.42
  %32 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %33 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %conv55 = sext i32 %33 to i64
  %34 = load i8*, i8** %num.addr, align 8, !tbaa !1
  %35 = load i8, i8* %del, align 1, !tbaa !7
  %conv56 = sext i8 %35 to i32
  %call57 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %32, i64 %conv55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* %34, i32 %conv56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.54, %if.then.49
  %36 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %add.ptr59, i8** %eb.addr, align 8, !tbaa !1
  %37 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %sub = sub nsw i32 %37, 4
  store i32 %sub, i32* %spaceleft, align 4, !tbaa !5
  %38 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %call60 = call i32 @isenhsc(i8* %38, i32 32)
  store i32 %call60, i32* %l, align 4, !tbaa !5
  %cmp61 = icmp sgt i32 %call60, 0
  br i1 %cmp61, label %land.lhs.true.63, label %if.else.74

land.lhs.true.63:                                 ; preds = %if.end.58
  %39 = load i32, i32* %l, align 4, !tbaa !5
  %40 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %sub64 = sub nsw i32 %40, 4
  %cmp65 = icmp slt i32 %39, %sub64
  br i1 %cmp65, label %if.then.67, label %if.else.74

if.then.67:                                       ; preds = %land.lhs.true.63
  %41 = load i32, i32* %l, align 4, !tbaa !5
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %l, align 4, !tbaa !5
  %42 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %43 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %44 = load i32, i32* %l, align 4, !tbaa !5
  %add = add nsw i32 %44, 1
  %conv68 = sext i32 %add to i64
  %call69 = call i64 @sm_strlcpy(i8* %42, i8* %43, i64 %conv68)
  %45 = load i32, i32* %l, align 4, !tbaa !5
  %46 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %45 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  store i8* %add.ptr70, i8** %eb.addr, align 8, !tbaa !1
  %47 = load i32, i32* %l, align 4, !tbaa !5
  %48 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %sub71 = sub nsw i32 %48, %47
  store i32 %sub71, i32* %spaceleft, align 4, !tbaa !5
  %49 = load i32, i32* %l, align 4, !tbaa !5
  %50 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %idx.ext72 = sext i32 %49 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %50, i64 %idx.ext72
  store i8* %add.ptr73, i8** %fmt.addr, align 8, !tbaa !1
  br label %if.end.95

if.else.74:                                       ; preds = %land.lhs.true.63, %if.end.58
  %51 = load i8*, i8** %enhsc.addr, align 8, !tbaa !1
  %call75 = call i32 @isenhsc(i8* %51, i32 0)
  store i32 %call75, i32* %l, align 4, !tbaa !5
  %cmp76 = icmp sgt i32 %call75, 0
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.94

land.lhs.true.78:                                 ; preds = %if.else.74
  %52 = load i32, i32* %l, align 4, !tbaa !5
  %53 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %sub79 = sub nsw i32 %53, 4
  %cmp80 = icmp slt i32 %52, %sub79
  br i1 %cmp80, label %if.then.82, label %if.end.94

if.then.82:                                       ; preds = %land.lhs.true.78
  %54 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %enhsc.addr, align 8, !tbaa !1
  %56 = load i32, i32* %l, align 4, !tbaa !5
  %add83 = add nsw i32 %56, 1
  %conv84 = sext i32 %add83 to i64
  %call85 = call i64 @sm_strlcpy(i8* %54, i8* %55, i64 %conv84)
  %57 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom86 = sext i32 %57 to i64
  %58 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %58, i64 %idxprom86
  store i8 32, i8* %arrayidx87, align 1, !tbaa !7
  %59 = load i32, i32* %l, align 4, !tbaa !5
  %inc88 = add nsw i32 %59, 1
  store i32 %inc88, i32* %l, align 4, !tbaa !5
  %idxprom89 = sext i32 %inc88 to i64
  %60 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %60, i64 %idxprom89
  store i8 0, i8* %arrayidx90, align 1, !tbaa !7
  %61 = load i32, i32* %l, align 4, !tbaa !5
  %62 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %idx.ext91 = sext i32 %61 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %62, i64 %idx.ext91
  store i8* %add.ptr92, i8** %eb.addr, align 8, !tbaa !1
  %63 = load i32, i32* %l, align 4, !tbaa !5
  %64 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %sub93 = sub nsw i32 %64, %63
  store i32 %sub93, i32* %spaceleft, align 4, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.82, %land.lhs.true.78, %if.else.74
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.67
  %65 = load i32, i32* @SoftBounce, align 4, !tbaa !5
  %tobool96 = icmp ne i32 %65, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.108

land.lhs.true.97:                                 ; preds = %if.end.95
  %66 = load i32, i32* %l, align 4, !tbaa !5
  %sub98 = sub nsw i32 0, %66
  %idxprom99 = sext i32 %sub98 to i64
  %67 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i8, i8* %67, i64 %idxprom99
  %68 = load i8, i8* %arrayidx100, align 1, !tbaa !7
  %conv101 = sext i8 %68 to i32
  %cmp102 = icmp eq i32 %conv101, 53
  br i1 %cmp102, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %land.lhs.true.97
  %69 = load i32, i32* %l, align 4, !tbaa !5
  %sub105 = sub nsw i32 0, %69
  %idxprom106 = sext i32 %sub105 to i64
  %70 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %70, i64 %idxprom106
  store i8 52, i8* %arrayidx107, align 1, !tbaa !7
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.104, %land.lhs.true.97, %if.end.95
  %71 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  store i8* %71, i8** %errtxt, align 8, !tbaa !1
  %72 = load i8*, i8** @FileName, align 8, !tbaa !1
  %cmp109 = icmp ne i8* %72, null
  br i1 %cmp109, label %if.then.111, label %if.end.120

if.then.111:                                      ; preds = %if.end.108
  %73 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %74 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %conv112 = sext i32 %74 to i64
  %75 = load i8*, i8** @FileName, align 8, !tbaa !1
  %call113 = call i8* @shortenstring(i8* %75, i64 83)
  %76 = load i32, i32* @LineNumber, align 4, !tbaa !5
  %call114 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %73, i64 %conv112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), i8* %call113, i32 %76)
  %77 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %call115 = call i64 @strlen(i8* %77) #11
  %conv116 = trunc i64 %call115 to i32
  store i32 %conv116, i32* %l, align 4, !tbaa !5
  %78 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %idx.ext117 = sext i32 %conv116 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %78, i64 %idx.ext117
  store i8* %add.ptr118, i8** %eb.addr, align 8, !tbaa !1
  %79 = load i32, i32* %l, align 4, !tbaa !5
  %80 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %sub119 = sub nsw i32 %80, %79
  store i32 %sub119, i32* %spaceleft, align 4, !tbaa !5
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.111, %if.end.108
  %81 = load i8*, i8** %to.addr, align 8, !tbaa !1
  %cmp121 = icmp ne i8* %81, null
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.165

land.lhs.true.123:                                ; preds = %if.end.120
  %82 = load i8*, i8** %to.addr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %82, i64 0
  %83 = load i8, i8* %arrayidx124, align 1, !tbaa !7
  %conv125 = sext i8 %83 to i32
  %cmp126 = icmp ne i32 %conv125, 0
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.165

land.lhs.true.128:                                ; preds = %land.lhs.true.123
  %84 = load i8*, i8** %num.addr, align 8, !tbaa !1
  %call129 = call i32 @strncmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i64 3) #11
  %cmp130 = icmp eq i32 %call129, 0
  br i1 %cmp130, label %if.then.151, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.128
  %85 = load i8*, i8** %num.addr, align 8, !tbaa !1
  %call132 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i64 3) #11
  %cmp133 = icmp eq i32 %call132, 0
  br i1 %cmp133, label %if.then.151, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %lor.lhs.false
  %86 = load i8*, i8** %num.addr, align 8, !tbaa !1
  %call136 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i64 3) #11
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.then.151, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %lor.lhs.false.135
  %87 = load i8*, i8** %num.addr, align 8, !tbaa !1
  %call140 = call i32 @strncmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i64 3) #11
  %cmp141 = icmp eq i32 %call140, 0
  br i1 %cmp141, label %if.then.151, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %lor.lhs.false.139
  %88 = load i8*, i8** %num.addr, align 8, !tbaa !1
  %call144 = call i32 @strncmp(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i64 3) #11
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %if.then.151, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.143
  %89 = load i8*, i8** %num.addr, align 8, !tbaa !1
  %call148 = call i32 @strncmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i64 3) #11
  %cmp149 = icmp eq i32 %call148, 0
  br i1 %cmp149, label %if.then.151, label %if.end.165

if.then.151:                                      ; preds = %lor.lhs.false.147, %lor.lhs.false.143, %lor.lhs.false.139, %lor.lhs.false.135, %lor.lhs.false, %land.lhs.true.128
  %90 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %91 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %conv152 = sext i32 %91 to i64
  %92 = load i8*, i8** %to.addr, align 8, !tbaa !1
  %call153 = call i8* @shortenstring(i8* %92, i64 203)
  %call154 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %90, i64 %conv152, i32 2, i8* %call153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  %93 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %call155 = call i64 @strlen(i8* %93) #11
  %94 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %conv156 = sext i32 %94 to i64
  %sub157 = sub i64 %conv156, %call155
  %conv158 = trunc i64 %sub157 to i32
  store i32 %conv158, i32* %spaceleft, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.151
  %95 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %96 = load i8, i8* %95, align 1, !tbaa !7
  %conv159 = sext i8 %96 to i32
  %cmp160 = icmp ne i32 %conv159, 0
  br i1 %cmp160, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %97 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr, i8** %eb.addr, align 8, !tbaa !1
  %98 = load i8, i8* %97, align 1, !tbaa !7
  %conv162 = sext i8 %98 to i32
  %and163 = and i32 %conv162, 127
  %conv164 = trunc i32 %and163 to i8
  store i8 %conv164, i8* %97, align 1, !tbaa !7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.165

if.end.165:                                       ; preds = %while.end, %lor.lhs.false.147, %land.lhs.true.123, %if.end.120
  %99 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %100 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %conv166 = sext i32 %100 to i64
  %101 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %102 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !tbaa !1
  %call167 = call i32 @sm_vsnprintf(i8* %99, i64 %conv166, i8* %101, %struct.__va_list_tag* %102)
  %103 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %call168 = call i64 @strlen(i8* %103) #11
  %104 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %conv169 = sext i32 %104 to i64
  %sub170 = sub i64 %conv169, %call168
  %conv171 = trunc i64 %sub170 to i32
  store i32 %conv171, i32* %spaceleft, align 4, !tbaa !5
  br label %while.cond.172

while.cond.172:                                   ; preds = %while.body.176, %if.end.165
  %105 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !7
  %conv173 = sext i8 %106 to i32
  %cmp174 = icmp ne i32 %conv173, 0
  br i1 %cmp174, label %while.body.176, label %while.end.181

while.body.176:                                   ; preds = %while.cond.172
  %107 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %incdec.ptr177 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr177, i8** %eb.addr, align 8, !tbaa !1
  %108 = load i8, i8* %107, align 1, !tbaa !7
  %conv178 = sext i8 %108 to i32
  %and179 = and i32 %conv178, 127
  %conv180 = trunc i32 %and179 to i8
  store i8 %conv180, i8* %107, align 1, !tbaa !7
  br label %while.cond.172

while.end.181:                                    ; preds = %while.cond.172
  %109 = load i32, i32* %eno.addr, align 4, !tbaa !5
  %cmp182 = icmp ne i32 %109, 0
  br i1 %cmp182, label %if.then.184, label %if.end.188

if.then.184:                                      ; preds = %while.end.181
  %110 = load i8*, i8** %eb.addr, align 8, !tbaa !1
  %111 = load i32, i32* %spaceleft, align 4, !tbaa !5
  %conv185 = sext i32 %111 to i64
  %112 = load i32, i32* %eno.addr, align 4, !tbaa !5
  %call186 = call i8* @sm_errstring(i32 %112)
  %call187 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %110, i64 %conv185, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* %call186)
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.184, %while.end.181
  %113 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %114 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i32* %spaceleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  call void @llvm.lifetime.end(i64 1, i8* %del) #1
  ret i8* %113
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @puterrmsg(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %msgcode = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %msgcode) #1
  %0 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %1, i8* %msgcode, align 1, !tbaa !7
  %2 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %3 = load i32, i32* @HoldErrs, align 4, !tbaa !5
  call void @putoutmsg(i8* %2, i32 %3, i32 0)
  %4 = load i32, i32* @OnlyOneError, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @HoldErrs, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* @Errors, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @Errors, align 4, !tbaa !5
  %6 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %cmp = icmp eq %struct.envelope* %6, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %7 = load i8, i8* %msgcode, align 1, !tbaa !7
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 54
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.2
  %8 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 11
  %9 = load i64, i64* %e_flags, align 8, !tbaa !21
  %or = or i64 %9, 8192
  store i64 %or, i64* %e_flags, align 8, !tbaa !21
  br label %if.end.16

if.else:                                          ; preds = %if.end.2
  %10 = load i8, i8* %msgcode, align 1, !tbaa !7
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 53
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_flags9 = getelementptr inbounds %struct.envelope, %struct.envelope* %11, i32 0, i32 11
  %12 = load i64, i64* %e_flags9, align 8, !tbaa !21
  %and = and i64 %12, 4096
  %cmp10 = icmp ne i64 %and, 0
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %land.lhs.true
  %13 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_flags13 = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 11
  %14 = load i64, i64* %e_flags13, align 8, !tbaa !21
  %or14 = or i64 %14, 32
  store i64 %or14, i64* %e_flags13, align 8, !tbaa !21
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %land.lhs.true, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.1
  call void @llvm.lifetime.end(i64 1, i8* %msgcode) #1
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

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #2

declare void @sm_free_tagged(i8*, i8*, i32) #2

declare void @sm_dprintf(i8*, ...) #2

declare %struct.passwd* @sm_getpwuid(i32) #2

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

declare void @printopenfds(i32) #2

declare void @mci_dump_all(%struct.sm_file*, i32) #2

declare void @sync_queue_time() #2

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noreturn
declare void @sm_exc_raisenew_x(%struct.sm_exc_type*, ...) #5

; Function Attrs: nounwind uwtable
define void @usrerr(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %enhsc = alloca i8*, align 8
  %errtxt = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32
  %buf = alloca [2048 x i8], align 16
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 53
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 54
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %enhsc, align 8, !tbaa !1
  br label %if.end.24

if.else:                                          ; preds = %lor.lhs.false
  %7 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 52
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.else
  %9 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 56
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false.10, %if.else
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %enhsc, align 8, !tbaa !1
  br label %if.end.23

if.else.16:                                       ; preds = %lor.lhs.false.10
  %11 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = sext i8 %12 to i32
  %cmp19 = icmp eq i32 %conv18, 50
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else.16
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8** %enhsc, align 8, !tbaa !1
  br label %if.end

if.else.22:                                       ; preds = %if.else.16
  store i8* null, i8** %enhsc, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.22, %if.then.21
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay25 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay25)
  %13 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 3
  %14 = load i8*, i8** %e_to, align 8, !tbaa !22
  %15 = load i8*, i8** %enhsc, align 8, !tbaa !1
  %16 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i8* @fmtmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i32 0), i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %15, i32 0, i8* %16, %struct.__va_list_tag* %arraydecay26)
  store i8* %call, i8** %errtxt, align 8, !tbaa !1
  %arraydecay27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay2728 = bitcast %struct.__va_list_tag* %arraydecay27 to i8*
  call void @llvm.va_end(i8* %arraydecay2728)
  %17 = load i32, i32* @SuprErrs, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.24
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.24
  %18 = load i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i64 0), align 1, !tbaa !7
  %conv31 = sext i8 %18 to i32
  switch i32 %conv31, label %sw.epilog [
    i32 52, label %sw.bb
    i32 56, label %sw.bb
    i32 53, label %sw.bb.36
    i32 54, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.end.30, %if.end.30
  %19 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 34
  %20 = load i8*, i8** %e_message, align 8, !tbaa !8
  %cmp32 = icmp ne i8* %20, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.35:                                        ; preds = %sw.bb
  br label %sw.bb.36

sw.bb.36:                                         ; preds = %if.end.30, %if.end.30, %if.end.35
  %21 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 52
  %22 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %cmp37 = icmp eq %struct.SM_RPOOL_T* %22, null
  br i1 %cmp37, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %sw.bb.36
  %23 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message39 = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 34
  %24 = load i8*, i8** %e_message39, align 8, !tbaa !8
  %cmp40 = icmp ne i8* %24, null
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true
  %25 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message43 = getelementptr inbounds %struct.envelope, %struct.envelope* %25, i32 0, i32 34
  %26 = load i8*, i8** %e_message43, align 8, !tbaa !8
  call void @sm_free_tagged(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 318)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %land.lhs.true, %sw.bb.36
  %27 = load i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i64 0), align 1, !tbaa !7
  %conv45 = sext i8 %27 to i32
  %cmp46 = icmp eq i32 %conv45, 54
  br i1 %cmp46, label %if.then.48, label %if.else.55

if.then.48:                                       ; preds = %if.end.44
  %28 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %28) #1
  %arraydecay49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %29 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %call50 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay49, i64 2048, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 2026, i8* %29)
  %30 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool51 = getelementptr inbounds %struct.envelope, %struct.envelope* %30, i32 0, i32 52
  %31 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool51, align 8, !tbaa !16
  %arraydecay52 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call53 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %31, i8* %arraydecay52)
  %32 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message54 = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 34
  store i8* %call53, i8** %e_message54, align 8, !tbaa !8
  %33 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %33) #1
  br label %if.end.59

if.else.55:                                       ; preds = %if.end.44
  %34 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool56 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 52
  %35 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool56, align 8, !tbaa !16
  %36 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %call57 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %35, i8* %36)
  %37 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message58 = getelementptr inbounds %struct.envelope, %struct.envelope* %37, i32 0, i32 34
  store i8* %call57, i8** %e_message58, align 8, !tbaa !8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.55, %if.then.48
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.30, %if.end.59, %if.then.34
  call void @puterrmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i32 0))
  %38 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp60 = icmp sgt i32 %38, 3
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.65

land.lhs.true.62:                                 ; preds = %sw.epilog
  %39 = load i32, i32* @LogUsrErrs, align 4, !tbaa !5
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.62
  %40 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 25
  %41 = load i8*, i8** %e_id, align 8, !tbaa !19
  %42 = load i8*, i8** %errtxt, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* %42)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %land.lhs.true.62, %sw.epilog
  %43 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  %tobool66 = icmp ne i32 %43, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #10
  unreachable

if.end.68:                                        ; preds = %if.end.65
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %if.then.29
  %44 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %44) #1
  %45 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i8** %enhsc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
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
define void @usrerrenh(i8* %enhsc, i8* %fmt, ...) #0 {
entry:
  %enhsc.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %errtxt = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32
  %buf = alloca [2048 x i8], align 16
  store i8* %enhsc, i8** %enhsc.addr, align 8, !tbaa !1
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = load i8*, i8** %enhsc.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %enhsc.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end.30

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 53
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.then
  %7 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 54
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false.6, %if.then
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %enhsc.addr, align 8, !tbaa !1
  br label %if.end.29

if.else:                                          ; preds = %lor.lhs.false.6
  %9 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %conv13 = sext i8 %10 to i32
  %cmp14 = icmp eq i32 %conv13, 52
  br i1 %cmp14, label %if.then.21, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.else
  %11 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = sext i8 %12 to i32
  %cmp19 = icmp eq i32 %conv18, 56
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %lor.lhs.false.16, %if.else
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %enhsc.addr, align 8, !tbaa !1
  br label %if.end.28

if.else.22:                                       ; preds = %lor.lhs.false.16
  %13 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = sext i8 %14 to i32
  %cmp25 = icmp eq i32 %conv24, 50
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.else.22
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8** %enhsc.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.else.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then.21
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.11
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %lor.lhs.false
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay31 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay31)
  %15 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %15, i32 0, i32 3
  %16 = load i8*, i8** %e_to, align 8, !tbaa !22
  %17 = load i8*, i8** %enhsc.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i8* @fmtmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i32 0), i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %17, i32 0, i8* %18, %struct.__va_list_tag* %arraydecay32)
  store i8* %call, i8** %errtxt, align 8, !tbaa !1
  %arraydecay33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay3334 = bitcast %struct.__va_list_tag* %arraydecay33 to i8*
  call void @llvm.va_end(i8* %arraydecay3334)
  %19 = load i32, i32* @SuprErrs, align 4, !tbaa !5
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.30
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.30
  %20 = load i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i64 0), align 1, !tbaa !7
  %conv37 = sext i8 %20 to i32
  switch i32 %conv37, label %sw.epilog [
    i32 52, label %sw.bb
    i32 56, label %sw.bb
    i32 53, label %sw.bb.42
    i32 54, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.end.36, %if.end.36
  %21 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 34
  %22 = load i8*, i8** %e_message, align 8, !tbaa !8
  %cmp38 = icmp ne i8* %22, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.41:                                        ; preds = %sw.bb
  br label %sw.bb.42

sw.bb.42:                                         ; preds = %if.end.36, %if.end.36, %if.end.41
  %23 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 52
  %24 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %cmp43 = icmp eq %struct.SM_RPOOL_T* %24, null
  br i1 %cmp43, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %sw.bb.42
  %25 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message45 = getelementptr inbounds %struct.envelope, %struct.envelope* %25, i32 0, i32 34
  %26 = load i8*, i8** %e_message45, align 8, !tbaa !8
  %cmp46 = icmp ne i8* %26, null
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %land.lhs.true
  %27 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message49 = getelementptr inbounds %struct.envelope, %struct.envelope* %27, i32 0, i32 34
  %28 = load i8*, i8** %e_message49, align 8, !tbaa !8
  call void @sm_free_tagged(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 405)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %land.lhs.true, %sw.bb.42
  %29 = load i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i64 0), align 1, !tbaa !7
  %conv51 = sext i8 %29 to i32
  %cmp52 = icmp eq i32 %conv51, 54
  br i1 %cmp52, label %if.then.54, label %if.else.61

if.then.54:                                       ; preds = %if.end.50
  %30 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %30) #1
  %arraydecay55 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %31 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %call56 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay55, i64 2048, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 2026, i8* %31)
  %32 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool57 = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 52
  %33 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool57, align 8, !tbaa !16
  %arraydecay58 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call59 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %33, i8* %arraydecay58)
  %34 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message60 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 34
  store i8* %call59, i8** %e_message60, align 8, !tbaa !8
  %35 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %35) #1
  br label %if.end.65

if.else.61:                                       ; preds = %if.end.50
  %36 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool62 = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 52
  %37 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool62, align 8, !tbaa !16
  %38 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %call63 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %37, i8* %38)
  %39 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message64 = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 34
  store i8* %call63, i8** %e_message64, align 8, !tbaa !8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.61, %if.then.54
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.36, %if.end.65, %if.then.40
  call void @puterrmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i32 0))
  %40 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp66 = icmp sgt i32 %40, 3
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.71

land.lhs.true.68:                                 ; preds = %sw.epilog
  %41 = load i32, i32* @LogUsrErrs, align 4, !tbaa !5
  %tobool69 = icmp ne i32 %41, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %land.lhs.true.68
  %42 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 25
  %43 = load i8*, i8** %e_id, align 8, !tbaa !19
  %44 = load i8*, i8** %errtxt, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 5, i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* %44)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %land.lhs.true.68, %sw.epilog
  %45 = load i32, i32* @QuickAbort, align 4, !tbaa !5
  %tobool72 = icmp ne i32 %45, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  call void (%struct.sm_exc_type*, ...) @sm_exc_raisenew_x(%struct.sm_exc_type* @EtypeQuickAbort, i32 1) #10
  unreachable

if.end.74:                                        ; preds = %if.end.71
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.74, %if.then.35
  %46 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %46) #1
  %47 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
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
define void @message(i8* %msg, ...) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %errtxt = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  %0 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %call = call i32* @__errno_location() #8
  store i32 0, i32* %call, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_to = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 3
  %3 = load i8*, i8** %e_to, align 8, !tbaa !22
  %4 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i8* @fmtmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* null, i32 0, i8* %4, %struct.__va_list_tag* %arraydecay2)
  store i8* %call3, i8** %errtxt, align 8, !tbaa !1
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  call void @putoutmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i32 0), i32 0, i32 0)
  %5 = load i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i64 0), align 1, !tbaa !7
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.epilog [
    i32 52, label %sw.bb
    i32 56, label %sw.bb
    i32 53, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry, %entry
  %6 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 34
  %7 = load i8*, i8** %e_message, align 8, !tbaa !8
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %entry, %if.end
  %8 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 52
  %9 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %cmp8 = icmp eq %struct.SM_RPOOL_T* %9, null
  br i1 %cmp8, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %sw.bb.7
  %10 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message10 = getelementptr inbounds %struct.envelope, %struct.envelope* %10, i32 0, i32 34
  %11 = load i8*, i8** %e_message10, align 8, !tbaa !8
  %cmp11 = icmp ne i8* %11, null
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true
  %12 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message14 = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 34
  %13 = load i8*, i8** %e_message14, align 8, !tbaa !8
  call void @sm_free_tagged(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 476)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true, %sw.bb.7
  %14 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool16 = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 52
  %15 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool16, align 8, !tbaa !16
  %16 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %call17 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %15, i8* %16)
  %17 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message18 = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 34
  store i8* %call17, i8** %e_message18, align 8, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.15, %if.then
  %18 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %18) #1
  %19 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @putoutmsg(i8* %msg, i32 %holdmsg, i32 %heldmsg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %holdmsg.addr = alloca i32, align 4
  %heldmsg.addr = alloca i32, align 4
  %msgcode = alloca i8, align 1
  %errtxt = alloca i8*, align 8
  %id = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %l = alloca i32, align 4
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  store i32 %holdmsg, i32* %holdmsg.addr, align 4, !tbaa !5
  store i32 %heldmsg, i32* %heldmsg.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %msgcode) #1
  %0 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %1, i8* %msgcode, align 1, !tbaa !7
  %2 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  store i8* %3, i8** %errtxt, align 8, !tbaa !1
  %4 = bitcast i8** %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 54), align 1, !tbaa !7
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 8
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %8 = load i32, i32* %holdmsg.addr, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %8, 0
  %cond = select i1 %tobool2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)
  %9 = load i32, i32* %heldmsg.addr, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %9, 0
  %cond4 = select i1 %tobool3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* %7, i8* %cond, i8* %cond4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i8, i8* %msgcode, align 1, !tbaa !7
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 54
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %11 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 53, i8* %arrayidx9, align 1, !tbaa !7
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %12 = load i8, i8* %msgcode, align 1, !tbaa !7
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 56
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.else
  %13 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 52, i8* %arrayidx14, align 1, !tbaa !7
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.8
  %14 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %cmp17 = icmp ne %struct.envelope* %14, null
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %15 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %15, i32 0, i32 25
  %16 = load i8*, i8** %e_id, align 8, !tbaa !19
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi i8* [ %16, %cond.true ], [ null, %cond.false ]
  store i8* %cond19, i8** %id, align 8, !tbaa !1
  %17 = load i32, i32* %heldmsg.addr, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %if.end.35, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %cond.end
  %18 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %cmp22 = icmp ne %struct.envelope* %18, null
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.35

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %19 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 32
  %20 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !23
  %cmp25 = icmp ne %struct.sm_file* %20, null
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.35

land.lhs.true.27:                                 ; preds = %land.lhs.true.24
  %21 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx28, align 1, !tbaa !7
  %conv29 = sext i8 %22 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 %conv29) #1
  %cmp30 = icmp ne i8* %call, null
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %land.lhs.true.27
  %23 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_xfp33 = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 32
  %24 = load %struct.sm_file*, %struct.sm_file** %e_xfp33, align 8, !tbaa !23
  %25 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call34 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %24, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* %25)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %land.lhs.true.27, %land.lhs.true.24, %land.lhs.true.21, %cond.end
  %26 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp36 = icmp sgt i32 %26, 14
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.50

land.lhs.true.38:                                 ; preds = %if.end.35
  %27 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv39 = sext i8 %27 to i32
  %cmp40 = icmp eq i32 %conv39, 115
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.38
  %28 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv42 = sext i8 %28 to i32
  %cmp43 = icmp eq i32 %conv42, 100
  br i1 %cmp43, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %lor.lhs.false, %land.lhs.true.38
  %29 = load i8*, i8** %id, align 8, !tbaa !1
  %30 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %31 = load i32, i32* %holdmsg.addr, align 4, !tbaa !5
  %tobool46 = icmp ne i32 %31, 0
  %cond47 = select i1 %tobool46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)
  %32 = load i32, i32* %heldmsg.addr, align 4, !tbaa !5
  %tobool48 = icmp ne i32 %32, 0
  %cond49 = select i1 %tobool48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* %30, i8* %cond47, i8* %cond49)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %lor.lhs.false, %if.end.35
  %33 = load i8, i8* %msgcode, align 1, !tbaa !7
  %conv51 = sext i8 %33 to i32
  %cmp52 = icmp eq i32 %conv51, 56
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.50
  %34 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 48, i8* %arrayidx55, align 1, !tbaa !7
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.50
  %35 = load i32, i32* @Verbose, align 4, !tbaa !5
  %tobool57 = icmp ne i32 %35, 0
  br i1 %tobool57, label %if.end.64, label %land.lhs.true.58

land.lhs.true.58:                                 ; preds = %if.end.56
  %36 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx59, align 1, !tbaa !7
  %conv60 = sext i8 %37 to i32
  %cmp61 = icmp eq i32 %conv60, 48
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true.58
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %land.lhs.true.58, %if.end.56
  %38 = load i32, i32* %holdmsg.addr, align 4, !tbaa !5
  %tobool65 = icmp ne i32 %38, 0
  br i1 %tobool65, label %if.then.66, label %if.end.78

if.then.66:                                       ; preds = %if.end.64
  %39 = load i8, i8* %msgcode, align 1, !tbaa !7
  %40 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %39, i8* %arrayidx67, align 1, !tbaa !7
  %41 = load i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @HeldMessageBuf, i32 0, i64 0), align 1, !tbaa !7
  %conv68 = sext i8 %41 to i32
  %cmp69 = icmp eq i32 %conv68, 53
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.76

land.lhs.true.71:                                 ; preds = %if.then.66
  %42 = load i8, i8* %msgcode, align 1, !tbaa !7
  %conv72 = sext i8 %42 to i32
  %cmp73 = icmp eq i32 %conv72, 52
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true.71
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %land.lhs.true.71, %if.then.66
  %43 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call77 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @HeldMessageBuf, i32 0, i32 0), i8* %43, i64 16384)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.end.64
  %call79 = call i32 @sm_io_flush(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2)
  %44 = load %struct.sm_file*, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  %cmp80 = icmp eq %struct.sm_file* %44, null
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.end.78
  %45 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx84, align 1, !tbaa !7
  %conv85 = sext i8 %46 to i32
  %and = and i32 %conv85, -128
  %cmp86 = icmp eq i32 %and, 0
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.153

land.lhs.true.88:                                 ; preds = %if.end.83
  %47 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx89, align 1, !tbaa !7
  %conv90 = sext i8 %48 to i32
  %idxprom = sext i32 %conv90 to i64
  %call91 = call i16** @__ctype_b_loc() #8
  %49 = load i16*, i16** %call91, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i16, i16* %49, i64 %idxprom
  %50 = load i16, i16* %arrayidx92, align 2, !tbaa !20
  %conv93 = zext i16 %50 to i32
  %and94 = and i32 %conv93, 2048
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.153

land.lhs.true.96:                                 ; preds = %land.lhs.true.88
  %51 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx97, align 1, !tbaa !7
  %conv98 = sext i8 %52 to i32
  %and99 = and i32 %conv98, -128
  %cmp100 = icmp eq i32 %and99, 0
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.153

land.lhs.true.102:                                ; preds = %land.lhs.true.96
  %53 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx103, align 1, !tbaa !7
  %conv104 = sext i8 %54 to i32
  %idxprom105 = sext i32 %conv104 to i64
  %call106 = call i16** @__ctype_b_loc() #8
  %55 = load i16*, i16** %call106, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i16, i16* %55, i64 %idxprom105
  %56 = load i16, i16* %arrayidx107, align 2, !tbaa !20
  %conv108 = zext i16 %56 to i32
  %and109 = and i32 %conv108, 2048
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %land.lhs.true.111, label %if.end.153

land.lhs.true.111:                                ; preds = %land.lhs.true.102
  %57 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx112, align 1, !tbaa !7
  %conv113 = sext i8 %58 to i32
  %and114 = and i32 %conv113, -128
  %cmp115 = icmp eq i32 %and114, 0
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.153

land.lhs.true.117:                                ; preds = %land.lhs.true.111
  %59 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i8, i8* %59, i64 2
  %60 = load i8, i8* %arrayidx118, align 1, !tbaa !7
  %conv119 = sext i8 %60 to i32
  %idxprom120 = sext i32 %conv119 to i64
  %call121 = call i16** @__ctype_b_loc() #8
  %61 = load i16*, i16** %call121, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i16, i16* %61, i64 %idxprom120
  %62 = load i16, i16* %arrayidx122, align 2, !tbaa !20
  %conv123 = zext i16 %62 to i32
  %and124 = and i32 %conv123, 2048
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %land.lhs.true.126, label %if.end.153

land.lhs.true.126:                                ; preds = %land.lhs.true.117
  %63 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i8, i8* %63, i64 3
  %64 = load i8, i8* %arrayidx127, align 1, !tbaa !7
  %conv128 = sext i8 %64 to i32
  %cmp129 = icmp eq i32 %conv128, 32
  br i1 %cmp129, label %if.then.141, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %land.lhs.true.126
  %65 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %65, i64 3
  %66 = load i8, i8* %arrayidx132, align 1, !tbaa !7
  %conv133 = sext i8 %66 to i32
  %cmp134 = icmp eq i32 %conv133, 45
  br i1 %cmp134, label %if.then.141, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.131
  %67 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i8, i8* %67, i64 3
  %68 = load i8, i8* %arrayidx137, align 1, !tbaa !7
  %conv138 = sext i8 %68 to i32
  %cmp139 = icmp eq i32 %conv138, 0
  br i1 %cmp139, label %if.then.141, label %if.end.153

if.then.141:                                      ; preds = %lor.lhs.false.136, %lor.lhs.false.131, %land.lhs.true.126
  %69 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %70, i64 4
  store i8* %add.ptr, i8** %errtxt, align 8, !tbaa !1
  %71 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %call142 = call i32 @isenhsc(i8* %71, i32 32)
  store i32 %call142, i32* %l, align 4, !tbaa !5
  %72 = load i32, i32* %l, align 4, !tbaa !5
  %cmp143 = icmp sle i32 %72, 0
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.then.141
  %73 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %call146 = call i32 @isenhsc(i8* %73, i32 0)
  store i32 %call146, i32* %l, align 4, !tbaa !5
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %if.then.141
  %74 = load i32, i32* %l, align 4, !tbaa !5
  %cmp148 = icmp sgt i32 %74, 0
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.end.147
  %75 = load i32, i32* %l, align 4, !tbaa !5
  %add = add nsw i32 %75, 1
  %76 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %idx.ext = sext i32 %add to i64
  %add.ptr151 = getelementptr inbounds i8, i8* %76, i64 %idx.ext
  store i8* %add.ptr151, i8** %errtxt, align 8, !tbaa !1
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %if.end.147
  %77 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %lor.lhs.false.136, %land.lhs.true.117, %land.lhs.true.111, %land.lhs.true.102, %land.lhs.true.96, %land.lhs.true.88, %if.end.83
  %78 = load i32, i32* @DisConnected, align 4, !tbaa !5
  %tobool154 = icmp ne i32 %78, 0
  br i1 %tobool154, label %if.else.169, label %land.lhs.true.155

land.lhs.true.155:                                ; preds = %if.end.153
  %79 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv156 = sext i8 %79 to i32
  %cmp157 = icmp eq i32 %conv156, 115
  br i1 %cmp157, label %if.then.167, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %land.lhs.true.155
  %80 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv160 = sext i8 %80 to i32
  %cmp161 = icmp eq i32 %conv160, 100
  br i1 %cmp161, label %if.then.167, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %lor.lhs.false.159
  %81 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv164 = sext i8 %81 to i32
  %cmp165 = icmp eq i32 %conv164, 97
  br i1 %cmp165, label %if.then.167, label %if.else.169

if.then.167:                                      ; preds = %lor.lhs.false.163, %lor.lhs.false.159, %land.lhs.true.155
  %82 = load %struct.sm_file*, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  %83 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call168 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %82, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* %83)
  br label %if.end.171

if.else.169:                                      ; preds = %lor.lhs.false.163, %if.end.153
  %84 = load %struct.sm_file*, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  %85 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %call170 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %84, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* %85)
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.169, %if.then.167
  %86 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %cmp172 = icmp ne %struct.sm_file* %86, null
  br i1 %cmp172, label %if.then.174, label %if.end.187

if.then.174:                                      ; preds = %if.end.171
  %87 = load %struct.sm_file*, %struct.sm_file** @TrafficLogFile, align 8, !tbaa !1
  %88 = load i32, i32* @CurrentPid, align 4, !tbaa !5
  %89 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv175 = sext i8 %89 to i32
  %cmp176 = icmp eq i32 %conv175, 115
  br i1 %cmp176, label %cond.true.182, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %if.then.174
  %90 = load i8, i8* @OpMode, align 1, !tbaa !7
  %conv179 = sext i8 %90 to i32
  %cmp180 = icmp eq i32 %conv179, 100
  br i1 %cmp180, label %cond.true.182, label %cond.false.183

cond.true.182:                                    ; preds = %lor.lhs.false.178, %if.then.174
  %91 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  br label %cond.end.184

cond.false.183:                                   ; preds = %lor.lhs.false.178
  %92 = load i8*, i8** %errtxt, align 8, !tbaa !1
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.183, %cond.true.182
  %cond185 = phi i8* [ %91, %cond.true.182 ], [ %92, %cond.false.183 ]
  %call186 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %87, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i32 %88, i8* %cond185)
  br label %if.end.187

if.end.187:                                       ; preds = %cond.end.184, %if.end.171
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.187, %if.then.82, %if.end.76, %if.then.75, %if.then.63
  %93 = bitcast i8** %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  call void @llvm.lifetime.end(i64 1, i8* %msgcode) #1
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
define void @nmessage(i8* %msg, ...) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %errtxt = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  %0 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %call = call i32* @__errno_location() #8
  store i32 0, i32* %call, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i8* @fmtmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* null, i32 0, i8* %2, %struct.__va_list_tag* %arraydecay2)
  store i8* %call3, i8** %errtxt, align 8, !tbaa !1
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  call void @putoutmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i32 0), i32 0, i32 0)
  %3 = load i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @MsgBuf, i32 0, i64 0), align 1, !tbaa !7
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 52, label %sw.bb
    i32 56, label %sw.bb
    i32 53, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry, %entry
  %4 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %4, i32 0, i32 34
  %5 = load i8*, i8** %e_message, align 8, !tbaa !8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %entry, %if.end
  %6 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 52
  %7 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %cmp8 = icmp eq %struct.SM_RPOOL_T* %7, null
  br i1 %cmp8, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %sw.bb.7
  %8 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message10 = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 34
  %9 = load i8*, i8** %e_message10, align 8, !tbaa !8
  %cmp11 = icmp ne i8* %9, null
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true
  %10 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message14 = getelementptr inbounds %struct.envelope, %struct.envelope* %10, i32 0, i32 34
  %11 = load i8*, i8** %e_message14, align 8, !tbaa !8
  call void @sm_free_tagged(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 634)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true, %sw.bb.7
  %12 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool16 = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 52
  %13 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool16, align 8, !tbaa !16
  %14 = load i8*, i8** %errtxt, align 8, !tbaa !1
  %call17 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %13, i8* %14)
  %15 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message18 = getelementptr inbounds %struct.envelope, %struct.envelope* %15, i32 0, i32 34
  store i8* %call17, i8** %e_message18, align 8, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.15, %if.then
  %16 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %16) #1
  %17 = bitcast i8** %errtxt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @isenhsc(i8* %s, i32 %delim) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %delim.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  store i32 %delim, i32* %delim.addr, align 4, !tbaa !5
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 50
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 52
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %7 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !7
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 53
  br i1 %cmp8, label %land.lhs.true, label %if.then.13

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %9 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 46
  br i1 %cmp11, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true, %lor.lhs.false.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %land.lhs.true
  store i32 0, i32* %h, align 4, !tbaa !5
  store i32 2, i32* %l, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.14
  %11 = load i32, i32* %h, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %11, 3
  br i1 %cmp15, label %land.lhs.true.17, label %land.end

land.lhs.true.17:                                 ; preds = %while.cond
  %12 = load i32, i32* %l, align 4, !tbaa !5
  %13 = load i32, i32* %h, align 4, !tbaa !5
  %add = add nsw i32 %12, %13
  %idxprom = sext i32 %add to i64
  %14 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = sext i8 %15 to i32
  %and = and i32 %conv19, -128
  %cmp20 = icmp eq i32 %and, 0
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.17
  %16 = load i32, i32* %l, align 4, !tbaa !5
  %17 = load i32, i32* %h, align 4, !tbaa !5
  %add22 = add nsw i32 %16, %17
  %idxprom23 = sext i32 %add22 to i64
  %18 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %18, i64 %idxprom23
  %19 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = sext i8 %19 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %call = call i16** @__ctype_b_loc() #8
  %20 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i16, i16* %20, i64 %idxprom26
  %21 = load i16, i16* %arrayidx27, align 2, !tbaa !20
  %conv28 = zext i16 %21 to i32
  %and29 = and i32 %conv28, 2048
  %tobool = icmp ne i32 %and29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.17, %while.cond
  %22 = phi i1 [ false, %land.lhs.true.17 ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i32, i32* %h, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %h, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load i32, i32* %h, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %24, 0
  br i1 %cmp30, label %if.then.39, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %while.end
  %25 = load i32, i32* %l, align 4, !tbaa !5
  %26 = load i32, i32* %h, align 4, !tbaa !5
  %add33 = add nsw i32 %25, %26
  %idxprom34 = sext i32 %add33 to i64
  %27 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %27, i64 %idxprom34
  %28 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = sext i8 %28 to i32
  %cmp37 = icmp ne i32 %conv36, 46
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false.32, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %lor.lhs.false.32
  %29 = load i32, i32* %h, align 4, !tbaa !5
  %add41 = add nsw i32 %29, 1
  %30 = load i32, i32* %l, align 4, !tbaa !5
  %add42 = add nsw i32 %30, %add41
  store i32 %add42, i32* %l, align 4, !tbaa !5
  store i32 0, i32* %h, align 4, !tbaa !5
  br label %while.cond.43

while.cond.43:                                    ; preds = %while.body.66, %if.end.40
  %31 = load i32, i32* %h, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %31, 3
  br i1 %cmp44, label %land.lhs.true.46, label %land.end.65

land.lhs.true.46:                                 ; preds = %while.cond.43
  %32 = load i32, i32* %l, align 4, !tbaa !5
  %33 = load i32, i32* %h, align 4, !tbaa !5
  %add47 = add nsw i32 %32, %33
  %idxprom48 = sext i32 %add47 to i64
  %34 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %34, i64 %idxprom48
  %35 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = sext i8 %35 to i32
  %and51 = and i32 %conv50, -128
  %cmp52 = icmp eq i32 %and51, 0
  br i1 %cmp52, label %land.rhs.54, label %land.end.65

land.rhs.54:                                      ; preds = %land.lhs.true.46
  %36 = load i32, i32* %l, align 4, !tbaa !5
  %37 = load i32, i32* %h, align 4, !tbaa !5
  %add55 = add nsw i32 %36, %37
  %idxprom56 = sext i32 %add55 to i64
  %38 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %38, i64 %idxprom56
  %39 = load i8, i8* %arrayidx57, align 1, !tbaa !7
  %conv58 = sext i8 %39 to i32
  %idxprom59 = sext i32 %conv58 to i64
  %call60 = call i16** @__ctype_b_loc() #8
  %40 = load i16*, i16** %call60, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i16, i16* %40, i64 %idxprom59
  %41 = load i16, i16* %arrayidx61, align 2, !tbaa !20
  %conv62 = zext i16 %41 to i32
  %and63 = and i32 %conv62, 2048
  %tobool64 = icmp ne i32 %and63, 0
  br label %land.end.65

land.end.65:                                      ; preds = %land.rhs.54, %land.lhs.true.46, %while.cond.43
  %42 = phi i1 [ false, %land.lhs.true.46 ], [ false, %while.cond.43 ], [ %tobool64, %land.rhs.54 ]
  br i1 %42, label %while.body.66, label %while.end.68

while.body.66:                                    ; preds = %land.end.65
  %43 = load i32, i32* %h, align 4, !tbaa !5
  %inc67 = add nsw i32 %43, 1
  store i32 %inc67, i32* %h, align 4, !tbaa !5
  br label %while.cond.43

while.end.68:                                     ; preds = %land.end.65
  %44 = load i32, i32* %h, align 4, !tbaa !5
  %cmp69 = icmp eq i32 %44, 0
  br i1 %cmp69, label %if.then.78, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %while.end.68
  %45 = load i32, i32* %l, align 4, !tbaa !5
  %46 = load i32, i32* %h, align 4, !tbaa !5
  %add72 = add nsw i32 %45, %46
  %idxprom73 = sext i32 %add72 to i64
  %47 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %47, i64 %idxprom73
  %48 = load i8, i8* %arrayidx74, align 1, !tbaa !7
  %conv75 = sext i8 %48 to i32
  %49 = load i32, i32* %delim.addr, align 4, !tbaa !5
  %cmp76 = icmp ne i32 %conv75, %49
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.71, %while.end.68
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %lor.lhs.false.71
  %50 = load i32, i32* %l, align 4, !tbaa !5
  %51 = load i32, i32* %h, align 4, !tbaa !5
  %add80 = add nsw i32 %50, %51
  store i32 %add80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.79, %if.then.78, %if.then.39, %if.then.13, %if.then
  %52 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define i32 @extenhsc(i8* %s, i32 %delim, i8* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %delim.addr = alloca i32, align 4
  %e.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  store i32 %delim, i32* %delim.addr, align 4, !tbaa !5
  store i8* %e, i8** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 50
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 52
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %7 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !7
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 53
  br i1 %cmp8, label %land.lhs.true, label %if.then.13

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %9 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 46
  br i1 %cmp11, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true, %lor.lhs.false.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %land.lhs.true
  store i32 0, i32* %h, align 4, !tbaa !5
  store i32 2, i32* %l, align 4, !tbaa !5
  %11 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx15, align 1, !tbaa !7
  %13 = load i8*, i8** %e.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %arrayidx16, align 1, !tbaa !7
  %14 = load i8*, i8** %e.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 46, i8* %arrayidx17, align 1, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.14
  %15 = load i32, i32* %h, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %15, 3
  br i1 %cmp18, label %land.lhs.true.20, label %land.end

land.lhs.true.20:                                 ; preds = %while.cond
  %16 = load i32, i32* %l, align 4, !tbaa !5
  %17 = load i32, i32* %h, align 4, !tbaa !5
  %add = add nsw i32 %16, %17
  %idxprom = sext i32 %add to i64
  %18 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %conv22 = sext i8 %19 to i32
  %and = and i32 %conv22, -128
  %cmp23 = icmp eq i32 %and, 0
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.20
  %20 = load i32, i32* %l, align 4, !tbaa !5
  %21 = load i32, i32* %h, align 4, !tbaa !5
  %add25 = add nsw i32 %20, %21
  %idxprom26 = sext i32 %add25 to i64
  %22 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %22, i64 %idxprom26
  %23 = load i8, i8* %arrayidx27, align 1, !tbaa !7
  %conv28 = sext i8 %23 to i32
  %idxprom29 = sext i32 %conv28 to i64
  %call = call i16** @__ctype_b_loc() #8
  %24 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i16, i16* %24, i64 %idxprom29
  %25 = load i16, i16* %arrayidx30, align 2, !tbaa !20
  %conv31 = zext i16 %25 to i32
  %and32 = and i32 %conv31, 2048
  %tobool = icmp ne i32 %and32, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.20, %while.cond
  %26 = phi i1 [ false, %land.lhs.true.20 ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %27 = load i32, i32* %l, align 4, !tbaa !5
  %28 = load i32, i32* %h, align 4, !tbaa !5
  %add33 = add nsw i32 %27, %28
  %idxprom34 = sext i32 %add33 to i64
  %29 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %29, i64 %idxprom34
  %30 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %31 = load i32, i32* %l, align 4, !tbaa !5
  %32 = load i32, i32* %h, align 4, !tbaa !5
  %add36 = add nsw i32 %31, %32
  %idxprom37 = sext i32 %add36 to i64
  %33 = load i8*, i8** %e.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %33, i64 %idxprom37
  store i8 %30, i8* %arrayidx38, align 1, !tbaa !7
  %34 = load i32, i32* %h, align 4, !tbaa !5
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %h, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %35 = load i32, i32* %h, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %35, 0
  br i1 %cmp39, label %if.then.48, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %while.end
  %36 = load i32, i32* %l, align 4, !tbaa !5
  %37 = load i32, i32* %h, align 4, !tbaa !5
  %add42 = add nsw i32 %36, %37
  %idxprom43 = sext i32 %add42 to i64
  %38 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %38, i64 %idxprom43
  %39 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %conv45 = sext i8 %39 to i32
  %cmp46 = icmp ne i32 %conv45, 46
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.41, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %lor.lhs.false.41
  %40 = load i32, i32* %l, align 4, !tbaa !5
  %41 = load i32, i32* %h, align 4, !tbaa !5
  %add50 = add nsw i32 %40, %41
  %idxprom51 = sext i32 %add50 to i64
  %42 = load i8*, i8** %e.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %42, i64 %idxprom51
  store i8 46, i8* %arrayidx52, align 1, !tbaa !7
  %43 = load i32, i32* %h, align 4, !tbaa !5
  %add53 = add nsw i32 %43, 1
  %44 = load i32, i32* %l, align 4, !tbaa !5
  %add54 = add nsw i32 %44, %add53
  store i32 %add54, i32* %l, align 4, !tbaa !5
  store i32 0, i32* %h, align 4, !tbaa !5
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.78, %if.end.49
  %45 = load i32, i32* %h, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %45, 3
  br i1 %cmp56, label %land.lhs.true.58, label %land.end.77

land.lhs.true.58:                                 ; preds = %while.cond.55
  %46 = load i32, i32* %l, align 4, !tbaa !5
  %47 = load i32, i32* %h, align 4, !tbaa !5
  %add59 = add nsw i32 %46, %47
  %idxprom60 = sext i32 %add59 to i64
  %48 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %48, i64 %idxprom60
  %49 = load i8, i8* %arrayidx61, align 1, !tbaa !7
  %conv62 = sext i8 %49 to i32
  %and63 = and i32 %conv62, -128
  %cmp64 = icmp eq i32 %and63, 0
  br i1 %cmp64, label %land.rhs.66, label %land.end.77

land.rhs.66:                                      ; preds = %land.lhs.true.58
  %50 = load i32, i32* %l, align 4, !tbaa !5
  %51 = load i32, i32* %h, align 4, !tbaa !5
  %add67 = add nsw i32 %50, %51
  %idxprom68 = sext i32 %add67 to i64
  %52 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %52, i64 %idxprom68
  %53 = load i8, i8* %arrayidx69, align 1, !tbaa !7
  %conv70 = sext i8 %53 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %call72 = call i16** @__ctype_b_loc() #8
  %54 = load i16*, i16** %call72, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i16, i16* %54, i64 %idxprom71
  %55 = load i16, i16* %arrayidx73, align 2, !tbaa !20
  %conv74 = zext i16 %55 to i32
  %and75 = and i32 %conv74, 2048
  %tobool76 = icmp ne i32 %and75, 0
  br label %land.end.77

land.end.77:                                      ; preds = %land.rhs.66, %land.lhs.true.58, %while.cond.55
  %56 = phi i1 [ false, %land.lhs.true.58 ], [ false, %while.cond.55 ], [ %tobool76, %land.rhs.66 ]
  br i1 %56, label %while.body.78, label %while.end.86

while.body.78:                                    ; preds = %land.end.77
  %57 = load i32, i32* %l, align 4, !tbaa !5
  %58 = load i32, i32* %h, align 4, !tbaa !5
  %add79 = add nsw i32 %57, %58
  %idxprom80 = sext i32 %add79 to i64
  %59 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %59, i64 %idxprom80
  %60 = load i8, i8* %arrayidx81, align 1, !tbaa !7
  %61 = load i32, i32* %l, align 4, !tbaa !5
  %62 = load i32, i32* %h, align 4, !tbaa !5
  %add82 = add nsw i32 %61, %62
  %idxprom83 = sext i32 %add82 to i64
  %63 = load i8*, i8** %e.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %63, i64 %idxprom83
  store i8 %60, i8* %arrayidx84, align 1, !tbaa !7
  %64 = load i32, i32* %h, align 4, !tbaa !5
  %inc85 = add nsw i32 %64, 1
  store i32 %inc85, i32* %h, align 4, !tbaa !5
  br label %while.cond.55

while.end.86:                                     ; preds = %land.end.77
  %65 = load i32, i32* %h, align 4, !tbaa !5
  %cmp87 = icmp eq i32 %65, 0
  br i1 %cmp87, label %if.then.96, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %while.end.86
  %66 = load i32, i32* %l, align 4, !tbaa !5
  %67 = load i32, i32* %h, align 4, !tbaa !5
  %add90 = add nsw i32 %66, %67
  %idxprom91 = sext i32 %add90 to i64
  %68 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %68, i64 %idxprom91
  %69 = load i8, i8* %arrayidx92, align 1, !tbaa !7
  %conv93 = sext i8 %69 to i32
  %70 = load i32, i32* %delim.addr, align 4, !tbaa !5
  %cmp94 = icmp ne i32 %conv93, %70
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %lor.lhs.false.89, %while.end.86
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.97:                                        ; preds = %lor.lhs.false.89
  %71 = load i32, i32* %l, align 4, !tbaa !5
  %72 = load i32, i32* %h, align 4, !tbaa !5
  %add98 = add nsw i32 %71, %72
  %idxprom99 = sext i32 %add98 to i64
  %73 = load i8*, i8** %e.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i8, i8* %73, i64 %idxprom99
  store i8 0, i8* %arrayidx100, align 1, !tbaa !7
  %74 = load i32, i32* %l, align 4, !tbaa !5
  %75 = load i32, i32* %h, align 4, !tbaa !5
  %add101 = add nsw i32 %74, %75
  store i32 %add101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.97, %if.then.96, %if.then.48, %if.then.13, %if.then
  %76 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define void @buffer_errors() #0 {
entry:
  store i8 0, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @HeldMessageBuf, i32 0, i64 0), align 1, !tbaa !7
  store i32 1, i32* @HoldErrs, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define void @flush_errors(i32 %print) #0 {
entry:
  %print.addr = alloca i32, align 4
  store i32 %print, i32* %print.addr, align 4, !tbaa !5
  %0 = load i32, i32* %print.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @HeldMessageBuf, i32 0, i64 0), align 1, !tbaa !7
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @putoutmsg(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @HeldMessageBuf, i32 0, i32 0), i32 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i8 0, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @HeldMessageBuf, i32 0, i64 0), align 1, !tbaa !7
  store i32 0, i32* @HoldErrs, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @sm_errstring(i32 %errnum) #0 {
entry:
  %retval = alloca i8*, align 8
  %errnum.addr = alloca i32, align 4
  %dnsmsg = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %err = alloca i8*, align 8
  %errbuf = alloca [30 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store i32 %errnum, i32* %errnum.addr, align 4, !tbaa !5
  %0 = bitcast i8** %dnsmsg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %err to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast [30 x i8]* %errbuf to i8*
  call void @llvm.lifetime.start(i64 30, i8* %3) #1
  store i8* null, i8** %dnsmsg, align 8, !tbaa !1
  %4 = load i32, i32* %errnum.addr, align 4, !tbaa !5
  switch i32 %4, label %sw.epilog [
    i32 110, label %sw.bb
    i32 104, label %sw.bb
    i32 112, label %sw.bb.37
    i32 111, label %sw.bb.43
    i32 277, label %sw.bb.49
    i32 278, label %sw.bb.50
    i32 279, label %sw.bb.51
    i32 280, label %sw.bb.52
    i32 1, label %sw.bb.53
    i32 256, label %sw.bb.54
    i32 257, label %sw.bb.55
    i32 258, label %sw.bb.56
    i32 259, label %sw.bb.57
    i32 260, label %sw.bb.58
    i32 261, label %sw.bb.59
    i32 262, label %sw.bb.60
    i32 263, label %sw.bb.61
    i32 264, label %sw.bb.62
    i32 265, label %sw.bb.63
    i32 266, label %sw.bb.64
    i32 267, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i8** %bp, align 8, !tbaa !1
  %5 = load i32, i32* %errnum.addr, align 4, !tbaa !5
  %call = call i8* @strerror(i32 %5) #1
  store i8* %call, i8** %err, align 8, !tbaa !1
  %6 = load i8*, i8** %err, align 8, !tbaa !1
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %errbuf, i32 0, i32 0
  %7 = load i32, i32* %errnum.addr, align 4, !tbaa !5
  %call1 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %7)
  %arraydecay2 = getelementptr inbounds [30 x i8], [30 x i8]* %errbuf, i32 0, i32 0
  store i8* %arraydecay2, i8** %err, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %8 = load i8*, i8** %bp, align 8, !tbaa !1
  %9 = load i8*, i8** %err, align 8, !tbaa !1
  %10 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([2048 x i8]* @sm_errstring.buf to i64)
  %sub = sub i64 2048, %sub.ptr.sub
  %call3 = call i64 @sm_strlcpy(i8* %8, i8* %9, i64 %sub)
  %11 = load i8*, i8** %bp, align 8, !tbaa !1
  %call4 = call i64 @strlen(i8* %11) #11
  %12 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %call4
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  %13 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp5 = icmp ne i8* %13, null
  br i1 %cmp5, label %if.then.6, label %if.end.29

if.then.6:                                        ; preds = %if.end
  %14 = load i32, i32* %errnum.addr, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %14, 110
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  %15 = load i8*, i8** %bp, align 8, !tbaa !1
  %16 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast9 = ptrtoint i8* %16 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast9, ptrtoint ([2048 x i8]* @sm_errstring.buf to i64)
  %sub11 = sub i64 2048, %sub.ptr.sub10
  %call12 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %15, i64 %sub11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  %17 = load i8*, i8** %bp, align 8, !tbaa !1
  %call13 = call i64 @strlen(i8* %17) #11
  %18 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %18, i64 %call13
  store i8* %add.ptr14, i8** %bp, align 8, !tbaa !1
  br label %if.end.21

if.else:                                          ; preds = %if.then.6
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i8** %bp, align 8, !tbaa !1
  %19 = load i8*, i8** %bp, align 8, !tbaa !1
  %20 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast15 = ptrtoint i8* %20 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast15, ptrtoint ([2048 x i8]* @sm_errstring.buf to i64)
  %sub17 = sub i64 2048, %sub.ptr.sub16
  %call18 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %19, i64 %sub17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0))
  %21 = load i8*, i8** %bp, align 8, !tbaa !1
  %call19 = call i64 @strlen(i8* %21) #11
  %22 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds i8, i8* %22, i64 %call19
  store i8* %add.ptr20, i8** %bp, align 8, !tbaa !1
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.8
  %23 = load i8*, i8** %bp, align 8, !tbaa !1
  %24 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %call22 = call i8* @shortenstring(i8* %24, i64 203)
  %25 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast23 = ptrtoint i8* %25 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast23, ptrtoint ([2048 x i8]* @sm_errstring.buf to i64)
  %sub25 = sub i64 2048, %sub.ptr.sub24
  %call26 = call i64 @sm_strlcpy(i8* %23, i8* %call22, i64 %sub25)
  %call27 = call i64 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0)) #11
  %26 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds i8, i8* %26, i64 %call27
  store i8* %add.ptr28, i8** %bp, align 8, !tbaa !1
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.21, %if.end
  %27 = load i8*, i8** @SmtpPhase, align 8, !tbaa !1
  %cmp30 = icmp ne i8* %27, null
  br i1 %cmp30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end.29
  %28 = load i8*, i8** %bp, align 8, !tbaa !1
  %29 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast32 = ptrtoint i8* %29 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast32, ptrtoint ([2048 x i8]* @sm_errstring.buf to i64)
  %sub34 = sub i64 2048, %sub.ptr.sub33
  %30 = load i8*, i8** @SmtpPhase, align 8, !tbaa !1
  %call35 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %28, i64 %sub34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* %30)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.end.29
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.37:                                         ; preds = %entry
  %31 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp38 = icmp eq i8* %31, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %sw.bb.37
  br label %sw.epilog

if.end.40:                                        ; preds = %sw.bb.37
  %32 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %call41 = call i8* @shortenstring(i8* %32, i64 203)
  %call42 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i64 2048, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* %call41)
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.43:                                         ; preds = %entry
  %33 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp44 = icmp eq i8* %33, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %sw.bb.43
  br label %sw.epilog

if.end.46:                                        ; preds = %sw.bb.43
  %34 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %call47 = call i8* @shortenstring(i8* %34, i64 203)
  %call48 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i64 2048, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* %call47)
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.49:                                         ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8** %dnsmsg, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0), i8** %dnsmsg, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.51:                                         ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8** %dnsmsg, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.52:                                         ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8** %dnsmsg, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.54:                                         ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.55:                                         ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.56:                                         ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.57:                                         ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.58:                                         ; preds = %entry
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.59:                                         ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.60:                                         ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.61:                                         ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.62:                                         ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.63:                                         ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.64:                                         ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.65:                                         ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %entry, %sw.bb.52, %sw.bb.51, %sw.bb.50, %sw.bb.49, %if.then.45, %if.then.39
  %35 = load i8*, i8** %dnsmsg, align 8, !tbaa !1
  %cmp66 = icmp ne i8* %35, null
  br i1 %cmp66, label %if.then.67, label %if.end.84

if.then.67:                                       ; preds = %sw.epilog
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i8** %bp, align 8, !tbaa !1
  %36 = load i8*, i8** %bp, align 8, !tbaa !1
  %call68 = call i64 @sm_strlcpy(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i64 2048)
  %37 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds i8, i8* %37, i64 %call68
  store i8* %add.ptr69, i8** %bp, align 8, !tbaa !1
  %38 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %cmp70 = icmp ne i8* %38, null
  br i1 %cmp70, label %if.then.71, label %if.end.79

if.then.71:                                       ; preds = %if.then.67
  %39 = load i8*, i8** %bp, align 8, !tbaa !1
  %40 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast72 = ptrtoint i8* %40 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast72, ptrtoint ([2048 x i8]* @sm_errstring.buf to i64)
  %sub74 = sub i64 2048, %sub.ptr.sub73
  %41 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  %call75 = call i8* @shortenstring(i8* %41, i64 203)
  %call76 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %39, i64 %sub74, i32 2, i8* %call75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0))
  %42 = load i8*, i8** %bp, align 8, !tbaa !1
  %call77 = call i64 @strlen(i8* %42) #11
  %43 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr78 = getelementptr inbounds i8, i8* %43, i64 %call77
  store i8* %add.ptr78, i8** %bp, align 8, !tbaa !1
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.71, %if.then.67
  %44 = load i8*, i8** %bp, align 8, !tbaa !1
  %45 = load i8*, i8** %dnsmsg, align 8, !tbaa !1
  %46 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast80 = ptrtoint i8* %46 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast80, ptrtoint ([2048 x i8]* @sm_errstring.buf to i64)
  %sub82 = sub i64 2048, %sub.ptr.sub81
  %call83 = call i64 @sm_strlcpy(i8* %44, i8* %45, i64 %sub82)
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %sw.epilog
  %47 = load i32, i32* %errnum.addr, align 4, !tbaa !5
  %call85 = call i8* @strerror(i32 %47) #1
  store i8* %call85, i8** %err, align 8, !tbaa !1
  %48 = load i8*, i8** %err, align 8, !tbaa !1
  %cmp86 = icmp eq i8* %48, null
  br i1 %cmp86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.end.84
  %49 = load i32, i32* %errnum.addr, align 4, !tbaa !5
  %call88 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i64 2048, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %49)
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @sm_errstring.buf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.89:                                        ; preds = %if.end.84
  %50 = load i8*, i8** %err, align 8, !tbaa !1
  store i8* %50, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.89, %if.then.87, %if.end.79, %sw.bb.65, %sw.bb.64, %sw.bb.63, %sw.bb.62, %sw.bb.61, %sw.bb.60, %sw.bb.59, %sw.bb.58, %sw.bb.57, %sw.bb.56, %sw.bb.55, %sw.bb.54, %sw.bb.53, %if.end.46, %if.end.40, %if.end.36
  %51 = bitcast [30 x i8]* %errbuf to i8*
  call void @llvm.lifetime.end(i64 30, i8* %51) #1
  %52 = bitcast i8** %err to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i8** %dnsmsg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load i8*, i8** %retval
  ret i8* %55
}

; Function Attrs: nounwind
declare i8* @strerror(i32) #6

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare i8* @shortenstring(i8*, i64) #2

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #6

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

declare i32 @sm_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 392}
!9 = !{!"envelope", !2, i64 0, !10, i64 8, !10, i64 16, !2, i64 24, !11, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !10, i64 256, !2, i64 264, !10, i64 272, !6, i64 280, !12, i64 284, !12, i64 286, !12, i64 288, !12, i64 290, !12, i64 292, !12, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !10, i64 456, !6, i64 464, !10, i64 472, !10, i64 480, !13, i64 488, !2, i64 2576, !2, i64 2584, !14, i64 2592, !10, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!10 = !{!"long", !3, i64 0}
!11 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !10, i64 144, !2, i64 152, !12, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!12 = !{!"short", !3, i64 0}
!13 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!14 = !{!"sm_timers", !15, i64 0}
!15 = !{!"_timer", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!16 = !{!9, !2, i64 2640}
!17 = !{!18, !2, i64 0}
!18 = !{!"passwd", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !2, i64 24, !2, i64 32, !2, i64 40}
!19 = !{!9, !2, i64 344}
!20 = !{!12, !12, i64 0}
!21 = !{!9, !10, i64 272}
!22 = !{!9, !2, i64 24}
!23 = !{!9, !2, i64 376}
