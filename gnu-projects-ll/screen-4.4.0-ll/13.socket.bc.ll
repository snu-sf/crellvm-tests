; ModuleID = './socket.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { %struct.display*, %struct.acluser*, %struct.canvas, %struct.canvas*, %struct.canvas*, %struct.layout*, void (i8*, i32)*, i8*, i32, i32, %struct.win*, %struct.win*, i32, [33 x i8], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, %struct.timeval, i32, i8, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.event, %struct.event, i32, %struct.action*, i32, [4096 x i8], i32, %struct.event, %struct.event, %struct.event, %struct.mode, %struct.mode, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i8*, %struct.event, i32, i32, [201 x %union.tcu], [6 x i8*], [6 x i8], i32, i16, [256 x i8], i8***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.utmp, i32, i32, i32, %struct.event, i32, %struct.event }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.layout = type { %struct.layout*, i8*, i32, %struct.canvas, %struct.canvas*, %struct.canvas*, i32 }
%struct.win = type { %struct.win*, i32, i8*, %struct.layer, %struct.layer*, i32, %struct.pseudowin*, %struct.display*, %struct.display*, i32, %struct.event, %struct.event, %struct.event, %struct.event, i32, i32, [4096 x i8], i32, [4096 x i8], i32, i32, i8*, i8*, [768 x i8], i32, %struct.win*, i32, [64 x i32], i32, i32, %struct.acluser*, [3 x i8*], i8*, i8*, i32, i32, %struct.mline*, %struct.mchar, i8, i8, i8, i32, i32, [4 x i32], i32, %struct.cursor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, [768 x i8], i8*, i8*, i32, i32, %struct.logfile*, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.mline*, %struct.paster, i32, i32, [64 x i8*], i8*, i8*, i32, i8*, %struct.utmp, [768 x i8], i32, %struct.display*, %struct.anon.2, %struct.event, i32 }
%struct.pseudowin = type { i32, i32, i32, %struct.event, %struct.event, [768 x i8], [768 x i8], [4096 x i8], i32 }
%struct.cursor = type { i32, i32, i32, %struct.mchar, i32, i32, [4 x i32] }
%struct.logfile = type opaque
%struct.mline = type { i8*, i8*, i8*, i8*, i8* }
%struct.paster = type { i8*, i8*, i32, %struct.layer*, %struct.event }
%struct.anon.2 = type { i32, %struct.mline*, i32, i32, i32, %struct.mline*, i32, %struct.cursor }
%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
%struct.timeval = type { i64, i64 }
%struct.action = type { i32, i8**, i32*, i32 }
%struct.mode = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%union.tcu = type { i8* }
%struct.utmp = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.exit_status, i32, %struct.anon.1, [4 x i32], [20 x i8] }
%struct.exit_status = type { i16, i16 }
%struct.anon.1 = type { i32, i32 }
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.NewWindow = type { i32, i8*, i8**, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.msg = type { i32, i32, [4096 x i8], %union.anon }
%union.anon = type { %struct.anon.6 }
%struct.anon.6 = type { [257 x i8], i32, [4096 x i8], i32, [20 x i8], [4096 x i8] }
%struct.comm = type { i8*, i32, [1 x i8*] }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.sent = type { %struct.sent*, i32, i8* }
%struct.sockaddr_un = type { i16, [108 x i8] }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.anon.3 = type { i32, i32, i32, i32, i32, [4096 x i8], [4096 x i8], [33 x i8] }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct.iovec = type { i8*, i64 }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.cmsghdr = type { i64, i32, i32, [0 x i8] }
%struct.anon.5 = type { [257 x i8], i32 }
%struct.anon.4 = type { [257 x i8], i32, i32, i32, i32, [20 x i8], i32, i32, [33 x i8], i32, i32 }
%struct.pwdata = type { i32, [257 x i8], %struct.msg }

@SockPath = external global [0 x i8], align 1
@real_uid = external global i32, align 4
@real_gid = external global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"Cannot opendir %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@multi = external global i8*, align 8
@LoginName = external global i8*, align 8
@wipeflag = external global i32, align 4
@dflag = external global i32, align 4
@rflag = external global i32, align 4
@xflag = external global i32, align 4
@lsflag = external global i32, align 4
@quietflag = external global i32, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"There are screens on:\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"There is a screen on:\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"There are several screens on:\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"There is a suitable screen on:\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"There are several suitable screens on:\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"\09%s\09(Attached)\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\09%s\09(Detached)\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\09%s\09(Multi, attached)\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"\09%s\09(Multi, detached)\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"\09%s\09(Dead ?%c?)\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\09%s\09(Removed)\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"\09%s\09(Remote or dead)\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\09%s\09(Private)\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Remove dead screens with 'screen -wipe'.\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%d socket%s wiped out.\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@eff_uid = external global i32, align 4
@eff_gid = external global i32, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@display = external global %struct.display*, align 8
@.str.22 = private unnamed_addr constant [41 x i8] c"There is already a screen running on %s.\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Unfortunately you are not its owner.\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"To resume it, use \22screen -r\22\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"It is not detached.\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"bind (%s)\00", align 1
@displays = external global %struct.display*, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"%s: connect\00", align 1
@attach_tty = external global i8*, align 8
@nwin_undef = external global %struct.NewWindow, align 8
@.str.30 = private unnamed_addr constant [7 x i8] c"getcwd\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@ReceiveMsg.m = internal global %struct.msg zeroinitializer, align 4
@ServerSocket = external global i32, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Message %d of %d bytes too small\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"Invalid message (magic 0x%08x).\00", align 1
@windows = external global %struct.win*, align 8
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@queryflag = external global i32, align 4
@.str.37 = private unnamed_addr constant [27 x i8] c"Invalid message (type %d).\00", align 1
@serv_read = external global %struct.event, align 8
@maxwin = external global i32, align 4
@.str.38 = private unnamed_addr constant [33 x i8] c"Attach attempt with bad pid(%d)!\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"Attach: passed fd does not match tty: %s - %s!\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"Attach: Could not open %s!\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"Attaching from inside of screen?\0A\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"Attach msg ignored: coming from inside.\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Access to session denied.\0A\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"Attach: access denied for user %s.\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"Could not make display.\0A\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"Attach: could not make display for user %s\00", align 1
@iflag = external global i32, align 4
@.str.48 = private unnamed_addr constant [29 x i8] c"Warning: NBLOCK fcntl failed\00", align 1
@extra_outcap = external global i8*, align 8
@extra_incap = external global i8*, align 8
@.str.49 = private unnamed_addr constant [12 x i8] c"SYSSCREENRC\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"/usr/etc/screenrc\00", align 1
@RcFileName = external global i8*, align 8
@layout_attach = external global %struct.layout*, align 8
@layout_last_marker = external global %struct.layout, align 8
@layout_last = external global %struct.layout*, align 8
@wtab = external global %struct.win**, align 8
@fore = external global %struct.win*, align 8
@.str.51 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@comms = external global [0 x %struct.comm], align 8
@flayer = external global %struct.layer*, align 8
@console_window = external global %struct.win*, align 8
@.str.54 = private unnamed_addr constant [9 x i8] c"reattach\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"console %s is on window %d\00", align 1
@HostName = external global [0 x i8], align 1
@strnomem = external global [0 x i8], align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"Screen password: \00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"\0D\0Acrypt() failed.\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"\0D\0APassword incorrect.\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"Illegal reattach attempt from terminal %s.\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"Remote command too long.\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"Unknown user %s tried to send a command!\00", align 1
@.str.63 = private unnamed_addr constant [76 x i8] c"User %s has a password, cannot use remote commands (using -Q or -X option).\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"Could not find pre-select window.\00", align 1
@EffectiveAclUser = external global %struct.acluser*, align 8
@rc_name = external global i8*, align 8
@.str.65 = private unnamed_addr constant [3 x i8] c"-X\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FindSocket(i32* %fdp, i32* %nfoundp, i32* %notherp, i8* %match) #0 {
entry:
  %fdp.addr = alloca i32*, align 8
  %nfoundp.addr = alloca i32*, align 8
  %notherp.addr = alloca i32*, align 8
  %match.addr = alloca i8*, align 8
  %dirp = alloca %struct.__dirstream*, align 8
  %dp = alloca %struct.dirent*, align 8
  %st = alloca %struct.stat, align 8
  %mode = alloca i32, align 4
  %sdirlen = alloca i32, align 4
  %matchlen = alloca i32, align 4
  %name = alloca i8*, align 8
  %n = alloca i8*, align 8
  %firsts = alloca i32, align 4
  %sockfd = alloca i32, align 4
  %firstn = alloca i8*, align 8
  %nfound = alloca i32, align 4
  %ngood = alloca i32, align 4
  %ndead = alloca i32, align 4
  %nwipe = alloca i32, align 4
  %npriv = alloca i32, align 4
  %nperfect = alloca i32, align 4
  %slist = alloca %struct.sent*, align 8
  %slisttail = alloca %struct.sent**, align 8
  %sent = alloca %struct.sent*, align 8
  %nsent = alloca %struct.sent*, align 8
  %cmatch = alloca i32, align 4
  %m = alloca i8*, align 8
  store i32* %fdp, i32** %fdp.addr, align 8
  store i32* %nfoundp, i32** %nfoundp.addr, align 8
  store i32* %notherp, i32** %notherp.addr, align 8
  store i8* %match, i8** %match.addr, align 8
  store i32 0, i32* %matchlen, align 4
  store i32 -1, i32* %firsts, align 4
  store i8* null, i8** %firstn, align 8
  store i32 0, i32* %nfound, align 4
  store i32 0, i32* %ngood, align 4
  store i32 0, i32* %ndead, align 4
  store i32 0, i32* %nwipe, align 4
  store i32 0, i32* %npriv, align 4
  store i32 0, i32* %nperfect, align 4
  %0 = load i8*, i8** %match.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %match.addr, align 8
  %call = call i64 @strlen(i8* %1) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %matchlen, align 4
  %2 = load i32, i32* %matchlen, align 4
  %cmp = icmp sgt i32 %2, 255
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 255, i32* %matchlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %call4 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #8
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %sdirlen, align 4
  %3 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %3)
  %4 = load i32, i32* @real_gid, align 4
  call void @xsetegid(i32 %4)
  %call6 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0))
  store %struct.__dirstream* %call6, %struct.__dirstream** %dirp, align 8
  %cmp7 = icmp eq %struct.__dirstream* %call6, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.3
  %call10 = call i32* @__errno_location() #9
  %5 = load i32, i32* %call10, align 4
  call void (i32, i8*, ...) @Panic(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #10
  unreachable

if.end.11:                                        ; preds = %if.end.3
  store %struct.sent* null, %struct.sent** %slist, align 8
  store %struct.sent** %slist, %struct.sent*** %slisttail, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.262, %do.end.232, %if.end.193, %if.then.169, %if.then.140, %if.then.134, %do.end.128, %if.else, %if.then.102, %if.then.24, %if.end.11
  %6 = load %struct.__dirstream*, %struct.__dirstream** %dirp, align 8
  %call12 = call %struct.dirent* @readdir(%struct.__dirstream* %6)
  store %struct.dirent* %call12, %struct.dirent** %dp, align 8
  %tobool13 = icmp ne %struct.dirent* %call12, null
  br i1 %tobool13, label %while.body, label %while.end.263

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %cmatch, align 4
  %7 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  store i8* %arraydecay, i8** %name, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %name, align 8
  %9 = load i8, i8* %8, align 1
  %conv14 = sext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %10 = load i8*, i8** %name, align 8
  %11 = load i8, i8* %10, align 1
  %conv17 = sext i8 %11 to i32
  %cmp18 = icmp eq i32 %conv17, 46
  br i1 %cmp18, label %if.then.24, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %12 = load i8*, i8** %name, align 8
  %call21 = call i64 @strlen(i8* %12) #8
  %cmp22 = icmp ugt i64 %call21, 1536
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false, %do.end
  br label %while.cond

if.end.25:                                        ; preds = %lor.lhs.false.20
  %13 = load i32, i32* %matchlen, align 4
  %tobool26 = icmp ne i32 %13, 0
  br i1 %tobool26, label %if.then.27, label %if.end.113

if.then.27:                                       ; preds = %if.end.25
  %14 = load i8*, i8** %name, align 8
  store i8* %14, i8** %n, align 8
  %15 = load i8*, i8** %match.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv28 = sext i8 %16 to i32
  %cmp29 = icmp sle i32 %conv28, 48
  br i1 %cmp29, label %land.lhs.true, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.then.27
  %17 = load i8*, i8** %match.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv32 = sext i8 %18 to i32
  %cmp33 = icmp sgt i32 %conv32, 57
  br i1 %cmp33, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %lor.lhs.false.31, %if.then.27
  %19 = load i8*, i8** %n, align 8
  %20 = load i8, i8* %19, align 1
  %conv35 = sext i8 %20 to i32
  %cmp36 = icmp sgt i32 %conv35, 48
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.57

land.lhs.true.38:                                 ; preds = %land.lhs.true
  %21 = load i8*, i8** %n, align 8
  %22 = load i8, i8* %21, align 1
  %conv39 = sext i8 %22 to i32
  %cmp40 = icmp sle i32 %conv39, 57
  br i1 %cmp40, label %if.then.42, label %if.end.57

if.then.42:                                       ; preds = %land.lhs.true.38
  br label %while.cond.43

while.cond.43:                                    ; preds = %while.body.50, %if.then.42
  %23 = load i8*, i8** %n, align 8
  %24 = load i8, i8* %23, align 1
  %conv44 = sext i8 %24 to i32
  %cmp45 = icmp sge i32 %conv44, 48
  br i1 %cmp45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.43
  %25 = load i8*, i8** %n, align 8
  %26 = load i8, i8* %25, align 1
  %conv47 = sext i8 %26 to i32
  %cmp48 = icmp sle i32 %conv47, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.43
  %27 = phi i1 [ false, %while.cond.43 ], [ %cmp48, %land.rhs ]
  br i1 %27, label %while.body.50, label %while.end

while.body.50:                                    ; preds = %land.end
  %28 = load i8*, i8** %n, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %n, align 8
  br label %while.cond.43

while.end:                                        ; preds = %land.end
  %29 = load i8*, i8** %n, align 8
  %30 = load i8, i8* %29, align 1
  %conv51 = sext i8 %30 to i32
  %cmp52 = icmp eq i32 %conv51, 46
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %while.end
  %31 = load i8*, i8** %n, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr55, i8** %n, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %while.end
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.38, %land.lhs.true, %lor.lhs.false.31
  %32 = load i8*, i8** %match.addr, align 8
  %call58 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 3) #8
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.65

land.lhs.true.60:                                 ; preds = %if.end.57
  %33 = load i8*, i8** %n, align 8
  %call61 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 3) #8
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.60
  %34 = load i8*, i8** %n, align 8
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 3
  store i8* %add.ptr, i8** %n, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %land.lhs.true.60, %if.end.57
  %35 = load i8*, i8** %match.addr, align 8
  %36 = load i8*, i8** %n, align 8
  %37 = load i32, i32* %matchlen, align 4
  %conv66 = sext i32 %37 to i64
  %call67 = call i32 @strncmp(i8* %35, i8* %36, i64 %conv66) #8
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else.105

if.then.69:                                       ; preds = %if.end.65
  %38 = load i8*, i8** %n, align 8
  %39 = load i8*, i8** %name, align 8
  %cmp70 = icmp eq i8* %38, %39
  br i1 %cmp70, label %land.lhs.true.72, label %if.else

land.lhs.true.72:                                 ; preds = %if.then.69
  %40 = load i8*, i8** %match.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv73 = sext i8 %41 to i32
  %cmp74 = icmp sgt i32 %conv73, 48
  br i1 %cmp74, label %land.lhs.true.76, label %if.else

land.lhs.true.76:                                 ; preds = %land.lhs.true.72
  %42 = load i8*, i8** %match.addr, align 8
  %43 = load i8, i8* %42, align 1
  %conv77 = sext i8 %43 to i32
  %cmp78 = icmp sle i32 %conv77, 57
  br i1 %cmp78, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %land.lhs.true.76
  br label %while.cond.81

while.cond.81:                                    ; preds = %while.body.90, %if.then.80
  %44 = load i8*, i8** %n, align 8
  %45 = load i8, i8* %44, align 1
  %conv82 = sext i8 %45 to i32
  %cmp83 = icmp sge i32 %conv82, 48
  br i1 %cmp83, label %land.rhs.85, label %land.end.89

land.rhs.85:                                      ; preds = %while.cond.81
  %46 = load i8*, i8** %n, align 8
  %47 = load i8, i8* %46, align 1
  %conv86 = sext i8 %47 to i32
  %cmp87 = icmp sle i32 %conv86, 57
  br label %land.end.89

land.end.89:                                      ; preds = %land.rhs.85, %while.cond.81
  %48 = phi i1 [ false, %while.cond.81 ], [ %cmp87, %land.rhs.85 ]
  br i1 %48, label %while.body.90, label %while.end.92

while.body.90:                                    ; preds = %land.end.89
  %49 = load i8*, i8** %n, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr91, i8** %n, align 8
  br label %while.cond.81

while.end.92:                                     ; preds = %land.end.89
  %50 = load i8*, i8** %n, align 8
  %51 = load i8, i8* %50, align 1
  %conv93 = sext i8 %51 to i32
  %cmp94 = icmp eq i32 %conv93, 46
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %while.end.92
  %52 = load i8*, i8** %n, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr97, i8** %n, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %while.end.92
  %53 = load i8*, i8** %match.addr, align 8
  %54 = load i8*, i8** %n, align 8
  %55 = load i32, i32* %matchlen, align 4
  %conv99 = sext i32 %55 to i64
  %call100 = call i32 @strncmp(i8* %53, i8* %54, i64 %conv99) #8
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  br label %while.cond

if.end.103:                                       ; preds = %if.end.98
  br label %if.end.104

if.else:                                          ; preds = %land.lhs.true.76, %land.lhs.true.72, %if.then.69
  br label %while.cond

if.end.104:                                       ; preds = %if.end.103
  br label %if.end.110

if.else.105:                                      ; preds = %if.end.65
  %56 = load i8*, i8** %n, align 8
  %57 = load i32, i32* %matchlen, align 4
  %idx.ext = sext i32 %57 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  %58 = load i8, i8* %add.ptr106, align 1
  %conv107 = sext i8 %58 to i32
  %cmp108 = icmp eq i32 %conv107, 0
  %conv109 = zext i1 %cmp108 to i32
  store i32 %conv109, i32* %cmatch, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.105, %if.end.104
  br label %do.body.111

do.body.111:                                      ; preds = %if.end.110
  br label %do.end.112

do.end.112:                                       ; preds = %do.body.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %if.end.25
  %59 = load i32, i32* %sdirlen, align 4
  %idx.ext114 = sext i32 %59 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i64 %idx.ext114
  %60 = load i8*, i8** %name, align 8
  %call116 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %60) #7
  br label %do.body.117

do.body.117:                                      ; preds = %if.end.113
  br label %do.end.118

do.end.118:                                       ; preds = %do.body.117
  %call119 = call i32* @__errno_location() #9
  store i32 0, i32* %call119, align 4
  br label %do.body.120

do.body.120:                                      ; preds = %do.end.118
  br label %do.end.121

do.end.121:                                       ; preds = %do.body.120
  br label %do.body.122

do.body.122:                                      ; preds = %do.end.121
  br label %do.end.123

do.end.123:                                       ; preds = %do.body.122
  %call124 = call i32 @stat(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), %struct.stat* %st) #7
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %do.end.123
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.126
  br label %do.end.128

do.end.128:                                       ; preds = %do.body.127
  br label %while.cond

if.end.129:                                       ; preds = %do.end.123
  br label %do.body.130

do.body.130:                                      ; preds = %if.end.129
  br label %do.end.131

do.end.131:                                       ; preds = %do.body.130
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %61 = load i32, i32* %st_mode, align 4
  %and = and i32 %61, 61440
  %cmp132 = icmp eq i32 %and, 49152
  br i1 %cmp132, label %if.end.135, label %if.then.134

if.then.134:                                      ; preds = %do.end.131
  br label %while.cond

if.end.135:                                       ; preds = %do.end.131
  br label %do.body.136

do.body.136:                                      ; preds = %if.end.135
  br label %do.end.137

do.end.137:                                       ; preds = %do.body.136
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %62 = load i32, i32* %st_uid, align 4
  %63 = load i32, i32* @real_uid, align 4
  %cmp138 = icmp ne i32 %62, %63
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %do.end.137
  br label %while.cond

if.end.141:                                       ; preds = %do.end.137
  %st_mode142 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %64 = load i32, i32* %st_mode142, align 4
  %and143 = and i32 %64, 511
  store i32 %and143, i32* %mode, align 4
  br label %do.body.144

do.body.144:                                      ; preds = %if.end.141
  br label %do.end.145

do.end.145:                                       ; preds = %do.body.144
  %65 = load i8*, i8** @multi, align 8
  %tobool146 = icmp ne i8* %65, null
  br i1 %tobool146, label %land.lhs.true.147, label %if.end.163

land.lhs.true.147:                                ; preds = %do.end.145
  %66 = load i32, i32* %mode, align 4
  %and148 = and i32 %66, 447
  %cmp149 = icmp ne i32 %and148, 385
  br i1 %cmp149, label %if.then.151, label %if.end.163

if.then.151:                                      ; preds = %land.lhs.true.147
  br label %do.body.152

do.body.152:                                      ; preds = %if.then.151
  br label %do.end.153

do.end.153:                                       ; preds = %do.body.152
  %67 = load i8*, i8** @multi, align 8
  %68 = load i8*, i8** @LoginName, align 8
  %call154 = call i32 @strcmp(i8* %67, i8* %68) #8
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.else.159

if.then.156:                                      ; preds = %do.end.153
  br label %do.body.157

do.body.157:                                      ; preds = %if.then.156
  br label %do.end.158

do.end.158:                                       ; preds = %do.body.157
  store i32 -4, i32* %mode, align 4
  br label %if.end.162

if.else.159:                                      ; preds = %do.end.153
  br label %do.body.160

do.body.160:                                      ; preds = %if.else.159
  br label %do.end.161

do.end.161:                                       ; preds = %do.body.160
  br label %if.end.162

if.end.162:                                       ; preds = %do.end.161, %do.end.158
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %land.lhs.true.147, %do.end.145
  br label %do.body.164

do.body.164:                                      ; preds = %if.end.163
  br label %do.end.165

do.end.165:                                       ; preds = %do.body.164
  %call166 = call noalias i8* @malloc(i64 24) #7
  %69 = bitcast i8* %call166 to %struct.sent*
  store %struct.sent* %69, %struct.sent** %sent, align 8
  %cmp167 = icmp eq %struct.sent* %69, null
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %do.end.165
  br label %while.cond

if.end.170:                                       ; preds = %do.end.165
  %70 = load %struct.sent*, %struct.sent** %sent, align 8
  %next = getelementptr inbounds %struct.sent, %struct.sent* %70, i32 0, i32 0
  store %struct.sent* null, %struct.sent** %next, align 8
  %71 = load i8*, i8** %name, align 8
  %call171 = call i8* @SaveStr(i8* %71)
  %72 = load %struct.sent*, %struct.sent** %sent, align 8
  %name172 = getelementptr inbounds %struct.sent, %struct.sent* %72, i32 0, i32 2
  store i8* %call171, i8** %name172, align 8
  %73 = load i32, i32* %mode, align 4
  %74 = load %struct.sent*, %struct.sent** %sent, align 8
  %mode173 = getelementptr inbounds %struct.sent, %struct.sent* %74, i32 0, i32 1
  store i32 %73, i32* %mode173, align 4
  %75 = load %struct.sent*, %struct.sent** %sent, align 8
  %76 = load %struct.sent**, %struct.sent*** %slisttail, align 8
  store %struct.sent* %75, %struct.sent** %76, align 8
  %77 = load %struct.sent*, %struct.sent** %sent, align 8
  %next174 = getelementptr inbounds %struct.sent, %struct.sent* %77, i32 0, i32 0
  store %struct.sent** %next174, %struct.sent*** %slisttail, align 8
  %78 = load i32, i32* %nfound, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %nfound, align 4
  %call175 = call i32 @MakeClientSocket(i32 0)
  store i32 %call175, i32* %sockfd, align 4
  %79 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %79)
  %80 = load i32, i32* @real_gid, align 4
  call void @xsetegid(i32 %80)
  %81 = load i32, i32* %sockfd, align 4
  %cmp176 = icmp eq i32 %81, -1
  br i1 %cmp176, label %if.then.178, label %if.end.194

if.then.178:                                      ; preds = %if.end.170
  br label %do.body.179

do.body.179:                                      ; preds = %if.then.178
  br label %do.end.180

do.end.180:                                       ; preds = %do.body.179
  %82 = load %struct.sent*, %struct.sent** %sent, align 8
  %mode181 = getelementptr inbounds %struct.sent, %struct.sent* %82, i32 0, i32 1
  store i32 -3, i32* %mode181, align 4
  %83 = load i32, i32* %ndead, align 4
  %inc182 = add nsw i32 %83, 1
  store i32 %inc182, i32* %ndead, align 4
  %84 = load %struct.sent*, %struct.sent** %sent, align 8
  %mode183 = getelementptr inbounds %struct.sent, %struct.sent* %84, i32 0, i32 1
  store i32 -1, i32* %mode183, align 4
  %85 = load i32, i32* @wipeflag, align 4
  %tobool184 = icmp ne i32 %85, 0
  br i1 %tobool184, label %if.then.185, label %if.end.193

if.then.185:                                      ; preds = %do.end.180
  %call186 = call i32 @unlink(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #7
  %cmp187 = icmp eq i32 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %if.then.185
  %86 = load %struct.sent*, %struct.sent** %sent, align 8
  %mode190 = getelementptr inbounds %struct.sent, %struct.sent* %86, i32 0, i32 1
  store i32 -2, i32* %mode190, align 4
  %87 = load i32, i32* %nwipe, align 4
  %inc191 = add nsw i32 %87, 1
  store i32 %inc191, i32* %nwipe, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.189, %if.then.185
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %do.end.180
  br label %while.cond

if.end.194:                                       ; preds = %if.end.170
  %88 = load i32, i32* %mode, align 4
  %and195 = and i32 %88, 510
  store i32 %and195, i32* %mode, align 4
  br label %do.body.196

do.body.196:                                      ; preds = %if.end.194
  br label %do.end.197

do.end.197:                                       ; preds = %do.body.196
  br label %do.body.198

do.body.198:                                      ; preds = %do.end.197
  br label %do.end.199

do.end.199:                                       ; preds = %do.body.198
  %89 = load i32, i32* %mode, align 4
  %cmp200 = icmp ne i32 %89, 448
  br i1 %cmp200, label %land.lhs.true.202, label %lor.lhs.false.205

land.lhs.true.202:                                ; preds = %do.end.199
  %90 = load i32, i32* %mode, align 4
  %cmp203 = icmp ne i32 %90, 384
  br i1 %cmp203, label %if.then.229, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %land.lhs.true.202, %do.end.199
  %91 = load i32, i32* @dflag, align 4
  %tobool206 = icmp ne i32 %91, 0
  br i1 %tobool206, label %land.lhs.true.207, label %lor.lhs.false.214

land.lhs.true.207:                                ; preds = %lor.lhs.false.205
  %92 = load i32, i32* @rflag, align 4
  %tobool208 = icmp ne i32 %92, 0
  br i1 %tobool208, label %lor.lhs.false.214, label %land.lhs.true.209

land.lhs.true.209:                                ; preds = %land.lhs.true.207
  %93 = load i32, i32* @xflag, align 4
  %tobool210 = icmp ne i32 %93, 0
  br i1 %tobool210, label %lor.lhs.false.214, label %land.lhs.true.211

land.lhs.true.211:                                ; preds = %land.lhs.true.209
  %94 = load i32, i32* %mode, align 4
  %cmp212 = icmp eq i32 %94, 384
  br i1 %cmp212, label %if.then.229, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %land.lhs.true.211, %land.lhs.true.209, %land.lhs.true.207, %lor.lhs.false.205
  %95 = load i32, i32* @dflag, align 4
  %tobool215 = icmp ne i32 %95, 0
  br i1 %tobool215, label %lor.lhs.false.223, label %land.lhs.true.216

land.lhs.true.216:                                ; preds = %lor.lhs.false.214
  %96 = load i32, i32* @rflag, align 4
  %tobool217 = icmp ne i32 %96, 0
  br i1 %tobool217, label %land.lhs.true.218, label %lor.lhs.false.223

land.lhs.true.218:                                ; preds = %land.lhs.true.216
  %97 = load i32, i32* %mode, align 4
  %cmp219 = icmp eq i32 %97, 448
  br i1 %cmp219, label %land.lhs.true.221, label %lor.lhs.false.223

land.lhs.true.221:                                ; preds = %land.lhs.true.218
  %98 = load i32, i32* @xflag, align 4
  %tobool222 = icmp ne i32 %98, 0
  br i1 %tobool222, label %lor.lhs.false.223, label %if.then.229

lor.lhs.false.223:                                ; preds = %land.lhs.true.221, %land.lhs.true.218, %land.lhs.true.216, %lor.lhs.false.214
  %99 = load i32, i32* @dflag, align 4
  %tobool224 = icmp ne i32 %99, 0
  br i1 %tobool224, label %if.end.234, label %land.lhs.true.225

land.lhs.true.225:                                ; preds = %lor.lhs.false.223
  %100 = load i32, i32* @rflag, align 4
  %tobool226 = icmp ne i32 %100, 0
  br i1 %tobool226, label %if.end.234, label %land.lhs.true.227

land.lhs.true.227:                                ; preds = %land.lhs.true.225
  %101 = load i32, i32* @xflag, align 4
  %tobool228 = icmp ne i32 %101, 0
  br i1 %tobool228, label %if.end.234, label %if.then.229

if.then.229:                                      ; preds = %land.lhs.true.227, %land.lhs.true.221, %land.lhs.true.211, %land.lhs.true.202
  %102 = load i32, i32* %sockfd, align 4
  %call230 = call i32 @close(i32 %102)
  br label %do.body.231

do.body.231:                                      ; preds = %if.then.229
  br label %do.end.232

do.end.232:                                       ; preds = %do.body.231
  %103 = load i32, i32* %npriv, align 4
  %inc233 = add nsw i32 %103, 1
  store i32 %inc233, i32* %npriv, align 4
  br label %while.cond

if.end.234:                                       ; preds = %land.lhs.true.227, %land.lhs.true.225, %lor.lhs.false.223
  %104 = load i32, i32* %ngood, align 4
  %inc235 = add nsw i32 %104, 1
  store i32 %inc235, i32* %ngood, align 4
  %105 = load i32, i32* %cmatch, align 4
  %tobool236 = icmp ne i32 %105, 0
  br i1 %tobool236, label %if.then.237, label %if.end.239

if.then.237:                                      ; preds = %if.end.234
  %106 = load i32, i32* %nperfect, align 4
  %inc238 = add nsw i32 %106, 1
  store i32 %inc238, i32* %nperfect, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.237, %if.end.234
  %107 = load i32*, i32** %fdp.addr, align 8
  %tobool240 = icmp ne i32* %107, null
  br i1 %tobool240, label %land.lhs.true.241, label %if.else.258

land.lhs.true.241:                                ; preds = %if.end.239
  %108 = load i32, i32* %firsts, align 4
  %cmp242 = icmp eq i32 %108, -1
  br i1 %cmp242, label %if.then.249, label %lor.lhs.false.244

lor.lhs.false.244:                                ; preds = %land.lhs.true.241
  %109 = load i32, i32* %cmatch, align 4
  %tobool245 = icmp ne i32 %109, 0
  br i1 %tobool245, label %land.lhs.true.246, label %if.else.258

land.lhs.true.246:                                ; preds = %lor.lhs.false.244
  %110 = load i32, i32* %nperfect, align 4
  %cmp247 = icmp eq i32 %110, 1
  br i1 %cmp247, label %if.then.249, label %if.else.258

if.then.249:                                      ; preds = %land.lhs.true.246, %land.lhs.true.241
  %111 = load i32, i32* %firsts, align 4
  %cmp250 = icmp ne i32 %111, -1
  br i1 %cmp250, label %if.then.252, label %if.end.254

if.then.252:                                      ; preds = %if.then.249
  %112 = load i32, i32* %firsts, align 4
  %call253 = call i32 @close(i32 %112)
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.252, %if.then.249
  %113 = load i32, i32* %sockfd, align 4
  store i32 %113, i32* %firsts, align 4
  %114 = load %struct.sent*, %struct.sent** %sent, align 8
  %name255 = getelementptr inbounds %struct.sent, %struct.sent* %114, i32 0, i32 2
  %115 = load i8*, i8** %name255, align 8
  store i8* %115, i8** %firstn, align 8
  br label %do.body.256

do.body.256:                                      ; preds = %if.end.254
  br label %do.end.257

do.end.257:                                       ; preds = %do.body.256
  br label %if.end.262

if.else.258:                                      ; preds = %land.lhs.true.246, %lor.lhs.false.244, %if.end.239
  br label %do.body.259

do.body.259:                                      ; preds = %if.else.258
  br label %do.end.260

do.end.260:                                       ; preds = %do.body.259
  %116 = load i32, i32* %sockfd, align 4
  %call261 = call i32 @close(i32 %116)
  br label %if.end.262

if.end.262:                                       ; preds = %do.end.260, %do.end.257
  br label %while.cond

while.end.263:                                    ; preds = %while.cond
  %117 = load %struct.__dirstream*, %struct.__dirstream** %dirp, align 8
  %call264 = call i32 @closedir(%struct.__dirstream* %117)
  %118 = load i32, i32* @lsflag, align 4
  %tobool265 = icmp ne i32 %118, 0
  br i1 %tobool265, label %if.end.270, label %land.lhs.true.266

land.lhs.true.266:                                ; preds = %while.end.263
  %119 = load i32, i32* %nperfect, align 4
  %cmp267 = icmp eq i32 %119, 1
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %land.lhs.true.266
  %120 = load i32, i32* %nperfect, align 4
  store i32 %120, i32* %ngood, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %land.lhs.true.266, %while.end.263
  %121 = load i32, i32* %nfound, align 4
  %tobool271 = icmp ne i32 %121, 0
  br i1 %tobool271, label %land.lhs.true.272, label %if.end.314

land.lhs.true.272:                                ; preds = %if.end.270
  %122 = load i32, i32* @lsflag, align 4
  %tobool273 = icmp ne i32 %122, 0
  br i1 %tobool273, label %land.lhs.true.277, label %lor.lhs.false.274

lor.lhs.false.274:                                ; preds = %land.lhs.true.272
  %123 = load i32, i32* %ngood, align 4
  %cmp275 = icmp ne i32 %123, 1
  br i1 %cmp275, label %land.lhs.true.277, label %if.end.314

land.lhs.true.277:                                ; preds = %lor.lhs.false.274, %land.lhs.true.272
  %124 = load i32, i32* @quietflag, align 4
  %tobool278 = icmp ne i32 %124, 0
  br i1 %tobool278, label %if.end.314, label %if.then.279

if.then.279:                                      ; preds = %land.lhs.true.277
  %125 = load i32, i32* %ngood, align 4
  switch i32 %125, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.282
  ]

sw.bb:                                            ; preds = %if.then.279
  %126 = load i32, i32* %nfound, align 4
  %cmp280 = icmp sgt i32 %126, 1
  %cond = select i1 %cmp280, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)
  call void (i32, i8*, ...) @Msg(i32 0, i8* %cond)
  br label %sw.epilog

sw.bb.282:                                        ; preds = %if.then.279
  %127 = load i32, i32* %nfound, align 4
  %cmp283 = icmp sgt i32 %127, 1
  %cond285 = select i1 %cmp283, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)
  call void (i32, i8*, ...) @Msg(i32 0, i8* %cond285)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.279
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.282, %sw.bb
  %128 = load %struct.sent*, %struct.sent** %slist, align 8
  store %struct.sent* %128, %struct.sent** %sent, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %129 = load %struct.sent*, %struct.sent** %sent, align 8
  %tobool286 = icmp ne %struct.sent* %129, null
  br i1 %tobool286, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %130 = load %struct.sent*, %struct.sent** %sent, align 8
  %mode287 = getelementptr inbounds %struct.sent, %struct.sent* %130, i32 0, i32 1
  %131 = load i32, i32* %mode287, align 4
  switch i32 %131, label %sw.epilog.312 [
    i32 448, label %sw.bb.288
    i32 384, label %sw.bb.291
    i32 449, label %sw.bb.294
    i32 385, label %sw.bb.297
    i32 -1, label %sw.bb.300
    i32 -2, label %sw.bb.303
    i32 -3, label %sw.bb.306
    i32 -4, label %sw.bb.309
  ]

sw.bb.288:                                        ; preds = %for.body
  %132 = load %struct.sent*, %struct.sent** %sent, align 8
  %name289 = getelementptr inbounds %struct.sent, %struct.sent* %132, i32 0, i32 2
  %133 = load i8*, i8** %name289, align 8
  %call290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* %133)
  br label %sw.epilog.312

sw.bb.291:                                        ; preds = %for.body
  %134 = load %struct.sent*, %struct.sent** %sent, align 8
  %name292 = getelementptr inbounds %struct.sent, %struct.sent* %134, i32 0, i32 2
  %135 = load i8*, i8** %name292, align 8
  %call293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* %135)
  br label %sw.epilog.312

sw.bb.294:                                        ; preds = %for.body
  %136 = load %struct.sent*, %struct.sent** %sent, align 8
  %name295 = getelementptr inbounds %struct.sent, %struct.sent* %136, i32 0, i32 2
  %137 = load i8*, i8** %name295, align 8
  %call296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* %137)
  br label %sw.epilog.312

sw.bb.297:                                        ; preds = %for.body
  %138 = load %struct.sent*, %struct.sent** %sent, align 8
  %name298 = getelementptr inbounds %struct.sent, %struct.sent* %138, i32 0, i32 2
  %139 = load i8*, i8** %name298, align 8
  %call299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* %139)
  br label %sw.epilog.312

sw.bb.300:                                        ; preds = %for.body
  %140 = load %struct.sent*, %struct.sent** %sent, align 8
  %name301 = getelementptr inbounds %struct.sent, %struct.sent* %140, i32 0, i32 2
  %141 = load i8*, i8** %name301, align 8
  %call302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* %141, i32 63)
  br label %sw.epilog.312

sw.bb.303:                                        ; preds = %for.body
  %142 = load %struct.sent*, %struct.sent** %sent, align 8
  %name304 = getelementptr inbounds %struct.sent, %struct.sent* %142, i32 0, i32 2
  %143 = load i8*, i8** %name304, align 8
  %call305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* %143)
  br label %sw.epilog.312

sw.bb.306:                                        ; preds = %for.body
  %144 = load %struct.sent*, %struct.sent** %sent, align 8
  %name307 = getelementptr inbounds %struct.sent, %struct.sent* %144, i32 0, i32 2
  %145 = load i8*, i8** %name307, align 8
  %call308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* %145)
  br label %sw.epilog.312

sw.bb.309:                                        ; preds = %for.body
  %146 = load %struct.sent*, %struct.sent** %sent, align 8
  %name310 = getelementptr inbounds %struct.sent, %struct.sent* %146, i32 0, i32 2
  %147 = load i8*, i8** %name310, align 8
  %call311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %147)
  br label %sw.epilog.312

sw.epilog.312:                                    ; preds = %for.body, %sw.bb.309, %sw.bb.306, %sw.bb.303, %sw.bb.300, %sw.bb.297, %sw.bb.294, %sw.bb.291, %sw.bb.288
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.312
  %148 = load %struct.sent*, %struct.sent** %sent, align 8
  %next313 = getelementptr inbounds %struct.sent, %struct.sent* %148, i32 0, i32 0
  %149 = load %struct.sent*, %struct.sent** %next313, align 8
  store %struct.sent* %149, %struct.sent** %sent, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.314

if.end.314:                                       ; preds = %for.end, %land.lhs.true.277, %lor.lhs.false.274, %if.end.270
  %150 = load i32, i32* %ndead, align 4
  %tobool315 = icmp ne i32 %150, 0
  br i1 %tobool315, label %land.lhs.true.316, label %if.end.332

land.lhs.true.316:                                ; preds = %if.end.314
  %151 = load i32, i32* @quietflag, align 4
  %tobool317 = icmp ne i32 %151, 0
  br i1 %tobool317, label %if.end.332, label %if.then.318

if.then.318:                                      ; preds = %land.lhs.true.316
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0), i8** %m, align 8
  %152 = load i32, i32* @wipeflag, align 4
  %tobool319 = icmp ne i32 %152, 0
  br i1 %tobool319, label %if.then.320, label %if.else.324

if.then.320:                                      ; preds = %if.then.318
  %153 = load i32, i32* %nwipe, align 4
  %154 = load i32, i32* %nwipe, align 4
  %cmp321 = icmp sgt i32 %154, 1
  %cond323 = select i1 %cmp321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i32 %153, i8* %cond323)
  br label %if.end.331

if.else.324:                                      ; preds = %if.then.318
  %155 = load i8*, i8** %m, align 8
  %156 = load i32, i32* %ndead, align 4
  %cmp325 = icmp sgt i32 %156, 1
  %cond327 = select i1 %cmp325, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
  %157 = load i32, i32* %ndead, align 4
  %cmp328 = icmp sgt i32 %157, 1
  %cond330 = select i1 %cmp328, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)
  call void (i32, i8*, ...) @Msg(i32 0, i8* %155, i8* %cond327, i8* %cond330)
  br label %if.end.331

if.end.331:                                       ; preds = %if.else.324, %if.then.320
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %land.lhs.true.316, %if.end.314
  %158 = load i32, i32* %firsts, align 4
  %cmp333 = icmp ne i32 %158, -1
  br i1 %cmp333, label %if.then.335, label %if.else.339

if.then.335:                                      ; preds = %if.end.332
  %159 = load i32, i32* %sdirlen, align 4
  %idx.ext336 = sext i32 %159 to i64
  %add.ptr337 = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i64 %idx.ext336
  %160 = load i8*, i8** %firstn, align 8
  %call338 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr337, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %160) #7
  %161 = load i32, i32* %firsts, align 4
  %162 = load i32*, i32** %fdp.addr, align 8
  store i32 %161, i32* %162, align 4
  br label %if.end.340

if.else.339:                                      ; preds = %if.end.332
  %163 = load i32, i32* %sdirlen, align 4
  %idxprom = sext i32 %163 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @SockPath, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.340

if.end.340:                                       ; preds = %if.else.339, %if.then.335
  %164 = load %struct.sent*, %struct.sent** %slist, align 8
  store %struct.sent* %164, %struct.sent** %sent, align 8
  br label %for.cond.341

for.cond.341:                                     ; preds = %for.inc.346, %if.end.340
  %165 = load %struct.sent*, %struct.sent** %sent, align 8
  %tobool342 = icmp ne %struct.sent* %165, null
  br i1 %tobool342, label %for.body.343, label %for.end.347

for.body.343:                                     ; preds = %for.cond.341
  %166 = load %struct.sent*, %struct.sent** %sent, align 8
  %next344 = getelementptr inbounds %struct.sent, %struct.sent* %166, i32 0, i32 0
  %167 = load %struct.sent*, %struct.sent** %next344, align 8
  store %struct.sent* %167, %struct.sent** %nsent, align 8
  %168 = load %struct.sent*, %struct.sent** %sent, align 8
  %name345 = getelementptr inbounds %struct.sent, %struct.sent* %168, i32 0, i32 2
  %169 = load i8*, i8** %name345, align 8
  call void @free(i8* %169) #7
  %170 = load %struct.sent*, %struct.sent** %sent, align 8
  %171 = bitcast %struct.sent* %170 to i8*
  call void @free(i8* %171) #7
  br label %for.inc.346

for.inc.346:                                      ; preds = %for.body.343
  %172 = load %struct.sent*, %struct.sent** %nsent, align 8
  store %struct.sent* %172, %struct.sent** %sent, align 8
  br label %for.cond.341

for.end.347:                                      ; preds = %for.cond.341
  %173 = load i32, i32* @eff_uid, align 4
  call void @xseteuid(i32 %173)
  %174 = load i32, i32* @eff_gid, align 4
  call void @xsetegid(i32 %174)
  %175 = load i32*, i32** %notherp.addr, align 8
  %tobool348 = icmp ne i32* %175, null
  br i1 %tobool348, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %for.end.347
  %176 = load i32, i32* %npriv, align 4
  %177 = load i32*, i32** %notherp.addr, align 8
  store i32 %176, i32* %177, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %for.end.347
  %178 = load i32*, i32** %nfoundp.addr, align 8
  %tobool351 = icmp ne i32* %178, null
  br i1 %tobool351, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %if.end.350
  %179 = load i32, i32* %nfound, align 4
  %180 = load i32, i32* %nwipe, align 4
  %sub = sub nsw i32 %179, %180
  %181 = load i32*, i32** %nfoundp.addr, align 8
  store i32 %sub, i32* %181, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.352, %if.end.350
  %182 = load i32, i32* %ngood, align 4
  ret i32 %182
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare void @xseteuid(i32) #2

declare void @xsetegid(i32) #2

declare %struct.__dirstream* @opendir(i8*) #2

; Function Attrs: noreturn
declare void @Panic(i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

declare i8* @SaveStr(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @MakeClientSocket(i32 %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %a = alloca %struct.sockaddr_un, align 2
  %agg.tmp = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %err, i32* %err.addr, align 4
  %call = call i32 @socket(i32 1, i32 1, i32 0) #7
  store i32 %call, i32* %s, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #9
  %0 = load i32, i32* %call1, align 4
  call void (i32, i8*, ...) @Panic(i32 %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %sun_family = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %a, i32 0, i32 0
  store i16 1, i16* %sun_family, align 2
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %a, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i32 0
  %call2 = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i64 108) #7
  %sun_path3 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %a, i32 0, i32 1
  %arrayidx = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path3, i32 0, i64 107
  store i8 0, i8* %arrayidx, align 1
  %1 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %1)
  %2 = load i32, i32* @real_gid, align 4
  call void @xsetegid(i32 %2)
  %3 = load i32, i32* %s, align 4
  %__sockaddr__ = bitcast %union.__CONST_SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %4 = bitcast %struct.sockaddr_un* %a to %struct.sockaddr*
  store %struct.sockaddr* %4, %struct.sockaddr** %__sockaddr__, align 8
  %call4 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #8
  %add = add i64 %call4, 2
  %conv = trunc i64 %add to i32
  %coerce.dive = getelementptr %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %5 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %5, i32 %conv)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %6 = load i32, i32* %err.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.8
  %call10 = call i32* @__errno_location() #9
  %7 = load i32, i32* %call10, align 4
  call void (i32, i8*, ...) @Msg(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.8
  br label %do.body

do.body:                                          ; preds = %if.end.11
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load i32, i32* %s, align 4
  %call12 = call i32 @close(i32 %8)
  store i32 -1, i32* %s, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %if.end
  %9 = load i32, i32* @eff_uid, align 4
  call void @xseteuid(i32 %9)
  %10 = load i32, i32* @eff_gid, align 4
  call void @xsetegid(i32 %10)
  %11 = load i32, i32* %s, align 4
  ret i32 %11
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #5

declare i32 @close(i32) #2

declare i32 @closedir(%struct.__dirstream*) #2

declare void @Msg(i32, i8*, ...) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @MakeServerSocket() #0 {
entry:
  %s = alloca i32, align 4
  %a = alloca %struct.sockaddr_un, align 2
  %st = alloca %struct.stat, align 8
  %agg.tmp = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %agg.tmp27 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %call = call i32 @socket(i32 1, i32 1, i32 0) #7
  store i32 %call, i32* %s, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #9
  %0 = load i32, i32* %call1, align 4
  call void (i32, i8*, ...) @Panic(i32 %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %sun_family = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %a, i32 0, i32 0
  store i16 1, i16* %sun_family, align 2
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %a, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i32 0
  %call2 = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i64 108) #7
  %sun_path3 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %a, i32 0, i32 1
  %arrayidx = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path3, i32 0, i64 107
  store i8 0, i8* %arrayidx, align 1
  %1 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %1)
  %2 = load i32, i32* @real_gid, align 4
  call void @xsetegid(i32 %2)
  %3 = load i32, i32* %s, align 4
  %__sockaddr__ = bitcast %union.__CONST_SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %4 = bitcast %struct.sockaddr_un* %a to %struct.sockaddr*
  store %struct.sockaddr* %4, %struct.sockaddr** %__sockaddr__, align 8
  %call4 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #8
  %add = add i64 %call4, 2
  %conv = trunc i64 %add to i32
  %coerce.dive = getelementptr %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %5 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call5 = call i32 @connect(i32 %3, %struct.sockaddr* %5, i32 %conv)
  %cmp6 = icmp ne i32 %call5, -1
  br i1 %cmp6, label %if.then.8, label %if.end.25

if.then.8:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load i32, i32* @quietflag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 57
  %8 = load i32, i32* %d_userpid, align 4
  call void @Kill(i32 %8, i32 1)
  call void @eexit(i32 11) #10
  unreachable

if.end.10:                                        ; preds = %do.end
  %call11 = call i8* @Filename(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0))
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), i8* %call11)
  %call12 = call i32 @stat(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), %struct.stat* %st) #7
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.10
  %call16 = call i32* @__errno_location() #9
  %9 = load i32, i32* %call16, align 4
  call void (i32, i8*, ...) @Panic(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #10
  unreachable

if.end.17:                                        ; preds = %if.end.10
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %10 = load i32, i32* %st_uid, align 4
  %11 = load i32, i32* @real_uid, align 4
  %cmp18 = icmp ne i32 %10, %11
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0)) #10
  unreachable

if.end.21:                                        ; preds = %if.end.17
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %12 = load i32, i32* %st_mode, align 4
  %and = and i32 %12, 448
  %cmp22 = icmp eq i32 %and, 384
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.21
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0)) #10
  unreachable

if.else:                                          ; preds = %if.end.21
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0)) #10
  unreachable

if.end.25:                                        ; preds = %if.end
  %call26 = call i32 @unlink(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #7
  %13 = load i32, i32* %s, align 4
  %__sockaddr__28 = bitcast %union.__CONST_SOCKADDR_ARG* %agg.tmp27 to %struct.sockaddr**
  %14 = bitcast %struct.sockaddr_un* %a to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %__sockaddr__28, align 8
  %call29 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #8
  %add30 = add i64 %call29, 2
  %conv31 = trunc i64 %add30 to i32
  %coerce.dive32 = getelementptr %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %agg.tmp27, i32 0, i32 0
  %15 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive32, align 8
  %call33 = call i32 @bind(i32 %13, %struct.sockaddr* %15, i32 %conv31) #7
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.25
  %call37 = call i32* @__errno_location() #9
  %16 = load i32, i32* %call37, align 4
  call void (i32, i8*, ...) @Panic(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #10
  unreachable

if.end.38:                                        ; preds = %if.end.25
  %17 = load %struct.display*, %struct.display** @displays, align 8
  %tobool39 = icmp ne %struct.display* %17, null
  %cond = select i1 %tobool39, i32 64, i32 0
  %or = or i32 384, %cond
  %18 = load i8*, i8** @multi, align 8
  %tobool40 = icmp ne i8* %18, null
  %cond41 = select i1 %tobool40, i32 1, i32 0
  %or42 = or i32 %or, %cond41
  %call43 = call i32 @chmod(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i32 %or42) #7
  %19 = load i32, i32* %s, align 4
  %call44 = call i32 @listen(i32 %19, i32 5) #7
  %cmp45 = icmp eq i32 %call44, -1
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.38
  %call48 = call i32* @__errno_location() #9
  %20 = load i32, i32* %call48, align 4
  call void (i32, i8*, ...) @Panic(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #10
  unreachable

if.end.49:                                        ; preds = %if.end.38
  %21 = load i32, i32* %s, align 4
  %call50 = call i32 @getpid() #7
  %call51 = call i32 (i32, i32, ...) @fcntl(i32 %21, i32 8, i32 %call50)
  br label %do.body.52

do.body.52:                                       ; preds = %if.end.49
  br label %do.end.53

do.end.53:                                        ; preds = %do.body.52
  %22 = load i32, i32* @eff_uid, align 4
  call void @xseteuid(i32 %22)
  %23 = load i32, i32* @eff_gid, align 4
  call void @xsetegid(i32 %23)
  %24 = load i32, i32* %s, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

declare void @Kill(i32, i32) #2

; Function Attrs: noreturn
declare void @eexit(i32) #3

declare i8* @Filename(i8*) #2

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #5

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #5

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #5

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind
declare i32 @getpid() #5

; Function Attrs: nounwind uwtable
define void @SendCreateMsg(i8* %sty, %struct.NewWindow* %nwin) #0 {
entry:
  %sty.addr = alloca i8*, align 8
  %nwin.addr = alloca %struct.NewWindow*, align 8
  %s = alloca i32, align 4
  %m = alloca %struct.msg, align 4
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %n = alloca i32, align 4
  %av = alloca i8**, align 8
  store i8* %sty, i8** %sty.addr, align 8
  store %struct.NewWindow* %nwin, %struct.NewWindow** %nwin.addr, align 8
  %0 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %args = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %0, i32 0, i32 2
  %1 = load i8**, i8*** %args, align 8
  store i8** %1, i8*** %av, align 8
  %2 = load i8*, i8** %sty.addr, align 8
  %call = call i64 @strlen(i8* %2) #8
  %cmp = icmp ugt i64 %call, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %sty.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 255
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %sty.addr, align 8
  %call1 = call i64 @strlen(i8* %4) #8
  %cmp2 = icmp ugt i64 %call1, 1535
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load i8*, i8** %sty.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 1535
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %call6 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #8
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i64 %call6
  %6 = load i8*, i8** %sty.addr, align 8
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %6) #7
  %call8 = call i32 @MakeClientSocket(i32 1)
  store i32 %call8, i32* %s, align 4
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  call void @exit(i32 1) #11
  unreachable

if.end.11:                                        ; preds = %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.end.11
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = bitcast %struct.msg* %m to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 12584, i32 1, i1 false)
  %type = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 1
  store i32 0, i32* %type, align 4
  %m_tty = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty, i32 0, i32 0
  %8 = load i8*, i8** @attach_tty, align 8
  %call12 = call i8* @strncpy(i8* %arraydecay, i8* %8, i64 4095) #7
  %m_tty13 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty13, i32 0, i64 4095
  store i8 0, i8* %arrayidx14, align 1
  %m15 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create = bitcast %union.anon* %m15 to %struct.anon.3*
  %line = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create, i32 0, i32 5
  %arraydecay16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay16, i8** %p, align 8
  store i32 0, i32* %n, align 4
  %9 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %args17 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %9, i32 0, i32 2
  %10 = load i8**, i8*** %args17, align 8
  %11 = load i8**, i8*** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 2), align 8
  %cmp18 = icmp ne i8** %10, %11
  br i1 %cmp18, label %if.then.19, label %if.end.37

if.then.19:                                       ; preds = %do.end
  %12 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %args20 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %12, i32 0, i32 2
  %13 = load i8**, i8*** %args20, align 8
  store i8** %13, i8*** %av, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %14 = load i8**, i8*** %av, align 8
  %15 = load i8*, i8** %14, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %16 = load i32, i32* %n, align 4
  %cmp21 = icmp slt i32 %16, 63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp21, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %18 = load i8**, i8*** %av, align 8
  %19 = load i8*, i8** %18, align 8
  %call22 = call i64 @strlen(i8* %19) #8
  %add = add i64 %call22, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4
  %20 = load i8*, i8** %p, align 8
  %21 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  %m24 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create25 = bitcast %union.anon* %m24 to %struct.anon.3*
  %line26 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create25, i32 0, i32 5
  %arraydecay27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line26, i32 0, i32 0
  %add.ptr28 = getelementptr inbounds i8, i8* %arraydecay27, i64 4096
  %add.ptr29 = getelementptr inbounds i8, i8* %add.ptr28, i64 -1
  %cmp30 = icmp uge i8* %add.ptr23, %add.ptr29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  br label %for.end

if.end.33:                                        ; preds = %for.body
  %22 = load i8*, i8** %p, align 8
  %23 = load i8**, i8*** %av, align 8
  %24 = load i8*, i8** %23, align 8
  %call34 = call i8* @strcpy(i8* %22, i8* %24) #7
  %25 = load i32, i32* %len, align 4
  %26 = load i8*, i8** %p, align 8
  %idx.ext35 = sext i32 %25 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %26, i64 %idx.ext35
  store i8* %add.ptr36, i8** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %27 = load i8**, i8*** %av, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %incdec.ptr, i8*** %av, align 8
  %28 = load i32, i32* %n, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.32, %land.end
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %do.end
  %29 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %aka = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %29, i32 0, i32 1
  %30 = load i8*, i8** %aka, align 8
  %31 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 1), align 8
  %cmp38 = icmp ne i8* %30, %31
  br i1 %cmp38, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.37
  %32 = load i8*, i8** %p, align 8
  %33 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %aka40 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %33, i32 0, i32 1
  %34 = load i8*, i8** %aka40, align 8
  %call41 = call i64 @strlen(i8* %34) #8
  %add.ptr42 = getelementptr inbounds i8, i8* %32, i64 %call41
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr42, i64 1
  %m44 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create45 = bitcast %union.anon* %m44 to %struct.anon.3*
  %line46 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create45, i32 0, i32 5
  %arraydecay47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line46, i32 0, i32 0
  %add.ptr48 = getelementptr inbounds i8, i8* %arraydecay47, i64 4096
  %cmp49 = icmp ult i8* %add.ptr43, %add.ptr48
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %land.lhs.true
  %35 = load i8*, i8** %p, align 8
  %36 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %aka52 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %36, i32 0, i32 1
  %37 = load i8*, i8** %aka52, align 8
  %call53 = call i8* @strcpy(i8* %35, i8* %37) #7
  br label %if.end.54

if.else:                                          ; preds = %land.lhs.true, %if.end.37
  %38 = load i8*, i8** %p, align 8
  store i8 0, i8* %38, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.51
  %39 = load i32, i32* %n, align 4
  %m55 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create56 = bitcast %union.anon* %m55 to %struct.anon.3*
  %nargs = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create56, i32 0, i32 4
  store i32 %39, i32* %nargs, align 4
  %40 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %aflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %40, i32 0, i32 5
  %41 = load i32, i32* %aflag, align 4
  %m57 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create58 = bitcast %union.anon* %m57 to %struct.anon.3*
  %aflag59 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create58, i32 0, i32 1
  store i32 %41, i32* %aflag59, align 4
  %42 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %flowflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %42, i32 0, i32 6
  %43 = load i32, i32* %flowflag, align 4
  %m60 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create61 = bitcast %union.anon* %m60 to %struct.anon.3*
  %flowflag62 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create61, i32 0, i32 2
  store i32 %43, i32* %flowflag62, align 4
  %44 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %lflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %44, i32 0, i32 7
  %45 = load i32, i32* %lflag, align 4
  %m63 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create64 = bitcast %union.anon* %m63 to %struct.anon.3*
  %lflag65 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create64, i32 0, i32 0
  store i32 %45, i32* %lflag65, align 4
  %46 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %histheight = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %46, i32 0, i32 8
  %47 = load i32, i32* %histheight, align 4
  %m66 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create67 = bitcast %union.anon* %m66 to %struct.anon.3*
  %hheight = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create67, i32 0, i32 3
  store i32 %47, i32* %hheight, align 4
  %m68 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create69 = bitcast %union.anon* %m68 to %struct.anon.3*
  %dir = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create69, i32 0, i32 6
  %arraydecay70 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dir, i32 0, i32 0
  %call71 = call i8* @getcwd(i8* %arraydecay70, i64 4096) #7
  %cmp72 = icmp eq i8* %call71, null
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.54
  %call75 = call i32* @__errno_location() #9
  %48 = load i32, i32* %call75, align 4
  call void (i32, i8*, ...) @Msg(i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0))
  br label %return

if.end.76:                                        ; preds = %if.end.54
  %49 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %term = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %49, i32 0, i32 4
  %50 = load i8*, i8** %term, align 8
  %51 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 4), align 8
  %cmp77 = icmp ne i8* %50, %51
  br i1 %cmp77, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %if.end.76
  %m80 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create81 = bitcast %union.anon* %m80 to %struct.anon.3*
  %screenterm = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create81, i32 0, i32 7
  %arraydecay82 = getelementptr inbounds [33 x i8], [33 x i8]* %screenterm, i32 0, i32 0
  %52 = load %struct.NewWindow*, %struct.NewWindow** %nwin.addr, align 8
  %term83 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %52, i32 0, i32 4
  %53 = load i8*, i8** %term83, align 8
  %call84 = call i8* @strncpy(i8* %arraydecay82, i8* %53, i64 32) #7
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.79, %if.end.76
  %m86 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %create87 = bitcast %union.anon* %m86 to %struct.anon.3*
  %screenterm88 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create87, i32 0, i32 7
  %arrayidx89 = getelementptr inbounds [33 x i8], [33 x i8]* %screenterm88, i32 0, i64 32
  store i8 0, i8* %arrayidx89, align 1
  %protocol_revision = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 0
  store i32 1836279557, i32* %protocol_revision, align 4
  br label %do.body.90

do.body.90:                                       ; preds = %if.end.85
  br label %do.end.91

do.end.91:                                        ; preds = %do.body.90
  %54 = load i32, i32* %s, align 4
  %55 = bitcast %struct.msg* %m to i8*
  %call92 = call i64 @write(i32 %54, i8* %55, i64 12584)
  %cmp93 = icmp ne i64 %call92, 12584
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %do.end.91
  %call96 = call i32* @__errno_location() #9
  %56 = load i32, i32* %call96, align 4
  call void (i32, i8*, ...) @Msg(i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %do.end.91
  %57 = load i32, i32* %s, align 4
  %call98 = call i32 @close(i32 %57)
  br label %return

return:                                           ; preds = %if.end.97, %if.then.74
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #5

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @SendErrorMsg(i8* %tty, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %s = alloca i32, align 4
  %m = alloca %struct.msg, align 4
  store i8* %tty, i8** %tty.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %m1 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %message = bitcast %union.anon* %m1 to [8192 x i8]*
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %message, i32 0, i32 0
  %0 = load i8*, i8** %buf.addr, align 8
  %call = call i8* @strncpy(i8* %arraydecay, i8* %0, i64 8191) #7
  %m2 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 3
  %message3 = bitcast %union.anon* %m2 to [8192 x i8]*
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %message3, i32 0, i64 8191
  store i8 0, i8* %arrayidx, align 1
  %call4 = call i32 @MakeClientSocket(i32 0)
  store i32 %call4, i32* %s, align 4
  %1 = load i32, i32* %s, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 1
  store i32 1, i32* %type, align 4
  %m_tty = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty, i32 0, i32 0
  %2 = load i8*, i8** %tty.addr, align 8
  %call6 = call i8* @strncpy(i8* %arraydecay5, i8* %2, i64 4095) #7
  %m_tty7 = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty7, i32 0, i64 4095
  store i8 0, i8* %arrayidx8, align 1
  %protocol_revision = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 0
  store i32 1836279557, i32* %protocol_revision, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load i32, i32* %s, align 4
  %4 = bitcast %struct.msg* %m to i8*
  %call9 = call i64 @write(i32 %3, i8* %4, i64 12584)
  %5 = load i32, i32* %s, align 4
  %call10 = call i32 @close(i32 %5)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @ReceiveMsg() #0 {
entry:
  %left = alloca i32, align 4
  %len = alloca i32, align 4
  %p = alloca i8*, align 8
  %ns = alloca i32, align 4
  %wi = alloca %struct.win*, align 8
  %recvfd = alloca i32, align 4
  %user = alloca %struct.acluser*, align 8
  %a = alloca %struct.sockaddr_un, align 2
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca %struct.iovec, align 8
  %control = alloca [1024 x i8], align 16
  %agg.tmp = alloca %union.__SOCKADDR_ARG, align 8
  %cmsg = alloca %struct.cmsghdr*, align 8
  %cl = alloca i32, align 4
  %cp = alloca i8*, align 8
  %passedfd = alloca i32, align 4
  %oldSockPath = alloca i8*, align 8
  %s = alloca i32, align 4
  %0 = load i32, i32* @ServerSocket, align 4
  store i32 %0, i32* %ns, align 4
  store i32 -1, i32* %recvfd, align 4
  store i32 110, i32* %len, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i32, i32* %ns, align 4
  %__sockaddr__ = bitcast %union.__SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %2 = bitcast %struct.sockaddr_un* %a to %struct.sockaddr*
  store %struct.sockaddr* %2, %struct.sockaddr** %__sockaddr__, align 8
  %3 = bitcast i32* %len to i8*
  %4 = bitcast i8* %3 to i32*
  %coerce.dive = getelementptr %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %5 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call = call i32 @accept(i32 %1, %struct.sockaddr* %5, i32* %4)
  store i32 %call, i32* %ns, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %call1 = call i32* @__errno_location() #9
  %6 = load i32, i32* %call1, align 4
  call void (i32, i8*, ...) @Msg(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %do.end
  store i8* bitcast (%struct.msg* @ReceiveMsg.m to i8*), i8** %p, align 8
  store i32 12584, i32* %left, align 4
  %7 = bitcast %struct.msghdr* %msg to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 56, i32 8, i1 false)
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i32 0, i32 0
  store i8* bitcast (%struct.msg* @ReceiveMsg.m to i8*), i8** %iov_base, align 8
  %8 = load i32, i32* %left, align 4
  %conv = sext i32 %8 to i64
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i32 0, i32 1
  store i64 %conv, i64* %iov_len, align 8
  %msg_iov = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 2
  store %struct.iovec* %iov, %struct.iovec** %msg_iov, align 8
  %msg_iovlen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 3
  store i64 1, i64* %msg_iovlen, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  store i64 1024, i64* %msg_controllen, align 8
  %9 = bitcast [1024 x i8]* %control to i8*
  %msg_control = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 4
  store i8* %9, i8** %msg_control, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then.11, %if.end
  %10 = load i32, i32* %left, align 4
  %cmp2 = icmp sgt i32 %10, 0
  br i1 %cmp2, label %while.body, label %while.end.51

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %ns, align 4
  %call4 = call i64 @recvmsg(i32 %11, %struct.msghdr* %msg, i32 0)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %len, align 4
  %12 = load i32, i32* %len, align 4
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %while.body
  %call8 = call i32* @__errno_location() #9
  %13 = load i32, i32* %call8, align 4
  %cmp9 = icmp eq i32 %13, 4
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  br label %while.cond

if.end.12:                                        ; preds = %land.lhs.true, %while.body
  %14 = load i32, i32* %len, align 4
  %cmp13 = icmp slt i32 %14, 0
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %15 = load i32, i32* %ns, align 4
  %call16 = call i32 @close(i32 %15)
  %call17 = call i32* @__errno_location() #9
  %16 = load i32, i32* %call17, align 4
  call void (i32, i8*, ...) @Msg(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  br label %sw.epilog

if.end.18:                                        ; preds = %if.end.12
  %msg_controllen19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  %17 = load i64, i64* %msg_controllen19, align 8
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %if.then.20, label %if.end.49

if.then.20:                                       ; preds = %if.end.18
  %msg_controllen21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  %18 = load i64, i64* %msg_controllen21, align 8
  %cmp22 = icmp uge i64 %18, 16
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  %msg_control24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 4
  %19 = load i8*, i8** %msg_control24, align 8
  %20 = bitcast i8* %19 to %struct.cmsghdr*
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.cmsghdr* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct.cmsghdr* %cond, %struct.cmsghdr** %cmsg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %21 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %tobool25 = icmp ne %struct.cmsghdr* %21, null
  br i1 %tobool25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %22, i32 0, i32 1
  %23 = load i32, i32* %cmsg_level, align 4
  %cmp26 = icmp ne i32 %23, 1
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %24 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %24, i32 0, i32 2
  %25 = load i32, i32* %cmsg_type, align 4
  %cmp28 = icmp ne i32 %25, 1
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.31:                                        ; preds = %lor.lhs.false
  %26 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %__cmsg_data = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %26, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %__cmsg_data, i32 0, i32 0
  store i8* %arraydecay, i8** %cp, align 8
  %27 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %cmsg_len = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %27, i32 0, i32 0
  %28 = load i64, i64* %cmsg_len, align 8
  %conv32 = trunc i64 %28 to i32
  store i32 %conv32, i32* %cl, align 4
  br label %while.cond.33

while.cond.33:                                    ; preds = %if.end.45, %if.end.31
  %29 = load i32, i32* %cl, align 4
  %conv34 = sext i32 %29 to i64
  %cmp35 = icmp uge i64 %conv34, 20
  br i1 %cmp35, label %while.body.37, label %while.end

while.body.37:                                    ; preds = %while.cond.33
  %30 = load i8*, i8** %cp, align 8
  %31 = bitcast i32* %passedfd to i8*
  call void @bcopy(i8* %30, i8* %31, i64 4) #7
  %32 = load i32, i32* %recvfd, align 4
  %cmp38 = icmp sge i32 %32, 0
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.45

land.lhs.true.40:                                 ; preds = %while.body.37
  %33 = load i32, i32* %passedfd, align 4
  %34 = load i32, i32* %recvfd, align 4
  %cmp41 = icmp ne i32 %33, %34
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %land.lhs.true.40
  %35 = load i32, i32* %recvfd, align 4
  %call44 = call i32 @close(i32 %35)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.40, %while.body.37
  %36 = load i32, i32* %passedfd, align 4
  store i32 %36, i32* %recvfd, align 4
  %37 = load i32, i32* %cl, align 4
  %conv46 = sext i32 %37 to i64
  %sub = sub i64 %conv46, 20
  %conv47 = trunc i64 %sub to i32
  store i32 %conv47, i32* %cl, align 4
  br label %while.cond.33

while.end:                                        ; preds = %while.cond.33
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.then.30
  %38 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %call48 = call %struct.cmsghdr* @__cmsg_nxthdr(%struct.msghdr* %msg, %struct.cmsghdr* %38) #7
  store %struct.cmsghdr* %call48, %struct.cmsghdr** %cmsg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.49

if.end.49:                                        ; preds = %for.end, %if.end.18
  %39 = load i32, i32* %len, align 4
  %40 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %41 = load i32, i32* %len, align 4
  %42 = load i32, i32* %left, align 4
  %sub50 = sub nsw i32 %42, %41
  store i32 %sub50, i32* %left, align 4
  br label %while.end.51

while.end.51:                                     ; preds = %if.end.49, %while.cond
  br label %while.cond.52

while.cond.52:                                    ; preds = %if.end.70, %if.then.65, %while.end.51
  %43 = load i32, i32* %left, align 4
  %cmp53 = icmp sgt i32 %43, 0
  br i1 %cmp53, label %while.body.55, label %while.end.74

while.body.55:                                    ; preds = %while.cond.52
  %44 = load i32, i32* %ns, align 4
  %45 = load i8*, i8** %p, align 8
  %46 = load i32, i32* %left, align 4
  %conv56 = sext i32 %46 to i64
  %call57 = call i64 @read(i32 %44, i8* %45, i64 %conv56)
  %conv58 = trunc i64 %call57 to i32
  store i32 %conv58, i32* %len, align 4
  %47 = load i32, i32* %len, align 4
  %cmp59 = icmp slt i32 %47, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.66

land.lhs.true.61:                                 ; preds = %while.body.55
  %call62 = call i32* @__errno_location() #9
  %48 = load i32, i32* %call62, align 4
  %cmp63 = icmp eq i32 %48, 4
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true.61
  br label %while.cond.52

if.end.66:                                        ; preds = %land.lhs.true.61, %while.body.55
  %49 = load i32, i32* %len, align 4
  %cmp67 = icmp sle i32 %49, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  br label %while.end.74

if.end.70:                                        ; preds = %if.end.66
  %50 = load i32, i32* %len, align 4
  %51 = load i8*, i8** %p, align 8
  %idx.ext71 = sext i32 %50 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %51, i64 %idx.ext71
  store i8* %add.ptr72, i8** %p, align 8
  %52 = load i32, i32* %len, align 4
  %53 = load i32, i32* %left, align 4
  %sub73 = sub nsw i32 %53, %52
  store i32 %sub73, i32* %left, align 4
  br label %while.cond.52

while.end.74:                                     ; preds = %if.then.69, %while.cond.52
  %54 = load i32, i32* %ns, align 4
  %call75 = call i32 @close(i32 %54)
  %55 = load i32, i32* %len, align 4
  %cmp76 = icmp slt i32 %55, 0
  br i1 %cmp76, label %if.then.78, label %if.end.85

if.then.78:                                       ; preds = %while.end.74
  %call79 = call i32* @__errno_location() #9
  %56 = load i32, i32* %call79, align 4
  call void (i32, i8*, ...) @Msg(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  %57 = load i32, i32* %recvfd, align 4
  %cmp80 = icmp ne i32 %57, -1
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.then.78
  %58 = load i32, i32* %recvfd, align 4
  %call83 = call i32 @close(i32 %58)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.then.78
  br label %sw.epilog

if.end.85:                                        ; preds = %while.end.74
  %59 = load i32, i32* %left, align 4
  %cmp86 = icmp sgt i32 %59, 0
  br i1 %cmp86, label %if.then.88, label %if.end.96

if.then.88:                                       ; preds = %if.end.85
  %60 = load i32, i32* %left, align 4
  %conv89 = sext i32 %60 to i64
  %cmp90 = icmp ne i64 %conv89, 12584
  br i1 %cmp90, label %if.then.92, label %if.else

if.then.92:                                       ; preds = %if.then.88
  %61 = load i32, i32* %left, align 4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i32 %61, i32 12584)
  br label %if.end.95

if.else:                                          ; preds = %if.then.88
  br label %do.body.93

do.body.93:                                       ; preds = %if.else
  br label %do.end.94

do.end.94:                                        ; preds = %do.body.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %if.then.92
  br label %sw.epilog

if.end.96:                                        ; preds = %if.end.85
  %62 = load i32, i32* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 0), align 4
  %cmp97 = icmp ne i32 %62, 1836279557
  br i1 %cmp97, label %if.then.99, label %if.end.105

if.then.99:                                       ; preds = %if.end.96
  %63 = load i32, i32* %recvfd, align 4
  %cmp100 = icmp ne i32 %63, -1
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.then.99
  %64 = load i32, i32* %recvfd, align 4
  %call103 = call i32 @close(i32 %64)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.then.99
  %65 = load i32, i32* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 0), align 4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i32 0, i32 0), i32 %65)
  br label %sw.epilog

if.end.105:                                       ; preds = %if.end.96
  br label %do.body.106

do.body.106:                                      ; preds = %if.end.105
  br label %do.end.107

do.end.107:                                       ; preds = %do.body.106
  %66 = load i32, i32* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 1), align 4
  %cmp108 = icmp ne i32 %66, 2
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.115

land.lhs.true.110:                                ; preds = %do.end.107
  %67 = load i32, i32* %recvfd, align 4
  %cmp111 = icmp ne i32 %67, -1
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %land.lhs.true.110
  %68 = load i32, i32* %recvfd, align 4
  %call114 = call i32 @close(i32 %68)
  store i32 -1, i32* %recvfd, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %land.lhs.true.110, %do.end.107
  %69 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %69, %struct.display** @display, align 8
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.125, %if.end.115
  %70 = load %struct.display*, %struct.display** @display, align 8
  %tobool117 = icmp ne %struct.display* %70, null
  br i1 %tobool117, label %for.body.118, label %for.end.126

for.body.118:                                     ; preds = %for.cond.116
  %71 = load %struct.display*, %struct.display** @display, align 8
  %d_usertty = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 58
  %arraydecay119 = getelementptr inbounds [4096 x i8], [4096 x i8]* %d_usertty, i32 0, i32 0
  %call120 = call i32 @strcmp(i8* %arraydecay119, i8* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 2, i32 0)) #8
  %cmp121 = icmp eq i32 %call120, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %for.body.118
  br label %for.end.126

if.end.124:                                       ; preds = %for.body.118
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %72 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 0
  %73 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %73, %struct.display** @display, align 8
  br label %for.cond.116

for.end.126:                                      ; preds = %if.then.123, %for.cond.116
  br label %do.body.127

do.body.127:                                      ; preds = %for.end.126
  br label %do.end.128

do.end.128:                                       ; preds = %do.body.127
  store %struct.win* null, %struct.win** %wi, align 8
  %74 = load %struct.display*, %struct.display** @display, align 8
  %tobool129 = icmp ne %struct.display* %74, null
  br i1 %tobool129, label %if.end.150, label %if.then.130

if.then.130:                                      ; preds = %do.end.128
  %75 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %75, %struct.win** %wi, align 8
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.148, %if.then.130
  %76 = load %struct.win*, %struct.win** %wi, align 8
  %tobool132 = icmp ne %struct.win* %76, null
  br i1 %tobool132, label %for.body.133, label %for.end.149

for.body.133:                                     ; preds = %for.cond.131
  %77 = load %struct.win*, %struct.win** %wi, align 8
  %w_tty = getelementptr inbounds %struct.win, %struct.win* %77, i32 0, i32 89
  %arraydecay134 = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty, i32 0, i32 0
  %call135 = call i32 @strcmp(i8* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 2, i32 0), i8* %arraydecay134) #8
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.end.147, label %if.then.137

if.then.137:                                      ; preds = %for.body.133
  %78 = load %struct.win*, %struct.win** %wi, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %78, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
  %79 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool138 = icmp ne %struct.canvas* %79, null
  br i1 %tobool138, label %cond.true.139, label %cond.false.142

cond.true.139:                                    ; preds = %if.then.137
  %80 = load %struct.win*, %struct.win** %wi, align 8
  %w_layer140 = getelementptr inbounds %struct.win, %struct.win* %80, i32 0, i32 3
  %l_cvlist141 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer140, i32 0, i32 0
  %81 = load %struct.canvas*, %struct.canvas** %l_cvlist141, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %81, i32 0, i32 1
  %82 = load %struct.display*, %struct.display** %c_display, align 8
  br label %cond.end.143

cond.false.142:                                   ; preds = %if.then.137
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.139
  %cond144 = phi %struct.display* [ %82, %cond.true.139 ], [ null, %cond.false.142 ]
  store %struct.display* %cond144, %struct.display** @display, align 8
  br label %do.body.145

do.body.145:                                      ; preds = %cond.end.143
  br label %do.end.146

do.end.146:                                       ; preds = %do.body.145
  br label %for.end.149

if.end.147:                                       ; preds = %for.body.133
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %83 = load %struct.win*, %struct.win** %wi, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %83, i32 0, i32 0
  %84 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %84, %struct.win** %wi, align 8
  br label %for.cond.131

for.end.149:                                      ; preds = %do.end.146, %for.cond.131
  br label %if.end.150

if.end.150:                                       ; preds = %for.end.149, %do.end.128
  %85 = load %struct.display*, %struct.display** @display, align 8
  %tobool151 = icmp ne %struct.display* %85, null
  br i1 %tobool151, label %land.lhs.true.152, label %if.end.155

land.lhs.true.152:                                ; preds = %if.end.150
  %86 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %86, i32 0, i32 43
  %87 = load i32, i32* %d_status, align 4
  %tobool153 = icmp ne i32 %87, 0
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %land.lhs.true.152
  call void @RemoveStatus()
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %land.lhs.true.152, %if.end.150
  %88 = load %struct.display*, %struct.display** @display, align 8
  %tobool156 = icmp ne %struct.display* %88, null
  br i1 %tobool156, label %land.lhs.true.157, label %if.end.168

land.lhs.true.157:                                ; preds = %if.end.155
  %89 = load %struct.display*, %struct.display** @display, align 8
  %d_tcinited = getelementptr inbounds %struct.display, %struct.display* %89, i32 0, i32 15
  %90 = load i8, i8* %d_tcinited, align 1
  %tobool158 = icmp ne i8 %90, 0
  br i1 %tobool158, label %if.end.168, label %land.lhs.true.159

land.lhs.true.159:                                ; preds = %land.lhs.true.157
  %91 = load i32, i32* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 1), align 4
  %cmp160 = icmp ne i32 %91, 7
  br i1 %cmp160, label %if.then.162, label %if.end.168

if.then.162:                                      ; preds = %land.lhs.true.159
  %92 = load i32, i32* %recvfd, align 4
  %cmp163 = icmp ne i32 %92, -1
  br i1 %cmp163, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %if.then.162
  %93 = load i32, i32* %recvfd, align 4
  %call166 = call i32 @close(i32 %93)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %if.then.162
  br label %sw.epilog

if.end.168:                                       ; preds = %land.lhs.true.159, %land.lhs.true.157, %if.end.155
  %94 = load i32, i32* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 1), align 4
  switch i32 %94, label %sw.default [
    i32 6, label %sw.bb
    i32 0, label %sw.bb.172
    i32 3, label %sw.bb.173
    i32 2, label %sw.bb.187
    i32 1, label %sw.bb.201
    i32 7, label %sw.bb.202
    i32 4, label %sw.bb.206
    i32 5, label %sw.bb.206
    i32 9, label %sw.bb.223
    i32 8, label %sw.bb.242
  ]

sw.bb:                                            ; preds = %if.end.168
  %95 = load %struct.display*, %struct.display** @display, align 8
  %tobool169 = icmp ne %struct.display* %95, null
  br i1 %tobool169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %sw.bb
  call void @CheckScreenSize(i32 1)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %sw.bb
  br label %sw.epilog

sw.bb.172:                                        ; preds = %if.end.168
  call void @ExecCreate(%struct.msg* @ReceiveMsg.m)
  br label %sw.epilog

sw.bb.173:                                        ; preds = %if.end.168
  %96 = load %struct.display*, %struct.display** @display, align 8
  %tobool174 = icmp ne %struct.display* %96, null
  br i1 %tobool174, label %land.lhs.true.175, label %if.end.184

land.lhs.true.175:                                ; preds = %sw.bb.173
  %97 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %97, i32 0, i32 57
  %98 = load i32, i32* %d_userpid, align 4
  %cmp176 = icmp ne i32 %98, 0
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.184

land.lhs.true.178:                                ; preds = %land.lhs.true.175
  %99 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid179 = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 57
  %100 = load i32, i32* %d_userpid179, align 4
  %call180 = call i32 @kill(i32 %100, i32 0) #7
  %cmp181 = icmp eq i32 %call180, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %land.lhs.true.178
  br label %sw.epilog

if.end.184:                                       ; preds = %land.lhs.true.178, %land.lhs.true.175, %sw.bb.173
  br label %do.body.185

do.body.185:                                      ; preds = %if.end.184
  br label %do.end.186

do.end.186:                                       ; preds = %do.body.185
  br label %sw.bb.187

sw.bb.187:                                        ; preds = %if.end.168, %do.end.186
  %101 = load i32, i32* %recvfd, align 4
  %102 = load %struct.win*, %struct.win** %wi, align 8
  %call188 = call i32 @CreateTempDisplay(%struct.msg* @ReceiveMsg.m, i32 %101, %struct.win* %102)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %sw.bb.187
  br label %sw.epilog

if.end.191:                                       ; preds = %sw.bb.187
  %103 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 1
  %104 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %u_password = getelementptr inbounds %struct.acluser, %struct.acluser* %104, i32 0, i32 2
  %105 = load i8*, i8** %u_password, align 8
  %tobool192 = icmp ne i8* %105, null
  br i1 %tobool192, label %land.lhs.true.193, label %if.else.199

land.lhs.true.193:                                ; preds = %if.end.191
  %106 = load %struct.display*, %struct.display** @display, align 8
  %d_user194 = getelementptr inbounds %struct.display, %struct.display* %106, i32 0, i32 1
  %107 = load %struct.acluser*, %struct.acluser** %d_user194, align 8
  %u_password195 = getelementptr inbounds %struct.acluser, %struct.acluser* %107, i32 0, i32 2
  %108 = load i8*, i8** %u_password195, align 8
  %109 = load i8, i8* %108, align 1
  %conv196 = sext i8 %109 to i32
  %tobool197 = icmp ne i32 %conv196, 0
  br i1 %tobool197, label %if.then.198, label %if.else.199

if.then.198:                                      ; preds = %land.lhs.true.193
  call void @AskPassword(%struct.msg* @ReceiveMsg.m)
  br label %if.end.200

if.else.199:                                      ; preds = %land.lhs.true.193, %if.end.191
  call void @FinishAttach(%struct.msg* @ReceiveMsg.m)
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.199, %if.then.198
  br label %sw.epilog

sw.bb.201:                                        ; preds = %if.end.168
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* bitcast (%union.anon* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 3) to [8192 x i8]*), i32 0, i32 0))
  br label %sw.epilog

sw.bb.202:                                        ; preds = %if.end.168
  %110 = load %struct.win*, %struct.win** %wi, align 8
  %tobool203 = icmp ne %struct.win* %110, null
  br i1 %tobool203, label %if.end.205, label %if.then.204

if.then.204:                                      ; preds = %sw.bb.202
  call void @Hangup()
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.204, %sw.bb.202
  br label %sw.epilog

sw.bb.206:                                        ; preds = %if.end.168, %if.end.168
  %call207 = call %struct.acluser** @FindUserPtr(i8* getelementptr inbounds (%struct.anon.5, %struct.anon.5* bitcast (%union.anon* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 3) to %struct.anon.5*), i32 0, i32 0, i32 0))
  %111 = load %struct.acluser*, %struct.acluser** %call207, align 8
  store %struct.acluser* %111, %struct.acluser** %user, align 8
  %112 = load %struct.acluser*, %struct.acluser** %user, align 8
  %tobool208 = icmp ne %struct.acluser* %112, null
  br i1 %tobool208, label %land.lhs.true.209, label %if.else.221

land.lhs.true.209:                                ; preds = %sw.bb.206
  %113 = load %struct.acluser*, %struct.acluser** %user, align 8
  %u_password210 = getelementptr inbounds %struct.acluser, %struct.acluser* %113, i32 0, i32 2
  %114 = load i8*, i8** %u_password210, align 8
  %tobool211 = icmp ne i8* %114, null
  br i1 %tobool211, label %land.lhs.true.212, label %if.else.221

land.lhs.true.212:                                ; preds = %land.lhs.true.209
  %115 = load %struct.acluser*, %struct.acluser** %user, align 8
  %u_password213 = getelementptr inbounds %struct.acluser, %struct.acluser* %115, i32 0, i32 2
  %116 = load i8*, i8** %u_password213, align 8
  %117 = load i8, i8* %116, align 1
  %conv214 = sext i8 %117 to i32
  %tobool215 = icmp ne i32 %conv214, 0
  br i1 %tobool215, label %if.then.216, label %if.else.221

if.then.216:                                      ; preds = %land.lhs.true.212
  %118 = load i32, i32* %recvfd, align 4
  %call217 = call i32 @CreateTempDisplay(%struct.msg* @ReceiveMsg.m, i32 %118, %struct.win* null)
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.then.216
  br label %sw.epilog

if.end.220:                                       ; preds = %if.then.216
  call void @AskPassword(%struct.msg* @ReceiveMsg.m)
  br label %if.end.222

if.else.221:                                      ; preds = %land.lhs.true.212, %land.lhs.true.209, %sw.bb.206
  call void @FinishDetach(%struct.msg* @ReceiveMsg.m)
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.221, %if.end.220
  br label %sw.epilog

sw.bb.223:                                        ; preds = %if.end.168
  %call224 = call i8* @SaveStr(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0))
  store i8* %call224, i8** %oldSockPath, align 8
  %call225 = call i8* @strcpy(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i8* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 3, i32 0, i32 5, i32 0)) #7
  %call226 = call i32 @MakeClientSocket(i32 0)
  store i32 %call226, i32* %s, align 4
  %119 = load i8*, i8** %oldSockPath, align 8
  %call227 = call i8* @strcpy(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i8* %119) #7
  %120 = load i8*, i8** %oldSockPath, align 8
  %cmp228 = icmp eq i8* %120, null
  br i1 %cmp228, label %if.then.230, label %if.else.231

if.then.230:                                      ; preds = %sw.bb.223
  call void @abort() #11
  unreachable

if.else.231:                                      ; preds = %sw.bb.223
  %121 = load i8*, i8** %oldSockPath, align 8
  call void @free(i8* %121) #7
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.231
  store i8* null, i8** %oldSockPath, align 8
  %122 = load i32, i32* %s, align 4
  %cmp233 = icmp sge i32 %122, 0
  br i1 %cmp233, label %if.then.235, label %if.else.237

if.then.235:                                      ; preds = %if.end.232
  %123 = load i32, i32* %s, align 4
  store i32 %123, i32* @queryflag, align 4
  call void @DoCommandMsg(%struct.msg* @ReceiveMsg.m)
  %124 = load i32, i32* %s, align 4
  %call236 = call i32 @close(i32 %124)
  br label %if.end.238

if.else.237:                                      ; preds = %if.end.232
  store i32 -1, i32* @queryflag, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.237, %if.then.235
  %125 = load i32, i32* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 3, i32 0, i32 3), align 4
  %126 = load i32, i32* @queryflag, align 4
  %cmp239 = icmp sge i32 %126, 0
  %cond241 = select i1 %cmp239, i32 18, i32 1
  call void @Kill(i32 %125, i32 %cond241)
  store i32 -1, i32* @queryflag, align 4
  br label %sw.epilog

sw.bb.242:                                        ; preds = %if.end.168
  call void @DoCommandMsg(%struct.msg* @ReceiveMsg.m)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.168
  %127 = load i32, i32* getelementptr inbounds (%struct.msg, %struct.msg* @ReceiveMsg.m, i32 0, i32 1), align 4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i32 0, i32 0), i32 %127)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then.15, %if.end.84, %if.end.95, %if.end.104, %if.end.167, %sw.default, %sw.bb.242, %if.end.238, %if.end.222, %if.then.219, %if.end.205, %sw.bb.201, %if.end.200, %if.then.190, %if.then.183, %sw.bb.172, %if.end.171
  ret void
}

declare i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare i64 @recvmsg(i32, %struct.msghdr*, i32) #2

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare %struct.cmsghdr* @__cmsg_nxthdr(%struct.msghdr*, %struct.cmsghdr*) #5

declare i64 @read(i32, i8*, i64) #2

declare void @RemoveStatus() #2

declare void @CheckScreenSize(i32) #2

; Function Attrs: nounwind uwtable
define internal void @ExecCreate(%struct.msg* %mp) #0 {
entry:
  %mp.addr = alloca %struct.msg*, align 8
  %nwin = alloca %struct.NewWindow, align 8
  %args = alloca [64 x i8*], align 16
  %n = alloca i32, align 4
  %pp = alloca i8**, align 8
  %p = alloca i8*, align 8
  %buf = alloca [20 x i8], align 16
  %l = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct.msg* %mp, %struct.msg** %mp.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  store i8** %arraydecay, i8*** %pp, align 8
  %0 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m = getelementptr inbounds %struct.msg, %struct.msg* %0, i32 0, i32 3
  %create = bitcast %union.anon* %m to %struct.anon.3*
  %line = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create, i32 0, i32 5
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay1, i8** %p, align 8
  %1 = bitcast %struct.NewWindow* %nwin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.NewWindow* @nwin_undef to i8*), i64 120, i32 8, i1 false)
  %2 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m2 = getelementptr inbounds %struct.msg, %struct.msg* %2, i32 0, i32 3
  %create3 = bitcast %union.anon* %m2 to %struct.anon.3*
  %nargs = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create3, i32 0, i32 4
  %3 = load i32, i32* %nargs, align 4
  store i32 %3, i32* %n, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %4, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 63, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.4, label %if.end.22

if.then.4:                                        ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %call = call i64 @strlen(i8* %6) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  %7 = load i8*, i8** %p, align 8
  %arraydecay5 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call6 = call i32 @IsNumColon(i8* %7, i32 10, i8* %arraydecay5, i32 20)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %if.then.4
  %arraydecay9 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %8 = load i8, i8* %arraydecay9, align 1
  %tobool10 = icmp ne i8 %8, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.8
  %arraydecay12 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %aka = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 1
  store i8* %arraydecay12, i8** %aka, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.8
  %9 = load i8*, i8** %p, align 8
  %call14 = call i32 @atoi(i8* %9) #8
  store i32 %call14, i32* %num, align 4
  %10 = load i32, i32* %num, align 4
  %cmp15 = icmp slt i32 %10, 0
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %11 = load i32, i32* %num, align 4
  %12 = load i32, i32* @maxwin, align 4
  %sub = sub nsw i32 %12, 1
  %cmp17 = icmp sgt i32 %11, %sub
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.13
  store i32 0, i32* %num, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %lor.lhs.false
  %13 = load i32, i32* %num, align 4
  %StartAt = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 0
  store i32 %13, i32* %StartAt, align 4
  %14 = load i32, i32* %l, align 4
  %add = add nsw i32 %14, 1
  %15 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %16 = load i32, i32* %n, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %n, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %17 = load i32, i32* %n, align 4
  %cmp23 = icmp sgt i32 %17, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %p, align 8
  %19 = load i8**, i8*** %pp, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %pp, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %p, align 8
  %call25 = call i64 @strlen(i8* %20) #8
  %add26 = add i64 %call25, 1
  %21 = load i8*, i8** %p, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %21, i64 %add26
  store i8* %add.ptr27, i8** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %n, align 4
  %dec28 = add nsw i32 %22, -1
  store i32 %dec28, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8**, i8*** %pp, align 8
  store i8* null, i8** %23, align 8
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %tobool29 = icmp ne i8 %25, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %for.end
  %26 = load i8*, i8** %p, align 8
  %aka31 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 1
  store i8* %26, i8** %aka31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %for.end
  %arraydecay33 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  %27 = load i8*, i8** %arraydecay33, align 8
  %tobool34 = icmp ne i8* %27, null
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.32
  %arraydecay36 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  %args37 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 2
  store i8** %arraydecay36, i8*** %args37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.32
  %28 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m39 = getelementptr inbounds %struct.msg, %struct.msg* %28, i32 0, i32 3
  %create40 = bitcast %union.anon* %m39 to %struct.anon.3*
  %aflag = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create40, i32 0, i32 1
  %29 = load i32, i32* %aflag, align 4
  %aflag41 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 5
  store i32 %29, i32* %aflag41, align 4
  %30 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m42 = getelementptr inbounds %struct.msg, %struct.msg* %30, i32 0, i32 3
  %create43 = bitcast %union.anon* %m42 to %struct.anon.3*
  %flowflag = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create43, i32 0, i32 2
  %31 = load i32, i32* %flowflag, align 4
  %flowflag44 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 6
  store i32 %31, i32* %flowflag44, align 4
  %32 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m45 = getelementptr inbounds %struct.msg, %struct.msg* %32, i32 0, i32 3
  %create46 = bitcast %union.anon* %m45 to %struct.anon.3*
  %dir = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create46, i32 0, i32 6
  %arraydecay47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dir, i32 0, i32 0
  %33 = load i8, i8* %arraydecay47, align 1
  %tobool48 = icmp ne i8 %33, 0
  br i1 %tobool48, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.end.38
  %34 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m50 = getelementptr inbounds %struct.msg, %struct.msg* %34, i32 0, i32 3
  %create51 = bitcast %union.anon* %m50 to %struct.anon.3*
  %dir52 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create51, i32 0, i32 6
  %arraydecay53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dir52, i32 0, i32 0
  %dir54 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 3
  store i8* %arraydecay53, i8** %dir54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.49, %if.end.38
  %35 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m56 = getelementptr inbounds %struct.msg, %struct.msg* %35, i32 0, i32 3
  %create57 = bitcast %union.anon* %m56 to %struct.anon.3*
  %lflag = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create57, i32 0, i32 0
  %36 = load i32, i32* %lflag, align 4
  %lflag58 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 7
  store i32 %36, i32* %lflag58, align 4
  %37 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m59 = getelementptr inbounds %struct.msg, %struct.msg* %37, i32 0, i32 3
  %create60 = bitcast %union.anon* %m59 to %struct.anon.3*
  %hheight = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create60, i32 0, i32 3
  %38 = load i32, i32* %hheight, align 4
  %histheight = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 8
  store i32 %38, i32* %histheight, align 4
  %39 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m61 = getelementptr inbounds %struct.msg, %struct.msg* %39, i32 0, i32 3
  %create62 = bitcast %union.anon* %m61 to %struct.anon.3*
  %screenterm = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create62, i32 0, i32 7
  %arraydecay63 = getelementptr inbounds [33 x i8], [33 x i8]* %screenterm, i32 0, i32 0
  %40 = load i8, i8* %arraydecay63, align 1
  %tobool64 = icmp ne i8 %40, 0
  br i1 %tobool64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %if.end.55
  %41 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m66 = getelementptr inbounds %struct.msg, %struct.msg* %41, i32 0, i32 3
  %create67 = bitcast %union.anon* %m66 to %struct.anon.3*
  %screenterm68 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %create67, i32 0, i32 7
  %arraydecay69 = getelementptr inbounds [33 x i8], [33 x i8]* %screenterm68, i32 0, i32 0
  %term = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 4
  store i8* %arraydecay69, i8** %term, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %if.end.55
  %call71 = call i32 @MakeWindow(%struct.NewWindow* %nwin)
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @CreateTempDisplay(%struct.msg* %m, i32 %recvfd, %struct.win* %wi) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.msg*, align 8
  %recvfd.addr = alloca i32, align 4
  %wi.addr = alloca %struct.win*, align 8
  %pid = alloca i32, align 4
  %attach = alloca i32, align 4
  %user = alloca i8*, align 8
  %i = alloca i32, align 4
  %Mode = alloca %struct.mode, align 4
  %olddisplays = alloca %struct.display*, align 8
  %myttyname = alloca i8*, align 8
  store %struct.msg* %m, %struct.msg** %m.addr, align 8
  store i32 %recvfd, i32* %recvfd.addr, align 4
  store %struct.win* %wi, %struct.win** %wi.addr, align 8
  %0 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %0, %struct.display** %olddisplays, align 8
  %1 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %type = getelementptr inbounds %struct.msg, %struct.msg* %1, i32 0, i32 1
  %2 = load i32, i32* %type, align 4
  switch i32 %2, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m1 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 3
  %attach2 = bitcast %union.anon* %m1 to %struct.anon.4*
  %apid = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach2, i32 0, i32 1
  %4 = load i32, i32* %apid, align 4
  store i32 %4, i32* %pid, align 4
  %5 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m3 = getelementptr inbounds %struct.msg, %struct.msg* %5, i32 0, i32 3
  %attach4 = bitcast %union.anon* %m3 to %struct.anon.4*
  %auser = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %auser, i32 0, i32 0
  store i8* %arraydecay, i8** %user, align 8
  store i32 1, i32* %attach, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry, %entry
  %6 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m6 = getelementptr inbounds %struct.msg, %struct.msg* %6, i32 0, i32 3
  %detach = bitcast %union.anon* %m6 to %struct.anon.5*
  %dpid = getelementptr inbounds %struct.anon.5, %struct.anon.5* %detach, i32 0, i32 1
  %7 = load i32, i32* %dpid, align 4
  store i32 %7, i32* %pid, align 4
  %8 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m7 = getelementptr inbounds %struct.msg, %struct.msg* %8, i32 0, i32 3
  %detach8 = bitcast %union.anon* %m7 to %struct.anon.5*
  %duser = getelementptr inbounds %struct.anon.5, %struct.anon.5* %detach8, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [257 x i8], [257 x i8]* %duser, i32 0, i32 0
  store i8* %arraydecay9, i8** %user, align 8
  store i32 0, i32* %attach, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb
  %9 = load i32, i32* %pid, align 4
  %call = call i32 @CheckPid(i32 %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %10 = load i32, i32* %pid, align 4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i32 %10)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %11 = load i32, i32* %recvfd.addr, align 4
  %cmp = icmp ne i32 %11, -1
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %12 = load i32, i32* %recvfd.addr, align 4
  store i32 %12, i32* %i, align 4
  store i32 -1, i32* %recvfd.addr, align 4
  %13 = load i32, i32* %i, align 4
  %call11 = call i8* @ttyname(i32 %13) #7
  store i8* %call11, i8** %myttyname, align 8
  %14 = load i8*, i8** %myttyname, align 8
  %cmp12 = icmp eq i8* %14, null
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.10
  %15 = load i8*, i8** %myttyname, align 8
  %16 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m_tty = getelementptr inbounds %struct.msg, %struct.msg* %16, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty, i32 0, i32 0
  %call14 = call i32 @strcmp(i8* %15, i8* %arraydecay13) #8
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %lor.lhs.false, %if.then.10
  %call17 = call i32* @__errno_location() #9
  %17 = load i32, i32* %call17, align 4
  %18 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m_tty18 = getelementptr inbounds %struct.msg, %struct.msg* %18, i32 0, i32 2
  %arraydecay19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty18, i32 0, i32 0
  %19 = load i8*, i8** %myttyname, align 8
  %tobool20 = icmp ne i8* %19, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  %20 = load i8*, i8** %myttyname, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), %cond.false ]
  call void (i32, i8*, ...) @Msg(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay19, i8* %cond)
  %21 = load i32, i32* %i, align 4
  %call21 = call i32 @close(i32 %21)
  %22 = load i32, i32* %pid, align 4
  call void @Kill(i32 %22, i32 1)
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %23 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m_tty23 = getelementptr inbounds %struct.msg, %struct.msg* %23, i32 0, i32 2
  %arraydecay24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty23, i32 0, i32 0
  %call25 = call i32 @secopen(i8* %arraydecay24, i32 2050, i32 0)
  store i32 %call25, i32* %i, align 4
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.else
  %call28 = call i32* @__errno_location() #9
  %24 = load i32, i32* %call28, align 4
  %25 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m_tty29 = getelementptr inbounds %struct.msg, %struct.msg* %25, i32 0, i32 2
  %arraydecay30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty29, i32 0, i32 0
  call void (i32, i8*, ...) @Msg(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay30)
  %26 = load i32, i32* %pid, align 4
  call void @Kill(i32 %26, i32 1)
  store i32 -1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.22
  %27 = load i32, i32* %attach, align 4
  %tobool33 = icmp ne i32 %27, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %28 = load i32, i32* %pid, align 4
  call void @Kill(i32 %28, i32 18)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.32
  %29 = load i32, i32* %attach, align 4
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %if.then.37, label %if.end.55

if.then.37:                                       ; preds = %if.end.35
  %30 = load %struct.display*, %struct.display** @display, align 8
  %tobool38 = icmp ne %struct.display* %30, null
  br i1 %tobool38, label %if.then.41, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.then.37
  %31 = load %struct.win*, %struct.win** %wi.addr, align 8
  %tobool40 = icmp ne %struct.win* %31, null
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %lor.lhs.false.39, %if.then.37
  %32 = load i32, i32* %i, align 4
  %call42 = call i64 @write(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0), i64 33)
  %33 = load i32, i32* %i, align 4
  %call43 = call i32 @close(i32 %33)
  %34 = load i32, i32* %pid, align 4
  call void @Kill(i32 %34, i32 1)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %lor.lhs.false.39
  %35 = load i8*, i8** %user, align 8
  %36 = load i8*, i8** @LoginName, align 8
  %call45 = call i32 @strcmp(i8* %35, i8* %36) #8
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.54

if.then.47:                                       ; preds = %if.end.44
  %37 = load i8*, i8** %user, align 8
  %call48 = call %struct.acluser** @FindUserPtr(i8* %37)
  %38 = load %struct.acluser*, %struct.acluser** %call48, align 8
  %cmp49 = icmp eq %struct.acluser* %38, null
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.then.47
  %39 = load i32, i32* %i, align 4
  %call51 = call i64 @write(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), i64 26)
  %40 = load i32, i32* %i, align 4
  %call52 = call i32 @close(i32 %40)
  %41 = load i32, i32* %pid, align 4
  call void @Kill(i32 %41, i32 1)
  %42 = load i8*, i8** %user, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.45, i32 0, i32 0), i8* %42)
  store i32 -1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.then.47
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.44
  br label %do.body

do.body:                                          ; preds = %if.end.54
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.55

if.end.55:                                        ; preds = %do.end, %if.end.35
  %43 = load i32, i32* %i, align 4
  call void @GetTTY(i32 %43, %struct.mode* %Mode)
  %44 = load i8*, i8** %user, align 8
  %45 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m_tty56 = getelementptr inbounds %struct.msg, %struct.msg* %45, i32 0, i32 2
  %arraydecay57 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty56, i32 0, i32 0
  %46 = load i32, i32* %attach, align 4
  %tobool58 = icmp ne i32 %46, 0
  br i1 %tobool58, label %cond.true.59, label %cond.false.63

cond.true.59:                                     ; preds = %if.end.55
  %47 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m60 = getelementptr inbounds %struct.msg, %struct.msg* %47, i32 0, i32 3
  %attach61 = bitcast %union.anon* %m60 to %struct.anon.4*
  %envterm = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach61, i32 0, i32 8
  %arraydecay62 = getelementptr inbounds [33 x i8], [33 x i8]* %envterm, i32 0, i32 0
  br label %cond.end.64

cond.false.63:                                    ; preds = %if.end.55
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.59
  %cond65 = phi i8* [ %arraydecay62, %cond.true.59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), %cond.false.63 ]
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %pid, align 4
  %call66 = call %struct.display* @MakeDisplay(i8* %44, i8* %arraydecay57, i8* %cond65, i32 %48, i32 %49, %struct.mode* %Mode)
  %cmp67 = icmp eq %struct.display* %call66, null
  br i1 %cmp67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %cond.end.64
  %50 = load i32, i32* %i, align 4
  %call69 = call i64 @write(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i64 24)
  %51 = load i32, i32* %i, align 4
  %call70 = call i32 @close(i32 %51)
  %52 = load i8*, i8** %user, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.47, i32 0, i32 0), i8* %52)
  %53 = load i32, i32* %pid, align 4
  call void @Kill(i32 %53, i32 1)
  store i32 -1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %cond.end.64
  %54 = load i32, i32* %attach, align 4
  %tobool72 = icmp ne i32 %54, 0
  br i1 %tobool72, label %if.then.73, label %if.end.101

if.then.73:                                       ; preds = %if.end.71
  %55 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m74 = getelementptr inbounds %struct.msg, %struct.msg* %55, i32 0, i32 3
  %attach75 = bitcast %union.anon* %m74 to %struct.anon.4*
  %encoding = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach75, i32 0, i32 9
  %56 = load i32, i32* %encoding, align 4
  %cmp76 = icmp eq i32 %56, 1
  br i1 %cmp76, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %if.then.73
  br label %cond.end.90

cond.false.78:                                    ; preds = %if.then.73
  %57 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m79 = getelementptr inbounds %struct.msg, %struct.msg* %57, i32 0, i32 3
  %attach80 = bitcast %union.anon* %m79 to %struct.anon.4*
  %encoding81 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach80, i32 0, i32 9
  %58 = load i32, i32* %encoding81, align 4
  %tobool82 = icmp ne i32 %58, 0
  br i1 %tobool82, label %cond.true.83, label %cond.false.87

cond.true.83:                                     ; preds = %cond.false.78
  %59 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m84 = getelementptr inbounds %struct.msg, %struct.msg* %59, i32 0, i32 3
  %attach85 = bitcast %union.anon* %m84 to %struct.anon.4*
  %encoding86 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach85, i32 0, i32 9
  %60 = load i32, i32* %encoding86, align 4
  %sub = sub nsw i32 %60, 1
  br label %cond.end.88

cond.false.87:                                    ; preds = %cond.false.78
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.83
  %cond89 = phi i32 [ %sub, %cond.true.83 ], [ 0, %cond.false.87 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.77
  %cond91 = phi i32 [ 8, %cond.true.77 ], [ %cond89, %cond.end.88 ]
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 28
  store i32 %cond91, i32* %d_encoding, align 4
  %62 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding92 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 28
  %63 = load i32, i32* %d_encoding92, align 4
  %cmp93 = icmp slt i32 %63, 0
  br i1 %cmp93, label %if.then.98, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %cond.end.90
  %64 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding95 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 28
  %65 = load i32, i32* %d_encoding95, align 4
  %call96 = call i8* @EncodingName(i32 %65)
  %tobool97 = icmp ne i8* %call96, null
  br i1 %tobool97, label %if.end.100, label %if.then.98

if.then.98:                                       ; preds = %lor.lhs.false.94, %cond.end.90
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding99 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 28
  store i32 0, i32* %d_encoding99, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %lor.lhs.false.94
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.71
  %67 = load i32, i32* @iflag, align 4
  %tobool102 = icmp ne i32 %67, 0
  br i1 %tobool102, label %land.lhs.true, label %if.end.108

land.lhs.true:                                    ; preds = %if.end.101
  %68 = load %struct.display*, %struct.display** %olddisplays, align 8
  %tobool103 = icmp ne %struct.display* %68, null
  br i1 %tobool103, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %land.lhs.true
  store i32 0, i32* @iflag, align 4
  %69 = load %struct.display*, %struct.display** %olddisplays, align 8
  %d_NewMode = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 64
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode, i32 0, i32 0
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %70 = load %struct.display*, %struct.display** %olddisplays, align 8
  %d_NewMode105 = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 64
  %tio106 = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode105, i32 0, i32 0
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %tio106, i32 0, i32 3
  %71 = load i32, i32* %c_lflag, align 4
  %and = and i32 %71, -2
  store i32 %and, i32* %c_lflag, align 4
  %72 = load %struct.display*, %struct.display** %olddisplays, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 59
  %73 = load i32, i32* %d_userfd, align 4
  %74 = load %struct.display*, %struct.display** %olddisplays, align 8
  %d_NewMode107 = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 64
  call void @SetTTY(i32 %73, %struct.mode* %d_NewMode107)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.104, %land.lhs.true, %if.end.101
  %75 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 63
  %76 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode109 = getelementptr inbounds %struct.display, %struct.display* %76, i32 0, i32 64
  %77 = load %struct.display*, %struct.display** @display, align 8
  %d_flow = getelementptr inbounds %struct.display, %struct.display* %77, i32 0, i32 65
  %78 = load i32, i32* %d_flow, align 4
  %79 = load i32, i32* @iflag, align 4
  call void @SetMode(%struct.mode* %d_OldMode, %struct.mode* %d_NewMode109, i32 %78, i32 %79)
  %80 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd110 = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 59
  %81 = load i32, i32* %d_userfd110, align 4
  %82 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode111 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 64
  call void @SetTTY(i32 %81, %struct.mode* %d_NewMode111)
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd112 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 59
  %84 = load i32, i32* %d_userfd112, align 4
  %call113 = call i32 (i32, i32, ...) @fcntl(i32 %84, i32 4, i32 2048)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.108
  %call116 = call i32* @__errno_location() #9
  %85 = load i32, i32* %call116, align 4
  call void (i32, i8*, ...) @Msg(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.end.108
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.117, %if.then.68, %if.then.50, %if.then.41, %if.then.27, %cond.end, %if.then, %sw.default
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal void @AskPassword(%struct.msg* %m) #0 {
entry:
  %m.addr = alloca %struct.msg*, align 8
  %pwdata = alloca %struct.pwdata*, align 8
  store %struct.msg* %m, %struct.msg** %m.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call noalias i8* @malloc(i64 12848) #7
  %0 = bitcast i8* %call to %struct.pwdata*
  store %struct.pwdata* %0, %struct.pwdata** %pwdata, align 8
  %1 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %tobool = icmp ne %struct.pwdata* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %do.end
  %2 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %l = getelementptr inbounds %struct.pwdata, %struct.pwdata* %2, i32 0, i32 0
  store i32 0, i32* %l, align 4
  %3 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %m1 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %3, i32 0, i32 2
  %4 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %5 = bitcast %struct.msg* %m1 to i8*
  %6 = bitcast %struct.msg* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 12584, i32 4, i1 false)
  %7 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %8 = bitcast %struct.pwdata* %7 to i8*
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_processinputdata = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 7
  store i8* %8, i8** %d_processinputdata, align 8
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_processinput = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 6
  store void (i8*, i32)* @PasswordProcessInput, void (i8*, i32)** %d_processinput, align 8
  call void @AddStr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FinishAttach(%struct.msg* %m) #0 {
entry:
  %m.addr = alloca %struct.msg*, align 8
  %p = alloca i8*, align 8
  %pid = alloca i32, align 4
  %noshowwin = alloca i32, align 4
  %wi = alloca %struct.win*, align 8
  %lay = alloca %struct.layout*, align 8
  %newscreen = alloca %struct.action, align 8
  %na = alloca i8*, align 8
  %olddisplay = alloca %struct.display*, align 8
  store %struct.msg* %m, %struct.msg** %m.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 57
  %1 = load i32, i32* %d_userpid, align 4
  store i32 %1, i32* %pid, align 4
  %2 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m1 = getelementptr inbounds %struct.msg, %struct.msg* %2, i32 0, i32 3
  %attach = bitcast %union.anon* %m1 to %struct.anon.4*
  %detachfirst = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach, i32 0, i32 10
  %3 = load i32, i32* %detachfirst, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %4 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m2 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 3
  %attach3 = bitcast %union.anon* %m2 to %struct.anon.4*
  %detachfirst4 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach3, i32 0, i32 10
  %5 = load i32, i32* %detachfirst4, align 4
  %cmp5 = icmp eq i32 %5, 5
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %6 = load %struct.msg*, %struct.msg** %m.addr, align 8
  call void @FinishDetach(%struct.msg* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load i8*, i8** @extra_outcap, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %8 = load i8*, i8** @extra_outcap, align 8
  call void @free(i8* %8) #7
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %9 = load i8*, i8** @extra_incap, align 8
  %tobool8 = icmp ne i8* %9, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %10 = load i8*, i8** @extra_incap, align 8
  call void @free(i8* %10) #7
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  store i8* null, i8** @extra_outcap, align 8
  store i8* null, i8** @extra_incap, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  %call = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0)) #7
  store i8* %call, i8** %p, align 8
  %tobool13 = icmp ne i8* %call, null
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.end.12
  %11 = load i8*, i8** %p, align 8
  %call15 = call i32 @StartRc(i8* %11, i32 1)
  br label %if.end.17

if.else:                                          ; preds = %do.end.12
  %call16 = call i32 @StartRc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 1)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.14
  %12 = load i8*, i8** @RcFileName, align 8
  %call18 = call i32 @StartRc(i8* %12, i32 1)
  %13 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m19 = getelementptr inbounds %struct.msg, %struct.msg* %13, i32 0, i32 3
  %attach20 = bitcast %union.anon* %m19 to %struct.anon.4*
  %columns = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach20, i32 0, i32 4
  %14 = load i32, i32* %columns, align 4
  %15 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m21 = getelementptr inbounds %struct.msg, %struct.msg* %15, i32 0, i32 3
  %attach22 = bitcast %union.anon* %m21 to %struct.anon.4*
  %lines = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach22, i32 0, i32 3
  %16 = load i32, i32* %lines, align 4
  %call23 = call i32 @InitTermcap(i32 %14, i32 %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.17
  call void @FreeDisplay()
  %17 = load i32, i32* %pid, align 4
  call void @Kill(i32 %17, i32 1)
  br label %do.end.157

if.end.26:                                        ; preds = %if.end.17
  %call27 = call i32 @MakeDefaultCanvas()
  %18 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m28 = getelementptr inbounds %struct.msg, %struct.msg* %18, i32 0, i32 3
  %attach29 = bitcast %union.anon* %m28 to %struct.anon.4*
  %adaptflag = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach29, i32 0, i32 2
  %19 = load i32, i32* %adaptflag, align 4
  call void @InitTerm(i32 %19)
  %20 = load %struct.display*, %struct.display** @displays, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 0
  %21 = load %struct.display*, %struct.display** %d_next, align 8
  %cmp30 = icmp eq %struct.display* %21, null
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.26
  %call32 = call i32 @chsock()
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.26
  %call34 = call void (i32)* @xsignal(i32 1, void (i32)* @SigHup)
  %22 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m35 = getelementptr inbounds %struct.msg, %struct.msg* %22, i32 0, i32 3
  %attach36 = bitcast %union.anon* %m35 to %struct.anon.4*
  %esc = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach36, i32 0, i32 6
  %23 = load i32, i32* %esc, align 4
  %cmp37 = icmp ne i32 %23, -1
  br i1 %cmp37, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.33
  %24 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m38 = getelementptr inbounds %struct.msg, %struct.msg* %24, i32 0, i32 3
  %attach39 = bitcast %union.anon* %m38 to %struct.anon.4*
  %meta_esc = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach39, i32 0, i32 7
  %25 = load i32, i32* %meta_esc, align 4
  %cmp40 = icmp ne i32 %25, -1
  br i1 %cmp40, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %land.lhs.true
  %26 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m42 = getelementptr inbounds %struct.msg, %struct.msg* %26, i32 0, i32 3
  %attach43 = bitcast %union.anon* %m42 to %struct.anon.4*
  %esc44 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach43, i32 0, i32 6
  %27 = load i32, i32* %esc44, align 4
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 1
  %29 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %u_Esc = getelementptr inbounds %struct.acluser, %struct.acluser* %29, i32 0, i32 6
  store i32 %27, i32* %u_Esc, align 4
  %30 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m45 = getelementptr inbounds %struct.msg, %struct.msg* %30, i32 0, i32 3
  %attach46 = bitcast %union.anon* %m45 to %struct.anon.4*
  %meta_esc47 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach46, i32 0, i32 7
  %31 = load i32, i32* %meta_esc47, align 4
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_user48 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 1
  %33 = load %struct.acluser*, %struct.acluser** %d_user48, align 8
  %u_MetaEsc = getelementptr inbounds %struct.acluser, %struct.acluser* %33, i32 0, i32 7
  store i32 %31, i32* %u_MetaEsc, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.41, %land.lhs.true, %if.end.33
  call void @RemoveLoginSlot()
  %34 = load %struct.display*, %struct.display** @displays, align 8
  %d_next50 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 0
  %35 = load %struct.display*, %struct.display** %d_next50, align 8
  %cmp51 = icmp eq %struct.display* %35, null
  br i1 %cmp51, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %if.end.49
  %36 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %36, %struct.win** %wi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.52
  %37 = load %struct.win*, %struct.win** %wi, align 8
  %tobool53 = icmp ne %struct.win* %37, null
  br i1 %tobool53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct.win*, %struct.win** %wi, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 15
  %39 = load i32, i32* %w_ptyfd, align 4
  %cmp54 = icmp sge i32 %39, 0
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.59

land.lhs.true.55:                                 ; preds = %for.body
  %40 = load %struct.win*, %struct.win** %wi, align 8
  %w_slot = getelementptr inbounds %struct.win, %struct.win* %40, i32 0, i32 87
  %41 = load i8*, i8** %w_slot, align 8
  %cmp56 = icmp ne i8* %41, inttoptr (i64 -1 to i8*)
  br i1 %cmp56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %land.lhs.true.55
  %42 = load %struct.win*, %struct.win** %wi, align 8
  %call58 = call i32 @SetUtmp(%struct.win* %42)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %land.lhs.true.55, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %43 = load %struct.win*, %struct.win** %wi, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 0
  %44 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %44, %struct.win** %wi, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.60

if.end.60:                                        ; preds = %for.end, %if.end.49
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 10
  store %struct.win* null, %struct.win** %d_fore, align 8
  %46 = load %struct.layout*, %struct.layout** @layout_attach, align 8
  %tobool61 = icmp ne %struct.layout* %46, null
  br i1 %tobool61, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %if.end.60
  %47 = load %struct.layout*, %struct.layout** @layout_attach, align 8
  store %struct.layout* %47, %struct.layout** %lay, align 8
  %48 = load %struct.layout*, %struct.layout** %lay, align 8
  %cmp63 = icmp eq %struct.layout* %48, @layout_last_marker
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.62
  %49 = load %struct.layout*, %struct.layout** @layout_last, align 8
  store %struct.layout* %49, %struct.layout** %lay, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.then.62
  %50 = load %struct.layout*, %struct.layout** %lay, align 8
  %tobool66 = icmp ne %struct.layout* %50, null
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  %51 = load %struct.layout*, %struct.layout** %lay, align 8
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 2
  call void @LoadLayout(%struct.layout* %51, %struct.canvas* %d_canvas)
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 4
  %54 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  call void @SetCanvasWindow(%struct.canvas* %54, %struct.win* null)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.60
  br label %do.body.70

do.body.70:                                       ; preds = %if.end.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.body.70
  %55 = load %struct.display*, %struct.display** @display, align 8
  %d_user72 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 1
  %56 = load %struct.acluser*, %struct.acluser** %d_user72, align 8
  %u_detachwin = getelementptr inbounds %struct.acluser, %struct.acluser* %56, i32 0, i32 4
  %57 = load i32, i32* %u_detachwin, align 4
  %cmp73 = icmp sge i32 %57, 0
  br i1 %cmp73, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %do.end.71
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_user75 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 1
  %59 = load %struct.acluser*, %struct.acluser** %d_user75, align 8
  %u_detachwin76 = getelementptr inbounds %struct.acluser, %struct.acluser* %59, i32 0, i32 4
  %60 = load i32, i32* %u_detachwin76, align 4
  %idxprom = sext i32 %60 to i64
  %61 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx = getelementptr inbounds %struct.win*, %struct.win** %61, i64 %idxprom
  %62 = load %struct.win*, %struct.win** %arrayidx, align 8
  store %struct.win* %62, %struct.win** @fore, align 8
  br label %if.end.78

if.else.77:                                       ; preds = %do.end.71
  store %struct.win* null, %struct.win** @fore, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.then.74
  %63 = load %struct.display*, %struct.display** @display, align 8
  %d_user79 = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 1
  %64 = load %struct.acluser*, %struct.acluser** %d_user79, align 8
  %u_detachotherwin = getelementptr inbounds %struct.acluser, %struct.acluser* %64, i32 0, i32 5
  %65 = load i32, i32* %u_detachotherwin, align 4
  %cmp80 = icmp sge i32 %65, 0
  br i1 %cmp80, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %if.end.78
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_user82 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 1
  %67 = load %struct.acluser*, %struct.acluser** %d_user82, align 8
  %u_detachotherwin83 = getelementptr inbounds %struct.acluser, %struct.acluser* %67, i32 0, i32 5
  %68 = load i32, i32* %u_detachotherwin83, align 4
  %idxprom84 = sext i32 %68 to i64
  %69 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx85 = getelementptr inbounds %struct.win*, %struct.win** %69, i64 %idxprom84
  %70 = load %struct.win*, %struct.win** %arrayidx85, align 8
  %71 = load %struct.display*, %struct.display** @display, align 8
  %d_other = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 11
  store %struct.win* %70, %struct.win** %d_other, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.81, %if.end.78
  store i32 0, i32* %noshowwin, align 4
  %72 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m87 = getelementptr inbounds %struct.msg, %struct.msg* %72, i32 0, i32 3
  %attach88 = bitcast %union.anon* %m87 to %struct.anon.4*
  %preselect = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach88, i32 0, i32 5
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %preselect, i32 0, i32 0
  %73 = load i8, i8* %arraydecay, align 1
  %tobool89 = icmp ne i8 %73, 0
  br i1 %tobool89, label %if.then.90, label %if.else.123

if.then.90:                                       ; preds = %if.end.86
  %74 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m91 = getelementptr inbounds %struct.msg, %struct.msg* %74, i32 0, i32 3
  %attach92 = bitcast %union.anon* %m91 to %struct.anon.4*
  %preselect93 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach92, i32 0, i32 5
  %arraydecay94 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect93, i32 0, i32 0
  %call95 = call i32 @strcmp(i8* %arraydecay94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.else.98, label %if.then.97

if.then.97:                                       ; preds = %if.then.90
  store %struct.win* null, %struct.win** @fore, align 8
  br label %if.end.122

if.else.98:                                       ; preds = %if.then.90
  %75 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m99 = getelementptr inbounds %struct.msg, %struct.msg* %75, i32 0, i32 3
  %attach100 = bitcast %union.anon* %m99 to %struct.anon.4*
  %preselect101 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach100, i32 0, i32 5
  %arraydecay102 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect101, i32 0, i32 0
  %call103 = call i32 @strcmp(i8* %arraydecay102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)) #8
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.else.106, label %if.then.105

if.then.105:                                      ; preds = %if.else.98
  store %struct.win* null, %struct.win** @fore, align 8
  store i32 1, i32* %noshowwin, align 4
  br label %if.end.121

if.else.106:                                      ; preds = %if.else.98
  %76 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m107 = getelementptr inbounds %struct.msg, %struct.msg* %76, i32 0, i32 3
  %attach108 = bitcast %union.anon* %m107 to %struct.anon.4*
  %preselect109 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach108, i32 0, i32 5
  %arraydecay110 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect109, i32 0, i32 0
  %call111 = call i32 @strcmp(i8* %arraydecay110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0)) #8
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.else.114, label %if.then.113

if.then.113:                                      ; preds = %if.else.106
  store i8* null, i8** %na, align 8
  %nr = getelementptr inbounds %struct.action, %struct.action* %newscreen, i32 0, i32 0
  store i32 141, i32* %nr, align 4
  %args = getelementptr inbounds %struct.action, %struct.action* %newscreen, i32 0, i32 1
  store i8** %na, i8*** %args, align 8
  %quiet = getelementptr inbounds %struct.action, %struct.action* %newscreen, i32 0, i32 3
  store i32 0, i32* %quiet, align 4
  call void @DoAction(%struct.action* %newscreen, i32 -1)
  br label %if.end.120

if.else.114:                                      ; preds = %if.else.106
  %77 = load %struct.win*, %struct.win** @fore, align 8
  %78 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m115 = getelementptr inbounds %struct.msg, %struct.msg* %78, i32 0, i32 3
  %attach116 = bitcast %union.anon* %m115 to %struct.anon.4*
  %preselect117 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach116, i32 0, i32 5
  %arraydecay118 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect117, i32 0, i32 0
  %call119 = call %struct.win* @FindNiceWindow(%struct.win* %77, i8* %arraydecay118)
  store %struct.win* %call119, %struct.win** @fore, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.114, %if.then.113
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.105
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.97
  br label %if.end.125

if.else.123:                                      ; preds = %if.end.86
  %79 = load %struct.win*, %struct.win** @fore, align 8
  %call124 = call %struct.win* @FindNiceWindow(%struct.win* %79, i8* null)
  store %struct.win* %call124, %struct.win** @fore, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.123, %if.end.122
  %80 = load %struct.win*, %struct.win** @fore, align 8
  %tobool126 = icmp ne %struct.win* %80, null
  br i1 %tobool126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %if.end.125
  %81 = load %struct.win*, %struct.win** @fore, align 8
  call void @SetForeWindow(%struct.win* %81)
  br label %if.end.138

if.else.128:                                      ; preds = %if.end.125
  %82 = load i32, i32* %noshowwin, align 4
  %tobool129 = icmp ne i32 %82, 0
  br i1 %tobool129, label %if.end.137, label %if.then.130

if.then.130:                                      ; preds = %if.else.128
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_user131 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 1
  %84 = load %struct.acluser*, %struct.acluser** %d_user131, align 8
  %call132 = call i32 @AclCheckPermCmd(%struct.acluser* %84, i32 0, %struct.comm* getelementptr inbounds ([0 x %struct.comm], [0 x %struct.comm]* @comms, i32 0, i64 178))
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.end.136, label %if.then.134

if.then.134:                                      ; preds = %if.then.130
  %85 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %85, %struct.display** %olddisplay, align 8
  %86 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv135 = getelementptr inbounds %struct.display, %struct.display* %86, i32 0, i32 4
  %87 = load %struct.canvas*, %struct.canvas** %d_forecv135, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %87, i32 0, i32 9
  %88 = load %struct.layer*, %struct.layer** %c_layer, align 8
  store %struct.layer* %88, %struct.layer** @flayer, align 8
  call void @display_windows(i32 1, i32 0, %struct.win* null)
  store i32 1, i32* %noshowwin, align 4
  %89 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %89, %struct.display** @display, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %if.then.130
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.else.128
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.127
  call void @Activate(i32 0)
  call void @ResetIdle()
  %90 = load %struct.display*, %struct.display** @display, align 8
  %d_fore139 = getelementptr inbounds %struct.display, %struct.display* %90, i32 0, i32 10
  %91 = load %struct.win*, %struct.win** %d_fore139, align 8
  %tobool140 = icmp ne %struct.win* %91, null
  br i1 %tobool140, label %if.end.144, label %land.lhs.true.141

land.lhs.true.141:                                ; preds = %if.end.138
  %92 = load i32, i32* %noshowwin, align 4
  %tobool142 = icmp ne i32 %92, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %land.lhs.true.141
  call void @ShowWindows(i32 -1)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %land.lhs.true.141, %if.end.138
  %93 = load %struct.display*, %struct.display** @displays, align 8
  %d_next145 = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 0
  %94 = load %struct.display*, %struct.display** %d_next145, align 8
  %cmp146 = icmp eq %struct.display* %94, null
  br i1 %cmp146, label %land.lhs.true.147, label %if.end.155

land.lhs.true.147:                                ; preds = %if.end.144
  %95 = load %struct.win*, %struct.win** @console_window, align 8
  %tobool148 = icmp ne %struct.win* %95, null
  br i1 %tobool148, label %if.then.149, label %if.end.155

if.then.149:                                      ; preds = %land.lhs.true.147
  %96 = load %struct.win*, %struct.win** @console_window, align 8
  %w_ptyfd150 = getelementptr inbounds %struct.win, %struct.win* %96, i32 0, i32 15
  %97 = load i32, i32* %w_ptyfd150, align 4
  %call151 = call i32 @TtyGrabConsole(i32 %97, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0))
  %cmp152 = icmp eq i32 %call151, 0
  br i1 %cmp152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.then.149
  %98 = load %struct.win*, %struct.win** @console_window, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %98, i32 0, i32 9
  %99 = load i32, i32* %w_number, align 4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @HostName, i32 0, i32 0), i32 %99)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %if.then.149
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %land.lhs.true.147, %if.end.144
  br label %do.body.156

do.body.156:                                      ; preds = %if.end.155
  br label %do.end.157

do.end.157:                                       ; preds = %if.then.25, %do.body.156
  ret void
}

declare void @Hangup() #2

declare %struct.acluser** @FindUserPtr(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @FinishDetach(%struct.msg* %m) #0 {
entry:
  %m.addr = alloca %struct.msg*, align 8
  %next = alloca %struct.display*, align 8
  %d = alloca %struct.display**, align 8
  %det = alloca %struct.display*, align 8
  %pid = alloca i32, align 4
  store %struct.msg* %m, %struct.msg** %m.addr, align 8
  %0 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %type = getelementptr inbounds %struct.msg, %struct.msg* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 57
  %3 = load i32, i32* %d_userpid, align 4
  store i32 %3, i32* %pid, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m1 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 3
  %detach = bitcast %union.anon* %m1 to %struct.anon.5*
  %dpid = getelementptr inbounds %struct.anon.5, %struct.anon.5* %detach, i32 0, i32 1
  %5 = load i32, i32* %dpid, align 4
  store i32 %5, i32* %pid, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store %struct.display** @displays, %struct.display*** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load %struct.display**, %struct.display*** %d, align 8
  %7 = load %struct.display*, %struct.display** %6, align 8
  store %struct.display* %7, %struct.display** %det, align 8
  %tobool = icmp ne %struct.display* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.display*, %struct.display** %det, align 8
  %d_userpid2 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 57
  %9 = load i32, i32* %d_userpid2, align 4
  %10 = load i32, i32* %pid, align 4
  %cmp3 = icmp eq i32 %9, %10
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  br label %for.end

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %11 = load %struct.display*, %struct.display** %det, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 0
  store %struct.display** %d_next, %struct.display*** %d, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %for.cond
  %12 = load %struct.display*, %struct.display** %det, align 8
  %tobool6 = icmp ne %struct.display* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %for.end
  %13 = load %struct.display*, %struct.display** %det, align 8
  %d_next8 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 0
  %14 = load %struct.display*, %struct.display** %d_next8, align 8
  %15 = load %struct.display**, %struct.display*** %d, align 8
  store %struct.display* %14, %struct.display** %15, align 8
  %16 = load %struct.display*, %struct.display** %det, align 8
  %d_next9 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 0
  store %struct.display* null, %struct.display** %d_next9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %for.end
  %17 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %17, %struct.display** @display, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.40, %if.end.10
  %18 = load %struct.display*, %struct.display** @display, align 8
  %tobool12 = icmp ne %struct.display* %18, null
  br i1 %tobool12, label %for.body.13, label %for.end.41

for.body.13:                                      ; preds = %for.cond.11
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_next14 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 0
  %20 = load %struct.display*, %struct.display** %d_next14, align 8
  store %struct.display* %20, %struct.display** %next, align 8
  %21 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %type15 = getelementptr inbounds %struct.msg, %struct.msg* %21, i32 0, i32 1
  %22 = load i32, i32* %type15, align 4
  %cmp16 = icmp eq i32 %22, 5
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %for.body.13
  call void @Detach(i32 4)
  br label %if.end.39

if.else.18:                                       ; preds = %for.body.13
  %23 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %type19 = getelementptr inbounds %struct.msg, %struct.msg* %23, i32 0, i32 1
  %24 = load i32, i32* %type19, align 4
  %cmp20 = icmp eq i32 %24, 4
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else.18
  call void @Detach(i32 2)
  br label %if.end.38

if.else.22:                                       ; preds = %if.else.18
  %25 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %type23 = getelementptr inbounds %struct.msg, %struct.msg* %25, i32 0, i32 1
  %26 = load i32, i32* %type23, align 4
  %cmp24 = icmp eq i32 %26, 2
  br i1 %cmp24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %if.else.22
  %27 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m26 = getelementptr inbounds %struct.msg, %struct.msg* %27, i32 0, i32 3
  %attach = bitcast %union.anon* %m26 to %struct.anon.4*
  %detachfirst = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach, i32 0, i32 10
  %28 = load i32, i32* %detachfirst, align 4
  %cmp27 = icmp eq i32 %28, 5
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.then.25
  call void @Detach(i32 4)
  br label %if.end.36

if.else.29:                                       ; preds = %if.then.25
  %29 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %m30 = getelementptr inbounds %struct.msg, %struct.msg* %29, i32 0, i32 3
  %attach31 = bitcast %union.anon* %m30 to %struct.anon.4*
  %detachfirst32 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach31, i32 0, i32 10
  %30 = load i32, i32* %detachfirst32, align 4
  %cmp33 = icmp eq i32 %30, 4
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.29
  call void @Detach(i32 2)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.else.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.else.22
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.21
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.17
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %31 = load %struct.display*, %struct.display** %next, align 8
  store %struct.display* %31, %struct.display** @display, align 8
  br label %for.cond.11

for.end.41:                                       ; preds = %for.cond.11
  %32 = load %struct.display*, %struct.display** %det, align 8
  store %struct.display* %32, %struct.display** @displays, align 8
  store %struct.display* %32, %struct.display** @display, align 8
  %33 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %type42 = getelementptr inbounds %struct.msg, %struct.msg* %33, i32 0, i32 1
  %34 = load i32, i32* %type42, align 4
  %cmp43 = icmp ne i32 %34, 2
  br i1 %cmp43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %for.end.41
  %35 = load %struct.display*, %struct.display** @display, align 8
  %tobool45 = icmp ne %struct.display* %35, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.44
  call void @FreeDisplay()
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.44
  %36 = load i32, i32* %pid, align 4
  call void @Kill(i32 %36, i32 18)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %for.end.41
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind uwtable
define internal void @DoCommandMsg(%struct.msg* %mp) #0 {
entry:
  %mp.addr = alloca %struct.msg*, align 8
  %args = alloca [64 x i8*], align 16
  %argl = alloca [64 x i32], align 16
  %fullcmd = alloca [768 x i8], align 16
  %fc = alloca i8*, align 8
  %n = alloca i32, align 4
  %p = alloca i8*, align 8
  %user = alloca %struct.acluser*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %oldrcname = alloca i8*, align 8
  store %struct.msg* %mp, %struct.msg** %mp.addr, align 8
  %0 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m = getelementptr inbounds %struct.msg, %struct.msg* %0, i32 0, i32 3
  %command = bitcast %union.anon* %m to %struct.anon.6*
  %cmd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %command, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cmd, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %1 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m1 = getelementptr inbounds %struct.msg, %struct.msg* %1, i32 0, i32 3
  %command2 = bitcast %union.anon* %m1 to %struct.anon.6*
  %nargs = getelementptr inbounds %struct.anon.6, %struct.anon.6* %command2, i32 0, i32 1
  %2 = load i32, i32* %nargs, align 4
  store i32 %2, i32* %n, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %3, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 63, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay3 = getelementptr inbounds [768 x i8], [768 x i8]* %fullcmd, i32 0, i32 0
  store i8* %arraydecay3, i8** %fc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %n, align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p, align 8
  %call = call i64 @strlen(i8* %5) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %6 = load i8*, i8** %fc, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %fc, align 8
  store i8 34, i8* %6, align 1
  %7 = load i8*, i8** %fc, align 8
  %8 = load i8*, i8** %p, align 8
  %arraydecay5 = getelementptr inbounds [768 x i8], [768 x i8]* %fullcmd, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 768
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -2
  %call7 = call i8* @strncpy_escape_quote(i8* %7, i8* %8, i8* %add.ptr6)
  store i8* %call7, i8** %fc, align 8
  %tobool = icmp ne i8* %call7, null
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.body
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0))
  store i32 -1, i32* @queryflag, align 4
  br label %return

if.end.9:                                         ; preds = %for.body
  %9 = load i32, i32* %len, align 4
  %add = add nsw i32 %9, 1
  %10 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr10, i8** %p, align 8
  %11 = load i8*, i8** %fc, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %fc, align 8
  store i8 34, i8* %11, align 1
  %12 = load i8*, i8** %fc, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr12, i8** %fc, align 8
  store i8 32, i8* %12, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %13 = load i32, i32* %n, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %fc, align 8
  %arraydecay13 = getelementptr inbounds [768 x i8], [768 x i8]* %fullcmd, i32 0, i32 0
  %cmp14 = icmp ne i8* %14, %arraydecay13
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end
  %15 = load i8*, i8** %fc, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr17, i8** %fc, align 8
  store i8 0, i8* %incdec.ptr17, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.end
  %arraydecay19 = getelementptr inbounds [768 x i8], [768 x i8]* %fullcmd, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [64 x i32], [64 x i32]* %argl, i32 0, i32 0
  %call22 = call i32 @Parse(i8* %arraydecay19, i32 768, i8** %arraydecay20, i32* %arraydecay21)
  %cmp23 = icmp sle i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.18
  store i32 -1, i32* @queryflag, align 4
  br label %return

if.end.26:                                        ; preds = %if.end.18
  %16 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m27 = getelementptr inbounds %struct.msg, %struct.msg* %16, i32 0, i32 3
  %attach = bitcast %union.anon* %m27 to %struct.anon.4*
  %auser = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [257 x i8], [257 x i8]* %auser, i32 0, i32 0
  %call29 = call %struct.acluser** @FindUserPtr(i8* %arraydecay28)
  %17 = load %struct.acluser*, %struct.acluser** %call29, align 8
  store %struct.acluser* %17, %struct.acluser** %user, align 8
  %18 = load %struct.acluser*, %struct.acluser** %user, align 8
  %cmp30 = icmp eq %struct.acluser* %18, null
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.end.26
  %19 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m33 = getelementptr inbounds %struct.msg, %struct.msg* %19, i32 0, i32 3
  %attach34 = bitcast %union.anon* %m33 to %struct.anon.4*
  %auser35 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach34, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [257 x i8], [257 x i8]* %auser35, i32 0, i32 0
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0), i8* %arraydecay36)
  store i32 -1, i32* @queryflag, align 4
  br label %return

if.end.37:                                        ; preds = %if.end.26
  %20 = load %struct.acluser*, %struct.acluser** %user, align 8
  %u_password = getelementptr inbounds %struct.acluser, %struct.acluser* %20, i32 0, i32 2
  %21 = load i8*, i8** %u_password, align 8
  %tobool38 = icmp ne i8* %21, null
  br i1 %tobool38, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.37
  %22 = load %struct.acluser*, %struct.acluser** %user, align 8
  %u_password39 = getelementptr inbounds %struct.acluser, %struct.acluser* %22, i32 0, i32 2
  %23 = load i8*, i8** %u_password39, align 8
  %24 = load i8, i8* %23, align 1
  %conv40 = sext i8 %24 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %land.lhs.true
  %25 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m43 = getelementptr inbounds %struct.msg, %struct.msg* %25, i32 0, i32 3
  %attach44 = bitcast %union.anon* %m43 to %struct.anon.4*
  %auser45 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %attach44, i32 0, i32 0
  %arraydecay46 = getelementptr inbounds [257 x i8], [257 x i8]* %auser45, i32 0, i32 0
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.63, i32 0, i32 0), i8* %arraydecay46)
  store i32 -1, i32* @queryflag, align 4
  br label %return

if.end.47:                                        ; preds = %land.lhs.true, %if.end.37
  %26 = load %struct.display*, %struct.display** @display, align 8
  %tobool48 = icmp ne %struct.display* %26, null
  br i1 %tobool48, label %if.end.59, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  %27 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %27, %struct.display** @display, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.57, %if.then.49
  %28 = load %struct.display*, %struct.display** @display, align 8
  %tobool51 = icmp ne %struct.display* %28, null
  br i1 %tobool51, label %for.body.52, label %for.end.58

for.body.52:                                      ; preds = %for.cond.50
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 1
  %30 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %31 = load %struct.acluser*, %struct.acluser** %user, align 8
  %cmp53 = icmp eq %struct.acluser* %30, %31
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.body.52
  br label %for.end.58

if.end.56:                                        ; preds = %for.body.52
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 0
  %33 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %33, %struct.display** @display, align 8
  br label %for.cond.50

for.end.58:                                       ; preds = %if.then.55, %for.cond.50
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.58, %if.end.47
  %34 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %34, %struct.win** @fore, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.84, %if.end.59
  %35 = load %struct.win*, %struct.win** @fore, align 8
  %tobool61 = icmp ne %struct.win* %35, null
  br i1 %tobool61, label %for.body.62, label %for.end.85

for.body.62:                                      ; preds = %for.cond.60
  %36 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m_tty = getelementptr inbounds %struct.msg, %struct.msg* %36, i32 0, i32 2
  %arraydecay63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty, i32 0, i32 0
  %37 = load %struct.win*, %struct.win** @fore, align 8
  %w_tty = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 89
  %arraydecay64 = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty, i32 0, i32 0
  %call65 = call i32 @strcmp(i8* %arraydecay63, i8* %arraydecay64) #8
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.83, label %if.then.67

if.then.67:                                       ; preds = %for.body.62
  %38 = load %struct.display*, %struct.display** @display, align 8
  %tobool68 = icmp ne %struct.display* %38, null
  br i1 %tobool68, label %if.end.73, label %if.then.69

if.then.69:                                       ; preds = %if.then.67
  %39 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
  %40 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool70 = icmp ne %struct.canvas* %40, null
  br i1 %tobool70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.69
  %41 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer71 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 3
  %l_cvlist72 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer71, i32 0, i32 0
  %42 = load %struct.canvas*, %struct.canvas** %l_cvlist72, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %42, i32 0, i32 1
  %43 = load %struct.display*, %struct.display** %c_display, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.display* [ %43, %cond.true ], [ null, %cond.false ]
  store %struct.display* %cond, %struct.display** @display, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %cond.end, %if.then.67
  %44 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer74 = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 3
  %l_cvlist75 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer74, i32 0, i32 0
  %45 = load %struct.canvas*, %struct.canvas** %l_cvlist75, align 8
  %tobool76 = icmp ne %struct.canvas* %45, null
  br i1 %tobool76, label %lor.lhs.false, label %if.then.81

lor.lhs.false:                                    ; preds = %if.end.73
  %46 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer77 = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 3
  %l_cvlist78 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer77, i32 0, i32 0
  %47 = load %struct.canvas*, %struct.canvas** %l_cvlist78, align 8
  %c_display79 = getelementptr inbounds %struct.canvas, %struct.canvas* %47, i32 0, i32 1
  %48 = load %struct.display*, %struct.display** %c_display79, align 8
  %tobool80 = icmp ne %struct.display* %48, null
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %lor.lhs.false, %if.end.73
  store %struct.win* null, %struct.win** @fore, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %lor.lhs.false
  br label %for.end.85

if.end.83:                                        ; preds = %for.body.62
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %49 = load %struct.win*, %struct.win** @fore, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %49, i32 0, i32 0
  %50 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %50, %struct.win** @fore, align 8
  br label %for.cond.60

for.end.85:                                       ; preds = %if.end.82, %for.cond.60
  %51 = load %struct.display*, %struct.display** @display, align 8
  %tobool86 = icmp ne %struct.display* %51, null
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %for.end.85
  %52 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %52, %struct.display** @display, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %for.end.85
  %53 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m89 = getelementptr inbounds %struct.msg, %struct.msg* %53, i32 0, i32 3
  %command90 = bitcast %union.anon* %m89 to %struct.anon.6*
  %preselect = getelementptr inbounds %struct.anon.6, %struct.anon.6* %command90, i32 0, i32 4
  %arraydecay91 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect, i32 0, i32 0
  %54 = load i8, i8* %arraydecay91, align 1
  %tobool92 = icmp ne i8 %54, 0
  br i1 %tobool92, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.end.88
  store i32 -1, i32* %i, align 4
  %55 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m94 = getelementptr inbounds %struct.msg, %struct.msg* %55, i32 0, i32 3
  %command95 = bitcast %union.anon* %m94 to %struct.anon.6*
  %preselect96 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %command95, i32 0, i32 4
  %arraydecay97 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect96, i32 0, i32 0
  %call98 = call i32 @strcmp(i8* %arraydecay97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)) #8
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.112

if.then.100:                                      ; preds = %if.then.93
  %56 = load %struct.msg*, %struct.msg** %mp.addr, align 8
  %m101 = getelementptr inbounds %struct.msg, %struct.msg* %56, i32 0, i32 3
  %command102 = bitcast %union.anon* %m101 to %struct.anon.6*
  %preselect103 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %command102, i32 0, i32 4
  %arraydecay104 = getelementptr inbounds [20 x i8], [20 x i8]* %preselect103, i32 0, i32 0
  %call105 = call i32 @WindowByNoN(i8* %arraydecay104)
  store i32 %call105, i32* %i, align 4
  %57 = load i32, i32* %i, align 4
  %cmp106 = icmp slt i32 %57, 0
  br i1 %cmp106, label %if.then.110, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %if.then.100
  %58 = load i32, i32* %i, align 4
  %idxprom = sext i32 %58 to i64
  %59 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx = getelementptr inbounds %struct.win*, %struct.win** %59, i64 %idxprom
  %60 = load %struct.win*, %struct.win** %arrayidx, align 8
  %tobool109 = icmp ne %struct.win* %60, null
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %lor.lhs.false.108, %if.then.100
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.64, i32 0, i32 0))
  store i32 -1, i32* @queryflag, align 4
  br label %return

if.end.111:                                       ; preds = %lor.lhs.false.108
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.93
  %61 = load i32, i32* %i, align 4
  %cmp113 = icmp sge i32 %61, 0
  br i1 %cmp113, label %cond.true.115, label %cond.false.118

cond.true.115:                                    ; preds = %if.end.112
  %62 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %62 to i64
  %63 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx117 = getelementptr inbounds %struct.win*, %struct.win** %63, i64 %idxprom116
  %64 = load %struct.win*, %struct.win** %arrayidx117, align 8
  br label %cond.end.119

cond.false.118:                                   ; preds = %if.end.112
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.115
  %cond120 = phi %struct.win* [ %64, %cond.true.115 ], [ null, %cond.false.118 ]
  store %struct.win* %cond120, %struct.win** @fore, align 8
  br label %if.end.144

if.else:                                          ; preds = %if.end.88
  %65 = load %struct.win*, %struct.win** @fore, align 8
  %tobool121 = icmp ne %struct.win* %65, null
  br i1 %tobool121, label %if.end.143, label %if.then.122

if.then.122:                                      ; preds = %if.else
  %66 = load %struct.display*, %struct.display** @display, align 8
  %tobool123 = icmp ne %struct.display* %66, null
  br i1 %tobool123, label %land.lhs.true.124, label %if.end.129

land.lhs.true.124:                                ; preds = %if.then.122
  %67 = load %struct.display*, %struct.display** @display, align 8
  %d_user125 = getelementptr inbounds %struct.display, %struct.display* %67, i32 0, i32 1
  %68 = load %struct.acluser*, %struct.acluser** %d_user125, align 8
  %69 = load %struct.acluser*, %struct.acluser** %user, align 8
  %cmp126 = icmp eq %struct.acluser* %68, %69
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %land.lhs.true.124
  %70 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 4
  %71 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %71, i32 0, i32 9
  %72 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %72, i32 0, i32 9
  %73 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %73, i32 0, i32 7
  %74 = load i8*, i8** %l_data, align 8
  %75 = bitcast i8* %74 to %struct.win*
  store %struct.win* %75, %struct.win** @fore, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %land.lhs.true.124, %if.then.122
  %76 = load %struct.win*, %struct.win** @fore, align 8
  %tobool130 = icmp ne %struct.win* %76, null
  br i1 %tobool130, label %if.end.142, label %if.then.131

if.then.131:                                      ; preds = %if.end.129
  %77 = load %struct.acluser*, %struct.acluser** %user, align 8
  %u_detachwin = getelementptr inbounds %struct.acluser, %struct.acluser* %77, i32 0, i32 4
  %78 = load i32, i32* %u_detachwin, align 4
  %cmp132 = icmp sge i32 %78, 0
  br i1 %cmp132, label %cond.true.134, label %cond.false.138

cond.true.134:                                    ; preds = %if.then.131
  %79 = load %struct.acluser*, %struct.acluser** %user, align 8
  %u_detachwin135 = getelementptr inbounds %struct.acluser, %struct.acluser* %79, i32 0, i32 4
  %80 = load i32, i32* %u_detachwin135, align 4
  %idxprom136 = sext i32 %80 to i64
  %81 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx137 = getelementptr inbounds %struct.win*, %struct.win** %81, i64 %idxprom136
  %82 = load %struct.win*, %struct.win** %arrayidx137, align 8
  br label %cond.end.139

cond.false.138:                                   ; preds = %if.then.131
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.134
  %cond140 = phi %struct.win* [ %82, %cond.true.134 ], [ null, %cond.false.138 ]
  store %struct.win* %cond140, %struct.win** @fore, align 8
  %83 = load %struct.win*, %struct.win** @fore, align 8
  %call141 = call %struct.win* @FindNiceWindow(%struct.win* %83, i8* null)
  store %struct.win* %call141, %struct.win** @fore, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %cond.end.139, %if.end.129
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.else
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %cond.end.119
  %84 = load %struct.win*, %struct.win** @fore, align 8
  %tobool145 = icmp ne %struct.win* %84, null
  br i1 %tobool145, label %if.end.147, label %if.then.146

if.then.146:                                      ; preds = %if.end.144
  %85 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %85, %struct.win** @fore, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.end.144
  %86 = load %struct.acluser*, %struct.acluser** %user, align 8
  store %struct.acluser* %86, %struct.acluser** @EffectiveAclUser, align 8
  %arraydecay148 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  %87 = load i8*, i8** %arraydecay148, align 8
  %tobool149 = icmp ne i8* %87, null
  br i1 %tobool149, label %if.then.150, label %if.end.172

if.then.150:                                      ; preds = %if.end.147
  %88 = load i8*, i8** @rc_name, align 8
  store i8* %88, i8** %oldrcname, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i8** @rc_name, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.150
  br label %do.end

do.end:                                           ; preds = %do.body
  %89 = load %struct.win*, %struct.win** @fore, align 8
  %tobool151 = icmp ne %struct.win* %89, null
  br i1 %tobool151, label %cond.true.152, label %cond.false.154

cond.true.152:                                    ; preds = %do.end
  %90 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer153 = getelementptr inbounds %struct.win, %struct.win* %90, i32 0, i32 3
  br label %cond.end.155

cond.false.154:                                   ; preds = %do.end
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.154, %cond.true.152
  %cond156 = phi %struct.layer* [ %w_layer153, %cond.true.152 ], [ null, %cond.false.154 ]
  store %struct.layer* %cond156, %struct.layer** @flayer, align 8
  %91 = load %struct.win*, %struct.win** @fore, align 8
  %tobool157 = icmp ne %struct.win* %91, null
  br i1 %tobool157, label %land.lhs.true.158, label %if.end.169

land.lhs.true.158:                                ; preds = %cond.end.155
  %92 = load %struct.win*, %struct.win** @fore, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %92, i32 0, i32 4
  %93 = load %struct.layer*, %struct.layer** %w_savelayer, align 8
  %tobool159 = icmp ne %struct.layer* %93, null
  br i1 %tobool159, label %land.lhs.true.160, label %if.end.169

land.lhs.true.160:                                ; preds = %land.lhs.true.158
  %94 = load %struct.win*, %struct.win** @fore, align 8
  %w_blocked = getelementptr inbounds %struct.win, %struct.win* %94, i32 0, i32 5
  %95 = load i32, i32* %w_blocked, align 4
  %tobool161 = icmp ne i32 %95, 0
  br i1 %tobool161, label %if.then.167, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %land.lhs.true.160
  %96 = load %struct.win*, %struct.win** @fore, align 8
  %w_savelayer163 = getelementptr inbounds %struct.win, %struct.win* %96, i32 0, i32 4
  %97 = load %struct.layer*, %struct.layer** %w_savelayer163, align 8
  %l_cvlist164 = getelementptr inbounds %struct.layer, %struct.layer* %97, i32 0, i32 0
  %98 = load %struct.canvas*, %struct.canvas** %l_cvlist164, align 8
  %cmp165 = icmp eq %struct.canvas* %98, null
  br i1 %cmp165, label %if.then.167, label %if.end.169

if.then.167:                                      ; preds = %lor.lhs.false.162, %land.lhs.true.160
  %99 = load %struct.win*, %struct.win** @fore, align 8
  %w_savelayer168 = getelementptr inbounds %struct.win, %struct.win* %99, i32 0, i32 4
  %100 = load %struct.layer*, %struct.layer** %w_savelayer168, align 8
  store %struct.layer* %100, %struct.layer** @flayer, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %lor.lhs.false.162, %land.lhs.true.158, %cond.end.155
  %arraydecay170 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  %arraydecay171 = getelementptr inbounds [64 x i32], [64 x i32]* %argl, i32 0, i32 0
  call void @DoCommand(i8** %arraydecay170, i32* %arraydecay171)
  %101 = load i8*, i8** %oldrcname, align 8
  store i8* %101, i8** @rc_name, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.169, %if.end.147
  store %struct.acluser* null, %struct.acluser** @EffectiveAclUser, align 8
  br label %return

return:                                           ; preds = %if.end.172, %if.then.110, %if.then.42, %if.then.32, %if.then.25, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ReceiveRaw(i32 %s) #0 {
entry:
  %s.addr = alloca i32, align 4
  %rd = alloca [256 x i8], align 16
  %len = alloca i32, align 4
  %a = alloca %struct.sockaddr_un, align 2
  %agg.tmp = alloca %union.__SOCKADDR_ARG, align 8
  store i32 %s, i32* %s.addr, align 4
  store i32 0, i32* %len, align 4
  store i32 110, i32* %len, align 4
  %0 = load i32, i32* %s.addr, align 4
  %__sockaddr__ = bitcast %union.__SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %1 = bitcast %struct.sockaddr_un* %a to %struct.sockaddr*
  store %struct.sockaddr* %1, %struct.sockaddr** %__sockaddr__, align 8
  %2 = bitcast i32* %len to i8*
  %3 = bitcast i8* %2 to i32*
  %coerce.dive = getelementptr %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %4 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call = call i32 @accept(i32 %0, %struct.sockaddr* %4, i32* %3)
  store i32 %call, i32* %s.addr, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #9
  %5 = load i32, i32* %call1, align 4
  call void (i32, i8*, ...) @Msg(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, i32* %s.addr, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %rd, i32 0, i32 0
  %call2 = call i64 @read(i32 %6, i8* %arraydecay, i64 255)
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %len, align 4
  %cmp3 = icmp sgt i32 %conv, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %len, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %rd, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %rd, i32 0, i32 0
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %s.addr, align 4
  %call7 = call i32 @close(i32 %8)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @chsock() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  %euid = alloca i32, align 4
  %call = call i32 @geteuid() #7
  store i32 %call, i32* %euid, align 4
  %0 = load i32, i32* %euid, align 4
  %1 = load i32, i32* @real_uid, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %call1 = call i32 @UserContext()
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call4 = call i32 @UserStatus()
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %2 = load %struct.display*, %struct.display** @displays, align 8
  %tobool = icmp ne %struct.display* %2, null
  %cond = select i1 %tobool, i32 64, i32 0
  %or = or i32 384, %cond
  %3 = load i8*, i8** @multi, align 8
  %tobool6 = icmp ne i8* %3, null
  %cond7 = select i1 %tobool6, i32 1, i32 0
  %or8 = or i32 %or, %cond7
  %call9 = call i32 @chmod(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i32 %or8) #7
  store i32 %call9, i32* %r, align 4
  %call10 = call i32 @utimes(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), %struct.timeval* null) #7
  %4 = load i32, i32* %euid, align 4
  %5 = load i32, i32* @real_uid, align 4
  %cmp11 = icmp ne i32 %4, %5
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.5
  %6 = load i32, i32* %r, align 4
  call void @UserReturn(i32 %6)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.5
  %7 = load i32, i32* %r, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.3
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare i32 @geteuid() #5

declare i32 @UserContext() #2

declare i32 @UserStatus() #2

; Function Attrs: nounwind
declare i32 @utimes(i8*, %struct.timeval*) #5

declare void @UserReturn(i32) #2

; Function Attrs: nounwind uwtable
define i32 @RecoverSocket() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @ServerSocket, align 4
  %call = call i32 @close(i32 %0)
  %call1 = call i32 @geteuid() #7
  %1 = load i32, i32* @real_uid, align 4
  %cmp = icmp ne i32 %call1, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @UserContext()
  %cmp3 = icmp sgt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %call5 = call i32 @unlink(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #7
  call void @UserReturn(i32 %call5)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %call6 = call i32 @UserStatus()
  br label %if.end.8

if.else:                                          ; preds = %entry
  %call7 = call i32 @unlink(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0)) #7
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  %call9 = call i32 @MakeServerSocket()
  store i32 %call9, i32* @ServerSocket, align 4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  call void @evdeq(%struct.event* @serv_read)
  %2 = load i32, i32* @ServerSocket, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.event, %struct.event* @serv_read, i32 0, i32 3), align 4
  call void @evenq(%struct.event* @serv_read)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare void @evdeq(%struct.event*) #2

declare void @evenq(%struct.event*) #2

; Function Attrs: nounwind uwtable
define i32 @SendAttachMsg(i32 %s, %struct.msg* %m, i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %m.addr = alloca %struct.msg*, align 8
  %fd.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca %struct.iovec, align 8
  %buf = alloca [24 x i8], align 16
  %cmsg = alloca %struct.cmsghdr*, align 8
  store i32 %s, i32* %s.addr, align 4
  store %struct.msg* %m, %struct.msg** %m.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load %struct.msg*, %struct.msg** %m.addr, align 8
  %1 = bitcast %struct.msg* %0 to i8*
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i32 0, i32 0
  store i8* %1, i8** %iov_base, align 8
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %iov, i32 0, i32 1
  store i64 12584, i64* %iov_len, align 8
  %2 = bitcast %struct.msghdr* %msg to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 56, i32 8, i1 false)
  %msg_name = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 0
  store i8* null, i8** %msg_name, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 1
  store i32 0, i32* %msg_namelen, align 4
  %msg_iov = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 2
  store %struct.iovec* %iov, %struct.iovec** %msg_iov, align 8
  %msg_iovlen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 3
  store i64 1, i64* %msg_iovlen, align 8
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %buf, i32 0, i32 0
  %msg_control = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 4
  store i8* %arraydecay, i8** %msg_control, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  store i64 24, i64* %msg_controllen, align 8
  %msg_controllen1 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  %3 = load i64, i64* %msg_controllen1, align 8
  %cmp = icmp uge i64 %3, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %msg_control2 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 4
  %4 = load i8*, i8** %msg_control2, align 8
  %5 = bitcast i8* %4 to %struct.cmsghdr*
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.cmsghdr* [ %5, %cond.true ], [ null, %cond.false ]
  store %struct.cmsghdr* %cond, %struct.cmsghdr** %cmsg, align 8
  %6 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %6, i32 0, i32 1
  store i32 1, i32* %cmsg_level, align 4
  %7 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %7, i32 0, i32 2
  store i32 1, i32* %cmsg_type, align 4
  %8 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %cmsg_len = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %8, i32 0, i32 0
  store i64 20, i64* %cmsg_len, align 8
  %9 = bitcast i32* %fd.addr to i8*
  %10 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %__cmsg_data = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 3
  %arraydecay3 = getelementptr inbounds [0 x i8], [0 x i8]* %__cmsg_data, i32 0, i32 0
  call void @bcopy(i8* %9, i8* %arraydecay3, i64 4) #7
  %11 = load %struct.cmsghdr*, %struct.cmsghdr** %cmsg, align 8
  %cmsg_len4 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %11, i32 0, i32 0
  %12 = load i64, i64* %cmsg_len4, align 8
  %msg_controllen5 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %msg, i32 0, i32 5
  store i64 %12, i64* %msg_controllen5, align 8
  br label %while.body

while.body:                                       ; preds = %cond.end, %if.then
  %13 = load i32, i32* %s.addr, align 4
  %call = call i64 @sendmsg(i32 %13, %struct.msghdr* %msg, i32 0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %r, align 4
  %14 = load i32, i32* %r, align 4
  %cmp6 = icmp eq i32 %14, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %call8 = call i32* @__errno_location() #9
  %15 = load i32, i32* %call8, align 4
  %cmp9 = icmp eq i32 %15, 4
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.body

if.end:                                           ; preds = %land.lhs.true, %while.body
  %16 = load i32, i32* %r, align 4
  %cmp11 = icmp eq i32 %16, -1
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i64 @sendmsg(i32, %struct.msghdr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare i32 @IsNumColon(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @MakeWindow(%struct.NewWindow*) #2

; Function Attrs: nounwind uwtable
define internal i32 @CheckPid(i32 %pid) #0 {
entry:
  %retval = alloca i32, align 4
  %pid.addr = alloca i32, align 4
  store i32 %pid, i32* %pid.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %pid.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load i32, i32* @eff_uid, align 4
  %2 = load i32, i32* @real_uid, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %pid.addr, align 4
  %call = call i32 @kill(i32 %3, i32 0) #7
  store i32 %call, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call i32 @UserContext()
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %4 = load i32, i32* %pid.addr, align 4
  %call7 = call i32 @kill(i32 %4, i32 0) #7
  call void @UserReturn(i32 %call7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.3
  %call9 = call i32 @UserStatus()
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.2, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare i8* @ttyname(i32) #5

declare i32 @secopen(i8*, i32, i32) #2

declare void @GetTTY(i32, %struct.mode*) #2

declare %struct.display* @MakeDisplay(i8*, i8*, i8*, i32, i32, %struct.mode*) #2

declare i8* @EncodingName(i32) #2

declare void @SetTTY(i32, %struct.mode*) #2

declare void @SetMode(%struct.mode*, %struct.mode*, i32, i32) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

declare i32 @StartRc(i8*, i32) #2

declare i32 @InitTermcap(i32, i32) #2

declare void @FreeDisplay() #2

declare i32 @MakeDefaultCanvas() #2

declare void @InitTerm(i32) #2

declare void (i32)* @xsignal(i32, void (i32)*) #2

declare void @SigHup(i32) #2

declare void @RemoveLoginSlot() #2

declare i32 @SetUtmp(%struct.win*) #2

declare void @LoadLayout(%struct.layout*, %struct.canvas*) #2

declare void @SetCanvasWindow(%struct.canvas*, %struct.win*) #2

declare void @DoAction(%struct.action*, i32) #2

declare %struct.win* @FindNiceWindow(%struct.win*, i8*) #2

declare void @SetForeWindow(%struct.win*) #2

declare i32 @AclCheckPermCmd(%struct.acluser*, i32, %struct.comm*) #2

declare void @display_windows(i32, i32, %struct.win*) #2

declare void @Activate(i32) #2

declare void @ResetIdle() #2

declare void @ShowWindows(i32) #2

declare i32 @TtyGrabConsole(i32, i32, i8*) #2

declare void @Detach(i32) #2

; Function Attrs: nounwind uwtable
define internal void @PasswordProcessInput(i8* %ibuf, i32 %ilen) #0 {
entry:
  %ibuf.addr = alloca i8*, align 8
  %ilen.addr = alloca i32, align 4
  %pwdata = alloca %struct.pwdata*, align 8
  %c = alloca i32, align 4
  %l = alloca i32, align 4
  %up = alloca i8*, align 8
  %pid = alloca i32, align 4
  %buf = alloca i8*, align 8
  store i8* %ibuf, i8** %ibuf.addr, align 8
  store i32 %ilen, i32* %ilen.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 57
  %1 = load i32, i32* %d_userpid, align 4
  store i32 %1, i32* %pid, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_processinputdata = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 7
  %3 = load i8*, i8** %d_processinputdata, align 8
  %4 = bitcast i8* %3 to %struct.pwdata*
  store %struct.pwdata* %4, %struct.pwdata** %pwdata, align 8
  %5 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %l1 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %5, i32 0, i32 0
  %6 = load i32, i32* %l1, align 4
  store i32 %6, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %if.then.53, %if.end.49, %entry
  %7 = load i32, i32* %ilen.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %ilen.addr, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %ibuf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %ibuf.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  store i32 %conv, i32* %c, align 4
  %10 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %10, 13
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %11 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %11, 10
  br i1 %cmp4, label %if.then, label %if.end.34

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i8* null, i8** %buf, align 8
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 1
  %13 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %u_password = getelementptr inbounds %struct.acluser, %struct.acluser* %13, i32 0, i32 2
  %14 = load i8*, i8** %u_password, align 8
  store i8* %14, i8** %up, align 8
  %15 = load i32, i32* %l, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %buf6 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %16, i32 0, i32 1
  %arrayidx = getelementptr inbounds [257 x i8], [257 x i8]* %buf6, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %17 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %buf7 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %17, i32 0, i32 1
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %buf7, i32 0, i32 0
  %18 = load i8*, i8** %up, align 8
  %call = call i8* @crypt(i8* %arraydecay, i8* %18) #7
  store i8* %call, i8** %buf, align 8
  %19 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %19, null
  br i1 %tobool, label %lor.lhs.false.8, label %if.then.12

lor.lhs.false.8:                                  ; preds = %if.then
  %20 = load i8*, i8** %buf, align 8
  %21 = load i8*, i8** %up, align 8
  %22 = load i8*, i8** %up, align 8
  %call9 = call i64 @strlen(i8* %22) #8
  %call10 = call i32 @strncmp(i8* %20, i8* %21, i64 %call9) #8
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.then
  %23 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %buf13 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %23, i32 0, i32 1
  %24 = bitcast [257 x i8]* %buf13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 257, i32 4, i1 false)
  %25 = load i8*, i8** %buf, align 8
  %tobool14 = icmp ne i8* %25, null
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  call void @AddStr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then.12
  call void @AddStr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_processinputdata16 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 7
  store i8* null, i8** %d_processinputdata16, align 8
  call void @FreeDisplay()
  %27 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %m = getelementptr inbounds %struct.pwdata, %struct.pwdata* %27, i32 0, i32 2
  %m_tty = getelementptr inbounds %struct.msg, %struct.msg* %m, i32 0, i32 2
  %arraydecay17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %m_tty, i32 0, i32 0
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i32 0, i32 0), i8* %arraydecay17)
  %28 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %29 = bitcast %struct.pwdata* %28 to i8*
  call void @free(i8* %29) #7
  %30 = load i32, i32* %pid, align 4
  call void @Kill(i32 %30, i32 1)
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false.8
  %31 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %buf19 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %31, i32 0, i32 1
  %32 = bitcast [257 x i8]* %buf19 to i8*
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 257, i32 4, i1 false)
  call void @AddStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0))
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_processinputdata20 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 7
  store i8* null, i8** %d_processinputdata20, align 8
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_processinput = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 6
  store void (i8*, i32)* @ProcessInput, void (i8*, i32)** %d_processinput, align 8
  %35 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %m21 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %35, i32 0, i32 2
  %type = getelementptr inbounds %struct.msg, %struct.msg* %m21, i32 0, i32 1
  %36 = load i32, i32* %type, align 4
  %cmp22 = icmp eq i32 %36, 4
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.18
  %37 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %m25 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %37, i32 0, i32 2
  %type26 = getelementptr inbounds %struct.msg, %struct.msg* %m25, i32 0, i32 1
  %38 = load i32, i32* %type26, align 4
  %cmp27 = icmp eq i32 %38, 5
  br i1 %cmp27, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %lor.lhs.false.24, %if.end.18
  %39 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %m30 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %39, i32 0, i32 2
  call void @FinishDetach(%struct.msg* %m30)
  br label %if.end.33

if.else.31:                                       ; preds = %lor.lhs.false.24
  %40 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %m32 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %40, i32 0, i32 2
  call void @FinishAttach(%struct.msg* %m32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.29
  %41 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %42 = bitcast %struct.pwdata* %41 to i8*
  call void @free(i8* %42) #7
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false
  %43 = load i32, i32* %c, align 4
  %cmp35 = icmp eq i32 %43, 3
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  call void @AddStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0))
  call void @FreeDisplay()
  %44 = load i32, i32* %pid, align 4
  call void @Kill(i32 %44, i32 1)
  br label %return

if.end.38:                                        ; preds = %if.end.34
  %45 = load i32, i32* %c, align 4
  %cmp39 = icmp eq i32 %45, 8
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.38
  %46 = load i32, i32* %c, align 4
  %cmp42 = icmp eq i32 %46, 127
  br i1 %cmp42, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %lor.lhs.false.41, %if.end.38
  %47 = load i32, i32* %l, align 4
  %cmp45 = icmp sgt i32 %47, 0
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.44
  %48 = load i32, i32* %l, align 4
  %dec48 = add nsw i32 %48, -1
  store i32 %dec48, i32* %l, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.44
  br label %while.cond

if.end.50:                                        ; preds = %lor.lhs.false.41
  %49 = load i32, i32* %c, align 4
  %cmp51 = icmp eq i32 %49, 21
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  store i32 0, i32* %l, align 4
  br label %while.cond

if.end.54:                                        ; preds = %if.end.50
  %50 = load i32, i32* %l, align 4
  %cmp55 = icmp slt i32 %50, 256
  br i1 %cmp55, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %if.end.54
  %51 = load i32, i32* %c, align 4
  %conv58 = trunc i32 %51 to i8
  %52 = load i32, i32* %l, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %l, align 4
  %idxprom59 = sext i32 %52 to i64
  %53 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %buf60 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %53, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [257 x i8], [257 x i8]* %buf60, i32 0, i64 %idxprom59
  store i8 %conv58, i8* %arrayidx61, align 1
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.57, %if.end.54
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load i32, i32* %l, align 4
  %55 = load %struct.pwdata*, %struct.pwdata** %pwdata, align 8
  %l63 = getelementptr inbounds %struct.pwdata, %struct.pwdata* %55, i32 0, i32 0
  store i32 %54, i32* %l63, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then.37, %if.end.33, %if.end
  ret void
}

declare void @AddStr(i8*) #2

; Function Attrs: nounwind
declare i8* @crypt(i8*, i8*) #5

declare void @ProcessInput(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @strncpy_escape_quote(i8* %dst, i8* %src, i8* %end) #0 {
entry:
  %retval = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %entry
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %dst.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i8*, i8** %src.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 34
  br i1 %cmp3, label %if.then, label %if.end.8

if.then:                                          ; preds = %while.body
  %7 = load i8*, i8** %dst.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8*, i8** %end.addr, align 8
  %cmp5 = icmp ult i8* %add.ptr, %8
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %9 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %dst.addr, align 8
  store i8 92, i8* %9, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %while.body
  %10 = load i8*, i8** %src.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr9, i8** %src.addr, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %dst.addr, align 8
  store i8 %11, i8* %12, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i8*, i8** %dst.addr, align 8
  %14 = load i8*, i8** %end.addr, align 8
  %cmp11 = icmp uge i8* %13, %14
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.end
  store i8* null, i8** %retval
  br label %return

if.end.14:                                        ; preds = %while.end
  %15 = load i8*, i8** %dst.addr, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %dst.addr, align 8
  store i8* %16, i8** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else
  %17 = load i8*, i8** %retval
  ret i8* %17
}

declare i32 @Parse(i8*, i32, i8**, i32*) #2

declare i32 @WindowByNoN(i8*) #2

declare void @DoCommand(i8**, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
