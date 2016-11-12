; ModuleID = './attacher.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NewWindow = type { i32, i8*, i8**, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.mode = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.msg = type { i32, i32, [4096 x i8], %union.anon }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { [257 x i8], i32, [4096 x i8], i32, [20 x i8], [4096 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.anon.1 = type { [257 x i8], i32 }
%struct.anon.0 = type { [257 x i8], i32, i32, i32, i32, [20 x i8], i32, i32, [33 x i8], i32, i32 }
%union.__WAIT_STATUS = type { %union.wait* }
%union.wait = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.8 = type { i32 }

@multiattach = external global i32, align 4
@multi_uid = external global i32, align 4
@real_uid = external global i32, align 4
@own_uid = external global i32, align 4
@eff_uid = external global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"setresuid\00", align 1
@attach_tty = external global i8*, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"chmod %s\00", align 1
@tty_mode = external global i32, align 4
@tty_oldmode = external global i32, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Sorry, cannot contact session \22%s\22 again.\0D\0A\00", align 1
@SockName = external global i8*, align 8
@SockMatch = external global i8*, align 8
@rflag = external global i32, align 4
@quietflag = external global i32, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"There is no screen to be %sed matching %s.\00", align 1
@xflag = external global i32, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@dflag = external global i32, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"resum\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"There is no screen to be %sed.\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Type \22screen [-d] -r [pid.]tty.host\22 to resume one of them.\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"setuid\00", align 1
@real_gid = external global i32, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@eff_gid = external global i32, align 4
@MasterPid = external global i32, align 4
@SockPath = external global [0 x i8], align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"stat %s\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Socket is in wrong mode (%03o)\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"That screen is %sdetached.\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"already \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@LoginName = external global i8*, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"WriteMessage\00", align 1
@ContinuePlease = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [35 x i8] c"Cannot contact screen again. Sigh.\00", align 1
@attach_term = external global i8*, align 8
@DefaultEsc = external global i32, align 4
@DefaultMetaEsc = external global i32, align 4
@preselect = external global i8*, align 8
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@adaptflag = external global i32, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@nwin_options = external global %struct.NewWindow, align 8
@multi = external global i8*, align 8
@AttacherPanic = internal global i32 0, align 4
@attach_Mode = external global %struct.mode, align 4
@.str.21 = private unnamed_addr constant [50 x i8] c"\0AError: Cannot find master process to attach to!\0A\00", align 1
@SuspendPlease = internal global i32 0, align 4
@LockPlease = internal global i32 0, align 4
@SigWinchPlease = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [25 x i8] c"No screen session found.\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Use -S to specify a session.\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@SendCmdMessage.query = private unnamed_addr constant [8 x i8] c"-queryX\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"Could not create a listening socket to read the results.\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@QueryResult = internal global i32 0, align 4
@attach_fd = external global i32, align 4
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"LOCKPRG\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"SCREEN-LOCK\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"Cannot lock terminal - fork failed\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [34 x i8] c"Lock: %s: Killed by signal: %d%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c" (Core dumped)\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LockEnd = internal global [27 x i8] c"Welcome back to screen !!\0A\00", align 16
@ppp = external global %struct.passwd*, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"Key:   \00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"Again: \00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"Passwords don't match.\07\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"Getpass error.\07\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"crypt() error.\07\0A\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"Screen used by %s%s<%s> on %s.\0APassword:\07\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c" \00", align 1
@HostName = external global [0 x i8], align 1

; Function Attrs: nounwind uwtable
define i32 @Attach(i32 %how) #0 {
entry:
  %retval = alloca i32, align 4
  %how.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %lasts = alloca i32, align 4
  %m = alloca %struct.msg, align 4
  %st = alloca %struct.stat, align 8
  %s = alloca i8*, align 8
  store i32 %how, i32* %how.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %how.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %1 = load i32, i32* %how.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %lor.lhs.false, %do.end
  %2 = load i32, i32* @multiattach, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* @multi_uid, align 4
  store i32 %3, i32* @real_uid, align 4
  %4 = load i32, i32* @own_uid, align 4
  store i32 %4, i32* @eff_uid, align 4
  %5 = load i32, i32* @multi_uid, align 4
  %6 = load i32, i32* @own_uid, align 4
  %7 = load i32, i32* @multi_uid, align 4
  %call = call i32 @setresuid(i32 %5, i32 %6, i32 %7) #4
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call4 = call i32* @__errno_location() #8
  %8 = load i32, i32* %call4, align 4
  call void (i32, i8*, ...) @Panic(i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %9 = load i8*, i8** @attach_tty, align 8
  %call5 = call i32 @chmod(i8* %9, i32 438) #4
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %call8 = call i32* @__errno_location() #8
  %10 = load i32, i32* %call8, align 4
  %11 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %11) #9
  unreachable

if.end.9:                                         ; preds = %if.end
  %12 = load i32, i32* @tty_mode, align 4
  store i32 %12, i32* @tty_oldmode, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %land.lhs.true, %lor.lhs.false
  %13 = bitcast %struct.msg* %m to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 12584, i32 1, i1 false)
  %14 = load i32, i32* %how.addr, align 4
  %type = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 1
  store i32 %14, i32* %type, align 4
  %protocol_revision = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 0
  store i32 1836279557, i32* %protocol_revision, align 4
  %m_tty = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty, i32 0, i32 0
  %15 = load i8*, i8** @attach_tty, align 8
  %call11 = call i8* @strncpy(i8* %arraydecay, i8* %15, i64 4095) #4
  %m_tty12 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty12, i32 0, i64 4095
  store i8 0, i8* %arrayidx, align 1
  %16 = load i32, i32* %how.addr, align 4
  %cmp13 = icmp eq i32 %16, 6
  br i1 %cmp13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.end.10
  %call15 = call i32 @MakeClientSocket(i32 0)
  store i32 %call15, i32* %lasts, align 4
  %cmp16 = icmp sge i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.then.14
  %17 = load i32, i32* %lasts, align 4
  %call18 = call i32 @WriteMessage(i32 %17, %struct.msg* %m)
  %18 = load i32, i32* %lasts, align 4
  %call19 = call i32 @close(i32 %18)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.then.14
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.10
  %19 = load i32, i32* %how.addr, align 4
  %cmp22 = icmp eq i32 %19, 3
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.21
  %call24 = call i32 @MakeClientSocket(i32 0)
  store i32 %call24, i32* %lasts, align 4
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  %20 = load i8*, i8** @SockName, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* %20) #9
  unreachable

if.end.27:                                        ; preds = %if.then.23
  br label %if.end.60

if.else:                                          ; preds = %if.end.21
  %21 = load i8*, i8** @SockMatch, align 8
  %call28 = call i32 @FindSocket(i32* %lasts, i32* null, i32* null, i8* %21)
  store i32 %call28, i32* %n, align 4
  %22 = load i32, i32* %n, align 4
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %if.else
  %23 = load i32, i32* @rflag, align 4
  %tobool29 = icmp ne i32 %23, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.33

land.lhs.true.30:                                 ; preds = %sw.bb
  %24 = load i32, i32* @rflag, align 4
  %and = and i32 %24, 1
  %cmp31 = icmp eq i32 %and, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.30
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.30, %sw.bb
  %25 = load i32, i32* @quietflag, align 4
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  call void @eexit(i32 10) #9
  unreachable

if.end.36:                                        ; preds = %if.end.33
  %26 = load i8*, i8** @SockMatch, align 8
  %tobool37 = icmp ne i8* %26, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.44

land.lhs.true.38:                                 ; preds = %if.end.36
  %27 = load i8*, i8** @SockMatch, align 8
  %28 = load i8, i8* %27, align 1
  %conv = sext i8 %28 to i32
  %tobool39 = icmp ne i32 %conv, 0
  br i1 %tobool39, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %land.lhs.true.38
  %29 = load i32, i32* @xflag, align 4
  %tobool41 = icmp ne i32 %29, 0
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.40
  br label %cond.end

cond.false:                                       ; preds = %if.then.40
  %30 = load i32, i32* @dflag, align 4
  %tobool42 = icmp ne i32 %30, 0
  %cond = select i1 %tobool42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond43 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %cond.true ], [ %cond, %cond.false ]
  %31 = load i8*, i8** @SockMatch, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* %cond43, i8* %31) #9
  unreachable

if.else.44:                                       ; preds = %land.lhs.true.38, %if.end.36
  %32 = load i32, i32* @xflag, align 4
  %tobool45 = icmp ne i32 %32, 0
  br i1 %tobool45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %if.else.44
  br label %cond.end.50

cond.false.47:                                    ; preds = %if.else.44
  %33 = load i32, i32* @dflag, align 4
  %tobool48 = icmp ne i32 %33, 0
  %cond49 = select i1 %tobool48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.47, %cond.true.46
  %cond51 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %cond.true.46 ], [ %cond49, %cond.false.47 ]
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8* %cond51) #9
  unreachable

sw.bb.52:                                         ; preds = %if.else
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %34 = load i32, i32* @rflag, align 4
  %cmp53 = icmp slt i32 %34, 3
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %sw.default
  %35 = load i32, i32* @quietflag, align 4
  %tobool56 = icmp ne i32 %35, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.55
  %36 = load i32, i32* %n, align 4
  %add = add nsw i32 10, %36
  call void @eexit(i32 %add) #9
  unreachable

if.end.58:                                        ; preds = %if.then.55
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0)) #9
  unreachable

if.end.59:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.59, %sw.bb.52
  br label %if.end.60

if.end.60:                                        ; preds = %sw.epilog, %if.end.27
  %37 = load i32, i32* @multiattach, align 4
  %tobool61 = icmp ne i32 %37, 0
  br i1 %tobool61, label %if.else.68, label %if.then.62

if.then.62:                                       ; preds = %if.end.60
  %38 = load i32, i32* @real_uid, align 4
  %call63 = call i32 @setuid(i32 %38) #4
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.then.62
  %call66 = call i32* @__errno_location() #8
  %39 = load i32, i32* %call66, align 4
  call void (i32, i8*, ...) @Panic(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #9
  unreachable

if.end.67:                                        ; preds = %if.then.62
  br label %if.end.69

if.else.68:                                       ; preds = %if.end.60
  %40 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %40)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.end.67
  %41 = load i32, i32* @real_gid, align 4
  %call70 = call i32 @setgid(i32 %41) #4
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.69
  %call73 = call i32* @__errno_location() #8
  %42 = load i32, i32* %call73, align 4
  call void (i32, i8*, ...) @Panic(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #9
  unreachable

if.end.74:                                        ; preds = %if.end.69
  %43 = load i32, i32* @real_uid, align 4
  store i32 %43, i32* @eff_uid, align 4
  %44 = load i32, i32* @real_gid, align 4
  store i32 %44, i32* @eff_gid, align 4
  br label %do.body.75

do.body.75:                                       ; preds = %if.end.74
  br label %do.end.76

do.end.76:                                        ; preds = %do.body.75
  store i32 0, i32* @MasterPid, align 4
  %45 = load i8*, i8** @SockName, align 8
  store i8* %45, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.76
  %46 = load i8*, i8** %s, align 8
  %47 = load i8, i8* %46, align 1
  %tobool77 = icmp ne i8 %47, 0
  br i1 %tobool77, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i8*, i8** %s, align 8
  %49 = load i8, i8* %48, align 1
  %conv78 = sext i8 %49 to i32
  %cmp79 = icmp sgt i32 %conv78, 57
  br i1 %cmp79, label %if.then.85, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %for.body
  %50 = load i8*, i8** %s, align 8
  %51 = load i8, i8* %50, align 1
  %conv82 = sext i8 %51 to i32
  %cmp83 = icmp slt i32 %conv82, 48
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %lor.lhs.false.81, %for.body
  br label %for.end

if.end.86:                                        ; preds = %lor.lhs.false.81
  %52 = load i32, i32* @MasterPid, align 4
  %mul = mul nsw i32 10, %52
  %53 = load i8*, i8** %s, align 8
  %54 = load i8, i8* %53, align 1
  %conv87 = sext i8 %54 to i32
  %sub = sub nsw i32 %conv87, 48
  %add88 = add nsw i32 %mul, %sub
  store i32 %add88, i32* @MasterPid, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %55 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.85, %for.cond
  br label %do.body.89

do.body.89:                                       ; preds = %for.end
  br label %do.end.90

do.end.90:                                        ; preds = %do.body.89
  br label %do.body.91

do.body.91:                                       ; preds = %do.end.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.body.91
  %call93 = call i32 @stat(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), %struct.stat* %st) #4
  %cmp94 = icmp eq i32 %call93, -1
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %do.end.92
  %call97 = call i32* @__errno_location() #8
  %56 = load i32, i32* %call97, align 4
  call void (i32, i8*, ...) @Panic(i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #9
  unreachable

if.end.98:                                        ; preds = %do.end.92
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %57 = load i32, i32* %st_mode, align 4
  %and99 = and i32 %57, 384
  %cmp100 = icmp ne i32 %and99, 384
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.98
  %st_mode103 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %58 = load i32, i32* %st_mode103, align 4
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i32 %58) #9
  unreachable

if.end.104:                                       ; preds = %if.end.98
  %59 = load i32, i32* @xflag, align 4
  %tobool105 = icmp ne i32 %59, 0
  br i1 %tobool105, label %land.lhs.true.108, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %if.end.104
  %60 = load i32, i32* @rflag, align 4
  %tobool107 = icmp ne i32 %60, 0
  br i1 %tobool107, label %land.lhs.true.108, label %if.end.116

land.lhs.true.108:                                ; preds = %lor.lhs.false.106, %if.end.104
  %61 = load i32, i32* @dflag, align 4
  %tobool109 = icmp ne i32 %61, 0
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.116

land.lhs.true.110:                                ; preds = %land.lhs.true.108
  %st_mode111 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %62 = load i32, i32* %st_mode111, align 4
  %and112 = and i32 %62, 448
  %cmp113 = icmp eq i32 %and112, 384
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %land.lhs.true.110
  store i32 0, i32* @dflag, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %land.lhs.true.110, %land.lhs.true.108, %lor.lhs.false.106
  %63 = load i32, i32* @dflag, align 4
  %tobool117 = icmp ne i32 %63, 0
  br i1 %tobool117, label %land.lhs.true.120, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.end.116
  %64 = load i32, i32* @xflag, align 4
  %tobool119 = icmp ne i32 %64, 0
  br i1 %tobool119, label %if.end.130, label %land.lhs.true.120

land.lhs.true.120:                                ; preds = %lor.lhs.false.118, %if.end.116
  %st_mode121 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %65 = load i32, i32* %st_mode121, align 4
  %and122 = and i32 %65, 448
  %66 = load i32, i32* @dflag, align 4
  %tobool123 = icmp ne i32 %66, 0
  %cond124 = select i1 %tobool123, i32 448, i32 384
  %cmp125 = icmp ne i32 %and122, %cond124
  br i1 %cmp125, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %land.lhs.true.120
  %67 = load i32, i32* @dflag, align 4
  %tobool128 = icmp ne i32 %67, 0
  %cond129 = select i1 %tobool128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* %cond129) #9
  unreachable

if.end.130:                                       ; preds = %land.lhs.true.120, %lor.lhs.false.118
  %68 = load i32, i32* @dflag, align 4
  %tobool131 = icmp ne i32 %68, 0
  br i1 %tobool131, label %land.lhs.true.132, label %if.end.177

land.lhs.true.132:                                ; preds = %if.end.130
  %69 = load i32, i32* %how.addr, align 4
  %cmp133 = icmp eq i32 %69, 4
  br i1 %cmp133, label %if.then.138, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %land.lhs.true.132
  %70 = load i32, i32* %how.addr, align 4
  %cmp136 = icmp eq i32 %70, 5
  br i1 %cmp136, label %if.then.138, label %if.end.177

if.then.138:                                      ; preds = %lor.lhs.false.135, %land.lhs.true.132
  %call139 = call i32 @getpid() #4
  %m140 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %detach = bitcast %union.anon* %m140 to %struct.anon.1*
  %dpid = getelementptr inbounds %struct.anon.1, %struct.anon.1* %detach, i32 0, i32 1
  store i32 %call139, i32* %dpid, align 4
  %m141 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %detach142 = bitcast %union.anon* %m141 to %struct.anon.1*
  %duser = getelementptr inbounds %struct.anon.1, %struct.anon.1* %detach142, i32 0, i32 0
  %arraydecay143 = getelementptr inbounds [257 x i8], [257 x i8]* %duser, i32 0, i32 0
  %71 = load i8*, i8** @LoginName, align 8
  %call144 = call i8* @strncpy(i8* %arraydecay143, i8* %71, i64 256) #4
  %m145 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %detach146 = bitcast %union.anon* %m145 to %struct.anon.1*
  %duser147 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %detach146, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [257 x i8], [257 x i8]* %duser147, i32 0, i64 256
  store i8 0, i8* %arrayidx148, align 1
  %72 = load i32, i32* @dflag, align 4
  %cmp149 = icmp eq i32 %72, 2
  br i1 %cmp149, label %if.then.151, label %if.else.153

if.then.151:                                      ; preds = %if.then.138
  %type152 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 1
  store i32 5, i32* %type152, align 4
  br label %if.end.155

if.else.153:                                      ; preds = %if.then.138
  %type154 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 1
  store i32 4, i32* %type154, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.153, %if.then.151
  %call156 = call void (i32)* @xsignal(i32 18, void (i32)* @AttachSigCont)
  %73 = load i32, i32* %lasts, align 4
  %call157 = call i32 @WriteMessage(i32 %73, %struct.msg* %m)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.end.155
  %call160 = call i32* @__errno_location() #8
  %74 = load i32, i32* %call160, align 4
  call void (i32, i8*, ...) @Panic(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)) #9
  unreachable

if.end.161:                                       ; preds = %if.end.155
  %75 = load i32, i32* %lasts, align 4
  %call162 = call i32 @close(i32 %75)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.161
  %76 = load i32, i32* @ContinuePlease, align 4
  %tobool163 = icmp ne i32 %76, 0
  %lnot = xor i1 %tobool163, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call164 = call i32 @pause()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call165 = call void (i32)* @xsignal(i32 18, void (i32)* null)
  store i32 0, i32* @ContinuePlease, align 4
  %77 = load i32, i32* %how.addr, align 4
  %cmp166 = icmp ne i32 %77, 2
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.169:                                       ; preds = %while.end
  %call170 = call i32 @sleep(i32 1)
  %call171 = call i32 @MakeClientSocket(i32 0)
  store i32 %call171, i32* %lasts, align 4
  %cmp172 = icmp eq i32 %call171, -1
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.169
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0)) #9
  unreachable

if.end.175:                                       ; preds = %if.end.169
  %78 = load i32, i32* %how.addr, align 4
  %type176 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 1
  store i32 %78, i32* %type176, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.175, %lor.lhs.false.135, %if.end.130
  br label %do.body.178

do.body.178:                                      ; preds = %if.end.177
  br label %do.end.179

do.end.179:                                       ; preds = %do.body.178
  %m180 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach = bitcast %union.anon* %m180 to %struct.anon.0*
  %envterm = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach, i32 0, i32 8
  %arraydecay181 = getelementptr inbounds [33 x i8], [33 x i8]* %envterm, i32 0, i32 0
  %79 = load i8*, i8** @attach_term, align 8
  %call182 = call i8* @strncpy(i8* %arraydecay181, i8* %79, i64 32) #4
  %m183 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach184 = bitcast %union.anon* %m183 to %struct.anon.0*
  %envterm185 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach184, i32 0, i32 8
  %arrayidx186 = getelementptr inbounds [33 x i8], [33 x i8]* %envterm185, i32 0, i64 32
  store i8 0, i8* %arrayidx186, align 1
  br label %do.body.187

do.body.187:                                      ; preds = %do.end.179
  br label %do.end.188

do.end.188:                                       ; preds = %do.body.187
  %m189 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach190 = bitcast %union.anon* %m189 to %struct.anon.0*
  %auser = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach190, i32 0, i32 0
  %arraydecay191 = getelementptr inbounds [257 x i8], [257 x i8]* %auser, i32 0, i32 0
  %80 = load i8*, i8** @LoginName, align 8
  %call192 = call i8* @strncpy(i8* %arraydecay191, i8* %80, i64 256) #4
  %m193 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach194 = bitcast %union.anon* %m193 to %struct.anon.0*
  %auser195 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach194, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [257 x i8], [257 x i8]* %auser195, i32 0, i64 256
  store i8 0, i8* %arrayidx196, align 1
  %81 = load i32, i32* @DefaultEsc, align 4
  %m197 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach198 = bitcast %union.anon* %m197 to %struct.anon.0*
  %esc = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach198, i32 0, i32 6
  store i32 %81, i32* %esc, align 4
  %82 = load i32, i32* @DefaultMetaEsc, align 4
  %m199 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach200 = bitcast %union.anon* %m199 to %struct.anon.0*
  %meta_esc = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach200, i32 0, i32 7
  store i32 %82, i32* %meta_esc, align 4
  %m201 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach202 = bitcast %union.anon* %m201 to %struct.anon.0*
  %preselect = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach202, i32 0, i32 5
  %arraydecay203 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect, i32 0, i32 0
  %83 = load i8*, i8** @preselect, align 8
  %tobool204 = icmp ne i8* %83, null
  br i1 %tobool204, label %cond.true.205, label %cond.false.206

cond.true.205:                                    ; preds = %do.end.188
  %84 = load i8*, i8** @preselect, align 8
  br label %cond.end.207

cond.false.206:                                   ; preds = %do.end.188
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.206, %cond.true.205
  %cond208 = phi i8* [ %84, %cond.true.205 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), %cond.false.206 ]
  %call209 = call i8* @strncpy(i8* %arraydecay203, i8* %cond208, i64 19) #4
  %m210 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach211 = bitcast %union.anon* %m210 to %struct.anon.0*
  %preselect212 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach211, i32 0, i32 5
  %arrayidx213 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect212, i32 0, i64 19
  store i8 0, i8* %arrayidx213, align 1
  %call214 = call i32 @getpid() #4
  %m215 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach216 = bitcast %union.anon* %m215 to %struct.anon.0*
  %apid = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach216, i32 0, i32 1
  store i32 %call214, i32* %apid, align 4
  %85 = load i32, i32* @adaptflag, align 4
  %m217 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach218 = bitcast %union.anon* %m217 to %struct.anon.0*
  %adaptflag = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach218, i32 0, i32 2
  store i32 %85, i32* %adaptflag, align 4
  %m219 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach220 = bitcast %union.anon* %m219 to %struct.anon.0*
  %columns = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach220, i32 0, i32 4
  store i32 0, i32* %columns, align 4
  %m221 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach222 = bitcast %union.anon* %m221 to %struct.anon.0*
  %lines = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach222, i32 0, i32 3
  store i32 0, i32* %lines, align 4
  %call223 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #4
  store i8* %call223, i8** %s, align 8
  %tobool224 = icmp ne i8* %call223, null
  br i1 %tobool224, label %if.then.225, label %if.end.230

if.then.225:                                      ; preds = %cond.end.207
  %86 = load i8*, i8** %s, align 8
  %call226 = call i32 @atoi(i8* %86) #10
  %m227 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach228 = bitcast %union.anon* %m227 to %struct.anon.0*
  %lines229 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach228, i32 0, i32 3
  store i32 %call226, i32* %lines229, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.225, %cond.end.207
  %call231 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)) #4
  store i8* %call231, i8** %s, align 8
  %tobool232 = icmp ne i8* %call231, null
  br i1 %tobool232, label %if.then.233, label %if.end.238

if.then.233:                                      ; preds = %if.end.230
  %87 = load i8*, i8** %s, align 8
  %call234 = call i32 @atoi(i8* %87) #10
  %m235 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach236 = bitcast %union.anon* %m235 to %struct.anon.0*
  %columns237 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach236, i32 0, i32 4
  store i32 %call234, i32* %columns237, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.233, %if.end.230
  %88 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 18), align 4
  %cmp239 = icmp sgt i32 %88, 0
  br i1 %cmp239, label %cond.true.241, label %cond.false.243

cond.true.241:                                    ; preds = %if.end.238
  %89 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 18), align 4
  %add242 = add nsw i32 %89, 1
  br label %cond.end.244

cond.false.243:                                   ; preds = %if.end.238
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.243, %cond.true.241
  %cond245 = phi i32 [ %add242, %cond.true.241 ], [ 0, %cond.false.243 ]
  %m246 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach247 = bitcast %union.anon* %m246 to %struct.anon.0*
  %encoding = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach247, i32 0, i32 9
  store i32 %cond245, i32* %encoding, align 4
  %90 = load i32, i32* @dflag, align 4
  %cmp248 = icmp eq i32 %90, 2
  br i1 %cmp248, label %if.then.250, label %if.else.253

if.then.250:                                      ; preds = %cond.end.244
  %m251 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach252 = bitcast %union.anon* %m251 to %struct.anon.0*
  %detachfirst = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach252, i32 0, i32 10
  store i32 5, i32* %detachfirst, align 4
  br label %if.end.264

if.else.253:                                      ; preds = %cond.end.244
  %91 = load i32, i32* @dflag, align 4
  %tobool254 = icmp ne i32 %91, 0
  br i1 %tobool254, label %if.then.255, label %if.else.259

if.then.255:                                      ; preds = %if.else.253
  %m256 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach257 = bitcast %union.anon* %m256 to %struct.anon.0*
  %detachfirst258 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach257, i32 0, i32 10
  store i32 4, i32* %detachfirst258, align 4
  br label %if.end.263

if.else.259:                                      ; preds = %if.else.253
  %m260 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach261 = bitcast %union.anon* %m260 to %struct.anon.0*
  %detachfirst262 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach261, i32 0, i32 10
  store i32 2, i32* %detachfirst262, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.259, %if.then.255
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.then.250
  %92 = load i8*, i8** @multi, align 8
  %tobool265 = icmp ne i8* %92, null
  br i1 %tobool265, label %land.lhs.true.266, label %if.end.274

land.lhs.true.266:                                ; preds = %if.end.264
  %93 = load i32, i32* %how.addr, align 4
  %cmp267 = icmp eq i32 %93, 2
  br i1 %cmp267, label %if.then.272, label %lor.lhs.false.269

lor.lhs.false.269:                                ; preds = %land.lhs.true.266
  %94 = load i32, i32* %how.addr, align 4
  %cmp270 = icmp eq i32 %94, 3
  br i1 %cmp270, label %if.then.272, label %if.end.274

if.then.272:                                      ; preds = %lor.lhs.false.269, %land.lhs.true.266
  %call273 = call void (i32)* @xsignal(i32 18, void (i32)* @AttachSigCont)
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.272, %lor.lhs.false.269, %if.end.264
  %95 = load i32, i32* %lasts, align 4
  %call275 = call i32 @WriteMessage(i32 %95, %struct.msg* %m)
  %tobool276 = icmp ne i32 %call275, 0
  br i1 %tobool276, label %if.then.277, label %if.end.279

if.then.277:                                      ; preds = %if.end.274
  %call278 = call i32* @__errno_location() #8
  %96 = load i32, i32* %call278, align 4
  call void (i32, i8*, ...) @Panic(i32 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)) #9
  unreachable

if.end.279:                                       ; preds = %if.end.274
  %97 = load i32, i32* %lasts, align 4
  %call280 = call i32 @close(i32 %97)
  br label %do.body.281

do.body.281:                                      ; preds = %if.end.279
  br label %do.end.282

do.end.282:                                       ; preds = %do.body.281
  %98 = load i8*, i8** @multi, align 8
  %tobool283 = icmp ne i8* %98, null
  br i1 %tobool283, label %land.lhs.true.284, label %if.end.307

land.lhs.true.284:                                ; preds = %do.end.282
  %99 = load i32, i32* %how.addr, align 4
  %cmp285 = icmp eq i32 %99, 2
  br i1 %cmp285, label %if.then.290, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %land.lhs.true.284
  %100 = load i32, i32* %how.addr, align 4
  %cmp288 = icmp eq i32 %100, 3
  br i1 %cmp288, label %if.then.290, label %if.end.307

if.then.290:                                      ; preds = %lor.lhs.false.287, %land.lhs.true.284
  br label %while.cond.291

while.cond.291:                                   ; preds = %while.body.294, %if.then.290
  %101 = load i32, i32* @ContinuePlease, align 4
  %tobool292 = icmp ne i32 %101, 0
  %lnot293 = xor i1 %tobool292, true
  br i1 %lnot293, label %while.body.294, label %while.end.296

while.body.294:                                   ; preds = %while.cond.291
  %call295 = call i32 @pause()
  br label %while.cond.291

while.end.296:                                    ; preds = %while.cond.291
  %call297 = call void (i32)* @xsignal(i32 18, void (i32)* null)
  store i32 0, i32* @ContinuePlease, align 4
  %102 = load i32, i32* @own_uid, align 4
  call void @xseteuid(i32 %102)
  %103 = load i32, i32* @tty_oldmode, align 4
  %cmp298 = icmp sge i32 %103, 0
  br i1 %cmp298, label %if.then.300, label %if.end.306

if.then.300:                                      ; preds = %while.end.296
  %104 = load i8*, i8** @attach_tty, align 8
  %105 = load i32, i32* @tty_oldmode, align 4
  %call301 = call i32 @chmod(i8* %104, i32 %105) #4
  %tobool302 = icmp ne i32 %call301, 0
  br i1 %tobool302, label %if.then.303, label %if.end.305

if.then.303:                                      ; preds = %if.then.300
  %call304 = call i32* @__errno_location() #8
  %106 = load i32, i32* %call304, align 4
  %107 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %107) #9
  unreachable

if.end.305:                                       ; preds = %if.then.300
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %while.end.296
  store i32 -1, i32* @tty_oldmode, align 4
  %108 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %108)
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %lor.lhs.false.287, %do.end.282
  store i32 0, i32* @rflag, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.307, %if.then.168, %if.then.32, %if.end.20
  %109 = load i32, i32* %retval
  ret i32 %109
}

; Function Attrs: nounwind
declare i32 @setresuid(i32, i32, i32) #1

; Function Attrs: noreturn
declare void @Panic(i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare i32 @MakeClientSocket(i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @WriteMessage(i32 %s, %struct.msg* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %m.addr = alloca %struct.msg*, align 8
  %r = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  store %struct.msg* %m, %struct.msg** %m.addr, align 8
  store i32 12584, i32* %l, align 4
  %0 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %type = getelementptr inbounds %struct.msg, %struct.msg* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %s.addr, align 4
  %3 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %4 = load i32, i32* @attach_fd, align 4
  %call = call i32 @SendAttachMsg(i32 %2, %struct.msg* %3, i32 %4)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.then.10, %if.end
  %5 = load i32, i32* %l, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %s.addr, align 4
  %7 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %8 = bitcast %struct.msg* %7 to i8*
  %9 = load i32, i32* %l, align 4
  %conv = sext i32 %9 to i64
  %sub = sub i64 12584, %conv
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %sub
  %10 = load i32, i32* %l, align 4
  %conv2 = sext i32 %10 to i64
  %call3 = call i64 @write(i32 %6, i8* %add.ptr, i64 %conv2)
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %r, align 4
  %11 = load i32, i32* %r, align 4
  %cmp5 = icmp eq i32 %11, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %while.body
  %call7 = call i32* @__errno_location() #8
  %12 = load i32, i32* %call7, align 4
  %cmp8 = icmp eq i32 %12, 4
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  br label %while.cond

if.end.11:                                        ; preds = %land.lhs.true, %while.body
  %13 = load i32, i32* %r, align 4
  %cmp12 = icmp eq i32 %13, -1
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %14 = load i32, i32* %r, align 4
  %cmp14 = icmp eq i32 %14, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false, %if.end.11
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false
  %15 = load i32, i32* %r, align 4
  %16 = load i32, i32* %l, align 4
  %sub18 = sub nsw i32 %16, %15
  store i32 %sub18, i32* %l, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.16, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @close(i32) #5

declare i32 @FindSocket(i32*, i32*, i32*, i8*) #5

; Function Attrs: noreturn
declare void @eexit(i32) #2

; Function Attrs: nounwind
declare i32 @setuid(i32) #1

declare void @xseteuid(i32) #5

; Function Attrs: nounwind
declare i32 @setgid(i32) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare i32 @getpid() #1

declare void (i32)* @xsignal(i32, void (i32)*) #5

; Function Attrs: nounwind uwtable
define internal void @AttachSigCont(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* @ContinuePlease, align 4
  ret void
}

declare i32 @pause() #5

declare i32 @sleep(i32) #5

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

; Function Attrs: nounwind uwtable
define void @AttacherFinit(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  %statb = alloca %struct.stat, align 8
  %m = alloca %struct.msg, align 4
  %s = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call void (i32)* @xsignal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*))
  %call1 = call i32 @stat(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), %struct.stat* %statb) #4
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %do.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 3
  %0 = load i32, i32* %st_mode, align 4
  %and = and i32 %0, 511
  %cmp2 = icmp ne i32 %and, 384
  br i1 %cmp2, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %1 = bitcast %struct.msg* %m to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 12584, i32 1, i1 false)
  %m_tty = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty, i32 0, i32 0
  %2 = load i8*, i8** @attach_tty, align 8
  %call5 = call i8* @strncpy(i8* %arraydecay, i8* %2, i64 4095) #4
  %m_tty6 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty6, i32 0, i64 4095
  store i8 0, i8* %arrayidx, align 1
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.4
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  %call9 = call i32 @getpid() #4
  %m10 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %detach = bitcast %union.anon* %m10 to %struct.anon.1*
  %dpid = getelementptr inbounds %struct.anon.1, %struct.anon.1* %detach, i32 0, i32 1
  store i32 %call9, i32* %dpid, align 4
  %type = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 1
  store i32 7, i32* %type, align 4
  %protocol_revision = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 0
  store i32 1836279557, i32* %protocol_revision, align 4
  %call11 = call i32 @MakeClientSocket(i32 0)
  store i32 %call11, i32* %s, align 4
  %cmp12 = icmp sge i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %do.end.8
  %3 = load i32, i32* %s, align 4
  %call14 = call i32 @WriteMessage(i32 %3, %struct.msg* %m)
  %4 = load i32, i32* %s, align 4
  %call15 = call i32 @close(i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %do.end.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %land.lhs.true, %do.end
  %5 = load i32, i32* @tty_oldmode, align 4
  %cmp17 = icmp sge i32 %5, 0
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end.16
  %6 = load i32, i32* @own_uid, align 4
  %call19 = call i32 @setuid(i32 %6) #4
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.18
  %call21 = call i32* @__errno_location() #8
  %7 = load i32, i32* %call21, align 4
  call void (i32, i8*, ...) @Panic(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #9
  unreachable

if.end.22:                                        ; preds = %if.then.18
  %8 = load i8*, i8** @attach_tty, align 8
  %9 = load i32, i32* @tty_oldmode, align 4
  %call23 = call i32 @chmod(i8* %8, i32 %9) #4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %if.end.16
  call void @exit(i32 0) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind uwtable
define void @Attacher() #0 {
entry:
  %call = call void (i32)* @xsignal(i32 1, void (i32)* @AttacherFinit)
  %call1 = call void (i32)* @xsignal(i32 1, void (i32)* @AttacherFinit)
  %call2 = call void (i32)* @xsignal(i32 10, void (i32)* @AttacherFinitBye)
  %call3 = call void (i32)* @xsignal(i32 12, void (i32)* @DoLock)
  %call4 = call void (i32)* @xsignal(i32 2, void (i32)* @AttacherSigInt)
  %call5 = call void (i32)* @xsignal(i32 20, void (i32)* @SigStop)
  %call6 = call void (i32)* @xsignal(i32 28, void (i32)* @AttacherWinch)
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* @dflag, align 4
  store i32 1, i32* @xflag, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.39, %do.end
  %call7 = call void (i32)* @xsignal(i32 14, void (i32)* @AttacherSigAlarm)
  %call8 = call i32 @alarm(i32 15) #4
  %call9 = call i32 @pause()
  %call10 = call i32 @alarm(i32 0) #4
  %0 = load i32, i32* @MasterPid, align 4
  %call11 = call i32 @kill(i32 %0, i32 0) #4
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %call12 = call i32* @__errno_location() #8
  %1 = load i32, i32* %call12, align 4
  %cmp13 = icmp ne i32 %1, 1
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.body.14

do.body.14:                                       ; preds = %if.then
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  %2 = load i32, i32* @AttacherPanic, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @AttacherPanic, align 4
  br label %if.end

if.end:                                           ; preds = %do.end.15, %land.lhs.true, %for.cond
  %3 = load i32, i32* @AttacherPanic, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end
  %call17 = call i32 (i32, i32, ...) @fcntl(i32 0, i32 4, i32 0)
  call void @SetTTY(i32 0, %struct.mode* @attach_Mode)
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0))
  call void @eexit(i32 1) #9
  unreachable

if.end.19:                                        ; preds = %if.end
  %4 = load i32, i32* @SuspendPlease, align 4
  %tobool20 = icmp ne i32 %4, 0
  br i1 %tobool20, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %if.end.19
  store i32 0, i32* @SuspendPlease, align 4
  %call22 = call void (i32)* @xsignal(i32 20, void (i32)* null)
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %do.body.23
  %call25 = call i32 @getpid() #4
  %call26 = call i32 @kill(i32 %call25, i32 20) #4
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.24
  br label %do.end.28

do.end.28:                                        ; preds = %do.body.27
  %call29 = call void (i32)* @xsignal(i32 20, void (i32)* @SigStop)
  %call30 = call i32 @Attach(i32 3)
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.28, %if.end.19
  %5 = load i32, i32* @LockPlease, align 4
  %tobool32 = icmp ne i32 %5, 0
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  store i32 0, i32* @LockPlease, align 4
  call void @LockTerminal()
  %call34 = call i32 @Attach(i32 3)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  %6 = load i32, i32* @SigWinchPlease, align 4
  %tobool36 = icmp ne i32 %6, 0
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.35
  store i32 0, i32* @SigWinchPlease, align 4
  %call38 = call i32 @Attach(i32 6)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.35
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AttacherFinitBye(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  %ppid = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* @real_gid, align 4
  %call = call i32 @setgid(i32 %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %call1 = call i32* @__errno_location() #8
  %1 = load i32, i32* %call1, align 4
  call void (i32, i8*, ...) @Panic(i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %do.end
  %2 = load i32, i32* @own_uid, align 4
  %call2 = call i32 @setuid(i32 %2) #4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32* @__errno_location() #8
  %3 = load i32, i32* %call5, align 4
  call void (i32, i8*, ...) @Panic(i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #9
  unreachable

if.end.6:                                         ; preds = %if.end
  %call7 = call i32 @getppid() #4
  store i32 %call7, i32* %ppid, align 4
  %cmp = icmp sgt i32 %call7, 1
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %4 = load i32, i32* %ppid, align 4
  call void @Kill(i32 %4, i32 1)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  call void @exit(i32 0) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DoLock(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* @LockPlease, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AttacherSigInt(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  %call = call void (i32)* @xsignal(i32 2, void (i32)* @AttacherSigInt)
  %0 = load i32, i32* @MasterPid, align 4
  call void @Kill(i32 %0, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SigStop(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* @SuspendPlease, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AttacherWinch(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* @SigWinchPlease, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AttacherSigAlarm(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @alarm(i32) #1

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

declare i32 @fcntl(i32, i32, ...) #5

declare void @SetTTY(i32, %struct.mode*) #5

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal void @LockTerminal() #0 {
entry:
  %prg = alloca i8*, align 8
  %sig = alloca i32, align 4
  %pid = alloca i32, align 4
  %sigs = alloca [65 x void (i32)*], align 16
  %wstat = alloca i32, align 4
  %wret = alloca i32, align 4
  %agg.tmp = alloca %union.__WAIT_STATUS, align 8
  %.compoundliteral = alloca %union.anon.5, align 4
  %.compoundliteral44 = alloca %union.anon.6, align 4
  %.compoundliteral48 = alloca %union.anon.7, align 4
  %.compoundliteral57 = alloca %union.anon.8, align 4
  store i32 1, i32* %sig, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %sig, align 4
  %cmp = icmp slt i32 %0, 65
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %sig, align 4
  %2 = load i32, i32* %sig, align 4
  %cmp1 = icmp eq i32 %2, 17
  %cond = select i1 %cmp1, void (i32)* null, void (i32)* inttoptr (i64 1 to void (i32)*)
  %call = call void (i32)* @xsignal(i32 %1, void (i32)* %cond)
  %3 = load i32, i32* %sig, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [65 x void (i32)*], [65 x void (i32)*]* %sigs, i32 0, i64 %idxprom
  store void (i32)* %call, void (i32)** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %sig, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %sig, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call void (i32)* @xsignal(i32 1, void (i32)* @LockHup)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  %call4 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)) #4
  store i8* %call4, i8** %prg, align 8
  %5 = load i8*, i8** %prg, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.else.71

land.lhs.true:                                    ; preds = %for.end
  %6 = load i8*, i8** %prg, align 8
  %call5 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)) #10
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.71

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %7 = load i8*, i8** %prg, align 8
  %call8 = call i32 @access(i8* %7, i32 1) #4
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else.71, label %if.then

if.then:                                          ; preds = %land.lhs.true.7
  %call10 = call void (i32)* @xsignal(i32 17, void (i32)* null)
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %call11 = call i32 @fork() #4
  store i32 %call11, i32* %pid, align 4
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %do.end
  %8 = load i32, i32* @real_gid, align 4
  %call14 = call i32 @setgid(i32 %8) #4
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.13
  %call17 = call i32* @__errno_location() #8
  %9 = load i32, i32* %call17, align 4
  call void (i32, i8*, ...) @Panic(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then.13
  %10 = load i32, i32* @own_uid, align 4
  %call18 = call i32 @setuid(i32 %10) #4
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end
  %call21 = call i32* @__errno_location() #8
  %11 = load i32, i32* %call21, align 4
  call void (i32, i8*, ...) @Panic(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #9
  unreachable

if.end.22:                                        ; preds = %if.end
  call void @closeallfiles(i32 0)
  %12 = load i8*, i8** %prg, align 8
  %call23 = call i32 (i8*, i8*, ...) @execl(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* null) #4
  %call24 = call i32* @__errno_location() #8
  %13 = load i32, i32* %call24, align 4
  call void @exit(i32 %13) #11
  unreachable

if.end.25:                                        ; preds = %do.end
  %14 = load i32, i32* %pid, align 4
  %cmp26 = icmp eq i32 %14, -1
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.25
  %call28 = call i32* @__errno_location() #8
  %15 = load i32, i32* %call28, align 4
  call void (i32, i8*, ...) @Msg(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.70

if.else:                                          ; preds = %if.end.25
  %call29 = call i32* @__errno_location() #8
  store i32 0, i32* %call29, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %__iptr = bitcast %union.__WAIT_STATUS* %agg.tmp to i32**
  store i32* %wstat, i32** %__iptr, align 8
  %coerce.dive = getelementptr %union.__WAIT_STATUS, %union.__WAIT_STATUS* %agg.tmp, i32 0, i32 0
  %16 = load %union.wait*, %union.wait** %coerce.dive, align 8
  %call30 = call i32 @wait(%union.wait* %16)
  store i32 %call30, i32* %wret, align 4
  %17 = load i32, i32* %pid, align 4
  %cmp31 = icmp ne i32 %call30, %17
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %18 = load i32, i32* %wret, align 4
  %cmp32 = icmp eq i32 %18, -1
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %call33 = call i32* @__errno_location() #8
  %19 = load i32, i32* %call33, align 4
  %cmp34 = icmp eq i32 %19, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %20 = phi i1 [ false, %lor.rhs ], [ %cmp34, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %21 = phi i1 [ true, %while.cond ], [ %20, %land.end ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %call35 = call i32* @__errno_location() #8
  store i32 0, i32* %call35, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %call36 = call i32* @__errno_location() #8
  %22 = load i32, i32* %call36, align 4
  %tobool37 = icmp ne i32 %22, 0
  br i1 %tobool37, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %while.end
  %call39 = call i32* @__errno_location() #8
  %23 = load i32, i32* %call39, align 4
  call void (i32, i8*, ...) @Msg(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0))
  %call40 = call i32 @sleep(i32 2)
  br label %if.end.69

if.else.41:                                       ; preds = %while.end
  %__in = bitcast %union.anon.5* %.compoundliteral to i32*
  %24 = load i32, i32* %wstat, align 4
  store i32 %24, i32* %__in, align 4
  %__i = bitcast %union.anon.5* %.compoundliteral to i32*
  %25 = load i32, i32* %__i, align 4
  %and = and i32 %25, 127
  %cmp42 = icmp ne i32 %and, 0
  br i1 %cmp42, label %if.then.43, label %if.else.56

if.then.43:                                       ; preds = %if.else.41
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** %prg, align 8
  %__in45 = bitcast %union.anon.6* %.compoundliteral44 to i32*
  %28 = load i32, i32* %wstat, align 4
  store i32 %28, i32* %__in45, align 4
  %__i46 = bitcast %union.anon.6* %.compoundliteral44 to i32*
  %29 = load i32, i32* %__i46, align 4
  %and47 = and i32 %29, 127
  %__in49 = bitcast %union.anon.7* %.compoundliteral48 to i32*
  %30 = load i32, i32* %wstat, align 4
  store i32 %30, i32* %__in49, align 4
  %__i50 = bitcast %union.anon.7* %.compoundliteral48 to i32*
  %31 = load i32, i32* %__i50, align 4
  %and51 = and i32 %31, 128
  %tobool52 = icmp ne i32 %and51, 0
  %cond53 = select i1 %tobool52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i32 0, i32 0), i8* %27, i32 %and47, i8* %cond53)
  %call55 = call i32 @sleep(i32 2)
  br label %if.end.68

if.else.56:                                       ; preds = %if.else.41
  %__in58 = bitcast %union.anon.8* %.compoundliteral57 to i32*
  %32 = load i32, i32* %wstat, align 4
  store i32 %32, i32* %__in58, align 4
  %__i59 = bitcast %union.anon.8* %.compoundliteral57 to i32*
  %33 = load i32, i32* %__i59, align 4
  %and60 = and i32 %33, 65280
  %shr = ashr i32 %and60, 8
  %tobool61 = icmp ne i32 %shr, 0
  br i1 %tobool61, label %if.then.62, label %if.else.65

if.then.62:                                       ; preds = %if.else.56
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.body.63
  br label %if.end.67

if.else.65:                                       ; preds = %if.else.56
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @LockEnd, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %do.end.64
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.43
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.38
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.27
  br label %if.end.80

if.else.71:                                       ; preds = %land.lhs.true.7, %land.lhs.true, %for.end
  %34 = load i8*, i8** %prg, align 8
  %tobool72 = icmp ne i8* %34, null
  br i1 %tobool72, label %if.then.73, label %if.else.76

if.then.73:                                       ; preds = %if.else.71
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  br label %do.end.75

do.end.75:                                        ; preds = %do.body.74
  br label %if.end.79

if.else.76:                                       ; preds = %if.else.71
  br label %do.body.77

do.body.77:                                       ; preds = %if.else.76
  br label %do.end.78

do.end.78:                                        ; preds = %do.body.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %do.end.75
  call void @screen_builtin_lck()
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.70
  store i32 1, i32* %sig, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.92, %if.end.80
  %35 = load i32, i32* %sig, align 4
  %cmp82 = icmp slt i32 %35, 65
  br i1 %cmp82, label %for.body.83, label %for.end.94

for.body.83:                                      ; preds = %for.cond.81
  %36 = load i32, i32* %sig, align 4
  %idxprom84 = sext i32 %36 to i64
  %arrayidx85 = getelementptr inbounds [65 x void (i32)*], [65 x void (i32)*]* %sigs, i32 0, i64 %idxprom84
  %37 = load void (i32)*, void (i32)** %arrayidx85, align 8
  %cmp86 = icmp ne void (i32)* %37, inttoptr (i64 -1 to void (i32)*)
  br i1 %cmp86, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %for.body.83
  %38 = load i32, i32* %sig, align 4
  %39 = load i32, i32* %sig, align 4
  %idxprom88 = sext i32 %39 to i64
  %arrayidx89 = getelementptr inbounds [65 x void (i32)*], [65 x void (i32)*]* %sigs, i32 0, i64 %idxprom88
  %40 = load void (i32)*, void (i32)** %arrayidx89, align 8
  %call90 = call void (i32)* @xsignal(i32 %38, void (i32)* %40)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %for.body.83
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %41 = load i32, i32* %sig, align 4
  %inc93 = add nsw i32 %41, 1
  store i32 %inc93, i32* %sig, align 4
  br label %for.cond.81

for.end.94:                                       ; preds = %for.cond.81
  ret void
}

; Function Attrs: nounwind uwtable
define void @SendCmdMessage(i8* %sty, i8* %match, i8** %av, i32 %query) #0 {
entry:
  %sty.addr = alloca i8*, align 8
  %match.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %query.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %m = alloca %struct.msg, align 4
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %n = alloca i32, align 4
  %sp = alloca i8*, align 8
  %query73 = alloca [8 x i8], align 1
  %c = alloca i8, align 1
  %r = alloca i32, align 4
  store i8* %sty, i8** %sty.addr, align 8
  store i8* %match, i8** %match.addr, align 8
  store i8** %av, i8*** %av.addr, align 8
  store i32 %query, i32* %query.addr, align 4
  %0 = load i8*, i8** %sty.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %match.addr, align 8
  %call = call i32 @FindSocket(i32* %s, i32* null, i32* null, i8* %1)
  store i32 %call, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp ne i32 %3, 1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0)) #9
  unreachable

if.end.5:                                         ; preds = %if.end
  br label %if.end.21

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %sty.addr, align 8
  %call6 = call i64 @strlen(i8* %4) #10
  %cmp7 = icmp ugt i64 %call6, 255
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  %5 = load i8*, i8** %sty.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 255
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.else
  %6 = load i8*, i8** %sty.addr, align 8
  %call10 = call i64 @strlen(i8* %6) #10
  %cmp11 = icmp ugt i64 %call10, 1535
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %7 = load i8*, i8** %sty.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %7, i64 1535
  store i8 0, i8* %arrayidx13, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %call15 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #10
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i64 %call15
  %8 = load i8*, i8** %sty.addr, align 8
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %8) #4
  %call17 = call i32 @MakeClientSocket(i32 1)
  store i32 %call17, i32* %s, align 4
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  call void @exit(i32 1) #11
  unreachable

if.end.20:                                        ; preds = %if.end.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.5
  %9 = bitcast %struct.msg* %m to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 12584, i32 1, i1 false)
  %10 = load i32, i32* %query.addr, align 4
  %tobool = icmp ne i32 %10, 0
  %cond = select i1 %tobool, i32 9, i32 8
  %type = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 1
  store i32 %cond, i32* %type, align 4
  %11 = load i8*, i8** @attach_tty, align 8
  %tobool22 = icmp ne i8* %11, null
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.21
  %m_tty = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty, i32 0, i32 0
  %12 = load i8*, i8** @attach_tty, align 8
  %call24 = call i8* @strncpy(i8* %arraydecay, i8* %12, i64 4095) #4
  %m_tty25 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty25, i32 0, i64 4095
  store i8 0, i8* %arrayidx26, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.21
  %m28 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %command = bitcast %union.anon* %m28 to %struct.anon.2*
  %cmd = getelementptr inbounds %struct.anon.2, %struct.anon.2* %command, i32 0, i32 2
  %arraydecay29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cmd, i32 0, i32 0
  store i8* %arraydecay29, i8** %p, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %13 = load i8**, i8*** %av.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %tobool30 = icmp ne i8* %14, null
  br i1 %tobool30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load i32, i32* %n, align 4
  %cmp31 = icmp slt i32 %15, 63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %cmp31, %land.rhs ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %17 = load i8**, i8*** %av.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %call32 = call i64 @strlen(i8* %18) #10
  %add = add i64 %call32, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4
  %19 = load i8*, i8** %p, align 8
  %20 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  %m34 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %command35 = bitcast %union.anon* %m34 to %struct.anon.2*
  %cmd36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %command35, i32 0, i32 2
  %arraydecay37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cmd36, i32 0, i32 0
  %add.ptr38 = getelementptr inbounds i8, i8* %arraydecay37, i64 4096
  %add.ptr39 = getelementptr inbounds i8, i8* %add.ptr38, i64 -1
  %cmp40 = icmp uge i8* %add.ptr33, %add.ptr39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body
  br label %for.end

if.end.43:                                        ; preds = %for.body
  %21 = load i8*, i8** %p, align 8
  %22 = load i8**, i8*** %av.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %call44 = call i8* @strcpy(i8* %21, i8* %23) #4
  %24 = load i32, i32* %len, align 4
  %25 = load i8*, i8** %p, align 8
  %idx.ext45 = sext i32 %24 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %25, i64 %idx.ext45
  store i8* %add.ptr46, i8** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %26 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr, i8*** %av.addr, align 8
  %27 = load i32, i32* %n, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.42, %land.end
  %28 = load i8*, i8** %p, align 8
  store i8 0, i8* %28, align 1
  %29 = load i32, i32* %n, align 4
  %m47 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %command48 = bitcast %union.anon* %m47 to %struct.anon.2*
  %nargs = getelementptr inbounds %struct.anon.2, %struct.anon.2* %command48, i32 0, i32 1
  store i32 %29, i32* %nargs, align 4
  %m49 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %attach = bitcast %union.anon* %m49 to %struct.anon.0*
  %auser = getelementptr inbounds %struct.anon.0, %struct.anon.0* %attach, i32 0, i32 0
  %arraydecay50 = getelementptr inbounds [257 x i8], [257 x i8]* %auser, i32 0, i32 0
  %30 = load i8*, i8** @LoginName, align 8
  %call51 = call i8* @strncpy(i8* %arraydecay50, i8* %30, i64 256) #4
  %m52 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %command53 = bitcast %union.anon* %m52 to %struct.anon.2*
  %auser54 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %command53, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [257 x i8], [257 x i8]* %auser54, i32 0, i64 256
  store i8 0, i8* %arrayidx55, align 1
  %protocol_revision = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 0
  store i32 1836279557, i32* %protocol_revision, align 4
  %m56 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %command57 = bitcast %union.anon* %m56 to %struct.anon.2*
  %preselect = getelementptr inbounds %struct.anon.2, %struct.anon.2* %command57, i32 0, i32 4
  %arraydecay58 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect, i32 0, i32 0
  %31 = load i8*, i8** @preselect, align 8
  %tobool59 = icmp ne i8* %31, null
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %32 = load i8*, i8** @preselect, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond60 = phi i8* [ %32, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), %cond.false ]
  %call61 = call i8* @strncpy(i8* %arraydecay58, i8* %cond60, i64 19) #4
  %m62 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %command63 = bitcast %union.anon* %m62 to %struct.anon.2*
  %preselect64 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %command63, i32 0, i32 4
  %arrayidx65 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect64, i32 0, i64 19
  store i8 0, i8* %arrayidx65, align 1
  %call66 = call i32 @getpid() #4
  %m67 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %command68 = bitcast %union.anon* %m67 to %struct.anon.2*
  %apid = getelementptr inbounds %struct.anon.2, %struct.anon.2* %command68, i32 0, i32 3
  store i32 %call66, i32* %apid, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %33 = load i32, i32* %query.addr, align 4
  %tobool69 = icmp ne i32 %33, 0
  br i1 %tobool69, label %if.then.70, label %if.else.139

if.then.70:                                       ; preds = %do.end
  %call71 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #10
  %add.ptr72 = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i64 %call71
  store i8* %add.ptr72, i8** %sp, align 8
  %34 = bitcast [8 x i8]* %query73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @SendCmdMessage.query, i32 0, i32 0), i64 8, i32 1, i1 false)
  store i32 -1, i32* %r, align 4
  store i8 65, i8* %c, align 1
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.87, %if.then.70
  %35 = load i8, i8* %c, align 1
  %conv75 = sext i8 %35 to i32
  %cmp76 = icmp sle i32 %conv75, 90
  br i1 %cmp76, label %for.body.78, label %for.end.89

for.body.78:                                      ; preds = %for.cond.74
  %36 = load i8, i8* %c, align 1
  %arrayidx79 = getelementptr inbounds [8 x i8], [8 x i8]* %query73, i32 0, i64 6
  store i8 %36, i8* %arrayidx79, align 1
  %37 = load i8*, i8** %sp, align 8
  %arraydecay80 = getelementptr inbounds [8 x i8], [8 x i8]* %query73, i32 0, i32 0
  %call81 = call i8* @strcpy(i8* %37, i8* %arraydecay80) #4
  %call82 = call i32 @MakeServerSocket()
  store i32 %call82, i32* %r, align 4
  %cmp83 = icmp sge i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body.78
  br label %for.end.89

if.end.86:                                        ; preds = %for.body.78
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %38 = load i8, i8* %c, align 1
  %inc88 = add i8 %38, 1
  store i8 %inc88, i8* %c, align 1
  br label %for.cond.74

for.end.89:                                       ; preds = %if.then.85, %for.cond.74
  %39 = load i32, i32* %r, align 4
  %cmp90 = icmp slt i32 %39, 0
  br i1 %cmp90, label %if.then.92, label %if.end.109

if.then.92:                                       ; preds = %for.end.89
  store i8 48, i8* %c, align 1
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.106, %if.then.92
  %40 = load i8, i8* %c, align 1
  %conv94 = sext i8 %40 to i32
  %cmp95 = icmp sle i32 %conv94, 57
  br i1 %cmp95, label %for.body.97, label %for.end.108

for.body.97:                                      ; preds = %for.cond.93
  %41 = load i8, i8* %c, align 1
  %arrayidx98 = getelementptr inbounds [8 x i8], [8 x i8]* %query73, i32 0, i64 6
  store i8 %41, i8* %arrayidx98, align 1
  %42 = load i8*, i8** %sp, align 8
  %arraydecay99 = getelementptr inbounds [8 x i8], [8 x i8]* %query73, i32 0, i32 0
  %call100 = call i8* @strcpy(i8* %42, i8* %arraydecay99) #4
  %call101 = call i32 @MakeServerSocket()
  store i32 %call101, i32* %r, align 4
  %cmp102 = icmp sge i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.body.97
  br label %for.end.108

if.end.105:                                       ; preds = %for.body.97
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %43 = load i8, i8* %c, align 1
  %inc107 = add i8 %43, 1
  store i8 %inc107, i8* %c, align 1
  br label %for.cond.93

for.end.108:                                      ; preds = %if.then.104, %for.cond.93
  br label %if.end.109

if.end.109:                                       ; preds = %for.end.108, %for.end.89
  %44 = load i32, i32* %r, align 4
  %cmp110 = icmp slt i32 %44, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.109
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i32 0, i32 0)) #9
  unreachable

if.end.113:                                       ; preds = %if.end.109
  %m114 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %command115 = bitcast %union.anon* %m114 to %struct.anon.2*
  %writeback = getelementptr inbounds %struct.anon.2, %struct.anon.2* %command115, i32 0, i32 5
  %arraydecay116 = getelementptr inbounds [4096 x i8], [4096 x i8]* %writeback, i32 0, i32 0
  %call117 = call i8* @strncpy(i8* %arraydecay116, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i64 4095) #4
  %m118 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %command119 = bitcast %union.anon* %m118 to %struct.anon.2*
  %writeback120 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %command119, i32 0, i32 5
  %arrayidx121 = getelementptr inbounds [4096 x i8], [4096 x i8]* %writeback120, i32 0, i64 4095
  store i8 0, i8* %arrayidx121, align 1
  %call122 = call void (i32)* @xsignal(i32 18, void (i32)* @QueryResultSuccess)
  %call123 = call void (i32)* @xsignal(i32 1, void (i32)* @QueryResultFail)
  %45 = load i32, i32* %s, align 4
  %call124 = call i32 @WriteMessage(i32 %45, %struct.msg* %m)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.end.113
  %call127 = call i32* @__errno_location() #8
  %46 = load i32, i32* %call127, align 4
  call void (i32, i8*, ...) @Msg(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.end.113
  %47 = load i32, i32* %s, align 4
  %call129 = call i32 @close(i32 %47)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.128
  %48 = load i32, i32* @QueryResult, align 4
  %tobool130 = icmp ne i32 %48, 0
  %lnot = xor i1 %tobool130, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call131 = call i32 @pause()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call132 = call void (i32)* @xsignal(i32 18, void (i32)* null)
  %call133 = call void (i32)* @xsignal(i32 1, void (i32)* null)
  %49 = load i32, i32* %r, align 4
  call void @ReceiveRaw(i32 %49)
  %call134 = call i32 @unlink(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #4
  %50 = load i32, i32* @QueryResult, align 4
  %cmp135 = icmp eq i32 %50, 2
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %while.end
  call void @exit(i32 1) #11
  unreachable

if.end.138:                                       ; preds = %while.end
  br label %if.end.146

if.else.139:                                      ; preds = %do.end
  %51 = load i32, i32* %s, align 4
  %call140 = call i32 @WriteMessage(i32 %51, %struct.msg* %m)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.else.139
  %call143 = call i32* @__errno_location() #8
  %52 = load i32, i32* %call143, align 4
  call void (i32, i8*, ...) @Msg(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.else.139
  %53 = load i32, i32* %s, align 4
  %call145 = call i32 @close(i32 %53)
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.144, %if.end.138
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @MakeServerSocket() #5

; Function Attrs: nounwind uwtable
define internal void @QueryResultSuccess(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  store i32 1, i32* @QueryResult, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @QueryResultFail(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  store i32 2, i32* @QueryResult, align 4
  ret void
}

declare void @Msg(i32, i8*, ...) #5

declare void @ReceiveRaw(i32) #5

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

declare i32 @SendAttachMsg(i32, %struct.msg*, i32) #5

declare i64 @write(i32, i8*, i64) #5

; Function Attrs: nounwind
declare i32 @getppid() #1

declare void @Kill(i32, i32) #5

; Function Attrs: nounwind uwtable
define internal void @LockHup(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  %ppid = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  %call = call i32 @getppid() #4
  store i32 %call, i32* %ppid, align 4
  %0 = load i32, i32* @real_gid, align 4
  %call1 = call i32 @setgid(i32 %0) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32* @__errno_location() #8
  %1 = load i32, i32* %call2, align 4
  call void (i32, i8*, ...) @Panic(i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @own_uid, align 4
  %call3 = call i32 @setuid(i32 %2) #4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32* @__errno_location() #8
  %3 = load i32, i32* %call6, align 4
  call void (i32, i8*, ...) @Panic(i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #9
  unreachable

if.end.7:                                         ; preds = %if.end
  %4 = load i32, i32* %ppid, align 4
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.7
  %5 = load i32, i32* %ppid, align 4
  call void @Kill(i32 %5, i32 1)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.7
  call void @exit(i32 0) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #1

; Function Attrs: nounwind
declare i32 @fork() #1

declare void @closeallfiles(i32) #5

; Function Attrs: nounwind
declare i32 @execl(i8*, i8*, ...) #1

declare i32 @wait(%union.wait*) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal void @screen_builtin_lck() #0 {
entry:
  %fullname = alloca [100 x i8], align 16
  %cp1 = alloca i8*, align 8
  %message = alloca [200 x i8], align 16
  %pass = alloca i8*, align 8
  %mypass = alloca [17 x i8], align 16
  %salt = alloca [3 x i8], align 1
  %using_pam = alloca i32, align 4
  %buf = alloca i8*, align 8
  store i8* null, i8** %pass, align 8
  store i32 1, i32* %using_pam, align 4
  store i32 0, i32* %using_pam, align 4
  %0 = load %struct.passwd*, %struct.passwd** @ppp, align 8
  %pw_passwd = getelementptr inbounds %struct.passwd, %struct.passwd* %0, i32 0, i32 1
  %1 = load i8*, i8** %pw_passwd, align 8
  store i8* %1, i8** %pass, align 8
  %2 = load i8*, i8** %pass, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %pass, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end.49

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i8* @getpass(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0))
  store i8* %call, i8** %pass, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then.3, label %if.end.21

if.then.3:                                        ; preds = %if.then
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %mypass, i32 0, i32 0
  %5 = load i8*, i8** %pass, align 8
  %call4 = call i8* @strncpy(i8* %arraydecay, i8* %5, i64 16) #4
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %mypass, i32 0, i64 16
  store i8 0, i8* %arrayidx, align 1
  %arraydecay5 = getelementptr inbounds [17 x i8], [17 x i8]* %mypass, i32 0, i32 0
  %6 = load i8, i8* %arraydecay5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.3
  br label %do.end.109

if.end:                                           ; preds = %if.then.3
  %call10 = call i8* @getpass(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0))
  store i8* %call10, i8** %pass, align 8
  %tobool11 = icmp ne i8* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %if.end
  %arraydecay13 = getelementptr inbounds [17 x i8], [17 x i8]* %mypass, i32 0, i32 0
  %7 = load i8*, i8** %pass, align 8
  %call14 = call i32 @strcmp(i8* %arraydecay13, i8* %7) #10
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.12
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0))
  %call18 = call i32 @sleep(i32 2)
  br label %do.end.109

if.end.19:                                        ; preds = %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then
  %9 = load i8*, i8** %pass, align 8
  %cmp22 = icmp eq i8* %9, null
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0))
  %call26 = call i32 @sleep(i32 2)
  br label %do.end.109

if.end.27:                                        ; preds = %if.end.21
  %call28 = call i64 @time(i64* null) #4
  %rem = srem i64 %call28, 26
  %conv29 = trunc i64 %rem to i32
  %add = add nsw i32 65, %conv29
  %conv30 = trunc i32 %add to i8
  %arrayidx31 = getelementptr inbounds [3 x i8], [3 x i8]* %salt, i32 0, i64 0
  store i8 %conv30, i8* %arrayidx31, align 1
  %call32 = call i64 @time(i64* null) #4
  %shr = ashr i64 %call32, 6
  %rem33 = srem i64 %shr, 26
  %conv34 = trunc i64 %rem33 to i32
  %add35 = add nsw i32 65, %conv34
  %conv36 = trunc i32 %add35 to i8
  %arrayidx37 = getelementptr inbounds [3 x i8], [3 x i8]* %salt, i32 0, i64 1
  store i8 %conv36, i8* %arrayidx37, align 1
  %arrayidx38 = getelementptr inbounds [3 x i8], [3 x i8]* %salt, i32 0, i64 2
  store i8 0, i8* %arrayidx38, align 1
  %arraydecay39 = getelementptr inbounds [17 x i8], [17 x i8]* %mypass, i32 0, i32 0
  %arraydecay40 = getelementptr inbounds [3 x i8], [3 x i8]* %salt, i32 0, i32 0
  %call41 = call i8* @crypt(i8* %arraydecay39, i8* %arraydecay40) #4
  store i8* %call41, i8** %pass, align 8
  %11 = load i8*, i8** %pass, align 8
  %tobool42 = icmp ne i8* %11, null
  br i1 %tobool42, label %if.end.46, label %if.then.43

if.then.43:                                       ; preds = %if.end.27
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0))
  %call45 = call i32 @sleep(i32 2)
  br label %do.end.109

if.end.46:                                        ; preds = %if.end.27
  %13 = load i8*, i8** %pass, align 8
  %call47 = call i8* @SaveStr(i8* %13)
  %14 = load %struct.passwd*, %struct.passwd** @ppp, align 8
  %pw_passwd48 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 1
  store i8* %call47, i8** %pw_passwd48, align 8
  store i8* %call47, i8** %pass, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.46, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.49
  br label %do.end

do.end:                                           ; preds = %do.body
  %arraydecay50 = getelementptr inbounds [100 x i8], [100 x i8]* %fullname, i32 0, i32 0
  %15 = load %struct.passwd*, %struct.passwd** @ppp, align 8
  %pw_gecos = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i32 0, i32 4
  %16 = load i8*, i8** %pw_gecos, align 8
  %call51 = call i8* @strncpy(i8* %arraydecay50, i8* %16, i64 91) #4
  %arrayidx52 = getelementptr inbounds [100 x i8], [100 x i8]* %fullname, i32 0, i64 91
  store i8 0, i8* %arrayidx52, align 1
  %arraydecay53 = getelementptr inbounds [100 x i8], [100 x i8]* %fullname, i32 0, i32 0
  %call54 = call i8* @index(i8* %arraydecay53, i32 44) #10
  store i8* %call54, i8** %cp1, align 8
  %cmp55 = icmp ne i8* %call54, null
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %do.end
  %17 = load i8*, i8** %cp1, align 8
  store i8 0, i8* %17, align 1
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %do.end
  %arraydecay59 = getelementptr inbounds [100 x i8], [100 x i8]* %fullname, i32 0, i32 0
  %call60 = call i8* @index(i8* %arraydecay59, i32 38) #10
  store i8* %call60, i8** %cp1, align 8
  %cmp61 = icmp ne i8* %call60, null
  br i1 %cmp61, label %if.then.63, label %if.end.76

if.then.63:                                       ; preds = %if.end.58
  %18 = load i8*, i8** %cp1, align 8
  %19 = load %struct.passwd*, %struct.passwd** @ppp, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %19, i32 0, i32 0
  %20 = load i8*, i8** %pw_name, align 8
  %call64 = call i8* @strncpy(i8* %18, i8* %20, i64 8) #4
  %21 = load i8*, i8** %cp1, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %21, i64 8
  store i8 0, i8* %arrayidx65, align 1
  %22 = load i8*, i8** %cp1, align 8
  %23 = load i8, i8* %22, align 1
  %conv66 = sext i8 %23 to i32
  %cmp67 = icmp sge i32 %conv66, 97
  br i1 %cmp67, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.then.63
  %24 = load i8*, i8** %cp1, align 8
  %25 = load i8, i8* %24, align 1
  %conv69 = sext i8 %25 to i32
  %cmp70 = icmp sle i32 %conv69, 122
  br i1 %cmp70, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %land.lhs.true
  %26 = load i8*, i8** %cp1, align 8
  %27 = load i8, i8* %26, align 1
  %conv73 = sext i8 %27 to i32
  %sub = sub nsw i32 %conv73, 32
  %conv74 = trunc i32 %sub to i8
  store i8 %conv74, i8* %26, align 1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %land.lhs.true, %if.then.63
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.58
  %arraydecay77 = getelementptr inbounds [200 x i8], [200 x i8]* %message, i32 0, i32 0
  %arraydecay78 = getelementptr inbounds [100 x i8], [100 x i8]* %fullname, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [100 x i8], [100 x i8]* %fullname, i32 0, i64 0
  %28 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %28 to i32
  %tobool81 = icmp ne i32 %conv80, 0
  %cond = select i1 %tobool81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)
  %29 = load %struct.passwd*, %struct.passwd** @ppp, align 8
  %pw_name82 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 0
  %30 = load i8*, i8** %pw_name82, align 8
  %call83 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay78, i8* %cond, i8* %30, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @HostName, i32 0, i32 0)) #4
  br label %for.cond

for.cond:                                         ; preds = %do.end.105, %if.end.76
  br label %do.body.84

do.body.84:                                       ; preds = %for.cond
  br label %do.end.85

do.end.85:                                        ; preds = %do.body.84
  %call86 = call i32* @__errno_location() #8
  store i32 0, i32* %call86, align 4
  %arraydecay87 = getelementptr inbounds [200 x i8], [200 x i8]* %message, i32 0, i32 0
  %call88 = call i8* @getpass(i8* %arraydecay87)
  store i8* %call88, i8** %cp1, align 8
  %cmp89 = icmp eq i8* %call88, null
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %do.end.85
  call void @AttacherFinit(i32 0)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %do.end.85
  %31 = load i32, i32* %using_pam, align 4
  %tobool93 = icmp ne i32 %31, 0
  br i1 %tobool93, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %if.end.92
  br label %if.end.103

if.else:                                          ; preds = %if.end.92
  %32 = load i8*, i8** %cp1, align 8
  %33 = load i8*, i8** %pass, align 8
  %call95 = call i8* @crypt(i8* %32, i8* %33) #4
  store i8* %call95, i8** %buf, align 8
  %34 = load i8*, i8** %buf, align 8
  %tobool96 = icmp ne i8* %34, null
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.102

land.lhs.true.97:                                 ; preds = %if.else
  %35 = load i8*, i8** %buf, align 8
  %36 = load i8*, i8** %pass, align 8
  %37 = load i8*, i8** %pass, align 8
  %call98 = call i64 @strlen(i8* %37) #10
  %call99 = call i32 @strncmp(i8* %35, i8* %36, i64 %call98) #10
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true.97
  br label %for.end

if.end.102:                                       ; preds = %land.lhs.true.97, %if.else
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.94
  br label %do.body.104

do.body.104:                                      ; preds = %if.end.103
  br label %do.end.105

do.end.105:                                       ; preds = %do.body.104
  %38 = load i8*, i8** %cp1, align 8
  %39 = load i8*, i8** %cp1, align 8
  %call106 = call i64 @strlen(i8* %39) #10
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 %call106, i32 1, i1 false)
  br label %for.cond

for.end:                                          ; preds = %if.then.101
  %40 = load i8*, i8** %cp1, align 8
  %41 = load i8*, i8** %cp1, align 8
  %call107 = call i64 @strlen(i8* %41) #10
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 %call107, i32 1, i1 false)
  br label %do.body.108

do.body.108:                                      ; preds = %for.end
  br label %do.end.109

do.end.109:                                       ; preds = %if.then.9, %if.then.16, %if.then.24, %if.then.43, %do.body.108
  ret void
}

declare i8* @getpass(i8*) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i8* @crypt(i8*, i8*) #1

declare i8* @SaveStr(i8*) #5

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #6

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
