; ModuleID = './window.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NewWindow = type { i32, i8*, i8**, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.timeval = type { i64, i64 }
%struct.win = type { %struct.win*, i32, i8*, %struct.layer, %struct.layer*, i32, %struct.pseudowin*, %struct.display*, %struct.display*, i32, %struct.event, %struct.event, %struct.event, %struct.event, i32, i32, [4096 x i8], i32, [4096 x i8], i32, i32, i8*, i8*, [768 x i8], i32, %struct.win*, i32, [64 x i32], i32, i32, %struct.acluser*, [3 x i8*], i8*, i8*, i32, i32, %struct.mline*, %struct.mchar, i8, i8, i8, i32, i32, [4 x i32], i32, %struct.cursor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, [768 x i8], i8*, i8*, i32, i32, %struct.logfile*, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.mline*, %struct.paster, i32, i32, [64 x i8*], i8*, i8*, i32, i8*, %struct.utmp, [768 x i8], i32, %struct.display*, %struct.anon.2, %struct.event, i32 }
%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.pseudowin = type { i32, i32, i32, %struct.event, %struct.event, [768 x i8], [768 x i8], [4096 x i8], i32 }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.cursor = type { i32, i32, i32, %struct.mchar, i32, i32, [4 x i32] }
%struct.logfile = type { %struct.logfile*, %struct._IO_FILE*, i8*, i32, i32, i32, %struct.stat* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.mline = type { i8*, i8*, i8*, i8*, i8* }
%struct.paster = type { i8*, i8*, i32, %struct.layer*, %struct.event }
%struct.utmp = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.exit_status, i32, %struct.anon.1, [4 x i32], [20 x i8] }
%struct.exit_status = type { i16, i16 }
%struct.anon.1 = type { i32, i32 }
%struct.display = type { %struct.display*, %struct.acluser*, %struct.canvas, %struct.canvas*, %struct.canvas*, %struct.layout*, void (i8*, i32)*, i8*, i32, i32, %struct.win*, %struct.win*, i32, [33 x i8], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, %struct.timeval, i32, i8, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.event, %struct.event, i32, %struct.action*, i32, [4096 x i8], i32, %struct.event, %struct.event, %struct.event, %struct.mode, %struct.mode, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i8*, %struct.event, i32, i32, [201 x %union.tcu], [6 x i8*], [6 x i8], i32, i16, [256 x i8], i8***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.utmp, i32, i32, i32, %struct.event, i32, %struct.event }
%struct.layout = type { %struct.layout*, i8*, i32, %struct.canvas, %struct.canvas*, %struct.canvas*, i32 }
%struct.action = type { i32, i8**, i32*, i32 }
%struct.mode = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%union.tcu = type { i8* }
%struct.anon.2 = type { i32, %struct.mline*, i32, i32, i32, %struct.mline*, i32, %struct.cursor }
%struct.winsize = type { i16, i16, i16, i16 }

@VerboseCreate = global i32 0, align 4
@DefaultShell = global [8 x i8] c"/bin/sh\00", align 1
@nwin_undef = global %struct.NewWindow { i32 -1, i8* null, i8** null, i8* null, i8* null, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i8* null, i8* null, i32 0 }, align 8
@ShellArgs = external global [0 x i8*], align 8
@screenterm = external global [0 x i8], align 1
@nwin_default = global %struct.NewWindow { i32 0, i8* null, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @ShellArgs, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @screenterm, i32 0, i32 0), i32 0, i32 1, i32 1, i32 100, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i8* null, i8* null, i32 0 }, align 8
@WinLf = global %struct.LayFuncs { void (i8**, i32*)* @WinProcess, void ()* null, void (i32, i32, i32, i32)* @WinRedisplayLine, void (i32, i32, i32, i32)* @WinClearLine, i32 (i32, i32, i32, %struct.mchar*, i32)* @WinRewrite, i32 (i32, i32)* @WinResize, void ()* @WinRestore, void (i8*)* null }, align 8
@screenlogfile = external global i8*, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@logflushev = external global %struct.event, align 8
@log_flush = external global i32, align 4
@logtstamp_after = external global i32, align 4
@wtab = common global %struct.win** null, align 8
@maxwin = external global i32, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No more windows.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@strnomem = external global [0 x i8], align 1
@fore = external global %struct.win*, align 8
@display = external global %struct.display*, align 8
@users = external global %struct.acluser*, align 8
@maxusercount = external global i32, align 4
@SilenceWait = external global i32, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c":screen (\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"):\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@windows = external global %struct.win*, align 8
@console_window = external global %struct.win*, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@displays = external global %struct.display*, align 8
@flayer = external global %struct.layer*, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"Filter running: %s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"You feel dead inside.\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Cannot only use commands as pseudo win.\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"TIOCPKT pwin ioctl\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"TIOCPKT win ioctl\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Warning: FreePseudowin: NBLOCK fcntl failed\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Warning: FreePseudowin: TIOCPKT win ioctl\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Given window position is invalid.\00", align 1
@nwin_options = common global %struct.NewWindow zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [35 x i8] c"write: permission denied (user %s)\00", align 1
@ZombieKey_destroy = external global i32, align 4
@ZombieKey_resurrect = external global i32, align 4
@.str.18 = private unnamed_addr constant [46 x i8] c"Press %s to destroy or %s to resurrect window\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"//group\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"telnet\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Invalid argument '%s'\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Cannot access line '%s' for R/W\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"No more PTYs.\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"TIOCPKT ioctl\00", align 1
@real_uid = external global i32, align 4
@eff_uid = external global i32, align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"chown tty\00", align 1
@TtyMode = external global i32, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"chmod tty\00", align 1
@pty_preopen = external global i32, align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"ttyn\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@real_gid = external global i32, align 4
@.str.30 = private unnamed_addr constant [11 x i8] c"Setuid/gid\00", align 1
@eff_gid = external global i32, align 4
@.str.31 = private unnamed_addr constant [19 x i8] c"Cannot chdir to %s\00", align 1
@separate_sids = external global i32, align 4
@.str.32 = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Warning: clear NBLOCK fcntl failed\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"fgtty\00", align 1
@glwz = external global %struct.winsize, align 2
@NewEnv = external global i8**, align 8
@.str.35 = private unnamed_addr constant [7 x i8] c"SHELL=\00", align 1
@ShellProg = external global i8*, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"TERM=%s\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"WINDOW=%d\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Cannot exec '%s'\00", align 1
@const_IOSIZE = internal global i32 4096, align 4
@const_one = internal global i32 1, align 4
@zmodem_mode = external global i32, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"**\18B00\00", align 1
@mchar_blank = external global %struct.mchar, align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Zmodem active\0D\0A\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"**\18B01\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c":\00", align 1
@zmodem_sendcmd = external global i8*, align 8
@zmodem_recvcmd = external global i8*, align 8
@.str.43 = private unnamed_addr constant [11 x i8] c"\18\18\18\18\18\18\18\18\18\18\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"Window %d: silence for %d seconds\00", align 1

; Function Attrs: nounwind uwtable
define void @nwin_compose(%struct.NewWindow* %def, %struct.NewWindow* %new, %struct.NewWindow* %res) #0 {
entry:
  %def.addr = alloca %struct.NewWindow*, align 8
  %new.addr = alloca %struct.NewWindow*, align 8
  %res.addr = alloca %struct.NewWindow*, align 8
  store %struct.NewWindow* %def, %struct.NewWindow** %def.addr, align 8
  store %struct.NewWindow* %new, %struct.NewWindow** %new.addr, align 8
  store %struct.NewWindow* %res, %struct.NewWindow** %res.addr, align 8
  %0 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %StartAt = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %0, i32 0, i32 0
  %1 = load i32, i32* %StartAt, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 0), align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %StartAt1 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %3, i32 0, i32 0
  %4 = load i32, i32* %StartAt1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %StartAt2 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %5, i32 0, i32 0
  %6 = load i32, i32* %StartAt2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %6, %cond.false ]
  %7 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %StartAt3 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %7, i32 0, i32 0
  store i32 %cond, i32* %StartAt3, align 4
  %8 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %aka = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %8, i32 0, i32 1
  %9 = load i8*, i8** %aka, align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 1), align 8
  %cmp4 = icmp ne i8* %9, %10
  br i1 %cmp4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %11 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %aka6 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %11, i32 0, i32 1
  %12 = load i8*, i8** %aka6, align 8
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %13 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %aka8 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %13, i32 0, i32 1
  %14 = load i8*, i8** %aka8, align 8
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.5
  %cond10 = phi i8* [ %12, %cond.true.5 ], [ %14, %cond.false.7 ]
  %15 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %aka11 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %15, i32 0, i32 1
  store i8* %cond10, i8** %aka11, align 8
  %16 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %args = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %16, i32 0, i32 2
  %17 = load i8**, i8*** %args, align 8
  %18 = load i8**, i8*** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 2), align 8
  %cmp12 = icmp ne i8** %17, %18
  br i1 %cmp12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %cond.end.9
  %19 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %args14 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %19, i32 0, i32 2
  %20 = load i8**, i8*** %args14, align 8
  br label %cond.end.17

cond.false.15:                                    ; preds = %cond.end.9
  %21 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %args16 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %21, i32 0, i32 2
  %22 = load i8**, i8*** %args16, align 8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.13
  %cond18 = phi i8** [ %20, %cond.true.13 ], [ %22, %cond.false.15 ]
  %23 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %args19 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %23, i32 0, i32 2
  store i8** %cond18, i8*** %args19, align 8
  %24 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %dir = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %24, i32 0, i32 3
  %25 = load i8*, i8** %dir, align 8
  %26 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 3), align 8
  %cmp20 = icmp ne i8* %25, %26
  br i1 %cmp20, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %cond.end.17
  %27 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %dir22 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %27, i32 0, i32 3
  %28 = load i8*, i8** %dir22, align 8
  br label %cond.end.25

cond.false.23:                                    ; preds = %cond.end.17
  %29 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %dir24 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %29, i32 0, i32 3
  %30 = load i8*, i8** %dir24, align 8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.23, %cond.true.21
  %cond26 = phi i8* [ %28, %cond.true.21 ], [ %30, %cond.false.23 ]
  %31 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %dir27 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %31, i32 0, i32 3
  store i8* %cond26, i8** %dir27, align 8
  %32 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %term = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %32, i32 0, i32 4
  %33 = load i8*, i8** %term, align 8
  %34 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 4), align 8
  %cmp28 = icmp ne i8* %33, %34
  br i1 %cmp28, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %cond.end.25
  %35 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %term30 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %35, i32 0, i32 4
  %36 = load i8*, i8** %term30, align 8
  br label %cond.end.33

cond.false.31:                                    ; preds = %cond.end.25
  %37 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %term32 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %37, i32 0, i32 4
  %38 = load i8*, i8** %term32, align 8
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.31, %cond.true.29
  %cond34 = phi i8* [ %36, %cond.true.29 ], [ %38, %cond.false.31 ]
  %39 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %term35 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %39, i32 0, i32 4
  store i8* %cond34, i8** %term35, align 8
  %40 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %aflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %40, i32 0, i32 5
  %41 = load i32, i32* %aflag, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 5), align 4
  %cmp36 = icmp ne i32 %41, %42
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.end.33
  %43 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %aflag38 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %43, i32 0, i32 5
  %44 = load i32, i32* %aflag38, align 4
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.end.33
  %45 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %aflag40 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %45, i32 0, i32 5
  %46 = load i32, i32* %aflag40, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.37
  %cond42 = phi i32 [ %44, %cond.true.37 ], [ %46, %cond.false.39 ]
  %47 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %aflag43 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %47, i32 0, i32 5
  store i32 %cond42, i32* %aflag43, align 4
  %48 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %flowflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %48, i32 0, i32 6
  %49 = load i32, i32* %flowflag, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 6), align 4
  %cmp44 = icmp ne i32 %49, %50
  br i1 %cmp44, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %cond.end.41
  %51 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %flowflag46 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %51, i32 0, i32 6
  %52 = load i32, i32* %flowflag46, align 4
  br label %cond.end.49

cond.false.47:                                    ; preds = %cond.end.41
  %53 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %flowflag48 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %53, i32 0, i32 6
  %54 = load i32, i32* %flowflag48, align 4
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.45
  %cond50 = phi i32 [ %52, %cond.true.45 ], [ %54, %cond.false.47 ]
  %55 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %flowflag51 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %55, i32 0, i32 6
  store i32 %cond50, i32* %flowflag51, align 4
  %56 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %lflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %56, i32 0, i32 7
  %57 = load i32, i32* %lflag, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 7), align 4
  %cmp52 = icmp ne i32 %57, %58
  br i1 %cmp52, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %cond.end.49
  %59 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %lflag54 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %59, i32 0, i32 7
  %60 = load i32, i32* %lflag54, align 4
  br label %cond.end.57

cond.false.55:                                    ; preds = %cond.end.49
  %61 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %lflag56 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %61, i32 0, i32 7
  %62 = load i32, i32* %lflag56, align 4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.53
  %cond58 = phi i32 [ %60, %cond.true.53 ], [ %62, %cond.false.55 ]
  %63 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %lflag59 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %63, i32 0, i32 7
  store i32 %cond58, i32* %lflag59, align 4
  %64 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %histheight = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %64, i32 0, i32 8
  %65 = load i32, i32* %histheight, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 8), align 4
  %cmp60 = icmp ne i32 %65, %66
  br i1 %cmp60, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.end.57
  %67 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %histheight62 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %67, i32 0, i32 8
  %68 = load i32, i32* %histheight62, align 4
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.end.57
  %69 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %histheight64 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %69, i32 0, i32 8
  %70 = load i32, i32* %histheight64, align 4
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.61
  %cond66 = phi i32 [ %68, %cond.true.61 ], [ %70, %cond.false.63 ]
  %71 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %histheight67 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %71, i32 0, i32 8
  store i32 %cond66, i32* %histheight67, align 4
  %72 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %monitor = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %72, i32 0, i32 9
  %73 = load i32, i32* %monitor, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 9), align 4
  %cmp68 = icmp ne i32 %73, %74
  br i1 %cmp68, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %cond.end.65
  %75 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %monitor70 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %75, i32 0, i32 9
  %76 = load i32, i32* %monitor70, align 4
  br label %cond.end.73

cond.false.71:                                    ; preds = %cond.end.65
  %77 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %monitor72 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %77, i32 0, i32 9
  %78 = load i32, i32* %monitor72, align 4
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.69
  %cond74 = phi i32 [ %76, %cond.true.69 ], [ %78, %cond.false.71 ]
  %79 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %monitor75 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %79, i32 0, i32 9
  store i32 %cond74, i32* %monitor75, align 4
  %80 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %wlock = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %80, i32 0, i32 10
  %81 = load i32, i32* %wlock, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 10), align 4
  %cmp76 = icmp ne i32 %81, %82
  br i1 %cmp76, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %cond.end.73
  %83 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %wlock78 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %83, i32 0, i32 10
  %84 = load i32, i32* %wlock78, align 4
  br label %cond.end.81

cond.false.79:                                    ; preds = %cond.end.73
  %85 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %wlock80 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %85, i32 0, i32 10
  %86 = load i32, i32* %wlock80, align 4
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.77
  %cond82 = phi i32 [ %84, %cond.true.77 ], [ %86, %cond.false.79 ]
  %87 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %wlock83 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %87, i32 0, i32 10
  store i32 %cond82, i32* %wlock83, align 4
  %88 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %silence = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %88, i32 0, i32 11
  %89 = load i32, i32* %silence, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 11), align 4
  %cmp84 = icmp ne i32 %89, %90
  br i1 %cmp84, label %cond.true.85, label %cond.false.87

cond.true.85:                                     ; preds = %cond.end.81
  %91 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %silence86 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %91, i32 0, i32 11
  %92 = load i32, i32* %silence86, align 4
  br label %cond.end.89

cond.false.87:                                    ; preds = %cond.end.81
  %93 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %silence88 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %93, i32 0, i32 11
  %94 = load i32, i32* %silence88, align 4
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.87, %cond.true.85
  %cond90 = phi i32 [ %92, %cond.true.85 ], [ %94, %cond.false.87 ]
  %95 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %silence91 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %95, i32 0, i32 11
  store i32 %cond90, i32* %silence91, align 4
  %96 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %wrap = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %96, i32 0, i32 12
  %97 = load i32, i32* %wrap, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 12), align 4
  %cmp92 = icmp ne i32 %97, %98
  br i1 %cmp92, label %cond.true.93, label %cond.false.95

cond.true.93:                                     ; preds = %cond.end.89
  %99 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %wrap94 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %99, i32 0, i32 12
  %100 = load i32, i32* %wrap94, align 4
  br label %cond.end.97

cond.false.95:                                    ; preds = %cond.end.89
  %101 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %wrap96 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %101, i32 0, i32 12
  %102 = load i32, i32* %wrap96, align 4
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.93
  %cond98 = phi i32 [ %100, %cond.true.93 ], [ %102, %cond.false.95 ]
  %103 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %wrap99 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %103, i32 0, i32 12
  store i32 %cond98, i32* %wrap99, align 4
  %104 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %Lflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %104, i32 0, i32 13
  %105 = load i32, i32* %Lflag, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 13), align 4
  %cmp100 = icmp ne i32 %105, %106
  br i1 %cmp100, label %cond.true.101, label %cond.false.103

cond.true.101:                                    ; preds = %cond.end.97
  %107 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %Lflag102 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %107, i32 0, i32 13
  %108 = load i32, i32* %Lflag102, align 4
  br label %cond.end.105

cond.false.103:                                   ; preds = %cond.end.97
  %109 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %Lflag104 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %109, i32 0, i32 13
  %110 = load i32, i32* %Lflag104, align 4
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.103, %cond.true.101
  %cond106 = phi i32 [ %108, %cond.true.101 ], [ %110, %cond.false.103 ]
  %111 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %Lflag107 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %111, i32 0, i32 13
  store i32 %cond106, i32* %Lflag107, align 4
  %112 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %slow = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %112, i32 0, i32 14
  %113 = load i32, i32* %slow, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 14), align 4
  %cmp108 = icmp ne i32 %113, %114
  br i1 %cmp108, label %cond.true.109, label %cond.false.111

cond.true.109:                                    ; preds = %cond.end.105
  %115 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %slow110 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %115, i32 0, i32 14
  %116 = load i32, i32* %slow110, align 4
  br label %cond.end.113

cond.false.111:                                   ; preds = %cond.end.105
  %117 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %slow112 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %117, i32 0, i32 14
  %118 = load i32, i32* %slow112, align 4
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.111, %cond.true.109
  %cond114 = phi i32 [ %116, %cond.true.109 ], [ %118, %cond.false.111 ]
  %119 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %slow115 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %119, i32 0, i32 14
  store i32 %cond114, i32* %slow115, align 4
  %120 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %gr = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %120, i32 0, i32 15
  %121 = load i32, i32* %gr, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 15), align 4
  %cmp116 = icmp ne i32 %121, %122
  br i1 %cmp116, label %cond.true.117, label %cond.false.119

cond.true.117:                                    ; preds = %cond.end.113
  %123 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %gr118 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %123, i32 0, i32 15
  %124 = load i32, i32* %gr118, align 4
  br label %cond.end.121

cond.false.119:                                   ; preds = %cond.end.113
  %125 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %gr120 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %125, i32 0, i32 15
  %126 = load i32, i32* %gr120, align 4
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.117
  %cond122 = phi i32 [ %124, %cond.true.117 ], [ %126, %cond.false.119 ]
  %127 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %gr123 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %127, i32 0, i32 15
  store i32 %cond122, i32* %gr123, align 4
  %128 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %c1 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %128, i32 0, i32 16
  %129 = load i32, i32* %c1, align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 16), align 4
  %cmp124 = icmp ne i32 %129, %130
  br i1 %cmp124, label %cond.true.125, label %cond.false.127

cond.true.125:                                    ; preds = %cond.end.121
  %131 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %c1126 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %131, i32 0, i32 16
  %132 = load i32, i32* %c1126, align 4
  br label %cond.end.129

cond.false.127:                                   ; preds = %cond.end.121
  %133 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %c1128 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %133, i32 0, i32 16
  %134 = load i32, i32* %c1128, align 4
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.127, %cond.true.125
  %cond130 = phi i32 [ %132, %cond.true.125 ], [ %134, %cond.false.127 ]
  %135 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %c1131 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %135, i32 0, i32 16
  store i32 %cond130, i32* %c1131, align 4
  %136 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %bce = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %136, i32 0, i32 17
  %137 = load i32, i32* %bce, align 4
  %138 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 17), align 4
  %cmp132 = icmp ne i32 %137, %138
  br i1 %cmp132, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %cond.end.129
  %139 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %bce134 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %139, i32 0, i32 17
  %140 = load i32, i32* %bce134, align 4
  br label %cond.end.137

cond.false.135:                                   ; preds = %cond.end.129
  %141 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %bce136 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %141, i32 0, i32 17
  %142 = load i32, i32* %bce136, align 4
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.135, %cond.true.133
  %cond138 = phi i32 [ %140, %cond.true.133 ], [ %142, %cond.false.135 ]
  %143 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %bce139 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %143, i32 0, i32 17
  store i32 %cond138, i32* %bce139, align 4
  %144 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %encoding = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %144, i32 0, i32 18
  %145 = load i32, i32* %encoding, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 18), align 4
  %cmp140 = icmp ne i32 %145, %146
  br i1 %cmp140, label %cond.true.141, label %cond.false.143

cond.true.141:                                    ; preds = %cond.end.137
  %147 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %encoding142 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %147, i32 0, i32 18
  %148 = load i32, i32* %encoding142, align 4
  br label %cond.end.145

cond.false.143:                                   ; preds = %cond.end.137
  %149 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %encoding144 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %149, i32 0, i32 18
  %150 = load i32, i32* %encoding144, align 4
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.143, %cond.true.141
  %cond146 = phi i32 [ %148, %cond.true.141 ], [ %150, %cond.false.143 ]
  %151 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %encoding147 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %151, i32 0, i32 18
  store i32 %cond146, i32* %encoding147, align 4
  %152 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %hstatus = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %152, i32 0, i32 19
  %153 = load i8*, i8** %hstatus, align 8
  %154 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 19), align 8
  %cmp148 = icmp ne i8* %153, %154
  br i1 %cmp148, label %cond.true.149, label %cond.false.151

cond.true.149:                                    ; preds = %cond.end.145
  %155 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %hstatus150 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %155, i32 0, i32 19
  %156 = load i8*, i8** %hstatus150, align 8
  br label %cond.end.153

cond.false.151:                                   ; preds = %cond.end.145
  %157 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %hstatus152 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %157, i32 0, i32 19
  %158 = load i8*, i8** %hstatus152, align 8
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.151, %cond.true.149
  %cond154 = phi i8* [ %156, %cond.true.149 ], [ %158, %cond.false.151 ]
  %159 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %hstatus155 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %159, i32 0, i32 19
  store i8* %cond154, i8** %hstatus155, align 8
  %160 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %charset = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %160, i32 0, i32 20
  %161 = load i8*, i8** %charset, align 8
  %162 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 20), align 8
  %cmp156 = icmp ne i8* %161, %162
  br i1 %cmp156, label %cond.true.157, label %cond.false.159

cond.true.157:                                    ; preds = %cond.end.153
  %163 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %charset158 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %163, i32 0, i32 20
  %164 = load i8*, i8** %charset158, align 8
  br label %cond.end.161

cond.false.159:                                   ; preds = %cond.end.153
  %165 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %charset160 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %165, i32 0, i32 20
  %166 = load i8*, i8** %charset160, align 8
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.159, %cond.true.157
  %cond162 = phi i8* [ %164, %cond.true.157 ], [ %166, %cond.false.159 ]
  %167 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %charset163 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %167, i32 0, i32 20
  store i8* %cond162, i8** %charset163, align 8
  %168 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %poll_zombie_timeout = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %168, i32 0, i32 21
  %169 = load i32, i32* %poll_zombie_timeout, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 21), align 4
  %cmp164 = icmp ne i32 %169, %170
  br i1 %cmp164, label %cond.true.165, label %cond.false.167

cond.true.165:                                    ; preds = %cond.end.161
  %171 = load %struct.NewWindow*, %struct.NewWindow** %new.addr, align 8
  %poll_zombie_timeout166 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %171, i32 0, i32 21
  %172 = load i32, i32* %poll_zombie_timeout166, align 4
  br label %cond.end.169

cond.false.167:                                   ; preds = %cond.end.161
  %173 = load %struct.NewWindow*, %struct.NewWindow** %def.addr, align 8
  %poll_zombie_timeout168 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %173, i32 0, i32 21
  %174 = load i32, i32* %poll_zombie_timeout168, align 4
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.167, %cond.true.165
  %cond170 = phi i32 [ %172, %cond.true.165 ], [ %174, %cond.false.167 ]
  %175 = load %struct.NewWindow*, %struct.NewWindow** %res.addr, align 8
  %poll_zombie_timeout171 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %175, i32 0, i32 21
  store i32 %cond170, i32* %poll_zombie_timeout171, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WinProcess(i8** %bufpp, i32* %lenp) #0 {
entry:
  %bufpp.addr = alloca i8**, align 8
  %lenp.addr = alloca i32*, align 8
  %l2 = alloca i32, align 4
  %f = alloca i32, align 4
  %ilen = alloca i32*, align 8
  %l = alloca i32, align 4
  %trunc = alloca i32, align 4
  %ibuf = alloca i8*, align 8
  store i8** %bufpp, i8*** %bufpp.addr, align 8
  store i32* %lenp, i32** %lenp.addr, align 8
  store i32 0, i32* %l2, align 4
  %0 = load i32*, i32** %lenp.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %l, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 7
  %3 = load i8*, i8** %l_data, align 8
  %4 = bitcast i8* %3 to %struct.win*
  store %struct.win* %4, %struct.win** @fore, align 8
  %5 = load %struct.win*, %struct.win** @fore, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 1
  %6 = load i32, i32* %w_type, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %7 = load i32*, i32** %lenp.addr, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i8**, i8*** %bufpp.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %9, align 8
  %11 = load i32*, i32** %lenp.addr, align 8
  store i32 0, i32* %11, align 4
  br label %if.end.71

if.end:                                           ; preds = %do.end
  %12 = load %struct.win*, %struct.win** @fore, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 15
  %13 = load i32, i32* %w_ptyfd, align 4
  %cmp1 = icmp slt i32 %13, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %14 = load i8**, i8*** %bufpp.addr, align 8
  %15 = load i32*, i32** %lenp.addr, align 8
  call void @ZombieProcess(i8** %14, i32* %15)
  br label %if.end.71

if.end.3:                                         ; preds = %if.end
  %16 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %16, null
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.3
  %17 = load %struct.win*, %struct.win** @fore, align 8
  %w_wlock = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 29
  %18 = load i32, i32* %w_wlock, align 4
  %cmp4 = icmp eq i32 %18, 1
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.14

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %19 = load %struct.win*, %struct.win** @fore, align 8
  %w_wlockuser = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 30
  %20 = load %struct.acluser*, %struct.acluser** %w_wlockuser, align 8
  %tobool6 = icmp ne %struct.acluser* %20, null
  br i1 %tobool6, label %if.end.14, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 1
  %22 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %23 = load %struct.win*, %struct.win** @fore, align 8
  %call = call i32 @AclCheckPermWin(%struct.acluser* %22, i32 1, %struct.win* %23)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.end.14, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true.7
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_user10 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 1
  %25 = load %struct.acluser*, %struct.acluser** %d_user10, align 8
  %26 = load %struct.win*, %struct.win** @fore, align 8
  %w_wlockuser11 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 30
  store %struct.acluser* %25, %struct.acluser** %w_wlockuser11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.9
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  br label %if.end.14

if.end.14:                                        ; preds = %do.end.13, %land.lhs.true.7, %land.lhs.true.5, %land.lhs.true, %if.end.3
  %27 = load %struct.display*, %struct.display** @display, align 8
  %tobool15 = icmp ne %struct.display* %27, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.33

land.lhs.true.16:                                 ; preds = %if.end.14
  %28 = load %struct.win*, %struct.win** @fore, align 8
  %w_wlock17 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 29
  %29 = load i32, i32* %w_wlock17, align 4
  %cmp18 = icmp eq i32 %29, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.16
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_user19 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 1
  %31 = load %struct.acluser*, %struct.acluser** %d_user19, align 8
  %32 = load %struct.win*, %struct.win** @fore, align 8
  %call20 = call i32 @AclCheckPermWin(%struct.acluser* %31, i32 1, %struct.win* %32)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.25, label %if.end.33

cond.false:                                       ; preds = %land.lhs.true.16
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_user22 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 1
  %34 = load %struct.acluser*, %struct.acluser** %d_user22, align 8
  %35 = load %struct.win*, %struct.win** @fore, align 8
  %w_wlockuser23 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 30
  %36 = load %struct.acluser*, %struct.acluser** %w_wlockuser23, align 8
  %cmp24 = icmp ne %struct.acluser* %34, %36
  br i1 %cmp24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %cond.false, %cond.true
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.body.28
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_user30 = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 1
  %38 = load %struct.acluser*, %struct.acluser** %d_user30, align 8
  %u_name = getelementptr inbounds %struct.acluser, %struct.acluser* %38, i32 0, i32 1
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %u_name, i32 0, i32 0
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay)
  %39 = load i32*, i32** %lenp.addr, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i8**, i8*** %bufpp.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %idx.ext31 = sext i32 %40 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %42, i64 %idx.ext31
  store i8* %add.ptr32, i8** %41, align 8
  %43 = load i32*, i32** %lenp.addr, align 8
  store i32 0, i32* %43, align 4
  br label %if.end.71

if.end.33:                                        ; preds = %cond.false, %cond.true, %if.end.14
  %44 = load %struct.win*, %struct.win** @fore, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 6
  %45 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  %tobool34 = icmp ne %struct.pseudowin* %45, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.else

land.lhs.true.35:                                 ; preds = %if.end.33
  %46 = load %struct.win*, %struct.win** @fore, align 8
  %w_pwin36 = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 6
  %47 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin36, align 8
  %p_fdpat = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %47, i32 0, i32 0
  %48 = load i32, i32* %p_fdpat, align 4
  %and = and i32 %48, 4096
  %tobool37 = icmp ne i32 %and, 0
  br i1 %tobool37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %land.lhs.true.35
  %49 = load %struct.win*, %struct.win** @fore, align 8
  %w_pwin39 = getelementptr inbounds %struct.win, %struct.win* %49, i32 0, i32 6
  %50 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin39, align 8
  %p_inbuf = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %50, i32 0, i32 7
  %arraydecay40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %p_inbuf, i32 0, i32 0
  store i8* %arraydecay40, i8** %ibuf, align 8
  %51 = load %struct.win*, %struct.win** @fore, align 8
  %w_pwin41 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 6
  %52 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin41, align 8
  %p_inlen = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %52, i32 0, i32 8
  store i32* %p_inlen, i32** %ilen, align 8
  %53 = load i32*, i32** %ilen, align 8
  %54 = load i32, i32* %53, align 4
  %conv = sext i32 %54 to i64
  %sub = sub i64 4096, %conv
  %conv42 = trunc i64 %sub to i32
  store i32 %conv42, i32* %f, align 4
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true.35, %if.end.33
  %55 = load %struct.win*, %struct.win** @fore, align 8
  %w_inbuf = getelementptr inbounds %struct.win, %struct.win* %55, i32 0, i32 16
  %arraydecay43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_inbuf, i32 0, i32 0
  store i8* %arraydecay43, i8** %ibuf, align 8
  %56 = load %struct.win*, %struct.win** @fore, align 8
  %w_inlen = getelementptr inbounds %struct.win, %struct.win* %56, i32 0, i32 17
  store i32* %w_inlen, i32** %ilen, align 8
  %57 = load i32*, i32** %ilen, align 8
  %58 = load i32, i32* %57, align 4
  %conv44 = sext i32 %58 to i64
  %sub45 = sub i64 4096, %conv44
  %conv46 = trunc i64 %sub45 to i32
  store i32 %conv46, i32* %f, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.38
  %59 = load i32, i32* %l, align 4
  %60 = load i32, i32* %f, align 4
  %cmp48 = icmp sgt i32 %59, %60
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  %61 = load i32, i32* %f, align 4
  store i32 %61, i32* %l, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.47
  %62 = load i32, i32* %l, align 4
  %cmp52 = icmp sgt i32 %62, 0
  br i1 %cmp52, label %if.then.54, label %if.end.71

if.then.54:                                       ; preds = %if.end.51
  %63 = load i32, i32* %l, align 4
  store i32 %63, i32* %l2, align 4
  %64 = load i8**, i8*** %bufpp.addr, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %ibuf, align 8
  %67 = load i32*, i32** %ilen, align 8
  %68 = load i32, i32* %67, align 4
  %idx.ext55 = sext i32 %68 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %66, i64 %idx.ext55
  %69 = load i32, i32* %l2, align 4
  %conv57 = sext i32 %69 to i64
  call void @bcopy(i8* %65, i8* %add.ptr56, i64 %conv57) #6
  %70 = load %struct.win*, %struct.win** @fore, align 8
  %w_autolf = getelementptr inbounds %struct.win, %struct.win* %70, i32 0, i32 56
  %71 = load i32, i32* %w_autolf, align 4
  %tobool58 = icmp ne i32 %71, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.67

land.lhs.true.59:                                 ; preds = %if.then.54
  %72 = load i8*, i8** %ibuf, align 8
  %73 = load i32*, i32** %ilen, align 8
  %74 = load i32, i32* %73, align 4
  %idx.ext60 = sext i32 %74 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %72, i64 %idx.ext60
  %75 = load i32, i32* %f, align 4
  %76 = load i32, i32* %l2, align 4
  %sub62 = sub nsw i32 %75, %76
  %call63 = call i32 @DoAutolf(i8* %add.ptr61, i32* %l2, i32 %sub62)
  store i32 %call63, i32* %trunc, align 4
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %land.lhs.true.59
  %77 = load i32, i32* %trunc, align 4
  %78 = load i32, i32* %l, align 4
  %sub66 = sub nsw i32 %78, %77
  store i32 %sub66, i32* %l, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %land.lhs.true.59, %if.then.54
  %79 = load i32, i32* %l2, align 4
  %80 = load i32*, i32** %ilen, align 8
  %81 = load i32, i32* %80, align 4
  %add = add nsw i32 %81, %79
  store i32 %add, i32* %80, align 4
  %82 = load i32, i32* %l, align 4
  %83 = load i8**, i8*** %bufpp.addr, align 8
  %84 = load i8*, i8** %83, align 8
  %idx.ext68 = sext i32 %82 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %84, i64 %idx.ext68
  store i8* %add.ptr69, i8** %83, align 8
  %85 = load i32, i32* %l, align 4
  %86 = load i32*, i32** %lenp.addr, align 8
  %87 = load i32, i32* %86, align 4
  %sub70 = sub nsw i32 %87, %85
  store i32 %sub70, i32* %86, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then, %if.then.2, %do.end.29, %if.end.67, %if.end.51
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WinRedisplayLine(i32 %y, i32 %from, i32 %to, i32 %isblank) #0 {
entry:
  %y.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %if.end.17

if.end:                                           ; preds = %do.end
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 7
  %2 = load i8*, i8** %l_data, align 8
  %3 = bitcast i8* %2 to %struct.win*
  store %struct.win* %3, %struct.win** @fore, align 8
  %4 = load i32, i32* %from.addr, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %y.addr, align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %7 = load i32, i32* %l_width, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom4 = sext i32 %sub to i64
  %9 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 36
  %10 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %10, i64 %idxprom4
  %image = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx, i32 0, i32 0
  %11 = load i8*, i8** %image, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true.3
  %13 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer9 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 3
  %14 = load i32, i32* %y.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines11 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 36
  %16 = load %struct.mline*, %struct.mline** %w_mlines11, align 8
  %arrayidx12 = getelementptr inbounds %struct.mline, %struct.mline* %16, i64 %idxprom10
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %from.addr, align 4
  %19 = load i32, i32* %to.addr, align 4
  %20 = load i32, i32* %isblank.addr, align 4
  call void @LCDisplayLineWrap(%struct.layer* %w_layer9, %struct.mline* %arrayidx12, i32 %17, i32 %18, i32 %19, i32 %20)
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  %21 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer13 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 3
  %22 = load i32, i32* %y.addr, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines15 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 36
  %24 = load %struct.mline*, %struct.mline** %w_mlines15, align 8
  %arrayidx16 = getelementptr inbounds %struct.mline, %struct.mline* %24, i64 %idxprom14
  %25 = load i32, i32* %y.addr, align 4
  %26 = load i32, i32* %from.addr, align 4
  %27 = load i32, i32* %to.addr, align 4
  %28 = load i32, i32* %isblank.addr, align 4
  call void @LCDisplayLine(%struct.layer* %w_layer13, %struct.mline* %arrayidx16, i32 %25, i32 %26, i32 %27, i32 %28)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then, %if.else, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WinClearLine(i32 %y, i32 %xs, i32 %xe, i32 %bce) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.win*
  store %struct.win* %2, %struct.win** @fore, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %xs.addr, align 4
  %6 = load i32, i32* %xe.addr, align 4
  %7 = load i32, i32* %bce.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 36
  %10 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %10, i64 %idxprom
  call void @LClearLine(%struct.layer* %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.mline* %arrayidx)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @WinRewrite(i32 %y, i32 %x1, i32 %x2, %struct.mchar* %rend, i32 %doit) #0 {
entry:
  %retval = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %rend.addr = alloca %struct.mchar*, align 8
  %doit.addr = alloca i32, align 4
  %cost = alloca i32, align 4
  %dx = alloca i32, align 4
  %p = alloca i8*, align 8
  %i = alloca i8*, align 8
  %f = alloca i8*, align 8
  %fx = alloca i8*, align 8
  %c = alloca i8*, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store %struct.mchar* %rend, %struct.mchar** %rend.addr, align 8
  store i32 %doit, i32* %doit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.win*
  store %struct.win* %2, %struct.win** @fore, align 8
  %3 = load i32, i32* %x2.addr, align 4
  %4 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %3, %4
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %dx, align 4
  %5 = load i32, i32* %doit.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %6 = load i32, i32* %y.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 36
  %8 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %8, i64 %idxprom
  %image = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx, i32 0, i32 0
  %9 = load i8*, i8** %image, align 8
  %10 = load i32, i32* %x1.addr, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %11 = load i32, i32* %dx, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %dx, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %i, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %i, align 8
  %13 = load i8, i8* %12, align 1
  %conv = zext i8 %13 to i32
  call void @PUTCHAR(i32 %conv)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.end
  %14 = load i32, i32* %y.addr, align 4
  %idxprom1 = sext i32 %14 to i64
  %15 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines2 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 36
  %16 = load %struct.mline*, %struct.mline** %w_mlines2, align 8
  %arrayidx3 = getelementptr inbounds %struct.mline, %struct.mline* %16, i64 %idxprom1
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx3, i32 0, i32 1
  %17 = load i8*, i8** %attr, align 8
  %18 = load i32, i32* %x1.addr, align 4
  %idx.ext4 = sext i32 %18 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %17, i64 %idx.ext4
  store i8* %add.ptr5, i8** %p, align 8
  %19 = load i32, i32* %y.addr, align 4
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines7 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 36
  %21 = load %struct.mline*, %struct.mline** %w_mlines7, align 8
  %arrayidx8 = getelementptr inbounds %struct.mline, %struct.mline* %21, i64 %idxprom6
  %font = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx8, i32 0, i32 2
  %22 = load i8*, i8** %font, align 8
  %23 = load i32, i32* %x1.addr, align 4
  %idx.ext9 = sext i32 %23 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %22, i64 %idx.ext9
  store i8* %add.ptr10, i8** %f, align 8
  %24 = load i32, i32* %y.addr, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines12 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 36
  %26 = load %struct.mline*, %struct.mline** %w_mlines12, align 8
  %arrayidx13 = getelementptr inbounds %struct.mline, %struct.mline* %26, i64 %idxprom11
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx13, i32 0, i32 3
  %27 = load i8*, i8** %fontx, align 8
  %28 = load i32, i32* %x1.addr, align 4
  %idx.ext14 = sext i32 %28 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %27, i64 %idx.ext14
  store i8* %add.ptr15, i8** %fx, align 8
  %29 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %font16 = getelementptr inbounds %struct.mchar, %struct.mchar* %29, i32 0, i32 2
  %30 = load i8, i8* %font16, align 1
  %conv17 = zext i8 %30 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end
  %31 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %font19 = getelementptr inbounds %struct.mchar, %struct.mchar* %31, i32 0, i32 2
  %32 = load i8, i8* %font19, align 1
  %conv20 = zext i8 %32 to i32
  %and = and i32 %conv20, 96
  %cmp21 = icmp eq i32 %and, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1000, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true, %if.end
  %33 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 5
  %34 = load i32, i32* %l_encoding, align 4
  %tobool25 = icmp ne i32 %34, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.42

land.lhs.true.26:                                 ; preds = %if.end.24
  %35 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer27 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 3
  %l_encoding28 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer27, i32 0, i32 5
  %36 = load i32, i32* %l_encoding28, align 4
  %cmp29 = icmp ne i32 %36, 8
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.42

land.lhs.true.31:                                 ; preds = %land.lhs.true.26
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 28
  %38 = load i32, i32* %d_encoding, align 4
  %cmp32 = icmp eq i32 %38, 8
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.42

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %39 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines35 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 36
  %40 = load %struct.mline*, %struct.mline** %w_mlines35, align 8
  %41 = load i32, i32* %y.addr, align 4
  %idx.ext36 = sext i32 %41 to i64
  %add.ptr37 = getelementptr inbounds %struct.mline, %struct.mline* %40, i64 %idx.ext36
  %42 = load i32, i32* %x1.addr, align 4
  %43 = load i32, i32* %x2.addr, align 4
  %44 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer38 = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 3
  %l_encoding39 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer38, i32 0, i32 5
  %45 = load i32, i32* %l_encoding39, align 4
  %call = call i32 @ContainsSpecialDeffont(%struct.mline* %add.ptr37, i32 %42, i32 %43, i32 %45)
  %tobool40 = icmp ne i32 %call, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.34
  store i32 1000, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.34, %land.lhs.true.31, %land.lhs.true.26, %if.end.24
  %46 = load i32, i32* %y.addr, align 4
  %idxprom43 = sext i32 %46 to i64
  %47 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines44 = getelementptr inbounds %struct.win, %struct.win* %47, i32 0, i32 36
  %48 = load %struct.mline*, %struct.mline** %w_mlines44, align 8
  %arrayidx45 = getelementptr inbounds %struct.mline, %struct.mline* %48, i64 %idxprom43
  %color = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx45, i32 0, i32 4
  %49 = load i8*, i8** %color, align 8
  %50 = load i32, i32* %x1.addr, align 4
  %idx.ext46 = sext i32 %50 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %49, i64 %idx.ext46
  store i8* %add.ptr47, i8** %c, align 8
  %51 = load i32, i32* %x2.addr, align 4
  %52 = load i32, i32* %x1.addr, align 4
  %sub48 = sub nsw i32 %51, %52
  %add49 = add nsw i32 %sub48, 1
  store i32 %add49, i32* %dx, align 4
  store i32 %add49, i32* %cost, align 4
  br label %while.cond.50

while.cond.50:                                    ; preds = %if.end.86, %if.end.42
  %53 = load i32, i32* %dx, align 4
  %dec51 = add nsw i32 %53, -1
  store i32 %dec51, i32* %dx, align 4
  %cmp52 = icmp sgt i32 %53, 0
  br i1 %cmp52, label %while.body.54, label %while.end.87

while.body.54:                                    ; preds = %while.cond.50
  %54 = load i8*, i8** %p, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr55, i8** %p, align 8
  %55 = load i8, i8* %54, align 1
  %conv56 = zext i8 %55 to i32
  %56 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %attr57 = getelementptr inbounds %struct.mchar, %struct.mchar* %56, i32 0, i32 1
  %57 = load i8, i8* %attr57, align 1
  %conv58 = zext i8 %57 to i32
  %cmp59 = icmp ne i32 %conv56, %conv58
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %while.body.54
  store i32 1000, i32* %retval
  br label %return

if.end.62:                                        ; preds = %while.body.54
  %58 = load i8*, i8** %f, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr63, i8** %f, align 8
  %59 = load i8, i8* %58, align 1
  %conv64 = zext i8 %59 to i32
  %60 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %font65 = getelementptr inbounds %struct.mchar, %struct.mchar* %60, i32 0, i32 2
  %61 = load i8, i8* %font65, align 1
  %conv66 = zext i8 %61 to i32
  %cmp67 = icmp ne i32 %conv64, %conv66
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.62
  store i32 1000, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.62
  %62 = load i8*, i8** %fx, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr71, i8** %fx, align 8
  %63 = load i8, i8* %62, align 1
  %conv72 = zext i8 %63 to i32
  %64 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %fontx73 = getelementptr inbounds %struct.mchar, %struct.mchar* %64, i32 0, i32 3
  %65 = load i8, i8* %fontx73, align 1
  %conv74 = zext i8 %65 to i32
  %cmp75 = icmp ne i32 %conv72, %conv74
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.70
  store i32 1000, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.end.70
  %66 = load i8*, i8** %c, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr79, i8** %c, align 8
  %67 = load i8, i8* %66, align 1
  %conv80 = zext i8 %67 to i32
  %68 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %color81 = getelementptr inbounds %struct.mchar, %struct.mchar* %68, i32 0, i32 4
  %69 = load i8, i8* %color81, align 1
  %conv82 = zext i8 %69 to i32
  %cmp83 = icmp ne i32 %conv80, %conv82
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.78
  store i32 1000, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.end.78
  br label %while.cond.50

while.end.87:                                     ; preds = %while.cond.50
  %70 = load i32, i32* %cost, align 4
  store i32 %70, i32* %retval
  br label %return

return:                                           ; preds = %while.end.87, %if.then.85, %if.then.77, %if.then.69, %if.then.61, %if.then.41, %if.then.23, %while.end
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @WinResize(i32 %wi, i32 %he) #0 {
entry:
  %wi.addr = alloca i32, align 4
  %he.addr = alloca i32, align 4
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %he, i32* %he.addr, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.win*
  store %struct.win* %2, %struct.win** @fore, align 8
  %3 = load %struct.win*, %struct.win** @fore, align 8
  %4 = load i32, i32* %wi.addr, align 4
  %5 = load i32, i32* %he.addr, align 4
  %6 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 77
  %7 = load i32, i32* %w_histheight, align 4
  %call = call i32 @ChangeWindowSize(%struct.win* %3, i32 %4, i32 %5, i32 %7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @WinRestore() #0 {
entry:
  %cv = alloca %struct.canvas*, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.win*
  store %struct.win* %2, %struct.win** @fore, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 0
  %4 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %4, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 1
  %7 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %7, %struct.display** @display, align 8
  %8 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 4
  %10 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp = icmp ne %struct.canvas* %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load %struct.win*, %struct.win** @fore, align 8
  %w_keypad = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 51
  %12 = load i32, i32* %w_keypad, align 4
  call void @KeypadMode(i32 %12)
  %13 = load %struct.win*, %struct.win** @fore, align 8
  %w_cursorkeys = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 52
  %14 = load i32, i32* %w_cursorkeys, align 4
  call void @CursorkeysMode(i32 %14)
  %15 = load %struct.win*, %struct.win** @fore, align 8
  %w_flow = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 67
  %16 = load i32, i32* %w_flow, align 4
  %and = and i32 %16, 1
  call void @SetFlow(i32 %and)
  %17 = load %struct.win*, %struct.win** @fore, align 8
  %w_insert = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 50
  %18 = load i32, i32* %w_insert, align 4
  call void @InsertMode(i32 %18)
  %19 = load %struct.win*, %struct.win** @fore, align 8
  %w_revvid = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 53
  %20 = load i32, i32* %w_revvid, align 4
  call void @ReverseVideo(i32 %20)
  %21 = load %struct.win*, %struct.win** @fore, align 8
  %w_curinv = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 54
  %22 = load i32, i32* %w_curinv, align 4
  %tobool1 = icmp ne i32 %22, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %23 = load %struct.win*, %struct.win** @fore, align 8
  %w_curvvis = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 55
  %24 = load i32, i32* %w_curvvis, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %24, %cond.false ]
  call void @CursorVisibility(i32 %cond)
  %25 = load %struct.win*, %struct.win** @fore, align 8
  %w_mouse = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 75
  %26 = load i32, i32* %w_mouse, align 4
  call void @MouseMode(i32 %26)
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %if.then
  %27 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 0
  %28 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %28, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @DoStartLog(%struct.win* %w, i8* %buf, i32 %bufsize) #0 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca %struct.win*, align 8
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.win* %w, %struct.win** %w.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  %0 = load %struct.win*, %struct.win** %w.addr, align 8
  %tobool = icmp ne %struct.win* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i8*, i8** @screenlogfile, align 8
  %4 = load %struct.win*, %struct.win** %w.addr, align 8
  %call = call i8* @MakeWinMsg(i8* %3, %struct.win* %4, i32 37)
  %5 = load i32, i32* %bufsize.addr, align 4
  %sub = sub nsw i32 %5, 1
  %conv = sext i32 %sub to i64
  %call2 = call i8* @strncpy(i8* %2, i8* %call, i64 %conv) #6
  %6 = load i32, i32* %bufsize.addr, align 4
  %sub3 = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub3 to i64
  %7 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_log = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 68
  %9 = load %struct.logfile*, %struct.logfile** %w_log, align 8
  %cmp = icmp ne %struct.logfile* %9, null
  br i1 %cmp, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %do.end
  %10 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_log6 = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 68
  %11 = load %struct.logfile*, %struct.logfile** %w_log6, align 8
  %call7 = call i32 @logfclose(%struct.logfile* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %do.end
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i8*, i8** %buf.addr, align 8
  %call9 = call i32 @islogfile(i8* %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  %14 = load i8*, i8** %buf.addr, align 8
  %call11 = call %struct._IO_FILE* @secfopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ null, %cond.true ], [ %call11, %cond.false ]
  %call12 = call %struct.logfile* @logfopen(i8* %12, %struct._IO_FILE* %cond)
  %15 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_log13 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 68
  store %struct.logfile* %call12, %struct.logfile** %w_log13, align 8
  %cmp14 = icmp eq %struct.logfile* %call12, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %cond.end
  store i32 -2, i32* %retval
  br label %return

if.end.17:                                        ; preds = %cond.end
  %16 = load i32, i32* getelementptr inbounds (%struct.event, %struct.event* @logflushev, i32 0, i32 7), align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %if.end.28, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  %17 = load i32, i32* @log_flush, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %if.then.19
  %18 = load i32, i32* @log_flush, align 4
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.then.19
  %19 = load i32, i32* @logtstamp_after, align 4
  %add = add nsw i32 %19, 4
  %div = sdiv i32 %add, 5
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i32 [ %18, %cond.true.21 ], [ %div, %cond.false.22 ]
  store i32 %cond24, i32* %n, align 4
  %20 = load i32, i32* %n, align 4
  %tobool25 = icmp ne i32 %20, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %cond.end.23
  %21 = load i32, i32* %n, align 4
  %mul = mul nsw i32 %21, 1000
  call void @SetTimeout(%struct.event* @logflushev, i32 %mul)
  call void @evenq(%struct.event* @logflushev)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %cond.end.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.16, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare i8* @MakeWinMsg(i8*, %struct.win*, i32) #2

declare i32 @logfclose(%struct.logfile*) #2

declare %struct.logfile* @logfopen(i8*, %struct._IO_FILE*) #2

declare i32 @islogfile(i8*) #2

declare %struct._IO_FILE* @secfopen(i8*, i8*) #2

declare void @SetTimeout(%struct.event*, i32) #2

declare void @evenq(%struct.event*) #2

; Function Attrs: nounwind uwtable
define i32 @MakeWindow(%struct.NewWindow* %newwin) #0 {
entry:
  %retval = alloca i32, align 4
  %newwin.addr = alloca %struct.NewWindow*, align 8
  %pp = alloca %struct.win**, align 8
  %p = alloca %struct.win*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %f = alloca i32, align 4
  %nwin = alloca %struct.NewWindow, align 8
  %type = alloca i32, align 4
  %startat = alloca i32, align 4
  %TtyName = alloca i8*, align 8
  %d = alloca %struct.display*, align 8
  %buf = alloca [1024 x i8], align 16
  store %struct.NewWindow* %newwin, %struct.NewWindow** %newwin.addr, align 8
  store i32 -1, i32* %f, align 4
  %0 = load %struct.win**, %struct.win*** @wtab, align 8
  %tobool = icmp ne %struct.win** %0, null
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @maxwin, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 100, i32* @maxwin, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %2 = load i32, i32* @maxwin, align 4
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #6
  %3 = bitcast i8* %call to %struct.win**
  store %struct.win** %3, %struct.win*** @wtab, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.3
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.8
  %4 = load %struct.NewWindow*, %struct.NewWindow** %newwin.addr, align 8
  call void @nwin_compose(%struct.NewWindow* @nwin_default, %struct.NewWindow* %4, %struct.NewWindow* %nwin)
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  %StartAt = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 0
  %5 = load i32, i32* %StartAt, align 4
  %6 = load i32, i32* @maxwin, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.15
  %StartAt17 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 0
  %7 = load i32, i32* %StartAt17, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %startat, align 4
  %8 = load %struct.win**, %struct.win*** @wtab, align 8
  %9 = load i32, i32* %startat, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.win*, %struct.win** %8, i64 %idx.ext
  store %struct.win** %add.ptr, %struct.win*** %pp, align 8
  br label %do.body.18

do.body.18:                                       ; preds = %do.cond, %cond.end
  %10 = load %struct.win**, %struct.win*** %pp, align 8
  %11 = load %struct.win*, %struct.win** %10, align 8
  %cmp19 = icmp eq %struct.win* %11, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.body.18
  br label %do.end.33

if.end.22:                                        ; preds = %do.body.18
  %12 = load %struct.win**, %struct.win*** %pp, align 8
  %incdec.ptr = getelementptr inbounds %struct.win*, %struct.win** %12, i32 1
  store %struct.win** %incdec.ptr, %struct.win*** %pp, align 8
  %13 = load %struct.win**, %struct.win*** @wtab, align 8
  %14 = load i32, i32* @maxwin, align 4
  %idx.ext23 = sext i32 %14 to i64
  %add.ptr24 = getelementptr inbounds %struct.win*, %struct.win** %13, i64 %idx.ext23
  %cmp25 = icmp eq %struct.win** %incdec.ptr, %add.ptr24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  %15 = load %struct.win**, %struct.win*** @wtab, align 8
  store %struct.win** %15, %struct.win*** %pp, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.22
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  %16 = load %struct.win**, %struct.win*** %pp, align 8
  %17 = load %struct.win**, %struct.win*** @wtab, align 8
  %18 = load i32, i32* %startat, align 4
  %idx.ext29 = sext i32 %18 to i64
  %add.ptr30 = getelementptr inbounds %struct.win*, %struct.win** %17, i64 %idx.ext29
  %cmp31 = icmp ne %struct.win** %16, %add.ptr30
  br i1 %cmp31, label %do.body.18, label %do.end.33

do.end.33:                                        ; preds = %do.cond, %if.then.21
  %19 = load %struct.win**, %struct.win*** %pp, align 8
  %20 = load %struct.win*, %struct.win** %19, align 8
  %tobool34 = icmp ne %struct.win* %20, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %do.end.33
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %do.end.33
  %21 = load %struct.win**, %struct.win*** %pp, align 8
  %22 = load %struct.win**, %struct.win*** @wtab, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.win** %21 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.win** %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv37 = trunc i64 %sub.ptr.div to i32
  store i32 %conv37, i32* %n, align 4
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.36
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.38
  %args = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 2
  %23 = load i8**, i8*** %args, align 8
  %lflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 7
  %24 = load i32, i32* %lflag, align 4
  %call41 = call i32 @OpenDevice(i8** %23, i32 %24, i32* %type, i8** %TtyName)
  store i32 %call41, i32* %f, align 4
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %do.end.40
  store i32 -1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %do.end.40
  %25 = load i32, i32* %type, align 4
  %cmp46 = icmp eq i32 %25, 3
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  store i32 -1, i32* %f, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.45
  %call50 = call noalias i8* @calloc(i64 1, i64 12888) #6
  %26 = bitcast i8* %call50 to %struct.win*
  store %struct.win* %26, %struct.win** %p, align 8
  %cmp51 = icmp eq %struct.win* %26, null
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.49
  %27 = load i32, i32* %f, align 4
  %call54 = call i32 @close(i32 %27)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.49
  %28 = load i32, i32* %type, align 4
  %cmp56 = icmp ne i32 %28, 0
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.55
  %lflag59 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 7
  store i32 0, i32* %lflag59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.55
  %29 = load i32, i32* %type, align 4
  %30 = load %struct.win*, %struct.win** %p, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 1
  store i32 %29, i32* %w_type, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.60
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %args61 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 2
  %32 = load i8**, i8*** %args61, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %32, i64 %idxprom
  %33 = load i8*, i8** %arrayidx, align 8
  %tobool62 = icmp ne i8* %33, null
  br i1 %tobool62, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %cmp63 = icmp slt i32 %34, 63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %35 = phi i1 [ false, %for.cond ], [ %cmp63, %land.rhs ]
  br i1 %35, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %36 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %36 to i64
  %args66 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 2
  %37 = load i8**, i8*** %args66, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %37, i64 %idxprom65
  %38 = load i8*, i8** %arrayidx67, align 8
  %call68 = call i8* @SaveStr(i8* %38)
  %39 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %39 to i64
  %40 = load %struct.win*, %struct.win** %p, align 8
  %w_cmdargs = getelementptr inbounds %struct.win, %struct.win* %40, i32 0, i32 83
  %arrayidx70 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs, i32 0, i64 %idxprom69
  store i8* %call68, i8** %arrayidx70, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %42 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %42 to i64
  %43 = load %struct.win*, %struct.win** %p, align 8
  %w_cmdargs72 = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 83
  %arrayidx73 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs72, i32 0, i64 %idxprom71
  store i8* null, i8** %arrayidx73, align 8
  %dir = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 3
  %44 = load i8*, i8** %dir, align 8
  %tobool74 = icmp ne i8* %44, null
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %for.end
  %dir76 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 3
  %45 = load i8*, i8** %dir76, align 8
  %call77 = call i8* @SaveStr(i8* %45)
  %46 = load %struct.win*, %struct.win** %p, align 8
  %w_dir = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 84
  store i8* %call77, i8** %w_dir, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %for.end
  %term = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 4
  %47 = load i8*, i8** %term, align 8
  %tobool79 = icmp ne i8* %47, null
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.end.78
  %term81 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 4
  %48 = load i8*, i8** %term81, align 8
  %call82 = call i8* @SaveStr(i8* %48)
  %49 = load %struct.win*, %struct.win** %p, align 8
  %w_term = getelementptr inbounds %struct.win, %struct.win* %49, i32 0, i32 85
  store i8* %call82, i8** %w_term, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.end.78
  %50 = load i32, i32* %n, align 4
  %51 = load %struct.win*, %struct.win** %p, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 9
  store i32 %50, i32* %w_number, align 4
  %52 = load %struct.win*, %struct.win** %p, align 8
  %w_group = getelementptr inbounds %struct.win, %struct.win* %52, i32 0, i32 25
  store %struct.win* null, %struct.win** %w_group, align 8
  %53 = load %struct.win*, %struct.win** @fore, align 8
  %tobool84 = icmp ne %struct.win* %53, null
  br i1 %tobool84, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.83
  %54 = load %struct.win*, %struct.win** @fore, align 8
  %w_type85 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 1
  %55 = load i32, i32* %w_type85, align 4
  %cmp86 = icmp eq i32 %55, 3
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %land.lhs.true
  %56 = load %struct.win*, %struct.win** @fore, align 8
  %57 = load %struct.win*, %struct.win** %p, align 8
  %w_group89 = getelementptr inbounds %struct.win, %struct.win* %57, i32 0, i32 25
  store %struct.win* %56, %struct.win** %w_group89, align 8
  br label %if.end.98

if.else:                                          ; preds = %land.lhs.true, %if.end.83
  %58 = load %struct.win*, %struct.win** @fore, align 8
  %tobool90 = icmp ne %struct.win* %58, null
  br i1 %tobool90, label %land.lhs.true.91, label %if.end.97

land.lhs.true.91:                                 ; preds = %if.else
  %59 = load %struct.win*, %struct.win** @fore, align 8
  %w_group92 = getelementptr inbounds %struct.win, %struct.win* %59, i32 0, i32 25
  %60 = load %struct.win*, %struct.win** %w_group92, align 8
  %tobool93 = icmp ne %struct.win* %60, null
  br i1 %tobool93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %land.lhs.true.91
  %61 = load %struct.win*, %struct.win** @fore, align 8
  %w_group95 = getelementptr inbounds %struct.win, %struct.win* %61, i32 0, i32 25
  %62 = load %struct.win*, %struct.win** %w_group95, align 8
  %63 = load %struct.win*, %struct.win** %p, align 8
  %w_group96 = getelementptr inbounds %struct.win, %struct.win* %63, i32 0, i32 25
  store %struct.win* %62, %struct.win** %w_group96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %land.lhs.true.91, %if.else
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.88
  %64 = load %struct.win*, %struct.win** %p, align 8
  %65 = load %struct.display*, %struct.display** @display, align 8
  %tobool99 = icmp ne %struct.display* %65, null
  br i1 %tobool99, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %if.end.98
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 1
  %67 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  br label %cond.end.102

cond.false.101:                                   ; preds = %if.end.98
  %68 = load %struct.acluser*, %struct.acluser** @users, align 8
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.100
  %cond103 = phi %struct.acluser* [ %67, %cond.true.100 ], [ %68, %cond.false.101 ]
  %call104 = call i32 @NewWindowAcl(%struct.win* %64, %struct.acluser* %cond103)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %cond.end.102
  %69 = load %struct.win*, %struct.win** %p, align 8
  %70 = bitcast %struct.win* %69 to i8*
  call void @free(i8* %70) #6
  %71 = load i32, i32* %f, align 4
  %call107 = call i32 @close(i32 %71)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %cond.end.102
  %72 = load %struct.win*, %struct.win** %p, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %72, i32 0, i32 3
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 8
  store %struct.layer* null, %struct.layer** %l_next, align 8
  %73 = load %struct.win*, %struct.win** %p, align 8
  %w_layer109 = getelementptr inbounds %struct.win, %struct.win* %73, i32 0, i32 3
  %74 = load %struct.win*, %struct.win** %p, align 8
  %w_layer110 = getelementptr inbounds %struct.win, %struct.win* %74, i32 0, i32 3
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %w_layer110, i32 0, i32 9
  store %struct.layer* %w_layer109, %struct.layer** %l_bottom, align 8
  %75 = load %struct.win*, %struct.win** %p, align 8
  %w_layer111 = getelementptr inbounds %struct.win, %struct.win* %75, i32 0, i32 3
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %w_layer111, i32 0, i32 6
  store %struct.LayFuncs* @WinLf, %struct.LayFuncs** %l_layfn, align 8
  %76 = load %struct.win*, %struct.win** %p, align 8
  %77 = bitcast %struct.win* %76 to i8*
  %78 = load %struct.win*, %struct.win** %p, align 8
  %w_layer112 = getelementptr inbounds %struct.win, %struct.win* %78, i32 0, i32 3
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %w_layer112, i32 0, i32 7
  store i8* %77, i8** %l_data, align 8
  %79 = load %struct.win*, %struct.win** %p, align 8
  %w_layer113 = getelementptr inbounds %struct.win, %struct.win* %79, i32 0, i32 3
  %80 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %80, i32 0, i32 4
  store %struct.layer* %w_layer113, %struct.layer** %w_savelayer, align 8
  %81 = load %struct.win*, %struct.win** %p, align 8
  %w_pdisplay = getelementptr inbounds %struct.win, %struct.win* %81, i32 0, i32 7
  store %struct.display* null, %struct.display** %w_pdisplay, align 8
  %82 = load %struct.win*, %struct.win** %p, align 8
  %w_lastdisp = getelementptr inbounds %struct.win, %struct.win* %82, i32 0, i32 8
  store %struct.display* null, %struct.display** %w_lastdisp, align 8
  %83 = load %struct.display*, %struct.display** @display, align 8
  %tobool114 = icmp ne %struct.display* %83, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.121

land.lhs.true.115:                                ; preds = %if.end.108
  %84 = load %struct.display*, %struct.display** @display, align 8
  %d_user116 = getelementptr inbounds %struct.display, %struct.display* %84, i32 0, i32 1
  %85 = load %struct.acluser*, %struct.acluser** %d_user116, align 8
  %86 = load %struct.win*, %struct.win** %p, align 8
  %call117 = call i32 @AclCheckPermWin(%struct.acluser* %85, i32 1, %struct.win* %86)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.end.121, label %if.then.119

if.then.119:                                      ; preds = %land.lhs.true.115
  %87 = load %struct.display*, %struct.display** @display, align 8
  %d_user120 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 1
  %88 = load %struct.acluser*, %struct.acluser** %d_user120, align 8
  %89 = load %struct.win*, %struct.win** %p, align 8
  %w_wlockuser = getelementptr inbounds %struct.win, %struct.win* %89, i32 0, i32 30
  store %struct.acluser* %88, %struct.acluser** %w_wlockuser, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %land.lhs.true.115, %if.end.108
  %wlock = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 10
  %90 = load i32, i32* %wlock, align 4
  %91 = load %struct.win*, %struct.win** %p, align 8
  %w_wlock = getelementptr inbounds %struct.win, %struct.win* %91, i32 0, i32 29
  store i32 %90, i32* %w_wlock, align 4
  %92 = load i32, i32* %f, align 4
  %93 = load %struct.win*, %struct.win** %p, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %93, i32 0, i32 15
  store i32 %92, i32* %w_ptyfd, align 4
  %aflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 5
  %94 = load i32, i32* %aflag, align 4
  %95 = load %struct.win*, %struct.win** %p, align 8
  %w_aflag = getelementptr inbounds %struct.win, %struct.win* %95, i32 0, i32 20
  store i32 %94, i32* %w_aflag, align 4
  %flowflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 6
  %96 = load i32, i32* %flowflag, align 4
  %flowflag122 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 6
  %97 = load i32, i32* %flowflag122, align 4
  %and = and i32 %97, 4
  %tobool123 = icmp ne i32 %and, 0
  %cond124 = select i1 %tobool123, i32 3, i32 2
  %or = or i32 %96, %cond124
  %98 = load %struct.win*, %struct.win** %p, align 8
  %w_flow = getelementptr inbounds %struct.win, %struct.win* %98, i32 0, i32 67
  store i32 %or, i32* %w_flow, align 4
  %aka = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 1
  %99 = load i8*, i8** %aka, align 8
  %tobool125 = icmp ne i8* %99, null
  br i1 %tobool125, label %if.end.131, label %if.then.126

if.then.126:                                      ; preds = %if.end.121
  %args127 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 2
  %100 = load i8**, i8*** %args127, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %100, i64 0
  %101 = load i8*, i8** %arrayidx128, align 8
  %call129 = call i8* @Filename(i8* %101)
  %aka130 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 1
  store i8* %call129, i8** %aka130, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.126, %if.end.121
  %102 = load %struct.win*, %struct.win** %p, align 8
  %w_akabuf = getelementptr inbounds %struct.win, %struct.win* %102, i32 0, i32 23
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf, i32 0, i32 0
  %aka132 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 1
  %103 = load i8*, i8** %aka132, align 8
  %call133 = call i8* @strncpy(i8* %arraydecay, i8* %103, i64 767) #6
  %104 = load %struct.win*, %struct.win** %p, align 8
  %w_akabuf134 = getelementptr inbounds %struct.win, %struct.win* %104, i32 0, i32 23
  %arraydecay135 = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf134, i32 0, i32 0
  %call136 = call i8* @rindex(i8* %arraydecay135, i32 124) #7
  %aka137 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 1
  store i8* %call136, i8** %aka137, align 8
  %cmp138 = icmp ne i8* %call136, null
  br i1 %cmp138, label %if.then.140, label %if.else.148

if.then.140:                                      ; preds = %if.end.131
  %105 = load %struct.win*, %struct.win** %p, align 8
  %w_autoaka = getelementptr inbounds %struct.win, %struct.win* %105, i32 0, i32 24
  store i32 0, i32* %w_autoaka, align 4
  %aka141 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 1
  %106 = load i8*, i8** %aka141, align 8
  %incdec.ptr142 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr142, i8** %aka141, align 8
  store i8 0, i8* %106, align 1
  %aka143 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 1
  %107 = load i8*, i8** %aka143, align 8
  %108 = load %struct.win*, %struct.win** %p, align 8
  %w_title = getelementptr inbounds %struct.win, %struct.win* %108, i32 0, i32 21
  store i8* %107, i8** %w_title, align 8
  %aka144 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 1
  %109 = load i8*, i8** %aka144, align 8
  %aka145 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 1
  %110 = load i8*, i8** %aka145, align 8
  %call146 = call i64 @strlen(i8* %110) #7
  %add.ptr147 = getelementptr inbounds i8, i8* %109, i64 %call146
  %111 = load %struct.win*, %struct.win** %p, align 8
  %w_akachange = getelementptr inbounds %struct.win, %struct.win* %111, i32 0, i32 22
  store i8* %add.ptr147, i8** %w_akachange, align 8
  br label %if.end.153

if.else.148:                                      ; preds = %if.end.131
  %112 = load %struct.win*, %struct.win** %p, align 8
  %w_akabuf149 = getelementptr inbounds %struct.win, %struct.win* %112, i32 0, i32 23
  %arraydecay150 = getelementptr inbounds [768 x i8], [768 x i8]* %w_akabuf149, i32 0, i32 0
  %113 = load %struct.win*, %struct.win** %p, align 8
  %w_akachange151 = getelementptr inbounds %struct.win, %struct.win* %113, i32 0, i32 22
  store i8* %arraydecay150, i8** %w_akachange151, align 8
  %114 = load %struct.win*, %struct.win** %p, align 8
  %w_title152 = getelementptr inbounds %struct.win, %struct.win* %114, i32 0, i32 21
  store i8* %arraydecay150, i8** %w_title152, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.148, %if.then.140
  %hstatus = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 19
  %115 = load i8*, i8** %hstatus, align 8
  %tobool154 = icmp ne i8* %115, null
  br i1 %tobool154, label %if.then.155, label %if.end.158

if.then.155:                                      ; preds = %if.end.153
  %hstatus156 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 19
  %116 = load i8*, i8** %hstatus156, align 8
  %call157 = call i8* @SaveStr(i8* %116)
  %117 = load %struct.win*, %struct.win** %p, align 8
  %w_hstatus = getelementptr inbounds %struct.win, %struct.win* %117, i32 0, i32 57
  store i8* %call157, i8** %w_hstatus, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.155, %if.end.153
  %monitor = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 9
  %118 = load i32, i32* %monitor, align 4
  %119 = load %struct.win*, %struct.win** %p, align 8
  %w_monitor = getelementptr inbounds %struct.win, %struct.win* %119, i32 0, i32 70
  store i32 %118, i32* %w_monitor, align 4
  %120 = load %struct.win*, %struct.win** %p, align 8
  %w_monitor159 = getelementptr inbounds %struct.win, %struct.win* %120, i32 0, i32 70
  %121 = load i32, i32* %w_monitor159, align 4
  %cmp160 = icmp eq i32 %121, 1
  br i1 %cmp160, label %if.then.162, label %if.end.177

if.then.162:                                      ; preds = %if.end.158
  store i32 0, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.174, %if.then.162
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* @maxusercount, align 4
  %cmp164 = icmp slt i32 %122, %123
  br i1 %cmp164, label %for.body.166, label %for.end.176

for.body.166:                                     ; preds = %for.cond.163
  %124 = load i32, i32* %i, align 4
  %and167 = and i32 %124, 7
  %shr = ashr i32 128, %and167
  %125 = load i32, i32* %i, align 4
  %shr168 = ashr i32 %125, 3
  %idxprom169 = sext i32 %shr168 to i64
  %126 = load %struct.win*, %struct.win** %p, align 8
  %w_mon_notify = getelementptr inbounds %struct.win, %struct.win* %126, i32 0, i32 33
  %127 = load i8*, i8** %w_mon_notify, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %127, i64 %idxprom169
  %128 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %128 to i32
  %or172 = or i32 %conv171, %shr
  %conv173 = trunc i32 %or172 to i8
  store i8 %conv173, i8* %arrayidx170, align 1
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.166
  %129 = load i32, i32* %i, align 4
  %inc175 = add nsw i32 %129, 1
  store i32 %inc175, i32* %i, align 4
  br label %for.cond.163

for.end.176:                                      ; preds = %for.cond.163
  br label %if.end.177

if.end.177:                                       ; preds = %for.end.176, %if.end.158
  %silence = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 11
  %130 = load i32, i32* %silence, align 4
  %131 = load %struct.win*, %struct.win** %p, align 8
  %w_silence = getelementptr inbounds %struct.win, %struct.win* %131, i32 0, i32 72
  store i32 %130, i32* %w_silence, align 4
  %132 = load i32, i32* @SilenceWait, align 4
  %133 = load %struct.win*, %struct.win** %p, align 8
  %w_silencewait = getelementptr inbounds %struct.win, %struct.win* %133, i32 0, i32 71
  store i32 %132, i32* %w_silencewait, align 4
  %134 = load %struct.win*, %struct.win** %p, align 8
  %w_silence178 = getelementptr inbounds %struct.win, %struct.win* %134, i32 0, i32 72
  %135 = load i32, i32* %w_silence178, align 4
  %cmp179 = icmp eq i32 %135, 1
  br i1 %cmp179, label %if.then.181, label %if.end.197

if.then.181:                                      ; preds = %if.end.177
  store i32 0, i32* %i, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.194, %if.then.181
  %136 = load i32, i32* %i, align 4
  %137 = load i32, i32* @maxusercount, align 4
  %cmp183 = icmp slt i32 %136, %137
  br i1 %cmp183, label %for.body.185, label %for.end.196

for.body.185:                                     ; preds = %for.cond.182
  %138 = load i32, i32* %i, align 4
  %and186 = and i32 %138, 7
  %shr187 = ashr i32 128, %and186
  %139 = load i32, i32* %i, align 4
  %shr188 = ashr i32 %139, 3
  %idxprom189 = sext i32 %shr188 to i64
  %140 = load %struct.win*, %struct.win** %p, align 8
  %w_lio_notify = getelementptr inbounds %struct.win, %struct.win* %140, i32 0, i32 32
  %141 = load i8*, i8** %w_lio_notify, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %141, i64 %idxprom189
  %142 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %142 to i32
  %or192 = or i32 %conv191, %shr187
  %conv193 = trunc i32 %or192 to i8
  store i8 %conv193, i8* %arrayidx190, align 1
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.body.185
  %143 = load i32, i32* %i, align 4
  %inc195 = add nsw i32 %143, 1
  store i32 %inc195, i32* %i, align 4
  br label %for.cond.182

for.end.196:                                      ; preds = %for.cond.182
  br label %if.end.197

if.end.197:                                       ; preds = %for.end.196, %if.end.177
  %slow = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 14
  %144 = load i32, i32* %slow, align 4
  %145 = load %struct.win*, %struct.win** %p, align 8
  %w_slowpaste = getelementptr inbounds %struct.win, %struct.win* %145, i32 0, i32 76
  store i32 %144, i32* %w_slowpaste, align 4
  %146 = load %struct.win*, %struct.win** %p, align 8
  %w_norefresh = getelementptr inbounds %struct.win, %struct.win* %146, i32 0, i32 74
  store i8 0, i8* %w_norefresh, align 1
  %147 = load %struct.win*, %struct.win** %p, align 8
  %w_tty = getelementptr inbounds %struct.win, %struct.win* %147, i32 0, i32 89
  %arraydecay198 = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty, i32 0, i32 0
  %148 = load i8*, i8** %TtyName, align 8
  %call199 = call i8* @strncpy(i8* %arraydecay198, i8* %148, i64 767) #6
  %149 = load %struct.win*, %struct.win** %p, align 8
  %150 = load %struct.display*, %struct.display** @display, align 8
  %tobool200 = icmp ne %struct.display* %150, null
  br i1 %tobool200, label %cond.true.201, label %cond.false.203

cond.true.201:                                    ; preds = %if.end.197
  %151 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %151, i32 0, i32 4
  %152 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %152, i32 0, i32 15
  %153 = load i32, i32* %c_xe, align 4
  %154 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv202 = getelementptr inbounds %struct.display, %struct.display* %154, i32 0, i32 4
  %155 = load %struct.canvas*, %struct.canvas** %d_forecv202, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %155, i32 0, i32 14
  %156 = load i32, i32* %c_xs, align 4
  %sub = sub nsw i32 %153, %156
  %add = add nsw i32 %sub, 1
  br label %cond.end.204

cond.false.203:                                   ; preds = %if.end.197
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.203, %cond.true.201
  %cond205 = phi i32 [ %add, %cond.true.201 ], [ 80, %cond.false.203 ]
  %157 = load %struct.display*, %struct.display** @display, align 8
  %tobool206 = icmp ne %struct.display* %157, null
  br i1 %tobool206, label %cond.true.207, label %cond.false.212

cond.true.207:                                    ; preds = %cond.end.204
  %158 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv208 = getelementptr inbounds %struct.display, %struct.display* %158, i32 0, i32 4
  %159 = load %struct.canvas*, %struct.canvas** %d_forecv208, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %159, i32 0, i32 17
  %160 = load i32, i32* %c_ye, align 4
  %161 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv209 = getelementptr inbounds %struct.display, %struct.display* %161, i32 0, i32 4
  %162 = load %struct.canvas*, %struct.canvas** %d_forecv209, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %162, i32 0, i32 16
  %163 = load i32, i32* %c_ys, align 4
  %sub210 = sub nsw i32 %160, %163
  %add211 = add nsw i32 %sub210, 1
  br label %cond.end.213

cond.false.212:                                   ; preds = %cond.end.204
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.212, %cond.true.207
  %cond214 = phi i32 [ %add211, %cond.true.207 ], [ 24, %cond.false.212 ]
  %histheight = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 8
  %164 = load i32, i32* %histheight, align 4
  %call215 = call i32 @ChangeWindowSize(%struct.win* %149, i32 %cond205, i32 %cond214, i32 %164)
  %tobool216 = icmp ne i32 %call215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %cond.end.213
  %165 = load %struct.win*, %struct.win** %p, align 8
  call void @FreeWindow(%struct.win* %165)
  store i32 -1, i32* %retval
  br label %return

if.end.218:                                       ; preds = %cond.end.213
  %encoding = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 18
  %166 = load i32, i32* %encoding, align 4
  %167 = load %struct.win*, %struct.win** %p, align 8
  %w_layer219 = getelementptr inbounds %struct.win, %struct.win* %167, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer219, i32 0, i32 5
  store i32 %166, i32* %l_encoding, align 4
  %168 = load %struct.win*, %struct.win** %p, align 8
  call void @ResetWindow(%struct.win* %168)
  %charset = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 20
  %169 = load i8*, i8** %charset, align 8
  %tobool220 = icmp ne i8* %169, null
  br i1 %tobool220, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %if.end.218
  %170 = load %struct.win*, %struct.win** %p, align 8
  %charset222 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 20
  %171 = load i8*, i8** %charset222, align 8
  call void @SetCharsets(%struct.win* %170, i8* %171)
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.221, %if.end.218
  %172 = load i32, i32* @VerboseCreate, align 4
  %tobool224 = icmp ne i32 %172, 0
  br i1 %tobool224, label %land.lhs.true.225, label %if.end.250

land.lhs.true.225:                                ; preds = %if.end.223
  %173 = load i32, i32* %type, align 4
  %cmp226 = icmp ne i32 %173, 3
  br i1 %cmp226, label %if.then.228, label %if.end.250

if.then.228:                                      ; preds = %land.lhs.true.225
  %174 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %174, %struct.display** %d, align 8
  %175 = load %struct.win*, %struct.win** %p, align 8
  call void @WriteString(%struct.win* %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 9)
  %176 = load %struct.win*, %struct.win** %p, align 8
  %177 = load %struct.win*, %struct.win** %p, align 8
  %w_title229 = getelementptr inbounds %struct.win, %struct.win* %177, i32 0, i32 21
  %178 = load i8*, i8** %w_title229, align 8
  %179 = load %struct.win*, %struct.win** %p, align 8
  %w_title230 = getelementptr inbounds %struct.win, %struct.win* %179, i32 0, i32 21
  %180 = load i8*, i8** %w_title230, align 8
  %call231 = call i64 @strlen(i8* %180) #7
  %conv232 = trunc i64 %call231 to i32
  call void @WriteString(%struct.win* %176, i8* %178, i32 %conv232)
  %181 = load %struct.win*, %struct.win** %p, align 8
  call void @WriteString(%struct.win* %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 2)
  store i32 0, i32* %f, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.247, %if.then.228
  %182 = load i32, i32* %f, align 4
  %idxprom234 = sext i32 %182 to i64
  %183 = load %struct.win*, %struct.win** %p, align 8
  %w_cmdargs235 = getelementptr inbounds %struct.win, %struct.win* %183, i32 0, i32 83
  %arrayidx236 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs235, i32 0, i64 %idxprom234
  %184 = load i8*, i8** %arrayidx236, align 8
  %tobool237 = icmp ne i8* %184, null
  br i1 %tobool237, label %for.body.238, label %for.end.249

for.body.238:                                     ; preds = %for.cond.233
  %185 = load %struct.win*, %struct.win** %p, align 8
  call void @WriteString(%struct.win* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 1)
  %186 = load %struct.win*, %struct.win** %p, align 8
  %187 = load i32, i32* %f, align 4
  %idxprom239 = sext i32 %187 to i64
  %188 = load %struct.win*, %struct.win** %p, align 8
  %w_cmdargs240 = getelementptr inbounds %struct.win, %struct.win* %188, i32 0, i32 83
  %arrayidx241 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs240, i32 0, i64 %idxprom239
  %189 = load i8*, i8** %arrayidx241, align 8
  %190 = load i32, i32* %f, align 4
  %idxprom242 = sext i32 %190 to i64
  %191 = load %struct.win*, %struct.win** %p, align 8
  %w_cmdargs243 = getelementptr inbounds %struct.win, %struct.win* %191, i32 0, i32 83
  %arrayidx244 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs243, i32 0, i64 %idxprom242
  %192 = load i8*, i8** %arrayidx244, align 8
  %call245 = call i64 @strlen(i8* %192) #7
  %conv246 = trunc i64 %call245 to i32
  call void @WriteString(%struct.win* %186, i8* %189, i32 %conv246)
  br label %for.inc.247

for.inc.247:                                      ; preds = %for.body.238
  %193 = load i32, i32* %f, align 4
  %inc248 = add nsw i32 %193, 1
  store i32 %inc248, i32* %f, align 4
  br label %for.cond.233

for.end.249:                                      ; preds = %for.cond.233
  %194 = load %struct.win*, %struct.win** %p, align 8
  call void @WriteString(%struct.win* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 2)
  %195 = load %struct.display*, %struct.display** %d, align 8
  store %struct.display* %195, %struct.display** @display, align 8
  br label %if.end.250

if.end.250:                                       ; preds = %for.end.249, %land.lhs.true.225, %if.end.223
  %196 = load %struct.win*, %struct.win** %p, align 8
  %w_deadpid = getelementptr inbounds %struct.win, %struct.win* %196, i32 0, i32 82
  store i32 0, i32* %w_deadpid, align 4
  %197 = load %struct.win*, %struct.win** %p, align 8
  %w_pid = getelementptr inbounds %struct.win, %struct.win* %197, i32 0, i32 81
  store i32 0, i32* %w_pid, align 4
  %198 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %198, i32 0, i32 6
  store %struct.pseudowin* null, %struct.pseudowin** %w_pwin, align 8
  %199 = load i32, i32* %type, align 4
  %cmp251 = icmp eq i32 %199, 0
  br i1 %cmp251, label %if.then.253, label %if.end.262

if.then.253:                                      ; preds = %if.end.250
  %200 = load %struct.win*, %struct.win** %p, align 8
  %args254 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 2
  %201 = load i8**, i8*** %args254, align 8
  %202 = load i8*, i8** %TtyName, align 8
  %call255 = call i32 @ForkWindow(%struct.win* %200, i8** %201, i8* %202)
  %203 = load %struct.win*, %struct.win** %p, align 8
  %w_pid256 = getelementptr inbounds %struct.win, %struct.win* %203, i32 0, i32 81
  store i32 %call255, i32* %w_pid256, align 4
  %204 = load %struct.win*, %struct.win** %p, align 8
  %w_pid257 = getelementptr inbounds %struct.win, %struct.win* %204, i32 0, i32 81
  %205 = load i32, i32* %w_pid257, align 4
  %cmp258 = icmp slt i32 %205, 0
  br i1 %cmp258, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %if.then.253
  %206 = load %struct.win*, %struct.win** %p, align 8
  call void @FreeWindow(%struct.win* %206)
  store i32 -1, i32* %retval
  br label %return

if.end.261:                                       ; preds = %if.then.253
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.end.250
  %207 = load %struct.display*, %struct.display** @display, align 8
  %tobool263 = icmp ne %struct.display* %207, null
  br i1 %tobool263, label %land.lhs.true.264, label %if.end.268

land.lhs.true.264:                                ; preds = %if.end.262
  %208 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %208, i32 0, i32 10
  %209 = load %struct.win*, %struct.win** %d_fore, align 8
  %tobool265 = icmp ne %struct.win* %209, null
  br i1 %tobool265, label %if.then.266, label %if.end.268

if.then.266:                                      ; preds = %land.lhs.true.264
  %210 = load %struct.display*, %struct.display** @display, align 8
  %d_fore267 = getelementptr inbounds %struct.display, %struct.display* %210, i32 0, i32 10
  %211 = load %struct.win*, %struct.win** %d_fore267, align 8
  %212 = load %struct.display*, %struct.display** @display, align 8
  %d_other = getelementptr inbounds %struct.display, %struct.display* %212, i32 0, i32 11
  store %struct.win* %211, %struct.win** %d_other, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.266, %land.lhs.true.264, %if.end.262
  %213 = load %struct.win*, %struct.win** %p, align 8
  %214 = load %struct.win**, %struct.win*** %pp, align 8
  store %struct.win* %213, %struct.win** %214, align 8
  %215 = load %struct.win*, %struct.win** @windows, align 8
  %216 = load %struct.win*, %struct.win** %p, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %216, i32 0, i32 0
  store %struct.win* %215, %struct.win** %w_next, align 8
  %217 = load %struct.win*, %struct.win** %p, align 8
  store %struct.win* %217, %struct.win** @windows, align 8
  %218 = load i32, i32* %type, align 4
  %cmp269 = icmp eq i32 %218, 3
  br i1 %cmp269, label %if.then.271, label %if.end.274

if.then.271:                                      ; preds = %if.end.268
  %219 = load %struct.win*, %struct.win** %p, align 8
  call void @SetForeWindow(%struct.win* %219)
  %220 = load %struct.win*, %struct.win** %p, align 8
  %w_norefresh272 = getelementptr inbounds %struct.win, %struct.win* %220, i32 0, i32 74
  %221 = load i8, i8* %w_norefresh272, align 1
  %conv273 = sext i8 %221 to i32
  call void @Activate(i32 %conv273)
  call void @WindowChanged(%struct.win* null, i32 119)
  call void @WindowChanged(%struct.win* null, i32 87)
  call void @WindowChanged(%struct.win* null, i32 0)
  %222 = load i32, i32* %n, align 4
  store i32 %222, i32* %retval
  br label %return

if.end.274:                                       ; preds = %if.end.268
  %lflag275 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 7
  %223 = load i32, i32* %lflag275, align 4
  %224 = load %struct.win*, %struct.win** %p, align 8
  %w_lflag = getelementptr inbounds %struct.win, %struct.win* %224, i32 0, i32 86
  store i32 %223, i32* %w_lflag, align 4
  %225 = load %struct.win*, %struct.win** %p, align 8
  %w_slot = getelementptr inbounds %struct.win, %struct.win* %225, i32 0, i32 87
  store i8* inttoptr (i64 -1 to i8*), i8** %w_slot, align 8
  br label %do.body.276

do.body.276:                                      ; preds = %if.end.274
  br label %do.end.278

do.end.278:                                       ; preds = %do.body.276
  %lflag279 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 7
  %226 = load i32, i32* %lflag279, align 4
  %and280 = and i32 %226, 1
  %tobool281 = icmp ne i32 %and280, 0
  br i1 %tobool281, label %if.then.282, label %if.end.291

if.then.282:                                      ; preds = %do.end.278
  %227 = load %struct.win*, %struct.win** %p, align 8
  %w_slot283 = getelementptr inbounds %struct.win, %struct.win* %227, i32 0, i32 87
  store i8* null, i8** %w_slot283, align 8
  %228 = load %struct.display*, %struct.display** @display, align 8
  %tobool284 = icmp ne %struct.display* %228, null
  br i1 %tobool284, label %if.then.288, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.282
  %229 = load %struct.win*, %struct.win** %p, align 8
  %w_lflag285 = getelementptr inbounds %struct.win, %struct.win* %229, i32 0, i32 86
  %230 = load i32, i32* %w_lflag285, align 4
  %and286 = and i32 %230, 2
  %tobool287 = icmp ne i32 %and286, 0
  br i1 %tobool287, label %if.then.288, label %if.end.290

if.then.288:                                      ; preds = %lor.lhs.false, %if.then.282
  %231 = load %struct.win*, %struct.win** %p, align 8
  %call289 = call i32 @SetUtmp(%struct.win* %231)
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.288, %lor.lhs.false
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %do.end.278
  %Lflag = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 13
  %232 = load i32, i32* %Lflag, align 4
  %tobool292 = icmp ne i32 %232, 0
  br i1 %tobool292, label %if.then.293, label %if.end.296

if.then.293:                                      ; preds = %if.end.291
  %233 = load %struct.win*, %struct.win** %p, align 8
  %arraydecay294 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call295 = call i32 @DoStartLog(%struct.win* %233, i8* %arraydecay294, i32 1024)
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.293, %if.end.291
  %poll_zombie_timeout = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 21
  %234 = load i32, i32* %poll_zombie_timeout, align 4
  %tobool297 = icmp ne i32 %234, 0
  br i1 %tobool297, label %if.then.298, label %if.end.300

if.then.298:                                      ; preds = %if.end.296
  %poll_zombie_timeout299 = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 21
  %235 = load i32, i32* %poll_zombie_timeout299, align 4
  %236 = load %struct.win*, %struct.win** %p, align 8
  %w_poll_zombie_timeout = getelementptr inbounds %struct.win, %struct.win* %236, i32 0, i32 14
  store i32 %235, i32* %w_poll_zombie_timeout, align 4
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.298, %if.end.296
  %237 = load %struct.win*, %struct.win** %p, align 8
  %w_zombieev = getelementptr inbounds %struct.win, %struct.win* %237, i32 0, i32 13
  %type301 = getelementptr inbounds %struct.event, %struct.event* %w_zombieev, i32 0, i32 4
  store i32 0, i32* %type301, align 4
  %238 = load %struct.win*, %struct.win** %p, align 8
  %239 = bitcast %struct.win* %238 to i8*
  %240 = load %struct.win*, %struct.win** %p, align 8
  %w_zombieev302 = getelementptr inbounds %struct.win, %struct.win* %240, i32 0, i32 13
  %data = getelementptr inbounds %struct.event, %struct.event* %w_zombieev302, i32 0, i32 2
  store i8* %239, i8** %data, align 8
  %241 = load %struct.win*, %struct.win** %p, align 8
  %w_zombieev303 = getelementptr inbounds %struct.win, %struct.win* %241, i32 0, i32 13
  %handler = getelementptr inbounds %struct.event, %struct.event* %w_zombieev303, i32 0, i32 1
  store void (%struct.event*, i8*)* @win_resurrect_zombie_fn, void (%struct.event*, i8*)** %handler, align 8
  %242 = load %struct.win*, %struct.win** %p, align 8
  %w_ptyfd304 = getelementptr inbounds %struct.win, %struct.win* %242, i32 0, i32 15
  %243 = load i32, i32* %w_ptyfd304, align 4
  %244 = load %struct.win*, %struct.win** %p, align 8
  %w_writeev = getelementptr inbounds %struct.win, %struct.win* %244, i32 0, i32 11
  %fd = getelementptr inbounds %struct.event, %struct.event* %w_writeev, i32 0, i32 3
  store i32 %243, i32* %fd, align 4
  %245 = load %struct.win*, %struct.win** %p, align 8
  %w_readev = getelementptr inbounds %struct.win, %struct.win* %245, i32 0, i32 10
  %fd305 = getelementptr inbounds %struct.event, %struct.event* %w_readev, i32 0, i32 3
  store i32 %243, i32* %fd305, align 4
  %246 = load %struct.win*, %struct.win** %p, align 8
  %w_readev306 = getelementptr inbounds %struct.win, %struct.win* %246, i32 0, i32 10
  %type307 = getelementptr inbounds %struct.event, %struct.event* %w_readev306, i32 0, i32 4
  store i32 1, i32* %type307, align 4
  %247 = load %struct.win*, %struct.win** %p, align 8
  %w_writeev308 = getelementptr inbounds %struct.win, %struct.win* %247, i32 0, i32 11
  %type309 = getelementptr inbounds %struct.event, %struct.event* %w_writeev308, i32 0, i32 4
  store i32 2, i32* %type309, align 4
  %248 = load %struct.win*, %struct.win** %p, align 8
  %249 = bitcast %struct.win* %248 to i8*
  %250 = load %struct.win*, %struct.win** %p, align 8
  %w_writeev310 = getelementptr inbounds %struct.win, %struct.win* %250, i32 0, i32 11
  %data311 = getelementptr inbounds %struct.event, %struct.event* %w_writeev310, i32 0, i32 2
  store i8* %249, i8** %data311, align 8
  %251 = load %struct.win*, %struct.win** %p, align 8
  %w_readev312 = getelementptr inbounds %struct.win, %struct.win* %251, i32 0, i32 10
  %data313 = getelementptr inbounds %struct.event, %struct.event* %w_readev312, i32 0, i32 2
  store i8* %249, i8** %data313, align 8
  %252 = load %struct.win*, %struct.win** %p, align 8
  %w_readev314 = getelementptr inbounds %struct.win, %struct.win* %252, i32 0, i32 10
  %handler315 = getelementptr inbounds %struct.event, %struct.event* %w_readev314, i32 0, i32 1
  store void (%struct.event*, i8*)* @win_readev_fn, void (%struct.event*, i8*)** %handler315, align 8
  %253 = load %struct.win*, %struct.win** %p, align 8
  %w_writeev316 = getelementptr inbounds %struct.win, %struct.win* %253, i32 0, i32 11
  %handler317 = getelementptr inbounds %struct.event, %struct.event* %w_writeev316, i32 0, i32 1
  store void (%struct.event*, i8*)* @win_writeev_fn, void (%struct.event*, i8*)** %handler317, align 8
  %254 = load %struct.win*, %struct.win** %p, align 8
  %w_inlen = getelementptr inbounds %struct.win, %struct.win* %254, i32 0, i32 17
  %255 = load %struct.win*, %struct.win** %p, align 8
  %w_writeev318 = getelementptr inbounds %struct.win, %struct.win* %255, i32 0, i32 11
  %condpos = getelementptr inbounds %struct.event, %struct.event* %w_writeev318, i32 0, i32 9
  store i32* %w_inlen, i32** %condpos, align 8
  %256 = load %struct.win*, %struct.win** %p, align 8
  %w_readev319 = getelementptr inbounds %struct.win, %struct.win* %256, i32 0, i32 10
  call void @evenq(%struct.event* %w_readev319)
  %257 = load %struct.win*, %struct.win** %p, align 8
  %w_writeev320 = getelementptr inbounds %struct.win, %struct.win* %257, i32 0, i32 11
  call void @evenq(%struct.event* %w_writeev320)
  %258 = load %struct.win*, %struct.win** %p, align 8
  %w_paster = getelementptr inbounds %struct.win, %struct.win* %258, i32 0, i32 80
  %pa_slowev = getelementptr inbounds %struct.paster, %struct.paster* %w_paster, i32 0, i32 4
  %type321 = getelementptr inbounds %struct.event, %struct.event* %pa_slowev, i32 0, i32 4
  store i32 0, i32* %type321, align 4
  %259 = load %struct.win*, %struct.win** %p, align 8
  %w_paster322 = getelementptr inbounds %struct.win, %struct.win* %259, i32 0, i32 80
  %260 = bitcast %struct.paster* %w_paster322 to i8*
  %261 = load %struct.win*, %struct.win** %p, align 8
  %w_paster323 = getelementptr inbounds %struct.win, %struct.win* %261, i32 0, i32 80
  %pa_slowev324 = getelementptr inbounds %struct.paster, %struct.paster* %w_paster323, i32 0, i32 4
  %data325 = getelementptr inbounds %struct.event, %struct.event* %pa_slowev324, i32 0, i32 2
  store i8* %260, i8** %data325, align 8
  %262 = load %struct.win*, %struct.win** %p, align 8
  %w_paster326 = getelementptr inbounds %struct.win, %struct.win* %262, i32 0, i32 80
  %pa_slowev327 = getelementptr inbounds %struct.paster, %struct.paster* %w_paster326, i32 0, i32 4
  %handler328 = getelementptr inbounds %struct.event, %struct.event* %pa_slowev327, i32 0, i32 1
  store void (%struct.event*, i8*)* @paste_slowev_fn, void (%struct.event*, i8*)** %handler328, align 8
  %263 = load %struct.win*, %struct.win** %p, align 8
  %w_silenceev = getelementptr inbounds %struct.win, %struct.win* %263, i32 0, i32 12
  %type329 = getelementptr inbounds %struct.event, %struct.event* %w_silenceev, i32 0, i32 4
  store i32 0, i32* %type329, align 4
  %264 = load %struct.win*, %struct.win** %p, align 8
  %265 = bitcast %struct.win* %264 to i8*
  %266 = load %struct.win*, %struct.win** %p, align 8
  %w_silenceev330 = getelementptr inbounds %struct.win, %struct.win* %266, i32 0, i32 12
  %data331 = getelementptr inbounds %struct.event, %struct.event* %w_silenceev330, i32 0, i32 2
  store i8* %265, i8** %data331, align 8
  %267 = load %struct.win*, %struct.win** %p, align 8
  %w_silenceev332 = getelementptr inbounds %struct.win, %struct.win* %267, i32 0, i32 12
  %handler333 = getelementptr inbounds %struct.event, %struct.event* %w_silenceev332, i32 0, i32 1
  store void (%struct.event*, i8*)* @win_silenceev_fn, void (%struct.event*, i8*)** %handler333, align 8
  %268 = load %struct.win*, %struct.win** %p, align 8
  %w_silence334 = getelementptr inbounds %struct.win, %struct.win* %268, i32 0, i32 72
  %269 = load i32, i32* %w_silence334, align 4
  %cmp335 = icmp sgt i32 %269, 0
  br i1 %cmp335, label %if.then.337, label %if.end.344

if.then.337:                                      ; preds = %if.end.300
  br label %do.body.338

do.body.338:                                      ; preds = %if.then.337
  br label %do.end.340

do.end.340:                                       ; preds = %do.body.338
  %270 = load %struct.win*, %struct.win** %p, align 8
  %w_silenceev341 = getelementptr inbounds %struct.win, %struct.win* %270, i32 0, i32 12
  %271 = load %struct.win*, %struct.win** %p, align 8
  %w_silencewait342 = getelementptr inbounds %struct.win, %struct.win* %271, i32 0, i32 71
  %272 = load i32, i32* %w_silencewait342, align 4
  %mul = mul nsw i32 %272, 1000
  call void @SetTimeout(%struct.event* %w_silenceev341, i32 %mul)
  %273 = load %struct.win*, %struct.win** %p, align 8
  %w_silenceev343 = getelementptr inbounds %struct.win, %struct.win* %273, i32 0, i32 12
  call void @evenq(%struct.event* %w_silenceev343)
  br label %if.end.344

if.end.344:                                       ; preds = %do.end.340, %if.end.300
  %274 = load %struct.win*, %struct.win** %p, align 8
  %w_destroyev = getelementptr inbounds %struct.win, %struct.win* %274, i32 0, i32 93
  %type345 = getelementptr inbounds %struct.event, %struct.event* %w_destroyev, i32 0, i32 4
  store i32 0, i32* %type345, align 4
  %275 = load %struct.win*, %struct.win** %p, align 8
  %w_destroyev346 = getelementptr inbounds %struct.win, %struct.win* %275, i32 0, i32 93
  %data347 = getelementptr inbounds %struct.event, %struct.event* %w_destroyev346, i32 0, i32 2
  store i8* null, i8** %data347, align 8
  %276 = load %struct.win*, %struct.win** %p, align 8
  %w_destroyev348 = getelementptr inbounds %struct.win, %struct.win* %276, i32 0, i32 93
  %handler349 = getelementptr inbounds %struct.event, %struct.event* %w_destroyev348, i32 0, i32 1
  store void (%struct.event*, i8*)* @win_destroyev_fn, void (%struct.event*, i8*)** %handler349, align 8
  %277 = load %struct.win*, %struct.win** %p, align 8
  call void @SetForeWindow(%struct.win* %277)
  %278 = load %struct.win*, %struct.win** %p, align 8
  %w_norefresh350 = getelementptr inbounds %struct.win, %struct.win* %278, i32 0, i32 74
  %279 = load i8, i8* %w_norefresh350, align 1
  %conv351 = sext i8 %279 to i32
  call void @Activate(i32 %conv351)
  call void @WindowChanged(%struct.win* null, i32 119)
  call void @WindowChanged(%struct.win* null, i32 87)
  call void @WindowChanged(%struct.win* null, i32 0)
  %280 = load i32, i32* %n, align 4
  store i32 %280, i32* %retval
  br label %return

return:                                           ; preds = %if.end.344, %if.then.271, %if.then.260, %if.then.217, %if.then.106, %if.then.53, %if.then.44, %if.then.35
  %281 = load i32, i32* %retval
  ret i32 %281
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @Msg(i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @OpenDevice(i8** %args, i32 %lflag, i32* %typep, i8** %namep) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca i8**, align 8
  %lflag.addr = alloca i32, align 4
  %typep.addr = alloca i32*, align 8
  %namep.addr = alloca i8**, align 8
  %arg = alloca i8*, align 8
  %st = alloca %struct.stat, align 8
  %f = alloca i32, align 4
  %flag = alloca i32, align 4
  store i8** %args, i8*** %args.addr, align 8
  store i32 %lflag, i32* %lflag.addr, align 4
  store i32* %typep, i32** %typep.addr, align 8
  store i8** %namep, i8*** %namep.addr, align 8
  %0 = load i8**, i8*** %args.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %arg, align 8
  %2 = load i8*, i8** %arg, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %arg, align 8
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %4 = load i32*, i32** %typep.addr, align 8
  store i32 3, i32* %4, align 4
  %5 = load i8**, i8*** %namep.addr, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8** %5, align 8
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %6 = load i8*, i8** %arg, align 8
  %call3 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i64 2) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.2
  %7 = load i8*, i8** %arg, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* %7)
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.2
  %8 = load i8*, i8** %arg, align 8
  %call6 = call i32 @stat(i8* %8, %struct.stat* %st) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else.20

land.lhs.true:                                    ; preds = %if.else
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %9 = load i32, i32* %st_mode, align 4
  %and = and i32 %9, 61440
  %cmp8 = icmp eq i32 %and, 8192
  br i1 %cmp8, label %if.then.9, label %if.else.20

if.then.9:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %arg, align 8
  %call10 = call i32 @access(i8* %10, i32 6) #6
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.9
  %call13 = call i32* @__errno_location() #8
  %11 = load i32, i32* %call13, align 4
  %12 = load i8*, i8** %arg, align 8
  call void (i32, i8*, ...) @Msg(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0), i8* %12)
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  br label %do.body

do.body:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.body
  %13 = load i8*, i8** %arg, align 8
  %14 = load i8**, i8*** %args.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %14, i64 1
  %15 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @OpenTTY(i8* %13, i8* %15)
  store i32 %call16, i32* %f, align 4
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %do.end
  store i32 0, i32* %lflag.addr, align 4
  %16 = load i32*, i32** %typep.addr, align 8
  store i32 1, i32* %16, align 4
  %17 = load i8*, i8** %arg, align 8
  %18 = load i8**, i8*** %namep.addr, align 8
  store i8* %17, i8** %18, align 8
  br label %if.end.31

if.else.20:                                       ; preds = %land.lhs.true, %if.else
  %19 = load i32*, i32** %typep.addr, align 8
  store i32 0, i32* %19, align 4
  %20 = load i8**, i8*** %namep.addr, align 8
  %call21 = call i32 @OpenPTY(i8** %20)
  store i32 %call21, i32* %f, align 4
  %21 = load i32, i32* %f, align 4
  %cmp22 = icmp eq i32 %21, -1
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else.20
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.else.20
  store i32 1, i32* %flag, align 4
  %22 = load i32, i32* %f, align 4
  %23 = bitcast i32* %flag to i8*
  %call25 = call i32 (i32, i64, ...) @ioctl(i32 %22, i64 21536, i8* %23) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.24
  %call28 = call i32* @__errno_location() #8
  %24 = load i32, i32* %call28, align 4
  call void (i32, i8*, ...) @Msg(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  %25 = load i32, i32* %f, align 4
  %call29 = call i32 @close(i32 %25)
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.19
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  br label %do.body.33

do.body.33:                                       ; preds = %if.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.body.33
  %26 = load i32, i32* %f, align 4
  %call35 = call i32 (i32, i32, ...) @fcntl(i32 %26, i32 4, i32 2048)
  %27 = load i32*, i32** %typep.addr, align 8
  %28 = load i32, i32* %27, align 4
  %cmp36 = icmp eq i32 %28, 0
  br i1 %cmp36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.34
  %29 = load i32*, i32** %typep.addr, align 8
  %30 = load i32, i32* %29, align 4
  %cmp37 = icmp eq i32 %30, 1
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %lor.lhs.false, %do.end.34
  %31 = load i32, i32* %f, align 4
  %call39 = call i32 @tcflush(i32 %31, i32 2) #6
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %lor.lhs.false
  %32 = load i32*, i32** %typep.addr, align 8
  %33 = load i32, i32* %32, align 4
  %cmp41 = icmp ne i32 %33, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  %34 = load i32, i32* %f, align 4
  store i32 %34, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.40
  %35 = load i8**, i8*** %namep.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @real_uid, align 4
  %call44 = call i32 @chown(i8* %36, i32 %37, i32 5) #6
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.51

land.lhs.true.46:                                 ; preds = %if.end.43
  %38 = load i32, i32* @eff_uid, align 4
  %tobool47 = icmp ne i32 %38, 0
  br i1 %tobool47, label %if.end.51, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.46
  %call49 = call i32* @__errno_location() #8
  %39 = load i32, i32* %call49, align 4
  call void (i32, i8*, ...) @Msg(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  %40 = load i32, i32* %f, align 4
  %call50 = call i32 @close(i32 %40)
  store i32 -1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true.46, %if.end.43
  %41 = load i8**, i8*** %namep.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %lflag.addr, align 4
  %tobool52 = icmp ne i32 %43, 0
  br i1 %tobool52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.51
  %44 = load i32, i32* @TtyMode, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.51
  %45 = load i32, i32* @TtyMode, align 4
  %and53 = and i32 %45, -19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %44, %cond.true ], [ %and53, %cond.false ]
  %call54 = call i32 @chmod(i8* %42, i32 %cond) #6
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.61

land.lhs.true.56:                                 ; preds = %cond.end
  %46 = load i32, i32* @eff_uid, align 4
  %tobool57 = icmp ne i32 %46, 0
  br i1 %tobool57, label %if.end.61, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.56
  %call59 = call i32* @__errno_location() #8
  %47 = load i32, i32* %call59, align 4
  call void (i32, i8*, ...) @Msg(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0))
  %48 = load i32, i32* %f, align 4
  %call60 = call i32 @close(i32 %48)
  store i32 -1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true.56, %cond.end
  %49 = load i32, i32* %f, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.58, %if.then.48, %if.then.42, %if.then.27, %if.then.23, %if.then.18, %if.then.12, %if.then.5, %if.then.1, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @close(i32) #2

declare i8* @SaveStr(i8*) #2

declare i32 @NewWindowAcl(%struct.win*, %struct.acluser*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @AclCheckPermWin(%struct.acluser*, i32, %struct.win*) #2

declare i8* @Filename(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @rindex(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @ChangeWindowSize(%struct.win*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @FreeWindow(%struct.win* %wp) #0 {
entry:
  %wp.addr = alloca %struct.win*, align 8
  %d = alloca %struct.display*, align 8
  %i = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %ncv = alloca %struct.canvas*, align 8
  %l = alloca %struct.layer*, align 8
  %win = alloca %struct.win*, align 8
  store %struct.win* %wp, %struct.win** %wp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 6
  %1 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  %tobool = icmp ne %struct.pseudowin* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %2 = load %struct.win*, %struct.win** %wp.addr, align 8
  call void @FreePseudowin(%struct.win* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %3 = load %struct.win*, %struct.win** %wp.addr, align 8
  %call = call i32 @RemoveUtmp(%struct.win* %3)
  %4 = load %struct.win*, %struct.win** %wp.addr, align 8
  call void @CloseDevice(%struct.win* %4)
  %5 = load %struct.win*, %struct.win** %wp.addr, align 8
  %6 = load %struct.win*, %struct.win** @console_window, align 8
  %cmp = icmp eq %struct.win* %5, %6
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %call2 = call i32 @TtyGrabConsole(i32 -1, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  store %struct.win* null, %struct.win** @console_window, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %7 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_log = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 68
  %8 = load %struct.logfile*, %struct.logfile** %w_log, align 8
  %cmp4 = icmp ne %struct.logfile* %8, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_log6 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 68
  %10 = load %struct.logfile*, %struct.logfile** %w_log6, align 8
  %call7 = call i32 @logfclose(%struct.logfile* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end.3
  %11 = load %struct.win*, %struct.win** %wp.addr, align 8
  %call9 = call i32 @ChangeWindowSize(%struct.win* %11, i32 0, i32 0, i32 0)
  %12 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 1
  %13 = load i32, i32* %w_type, align 4
  %cmp10 = icmp eq i32 %13, 3
  br i1 %cmp10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.end.8
  %14 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %14, %struct.win** %win, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %15 = load %struct.win*, %struct.win** %win, align 8
  %tobool12 = icmp ne %struct.win* %15, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.win*, %struct.win** %win, align 8
  %w_group = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 25
  %17 = load %struct.win*, %struct.win** %w_group, align 8
  %18 = load %struct.win*, %struct.win** %wp.addr, align 8
  %cmp13 = icmp eq %struct.win* %17, %18
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %for.body
  %19 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_group15 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 25
  %20 = load %struct.win*, %struct.win** %w_group15, align 8
  %21 = load %struct.win*, %struct.win** %win, align 8
  %w_group16 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 25
  store %struct.win* %20, %struct.win** %w_group16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %22 = load %struct.win*, %struct.win** %win, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 0
  %23 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %23, %struct.win** %win, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end.8
  %24 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_hstatus = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 57
  %25 = load i8*, i8** %w_hstatus, align 8
  %tobool19 = icmp ne i8* %25, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %26 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_hstatus21 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 57
  %27 = load i8*, i8** %w_hstatus21, align 8
  call void @free(i8* %27) #6
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.29, %if.end.22
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_cmdargs = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 83
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs, i32 0, i64 %idxprom
  %30 = load i8*, i8** %arrayidx, align 8
  %tobool24 = icmp ne i8* %30, null
  br i1 %tobool24, label %for.body.25, label %for.end.30

for.body.25:                                      ; preds = %for.cond.23
  %31 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %32 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_cmdargs27 = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 83
  %arrayidx28 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs27, i32 0, i64 %idxprom26
  %33 = load i8*, i8** %arrayidx28, align 8
  call void @free(i8* %33) #6
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.25
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.23

for.end.30:                                       ; preds = %for.cond.23
  %35 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_dir = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 84
  %36 = load i8*, i8** %w_dir, align 8
  %tobool31 = icmp ne i8* %36, null
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %for.end.30
  %37 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_dir33 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 84
  %38 = load i8*, i8** %w_dir33, align 8
  call void @free(i8* %38) #6
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %for.end.30
  %39 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_term = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 85
  %40 = load i8*, i8** %w_term, align 8
  %tobool35 = icmp ne i8* %40, null
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.34
  %41 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_term37 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 85
  %42 = load i8*, i8** %w_term37, align 8
  call void @free(i8* %42) #6
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.34
  %43 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %43, %struct.display** %d, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.83, %if.end.38
  %44 = load %struct.display*, %struct.display** %d, align 8
  %tobool40 = icmp ne %struct.display* %44, null
  br i1 %tobool40, label %for.body.41, label %for.end.84

for.body.41:                                      ; preds = %for.cond.39
  %45 = load %struct.display*, %struct.display** %d, align 8
  %d_other = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 11
  %46 = load %struct.win*, %struct.win** %d_other, align 8
  %47 = load %struct.win*, %struct.win** %wp.addr, align 8
  %cmp42 = icmp eq %struct.win* %46, %47
  br i1 %cmp42, label %if.then.43, label %if.end.52

if.then.43:                                       ; preds = %for.body.41
  %48 = load %struct.display*, %struct.display** %d, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 10
  %49 = load %struct.win*, %struct.win** %d_fore, align 8
  %tobool44 = icmp ne %struct.win* %49, null
  br i1 %tobool44, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.43
  %50 = load %struct.display*, %struct.display** %d, align 8
  %d_fore45 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 10
  %51 = load %struct.win*, %struct.win** %d_fore45, align 8
  %w_next46 = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 0
  %52 = load %struct.win*, %struct.win** %w_next46, align 8
  %53 = load %struct.win*, %struct.win** %wp.addr, align 8
  %cmp47 = icmp ne %struct.win* %52, %53
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %54 = load %struct.display*, %struct.display** %d, align 8
  %d_fore48 = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 10
  %55 = load %struct.win*, %struct.win** %d_fore48, align 8
  %w_next49 = getelementptr inbounds %struct.win, %struct.win* %55, i32 0, i32 0
  %56 = load %struct.win*, %struct.win** %w_next49, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.43
  %57 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_next50 = getelementptr inbounds %struct.win, %struct.win* %57, i32 0, i32 0
  %58 = load %struct.win*, %struct.win** %w_next50, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.win* [ %56, %cond.true ], [ %58, %cond.false ]
  %59 = load %struct.display*, %struct.display** %d, align 8
  %d_other51 = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 11
  store %struct.win* %cond, %struct.win** %d_other51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %cond.end, %for.body.41
  %60 = load %struct.display*, %struct.display** %d, align 8
  %d_fore53 = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 10
  %61 = load %struct.win*, %struct.win** %d_fore53, align 8
  %62 = load %struct.win*, %struct.win** %wp.addr, align 8
  %cmp54 = icmp eq %struct.win* %61, %62
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.52
  %63 = load %struct.display*, %struct.display** %d, align 8
  %d_fore56 = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 10
  store %struct.win* null, %struct.win** %d_fore56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.52
  %64 = load %struct.display*, %struct.display** %d, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 3
  %65 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %65, %struct.canvas** %cv, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.81, %if.end.57
  %66 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool59 = icmp ne %struct.canvas* %66, null
  br i1 %tobool59, label %for.body.60, label %for.end.82

for.body.60:                                      ; preds = %for.cond.58
  %67 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %67, i32 0, i32 9
  %68 = load %struct.layer*, %struct.layer** %c_layer, align 8
  store %struct.layer* %68, %struct.layer** %l, align 8
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.67, %for.body.60
  %69 = load %struct.layer*, %struct.layer** %l, align 8
  %tobool62 = icmp ne %struct.layer* %69, null
  br i1 %tobool62, label %for.body.63, label %for.end.68

for.body.63:                                      ; preds = %for.cond.61
  %70 = load %struct.layer*, %struct.layer** %l, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %70, i32 0, i32 6
  %71 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %cmp64 = icmp eq %struct.LayFuncs* %71, @WinLf
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.body.63
  br label %for.end.68

if.end.66:                                        ; preds = %for.body.63
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %72 = load %struct.layer*, %struct.layer** %l, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %72, i32 0, i32 8
  %73 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %73, %struct.layer** %l, align 8
  br label %for.cond.61

for.end.68:                                       ; preds = %if.then.65, %for.cond.61
  %74 = load %struct.layer*, %struct.layer** %l, align 8
  %tobool69 = icmp ne %struct.layer* %74, null
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %for.end.68
  br label %for.inc.81

if.end.71:                                        ; preds = %for.end.68
  %75 = load %struct.layer*, %struct.layer** %l, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %75, i32 0, i32 7
  %76 = load i8*, i8** %l_data, align 8
  %77 = bitcast i8* %76 to %struct.win*
  %78 = load %struct.win*, %struct.win** %wp.addr, align 8
  %cmp72 = icmp ne %struct.win* %77, %78
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  br label %for.inc.81

if.end.74:                                        ; preds = %if.end.71
  %79 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer75 = getelementptr inbounds %struct.canvas, %struct.canvas* %79, i32 0, i32 9
  %80 = load %struct.layer*, %struct.layer** %c_layer75, align 8
  %81 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %81, i32 0, i32 4
  %82 = load %struct.layer*, %struct.layer** %w_savelayer, align 8
  %cmp76 = icmp eq %struct.layer* %80, %82
  br i1 %cmp76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.74
  %83 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_savelayer78 = getelementptr inbounds %struct.win, %struct.win* %83, i32 0, i32 4
  store %struct.layer* null, %struct.layer** %w_savelayer78, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.74
  %84 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer80 = getelementptr inbounds %struct.canvas, %struct.canvas* %84, i32 0, i32 9
  %85 = load %struct.layer*, %struct.layer** %c_layer80, align 8
  call void @KillLayerChain(%struct.layer* %85)
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.79, %if.then.73, %if.then.70
  %86 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %86, i32 0, i32 0
  %87 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %87, %struct.canvas** %cv, align 8
  br label %for.cond.58

for.end.82:                                       ; preds = %for.cond.58
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.82
  %88 = load %struct.display*, %struct.display** %d, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 0
  %89 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %89, %struct.display** %d, align 8
  br label %for.cond.39

for.end.84:                                       ; preds = %for.cond.39
  %90 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_savelayer85 = getelementptr inbounds %struct.win, %struct.win* %90, i32 0, i32 4
  %91 = load %struct.layer*, %struct.layer** %w_savelayer85, align 8
  %tobool86 = icmp ne %struct.layer* %91, null
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %for.end.84
  %92 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_savelayer88 = getelementptr inbounds %struct.win, %struct.win* %92, i32 0, i32 4
  %93 = load %struct.layer*, %struct.layer** %w_savelayer88, align 8
  call void @KillLayerChain(%struct.layer* %93)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %for.end.84
  %94 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %94, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
  %95 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %95, %struct.canvas** %cv, align 8
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.97, %if.end.89
  %96 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool91 = icmp ne %struct.canvas* %96, null
  br i1 %tobool91, label %for.body.92, label %for.end.98

for.body.92:                                      ; preds = %for.cond.90
  %97 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %97, i32 0, i32 10
  %98 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %98, %struct.canvas** %ncv, align 8
  %99 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_blank = getelementptr inbounds %struct.canvas, %struct.canvas* %99, i32 0, i32 11
  %100 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer93 = getelementptr inbounds %struct.canvas, %struct.canvas* %100, i32 0, i32 9
  store %struct.layer* %c_blank, %struct.layer** %c_layer93, align 8
  %101 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %102 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_blank94 = getelementptr inbounds %struct.canvas, %struct.canvas* %102, i32 0, i32 11
  %l_cvlist95 = getelementptr inbounds %struct.layer, %struct.layer* %c_blank94, i32 0, i32 0
  store %struct.canvas* %101, %struct.canvas** %l_cvlist95, align 8
  %103 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext96 = getelementptr inbounds %struct.canvas, %struct.canvas* %103, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext96, align 8
  %104 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %104, i32 0, i32 14
  %105 = load i32, i32* %c_xs, align 4
  %106 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %106, i32 0, i32 12
  store i32 %105, i32* %c_xoff, align 4
  %107 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %107, i32 0, i32 16
  %108 = load i32, i32* %c_ys, align 4
  %109 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %109, i32 0, i32 13
  store i32 %108, i32* %c_yoff, align 4
  %110 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @RethinkViewportOffsets(%struct.canvas* %110)
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.92
  %111 = load %struct.canvas*, %struct.canvas** %ncv, align 8
  store %struct.canvas* %111, %struct.canvas** %cv, align 8
  br label %for.cond.90

for.end.98:                                       ; preds = %for.cond.90
  %112 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_layer99 = getelementptr inbounds %struct.win, %struct.win* %112, i32 0, i32 3
  %l_cvlist100 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer99, i32 0, i32 0
  store %struct.canvas* null, %struct.canvas** %l_cvlist100, align 8
  %113 = load %struct.layer*, %struct.layer** @flayer, align 8
  %114 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_layer101 = getelementptr inbounds %struct.win, %struct.win* %114, i32 0, i32 3
  %cmp102 = icmp eq %struct.layer* %113, %w_layer101
  br i1 %cmp102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %for.end.98
  store %struct.layer* null, %struct.layer** @flayer, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %for.end.98
  %115 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_layer105 = getelementptr inbounds %struct.win, %struct.win* %115, i32 0, i32 3
  call void @LayerCleanupMemory(%struct.layer* %w_layer105)
  %116 = load %struct.win*, %struct.win** %wp.addr, align 8
  call void @FreeWindowAcl(%struct.win* %116)
  %117 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_readev = getelementptr inbounds %struct.win, %struct.win* %117, i32 0, i32 10
  call void @evdeq(%struct.event* %w_readev)
  %118 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_writeev = getelementptr inbounds %struct.win, %struct.win* %118, i32 0, i32 11
  call void @evdeq(%struct.event* %w_writeev)
  %119 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_silenceev = getelementptr inbounds %struct.win, %struct.win* %119, i32 0, i32 12
  call void @evdeq(%struct.event* %w_silenceev)
  %120 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_zombieev = getelementptr inbounds %struct.win, %struct.win* %120, i32 0, i32 13
  call void @evdeq(%struct.event* %w_zombieev)
  %121 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_destroyev = getelementptr inbounds %struct.win, %struct.win* %121, i32 0, i32 93
  call void @evdeq(%struct.event* %w_destroyev)
  %122 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_paster = getelementptr inbounds %struct.win, %struct.win* %122, i32 0, i32 80
  call void @FreePaster(%struct.paster* %w_paster)
  %123 = load %struct.win*, %struct.win** %wp.addr, align 8
  %124 = bitcast %struct.win* %123 to i8*
  call void @free(i8* %124) #6
  ret void
}

declare void @ResetWindow(%struct.win*) #2

declare void @SetCharsets(%struct.win*, i8*) #2

declare void @WriteString(%struct.win*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @ForkWindow(%struct.win* %win, i8** %args, i8* %ttyn) #0 {
entry:
  %retval = alloca i32, align 4
  %win.addr = alloca %struct.win*, align 8
  %args.addr = alloca i8**, align 8
  %ttyn.addr = alloca i8*, align 8
  %pid = alloca i32, align 4
  %tebuf = alloca [25 x i8], align 16
  %ebuf = alloca [20 x i8], align 16
  %shellbuf = alloca [4103 x i8], align 16
  %proc = alloca i8*, align 8
  %newfd = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %pat = alloca i32, align 4
  %wfdused = alloca i32, align 4
  %pwin = alloca %struct.pseudowin*, align 8
  %slave = alloca i32, align 4
  %fakemode = alloca %struct.mode, align 4
  %modep = alloca %struct.mode*, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %tl = alloca i8, align 1
  store %struct.win* %win, %struct.win** %win.addr, align 8
  store i8** %args, i8*** %args.addr, align 8
  store i8* %ttyn, i8** %ttyn.addr, align 8
  %0 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %1 = load i32, i32* %l_width, align 4
  store i32 %1, i32* %w, align 4
  %2 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 2
  %3 = load i32, i32* %l_height, align 4
  store i32 %3, i32* %h, align 4
  %4 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 6
  %5 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  store %struct.pseudowin* %5, %struct.pseudowin** %pwin, align 8
  store i32 -1, i32* %slave, align 4
  %6 = load i32, i32* @pty_preopen, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %ttyn.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %7, i32 258)
  store i32 %call, i32* %slave, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.end
  %call3 = call i32* @__errno_location() #8
  %8 = load i32, i32* %call3, align 4
  call void (i32, i8*, ...) @Msg(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.end
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  br label %do.body.5

do.body.5:                                        ; preds = %if.end.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  %9 = load i8**, i8*** %args.addr, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %proc, align 8
  %11 = load i8*, i8** %proc, align 8
  %cmp7 = icmp eq i8* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end.6
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @ShellArgs, i32 0, i32 0), i8*** %args.addr, align 8
  %12 = load i8**, i8*** %args.addr, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %proc, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.end.6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fflush(%struct._IO_FILE* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 @fflush(%struct._IO_FILE* %15)
  %call12 = call i32 @fork() #6
  store i32 %call12, i32* %pid, align 4
  switch i32 %call12, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end.9
  %call13 = call i32* @__errno_location() #8
  %16 = load i32, i32* %call13, align 4
  call void (i32, i8*, ...) @Msg(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0))
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.9
  %call15 = call void (i32)* @xsignal(i32 1, void (i32)* null)
  %call16 = call void (i32)* @xsignal(i32 2, void (i32)* null)
  %call17 = call void (i32)* @xsignal(i32 3, void (i32)* null)
  %call18 = call void (i32)* @xsignal(i32 15, void (i32)* null)
  %call19 = call void (i32)* @xsignal(i32 21, void (i32)* null)
  %call20 = call void (i32)* @xsignal(i32 22, void (i32)* null)
  %call21 = call void (i32)* @xsignal(i32 13, void (i32)* null)
  %call22 = call void (i32)* @xsignal(i32 25, void (i32)* null)
  store %struct.display* null, %struct.display** @displays, align 8
  %17 = load i32, i32* @real_gid, align 4
  %call23 = call i32 @setgid(i32 %17) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.14
  %18 = load i32, i32* @real_uid, align 4
  %call25 = call i32 @setuid(i32 %18) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %lor.lhs.false, %sw.bb.14
  %call28 = call i32* @__errno_location() #8
  %19 = load i32, i32* %call28, align 4
  call void (i32, i8*, ...) @Panic(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0)) #9
  unreachable

if.end.29:                                        ; preds = %lor.lhs.false
  %20 = load i32, i32* @real_uid, align 4
  store i32 %20, i32* @eff_uid, align 4
  %21 = load i32, i32* @real_gid, align 4
  store i32 %21, i32* @eff_gid, align 4
  %22 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %tobool30 = icmp ne %struct.pseudowin* %22, null
  br i1 %tobool30, label %if.end.43, label %if.then.31

if.then.31:                                       ; preds = %if.end.29
  %23 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_dir = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 84
  %24 = load i8*, i8** %w_dir, align 8
  %tobool32 = icmp ne i8* %24, null
  br i1 %tobool32, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.then.31
  %25 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_dir33 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 84
  %26 = load i8*, i8** %w_dir33, align 8
  %27 = load i8, i8* %26, align 1
  %conv = sext i8 %27 to i32
  %tobool34 = icmp ne i32 %conv, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.42

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %28 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_dir36 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 84
  %29 = load i8*, i8** %w_dir36, align 8
  %call37 = call i32 @chdir(i8* %29) #6
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %land.lhs.true.35
  %call40 = call i32* @__errno_location() #8
  %30 = load i32, i32* %call40, align 4
  %31 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_dir41 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 84
  %32 = load i8*, i8** %w_dir41, align 8
  call void (i32, i8*, ...) @Panic(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8* %32) #9
  unreachable

if.end.42:                                        ; preds = %land.lhs.true.35, %land.lhs.true, %if.then.31
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.29
  %33 = load %struct.display*, %struct.display** @display, align 8
  %tobool44 = icmp ne %struct.display* %33, null
  br i1 %tobool44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.43
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 59
  %35 = load i32, i32* %d_userfd, align 4
  call void @brktty(i32 %35)
  call void @freetty()
  br label %if.end.46

if.else:                                          ; preds = %if.end.43
  call void @brktty(i32 -1)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.45
  %36 = load i32, i32* %slave, align 4
  %cmp47 = icmp ne i32 %36, -1
  br i1 %cmp47, label %if.then.49, label %if.else.54

if.then.49:                                       ; preds = %if.end.46
  %call50 = call i32 @close(i32 0)
  %37 = load i32, i32* %slave, align 4
  %call51 = call i32 @dup(i32 %37) #6
  %38 = load i32, i32* %slave, align 4
  %call52 = call i32 @close(i32 %38)
  %39 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 15
  %40 = load i32, i32* %w_ptyfd, align 4
  call void @closeallfiles(i32 %40)
  %call53 = call i32 @dup(i32 0) #6
  store i32 %call53, i32* %slave, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %if.end.46
  %41 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_ptyfd55 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 15
  %42 = load i32, i32* %w_ptyfd55, align 4
  call void @closeallfiles(i32 %42)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.49
  %call57 = call i32 @close(i32 0)
  %call58 = call i32 @close(i32 1)
  %call59 = call i32 @close(i32 2)
  store i32 -1, i32* %newfd, align 4
  %43 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %tobool60 = icmp ne %struct.pseudowin* %43, null
  br i1 %tobool60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.56
  %44 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_fdpat = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %44, i32 0, i32 0
  %45 = load i32, i32* %p_fdpat, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %45, %cond.true ], [ 21, %cond.false ]
  store i32 %cond, i32* %pat, align 4
  br label %do.body.61

do.body.61:                                       ; preds = %cond.end
  br label %do.end.62

do.end.62:                                        ; preds = %do.body.61
  store i32 0, i32* %wfdused, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.62
  %46 = load i32, i32* %i, align 4
  %cmp63 = icmp slt i32 %46, 3
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %pat, align 4
  %48 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %48
  %shl = shl i32 1, %mul
  %and = and i32 %47, %shl
  %tobool65 = icmp ne i32 %and, 0
  br i1 %tobool65, label %if.then.66, label %if.else.84

if.then.66:                                       ; preds = %for.body
  %49 = load i32, i32* %newfd, align 4
  %cmp67 = icmp slt i32 %49, 0
  br i1 %cmp67, label %if.then.69, label %if.else.81

if.then.69:                                       ; preds = %if.then.66
  %50 = load i32, i32* @separate_sids, align 4
  %tobool70 = icmp ne i32 %50, 0
  br i1 %tobool70, label %if.then.71, label %if.else.73

if.then.71:                                       ; preds = %if.then.69
  %51 = load i8*, i8** %ttyn.addr, align 8
  %call72 = call i32 (i8*, i32, ...) @open(i8* %51, i32 2)
  store i32 %call72, i32* %newfd, align 4
  br label %if.end.75

if.else.73:                                       ; preds = %if.then.69
  %52 = load i8*, i8** %ttyn.addr, align 8
  %call74 = call i32 (i8*, i32, ...) @open(i8* %52, i32 258)
  store i32 %call74, i32* %newfd, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.71
  %53 = load i32, i32* %newfd, align 4
  %cmp76 = icmp slt i32 %53, 0
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.75
  %call79 = call i32* @__errno_location() #8
  %54 = load i32, i32* %call79, align 4
  %55 = load i8*, i8** %ttyn.addr, align 8
  call void (i32, i8*, ...) @Panic(i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i8* %55) #9
  unreachable

if.end.80:                                        ; preds = %if.end.75
  br label %if.end.83

if.else.81:                                       ; preds = %if.then.66
  %56 = load i32, i32* %newfd, align 4
  %call82 = call i32 @dup(i32 %56) #6
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.end.80
  br label %if.end.87

if.else.84:                                       ; preds = %for.body
  %57 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_ptyfd85 = getelementptr inbounds %struct.win, %struct.win* %57, i32 0, i32 15
  %58 = load i32, i32* %w_ptyfd85, align 4
  %call86 = call i32 @dup(i32 %58) #6
  store i32 1, i32* %wfdused, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.end.83
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %wfdused, align 4
  %tobool88 = icmp ne i32 %60, 0
  br i1 %tobool88, label %if.then.89, label %if.end.98

if.then.89:                                       ; preds = %for.end
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  br label %do.end.91

do.end.91:                                        ; preds = %do.body.90
  %61 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_ptyfd92 = getelementptr inbounds %struct.win, %struct.win* %61, i32 0, i32 15
  %62 = load i32, i32* %w_ptyfd92, align 4
  %call93 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 4, i32 0)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %do.end.91
  %call96 = call i32* @__errno_location() #8
  %63 = load i32, i32* %call96, align 4
  call void (i32, i8*, ...) @Msg(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %do.end.91
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %for.end
  %64 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_ptyfd99 = getelementptr inbounds %struct.win, %struct.win* %64, i32 0, i32 15
  %65 = load i32, i32* %w_ptyfd99, align 4
  %call100 = call i32 @close(i32 %65)
  %66 = load i32, i32* %slave, align 4
  %cmp101 = icmp ne i32 %66, -1
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.end.98
  %67 = load i32, i32* %slave, align 4
  %call104 = call i32 @close(i32 %67)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.end.98
  %68 = load i32, i32* %newfd, align 4
  %cmp106 = icmp sge i32 %68, 0
  br i1 %cmp106, label %if.then.108, label %if.end.140

if.then.108:                                      ; preds = %if.end.105
  %69 = load i32, i32* %newfd, align 4
  call void @InitPTY(i32 %69)
  %70 = load i32, i32* %newfd, align 4
  %call109 = call i32 @fgtty(i32 %70)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.then.108
  %call112 = call i32* @__errno_location() #8
  %71 = load i32, i32* %call112, align 4
  call void (i32, i8*, ...) @Msg(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.then.108
  %72 = load %struct.display*, %struct.display** @display, align 8
  %tobool114 = icmp ne %struct.display* %72, null
  br i1 %tobool114, label %if.then.115, label %if.else.118

if.then.115:                                      ; preds = %if.end.113
  br label %do.body.116

do.body.116:                                      ; preds = %if.then.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.body.116
  %73 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 63
  store %struct.mode* %d_OldMode, %struct.mode** %modep, align 8
  br label %if.end.121

if.else.118:                                      ; preds = %if.end.113
  br label %do.body.119

do.body.119:                                      ; preds = %if.else.118
  br label %do.end.120

do.end.120:                                       ; preds = %do.body.119
  store %struct.mode* %fakemode, %struct.mode** %modep, align 8
  %74 = load %struct.mode*, %struct.mode** %modep, align 8
  call void @InitTTY(%struct.mode* %74, i32 0)
  br label %if.end.121

if.end.121:                                       ; preds = %do.end.120, %do.end.117
  %75 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %tobool122 = icmp ne %struct.pseudowin* %75, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.end.135

land.lhs.true.123:                                ; preds = %if.end.121
  %76 = load i32, i32* %pat, align 4
  %and124 = and i32 %76, 4096
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %lor.lhs.false.126, label %if.then.129

lor.lhs.false.126:                                ; preds = %land.lhs.true.123
  %77 = load i32, i32* %pat, align 4
  %and127 = and i32 %77, 8
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.135

if.then.129:                                      ; preds = %lor.lhs.false.126, %land.lhs.true.123
  br label %do.body.130

do.body.130:                                      ; preds = %if.then.129
  br label %do.end.131

do.end.131:                                       ; preds = %do.body.130
  %78 = load %struct.mode*, %struct.mode** %modep, align 8
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %78, i32 0, i32 0
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 3
  %79 = load i32, i32* %c_lflag, align 4
  %and132 = and i32 %79, -9
  store i32 %and132, i32* %c_lflag, align 4
  %80 = load %struct.mode*, %struct.mode** %modep, align 8
  %tio133 = getelementptr inbounds %struct.mode, %struct.mode* %80, i32 0, i32 0
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %tio133, i32 0, i32 0
  %81 = load i32, i32* %c_iflag, align 4
  %and134 = and i32 %81, -257
  store i32 %and134, i32* %c_iflag, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %do.end.131, %lor.lhs.false.126, %if.end.121
  %82 = load i32, i32* %newfd, align 4
  %83 = load %struct.mode*, %struct.mode** %modep, align 8
  call void @SetTTY(i32 %82, %struct.mode* %83)
  %84 = load i32, i32* %w, align 4
  %conv136 = trunc i32 %84 to i16
  store i16 %conv136, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @glwz, i32 0, i32 1), align 2
  %85 = load i32, i32* %h, align 4
  %conv137 = trunc i32 %85 to i16
  store i16 %conv137, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @glwz, i32 0, i32 0), align 2
  %86 = load i32, i32* %newfd, align 4
  %call138 = call i32 (i32, i64, ...) @ioctl(i32 %86, i64 21524, i8* bitcast (%struct.winsize* @glwz to i8*)) #6
  %87 = load i32, i32* %newfd, align 4
  %call139 = call i32 (i32, i32, ...) @fcntl(i32 %87, i32 4, i32 0)
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.135, %if.end.105
  %88 = load %struct.display*, %struct.display** @display, align 8
  %cmp141 = icmp eq %struct.display* %88, null
  br i1 %cmp141, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.140
  %89 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_aflag = getelementptr inbounds %struct.win, %struct.win* %89, i32 0, i32 20
  %90 = load i32, i32* %w_aflag, align 4
  %tobool143 = icmp ne i32 %90, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.140
  %91 = phi i1 [ true, %if.end.140 ], [ %tobool143, %lor.rhs ]
  %lor.ext = zext i1 %91 to i32
  %call144 = call i8* @MakeTermcap(i32 %lor.ext)
  %92 = load i8**, i8*** @NewEnv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %92, i64 2
  store i8* %call144, i8** %arrayidx, align 8
  %arraydecay = getelementptr inbounds [4103 x i8], [4103 x i8]* %shellbuf, i32 0, i32 0
  %call145 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #6
  %arraydecay146 = getelementptr inbounds [4103 x i8], [4103 x i8]* %shellbuf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay146, i64 6
  %93 = load i8*, i8** @ShellProg, align 8
  %94 = load i8*, i8** @ShellProg, align 8
  %95 = load i8, i8* %94, align 1
  %conv147 = sext i8 %95 to i32
  %cmp148 = icmp eq i32 %conv147, 45
  %conv149 = zext i1 %cmp148 to i32
  %idx.ext = sext i32 %conv149 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %93, i64 %idx.ext
  %call151 = call i8* @strncpy(i8* %add.ptr, i8* %add.ptr150, i64 4096) #6
  %arrayidx152 = getelementptr inbounds [4103 x i8], [4103 x i8]* %shellbuf, i32 0, i64 4102
  store i8 0, i8* %arrayidx152, align 1
  %arraydecay153 = getelementptr inbounds [4103 x i8], [4103 x i8]* %shellbuf, i32 0, i32 0
  %96 = load i8**, i8*** @NewEnv, align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %96, i64 4
  store i8* %arraydecay153, i8** %arrayidx154, align 8
  br label %do.body.155

do.body.155:                                      ; preds = %lor.end
  br label %do.end.156

do.end.156:                                       ; preds = %do.body.155
  %97 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_term = getelementptr inbounds %struct.win, %struct.win* %97, i32 0, i32 85
  %98 = load i8*, i8** %w_term, align 8
  %tobool157 = icmp ne i8* %98, null
  br i1 %tobool157, label %land.lhs.true.158, label %if.end.205

land.lhs.true.158:                                ; preds = %do.end.156
  %99 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_term159 = getelementptr inbounds %struct.win, %struct.win* %99, i32 0, i32 85
  %100 = load i8*, i8** %w_term159, align 8
  %101 = load i8, i8* %100, align 1
  %conv160 = sext i8 %101 to i32
  %tobool161 = icmp ne i32 %conv160, 0
  br i1 %tobool161, label %land.lhs.true.162, label %if.end.205

land.lhs.true.162:                                ; preds = %land.lhs.true.158
  %102 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_term163 = getelementptr inbounds %struct.win, %struct.win* %102, i32 0, i32 85
  %103 = load i8*, i8** %w_term163, align 8
  %call164 = call i32 @strcmp(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @screenterm, i32 0, i32 0), i8* %103) #7
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %land.lhs.true.166, label %if.end.205

land.lhs.true.166:                                ; preds = %land.lhs.true.162
  %104 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_term167 = getelementptr inbounds %struct.win, %struct.win* %104, i32 0, i32 85
  %105 = load i8*, i8** %w_term167, align 8
  %call168 = call i64 @strlen(i8* %105) #7
  %cmp169 = icmp ult i64 %call168, 32
  br i1 %cmp169, label %if.then.171, label %if.end.205

if.then.171:                                      ; preds = %land.lhs.true.166
  %arraydecay172 = getelementptr inbounds [25 x i8], [25 x i8]* %tebuf, i32 0, i32 0
  %106 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_term173 = getelementptr inbounds %struct.win, %struct.win* %106, i32 0, i32 85
  %107 = load i8*, i8** %w_term173, align 8
  %call174 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* %107) #6
  br label %do.body.175

do.body.175:                                      ; preds = %if.then.171
  br label %do.end.176

do.end.176:                                       ; preds = %do.body.175
  %108 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_term177 = getelementptr inbounds %struct.win, %struct.win* %108, i32 0, i32 85
  %109 = load i8*, i8** %w_term177, align 8
  %call178 = call i64 @strlen(i8* %109) #7
  %conv179 = trunc i64 %call178 to i8
  store i8 %conv179, i8* %tl, align 1
  %arraydecay180 = getelementptr inbounds [25 x i8], [25 x i8]* %tebuf, i32 0, i32 0
  %110 = load i8**, i8*** @NewEnv, align 8
  %arrayidx181 = getelementptr inbounds i8*, i8** %110, i64 1
  store i8* %arraydecay180, i8** %arrayidx181, align 8
  %111 = load i8**, i8*** @NewEnv, align 8
  %arrayidx182 = getelementptr inbounds i8*, i8** %111, i64 2
  %112 = load i8*, i8** %arrayidx182, align 8
  %call183 = call i8* @index(i8* %112, i32 124) #7
  store i8* %call183, i8** %s1, align 8
  %tobool184 = icmp ne i8* %call183, null
  br i1 %tobool184, label %if.then.185, label %if.end.204

if.then.185:                                      ; preds = %do.end.176
  %113 = load i8*, i8** %s1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr, i8** %s1, align 8
  %call186 = call i8* @index(i8* %incdec.ptr, i32 124) #7
  store i8* %call186, i8** %s2, align 8
  %tobool187 = icmp ne i8* %call186, null
  br i1 %tobool187, label %if.then.188, label %if.end.203

if.then.188:                                      ; preds = %if.then.185
  %114 = load i8**, i8*** @NewEnv, align 8
  %arrayidx189 = getelementptr inbounds i8*, i8** %114, i64 2
  %115 = load i8*, i8** %arrayidx189, align 8
  %call190 = call i64 @strlen(i8* %115) #7
  %116 = load i8*, i8** %s2, align 8
  %117 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %116 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %117 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %call190, %sub.ptr.sub
  %118 = load i8, i8* %tl, align 1
  %conv191 = sext i8 %118 to i64
  %add = add i64 %sub, %conv191
  %cmp192 = icmp ult i64 %add, 1024
  br i1 %cmp192, label %if.then.194, label %if.end.202

if.then.194:                                      ; preds = %if.then.188
  %119 = load i8*, i8** %s2, align 8
  %120 = load i8*, i8** %s1, align 8
  %121 = load i8, i8* %tl, align 1
  %conv195 = sext i8 %121 to i32
  %idx.ext196 = sext i32 %conv195 to i64
  %add.ptr197 = getelementptr inbounds i8, i8* %120, i64 %idx.ext196
  %122 = load i8*, i8** %s2, align 8
  %call198 = call i64 @strlen(i8* %122) #7
  %add199 = add i64 %call198, 1
  call void @bcopy(i8* %119, i8* %add.ptr197, i64 %add199) #6
  %123 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_term200 = getelementptr inbounds %struct.win, %struct.win* %123, i32 0, i32 85
  %124 = load i8*, i8** %w_term200, align 8
  %125 = load i8*, i8** %s1, align 8
  %126 = load i8, i8* %tl, align 1
  %conv201 = sext i8 %126 to i64
  call void @bcopy(i8* %124, i8* %125, i64 %conv201) #6
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.194, %if.then.188
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.185
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %do.end.176
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %land.lhs.true.166, %land.lhs.true.162, %land.lhs.true.158, %do.end.156
  %arraydecay206 = getelementptr inbounds [20 x i8], [20 x i8]* %ebuf, i32 0, i32 0
  %127 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %127, i32 0, i32 9
  %128 = load i32, i32* %w_number, align 4
  %call207 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 %128) #6
  %arraydecay208 = getelementptr inbounds [20 x i8], [20 x i8]* %ebuf, i32 0, i32 0
  %129 = load i8**, i8*** @NewEnv, align 8
  %arrayidx209 = getelementptr inbounds i8*, i8** %129, i64 3
  store i8* %arraydecay208, i8** %arrayidx209, align 8
  %130 = load i8*, i8** %proc, align 8
  %131 = load i8, i8* %130, align 1
  %conv210 = sext i8 %131 to i32
  %cmp211 = icmp eq i32 %conv210, 45
  br i1 %cmp211, label %if.then.213, label %if.end.215

if.then.213:                                      ; preds = %if.end.205
  %132 = load i8*, i8** %proc, align 8
  %incdec.ptr214 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr214, i8** %proc, align 8
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.213, %if.end.205
  %133 = load i8*, i8** %proc, align 8
  %134 = load i8, i8* %133, align 1
  %tobool216 = icmp ne i8 %134, 0
  br i1 %tobool216, label %if.end.218, label %if.then.217

if.then.217:                                      ; preds = %if.end.215
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @DefaultShell, i32 0, i32 0), i8** %proc, align 8
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.217, %if.end.215
  br label %do.body.219

do.body.219:                                      ; preds = %if.end.218
  br label %do.end.220

do.end.220:                                       ; preds = %do.body.219
  %135 = load i8*, i8** %proc, align 8
  %136 = load i8**, i8*** %args.addr, align 8
  %137 = load i8**, i8*** @NewEnv, align 8
  %call221 = call i32 @execvpe(i8* %135, i8** %136, i8** %137) #6
  br label %do.body.222

do.body.222:                                      ; preds = %do.end.220
  br label %do.end.223

do.end.223:                                       ; preds = %do.body.222
  %call224 = call i32* @__errno_location() #8
  %138 = load i32, i32* %call224, align 4
  %139 = load i8*, i8** %proc, align 8
  call void (i32, i8*, ...) @Panic(i32 %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i8* %139) #9
  unreachable

sw.default:                                       ; preds = %if.end.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %140 = load i32, i32* %slave, align 4
  %cmp225 = icmp ne i32 %140, -1
  br i1 %cmp225, label %if.then.227, label %if.end.229

if.then.227:                                      ; preds = %sw.epilog
  %141 = load i32, i32* %slave, align 4
  %call228 = call i32 @close(i32 %141)
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.227, %sw.epilog
  %142 = load i32, i32* %pid, align 4
  store i32 %142, i32* %retval
  br label %return

return:                                           ; preds = %if.end.229, %if.then.2
  %143 = load i32, i32* %retval
  ret i32 %143
}

declare void @SetForeWindow(%struct.win*) #2

declare void @Activate(i32) #2

declare void @WindowChanged(%struct.win*, i32) #2

declare i32 @SetUtmp(%struct.win*) #2

; Function Attrs: nounwind uwtable
define internal void @win_resurrect_zombie_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.win*
  store %struct.win* %1, %struct.win** %p, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.win*, %struct.win** %p, align 8
  %w_deadpid = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 82
  %3 = load i32, i32* %w_deadpid, align 4
  %4 = load %struct.win*, %struct.win** %p, align 8
  %w_pid = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 81
  %5 = load i32, i32* %w_pid, align 4
  %cmp = icmp ne i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  br label %do.body.1

do.body.1:                                        ; preds = %if.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %6 = load %struct.win*, %struct.win** %p, align 8
  call void @WriteString(%struct.win* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 2)
  %7 = load %struct.win*, %struct.win** %p, align 8
  %call = call i32 @RemakeWindow(%struct.win* %7)
  br label %return

return:                                           ; preds = %do.end.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @win_readev_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  %buf = alloca [4096 x i8], align 16
  %bp = alloca i8*, align 8
  %size = alloca i32, align 4
  %len = alloca i32, align 4
  %wtop = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.win*
  store %struct.win* %1, %struct.win** %p, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %bp, align 8
  store i32 4096, i32* %size, align 4
  %2 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 6
  %3 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  %tobool = icmp ne %struct.pseudowin* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin1 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 6
  %5 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin1, align 8
  %p_fdpat = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %5, i32 0, i32 0
  %6 = load i32, i32* %p_fdpat, align 4
  %and = and i32 %6, 3
  %cmp = icmp eq i32 %and, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %wtop, align 4
  %8 = load i32, i32* %wtop, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %9 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin3 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 6
  %10 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin3, align 8
  %p_inlen = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %10, i32 0, i32 8
  %11 = load i32, i32* %p_inlen, align 4
  %sub = sub nsw i32 4096, %11
  store i32 %sub, i32* %size, align 4
  %12 = load i32, i32* %size, align 4
  %cmp4 = icmp sle i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %do.end
  %13 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condpos = getelementptr inbounds %struct.event, %struct.event* %13, i32 0, i32 9
  store i32* @const_IOSIZE, i32** %condpos, align 8
  %14 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin6 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 6
  %15 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin6, align 8
  %p_inlen7 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %15, i32 0, i32 8
  %16 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condneg = getelementptr inbounds %struct.event, %struct.event* %16, i32 0, i32 10
  store i32* %p_inlen7, i32** %condneg, align 8
  br label %return

if.end:                                           ; preds = %do.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.end
  %17 = load %struct.win*, %struct.win** %p, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
  %18 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool9 = icmp ne %struct.canvas* %18, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.8
  %19 = load %struct.win*, %struct.win** %p, align 8
  %20 = load %struct.event*, %struct.event** %ev.addr, align 8
  %call = call i32 @muchpending(%struct.win* %19, %struct.event* %20)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %if.end.8
  %21 = load %struct.win*, %struct.win** %p, align 8
  %w_zdisplay = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 91
  %22 = load %struct.display*, %struct.display** %w_zdisplay, align 8
  %tobool13 = icmp ne %struct.display* %22, null
  br i1 %tobool13, label %if.end.21, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  %23 = load %struct.win*, %struct.win** %p, align 8
  %w_blocked = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 5
  %24 = load i32, i32* %w_blocked, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.then.14
  %25 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condpos17 = getelementptr inbounds %struct.event, %struct.event* %25, i32 0, i32 9
  store i32* @const_one, i32** %condpos17, align 8
  %26 = load %struct.win*, %struct.win** %p, align 8
  %w_blocked18 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 5
  %27 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condneg19 = getelementptr inbounds %struct.event, %struct.event* %27, i32 0, i32 10
  store i32* %w_blocked18, i32** %condneg19, align 8
  br label %return

if.end.20:                                        ; preds = %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.12
  %28 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condpos22 = getelementptr inbounds %struct.event, %struct.event* %28, i32 0, i32 9
  %29 = load i32*, i32** %condpos22, align 8
  %tobool23 = icmp ne i32* %29, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %30 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condneg25 = getelementptr inbounds %struct.event, %struct.event* %30, i32 0, i32 10
  store i32* null, i32** %condneg25, align 8
  %31 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condpos26 = getelementptr inbounds %struct.event, %struct.event* %31, i32 0, i32 9
  store i32* null, i32** %condpos26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.21
  %32 = load %struct.win*, %struct.win** %p, align 8
  %w_outlen = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 19
  %33 = load i32, i32* %w_outlen, align 4
  store i32 %33, i32* %len, align 4
  %tobool28 = icmp ne i32 %33, 0
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.27
  %34 = load %struct.win*, %struct.win** %p, align 8
  %w_outlen30 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 19
  store i32 0, i32* %w_outlen30, align 4
  %35 = load %struct.win*, %struct.win** %p, align 8
  %36 = load %struct.win*, %struct.win** %p, align 8
  %w_outbuf = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 18
  %arraydecay31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_outbuf, i32 0, i32 0
  %37 = load i32, i32* %len, align 4
  call void @WriteString(%struct.win* %35, i8* %arraydecay31, i32 %37)
  br label %return

if.end.32:                                        ; preds = %if.end.27
  br label %do.body.33

do.body.33:                                       ; preds = %if.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.body.33
  %38 = load %struct.event*, %struct.event** %ev.addr, align 8
  %fd = getelementptr inbounds %struct.event, %struct.event* %38, i32 0, i32 3
  %39 = load i32, i32* %fd, align 4
  %arraydecay35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %40 = load i32, i32* %size, align 4
  %conv = sext i32 %40 to i64
  %call36 = call i64 @read(i32 %39, i8* %arraydecay35, i64 %conv)
  %conv37 = trunc i64 %call36 to i32
  store i32 %conv37, i32* %len, align 4
  %cmp38 = icmp slt i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.51

if.then.40:                                       ; preds = %do.end.34
  %call41 = call i32* @__errno_location() #8
  %41 = load i32, i32* %call41, align 4
  %cmp42 = icmp eq i32 %41, 4
  br i1 %cmp42, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.40
  %call44 = call i32* @__errno_location() #8
  %42 = load i32, i32* %call44, align 4
  %cmp45 = icmp eq i32 %42, 11
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false, %if.then.40
  br label %return

if.end.48:                                        ; preds = %lor.lhs.false
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.49
  %43 = load %struct.win*, %struct.win** %p, align 8
  call void @WindowDied(%struct.win* %43, i32 0, i32 0)
  br label %return

if.end.51:                                        ; preds = %do.end.34
  %44 = load i32, i32* %len, align 4
  %cmp52 = icmp eq i32 %44, 0
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.51
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.body.55
  %45 = load %struct.win*, %struct.win** %p, align 8
  call void @WindowDied(%struct.win* %45, i32 0, i32 0)
  br label %return

if.end.57:                                        ; preds = %if.end.51
  br label %do.body.58

do.body.58:                                       ; preds = %if.end.57
  br label %do.end.59

do.end.59:                                        ; preds = %do.body.58
  %46 = load %struct.win*, %struct.win** %p, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 1
  %47 = load i32, i32* %w_type, align 4
  %cmp60 = icmp eq i32 %47, 0
  br i1 %cmp60, label %if.then.62, label %if.end.80

if.then.62:                                       ; preds = %do.end.59
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i64 0
  %48 = load i8, i8* %arrayidx, align 1
  %tobool63 = icmp ne i8 %48, 0
  br i1 %tobool63, label %if.then.64, label %if.end.79

if.then.64:                                       ; preds = %if.then.62
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.body.65
  %arrayidx67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i64 0
  %49 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %49 to i32
  %and69 = and i32 %conv68, 16
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %do.end.66
  %50 = load %struct.win*, %struct.win** %p, align 8
  call void @WNewAutoFlow(%struct.win* %50, i32 0)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %do.end.66
  %arrayidx73 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i64 0
  %51 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %51 to i32
  %and75 = and i32 %conv74, 32
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.72
  %52 = load %struct.win*, %struct.win** %p, align 8
  call void @WNewAutoFlow(%struct.win* %52, i32 1)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.72
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.62
  %53 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %54 = load i32, i32* %len, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %len, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %do.end.59
  %55 = load i32, i32* %len, align 4
  %cmp81 = icmp eq i32 %55, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  br label %return

if.end.84:                                        ; preds = %if.end.80
  %56 = load i32, i32* @zmodem_mode, align 4
  %tobool85 = icmp ne i32 %56, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.90

land.lhs.true.86:                                 ; preds = %if.end.84
  %57 = load %struct.win*, %struct.win** %p, align 8
  %58 = load i8*, i8** %bp, align 8
  %59 = load i32, i32* %len, align 4
  %call87 = call i32 @zmodem_parse(%struct.win* %57, i8* %58, i32 %59)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %land.lhs.true.86
  br label %return

if.end.90:                                        ; preds = %land.lhs.true.86, %if.end.84
  %60 = load i32, i32* %wtop, align 4
  %tobool91 = icmp ne i32 %60, 0
  br i1 %tobool91, label %if.then.92, label %if.end.102

if.then.92:                                       ; preds = %if.end.90
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.92
  br label %do.end.94

do.end.94:                                        ; preds = %do.body.93
  %61 = load i8*, i8** %bp, align 8
  %62 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin95 = getelementptr inbounds %struct.win, %struct.win* %62, i32 0, i32 6
  %63 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin95, align 8
  %p_inbuf = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %63, i32 0, i32 7
  %arraydecay96 = getelementptr inbounds [4096 x i8], [4096 x i8]* %p_inbuf, i32 0, i32 0
  %64 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin97 = getelementptr inbounds %struct.win, %struct.win* %64, i32 0, i32 6
  %65 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin97, align 8
  %p_inlen98 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %65, i32 0, i32 8
  %66 = load i32, i32* %p_inlen98, align 4
  %idx.ext = sext i32 %66 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay96, i64 %idx.ext
  %67 = load i32, i32* %len, align 4
  %conv99 = sext i32 %67 to i64
  call void @bcopy(i8* %61, i8* %add.ptr, i64 %conv99) #6
  %68 = load i32, i32* %len, align 4
  %69 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin100 = getelementptr inbounds %struct.win, %struct.win* %69, i32 0, i32 6
  %70 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin100, align 8
  %p_inlen101 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %70, i32 0, i32 8
  %71 = load i32, i32* %p_inlen101, align 4
  %add = add nsw i32 %71, %68
  store i32 %add, i32* %p_inlen101, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.94, %if.end.90
  %72 = load %struct.win*, %struct.win** %p, align 8
  %w_layer103 = getelementptr inbounds %struct.win, %struct.win* %72, i32 0, i32 3
  call void @LayPause(%struct.layer* %w_layer103, i32 1)
  %73 = load %struct.win*, %struct.win** %p, align 8
  %74 = load i8*, i8** %bp, align 8
  %75 = load i32, i32* %len, align 4
  call void @WriteString(%struct.win* %73, i8* %74, i32 %75)
  %76 = load %struct.win*, %struct.win** %p, align 8
  %w_layer104 = getelementptr inbounds %struct.win, %struct.win* %76, i32 0, i32 3
  call void @LayPause(%struct.layer* %w_layer104, i32 0)
  br label %return

return:                                           ; preds = %if.end.102, %if.then.89, %if.then.83, %do.end.56, %do.end.50, %if.then.47, %if.then.29, %if.then.16, %if.then.11, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @win_writeev_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  %len = alloca i32, align 4
  %pa = alloca %struct.paster*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.win*
  store %struct.win* %1, %struct.win** %p, align 8
  %2 = load %struct.win*, %struct.win** %p, align 8
  %w_inlen = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 17
  %3 = load i32, i32* %w_inlen, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.event*, %struct.event** %ev.addr, align 8
  %fd = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 3
  %5 = load i32, i32* %fd, align 4
  %6 = load %struct.win*, %struct.win** %p, align 8
  %w_inbuf = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 16
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_inbuf, i32 0, i32 0
  %7 = load %struct.win*, %struct.win** %p, align 8
  %w_inlen1 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 17
  %8 = load i32, i32* %w_inlen1, align 4
  %conv = sext i32 %8 to i64
  %call = call i64 @write(i32 %5, i8* %arraydecay, i64 %conv)
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %len, align 4
  %cmp = icmp sle i32 %conv2, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %do.end
  %9 = load %struct.win*, %struct.win** %p, align 8
  %w_inlen5 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 17
  %10 = load i32, i32* %w_inlen5, align 4
  store i32 %10, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %do.end
  %11 = load i32, i32* %len, align 4
  %12 = load %struct.win*, %struct.win** %p, align 8
  %w_inlen6 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 17
  %13 = load i32, i32* %w_inlen6, align 4
  %sub = sub nsw i32 %13, %11
  store i32 %sub, i32* %w_inlen6, align 4
  %tobool7 = icmp ne i32 %sub, 0
  br i1 %tobool7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.end
  %14 = load %struct.win*, %struct.win** %p, align 8
  %w_inbuf9 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 16
  %arraydecay10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_inbuf9, i32 0, i32 0
  %15 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay10, i64 %idx.ext
  %16 = load %struct.win*, %struct.win** %p, align 8
  %w_inbuf11 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 16
  %arraydecay12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_inbuf11, i32 0, i32 0
  %17 = load %struct.win*, %struct.win** %p, align 8
  %w_inlen13 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 17
  %18 = load i32, i32* %w_inlen13, align 4
  %conv14 = sext i32 %18 to i64
  call void @bcopy(i8* %add.ptr, i8* %arraydecay12, i64 %conv14) #6
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.8, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %19 = load %struct.win*, %struct.win** %p, align 8
  %w_paster = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 80
  %pa_pastelen = getelementptr inbounds %struct.paster, %struct.paster* %w_paster, i32 0, i32 2
  %20 = load i32, i32* %pa_pastelen, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.16
  %21 = load %struct.win*, %struct.win** %p, align 8
  %w_slowpaste = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 76
  %22 = load i32, i32* %w_slowpaste, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %if.end.25, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true
  %23 = load %struct.win*, %struct.win** %p, align 8
  %w_paster20 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 80
  store %struct.paster* %w_paster20, %struct.paster** %pa, align 8
  %24 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pastelayer = getelementptr inbounds %struct.paster, %struct.paster* %24, i32 0, i32 3
  %25 = load %struct.layer*, %struct.layer** %pa_pastelayer, align 8
  store %struct.layer* %25, %struct.layer** @flayer, align 8
  %26 = load %struct.layer*, %struct.layer** @flayer, align 8
  %tobool21 = icmp ne %struct.layer* %26, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.19
  %27 = load %struct.win*, %struct.win** %p, align 8
  %28 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pasteptr = getelementptr inbounds %struct.paster, %struct.paster* %28, i32 0, i32 1
  %29 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pastelen23 = getelementptr inbounds %struct.paster, %struct.paster* %29, i32 0, i32 2
  %30 = load %struct.paster*, %struct.paster** %pa, align 8
  call void @DoProcess(%struct.win* %27, i8** %pa_pasteptr, i32* %pa_pastelen23, %struct.paster* %30)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %land.lhs.true, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @paste_slowev_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %pa = alloca %struct.paster*, align 8
  %p = alloca %struct.win*, align 8
  %l = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.paster*
  store %struct.paster* %1, %struct.paster** %pa, align 8
  store i32 1, i32* %l, align 4
  %2 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pastelayer = getelementptr inbounds %struct.paster, %struct.paster* %2, i32 0, i32 3
  %3 = load %struct.layer*, %struct.layer** %pa_pastelayer, align 8
  store %struct.layer* %3, %struct.layer** @flayer, align 8
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %tobool = icmp ne %struct.layer* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pastelen = getelementptr inbounds %struct.paster, %struct.paster* %5, i32 0, i32 2
  store i32 0, i32* %pa_pastelen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pastelen1 = getelementptr inbounds %struct.paster, %struct.paster* %6, i32 0, i32 2
  %7 = load i32, i32* %pa_pastelen1, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.10

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 9
  %9 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 7
  %10 = load i8*, i8** %l_data, align 8
  %11 = bitcast i8* %10 to %struct.win*
  store %struct.win* %11, %struct.win** %p, align 8
  %12 = load %struct.win*, %struct.win** %p, align 8
  %13 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pasteptr = getelementptr inbounds %struct.paster, %struct.paster* %13, i32 0, i32 1
  %14 = load %struct.paster*, %struct.paster** %pa, align 8
  call void @DoProcess(%struct.win* %12, i8** %pa_pasteptr, i32* %l, %struct.paster* %14)
  %15 = load i32, i32* %l, align 4
  %sub = sub nsw i32 1, %15
  %16 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pastelen5 = getelementptr inbounds %struct.paster, %struct.paster* %16, i32 0, i32 2
  %17 = load i32, i32* %pa_pastelen5, align 4
  %sub6 = sub nsw i32 %17, %sub
  store i32 %sub6, i32* %pa_pastelen5, align 4
  %18 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_pastelen7 = getelementptr inbounds %struct.paster, %struct.paster* %18, i32 0, i32 2
  %19 = load i32, i32* %pa_pastelen7, align 4
  %cmp = icmp sgt i32 %19, 0
  br i1 %cmp, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %20 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_slowev = getelementptr inbounds %struct.paster, %struct.paster* %20, i32 0, i32 4
  %21 = load %struct.win*, %struct.win** %p, align 8
  %w_slowpaste = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 76
  %22 = load i32, i32* %w_slowpaste, align 4
  call void @SetTimeout(%struct.event* %pa_slowev, i32 %22)
  %23 = load %struct.paster*, %struct.paster** %pa, align 8
  %pa_slowev9 = getelementptr inbounds %struct.paster, %struct.paster* %23, i32 0, i32 4
  call void @evenq(%struct.event* %pa_slowev9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.3, %if.then.8, %if.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @win_silenceev_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  %cv = alloca %struct.canvas*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.win*
  store %struct.win* %1, %struct.win** %p, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %2, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %do.end
  %3 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %3, null
  br i1 %tobool, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 3
  %5 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %5, %struct.canvas** %cv, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool2 = icmp ne %struct.canvas* %6, null
  br i1 %tobool2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 9
  %8 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 9
  %9 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %10 = load %struct.win*, %struct.win** %p, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 3
  %cmp = icmp eq %struct.layer* %9, %w_layer
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %for.end

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 0
  %12 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %12, %struct.canvas** %cv, align 8
  br label %for.cond.1

for.end:                                          ; preds = %if.then, %for.cond.1
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool4 = icmp ne %struct.canvas* %13, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.end
  br label %for.inc.14

if.end.6:                                         ; preds = %for.end
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 1
  %15 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %u_id = getelementptr inbounds %struct.acluser, %struct.acluser* %15, i32 0, i32 9
  %16 = load i32, i32* %u_id, align 4
  %shr = ashr i32 %16, 3
  %idxprom = sext i32 %shr to i64
  %17 = load %struct.win*, %struct.win** %p, align 8
  %w_lio_notify = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 32
  %18 = load i8*, i8** %w_lio_notify, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_user7 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 1
  %21 = load %struct.acluser*, %struct.acluser** %d_user7, align 8
  %u_id8 = getelementptr inbounds %struct.acluser, %struct.acluser* %21, i32 0, i32 9
  %22 = load i32, i32* %u_id8, align 4
  %and = and i32 %22, 7
  %shr9 = ashr i32 128, %and
  %and10 = and i32 %conv, %shr9
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.6
  br label %for.inc.14

if.end.13:                                        ; preds = %if.end.6
  %23 = load %struct.win*, %struct.win** %p, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 9
  %24 = load i32, i32* %w_number, align 4
  %25 = load %struct.win*, %struct.win** %p, align 8
  %w_silencewait = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 71
  %26 = load i32, i32* %w_silencewait, align 4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0), i32 %24, i32 %26)
  %27 = load %struct.win*, %struct.win** %p, align 8
  %w_silence = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 72
  store i32 2, i32* %w_silence, align 4
  %28 = load %struct.win*, %struct.win** %p, align 8
  call void @WindowChanged(%struct.win* %28, i32 102)
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end.13, %if.then.12, %if.then.5
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 0
  %30 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %30, %struct.display** @display, align 8
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @win_destroyev_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.event*, %struct.event** %ev.addr, align 8
  %data1 = getelementptr inbounds %struct.event, %struct.event* %0, i32 0, i32 2
  %1 = load i8*, i8** %data1, align 8
  %2 = bitcast i8* %1 to %struct.win*
  store %struct.win* %2, %struct.win** %p, align 8
  %3 = load %struct.win*, %struct.win** %p, align 8
  %4 = load %struct.win*, %struct.win** %p, align 8
  %w_exitstatus = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 94
  %5 = load i32, i32* %w_exitstatus, align 4
  call void @WindowDied(%struct.win* %3, i32 %5, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @RemakeWindow(%struct.win* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.win*, align 8
  %TtyName = alloca i8*, align 8
  %lflag = alloca i32, align 4
  %f = alloca i32, align 4
  %d = alloca %struct.display*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_default, i32 0, i32 7), align 4
  store i32 %0, i32* %lflag, align 4
  %1 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_cmdargs = getelementptr inbounds %struct.win, %struct.win* %1, i32 0, i32 83
  %arraydecay = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs, i32 0, i32 0
  %2 = load i32, i32* %lflag, align 4
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 1
  %call = call i32 @OpenDevice(i8** %arraydecay, i32 %2, i32* %w_type, i8** %TtyName)
  store i32 %call, i32* %f, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_destroyev = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 93
  call void @evdeq(%struct.event* %w_destroyev)
  %5 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tty = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 89
  %arraydecay1 = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty, i32 0, i32 0
  %6 = load i8*, i8** %TtyName, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load i8*, i8** %TtyName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_title = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 21
  %10 = load i8*, i8** %w_title, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ %10, %cond.false ]
  %call2 = call i8* @strncpy(i8* %arraydecay1, i8* %cond, i64 767) #6
  %11 = load i32, i32* %f, align 4
  %12 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 15
  store i32 %11, i32* %w_ptyfd, align 4
  %13 = load i32, i32* %f, align 4
  %14 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_readev = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 10
  %fd = getelementptr inbounds %struct.event, %struct.event* %w_readev, i32 0, i32 3
  store i32 %13, i32* %fd, align 4
  %15 = load i32, i32* %f, align 4
  %16 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_writeev = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 11
  %fd3 = getelementptr inbounds %struct.event, %struct.event* %w_writeev, i32 0, i32 3
  store i32 %15, i32* %fd3, align 4
  %17 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_readev4 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 10
  call void @evenq(%struct.event* %w_readev4)
  %18 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_writeev5 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 11
  call void @evenq(%struct.event* %w_writeev5)
  %19 = load i32, i32* @VerboseCreate, align 4
  %tobool6 = icmp ne i32 %19, 0
  br i1 %tobool6, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %cond.end
  %20 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %20, %struct.display** %d, align 8
  %21 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WriteString(%struct.win* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 9)
  %22 = load %struct.win*, %struct.win** %p.addr, align 8
  %23 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_title8 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 21
  %24 = load i8*, i8** %w_title8, align 8
  %25 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_title9 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 21
  %26 = load i8*, i8** %w_title9, align 8
  %call10 = call i64 @strlen(i8* %26) #7
  %conv11 = trunc i64 %call10 to i32
  call void @WriteString(%struct.win* %22, i8* %24, i32 %conv11)
  %27 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WriteString(%struct.win* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 2)
  store i32 0, i32* %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %28 = load i32, i32* %f, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_cmdargs12 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 83
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs12, i32 0, i64 %idxprom
  %30 = load i8*, i8** %arrayidx, align 8
  %tobool13 = icmp ne i8* %30, null
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WriteString(%struct.win* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 1)
  %32 = load %struct.win*, %struct.win** %p.addr, align 8
  %33 = load i32, i32* %f, align 4
  %idxprom14 = sext i32 %33 to i64
  %34 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_cmdargs15 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 83
  %arrayidx16 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs15, i32 0, i64 %idxprom14
  %35 = load i8*, i8** %arrayidx16, align 8
  %36 = load i32, i32* %f, align 4
  %idxprom17 = sext i32 %36 to i64
  %37 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_cmdargs18 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 83
  %arrayidx19 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs18, i32 0, i64 %idxprom17
  %38 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i64 @strlen(i8* %38) #7
  %conv21 = trunc i64 %call20 to i32
  call void @WriteString(%struct.win* %32, i8* %35, i32 %conv21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %f, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %f, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WriteString(%struct.win* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 2)
  %41 = load %struct.display*, %struct.display** %d, align 8
  store %struct.display* %41, %struct.display** @display, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %cond.end
  %42 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_deadpid = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 82
  store i32 0, i32* %w_deadpid, align 4
  %43 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pid = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 81
  store i32 0, i32* %w_pid, align 4
  %44 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_type23 = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 1
  %45 = load i32, i32* %w_type23, align 4
  %cmp24 = icmp eq i32 %45, 0
  br i1 %cmp24, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %if.end.22
  %46 = load %struct.win*, %struct.win** %p.addr, align 8
  %47 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_cmdargs27 = getelementptr inbounds %struct.win, %struct.win* %47, i32 0, i32 83
  %arraydecay28 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs27, i32 0, i32 0
  %48 = load i8*, i8** %TtyName, align 8
  %call29 = call i32 @ForkWindow(%struct.win* %46, i8** %arraydecay28, i8* %48)
  %49 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pid30 = getelementptr inbounds %struct.win, %struct.win* %49, i32 0, i32 81
  store i32 %call29, i32* %w_pid30, align 4
  %50 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pid31 = getelementptr inbounds %struct.win, %struct.win* %50, i32 0, i32 81
  %51 = load i32, i32* %w_pid31, align 4
  %cmp32 = icmp slt i32 %51, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.26
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.22
  %52 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_slot = getelementptr inbounds %struct.win, %struct.win* %52, i32 0, i32 87
  %53 = load i8*, i8** %w_slot, align 8
  %cmp37 = icmp eq i8* %53, null
  br i1 %cmp37, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end.36
  %54 = load %struct.display*, %struct.display** @display, align 8
  %tobool39 = icmp ne %struct.display* %54, null
  br i1 %tobool39, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %55 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_lflag = getelementptr inbounds %struct.win, %struct.win* %55, i32 0, i32 86
  %56 = load i32, i32* %w_lflag, align 4
  %and = and i32 %56, 2
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %57 = load %struct.win*, %struct.win** %p.addr, align 8
  %call42 = call i32 @SetUtmp(%struct.win* %57)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %lor.lhs.false, %if.end.36
  %58 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WindowChanged(%struct.win* %58, i32 102)
  %59 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %59, i32 0, i32 9
  %60 = load i32, i32* %w_number, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.34, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare void @evdeq(%struct.event*) #2

; Function Attrs: nounwind uwtable
define void @CloseDevice(%struct.win* %wp) #0 {
entry:
  %wp.addr = alloca %struct.win*, align 8
  store %struct.win* %wp, %struct.win** %wp.addr, align 8
  %0 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 15
  %1 = load i32, i32* %w_ptyfd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 1
  %3 = load i32, i32* %w_type, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_tty = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 89
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty, i32 0, i32 0
  %call = call i32 @chmod(i8* %arraydecay, i32 438) #6
  %5 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_tty3 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 89
  %arraydecay4 = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty3, i32 0, i32 0
  %call5 = call i32 @chown(i8* %arraydecay4, i32 0, i32 0) #6
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_ptyfd7 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 15
  %7 = load i32, i32* %w_ptyfd7, align 4
  %call8 = call i32 @close(i32 %7)
  %8 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_ptyfd9 = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 15
  store i32 -1, i32* %w_ptyfd9, align 4
  %9 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_tty10 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 89
  %arrayidx = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty10, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %10 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_readev = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 10
  call void @evdeq(%struct.event* %w_readev)
  %11 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_writeev = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 11
  call void @evdeq(%struct.event* %w_writeev)
  %12 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_writeev11 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 11
  %fd = getelementptr inbounds %struct.event, %struct.event* %w_writeev11, i32 0, i32 3
  store i32 -1, i32* %fd, align 4
  %13 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_readev12 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 10
  %fd13 = getelementptr inbounds %struct.event, %struct.event* %w_readev12, i32 0, i32 3
  store i32 -1, i32* %fd13, align 4
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #1

; Function Attrs: nounwind
declare i32 @chown(i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @FreePseudowin(%struct.win* %w) #0 {
entry:
  %w.addr = alloca %struct.win*, align 8
  %pwin = alloca %struct.pseudowin*, align 8
  %flag = alloca i32, align 4
  store %struct.win* %w, %struct.win** %w.addr, align 8
  %0 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 6
  %1 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  store %struct.pseudowin* %1, %struct.pseudowin** %pwin, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 15
  %3 = load i32, i32* %w_ptyfd, align 4
  %call = call i32 (i32, i32, ...) @fcntl(i32 %3, i32 4, i32 2048)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %call1 = call i32* @__errno_location() #8
  %4 = load i32, i32* %call1, align 4
  call void (i32, i8*, ...) @Msg(i32 %4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %5 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 1
  %6 = load i32, i32* %w_type, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_fdpat = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %7, i32 0, i32 0
  %8 = load i32, i32* %p_fdpat, align 4
  %and = and i32 %8, 1
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end.10, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %flag, align 4
  %9 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_ptyfd4 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 15
  %10 = load i32, i32* %w_ptyfd4, align 4
  %11 = bitcast i32* %flag to i8*
  %call5 = call i32 (i32, i64, ...) @ioctl(i32 %10, i64 21536, i8* %11) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.3
  %call8 = call i32* @__errno_location() #8
  %12 = load i32, i32* %call8, align 4
  call void (i32, i8*, ...) @Msg(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.3
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %land.lhs.true, %if.end
  %13 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_tty = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %13, i32 0, i32 6
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %p_tty, i32 0, i32 0
  %call11 = call i32 @chmod(i8* %arraydecay, i32 438) #6
  %14 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_tty12 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %14, i32 0, i32 6
  %arraydecay13 = getelementptr inbounds [768 x i8], [768 x i8]* %p_tty12, i32 0, i32 0
  %call14 = call i32 @chown(i8* %arraydecay13, i32 0, i32 0) #6
  %15 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_ptyfd = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %15, i32 0, i32 2
  %16 = load i32, i32* %p_ptyfd, align 4
  %cmp15 = icmp sge i32 %16, 0
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.10
  %17 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_ptyfd17 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %17, i32 0, i32 2
  %18 = load i32, i32* %p_ptyfd17, align 4
  %call18 = call i32 @close(i32 %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.10
  %19 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_readev = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %19, i32 0, i32 3
  call void @evdeq(%struct.event* %p_readev)
  %20 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_writeev = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %20, i32 0, i32 4
  call void @evdeq(%struct.event* %p_writeev)
  %21 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_readev = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 10
  %condneg = getelementptr inbounds %struct.event, %struct.event* %w_readev, i32 0, i32 10
  %22 = load i32*, i32** %condneg, align 8
  %23 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_inlen = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %23, i32 0, i32 8
  %cmp20 = icmp eq i32* %22, %p_inlen
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.19
  %24 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_readev22 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 10
  %condneg23 = getelementptr inbounds %struct.event, %struct.event* %w_readev22, i32 0, i32 10
  store i32* null, i32** %condneg23, align 8
  %25 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_readev24 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 10
  %condpos = getelementptr inbounds %struct.event, %struct.event* %w_readev24, i32 0, i32 9
  store i32* null, i32** %condpos, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.19
  %26 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_readev26 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 10
  call void @evenq(%struct.event* %w_readev26)
  %27 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %28 = bitcast %struct.pseudowin* %27 to i8*
  call void @free(i8* %28) #6
  %29 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_pwin27 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 6
  store %struct.pseudowin* null, %struct.pseudowin** %w_pwin27, align 8
  ret void
}

declare i32 @RemoveUtmp(%struct.win*) #2

declare i32 @TtyGrabConsole(i32, i32, i8*) #2

declare void @KillLayerChain(%struct.layer*) #2

declare void @RethinkViewportOffsets(%struct.canvas*) #2

declare void @LayerCleanupMemory(%struct.layer*) #2

declare void @FreeWindowAcl(%struct.win*) #2

declare void @FreePaster(%struct.paster*) #2

; Function Attrs: nounwind uwtable
define i32 @winexec(i8** %av) #0 {
entry:
  %retval = alloca i32, align 4
  %av.addr = alloca i8**, align 8
  %pp = alloca i8**, align 8
  %p = alloca i8*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %l = alloca i32, align 4
  %w = alloca %struct.win*, align 8
  %pwin = alloca %struct.pseudowin*, align 8
  %type = alloca i32, align 4
  %flag = alloca i32, align 4
  store i8** %av, i8*** %av.addr, align 8
  store i32 0, i32* %r, align 4
  store i32 0, i32* %l, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.win*, %struct.win** @fore, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.win*, %struct.win** @windows, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.win* [ %1, %cond.true ], [ %2, %cond.false ]
  store %struct.win* %cond, %struct.win** %w, align 8
  %cmp = icmp eq %struct.win* %cond, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %3 = load i8**, i8*** %av.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.win*, %struct.win** %w, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 6
  %6 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  %tobool2 = icmp ne %struct.pseudowin* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %7 = load %struct.win*, %struct.win** %w, align 8
  %w_pwin4 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 6
  %8 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin4, align 8
  %tobool5 = icmp ne %struct.pseudowin* %8, null
  br i1 %tobool5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %if.then.3
  %9 = load %struct.win*, %struct.win** %w, align 8
  %w_pwin7 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 6
  %10 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin7, align 8
  %p_cmd = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %10, i32 0, i32 5
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %p_cmd, i32 0, i32 0
  br label %cond.end.9

cond.false.8:                                     ; preds = %if.then.3
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.6
  %cond10 = phi i8* [ %arraydecay, %cond.true.6 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %cond.false.8 ]
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* %cond10)
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %11 = load %struct.win*, %struct.win** %w, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 15
  %12 = load i32, i32* %w_ptyfd, align 4
  %cmp12 = icmp slt i32 %12, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %call = call noalias i8* @calloc(i64 1, i64 5816) #6
  %13 = bitcast i8* %call to %struct.pseudowin*
  store %struct.pseudowin* %13, %struct.pseudowin** %pwin, align 8
  %tobool15 = icmp ne %struct.pseudowin* %13, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %14 = load i8**, i8*** %av.addr, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %16 = load i8*, i8** %s, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv, 32
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %s, align 8
  store i8* %19, i8** %p, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.32, %for.end
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %conv21 = sext i8 %21 to i32
  %cmp22 = icmp eq i32 %conv21, 58
  br i1 %cmp22, label %lor.end, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %for.cond.20
  %22 = load i8*, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 46
  br i1 %cmp26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.24
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv28 = sext i8 %25 to i32
  %cmp29 = icmp eq i32 %conv28, 33
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.24, %for.cond.20
  %26 = phi i1 [ true, %lor.lhs.false.24 ], [ true, %for.cond.20 ], [ %cmp29, %lor.rhs ]
  br i1 %26, label %for.body.31, label %for.end.34

for.body.31:                                      ; preds = %lor.end
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.31
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr33, i8** %p, align 8
  br label %for.cond.20

for.end.34:                                       ; preds = %lor.end
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv35 = sext i8 %29 to i32
  %cmp36 = icmp ne i32 %conv35, 124
  br i1 %cmp36, label %if.then.38, label %if.end.47

if.then.38:                                       ; preds = %for.end.34
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.38
  %30 = load i8*, i8** %p, align 8
  %31 = load i8, i8* %30, align 1
  %conv39 = sext i8 %31 to i32
  %tobool40 = icmp ne i32 %conv39, 0
  br i1 %tobool40, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %32 = load i8*, i8** %p, align 8
  %33 = load i8*, i8** %s, align 8
  %cmp41 = icmp ugt i8* %32, %33
  br i1 %cmp41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %34 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 -1
  %35 = load i8, i8* %arrayidx, align 1
  %conv43 = sext i8 %35 to i32
  %cmp44 = icmp eq i32 %conv43, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %36 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp44, %land.rhs ]
  br i1 %36, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %incdec.ptr46, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.47

if.end.47:                                        ; preds = %while.end, %for.end.34
  %38 = load i8*, i8** %p, align 8
  %39 = load i8, i8* %38, align 1
  %conv48 = sext i8 %39 to i32
  %cmp49 = icmp eq i32 %conv48, 124
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.47
  store i32 4096, i32* %l, align 4
  %40 = load i8*, i8** %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr52, i8** %p, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.47
  %41 = load i8*, i8** %p, align 8
  %42 = load i8, i8* %41, align 1
  %tobool54 = icmp ne i8 %42, 0
  br i1 %tobool54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.end.53
  %43 = load i8*, i8** %p, align 8
  %44 = load i8**, i8*** %av.addr, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %44, i64 0
  store i8* %43, i8** %arrayidx56, align 8
  br label %if.end.58

if.else:                                          ; preds = %if.end.53
  %45 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %incdec.ptr57, i8*** %av.addr, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.55
  %46 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_cmd59 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %46, i32 0, i32 5
  %arraydecay60 = getelementptr inbounds [768 x i8], [768 x i8]* %p_cmd59, i32 0, i32 0
  store i8* %arraydecay60, i8** %t, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.84, %if.end.58
  %47 = load i32, i32* %i, align 4
  %cmp62 = icmp slt i32 %47, 3
  br i1 %cmp62, label %for.body.64, label %for.end.85

for.body.64:                                      ; preds = %for.cond.61
  %48 = load i8*, i8** %s, align 8
  %49 = load i8*, i8** %p, align 8
  %cmp65 = icmp ult i8* %48, %49
  br i1 %cmp65, label %cond.true.67, label %cond.false.70

cond.true.67:                                     ; preds = %for.body.64
  %50 = load i8*, i8** %s, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr68, i8** %s, align 8
  %51 = load i8, i8* %50, align 1
  %conv69 = sext i8 %51 to i32
  br label %cond.end.71

cond.false.70:                                    ; preds = %for.body.64
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.67
  %cond72 = phi i32 [ %conv69, %cond.true.67 ], [ 46, %cond.false.70 ]
  %conv73 = trunc i32 %cond72 to i8
  %52 = load i8*, i8** %t, align 8
  store i8 %conv73, i8* %52, align 1
  %53 = load i8*, i8** %t, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr74, i8** %t, align 8
  %54 = load i8, i8* %53, align 1
  %conv75 = sext i8 %54 to i32
  switch i32 %conv75, label %sw.epilog [
    i32 46, label %sw.bb
    i32 124, label %sw.bb
    i32 33, label %sw.bb.76
    i32 58, label %sw.bb.80
  ]

sw.bb:                                            ; preds = %cond.end.71, %cond.end.71
  %55 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %55, 2
  %shl = shl i32 1, %mul
  %56 = load i32, i32* %l, align 4
  %or = or i32 %56, %shl
  store i32 %or, i32* %l, align 4
  br label %sw.epilog

sw.bb.76:                                         ; preds = %cond.end.71
  %57 = load i32, i32* %i, align 4
  %mul77 = mul nsw i32 %57, 2
  %shl78 = shl i32 2, %mul77
  %58 = load i32, i32* %l, align 4
  %or79 = or i32 %58, %shl78
  store i32 %or79, i32* %l, align 4
  br label %sw.epilog

sw.bb.80:                                         ; preds = %cond.end.71
  %59 = load i32, i32* %i, align 4
  %mul81 = mul nsw i32 %59, 2
  %shl82 = shl i32 3, %mul81
  %60 = load i32, i32* %l, align 4
  %or83 = or i32 %60, %shl82
  store i32 %or83, i32* %l, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.71, %sw.bb.80, %sw.bb.76, %sw.bb
  br label %for.inc.84

for.inc.84:                                       ; preds = %sw.epilog
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.61

for.end.85:                                       ; preds = %for.cond.61
  %62 = load i32, i32* %l, align 4
  %and = and i32 %62, 4096
  %tobool86 = icmp ne i32 %and, 0
  br i1 %tobool86, label %if.then.87, label %if.end.96

if.then.87:                                       ; preds = %for.end.85
  %63 = load i8*, i8** %t, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr88, i8** %t, align 8
  store i8 124, i8* %63, align 1
  %64 = load i32, i32* %l, align 4
  %and89 = and i32 %64, 3
  %cmp90 = icmp eq i32 %and89, 1
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.then.87
  %65 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_cmd93 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %65, i32 0, i32 5
  %arraydecay94 = getelementptr inbounds [768 x i8], [768 x i8]* %p_cmd93, i32 0, i32 0
  store i8 33, i8* %arraydecay94, align 1
  %66 = load i32, i32* %l, align 4
  %xor = xor i32 %66, 3
  store i32 %xor, i32* %l, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %if.then.87
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %for.end.85
  %67 = load i32, i32* %l, align 4
  %and97 = and i32 %67, 2
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.end.101, label %if.then.99

if.then.99:                                       ; preds = %if.end.96
  %68 = load i32, i32* %l, align 4
  %or100 = or i32 %68, 4096
  store i32 %or100, i32* %l, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.96
  %69 = load i8*, i8** %t, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr102, i8** %t, align 8
  store i8 32, i8* %69, align 1
  %70 = load i32, i32* %l, align 4
  %71 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_fdpat = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %71, i32 0, i32 0
  store i32 %70, i32* %p_fdpat, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.101
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 764, i32* %l, align 4
  %72 = load i8**, i8*** %av.addr, align 8
  store i8** %72, i8*** %pp, align 8
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.122, %do.end
  %73 = load i8**, i8*** %pp, align 8
  %74 = load i8*, i8** %73, align 8
  %tobool104 = icmp ne i8* %74, null
  br i1 %tobool104, label %for.body.105, label %for.end.124

for.body.105:                                     ; preds = %for.cond.103
  %75 = load i8**, i8*** %pp, align 8
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %p, align 8
  br label %while.cond.106

while.cond.106:                                   ; preds = %while.body.113, %for.body.105
  %77 = load i8*, i8** %p, align 8
  %78 = load i8, i8* %77, align 1
  %conv107 = sext i8 %78 to i32
  %tobool108 = icmp ne i32 %conv107, 0
  br i1 %tobool108, label %land.rhs.109, label %land.end.112

land.rhs.109:                                     ; preds = %while.cond.106
  %79 = load i32, i32* %l, align 4
  %dec = add nsw i32 %79, -1
  store i32 %dec, i32* %l, align 4
  %cmp110 = icmp sgt i32 %79, 0
  br label %land.end.112

land.end.112:                                     ; preds = %land.rhs.109, %while.cond.106
  %80 = phi i1 [ false, %while.cond.106 ], [ %cmp110, %land.rhs.109 ]
  br i1 %80, label %while.body.113, label %while.end.116

while.body.113:                                   ; preds = %land.end.112
  %81 = load i8*, i8** %p, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr114, i8** %p, align 8
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %t, align 8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr115, i8** %t, align 8
  store i8 %82, i8* %83, align 1
  br label %while.cond.106

while.end.116:                                    ; preds = %land.end.112
  %84 = load i32, i32* %l, align 4
  %cmp117 = icmp sle i32 %84, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %while.end.116
  br label %for.end.124

if.end.120:                                       ; preds = %while.end.116
  %85 = load i8*, i8** %t, align 8
  %incdec.ptr121 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr121, i8** %t, align 8
  store i8 32, i8* %85, align 1
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.120
  %86 = load i8**, i8*** %pp, align 8
  %incdec.ptr123 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %incdec.ptr123, i8*** %pp, align 8
  br label %for.cond.103

for.end.124:                                      ; preds = %if.then.119, %for.cond.103
  %87 = load i8*, i8** %t, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %incdec.ptr125, i8** %t, align 8
  store i8 0, i8* %incdec.ptr125, align 1
  br label %do.body.126

do.body.126:                                      ; preds = %for.end.124
  br label %do.end.127

do.end.127:                                       ; preds = %do.body.126
  %88 = load i8**, i8*** %av.addr, align 8
  %call128 = call i32 @OpenDevice(i8** %88, i32 0, i32* %type, i8** %t)
  %89 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_ptyfd = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %89, i32 0, i32 2
  store i32 %call128, i32* %p_ptyfd, align 4
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %do.end.127
  %90 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %91 = bitcast %struct.pseudowin* %90 to i8*
  call void @free(i8* %91) #6
  store i32 -1, i32* %retval
  br label %return

if.end.132:                                       ; preds = %do.end.127
  %92 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_tty = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %92, i32 0, i32 6
  %arraydecay133 = getelementptr inbounds [768 x i8], [768 x i8]* %p_tty, i32 0, i32 0
  %93 = load i8*, i8** %t, align 8
  %call134 = call i8* @strncpy(i8* %arraydecay133, i8* %93, i64 767) #6
  %94 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %95 = load %struct.win*, %struct.win** %w, align 8
  %w_pwin135 = getelementptr inbounds %struct.win, %struct.win* %95, i32 0, i32 6
  store %struct.pseudowin* %94, %struct.pseudowin** %w_pwin135, align 8
  %96 = load i32, i32* %type, align 4
  %cmp136 = icmp ne i32 %96, 0
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.end.132
  %97 = load %struct.win*, %struct.win** %w, align 8
  call void @FreePseudowin(%struct.win* %97)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.139:                                       ; preds = %if.end.132
  %98 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_fdpat140 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %98, i32 0, i32 0
  %99 = load i32, i32* %p_fdpat140, align 4
  %and141 = and i32 %99, 1
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %if.end.139
  %100 = load %struct.win*, %struct.win** %w, align 8
  %w_readev = getelementptr inbounds %struct.win, %struct.win* %100, i32 0, i32 10
  call void @evdeq(%struct.event* %w_readev)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %if.end.139
  store i32 0, i32* %flag, align 4
  %101 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_ptyfd145 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %101, i32 0, i32 2
  %102 = load i32, i32* %p_ptyfd145, align 4
  %103 = bitcast i32* %flag to i8*
  %call146 = call i32 (i32, i64, ...) @ioctl(i32 %102, i64 21536, i8* %103) #6
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.end.144
  %call149 = call i32* @__errno_location() #8
  %104 = load i32, i32* %call149, align 4
  call void (i32, i8*, ...) @Msg(i32 %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  %105 = load %struct.win*, %struct.win** %w, align 8
  call void @FreePseudowin(%struct.win* %105)
  store i32 -1, i32* %retval
  br label %return

if.end.150:                                       ; preds = %if.end.144
  %106 = load %struct.win*, %struct.win** %w, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %106, i32 0, i32 1
  %107 = load i32, i32* %w_type, align 4
  %cmp151 = icmp eq i32 %107, 0
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.164

land.lhs.true.153:                                ; preds = %if.end.150
  %108 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_fdpat154 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %108, i32 0, i32 0
  %109 = load i32, i32* %p_fdpat154, align 4
  %and155 = and i32 %109, 1
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.end.164, label %if.then.157

if.then.157:                                      ; preds = %land.lhs.true.153
  %110 = load %struct.win*, %struct.win** %w, align 8
  %w_ptyfd158 = getelementptr inbounds %struct.win, %struct.win* %110, i32 0, i32 15
  %111 = load i32, i32* %w_ptyfd158, align 4
  %112 = bitcast i32* %flag to i8*
  %call159 = call i32 (i32, i64, ...) @ioctl(i32 %111, i64 21536, i8* %112) #6
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.then.157
  %call162 = call i32* @__errno_location() #8
  %113 = load i32, i32* %call162, align 4
  call void (i32, i8*, ...) @Msg(i32 %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0))
  %114 = load %struct.win*, %struct.win** %w, align 8
  call void @FreePseudowin(%struct.win* %114)
  store i32 -1, i32* %retval
  br label %return

if.end.163:                                       ; preds = %if.then.157
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %land.lhs.true.153, %if.end.150
  %115 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_ptyfd165 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %115, i32 0, i32 2
  %116 = load i32, i32* %p_ptyfd165, align 4
  %117 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_writeev = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %117, i32 0, i32 4
  %fd = getelementptr inbounds %struct.event, %struct.event* %p_writeev, i32 0, i32 3
  store i32 %116, i32* %fd, align 4
  %118 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_readev = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %118, i32 0, i32 3
  %fd166 = getelementptr inbounds %struct.event, %struct.event* %p_readev, i32 0, i32 3
  store i32 %116, i32* %fd166, align 4
  %119 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_readev167 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %119, i32 0, i32 3
  %type168 = getelementptr inbounds %struct.event, %struct.event* %p_readev167, i32 0, i32 4
  store i32 1, i32* %type168, align 4
  %120 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_writeev169 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %120, i32 0, i32 4
  %type170 = getelementptr inbounds %struct.event, %struct.event* %p_writeev169, i32 0, i32 4
  store i32 2, i32* %type170, align 4
  %121 = load %struct.win*, %struct.win** %w, align 8
  %122 = bitcast %struct.win* %121 to i8*
  %123 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_writeev171 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %123, i32 0, i32 4
  %data = getelementptr inbounds %struct.event, %struct.event* %p_writeev171, i32 0, i32 2
  store i8* %122, i8** %data, align 8
  %124 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_readev172 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %124, i32 0, i32 3
  %data173 = getelementptr inbounds %struct.event, %struct.event* %p_readev172, i32 0, i32 2
  store i8* %122, i8** %data173, align 8
  %125 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_readev174 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %125, i32 0, i32 3
  %handler = getelementptr inbounds %struct.event, %struct.event* %p_readev174, i32 0, i32 1
  store void (%struct.event*, i8*)* @pseu_readev_fn, void (%struct.event*, i8*)** %handler, align 8
  %126 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_writeev175 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %126, i32 0, i32 4
  %handler176 = getelementptr inbounds %struct.event, %struct.event* %p_writeev175, i32 0, i32 1
  store void (%struct.event*, i8*)* @pseu_writeev_fn, void (%struct.event*, i8*)** %handler176, align 8
  %127 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_inlen = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %127, i32 0, i32 8
  %128 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_writeev177 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %128, i32 0, i32 4
  %condpos = getelementptr inbounds %struct.event, %struct.event* %p_writeev177, i32 0, i32 9
  store i32* %p_inlen, i32** %condpos, align 8
  %129 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_fdpat178 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %129, i32 0, i32 0
  %130 = load i32, i32* %p_fdpat178, align 4
  %and179 = and i32 %130, 20
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %if.end.164
  %131 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_readev182 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %131, i32 0, i32 3
  call void @evenq(%struct.event* %p_readev182)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %if.end.164
  %132 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_writeev184 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %132, i32 0, i32 4
  call void @evenq(%struct.event* %p_writeev184)
  %133 = load %struct.win*, %struct.win** %w, align 8
  %134 = load i8**, i8*** %av.addr, align 8
  %135 = load i8*, i8** %t, align 8
  %call185 = call i32 @ForkWindow(%struct.win* %133, i8** %134, i8* %135)
  %136 = load %struct.pseudowin*, %struct.pseudowin** %pwin, align 8
  %p_pid = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %136, i32 0, i32 1
  store i32 %call185, i32* %p_pid, align 4
  store i32 %call185, i32* %r, align 4
  %137 = load i32, i32* %r, align 4
  %cmp186 = icmp slt i32 %137, 0
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.end.183
  %138 = load %struct.win*, %struct.win** %w, align 8
  call void @FreePseudowin(%struct.win* %138)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %if.end.183
  %139 = load i32, i32* %r, align 4
  store i32 %139, i32* %retval
  br label %return

return:                                           ; preds = %if.end.189, %if.then.161, %if.then.148, %if.then.138, %if.then.131, %if.then.16, %if.then.13, %cond.end.9, %if.then
  %140 = load i32, i32* %retval
  ret i32 %140
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define internal void @pseu_readev_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  %buf = alloca [4096 x i8], align 16
  %size = alloca i32, align 4
  %ptow = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.win*
  store %struct.win* %1, %struct.win** %p, align 8
  store i32 4096, i32* %size, align 4
  %2 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 6
  %3 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  %p_fdpat = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %3, i32 0, i32 0
  %4 = load i32, i32* %p_fdpat, align 4
  %and = and i32 %4, 12
  %cmp = icmp eq i32 %and, 12
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %5 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin1 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 6
  %6 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin1, align 8
  %p_fdpat2 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %6, i32 0, i32 0
  %7 = load i32, i32* %p_fdpat2, align 4
  %and3 = and i32 %7, 48
  %cmp4 = icmp eq i32 %and3, 48
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, i32* %ptow, align 4
  %9 = load i32, i32* %ptow, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %lor.end
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %10 = load %struct.win*, %struct.win** %p, align 8
  %w_inlen = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 17
  %11 = load i32, i32* %w_inlen, align 4
  %sub = sub nsw i32 4096, %11
  store i32 %sub, i32* %size, align 4
  %12 = load i32, i32* %size, align 4
  %cmp5 = icmp sle i32 %12, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %do.end
  %13 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condpos = getelementptr inbounds %struct.event, %struct.event* %13, i32 0, i32 9
  store i32* @const_IOSIZE, i32** %condpos, align 8
  %14 = load %struct.win*, %struct.win** %p, align 8
  %w_inlen7 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 17
  %15 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condneg = getelementptr inbounds %struct.event, %struct.event* %15, i32 0, i32 10
  store i32* %w_inlen7, i32** %condneg, align 8
  br label %return

if.end:                                           ; preds = %do.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %lor.end
  %16 = load %struct.win*, %struct.win** %p, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
  %17 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool9 = icmp ne %struct.canvas* %17, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.8
  %18 = load %struct.win*, %struct.win** %p, align 8
  %19 = load %struct.event*, %struct.event** %ev.addr, align 8
  %call = call i32 @muchpending(%struct.win* %18, %struct.event* %19)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %if.end.8
  %20 = load %struct.win*, %struct.win** %p, align 8
  %w_blocked = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 5
  %21 = load i32, i32* %w_blocked, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.12
  %22 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condpos15 = getelementptr inbounds %struct.event, %struct.event* %22, i32 0, i32 9
  store i32* @const_one, i32** %condpos15, align 8
  %23 = load %struct.win*, %struct.win** %p, align 8
  %w_blocked16 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 5
  %24 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condneg17 = getelementptr inbounds %struct.event, %struct.event* %24, i32 0, i32 10
  store i32* %w_blocked16, i32** %condneg17, align 8
  br label %return

if.end.18:                                        ; preds = %if.end.12
  %25 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condpos19 = getelementptr inbounds %struct.event, %struct.event* %25, i32 0, i32 9
  %26 = load i32*, i32** %condpos19, align 8
  %tobool20 = icmp ne i32* %26, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.18
  %27 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condneg22 = getelementptr inbounds %struct.event, %struct.event* %27, i32 0, i32 10
  store i32* null, i32** %condneg22, align 8
  %28 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condpos23 = getelementptr inbounds %struct.event, %struct.event* %28, i32 0, i32 9
  store i32* null, i32** %condpos23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.18
  %29 = load %struct.win*, %struct.win** %p, align 8
  %w_outlen = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 19
  %30 = load i32, i32* %w_outlen, align 4
  store i32 %30, i32* %len, align 4
  %tobool25 = icmp ne i32 %30, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %31 = load %struct.win*, %struct.win** %p, align 8
  %w_outlen27 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 19
  store i32 0, i32* %w_outlen27, align 4
  %32 = load %struct.win*, %struct.win** %p, align 8
  %33 = load %struct.win*, %struct.win** %p, align 8
  %w_outbuf = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 18
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_outbuf, i32 0, i32 0
  %34 = load i32, i32* %len, align 4
  call void @WriteString(%struct.win* %32, i8* %arraydecay, i32 %34)
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %35 = load %struct.event*, %struct.event** %ev.addr, align 8
  %fd = getelementptr inbounds %struct.event, %struct.event* %35, i32 0, i32 3
  %36 = load i32, i32* %fd, align 4
  %arraydecay29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %37 = load i32, i32* %size, align 4
  %conv = sext i32 %37 to i64
  %call30 = call i64 @read(i32 %36, i8* %arraydecay29, i64 %conv)
  %conv31 = trunc i64 %call30 to i32
  store i32 %conv31, i32* %len, align 4
  %cmp32 = icmp sle i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %if.end.28
  %call35 = call i32* @__errno_location() #8
  %38 = load i32, i32* %call35, align 4
  %cmp36 = icmp eq i32 %38, 4
  br i1 %cmp36, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.34
  %call38 = call i32* @__errno_location() #8
  %39 = load i32, i32* %call38, align 4
  %cmp39 = icmp eq i32 %39, 11
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %if.then.34
  br label %return

if.end.42:                                        ; preds = %lor.lhs.false
  br label %do.body.43

do.body.43:                                       ; preds = %if.end.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.body.43
  %40 = load %struct.win*, %struct.win** %p, align 8
  call void @FreePseudowin(%struct.win* %40)
  br label %return

if.end.45:                                        ; preds = %if.end.28
  %41 = load i32, i32* %ptow, align 4
  %tobool46 = icmp ne i32 %41, 0
  br i1 %tobool46, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %if.end.45
  %arraydecay48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %42 = load %struct.win*, %struct.win** %p, align 8
  %w_inbuf = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 16
  %arraydecay49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %w_inbuf, i32 0, i32 0
  %43 = load %struct.win*, %struct.win** %p, align 8
  %w_inlen50 = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 17
  %44 = load i32, i32* %w_inlen50, align 4
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay49, i64 %idx.ext
  %45 = load i32, i32* %len, align 4
  %conv51 = sext i32 %45 to i64
  call void @bcopy(i8* %arraydecay48, i8* %add.ptr, i64 %conv51) #6
  %46 = load i32, i32* %len, align 4
  %47 = load %struct.win*, %struct.win** %p, align 8
  %w_inlen52 = getelementptr inbounds %struct.win, %struct.win* %47, i32 0, i32 17
  %48 = load i32, i32* %w_inlen52, align 4
  %add = add nsw i32 %48, %46
  store i32 %add, i32* %w_inlen52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.47, %if.end.45
  %49 = load %struct.win*, %struct.win** %p, align 8
  %arraydecay54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %50 = load i32, i32* %len, align 4
  call void @WriteString(%struct.win* %49, i8* %arraydecay54, i32 %50)
  br label %return

return:                                           ; preds = %if.end.53, %do.end.44, %if.then.41, %if.then.26, %if.then.14, %if.then.11, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pseu_writeev_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  %pw = alloca %struct.pseudowin*, align 8
  %len = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.win*
  store %struct.win* %1, %struct.win** %p, align 8
  %2 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 6
  %3 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  store %struct.pseudowin* %3, %struct.pseudowin** %pw, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.pseudowin*, %struct.pseudowin** %pw, align 8
  %p_inlen = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %4, i32 0, i32 8
  %5 = load i32, i32* %p_inlen, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %if.end.20

if.end:                                           ; preds = %do.end
  %6 = load %struct.event*, %struct.event** %ev.addr, align 8
  %fd = getelementptr inbounds %struct.event, %struct.event* %6, i32 0, i32 3
  %7 = load i32, i32* %fd, align 4
  %8 = load %struct.pseudowin*, %struct.pseudowin** %pw, align 8
  %p_inbuf = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %8, i32 0, i32 7
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %p_inbuf, i32 0, i32 0
  %9 = load %struct.pseudowin*, %struct.pseudowin** %pw, align 8
  %p_inlen1 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %9, i32 0, i32 8
  %10 = load i32, i32* %p_inlen1, align 4
  %conv = sext i32 %10 to i64
  %call = call i64 @write(i32 %7, i8* %arraydecay, i64 %conv)
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %len, align 4
  %cmp3 = icmp sle i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.pseudowin*, %struct.pseudowin** %pw, align 8
  %p_inlen6 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %11, i32 0, i32 8
  %12 = load i32, i32* %p_inlen6, align 4
  store i32 %12, i32* %len, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %13 = load i32, i32* %len, align 4
  %14 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin8 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 6
  %15 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin8, align 8
  %p_inlen9 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %15, i32 0, i32 8
  %16 = load i32, i32* %p_inlen9, align 4
  %sub = sub nsw i32 %16, %13
  store i32 %sub, i32* %p_inlen9, align 4
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.7
  %17 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin11 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 6
  %18 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin11, align 8
  %p_inbuf12 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %18, i32 0, i32 7
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %p_inbuf12, i32 0, i32 0
  %19 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay13, i64 %idx.ext
  %20 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin14 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 6
  %21 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin14, align 8
  %p_inbuf15 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %21, i32 0, i32 7
  %arraydecay16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %p_inbuf15, i32 0, i32 0
  %22 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin17 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 6
  %23 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin17, align 8
  %p_inlen18 = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %23, i32 0, i32 8
  %24 = load i32, i32* %p_inlen18, align 4
  %conv19 = sext i32 %24 to i64
  call void @bcopy(i8* %add.ptr, i8* %arraydecay16, i64 %conv19) #6
  br label %if.end.20

if.end.20:                                        ; preds = %if.then, %if.then.10, %if.end.7
  ret void
}

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define i32 @ReleaseAutoWritelock(%struct.display* %dis, %struct.win* %w) #0 {
entry:
  %retval = alloca i32, align 4
  %dis.addr = alloca %struct.display*, align 8
  %w.addr = alloca %struct.win*, align 8
  %d = alloca %struct.display*, align 8
  store %struct.display* %dis, %struct.display** %dis.addr, align 8
  store %struct.win* %w, %struct.win** %w.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_wlock = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 29
  %1 = load i32, i32* %w_wlock, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %do.end
  %2 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_wlockuser = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 30
  %3 = load %struct.acluser*, %struct.acluser** %w_wlockuser, align 8
  %4 = load %struct.display*, %struct.display** %dis.addr, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 1
  %5 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %cmp1 = icmp eq %struct.acluser* %3, %5
  br i1 %cmp1, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %6, %struct.display** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load %struct.display*, %struct.display** %d, align 8
  %tobool = icmp ne %struct.display* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.display*, %struct.display** %d, align 8
  %9 = load %struct.display*, %struct.display** %dis.addr, align 8
  %cmp2 = icmp ne %struct.display* %8, %9
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %for.body
  %10 = load %struct.display*, %struct.display** %d, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 10
  %11 = load %struct.win*, %struct.win** %d_fore, align 8
  %12 = load %struct.win*, %struct.win** %w.addr, align 8
  %cmp4 = icmp eq %struct.win* %11, %12
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %13 = load %struct.display*, %struct.display** %d, align 8
  %d_user6 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 1
  %14 = load %struct.acluser*, %struct.acluser** %d_user6, align 8
  %15 = load %struct.display*, %struct.display** %dis.addr, align 8
  %d_user7 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 1
  %16 = load %struct.acluser*, %struct.acluser** %d_user7, align 8
  %cmp8 = icmp eq %struct.acluser* %14, %16
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.5
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.5, %land.lhs.true.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.display*, %struct.display** %d, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 0
  %18 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %18, %struct.display** %d, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  br label %do.body.10

do.body.10:                                       ; preds = %for.end
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  %19 = load %struct.display*, %struct.display** %d, align 8
  %tobool12 = icmp ne %struct.display* %19, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %do.end.11
  %20 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_wlockuser14 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 30
  store %struct.acluser* null, %struct.acluser** %w_wlockuser14, align 8
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %do.end.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true, %do.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @ObtainAutoWritelock(%struct.display* %d, %struct.win* %w) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.display*, align 8
  %w.addr = alloca %struct.win*, align 8
  store %struct.display* %d, %struct.display** %d.addr, align 8
  store %struct.win* %w, %struct.win** %w.addr, align 8
  %0 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_wlock = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 29
  %1 = load i32, i32* %w_wlock, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.display*, %struct.display** %d.addr, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 1
  %3 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %4 = load %struct.win*, %struct.win** %w.addr, align 8
  %call = call i32 @AclCheckPermWin(%struct.acluser* %3, i32 1, %struct.win* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %5 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_wlockuser = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 30
  %6 = load %struct.acluser*, %struct.acluser** %w_wlockuser, align 8
  %tobool2 = icmp ne %struct.acluser* %6, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.1
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load %struct.display*, %struct.display** %d.addr, align 8
  %d_user3 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 1
  %8 = load %struct.acluser*, %struct.acluser** %d_user3, align 8
  %9 = load %struct.win*, %struct.win** %w.addr, align 8
  %w_wlockuser4 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 30
  store %struct.acluser* %8, %struct.acluser** %w_wlockuser4, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %do.end
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @zmodem_abort(%struct.win* %p, %struct.display* %d) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %d.addr = alloca %struct.display*, align 8
  %olddisplay = alloca %struct.display*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store %struct.display* %d, %struct.display** %d.addr, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %0, %struct.display** %olddisplay, align 8
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %1, %struct.layer** %oldflayer, align 8
  %2 = load %struct.win*, %struct.win** %p.addr, align 8
  %tobool = icmp ne %struct.win* %2, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 4
  %4 = load %struct.layer*, %struct.layer** %w_savelayer, align 8
  %tobool1 = icmp ne %struct.layer* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_savelayer2 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 4
  %6 = load %struct.layer*, %struct.layer** %w_savelayer2, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 8
  %7 = load %struct.layer*, %struct.layer** %l_next, align 8
  %tobool3 = icmp ne %struct.layer* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_savelayer5 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 4
  %10 = load %struct.layer*, %struct.layer** %w_savelayer5, align 8
  %cmp = icmp eq %struct.layer* %8, %10
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.4
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next7 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 8
  %12 = load %struct.layer*, %struct.layer** %l_next7, align 8
  store %struct.layer* %12, %struct.layer** %oldflayer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  %13 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_savelayer8 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 4
  %14 = load %struct.layer*, %struct.layer** %w_savelayer8, align 8
  store %struct.layer* %14, %struct.layer** @flayer, align 8
  call void @ExitOverlayPage()
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %if.then
  %15 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zdisplay = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 91
  store %struct.display* null, %struct.display** %w_zdisplay, align 8
  %16 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 90
  store i32 0, i32* %w_zauto, align 4
  %17 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 3
  call void @LRefreshAll(%struct.layer* %w_layer, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %18 = load %struct.display*, %struct.display** %d.addr, align 8
  %tobool11 = icmp ne %struct.display* %18, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.10
  %19 = load %struct.display*, %struct.display** %d.addr, align 8
  store %struct.display* %19, %struct.display** @display, align 8
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 102
  store i32 0, i32* %d_blocked, align 4
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_readev = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 60
  %condneg = getelementptr inbounds %struct.event, %struct.event* %d_readev, i32 0, i32 10
  store i32* null, i32** %condneg, align 8
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_readev13 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 60
  %condpos = getelementptr inbounds %struct.event, %struct.event* %d_readev13, i32 0, i32 9
  store i32* null, i32** %condpos, align 8
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 10
  %24 = load %struct.win*, %struct.win** %d_fore, align 8
  %tobool14 = icmp ne %struct.win* %24, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_fore15 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 10
  %26 = load %struct.win*, %struct.win** %d_fore15, align 8
  %w_norefresh = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 74
  %27 = load i8, i8* %w_norefresh, align 1
  %conv = sext i8 %27 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  call void @Activate(i32 %cond)
  br label %if.end.16

if.end.16:                                        ; preds = %cond.end, %if.end.10
  %28 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %28, %struct.display** @display, align 8
  %29 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %29, %struct.layer** @flayer, align 8
  ret void
}

declare void @ExitOverlayPage() #2

declare void @LRefreshAll(%struct.layer*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @WindowChangeNumber(i32 %old, i32 %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %old.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %p = alloca %struct.win*, align 8
  %win_old = alloca %struct.win*, align 8
  store i32 %old, i32* %old.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  %0 = load i32, i32* %dest.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %dest.addr, align 4
  %2 = load i32, i32* @maxwin, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %old.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx = getelementptr inbounds %struct.win*, %struct.win** %4, i64 %idxprom
  %5 = load %struct.win*, %struct.win** %arrayidx, align 8
  store %struct.win* %5, %struct.win** %win_old, align 8
  %6 = load i32, i32* %dest.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx3 = getelementptr inbounds %struct.win*, %struct.win** %7, i64 %idxprom2
  %8 = load %struct.win*, %struct.win** %arrayidx3, align 8
  store %struct.win* %8, %struct.win** %p, align 8
  %9 = load %struct.win*, %struct.win** %win_old, align 8
  %10 = load i32, i32* %dest.addr, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx5 = getelementptr inbounds %struct.win*, %struct.win** %11, i64 %idxprom4
  store %struct.win* %9, %struct.win** %arrayidx5, align 8
  %12 = load i32, i32* %dest.addr, align 4
  %13 = load %struct.win*, %struct.win** %win_old, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 9
  store i32 %12, i32* %w_number, align 4
  %14 = load %struct.win*, %struct.win** %p, align 8
  %15 = load i32, i32* %old.addr, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.win**, %struct.win*** @wtab, align 8
  %arrayidx7 = getelementptr inbounds %struct.win*, %struct.win** %16, i64 %idxprom6
  store %struct.win* %14, %struct.win** %arrayidx7, align 8
  %17 = load %struct.win*, %struct.win** %p, align 8
  %tobool = icmp ne %struct.win* %17, null
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %18 = load i32, i32* %old.addr, align 4
  %19 = load %struct.win*, %struct.win** %p, align 8
  %w_number9 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 9
  store i32 %18, i32* %w_number9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %20 = load i32, i32* %old.addr, align 4
  %21 = load i32, i32* %dest.addr, align 4
  call void @AclWinSwap(i32 %20, i32 %21)
  %22 = load %struct.win*, %struct.win** %win_old, align 8
  %w_slot = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 87
  %23 = load i8*, i8** %w_slot, align 8
  %cmp11 = icmp ne i8* %23, inttoptr (i64 -1 to i8*)
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.10
  %24 = load %struct.win*, %struct.win** %win_old, align 8
  %w_slot12 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 87
  %25 = load i8*, i8** %w_slot12, align 8
  %cmp13 = icmp ne i8* %25, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %land.lhs.true
  %26 = load %struct.win*, %struct.win** %win_old, align 8
  %call = call i32 @RemoveUtmp(%struct.win* %26)
  %27 = load %struct.win*, %struct.win** %win_old, align 8
  %call15 = call i32 @SetUtmp(%struct.win* %27)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.10
  %28 = load %struct.win*, %struct.win** %p, align 8
  %tobool17 = icmp ne %struct.win* %28, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.30

land.lhs.true.18:                                 ; preds = %if.end.16
  %29 = load %struct.win*, %struct.win** %p, align 8
  %w_slot19 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 87
  %30 = load i8*, i8** %w_slot19, align 8
  %cmp20 = icmp ne i8* %30, inttoptr (i64 -1 to i8*)
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.30

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %31 = load %struct.win*, %struct.win** %p, align 8
  %w_slot22 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 87
  %32 = load i8*, i8** %w_slot22, align 8
  %cmp23 = icmp ne i8* %32, null
  br i1 %cmp23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %land.lhs.true.21
  %33 = load %struct.win*, %struct.win** %win_old, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
  %34 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool25 = icmp ne %struct.canvas* %34, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.24
  %35 = load %struct.win*, %struct.win** %win_old, align 8
  %w_layer26 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 3
  %l_cvlist27 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer26, i32 0, i32 0
  %36 = load %struct.canvas*, %struct.canvas** %l_cvlist27, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %36, i32 0, i32 1
  %37 = load %struct.display*, %struct.display** %c_display, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.display* [ %37, %cond.true ], [ null, %cond.false ]
  store %struct.display* %cond, %struct.display** @display, align 8
  %38 = load %struct.win*, %struct.win** %p, align 8
  %call28 = call i32 @RemoveUtmp(%struct.win* %38)
  %39 = load %struct.win*, %struct.win** %p, align 8
  %call29 = call i32 @SetUtmp(%struct.win* %39)
  br label %if.end.30

if.end.30:                                        ; preds = %cond.end, %land.lhs.true.21, %land.lhs.true.18, %if.end.16
  %40 = load %struct.win*, %struct.win** %win_old, align 8
  call void @WindowChanged(%struct.win* %40, i32 110)
  call void @WindowChanged(%struct.win* null, i32 119)
  call void @WindowChanged(%struct.win* null, i32 87)
  call void @WindowChanged(%struct.win* null, i32 0)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare void @AclWinSwap(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @ZombieProcess(i8** %bufpp, i32* %lenp) #0 {
entry:
  %bufpp.addr = alloca i8**, align 8
  %lenp.addr = alloca i32*, align 8
  %l = alloca i32, align 4
  %buf = alloca i8*, align 8
  %b1 = alloca [10 x i8], align 1
  %b2 = alloca [10 x i8], align 1
  store i8** %bufpp, i8*** %bufpp.addr, align 8
  store i32* %lenp, i32** %lenp.addr, align 8
  %0 = load i32*, i32** %lenp.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %l, align 4
  %2 = load i8**, i8*** %bufpp.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %buf, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 7
  %5 = load i8*, i8** %l_data, align 8
  %6 = bitcast i8* %5 to %struct.win*
  store %struct.win* %6, %struct.win** @fore, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %7 = load i32*, i32** %lenp.addr, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i8**, i8*** %bufpp.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %9, align 8
  %11 = load i32*, i32** %lenp.addr, align 8
  store i32 0, i32* %11, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.2
  %12 = load i32, i32* %l, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %l, align 4
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %buf, align 8
  %14 = load i8, i8* %13, align 1
  %conv = zext i8 %14 to i32
  %15 = load i32, i32* @ZombieKey_destroy, align 4
  %cmp3 = icmp eq i32 %conv, %15
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.then
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  %16 = load %struct.win*, %struct.win** @fore, align 8
  call void @KillWindow(%struct.win* %16)
  br label %return

if.end:                                           ; preds = %for.body
  %17 = load i8*, i8** %buf, align 8
  %18 = load i8, i8* %17, align 1
  %conv7 = zext i8 %18 to i32
  %19 = load i32, i32* @ZombieKey_resurrect, align 4
  %cmp8 = icmp eq i32 %conv7, %19
  br i1 %cmp8, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  %20 = load %struct.win*, %struct.win** @fore, align 8
  call void @WriteString(%struct.win* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 2)
  %21 = load %struct.win*, %struct.win** @fore, align 8
  %call = call i32 @RemakeWindow(%struct.win* %21)
  br label %return

if.end.13:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %22 = load i8*, i8** %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %buf, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %b1, i32 0, i32 0
  %23 = load i32, i32* @ZombieKey_destroy, align 4
  %call14 = call i32 @AddXChar(i8* %arraydecay, i32 %23)
  %idxprom = sext i32 %call14 to i64
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %b1, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %arraydecay15 = getelementptr inbounds [10 x i8], [10 x i8]* %b2, i32 0, i32 0
  %24 = load i32, i32* @ZombieKey_resurrect, align 4
  %call16 = call i32 @AddXChar(i8* %arraydecay15, i32 %24)
  %idxprom17 = sext i32 %call16 to i64
  %arrayidx18 = getelementptr inbounds [10 x i8], [10 x i8]* %b2, i32 0, i64 %idxprom17
  store i8 0, i8* %arrayidx18, align 1
  %arraydecay19 = getelementptr inbounds [10 x i8], [10 x i8]* %b1, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [10 x i8], [10 x i8]* %b2, i32 0, i32 0
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay19, i8* %arraydecay20)
  br label %return

return:                                           ; preds = %for.end, %do.end.12, %do.end.6
  ret void
}

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @DoAutolf(i8* %buf, i32* %lenp, i32 %fr) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %lenp.addr = alloca i32*, align 8
  %fr.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %trunc = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32* %lenp, i32** %lenp.addr, align 8
  store i32 %fr, i32* %fr.addr, align 4
  %0 = load i32*, i32** %lenp.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %len, align 4
  store i32 0, i32* %trunc, align 4
  %2 = load i8*, i8** %buf.addr, align 8
  store i8* %2, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 13
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load i32, i32* %fr.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %fr.addr, align 4
  %cmp3 = icmp sle i32 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load i32, i32* %trunc, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %trunc, align 4
  %8 = load i32, i32* %len, align 4
  %dec6 = add nsw i32 %8, -1
  store i32 %dec6, i32* %len, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %9 = load i32, i32* %len, align 4
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  br label %for.end

if.end.11:                                        ; preds = %if.end.7
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i32, i32* %len, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %len, align 4
  %conv13 = sext i32 %12 to i64
  call void @bcopy(i8* %10, i8* %add.ptr, i64 %conv13) #6
  %13 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  store i8 10, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.11, %if.then
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %15 = load i32, i32* %len, align 4
  %dec14 = add nsw i32 %15, -1
  store i32 %dec14, i32* %len, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %16 = load i8*, i8** %p, align 8
  %17 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv15 = trunc i64 %sub.ptr.sub to i32
  %18 = load i32*, i32** %lenp.addr, align 8
  store i32 %conv15, i32* %18, align 4
  %19 = load i32, i32* %trunc, align 4
  ret i32 %19
}

declare void @KillWindow(%struct.win*) #2

declare i32 @AddXChar(i8*, i32) #2

declare void @LCDisplayLineWrap(%struct.layer*, %struct.mline*, i32, i32, i32, i32) #2

declare void @LCDisplayLine(%struct.layer*, %struct.mline*, i32, i32, i32, i32) #2

declare void @PUTCHAR(i32) #2

declare i32 @ContainsSpecialDeffont(%struct.mline*, i32, i32, i32) #2

declare void @LClearLine(%struct.layer*, i32, i32, i32, i32, %struct.mline*) #2

declare void @KeypadMode(i32) #2

declare void @CursorkeysMode(i32) #2

declare void @SetFlow(i32) #2

declare void @InsertMode(i32) #2

declare void @ReverseVideo(i32) #2

declare void @CursorVisibility(i32) #2

declare void @MouseMode(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #1

declare i32 @OpenTTY(i8*, i8*) #2

declare i32 @OpenPTY(i8**) #2

; Function Attrs: nounwind
declare i32 @tcflush(i32, i32) #1

declare i32 @open(i8*, i32, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @fork() #1

declare void (i32)* @xsignal(i32, void (i32)*) #2

; Function Attrs: nounwind
declare i32 @setgid(i32) #1

; Function Attrs: nounwind
declare i32 @setuid(i32) #1

; Function Attrs: noreturn
declare void @Panic(i32, i8*, ...) #5

; Function Attrs: nounwind
declare i32 @chdir(i8*) #1

declare void @brktty(i32) #2

declare void @freetty() #2

; Function Attrs: nounwind
declare i32 @dup(i32) #1

declare void @closeallfiles(i32) #2

declare void @InitPTY(i32) #2

declare i32 @fgtty(i32) #2

declare void @InitTTY(%struct.mode*, i32) #2

declare void @SetTTY(i32, %struct.mode*) #2

declare i8* @MakeTermcap(i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @execvpe(i8*, i8**, i8**) #1

declare void @DoProcess(%struct.win*, i8**, i32*, %struct.paster*) #2

; Function Attrs: nounwind uwtable
define internal i32 @muchpending(%struct.win* %p, %struct.event* %ev) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.win*, align 8
  %ev.addr = alloca %struct.event*, align 8
  %cv = alloca %struct.canvas*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
  %1 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 1
  %4 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %4, %struct.display** @display, align 8
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 43
  %6 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_status_bell = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 44
  %8 = load i8, i8* %d_status_bell, align 1
  %tobool1 = icmp ne i8 %8, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %9 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condpos = getelementptr inbounds %struct.event, %struct.event* %9, i32 0, i32 9
  store i32* @const_one, i32** %condpos, align 8
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_status2 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 43
  %11 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condneg = getelementptr inbounds %struct.event, %struct.event* %11, i32 0, i32 10
  store i32* %d_status2, i32** %condneg, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.end
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  br label %do.body.5

do.body.5:                                        ; preds = %do.end.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 102
  %13 = load i32, i32* %d_blocked, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end.6
  br label %for.inc

if.end.9:                                         ; preds = %do.end.6
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 71
  %15 = load i8*, i8** %d_obufp, align 8
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 67
  %17 = load i8*, i8** %d_obuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_obufmax = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 69
  %19 = load i32, i32* %d_obufmax, align 4
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked_fuzz = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 103
  %21 = load i32, i32* %d_blocked_fuzz, align 4
  %add = add nsw i32 %19, %21
  %conv = sext i32 %add to i64
  %cmp10 = icmp sgt i64 %sub.ptr.sub, %conv
  br i1 %cmp10, label %if.then.12, label %if.end.36

if.then.12:                                       ; preds = %if.end.9
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_nonblock = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 12
  %23 = load i32, i32* %d_nonblock, align 4
  %cmp13 = icmp eq i32 %23, 0
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.then.12
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.16
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked18 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 102
  store i32 1, i32* %d_blocked18, align 4
  br label %for.inc

if.end.19:                                        ; preds = %if.then.12
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.body.20
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 72
  %26 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condpos22 = getelementptr inbounds %struct.event, %struct.event* %26, i32 0, i32 9
  store i32* %d_obuffree, i32** %condpos22, align 8
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflenmax = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 70
  %28 = load %struct.event*, %struct.event** %ev.addr, align 8
  %condneg23 = getelementptr inbounds %struct.event, %struct.event* %28, i32 0, i32 10
  store i32* %d_obuflenmax, i32** %condneg23, align 8
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_nonblock24 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 12
  %30 = load i32, i32* %d_nonblock24, align 4
  %cmp25 = icmp sgt i32 %30, 0
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.35

land.lhs.true.27:                                 ; preds = %do.end.21
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 62
  %queued = getelementptr inbounds %struct.event, %struct.event* %d_blockedev, i32 0, i32 7
  %32 = load i32, i32* %queued, align 4
  %tobool28 = icmp ne i32 %32, 0
  br i1 %tobool28, label %if.end.35, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.27
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.30
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev32 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 62
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_nonblock33 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 12
  %35 = load i32, i32* %d_nonblock33, align 4
  call void @SetTimeout(%struct.event* %d_blockedev32, i32 %35)
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev34 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 62
  call void @evenq(%struct.event* %d_blockedev34)
  br label %if.end.35

if.end.35:                                        ; preds = %do.end.31, %land.lhs.true.27, %do.end.21
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.36, %do.end.17, %if.then.8
  %37 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %37, i32 0, i32 10
  %38 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %38, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.35, %do.end
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare i64 @read(i32, i8*, i64) #2

declare void @WindowDied(%struct.win*, i32, i32) #2

declare void @WNewAutoFlow(%struct.win*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @zmodem_parse(%struct.win* %p, i8* %bp, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.win*, align 8
  %bp.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %b2 = alloca i8*, align 8
  %se = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i8* %bp, i8** %bp.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %bp.addr, align 8
  store i8* %0, i8** %b2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.137, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.140

for.body:                                         ; preds = %for.cond
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 90
  %4 = load i32, i32* %w_zauto, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end.25

if.then:                                          ; preds = %for.body
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %len.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %7 = load i8*, i8** %b2, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv, 24
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body.4
  br label %for.end

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %10 = load i8*, i8** %b2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %b2, align 8
  br label %for.cond.2

for.end:                                          ; preds = %if.then.7, %for.cond.2
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %len.addr, align 4
  %cmp8 = icmp eq i32 %11, %12
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.end
  br label %for.end.140

if.end.11:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %cmp12 = icmp sgt i32 %13, 1
  br i1 %cmp12, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.11
  %14 = load i8*, i8** %b2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 -1
  %15 = load i8, i8* %arrayidx, align 1
  %conv14 = sext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv14, 42
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.24

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %16 = load i8*, i8** %b2, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 -2
  %17 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 42
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %land.lhs.true.17
  %18 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto23 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 90
  store i32 3, i32* %w_zauto23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %land.lhs.true.17, %land.lhs.true, %if.end.11
  br label %for.inc.137

if.end.25:                                        ; preds = %for.body
  %19 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto26 = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 90
  %20 = load i32, i32* %w_zauto26, align 4
  %cmp27 = icmp sgt i32 %20, 5
  br i1 %cmp27, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %21 = load i8*, i8** %b2, align 8
  %22 = load i8, i8* %21, align 1
  %conv29 = sext i8 %22 to i32
  %23 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto30 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 90
  %24 = load i32, i32* %w_zauto30, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.39, i32 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %25 to i32
  %cmp33 = icmp eq i32 %conv29, %conv32
  br i1 %cmp33, label %if.then.52, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false
  %26 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto36 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 90
  %27 = load i32, i32* %w_zauto36, align 4
  %cmp37 = icmp eq i32 %27, 5
  br i1 %cmp37, label %land.lhs.true.39, label %lor.lhs.false.43

land.lhs.true.39:                                 ; preds = %lor.lhs.false.35
  %28 = load i8*, i8** %b2, align 8
  %29 = load i8, i8* %28, align 1
  %conv40 = sext i8 %29 to i32
  %cmp41 = icmp eq i32 %conv40, 49
  br i1 %cmp41, label %if.then.52, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %land.lhs.true.39, %lor.lhs.false.35
  %30 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto44 = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 90
  %31 = load i32, i32* %w_zauto44, align 4
  %cmp45 = icmp eq i32 %31, 5
  br i1 %cmp45, label %land.lhs.true.47, label %if.else.123

land.lhs.true.47:                                 ; preds = %lor.lhs.false.43
  %32 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zdisplay = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 91
  %33 = load %struct.display*, %struct.display** %w_zdisplay, align 8
  %tobool = icmp ne %struct.display* %33, null
  br i1 %tobool, label %land.lhs.true.48, label %if.else.123

land.lhs.true.48:                                 ; preds = %land.lhs.true.47
  %34 = load i8*, i8** %b2, align 8
  %35 = load i8, i8* %34, align 1
  %conv49 = sext i8 %35 to i32
  %cmp50 = icmp eq i32 %conv49, 56
  br i1 %cmp50, label %if.then.52, label %if.else.123

if.then.52:                                       ; preds = %land.lhs.true.48, %land.lhs.true.39, %lor.lhs.false, %if.end.25
  %36 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto53 = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 90
  %37 = load i32, i32* %w_zauto53, align 4
  %inc54 = add nsw i32 %37, 1
  store i32 %inc54, i32* %w_zauto53, align 4
  %cmp55 = icmp slt i32 %inc54, 6
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.52
  br label %for.inc.137

if.end.58:                                        ; preds = %if.then.52
  %38 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto59 = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 90
  %39 = load i32, i32* %w_zauto59, align 4
  %cmp60 = icmp eq i32 %39, 6
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.58
  %40 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto63 = getelementptr inbounds %struct.win, %struct.win* %40, i32 0, i32 90
  store i32 0, i32* %w_zauto63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.58
  %41 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zdisplay65 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 91
  %42 = load %struct.display*, %struct.display** %w_zdisplay65, align 8
  %tobool66 = icmp ne %struct.display* %42, null
  br i1 %tobool66, label %if.else, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  %43 = load i32, i32* %i, align 4
  %cmp68 = icmp sgt i32 %43, 6
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.67
  %44 = load %struct.win*, %struct.win** %p.addr, align 8
  %45 = load i8*, i8** %bp.addr, align 8
  %46 = load i32, i32* %i, align 4
  %add = add nsw i32 %46, 1
  %sub = sub nsw i32 %add, 6
  call void @WriteString(%struct.win* %44, i8* %45, i32 %sub)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.then.67
  %47 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WriteString(%struct.win* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 2)
  %48 = load %struct.win*, %struct.win** %p.addr, align 8
  %49 = load i8*, i8** %b2, align 8
  %50 = load i8, i8* %49, align 1
  %conv72 = sext i8 %50 to i32
  %cmp73 = icmp eq i32 %conv72, 49
  %conv74 = zext i1 %cmp73 to i32
  %51 = load i8*, i8** %b2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i32, i32* %len.addr, align 4
  %53 = load i32, i32* %i, align 4
  %sub75 = sub nsw i32 %52, %53
  %sub76 = sub nsw i32 %sub75, 1
  call void @zmodem_found(%struct.win* %48, i32 %conv74, i8* %add.ptr, i32 %sub76)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.64
  %54 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto77 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 90
  %55 = load i32, i32* %w_zauto77, align 4
  %cmp78 = icmp eq i32 %55, 7
  br i1 %cmp78, label %if.then.84, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.else
  %56 = load i8*, i8** %b2, align 8
  %57 = load i8, i8* %56, align 1
  %conv81 = sext i8 %57 to i32
  %cmp82 = icmp eq i32 %conv81, 56
  br i1 %cmp82, label %if.then.84, label %if.end.121

if.then.84:                                       ; preds = %lor.lhs.false.80, %if.else
  %58 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zdisplay85 = getelementptr inbounds %struct.win, %struct.win* %58, i32 0, i32 91
  %59 = load %struct.display*, %struct.display** %w_zdisplay85, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 102
  %60 = load i32, i32* %d_blocked, align 4
  %cmp86 = icmp eq i32 %60, 2
  %cond = select i1 %cmp86, i32 79, i32 -118
  store i32 %cond, i32* %se, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.97, %if.then.84
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %len.addr, align 4
  %cmp89 = icmp slt i32 %61, %62
  br i1 %cmp89, label %for.body.91, label %for.end.100

for.body.91:                                      ; preds = %for.cond.88
  %63 = load i8*, i8** %b2, align 8
  %64 = load i8, i8* %63, align 1
  %conv92 = sext i8 %64 to i32
  %65 = load i32, i32* %se, align 4
  %cmp93 = icmp eq i32 %conv92, %65
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.body.91
  br label %for.end.100

if.end.96:                                        ; preds = %for.body.91
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %66 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %66, 1
  store i32 %inc98, i32* %i, align 4
  %67 = load i8*, i8** %b2, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr99, i8** %b2, align 8
  br label %for.cond.88

for.end.100:                                      ; preds = %if.then.95, %for.cond.88
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %len.addr, align 4
  %cmp101 = icmp slt i32 %68, %69
  br i1 %cmp101, label %if.then.103, label %if.end.119

if.then.103:                                      ; preds = %for.end.100
  %70 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @zmodem_abort(%struct.win* %70, %struct.display* null)
  %71 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked104 = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 102
  store i32 0, i32* %d_blocked104, align 4
  %72 = load %struct.display*, %struct.display** @display, align 8
  %d_readev = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 60
  %condneg = getelementptr inbounds %struct.event, %struct.event* %d_readev, i32 0, i32 10
  store i32* null, i32** %condneg, align 8
  %73 = load %struct.display*, %struct.display** @display, align 8
  %d_readev105 = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 60
  %condpos = getelementptr inbounds %struct.event, %struct.event* %d_readev105, i32 0, i32 9
  store i32* null, i32** %condpos, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.then.103
  %74 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %74, -1
  store i32 %dec, i32* %len.addr, align 4
  %cmp106 = icmp sgt i32 %74, 0
  br i1 %cmp106, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %75 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 72
  %76 = load i32, i32* %d_obuffree, align 4
  %dec108 = add nsw i32 %76, -1
  store i32 %dec108, i32* %d_obuffree, align 4
  %cmp109 = icmp sle i32 %dec108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %do.body
  call void @Resize_obuf()
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %do.body
  %77 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr113, i8** %bp.addr, align 8
  %78 = load i8, i8* %77, align 1
  %79 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %79, i32 0, i32 71
  %80 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr114, i8** %d_obufp, align 8
  store i8 %78, i8* %80, align 1
  br label %do.end

do.end:                                           ; preds = %if.end.112
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @Flush(i32 0)
  %81 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %81, i32 0, i32 10
  %82 = load %struct.win*, %struct.win** %d_fore, align 8
  %tobool115 = icmp ne %struct.win* %82, null
  br i1 %tobool115, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_fore116 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 10
  %84 = load %struct.win*, %struct.win** %d_fore116, align 8
  %w_norefresh = getelementptr inbounds %struct.win, %struct.win* %84, i32 0, i32 74
  %85 = load i8, i8* %w_norefresh, align 1
  %conv117 = sext i8 %85 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond118 = phi i32 [ %conv117, %cond.true ], [ 0, %cond.false ]
  call void @Activate(i32 %cond118)
  store i32 1, i32* %retval
  br label %return

if.end.119:                                       ; preds = %for.end.100
  %86 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto120 = getelementptr inbounds %struct.win, %struct.win* %86, i32 0, i32 90
  store i32 6, i32* %w_zauto120, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.119, %lor.lhs.false.80
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121
  br label %if.end.136

if.else.123:                                      ; preds = %land.lhs.true.48, %land.lhs.true.47, %lor.lhs.false.43
  %87 = load i8*, i8** %b2, align 8
  %88 = load i8, i8* %87, align 1
  %conv124 = sext i8 %88 to i32
  %cmp125 = icmp eq i32 %conv124, 42
  br i1 %cmp125, label %cond.true.127, label %cond.false.132

cond.true.127:                                    ; preds = %if.else.123
  %89 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto128 = getelementptr inbounds %struct.win, %struct.win* %89, i32 0, i32 90
  %90 = load i32, i32* %w_zauto128, align 4
  %cmp129 = icmp eq i32 %90, 2
  %cond131 = select i1 %cmp129, i32 2, i32 1
  br label %cond.end.133

cond.false.132:                                   ; preds = %if.else.123
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.132, %cond.true.127
  %cond134 = phi i32 [ %cond131, %cond.true.127 ], [ 0, %cond.false.132 ]
  %91 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto135 = getelementptr inbounds %struct.win, %struct.win* %91, i32 0, i32 90
  store i32 %cond134, i32* %w_zauto135, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %cond.end.133, %if.end.122
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136, %if.then.57, %if.end.24
  %92 = load i32, i32* %i, align 4
  %inc138 = add nsw i32 %92, 1
  store i32 %inc138, i32* %i, align 4
  %93 = load i8*, i8** %b2, align 8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr139, i8** %b2, align 8
  br label %for.cond

for.end.140:                                      ; preds = %if.then.10, %for.cond
  %94 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto141 = getelementptr inbounds %struct.win, %struct.win* %94, i32 0, i32 90
  %95 = load i32, i32* %w_zauto141, align 4
  %cmp142 = icmp eq i32 %95, 0
  br i1 %cmp142, label %land.lhs.true.144, label %if.end.162

land.lhs.true.144:                                ; preds = %for.end.140
  %96 = load i32, i32* %len.addr, align 4
  %sub145 = sub nsw i32 %96, 1
  %idxprom146 = sext i32 %sub145 to i64
  %97 = load i8*, i8** %bp.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %97, i64 %idxprom146
  %98 = load i8, i8* %arrayidx147, align 1
  %conv148 = sext i8 %98 to i32
  %cmp149 = icmp eq i32 %conv148, 42
  br i1 %cmp149, label %if.then.151, label %if.end.162

if.then.151:                                      ; preds = %land.lhs.true.144
  %99 = load i32, i32* %len.addr, align 4
  %cmp152 = icmp sgt i32 %99, 1
  br i1 %cmp152, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.151
  %100 = load i32, i32* %len.addr, align 4
  %sub154 = sub nsw i32 %100, 2
  %idxprom155 = sext i32 %sub154 to i64
  %101 = load i8*, i8** %bp.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %101, i64 %idxprom155
  %102 = load i8, i8* %arrayidx156, align 1
  %conv157 = sext i8 %102 to i32
  %cmp158 = icmp eq i32 %conv157, 42
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.151
  %103 = phi i1 [ false, %if.then.151 ], [ %cmp158, %land.rhs ]
  %cond160 = select i1 %103, i32 2, i32 1
  %104 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zauto161 = getelementptr inbounds %struct.win, %struct.win* %104, i32 0, i32 90
  store i32 %cond160, i32* %w_zauto161, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %land.end, %land.lhs.true.144, %for.end.140
  %105 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zdisplay163 = getelementptr inbounds %struct.win, %struct.win* %105, i32 0, i32 91
  %106 = load %struct.display*, %struct.display** %w_zdisplay163, align 8
  %tobool164 = icmp ne %struct.display* %106, null
  br i1 %tobool164, label %if.then.165, label %if.end.184

if.then.165:                                      ; preds = %if.end.162
  %107 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zdisplay166 = getelementptr inbounds %struct.win, %struct.win* %107, i32 0, i32 91
  %108 = load %struct.display*, %struct.display** %w_zdisplay166, align 8
  store %struct.display* %108, %struct.display** @display, align 8
  br label %while.cond.167

while.cond.167:                                   ; preds = %do.end.182, %if.then.165
  %109 = load i32, i32* %len.addr, align 4
  %dec168 = add nsw i32 %109, -1
  store i32 %dec168, i32* %len.addr, align 4
  %cmp169 = icmp sgt i32 %109, 0
  br i1 %cmp169, label %while.body.171, label %while.end.183

while.body.171:                                   ; preds = %while.cond.167
  br label %do.body.172

do.body.172:                                      ; preds = %while.body.171
  %110 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree173 = getelementptr inbounds %struct.display, %struct.display* %110, i32 0, i32 72
  %111 = load i32, i32* %d_obuffree173, align 4
  %dec174 = add nsw i32 %111, -1
  store i32 %dec174, i32* %d_obuffree173, align 4
  %cmp175 = icmp sle i32 %dec174, 0
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %do.body.172
  call void @Resize_obuf()
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %do.body.172
  %112 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr179 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr179, i8** %bp.addr, align 8
  %113 = load i8, i8* %112, align 1
  %114 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp180 = getelementptr inbounds %struct.display, %struct.display* %114, i32 0, i32 71
  %115 = load i8*, i8** %d_obufp180, align 8
  %incdec.ptr181 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr181, i8** %d_obufp180, align 8
  store i8 %113, i8* %115, align 1
  br label %do.end.182

do.end.182:                                       ; preds = %if.end.178
  br label %while.cond.167

while.end.183:                                    ; preds = %while.cond.167
  store i32 1, i32* %retval
  br label %return

if.end.184:                                       ; preds = %if.end.162
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.184, %while.end.183, %cond.end, %if.end.71
  %116 = load i32, i32* %retval
  ret i32 %116
}

declare void @LayPause(%struct.layer*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @zmodem_found(%struct.win* %p, i32 %send, i8* %bp, i32 %len) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %send.addr = alloca i32, align 4
  %bp.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %d = alloca %struct.display*, align 8
  %olddisplay = alloca %struct.display*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %send, i32* %send.addr, align 4
  store i8* %bp, i8** %bp.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %bp.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 24
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %n, align 4
  br label %if.end.6

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* %n, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n, align 4
  %cmp3 = icmp sgt i32 %inc, 4
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %6 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* @zmodem_mode, align 4
  %cmp8 = icmp eq i32 %7, 3
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %8 = load i32, i32* @zmodem_mode, align 4
  %cmp10 = icmp eq i32 %8, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 1
  %10 = load i32, i32* %w_type, align 4
  %cmp12 = icmp ne i32 %10, 1
  br i1 %cmp12, label %if.then.14, label %if.end.54

if.then.14:                                       ; preds = %land.lhs.true, %for.end
  %11 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %11, %struct.display** %olddisplay, align 8
  %12 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_lastdisp = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 8
  %13 = load %struct.display*, %struct.display** %w_lastdisp, align 8
  store %struct.display* %13, %struct.display** %d, align 8
  %14 = load %struct.display*, %struct.display** %d, align 8
  %tobool = icmp ne %struct.display* %14, null
  br i1 %tobool, label %lor.lhs.false.15, label %if.then.18

lor.lhs.false.15:                                 ; preds = %if.then.14
  %15 = load %struct.display*, %struct.display** %d, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 10
  %16 = load %struct.win*, %struct.win** %d_fore, align 8
  %17 = load %struct.win*, %struct.win** %p.addr, align 8
  %cmp16 = icmp ne %struct.win* %16, %17
  br i1 %cmp16, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %lor.lhs.false.15, %if.then.14
  %18 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %18, %struct.display** %d, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.27, %if.then.18
  %19 = load %struct.display*, %struct.display** %d, align 8
  %tobool20 = icmp ne %struct.display* %19, null
  br i1 %tobool20, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.19
  %20 = load %struct.display*, %struct.display** %d, align 8
  %d_fore22 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 10
  %21 = load %struct.win*, %struct.win** %d_fore22, align 8
  %22 = load %struct.win*, %struct.win** %p.addr, align 8
  %cmp23 = icmp eq %struct.win* %21, %22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body.21
  br label %for.end.28

if.end.26:                                        ; preds = %for.body.21
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %23 = load %struct.display*, %struct.display** %d, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 0
  %24 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %24, %struct.display** %d, align 8
  br label %for.cond.19

for.end.28:                                       ; preds = %if.then.25, %for.cond.19
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.28, %lor.lhs.false.15
  %25 = load %struct.display*, %struct.display** %d, align 8
  %tobool30 = icmp ne %struct.display* %25, null
  br i1 %tobool30, label %if.end.36, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %if.end.29
  %26 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 0
  %27 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool32 = icmp ne %struct.canvas* %27, null
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %land.lhs.true.31
  %28 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer34 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 3
  %l_cvlist35 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer34, i32 0, i32 0
  %29 = load %struct.canvas*, %struct.canvas** %l_cvlist35, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %29, i32 0, i32 1
  %30 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %30, %struct.display** %d, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %land.lhs.true.31, %if.end.29
  %31 = load %struct.display*, %struct.display** %d, align 8
  %tobool37 = icmp ne %struct.display* %31, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.36
  %32 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %32, %struct.display** %d, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.36
  %33 = load %struct.display*, %struct.display** %d, align 8
  %tobool40 = icmp ne %struct.display* %33, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.39
  br label %return

if.end.42:                                        ; preds = %if.end.39
  %34 = load %struct.display*, %struct.display** %d, align 8
  store %struct.display* %34, %struct.display** @display, align 8
  call void @RemoveStatus()
  %35 = load %struct.display*, %struct.display** @display, align 8
  %36 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zdisplay = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 91
  store %struct.display* %35, %struct.display** %w_zdisplay, align 8
  %37 = load i32, i32* %send.addr, align 4
  %add = add nsw i32 2, %37
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 102
  store i32 %add, i32* %d_blocked, align 4
  %39 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer43 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 3
  store %struct.layer* %w_layer43, %struct.layer** @flayer, align 8
  call void @ZmodemPage()
  %40 = load %struct.display*, %struct.display** %d, align 8
  store %struct.display* %40, %struct.display** @display, align 8
  %41 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 62
  call void @evdeq(%struct.event* %d_blockedev)
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_readev = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 60
  %condpos = getelementptr inbounds %struct.event, %struct.event* %d_readev, i32 0, i32 9
  store i32* @const_IOSIZE, i32** %condpos, align 8
  %43 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_inlen = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 17
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_readev44 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 60
  %condneg = getelementptr inbounds %struct.event, %struct.event* %d_readev44, i32 0, i32 10
  store i32* %w_inlen, i32** %condneg, align 8
  call void @ClearAll()
  call void @GotoPos(i32 0, i32 0)
  call void @SetRendition(%struct.mchar* @mchar_blank)
  call void @AddStr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0))
  %45 = load i32, i32* %send.addr, align 4
  %tobool45 = icmp ne i32 %45, 0
  %cond = select i1 %tobool45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0)
  call void @AddStr(i8* %cond)
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end.42
  %46 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %len.addr, align 4
  %cmp46 = icmp sgt i32 %46, 0
  br i1 %cmp46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 72
  %48 = load i32, i32* %d_obuffree, align 4
  %dec48 = add nsw i32 %48, -1
  store i32 %dec48, i32* %d_obuffree, align 4
  %cmp49 = icmp sle i32 %dec48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %do.body
  call void @Resize_obuf()
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %do.body
  %49 = load i8*, i8** %bp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr, i8** %bp.addr, align 8
  %50 = load i8, i8* %49, align 1
  %51 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 71
  %52 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr53, i8** %d_obufp, align 8
  store i8 %50, i8* %52, align 1
  br label %do.end

do.end:                                           ; preds = %if.end.52
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %53 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %53, %struct.display** @display, align 8
  br label %return

if.end.54:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %54 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer55 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 3
  store %struct.layer* %w_layer55, %struct.layer** @flayer, align 8
  call void @Input(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i32 768, i32 0, void (i8*, i32, i8*)* @zmodem_fin, i8* null, i32 0)
  %55 = load i32, i32* %send.addr, align 4
  %tobool56 = icmp ne i32 %55, 0
  br i1 %tobool56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.54
  %56 = load i8*, i8** @zmodem_sendcmd, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.54
  %57 = load i8*, i8** @zmodem_recvcmd, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond57 = phi i8* [ %56, %cond.true ], [ %57, %cond.false ]
  store i8* %cond57, i8** %s, align 8
  %58 = load i8*, i8** %s, align 8
  %call = call i64 @strlen(i8* %58) #7
  %conv58 = trunc i64 %call to i32
  store i32 %conv58, i32* %n, align 4
  %59 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %59, i32 0, i32 6
  %60 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayProcess = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %60, i32 0, i32 0
  %61 = load void (i8**, i32*)*, void (i8**, i32*)** %lf_LayProcess, align 8
  call void %61(i8** %s, i32* %n)
  br label %return

return:                                           ; preds = %cond.end, %while.end, %if.then.41, %if.then.5
  ret void
}

declare void @Resize_obuf() #2

declare void @Flush(i32) #2

declare void @RemoveStatus() #2

declare void @ZmodemPage() #2

declare void @ClearAll() #2

declare void @GotoPos(i32, i32) #2

declare void @SetRendition(%struct.mchar*) #2

declare void @AddStr(i8*) #2

declare void @Input(i8*, i32, i32, void (i8*, i32, i8*)*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @zmodem_fin(i8* %buf, i32 %len, i8* %data) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %call = call i64 @strlen(i8* %2) #7
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  call void @RcLine(i8* %1, i32 %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8** %s, align 8
  %3 = load i8*, i8** %s, align 8
  %call1 = call i64 @strlen(i8* %3) #7
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %n, align 4
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 6
  %5 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayProcess = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %5, i32 0, i32 0
  %6 = load void (i8**, i32*)*, void (i8**, i32*)** %lf_LayProcess, align 8
  call void %6(i8** %s, i32* %n)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @RcLine(i8*, i32) #2

declare i64 @write(i32, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
