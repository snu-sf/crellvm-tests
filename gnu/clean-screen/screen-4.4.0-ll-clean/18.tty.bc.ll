; ModuleID = './tty.bc'
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
%struct.baud_values = type { i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@separate_sids = global i32 1, align 4
@.str = private unnamed_addr constant [56 x i8] c"Cannot open line '%s' for R/W: open() blocked, aborted.\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot open line '%s' for R/W\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"'%s' is not a tty\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: ioctl TIOCEXCL failed\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"SetTTY (fd %d): ioctl failed\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"GetTTY (fd %d): ioctl failed\00", align 1
@display = external global %struct.display*, align 8
@iflag = external global i32, align 4
@SttyMode.sep = internal constant [6 x i8] c" \09:;,\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cs7\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"cs8\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"istrip\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"-istrip\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ixon\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"-ixon\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ixoff\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"-ixoff\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"crtscts\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"-crtscts\00", align 1
@breaktype = global i32 2, align 4
@.str.16 = private unnamed_addr constant [47 x i8] c"Ouch, cannot reopen line %s, please try harder\00", align 1
@displays = external global %struct.display*, align 8
@.str.17 = private unnamed_addr constant [17 x i8] c"I need a display\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"too dangerous - screen is running on /dev/console\00", align 1
@consredirfd = internal global [2 x i32] [i32 -1, i32 -1], align 4
@consredir_ev = internal global %struct.event zeroinitializer, align 8
@.str.20 = private unnamed_addr constant [37 x i8] c"%s: could not open detach pty master\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"%s: could not open detach pty slave\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"%s: ioctl TIOCCONS failed\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"NO-TTY? %s\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"(CD)\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"!RTS \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"!CTS \00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"!CTS) \00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"!DTR \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"!DSR \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"!CD \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"!CD) \00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"RI \00", align 1
@btable = internal global [23 x %struct.baud_values] [%struct.baud_values { i32 13, i32 9600, i32 13 }, %struct.baud_values { i32 14, i32 19200, i32 14 }, %struct.baud_values { i32 14, i32 19200, i32 14 }, %struct.baud_values { i32 15, i32 38400, i32 15 }, %struct.baud_values { i32 15, i32 38400, i32 15 }, %struct.baud_values { i32 16, i32 57600, i32 4097 }, %struct.baud_values { i32 17, i32 115200, i32 4098 }, %struct.baud_values { i32 18, i32 230400, i32 4099 }, %struct.baud_values { i32 19, i32 460800, i32 4100 }, %struct.baud_values { i32 12, i32 4800, i32 12 }, %struct.baud_values { i32 11, i32 2400, i32 11 }, %struct.baud_values { i32 10, i32 1800, i32 10 }, %struct.baud_values { i32 9, i32 1200, i32 9 }, %struct.baud_values { i32 8, i32 600, i32 8 }, %struct.baud_values { i32 7, i32 300, i32 7 }, %struct.baud_values { i32 6, i32 200, i32 6 }, %struct.baud_values { i32 5, i32 150, i32 5 }, %struct.baud_values { i32 4, i32 134, i32 4 }, %struct.baud_values { i32 3, i32 110, i32 3 }, %struct.baud_values { i32 2, i32 75, i32 2 }, %struct.baud_values { i32 1, i32 50, i32 1 }, %struct.baud_values zeroinitializer, %struct.baud_values { i32 -1, i32 -1, i32 -1 }], align 16
@.str.34 = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"cannot send BREAK (tcsendbreak SVR4)\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"Cannot send BREAK (TCSBRK)\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"Can't send BREAK (TIOCSBRK)\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"BREAK stuck!!! -- HELP! (TIOCCBRK)\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"Internal SendBreak error: method %d unknown\00", align 1
@console_window = external global %struct.win*, align 8
@.str.40 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @OpenTTY(i8* %line, i8* %opt) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %opt.addr = alloca i8*, align 8
  %f = alloca i32, align 4
  %Mode = alloca %struct.mode, align 4
  %sigalrm = alloca void (i32)*, align 8
  %mcs = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  store i8* %opt, i8** %opt.addr, align 8
  %call = call void (i32)* @xsignal(i32 14, void (i32)* @SigAlrmDummy)
  store void (i32)* %call, void (i32)** %sigalrm, align 8
  %call1 = call i32 @alarm(i32 2) #4
  %0 = load i8*, i8** %line.addr, align 8
  %call2 = call i32 @secopen(i8* %0, i32 2306, i32 0)
  store i32 %call2, i32* %f, align 4
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %call3 = call i32* @__errno_location() #6
  %1 = load i32, i32* %call3, align 4
  %cmp4 = icmp eq i32 %1, 4
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %2 = load i8*, i8** %line.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i32 0, i32 0), i8* %2)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call6, align 4
  %4 = load i8*, i8** %line.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %call7 = call i32 @alarm(i32 0) #4
  %5 = load void (i32)*, void (i32)** %sigalrm, align 8
  %call8 = call void (i32)* @xsignal(i32 14, void (i32)* %5)
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %entry
  %6 = load i32, i32* %f, align 4
  %call10 = call i32 @isatty(i32 %6) #4
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end.15, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %7 = load i8*, i8** %line.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* %7)
  %call12 = call i32 @alarm(i32 0) #4
  %8 = load void (i32)*, void (i32)** %sigalrm, align 8
  %call13 = call void (i32)* @xsignal(i32 14, void (i32)* %8)
  %9 = load i32, i32* %f, align 4
  %call14 = call i32 @close(i32 %9)
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %call16 = call i32* @__errno_location() #6
  store i32 0, i32* %call16, align 4
  %10 = load i32, i32* %f, align 4
  %call17 = call i32 (i32, i64, ...) @ioctl(i32 %10, i64 21516, i8* null) #4
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.15
  %call20 = call i32* @__errno_location() #6
  %11 = load i32, i32* %call20, align 4
  %12 = load i8*, i8** %line.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* %12)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.end.21
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.22

do.body.22:                                       ; preds = %do.end
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.22
  call void @InitTTY(%struct.mode* %Mode, i32 1)
  %13 = load i8*, i8** %opt.addr, align 8
  %call24 = call i32 @SttyMode(%struct.mode* %Mode, i8* %13)
  %14 = load i32, i32* %f, align 4
  call void @SetTTY(i32 %14, %struct.mode* %Mode)
  store i32 0, i32* %mcs, align 4
  %15 = load i32, i32* %f, align 4
  %call25 = call i32 (i32, i64, ...) @ioctl(i32 %15, i64 21525, i32* %mcs) #4
  %16 = load i32, i32* %mcs, align 4
  %or = or i32 %16, 4
  store i32 %or, i32* %mcs, align 4
  %17 = load i32, i32* %f, align 4
  %call26 = call i32 (i32, i64, ...) @ioctl(i32 %17, i64 21528, i32* %mcs) #4
  %18 = load i32, i32* %f, align 4
  call void @brktty(i32 %18)
  %call27 = call i32 @alarm(i32 0) #4
  %19 = load void (i32)*, void (i32)** %sigalrm, align 8
  %call28 = call void (i32)* @xsignal(i32 14, void (i32)* %19)
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.23
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.29
  %20 = load i32, i32* %f, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %do.end.30, %if.then.11, %if.end
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare void (i32)* @xsignal(i32, void (i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @SigAlrmDummy(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind
declare i32 @alarm(i32) #2

declare i32 @secopen(i8*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void @Msg(i32, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

; Function Attrs: nounwind uwtable
define void @InitTTY(%struct.mode* %m, i32 %ttyflag) #0 {
entry:
  %m.addr = alloca %struct.mode*, align 8
  %ttyflag.addr = alloca i32, align 4
  store %struct.mode* %m, %struct.mode** %m.addr, align 8
  store i32 %ttyflag, i32* %ttyflag.addr, align 4
  %0 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %1 = bitcast %struct.mode* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 60, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %2, i32 0, i32 0
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 0
  %3 = load i32, i32* %c_iflag, align 4
  %or = or i32 %3, 2
  store i32 %or, i32* %c_iflag, align 4
  %4 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio1 = getelementptr inbounds %struct.mode, %struct.mode* %4, i32 0, i32 0
  %c_iflag2 = getelementptr inbounds %struct.termios, %struct.termios* %tio1, i32 0, i32 0
  %5 = load i32, i32* %c_iflag2, align 4
  %or3 = or i32 %5, 4
  store i32 %or3, i32* %c_iflag2, align 4
  %6 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio4 = getelementptr inbounds %struct.mode, %struct.mode* %6, i32 0, i32 0
  %c_iflag5 = getelementptr inbounds %struct.termios, %struct.termios* %tio4, i32 0, i32 0
  %7 = load i32, i32* %c_iflag5, align 4
  %or6 = or i32 %7, 1024
  store i32 %or6, i32* %c_iflag5, align 4
  %8 = load i32, i32* %ttyflag.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %9 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio7 = getelementptr inbounds %struct.mode, %struct.mode* %9, i32 0, i32 0
  %c_iflag8 = getelementptr inbounds %struct.termios, %struct.termios* %tio7, i32 0, i32 0
  %10 = load i32, i32* %c_iflag8, align 4
  %or9 = or i32 %10, 256
  store i32 %or9, i32* %c_iflag8, align 4
  %11 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio10 = getelementptr inbounds %struct.mode, %struct.mode* %11, i32 0, i32 0
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %tio10, i32 0, i32 1
  %12 = load i32, i32* %c_oflag, align 4
  %or11 = or i32 %12, 4
  store i32 %or11, i32* %c_oflag, align 4
  %13 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio12 = getelementptr inbounds %struct.mode, %struct.mode* %13, i32 0, i32 0
  %c_oflag13 = getelementptr inbounds %struct.termios, %struct.termios* %tio12, i32 0, i32 1
  %14 = load i32, i32* %c_oflag13, align 4
  %or14 = or i32 %14, 6144
  store i32 %or14, i32* %c_oflag13, align 4
  %15 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio15 = getelementptr inbounds %struct.mode, %struct.mode* %15, i32 0, i32 0
  %c_oflag16 = getelementptr inbounds %struct.termios, %struct.termios* %tio15, i32 0, i32 1
  %16 = load i32, i32* %c_oflag16, align 4
  %or17 = or i32 %16, 1
  store i32 %or17, i32* %c_oflag16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %17 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio18 = getelementptr inbounds %struct.mode, %struct.mode* %17, i32 0, i32 0
  %call = call i32 @cfsetospeed(%struct.termios* %tio18, i32 13) #4
  %18 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio19 = getelementptr inbounds %struct.mode, %struct.mode* %18, i32 0, i32 0
  %call20 = call i32 @cfsetispeed(%struct.termios* %tio19, i32 13) #4
  %19 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio21 = getelementptr inbounds %struct.mode, %struct.mode* %19, i32 0, i32 0
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %tio21, i32 0, i32 2
  %20 = load i32, i32* %c_cflag, align 4
  %or22 = or i32 %20, 48
  store i32 %or22, i32* %c_cflag, align 4
  %21 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio23 = getelementptr inbounds %struct.mode, %struct.mode* %21, i32 0, i32 0
  %c_cflag24 = getelementptr inbounds %struct.termios, %struct.termios* %tio23, i32 0, i32 2
  %22 = load i32, i32* %c_cflag24, align 4
  %or25 = or i32 %22, 128
  store i32 %or25, i32* %c_cflag24, align 4
  %23 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio26 = getelementptr inbounds %struct.mode, %struct.mode* %23, i32 0, i32 0
  %c_cflag27 = getelementptr inbounds %struct.termios, %struct.termios* %tio26, i32 0, i32 2
  %24 = load i32, i32* %c_cflag27, align 4
  %or28 = or i32 %24, 2048
  store i32 %or28, i32* %c_cflag27, align 4
  %25 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio29 = getelementptr inbounds %struct.mode, %struct.mode* %25, i32 0, i32 0
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %tio29, i32 0, i32 3
  %26 = load i32, i32* %c_lflag, align 4
  %or30 = or i32 %26, 512
  store i32 %or30, i32* %c_lflag, align 4
  %27 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio31 = getelementptr inbounds %struct.mode, %struct.mode* %27, i32 0, i32 0
  %c_lflag32 = getelementptr inbounds %struct.termios, %struct.termios* %tio31, i32 0, i32 3
  %28 = load i32, i32* %c_lflag32, align 4
  %or33 = or i32 %28, 2048
  store i32 %or33, i32* %c_lflag32, align 4
  %29 = load i32, i32* %ttyflag.addr, align 4
  %tobool34 = icmp ne i32 %29, 0
  br i1 %tobool34, label %if.end.45, label %if.then.35

if.then.35:                                       ; preds = %if.end
  %30 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio36 = getelementptr inbounds %struct.mode, %struct.mode* %30, i32 0, i32 0
  %c_lflag37 = getelementptr inbounds %struct.termios, %struct.termios* %tio36, i32 0, i32 3
  %31 = load i32, i32* %c_lflag37, align 4
  %or38 = or i32 %31, 1
  store i32 %or38, i32* %c_lflag37, align 4
  %32 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio39 = getelementptr inbounds %struct.mode, %struct.mode* %32, i32 0, i32 0
  %c_lflag40 = getelementptr inbounds %struct.termios, %struct.termios* %tio39, i32 0, i32 3
  %33 = load i32, i32* %c_lflag40, align 4
  %or41 = or i32 %33, 2
  store i32 %or41, i32* %c_lflag40, align 4
  %34 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio42 = getelementptr inbounds %struct.mode, %struct.mode* %34, i32 0, i32 0
  %c_lflag43 = getelementptr inbounds %struct.termios, %struct.termios* %tio42, i32 0, i32 3
  %35 = load i32, i32* %c_lflag43, align 4
  %or44 = or i32 %35, 8
  store i32 %or44, i32* %c_lflag43, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.35, %if.end
  %36 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio46 = getelementptr inbounds %struct.mode, %struct.mode* %36, i32 0, i32 0
  %c_lflag47 = getelementptr inbounds %struct.termios, %struct.termios* %tio46, i32 0, i32 3
  %37 = load i32, i32* %c_lflag47, align 4
  %or48 = or i32 %37, 16
  store i32 %or48, i32* %c_lflag47, align 4
  %38 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio49 = getelementptr inbounds %struct.mode, %struct.mode* %38, i32 0, i32 0
  %c_lflag50 = getelementptr inbounds %struct.termios, %struct.termios* %tio49, i32 0, i32 3
  %39 = load i32, i32* %c_lflag50, align 4
  %or51 = or i32 %39, 32
  store i32 %or51, i32* %c_lflag50, align 4
  %40 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio52 = getelementptr inbounds %struct.mode, %struct.mode* %40, i32 0, i32 0
  %c_lflag53 = getelementptr inbounds %struct.termios, %struct.termios* %tio52, i32 0, i32 3
  %41 = load i32, i32* %c_lflag53, align 4
  %or54 = or i32 %41, 32768
  store i32 %or54, i32* %c_lflag53, align 4
  %42 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio55 = getelementptr inbounds %struct.mode, %struct.mode* %42, i32 0, i32 0
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %tio55, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i64 0
  store i8 3, i8* %arrayidx, align 1
  %43 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio56 = getelementptr inbounds %struct.mode, %struct.mode* %43, i32 0, i32 0
  %c_cc57 = getelementptr inbounds %struct.termios, %struct.termios* %tio56, i32 0, i32 5
  %arrayidx58 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc57, i32 0, i64 1
  store i8 28, i8* %arrayidx58, align 1
  %44 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio59 = getelementptr inbounds %struct.mode, %struct.mode* %44, i32 0, i32 0
  %c_cc60 = getelementptr inbounds %struct.termios, %struct.termios* %tio59, i32 0, i32 5
  %arrayidx61 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc60, i32 0, i64 2
  store i8 127, i8* %arrayidx61, align 1
  %45 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio62 = getelementptr inbounds %struct.mode, %struct.mode* %45, i32 0, i32 0
  %c_cc63 = getelementptr inbounds %struct.termios, %struct.termios* %tio62, i32 0, i32 5
  %arrayidx64 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc63, i32 0, i64 3
  store i8 8, i8* %arrayidx64, align 1
  %46 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio65 = getelementptr inbounds %struct.mode, %struct.mode* %46, i32 0, i32 0
  %c_cc66 = getelementptr inbounds %struct.termios, %struct.termios* %tio65, i32 0, i32 5
  %arrayidx67 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc66, i32 0, i64 4
  store i8 4, i8* %arrayidx67, align 1
  %47 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio68 = getelementptr inbounds %struct.mode, %struct.mode* %47, i32 0, i32 0
  %c_cc69 = getelementptr inbounds %struct.termios, %struct.termios* %tio68, i32 0, i32 5
  %arrayidx70 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc69, i32 0, i64 11
  store i8 0, i8* %arrayidx70, align 1
  %48 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio71 = getelementptr inbounds %struct.mode, %struct.mode* %48, i32 0, i32 0
  %c_cc72 = getelementptr inbounds %struct.termios, %struct.termios* %tio71, i32 0, i32 5
  %arrayidx73 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc72, i32 0, i64 16
  store i8 0, i8* %arrayidx73, align 1
  %49 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio74 = getelementptr inbounds %struct.mode, %struct.mode* %49, i32 0, i32 0
  %c_cc75 = getelementptr inbounds %struct.termios, %struct.termios* %tio74, i32 0, i32 5
  %arrayidx76 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc75, i32 0, i64 8
  store i8 17, i8* %arrayidx76, align 1
  %50 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio77 = getelementptr inbounds %struct.mode, %struct.mode* %50, i32 0, i32 0
  %c_cc78 = getelementptr inbounds %struct.termios, %struct.termios* %tio77, i32 0, i32 5
  %arrayidx79 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc78, i32 0, i64 9
  store i8 19, i8* %arrayidx79, align 1
  %51 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio80 = getelementptr inbounds %struct.mode, %struct.mode* %51, i32 0, i32 0
  %c_cc81 = getelementptr inbounds %struct.termios, %struct.termios* %tio80, i32 0, i32 5
  %arrayidx82 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc81, i32 0, i64 10
  store i8 26, i8* %arrayidx82, align 1
  %52 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio83 = getelementptr inbounds %struct.mode, %struct.mode* %52, i32 0, i32 0
  %c_cc84 = getelementptr inbounds %struct.termios, %struct.termios* %tio83, i32 0, i32 5
  %arrayidx85 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc84, i32 0, i64 12
  store i8 18, i8* %arrayidx85, align 1
  %53 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio86 = getelementptr inbounds %struct.mode, %struct.mode* %53, i32 0, i32 0
  %c_cc87 = getelementptr inbounds %struct.termios, %struct.termios* %tio86, i32 0, i32 5
  %arrayidx88 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc87, i32 0, i64 13
  store i8 15, i8* %arrayidx88, align 1
  %54 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio89 = getelementptr inbounds %struct.mode, %struct.mode* %54, i32 0, i32 0
  %c_cc90 = getelementptr inbounds %struct.termios, %struct.termios* %tio89, i32 0, i32 5
  %arrayidx91 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc90, i32 0, i64 14
  store i8 23, i8* %arrayidx91, align 1
  %55 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio92 = getelementptr inbounds %struct.mode, %struct.mode* %55, i32 0, i32 0
  %c_cc93 = getelementptr inbounds %struct.termios, %struct.termios* %tio92, i32 0, i32 5
  %arrayidx94 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc93, i32 0, i64 15
  store i8 22, i8* %arrayidx94, align 1
  %56 = load i32, i32* %ttyflag.addr, align 4
  %tobool95 = icmp ne i32 %56, 0
  br i1 %tobool95, label %if.then.96, label %if.end.103

if.then.96:                                       ; preds = %if.end.45
  %57 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio97 = getelementptr inbounds %struct.mode, %struct.mode* %57, i32 0, i32 0
  %c_cc98 = getelementptr inbounds %struct.termios, %struct.termios* %tio97, i32 0, i32 5
  %arrayidx99 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc98, i32 0, i64 6
  store i8 100, i8* %arrayidx99, align 1
  %58 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio100 = getelementptr inbounds %struct.mode, %struct.mode* %58, i32 0, i32 0
  %c_cc101 = getelementptr inbounds %struct.termios, %struct.termios* %tio100, i32 0, i32 5
  %arrayidx102 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc101, i32 0, i64 5
  store i8 2, i8* %arrayidx102, align 1
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.96, %if.end.45
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @SttyMode(%struct.mode* %m, i8* %opt) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.mode*, align 8
  %opt.addr = alloca i8*, align 8
  store %struct.mode* %m, %struct.mode** %m.addr, align 8
  store i8* %opt, i8** %opt.addr, align 8
  %0 = load i8*, i8** %opt.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end.107, %if.end
  %1 = load i8*, i8** %opt.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %while.body, label %while.end.108

while.body:                                       ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.4, %while.body
  %3 = load i8*, i8** %opt.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %call = call i8* @index(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @SttyMode.sep, i32 0, i32 0), i32 %conv) #7
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.2
  %5 = load i8*, i8** %opt.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %opt.addr, align 8
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  %6 = load i8*, i8** %opt.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %cmp = icmp sge i32 %conv5, 48
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %8 = load i8*, i8** %opt.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp sle i32 %conv7, 57
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %10 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %11 = load i8*, i8** %opt.addr, align 8
  %call11 = call i32 @atoi(i8* %11) #7
  %12 = load i8*, i8** %opt.addr, align 8
  %call12 = call i32 @atoi(i8* %12) #7
  %call13 = call i32 @SetBaud(%struct.mode* %10, i32 %call11, i32 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.10
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.10
  br label %if.end.98

if.else:                                          ; preds = %land.lhs.true, %while.end
  %13 = load i8*, i8** %opt.addr, align 8
  %call17 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %13, i64 3) #7
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.22, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %14 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %14, i32 0, i32 0
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 2
  %15 = load i32, i32* %c_cflag, align 4
  %and = and i32 %15, -49
  store i32 %and, i32* %c_cflag, align 4
  %16 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio20 = getelementptr inbounds %struct.mode, %struct.mode* %16, i32 0, i32 0
  %c_cflag21 = getelementptr inbounds %struct.termios, %struct.termios* %tio20, i32 0, i32 2
  %17 = load i32, i32* %c_cflag21, align 4
  %or = or i32 %17, 32
  store i32 %or, i32* %c_cflag21, align 4
  br label %if.end.97

if.else.22:                                       ; preds = %if.else
  %18 = load i8*, i8** %opt.addr, align 8
  %call23 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %18, i64 3) #7
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.else.32, label %if.then.25

if.then.25:                                       ; preds = %if.else.22
  %19 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio26 = getelementptr inbounds %struct.mode, %struct.mode* %19, i32 0, i32 0
  %c_cflag27 = getelementptr inbounds %struct.termios, %struct.termios* %tio26, i32 0, i32 2
  %20 = load i32, i32* %c_cflag27, align 4
  %and28 = and i32 %20, -49
  store i32 %and28, i32* %c_cflag27, align 4
  %21 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio29 = getelementptr inbounds %struct.mode, %struct.mode* %21, i32 0, i32 0
  %c_cflag30 = getelementptr inbounds %struct.termios, %struct.termios* %tio29, i32 0, i32 2
  %22 = load i32, i32* %c_cflag30, align 4
  %or31 = or i32 %22, 48
  store i32 %or31, i32* %c_cflag30, align 4
  br label %if.end.96

if.else.32:                                       ; preds = %if.else.22
  %23 = load i8*, i8** %opt.addr, align 8
  %call33 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* %23, i64 6) #7
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.else.38, label %if.then.35

if.then.35:                                       ; preds = %if.else.32
  %24 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio36 = getelementptr inbounds %struct.mode, %struct.mode* %24, i32 0, i32 0
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %tio36, i32 0, i32 0
  %25 = load i32, i32* %c_iflag, align 4
  %or37 = or i32 %25, 32
  store i32 %or37, i32* %c_iflag, align 4
  br label %if.end.95

if.else.38:                                       ; preds = %if.else.32
  %26 = load i8*, i8** %opt.addr, align 8
  %call39 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %26, i64 7) #7
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.else.45, label %if.then.41

if.then.41:                                       ; preds = %if.else.38
  %27 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio42 = getelementptr inbounds %struct.mode, %struct.mode* %27, i32 0, i32 0
  %c_iflag43 = getelementptr inbounds %struct.termios, %struct.termios* %tio42, i32 0, i32 0
  %28 = load i32, i32* %c_iflag43, align 4
  %and44 = and i32 %28, -33
  store i32 %and44, i32* %c_iflag43, align 4
  br label %if.end.94

if.else.45:                                       ; preds = %if.else.38
  %29 = load i8*, i8** %opt.addr, align 8
  %call46 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %29, i64 4) #7
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else.52, label %if.then.48

if.then.48:                                       ; preds = %if.else.45
  %30 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio49 = getelementptr inbounds %struct.mode, %struct.mode* %30, i32 0, i32 0
  %c_iflag50 = getelementptr inbounds %struct.termios, %struct.termios* %tio49, i32 0, i32 0
  %31 = load i32, i32* %c_iflag50, align 4
  %or51 = or i32 %31, 1024
  store i32 %or51, i32* %c_iflag50, align 4
  br label %if.end.93

if.else.52:                                       ; preds = %if.else.45
  %32 = load i8*, i8** %opt.addr, align 8
  %call53 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %32, i64 5) #7
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else.59, label %if.then.55

if.then.55:                                       ; preds = %if.else.52
  %33 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio56 = getelementptr inbounds %struct.mode, %struct.mode* %33, i32 0, i32 0
  %c_iflag57 = getelementptr inbounds %struct.termios, %struct.termios* %tio56, i32 0, i32 0
  %34 = load i32, i32* %c_iflag57, align 4
  %and58 = and i32 %34, -1025
  store i32 %and58, i32* %c_iflag57, align 4
  br label %if.end.92

if.else.59:                                       ; preds = %if.else.52
  %35 = load i8*, i8** %opt.addr, align 8
  %call60 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %35, i64 5) #7
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.else.66, label %if.then.62

if.then.62:                                       ; preds = %if.else.59
  %36 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio63 = getelementptr inbounds %struct.mode, %struct.mode* %36, i32 0, i32 0
  %c_iflag64 = getelementptr inbounds %struct.termios, %struct.termios* %tio63, i32 0, i32 0
  %37 = load i32, i32* %c_iflag64, align 4
  %or65 = or i32 %37, 4096
  store i32 %or65, i32* %c_iflag64, align 4
  br label %if.end.91

if.else.66:                                       ; preds = %if.else.59
  %38 = load i8*, i8** %opt.addr, align 8
  %call67 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %38, i64 6) #7
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.else.73, label %if.then.69

if.then.69:                                       ; preds = %if.else.66
  %39 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio70 = getelementptr inbounds %struct.mode, %struct.mode* %39, i32 0, i32 0
  %c_iflag71 = getelementptr inbounds %struct.termios, %struct.termios* %tio70, i32 0, i32 0
  %40 = load i32, i32* %c_iflag71, align 4
  %and72 = and i32 %40, -4097
  store i32 %and72, i32* %c_iflag71, align 4
  br label %if.end.90

if.else.73:                                       ; preds = %if.else.66
  %41 = load i8*, i8** %opt.addr, align 8
  %call74 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* %41, i64 7) #7
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.else.80, label %if.then.76

if.then.76:                                       ; preds = %if.else.73
  %42 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio77 = getelementptr inbounds %struct.mode, %struct.mode* %42, i32 0, i32 0
  %c_cflag78 = getelementptr inbounds %struct.termios, %struct.termios* %tio77, i32 0, i32 2
  %43 = load i32, i32* %c_cflag78, align 4
  %or79 = or i32 %43, -2147483648
  store i32 %or79, i32* %c_cflag78, align 4
  br label %if.end.89

if.else.80:                                       ; preds = %if.else.73
  %44 = load i8*, i8** %opt.addr, align 8
  %call81 = call i32 @strncmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* %44, i64 8) #7
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.else.87, label %if.then.83

if.then.83:                                       ; preds = %if.else.80
  %45 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio84 = getelementptr inbounds %struct.mode, %struct.mode* %45, i32 0, i32 0
  %c_cflag85 = getelementptr inbounds %struct.termios, %struct.termios* %tio84, i32 0, i32 2
  %46 = load i32, i32* %c_cflag85, align 4
  %and86 = and i32 %46, 2147483647
  store i32 %and86, i32* %c_cflag85, align 4
  br label %if.end.88

if.else.87:                                       ; preds = %if.else.80
  store i32 -1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.then.83
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.76
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.69
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.62
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.55
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.48
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.41
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.35
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.25
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.19
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.16
  br label %while.cond.99

while.cond.99:                                    ; preds = %while.body.105, %if.end.98
  %47 = load i8*, i8** %opt.addr, align 8
  %48 = load i8, i8* %47, align 1
  %conv100 = sext i8 %48 to i32
  %tobool101 = icmp ne i32 %conv100, 0
  br i1 %tobool101, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.99
  %49 = load i8*, i8** %opt.addr, align 8
  %50 = load i8, i8* %49, align 1
  %conv102 = sext i8 %50 to i32
  %call103 = call i8* @index(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @SttyMode.sep, i32 0, i32 0), i32 %conv102) #7
  %tobool104 = icmp ne i8* %call103, null
  %lnot = xor i1 %tobool104, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.99
  %51 = phi i1 [ false, %while.cond.99 ], [ %lnot, %land.rhs ]
  br i1 %51, label %while.body.105, label %while.end.107

while.body.105:                                   ; preds = %land.end
  %52 = load i8*, i8** %opt.addr, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr106, i8** %opt.addr, align 8
  br label %while.cond.99

while.end.107:                                    ; preds = %land.end
  br label %while.cond

while.end.108:                                    ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.108, %if.else.87, %if.then.15, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define void @SetTTY(i32 %fd, %struct.mode* %mp) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mp.addr = alloca %struct.mode*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.mode* %mp, %struct.mode** %mp.addr, align 8
  %call = call i32* @__errno_location() #6
  store i32 0, i32* %call, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load %struct.mode*, %struct.mode** %mp.addr, align 8
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %1, i32 0, i32 0
  %call1 = call i32 @tcsetattr(i32 %0, i32 1, %struct.termios* %tio) #4
  %call2 = call i32* @__errno_location() #6
  %2 = load i32, i32* %call2, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call3, align 4
  %4 = load i32, i32* %fd.addr, align 4
  call void (i32, i8*, ...) @Msg(i32 %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @brktty(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* @separate_sids, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @setsid() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i32 @cfsetospeed(%struct.termios*, i32) #2

; Function Attrs: nounwind
declare i32 @cfsetispeed(%struct.termios*, i32) #2

; Function Attrs: nounwind
declare i32 @tcsetattr(i32, i32, %struct.termios*) #2

; Function Attrs: nounwind uwtable
define void @GetTTY(i32 %fd, %struct.mode* %mp) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mp.addr = alloca %struct.mode*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.mode* %mp, %struct.mode** %mp.addr, align 8
  %call = call i32* @__errno_location() #6
  store i32 0, i32* %call, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load %struct.mode*, %struct.mode** %mp.addr, align 8
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %1, i32 0, i32 0
  %call1 = call i32 @tcgetattr(i32 %0, %struct.termios* %tio) #4
  %call2 = call i32* @__errno_location() #6
  %2 = load i32, i32* %call2, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call3, align 4
  %4 = load i32, i32* %fd.addr, align 4
  call void (i32, i8*, ...) @Msg(i32 %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @tcgetattr(i32, %struct.termios*) #2

; Function Attrs: nounwind uwtable
define void @SetMode(%struct.mode* %op, %struct.mode* %np, i32 %flow, i32 %interrupt) #0 {
entry:
  %op.addr = alloca %struct.mode*, align 8
  %np.addr = alloca %struct.mode*, align 8
  %flow.addr = alloca i32, align 4
  %interrupt.addr = alloca i32, align 4
  store %struct.mode* %op, %struct.mode** %op.addr, align 8
  store %struct.mode* %np, %struct.mode** %np.addr, align 8
  store i32 %flow, i32* %flow.addr, align 4
  store i32 %interrupt, i32* %interrupt.addr, align 4
  %0 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %1 = load %struct.mode*, %struct.mode** %op.addr, align 8
  %2 = bitcast %struct.mode* %0 to i8*
  %3 = bitcast %struct.mode* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 60, i32 4, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %4, i32 0, i32 0
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 0
  %5 = load i32, i32* %c_iflag, align 4
  %and = and i32 %5, -257
  store i32 %and, i32* %c_iflag, align 4
  %6 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio1 = getelementptr inbounds %struct.mode, %struct.mode* %6, i32 0, i32 0
  %c_iflag2 = getelementptr inbounds %struct.termios, %struct.termios* %tio1, i32 0, i32 0
  %7 = load i32, i32* %c_iflag2, align 4
  %and3 = and i32 %7, -33
  store i32 %and3, i32* %c_iflag2, align 4
  %8 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio4 = getelementptr inbounds %struct.mode, %struct.mode* %8, i32 0, i32 0
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %tio4, i32 0, i32 1
  %9 = load i32, i32* %c_oflag, align 4
  %and5 = and i32 %9, -5
  store i32 %and5, i32* %c_oflag, align 4
  %10 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio6 = getelementptr inbounds %struct.mode, %struct.mode* %10, i32 0, i32 0
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %tio6, i32 0, i32 3
  %11 = load i32, i32* %c_lflag, align 4
  %and7 = and i32 %11, -11
  store i32 %and7, i32* %c_lflag, align 4
  %12 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio8 = getelementptr inbounds %struct.mode, %struct.mode* %12, i32 0, i32 0
  %c_lflag9 = getelementptr inbounds %struct.termios, %struct.termios* %tio8, i32 0, i32 3
  %13 = load i32, i32* %c_lflag9, align 4
  %and10 = and i32 %13, -32769
  store i32 %and10, i32* %c_lflag9, align 4
  %14 = load i32, i32* %interrupt.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %15 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio11 = getelementptr inbounds %struct.mode, %struct.mode* %15, i32 0, i32 0
  %c_lflag12 = getelementptr inbounds %struct.termios, %struct.termios* %tio11, i32 0, i32 3
  %16 = load i32, i32* %c_lflag12, align 4
  %or = or i32 %16, 1
  store i32 %or, i32* %c_lflag12, align 4
  br label %if.end

if.else:                                          ; preds = %do.end
  %17 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio13 = getelementptr inbounds %struct.mode, %struct.mode* %17, i32 0, i32 0
  %c_lflag14 = getelementptr inbounds %struct.termios, %struct.termios* %tio13, i32 0, i32 3
  %18 = load i32, i32* %c_lflag14, align 4
  %and15 = and i32 %18, -2
  store i32 %and15, i32* %c_lflag14, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio16 = getelementptr inbounds %struct.mode, %struct.mode* %19, i32 0, i32 0
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %tio16, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i64 6
  store i8 1, i8* %arrayidx, align 1
  %20 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio17 = getelementptr inbounds %struct.mode, %struct.mode* %20, i32 0, i32 0
  %c_cc18 = getelementptr inbounds %struct.termios, %struct.termios* %tio17, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc18, i32 0, i64 5
  store i8 0, i8* %arrayidx19, align 1
  %21 = load i32, i32* %interrupt.addr, align 4
  %tobool20 = icmp ne i32 %21, 0
  br i1 %tobool20, label %lor.lhs.false, label %if.then.22

lor.lhs.false:                                    ; preds = %if.end
  %22 = load i32, i32* %flow.addr, align 4
  %tobool21 = icmp ne i32 %22, 0
  br i1 %tobool21, label %if.end.26, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false, %if.end
  %23 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio23 = getelementptr inbounds %struct.mode, %struct.mode* %23, i32 0, i32 0
  %c_cc24 = getelementptr inbounds %struct.termios, %struct.termios* %tio23, i32 0, i32 5
  %arrayidx25 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc24, i32 0, i64 0
  store i8 0, i8* %arrayidx25, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %lor.lhs.false
  %24 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio27 = getelementptr inbounds %struct.mode, %struct.mode* %24, i32 0, i32 0
  %c_cc28 = getelementptr inbounds %struct.termios, %struct.termios* %tio27, i32 0, i32 5
  %arrayidx29 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc28, i32 0, i64 1
  store i8 0, i8* %arrayidx29, align 1
  %25 = load i32, i32* %flow.addr, align 4
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then.30, label %if.end.40

if.then.30:                                       ; preds = %if.end.26
  %26 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio31 = getelementptr inbounds %struct.mode, %struct.mode* %26, i32 0, i32 0
  %c_cc32 = getelementptr inbounds %struct.termios, %struct.termios* %tio31, i32 0, i32 5
  %arrayidx33 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc32, i32 0, i64 8
  store i8 0, i8* %arrayidx33, align 1
  %27 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio34 = getelementptr inbounds %struct.mode, %struct.mode* %27, i32 0, i32 0
  %c_cc35 = getelementptr inbounds %struct.termios, %struct.termios* %tio34, i32 0, i32 5
  %arrayidx36 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc35, i32 0, i64 9
  store i8 0, i8* %arrayidx36, align 1
  %28 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio37 = getelementptr inbounds %struct.mode, %struct.mode* %28, i32 0, i32 0
  %c_iflag38 = getelementptr inbounds %struct.termios, %struct.termios* %tio37, i32 0, i32 0
  %29 = load i32, i32* %c_iflag38, align 4
  %and39 = and i32 %29, -1025
  store i32 %and39, i32* %c_iflag38, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.30, %if.end.26
  %30 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio41 = getelementptr inbounds %struct.mode, %struct.mode* %30, i32 0, i32 0
  %c_cc42 = getelementptr inbounds %struct.termios, %struct.termios* %tio41, i32 0, i32 5
  %arrayidx43 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc42, i32 0, i64 13
  store i8 0, i8* %arrayidx43, align 1
  %31 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio44 = getelementptr inbounds %struct.mode, %struct.mode* %31, i32 0, i32 0
  %c_cc45 = getelementptr inbounds %struct.termios, %struct.termios* %tio44, i32 0, i32 5
  %arrayidx46 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc45, i32 0, i64 15
  store i8 0, i8* %arrayidx46, align 1
  %32 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio47 = getelementptr inbounds %struct.mode, %struct.mode* %32, i32 0, i32 0
  %c_cc48 = getelementptr inbounds %struct.termios, %struct.termios* %tio47, i32 0, i32 5
  %arrayidx49 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc48, i32 0, i64 10
  store i8 0, i8* %arrayidx49, align 1
  %33 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio50 = getelementptr inbounds %struct.mode, %struct.mode* %33, i32 0, i32 0
  %c_cc51 = getelementptr inbounds %struct.termios, %struct.termios* %tio50, i32 0, i32 5
  %arrayidx52 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc51, i32 0, i64 2
  store i8 127, i8* %arrayidx52, align 1
  %34 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio53 = getelementptr inbounds %struct.mode, %struct.mode* %34, i32 0, i32 0
  %c_cc54 = getelementptr inbounds %struct.termios, %struct.termios* %tio53, i32 0, i32 5
  %arrayidx55 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc54, i32 0, i64 3
  store i8 0, i8* %arrayidx55, align 1
  %35 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio56 = getelementptr inbounds %struct.mode, %struct.mode* %35, i32 0, i32 0
  %c_cc57 = getelementptr inbounds %struct.termios, %struct.termios* %tio56, i32 0, i32 5
  %arrayidx58 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc57, i32 0, i64 12
  store i8 0, i8* %arrayidx58, align 1
  %36 = load %struct.mode*, %struct.mode** %np.addr, align 8
  %tio59 = getelementptr inbounds %struct.mode, %struct.mode* %36, i32 0, i32 0
  %c_cc60 = getelementptr inbounds %struct.termios, %struct.termios* %tio59, i32 0, i32 5
  %arrayidx61 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc60, i32 0, i64 14
  store i8 0, i8* %arrayidx61, align 1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @SetFlow(i32 %on) #0 {
entry:
  %on.addr = alloca i32, align 4
  store i32 %on, i32* %on.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_flow = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 65
  %1 = load i32, i32* %d_flow, align 4
  %2 = load i32, i32* %on.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  %3 = load i32, i32* %on.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load i32, i32* @iflag, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 63
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %d_OldMode, i32 0, i32 0
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  %conv3 = trunc i32 %cond to i8
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 64
  %tio4 = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode, i32 0, i32 0
  %c_cc5 = getelementptr inbounds %struct.termios, %struct.termios* %tio4, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc5, i32 0, i64 0
  store i8 %conv3, i8* %arrayidx6, align 1
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode7 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 63
  %tio8 = getelementptr inbounds %struct.mode, %struct.mode* %d_OldMode7, i32 0, i32 0
  %c_cc9 = getelementptr inbounds %struct.termios, %struct.termios* %tio8, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc9, i32 0, i64 8
  %9 = load i8, i8* %arrayidx10, align 1
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode11 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 64
  %tio12 = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode11, i32 0, i32 0
  %c_cc13 = getelementptr inbounds %struct.termios, %struct.termios* %tio12, i32 0, i32 5
  %arrayidx14 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc13, i32 0, i64 8
  store i8 %9, i8* %arrayidx14, align 1
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode15 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 63
  %tio16 = getelementptr inbounds %struct.mode, %struct.mode* %d_OldMode15, i32 0, i32 0
  %c_cc17 = getelementptr inbounds %struct.termios, %struct.termios* %tio16, i32 0, i32 5
  %arrayidx18 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc17, i32 0, i64 9
  %12 = load i8, i8* %arrayidx18, align 1
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode19 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 64
  %tio20 = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode19, i32 0, i32 0
  %c_cc21 = getelementptr inbounds %struct.termios, %struct.termios* %tio20, i32 0, i32 5
  %arrayidx22 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc21, i32 0, i64 9
  store i8 %12, i8* %arrayidx22, align 1
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode23 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 63
  %tio24 = getelementptr inbounds %struct.mode, %struct.mode* %d_OldMode23, i32 0, i32 0
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %tio24, i32 0, i32 0
  %15 = load i32, i32* %c_iflag, align 4
  %and = and i32 %15, 1024
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode25 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 64
  %tio26 = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode25, i32 0, i32 0
  %c_iflag27 = getelementptr inbounds %struct.termios, %struct.termios* %tio26, i32 0, i32 0
  %17 = load i32, i32* %c_iflag27, align 4
  %or = or i32 %17, %and
  store i32 %or, i32* %c_iflag27, align 4
  br label %if.end.44

if.else:                                          ; preds = %if.end
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode28 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 64
  %tio29 = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode28, i32 0, i32 0
  %c_cc30 = getelementptr inbounds %struct.termios, %struct.termios* %tio29, i32 0, i32 5
  %arrayidx31 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc30, i32 0, i64 0
  store i8 0, i8* %arrayidx31, align 1
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode32 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 64
  %tio33 = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode32, i32 0, i32 0
  %c_cc34 = getelementptr inbounds %struct.termios, %struct.termios* %tio33, i32 0, i32 5
  %arrayidx35 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc34, i32 0, i64 8
  store i8 0, i8* %arrayidx35, align 1
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode36 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 64
  %tio37 = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode36, i32 0, i32 0
  %c_cc38 = getelementptr inbounds %struct.termios, %struct.termios* %tio37, i32 0, i32 5
  %arrayidx39 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc38, i32 0, i64 9
  store i8 0, i8* %arrayidx39, align 1
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode40 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 64
  %tio41 = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode40, i32 0, i32 0
  %c_iflag42 = getelementptr inbounds %struct.termios, %struct.termios* %tio41, i32 0, i32 0
  %22 = load i32, i32* %c_iflag42, align 4
  %and43 = and i32 %22, -1025
  store i32 %and43, i32* %c_iflag42, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %cond.end
  %23 = load i32, i32* %on.addr, align 4
  %tobool45 = icmp ne i32 %23, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.44
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 59
  %25 = load i32, i32* %d_userfd, align 4
  %call = call i32 @tcflow(i32 %25, i32 1) #4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.44
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd48 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 59
  %27 = load i32, i32* %d_userfd48, align 4
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode49 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 64
  %tio50 = getelementptr inbounds %struct.mode, %struct.mode* %d_NewMode49, i32 0, i32 0
  %call51 = call i32 @tcsetattr(i32 %27, i32 0, %struct.termios* %tio50) #4
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.47
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.body.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %if.end.47
  %29 = load i32, i32* %on.addr, align 4
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_flow57 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 65
  store i32 %29, i32* %d_flow57, align 4
  br label %return

return:                                           ; preds = %if.end.56, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @tcflow(i32, i32) #2

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @SetBaud(%struct.mode* %m, i32 %ibaud, i32 %obaud) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.mode*, align 8
  %ibaud.addr = alloca i32, align 4
  %obaud.addr = alloca i32, align 4
  %ip = alloca %struct.baud_values*, align 8
  %op = alloca %struct.baud_values*, align 8
  store %struct.mode* %m, %struct.mode** %m.addr, align 8
  store i32 %ibaud, i32* %ibaud.addr, align 4
  store i32 %obaud, i32* %obaud.addr, align 4
  %0 = load i32, i32* %ibaud.addr, align 4
  %call = call %struct.baud_values* @lookup_baud(i32 %0)
  store %struct.baud_values* %call, %struct.baud_values** %ip, align 8
  %tobool = icmp ne %struct.baud_values* %call, null
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %ibaud.addr, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %obaud.addr, align 4
  %call1 = call %struct.baud_values* @lookup_baud(i32 %2)
  store %struct.baud_values* %call1, %struct.baud_values** %op, align 8
  %tobool2 = icmp ne %struct.baud_values* %call1, null
  br i1 %tobool2, label %if.end, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %obaud.addr, align 4
  %cmp4 = icmp ne i32 %3, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %lor.lhs.false
  %4 = load %struct.baud_values*, %struct.baud_values** %ip, align 8
  %tobool5 = icmp ne %struct.baud_values* %4, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %5 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %5, i32 0, i32 0
  %6 = load %struct.baud_values*, %struct.baud_values** %ip, align 8
  %sym = getelementptr inbounds %struct.baud_values, %struct.baud_values* %6, i32 0, i32 2
  %7 = load i32, i32* %sym, align 4
  %call7 = call i32 @cfsetispeed(%struct.termios* %tio, i32 %7) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %8 = load %struct.baud_values*, %struct.baud_values** %op, align 8
  %tobool9 = icmp ne %struct.baud_values* %8, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.8
  %9 = load %struct.mode*, %struct.mode** %m.addr, align 8
  %tio11 = getelementptr inbounds %struct.mode, %struct.mode* %9, i32 0, i32 0
  %10 = load %struct.baud_values*, %struct.baud_values** %op, align 8
  %sym12 = getelementptr inbounds %struct.baud_values, %struct.baud_values* %10, i32 0, i32 2
  %11 = load i32, i32* %sym12, align 4
  %call13 = call i32 @cfsetospeed(%struct.termios* %tio11, i32 %11) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare i32 @setsid() #2

; Function Attrs: nounwind uwtable
define i32 @fgtty(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %mypid = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %call = call i32 @getpid() #4
  store i32 %call, i32* %mypid, align 4
  %0 = load i32, i32* @separate_sids, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i32, i32* %mypid, align 4
  %call1 = call i32 @tcsetpgrp(i32 %1, i32 %2) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.3
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %do.end
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nounwind
declare i32 @tcsetpgrp(i32, i32) #2

; Function Attrs: nounwind uwtable
define void @SendBreak(%struct.win* %wp, i32 %n, i32 %closeopen) #0 {
entry:
  %wp.addr = alloca %struct.win*, align 8
  %n.addr = alloca i32, align 4
  %closeopen.addr = alloca i32, align 4
  %sigalrm = alloca void (i32)*, align 8
  store %struct.win* %wp, %struct.win** %wp.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %closeopen, i32* %closeopen.addr, align 4
  %0 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 1
  %1 = load i32, i32* %w_type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end.21

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 15
  %3 = load i32, i32* %w_ptyfd, align 4
  %call = call i32 @tcflush(i32 %3, i32 2) #4
  %4 = load i32, i32* %closeopen.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %do.end
  %5 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_ptyfd2 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 15
  %6 = load i32, i32* %w_ptyfd2, align 4
  %call3 = call i32 @close(i32 %6)
  %7 = load i32, i32* %n.addr, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  %8 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %8, 250
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ 250, %cond.false ]
  call void @sleep1000(i32 %cond)
  %9 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_tty = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 89
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty, i32 0, i32 0
  %10 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_cmdargs = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 83
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs, i32 0, i64 1
  %11 = load i8*, i8** %arrayidx, align 8
  %call5 = call i32 @OpenTTY(i8* %arraydecay, i8* %11)
  %12 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_ptyfd6 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 15
  store i32 %call5, i32* %w_ptyfd6, align 4
  %cmp7 = icmp slt i32 %call5, 1
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %cond.end
  %13 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_tty9 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 89
  %arraydecay10 = getelementptr inbounds [768 x i8], [768 x i8]* %w_tty9, i32 0, i32 0
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay10)
  br label %do.end.21

if.end.11:                                        ; preds = %cond.end
  %14 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_ptyfd12 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 15
  %15 = load i32, i32* %w_ptyfd12, align 4
  %call13 = call i32 (i32, i32, ...) @fcntl(i32 %15, i32 4, i32 2048)
  br label %if.end.19

if.else:                                          ; preds = %do.end
  %call14 = call void (i32)* @xsignal(i32 14, void (i32)* @SigAlrmDummy)
  store void (i32)* %call14, void (i32)** %sigalrm, align 8
  %call15 = call i32 @alarm(i32 15) #4
  %16 = load %struct.win*, %struct.win** %wp.addr, align 8
  %w_ptyfd16 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 15
  %17 = load i32, i32* %w_ptyfd16, align 4
  %18 = load i32, i32* %n.addr, align 4
  %19 = load i32, i32* @breaktype, align 4
  call void @DoSendBreak(i32 %17, i32 %18, i32 %19)
  %call17 = call i32 @alarm(i32 0) #4
  %20 = load void (i32)*, void (i32)** %sigalrm, align 8
  %call18 = call void (i32)* @xsignal(i32 14, void (i32)* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end.11
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  br label %do.end.21

do.end.21:                                        ; preds = %if.then, %if.then.8, %do.body.20
  ret void
}

; Function Attrs: nounwind
declare i32 @tcflush(i32, i32) #2

declare void @sleep1000(i32) #1

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @DoSendBreak(i32 %fd, i32 %n, i32 %type) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.6
    i32 0, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i32, i32* %n.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %2 = load i32, i32* %n.addr, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %n.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %fd.addr, align 4
  %call = call i32 @tcsendbreak(i32 %5, i32 0) #4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %for.body
  %call3 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call3, align 4
  call void (i32, i8*, ...) @Msg(i32 %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0))
  br label %sw.epilog

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %7 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %7, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %8 = load i32, i32* %n.addr, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %sw.bb.6
  %9 = load i32, i32* %n.addr, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* %n.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %sw.bb.6
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  store i32 0, i32* %i13, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.22, %do.end.12
  %10 = load i32, i32* %i13, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %10, %11
  br i1 %cmp15, label %for.body.16, label %for.end.24

for.body.16:                                      ; preds = %for.cond.14
  %12 = load i32, i32* %fd.addr, align 4
  %call17 = call i32 (i32, i64, ...) @ioctl(i32 %12, i64 21513, i8* null) #4
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.body.16
  %call20 = call i32* @__errno_location() #6
  %13 = load i32, i32* %call20, align 4
  call void (i32, i8*, ...) @Msg(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0))
  br label %sw.epilog

if.end.21:                                        ; preds = %for.body.16
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %14 = load i32, i32* %i13, align 4
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, i32* %i13, align 4
  br label %for.cond.14

for.end.24:                                       ; preds = %for.cond.14
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  br label %do.body.26

do.body.26:                                       ; preds = %sw.bb.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.26
  %15 = load i32, i32* %fd.addr, align 4
  %call28 = call i32 (i32, i64, ...) @ioctl(i32 %15, i64 21543, i8* null) #4
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %do.end.27
  %call31 = call i32* @__errno_location() #6
  %16 = load i32, i32* %call31, align 4
  call void (i32, i8*, ...) @Msg(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0))
  br label %sw.epilog

if.end.32:                                        ; preds = %do.end.27
  %17 = load i32, i32* %n.addr, align 4
  %tobool33 = icmp ne i32 %17, 0
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.32
  %18 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %18, 250
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ 250, %cond.false ]
  call void @sleep1000(i32 %cond)
  %19 = load i32, i32* %fd.addr, align 4
  %call34 = call i32 (i32, i64, ...) @ioctl(i32 %19, i64 21544, i8* null) #4
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %cond.end
  %call37 = call i32* @__errno_location() #6
  %20 = load i32, i32* %call37, align 4
  call void (i32, i8*, ...) @Msg(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i32 0, i32 0))
  br label %sw.epilog

if.end.38:                                        ; preds = %cond.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %21 = load i32, i32* %type.addr, align 4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i32 0, i32 0), i32 %21)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.2, %if.then.19, %if.then.30, %if.then.36, %sw.default, %if.end.38, %for.end.24, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @TtyGrabConsole(i32 %fd, i32 %on, i8* %rc_name) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %on.addr = alloca i32, align 4
  %rc_name.addr = alloca i8*, align 8
  %d = alloca %struct.display*, align 8
  %new1 = alloca %struct.mode, align 4
  %new2 = alloca %struct.mode, align 4
  %slave = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %on, i32* %on.addr, align 4
  store i8* %rc_name, i8** %rc_name.addr, align 8
  %0 = load i32, i32* %on.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct.display*, %struct.display** @displays, align 8
  %cmp1 = icmp eq %struct.display* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %2, %struct.display** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.display*, %struct.display** %d, align 8
  %tobool = icmp ne %struct.display* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.display*, %struct.display** %d, align 8
  %d_usertty = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 58
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %d_usertty, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  br label %for.end

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %5 = load %struct.display*, %struct.display** %d, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 0
  %6 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %6, %struct.display** %d, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %for.cond
  %7 = load %struct.display*, %struct.display** %d, align 8
  %tobool6 = icmp ne %struct.display* %7, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.end
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %8 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 0), align 4
  %cmp10 = icmp sge i32 %8, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  call void @evdeq(%struct.event* @consredir_ev)
  %9 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 0), align 4
  %call12 = call i32 @close(i32 %9)
  %10 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 1), align 4
  %call13 = call i32 @close(i32 %10)
  store i32 -1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 1), align 4
  store i32 -1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 0), align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.9
  %11 = load i32, i32* %on.addr, align 4
  %cmp15 = icmp sle i32 %11, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %call18 = call i32 @OpenPTY(i8** %slave)
  store i32 %call18, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 0), align 4
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %call21 = call i32* @__errno_location() #6
  %12 = load i32, i32* %call21, align 4
  %13 = load i8*, i8** %rc_name.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), i8* %13)
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %14 = load i8*, i8** %slave, align 8
  %call23 = call i32 (i8*, i32, ...) @open(i8* %14, i32 258)
  store i32 %call23, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 1), align 4
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.22
  %call26 = call i32* @__errno_location() #6
  %15 = load i32, i32* %call26, align 4
  %16 = load i8*, i8** %rc_name.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0), i8* %16)
  %17 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 0), align 4
  %call27 = call i32 @close(i32 %17)
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.22
  call void @InitTTY(%struct.mode* %new1, i32 0)
  call void @SetMode(%struct.mode* %new1, %struct.mode* %new2, i32 0, i32 0)
  %18 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 1), align 4
  call void @SetTTY(i32 %18, %struct.mode* %new2)
  %call29 = call i32 @UserContext()
  %cmp30 = icmp eq i32 %call29, 1
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.28
  %19 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 1), align 4
  %20 = bitcast i32* %on.addr to i8*
  %call32 = call i32 (i32, i64, ...) @ioctl(i32 %19, i64 21533, i8* %20) #4
  call void @UserReturn(i32 %call32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.28
  %call34 = call i32 @UserStatus()
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.end.33
  %call37 = call i32* @__errno_location() #6
  %21 = load i32, i32* %call37, align 4
  %22 = load i8*, i8** %rc_name.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8* %22)
  %23 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 0), align 4
  %call38 = call i32 @close(i32 %23)
  %24 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 1), align 4
  %call39 = call i32 @close(i32 %24)
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.33
  %25 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 0), align 4
  store i32 %25, i32* getelementptr inbounds (%struct.event, %struct.event* @consredir_ev, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.event, %struct.event* @consredir_ev, i32 0, i32 4), align 4
  store void (%struct.event*, i8*)* @consredir_readev_fn, void (%struct.event*, i8*)** getelementptr inbounds (%struct.event, %struct.event* @consredir_ev, i32 0, i32 1), align 8
  call void @evenq(%struct.event* @consredir_ev)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.36, %if.then.25, %if.then.20, %if.then.16, %if.then.7, %if.then.2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @evdeq(%struct.event*) #1

declare i32 @OpenPTY(i8**) #1

declare i32 @open(i8*, i32, ...) #1

declare i32 @UserContext() #1

declare void @UserReturn(i32) #1

declare i32 @UserStatus() #1

; Function Attrs: nounwind uwtable
define internal void @consredir_readev_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %n = alloca i8*, align 8
  %buf = alloca [256 x i8], align 16
  %l = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.win*, %struct.win** @console_window, align 8
  %tobool = icmp ne %struct.win* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 0), align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call = call i64 @read(i32 %1, i8* %arraydecay, i64 256)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 0), align 4
  %call2 = call i32 @close(i32 %2)
  %3 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 1), align 4
  %call3 = call i32 @close(i32 %3)
  store i32 -1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 1), align 4
  store i32 -1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @consredirfd, i32 0, i64 0), align 4
  %4 = load %struct.event*, %struct.event** %ev.addr, align 8
  call void @evdeq(%struct.event* %4)
  br label %if.end.24

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay4, i8** %n, align 8
  store i8* %arraydecay4, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %l, align 4
  %cmp5 = icmp sgt i32 %5, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %n, align 8
  %7 = load i8, i8* %6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 10
  br i1 %cmp8, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %for.body
  %8 = load i8*, i8** %n, align 8
  %9 = load i8*, i8** %p, align 8
  %cmp11 = icmp ugt i8* %8, %9
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %10 = load %struct.win*, %struct.win** @console_window, align 8
  %11 = load i8*, i8** %p, align 8
  %12 = load i8*, i8** %n, align 8
  %13 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv14 = trunc i64 %sub.ptr.sub to i32
  call void @WriteString(%struct.win* %10, i8* %11, i32 %conv14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %14 = load %struct.win*, %struct.win** @console_window, align 8
  call void @WriteString(%struct.win* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i32 2)
  %15 = load i8*, i8** %n, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %16 = load i8*, i8** %n, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %n, align 8
  %17 = load i32, i32* %l, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** %n, align 8
  %19 = load i8*, i8** %p, align 8
  %cmp17 = icmp ugt i8* %18, %19
  br i1 %cmp17, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %for.end
  %20 = load %struct.win*, %struct.win** @console_window, align 8
  %21 = load i8*, i8** %p, align 8
  %22 = load i8*, i8** %n, align 8
  %23 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast20 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %23 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %conv23 = trunc i64 %sub.ptr.sub22 to i32
  call void @WriteString(%struct.win* %20, i8* %21, i32 %conv23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then, %if.then.19, %for.end
  ret void
}

declare void @evenq(%struct.event*) #1

; Function Attrs: nounwind uwtable
define i8* @TtyGetModemStatus(i32 %fd, i8* %buf) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %softcar = alloca i32, align 4
  %mflags = alloca i32, align 4
  %mtio = alloca %struct.mode, align 4
  %rtscts = alloca i32, align 4
  %clocal = alloca i32, align 4
  %s = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i32, i32* %fd.addr, align 4
  call void @GetTTY(i32 %1, %struct.mode* %mtio)
  store i32 0, i32* %clocal, align 4
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %mtio, i32 0, i32 0
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 2
  %2 = load i32, i32* %c_cflag, align 4
  %and = and i32 %2, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %clocal, align 4
  %3 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 123, i8* %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tio1 = getelementptr inbounds %struct.mode, %struct.mode* %mtio, i32 0, i32 0
  %c_cflag2 = getelementptr inbounds %struct.termios, %struct.termios* %tio1, i32 0, i32 2
  %4 = load i32, i32* %c_cflag2, align 4
  %and3 = and i32 %4, -2147483648
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %rtscts, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  store i32 1, i32* %rtscts, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %5 = load i32, i32* %fd.addr, align 4
  %6 = bitcast i32* %softcar to i8*
  %call = call i32 (i32, i64, ...) @ioctl(i32 %5, i64 21529, i8* %6) #4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.6
  store i32 0, i32* %softcar, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.6
  %7 = load i32, i32* %fd.addr, align 4
  %8 = bitcast i32* %mflags to i8*
  %call9 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 21525, i8* %8) #4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %if.end.8
  %9 = load i8*, i8** %p, align 8
  %10 = load i32, i32* %softcar, align 4
  %tobool12 = icmp ne i32 %10, 0
  %cond = select i1 %tobool12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* %cond) #4
  %11 = load i8*, i8** %p, align 8
  %call14 = call i64 @strlen(i8* %11) #7
  %12 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %call14
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.89

if.else.15:                                       ; preds = %if.end.8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8** %s, align 8
  %13 = load i32, i32* %mflags, align 4
  %and16 = and i32 %13, 4
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.else.15
  %14 = load i8*, i8** %s, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr19, i8** %s, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.else.15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.20
  %15 = load i8*, i8** %s, align 8
  %16 = load i8, i8* %15, align 1
  %tobool21 = icmp ne i8 %16, 0
  br i1 %tobool21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i8*, i8** %s, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr22, i8** %s, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8
  store i8 %18, i8* %19, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8** %s, align 8
  %20 = load i32, i32* %rtscts, align 4
  %tobool24 = icmp ne i32 %20, 0
  br i1 %tobool24, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %while.end
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8
  store i8 40, i8* %21, align 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8** %s, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %while.end
  %22 = load i32, i32* %mflags, align 4
  %and28 = and i32 %22, 32
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.27
  %23 = load i8*, i8** %s, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr31, i8** %s, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.27
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.35, %if.end.32
  %24 = load i8*, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %tobool34 = icmp ne i8 %25, 0
  br i1 %tobool34, label %while.body.35, label %while.end.38

while.body.35:                                    ; preds = %while.cond.33
  %26 = load i8*, i8** %s, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr36, i8** %s, align 8
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr37, i8** %p, align 8
  store i8 %27, i8* %28, align 1
  br label %while.cond.33

while.end.38:                                     ; preds = %while.cond.33
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8** %s, align 8
  %29 = load i32, i32* %mflags, align 4
  %and39 = and i32 %29, 2
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %while.end.38
  %30 = load i8*, i8** %s, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr42, i8** %s, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %while.end.38
  br label %while.cond.44

while.cond.44:                                    ; preds = %while.body.46, %if.end.43
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %tobool45 = icmp ne i8 %32, 0
  br i1 %tobool45, label %while.body.46, label %while.end.49

while.body.46:                                    ; preds = %while.cond.44
  %33 = load i8*, i8** %s, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr47, i8** %s, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %p, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr48, i8** %p, align 8
  store i8 %34, i8* %35, align 1
  br label %while.cond.44

while.end.49:                                     ; preds = %while.cond.44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8** %s, align 8
  %36 = load i32, i32* %mflags, align 4
  %and50 = and i32 %36, 256
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %while.end.49
  %37 = load i8*, i8** %s, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr53, i8** %s, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %while.end.49
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.57, %if.end.54
  %38 = load i8*, i8** %s, align 8
  %39 = load i8, i8* %38, align 1
  %tobool56 = icmp ne i8 %39, 0
  br i1 %tobool56, label %while.body.57, label %while.end.60

while.body.57:                                    ; preds = %while.cond.55
  %40 = load i8*, i8** %s, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr58, i8** %s, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr59, i8** %p, align 8
  store i8 %41, i8* %42, align 1
  br label %while.cond.55

while.end.60:                                     ; preds = %while.cond.55
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8** %s, align 8
  %43 = load i32, i32* %softcar, align 4
  %tobool61 = icmp ne i32 %43, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %while.end.60
  %44 = load i8*, i8** %p, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr63, i8** %p, align 8
  store i8 40, i8* %44, align 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8** %s, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %while.end.60
  %45 = load i32, i32* %mflags, align 4
  %and65 = and i32 %45, 64
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.64
  %46 = load i8*, i8** %s, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr68, i8** %s, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.64
  br label %while.cond.70

while.cond.70:                                    ; preds = %while.body.72, %if.end.69
  %47 = load i8*, i8** %s, align 8
  %48 = load i8, i8* %47, align 1
  %tobool71 = icmp ne i8 %48, 0
  br i1 %tobool71, label %while.body.72, label %while.end.75

while.body.72:                                    ; preds = %while.cond.70
  %49 = load i8*, i8** %s, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr73, i8** %s, align 8
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %p, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr74, i8** %p, align 8
  store i8 %50, i8* %51, align 1
  br label %while.cond.70

while.end.75:                                     ; preds = %while.cond.70
  %52 = load i32, i32* %mflags, align 4
  %and76 = and i32 %52, 128
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %while.end.75
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.78
  %53 = load i8*, i8** %s, align 8
  %54 = load i8, i8* %53, align 1
  %tobool79 = icmp ne i8 %54, 0
  br i1 %tobool79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i8*, i8** %s, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr80, i8** %s, align 8
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %p, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr81, i8** %p, align 8
  store i8 %56, i8* %57, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.82

if.end.82:                                        ; preds = %for.end, %while.end.75
  %58 = load i8*, i8** %p, align 8
  %59 = load i8*, i8** %buf.addr, align 8
  %cmp83 = icmp ugt i8* %58, %59
  br i1 %cmp83, label %land.lhs.true, label %if.end.88

land.lhs.true:                                    ; preds = %if.end.82
  %60 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %60, i64 -1
  %61 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %61 to i32
  %cmp84 = icmp eq i32 %conv, 32
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %land.lhs.true
  %62 = load i8*, i8** %p, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %62, i32 -1
  store i8* %incdec.ptr87, i8** %p, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %land.lhs.true, %if.end.82
  %63 = load i8*, i8** %p, align 8
  store i8 0, i8* %63, align 1
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.11
  %64 = load i32, i32* %clocal, align 4
  %tobool90 = icmp ne i32 %64, 0
  br i1 %tobool90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.end.89
  %65 = load i8*, i8** %p, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr92, i8** %p, align 8
  store i8 125, i8* %65, align 1
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.end.89
  %66 = load i8*, i8** %p, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %buf.addr, align 8
  ret i8* %67
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define %struct.baud_values* @lookup_baud(i32 %baud) #0 {
entry:
  %retval = alloca %struct.baud_values*, align 8
  %baud.addr = alloca i32, align 4
  %p = alloca %struct.baud_values*, align 8
  store i32 %baud, i32* %baud.addr, align 4
  store %struct.baud_values* getelementptr inbounds ([23 x %struct.baud_values], [23 x %struct.baud_values]* @btable, i32 0, i32 0), %struct.baud_values** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.baud_values*, %struct.baud_values** %p, align 8
  %idx = getelementptr inbounds %struct.baud_values, %struct.baud_values* %0, i32 0, i32 0
  %1 = load i32, i32* %idx, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %baud.addr, align 4
  %3 = load %struct.baud_values*, %struct.baud_values** %p, align 8
  %bps = getelementptr inbounds %struct.baud_values, %struct.baud_values* %3, i32 0, i32 1
  %4 = load i32, i32* %bps, align 4
  %cmp1 = icmp eq i32 %2, %4
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, i32* %baud.addr, align 4
  %6 = load %struct.baud_values*, %struct.baud_values** %p, align 8
  %sym = getelementptr inbounds %struct.baud_values, %struct.baud_values* %6, i32 0, i32 2
  %7 = load i32, i32* %sym, align 4
  %cmp2 = icmp eq i32 %5, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %8 = load %struct.baud_values*, %struct.baud_values** %p, align 8
  store %struct.baud_values* %8, %struct.baud_values** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.baud_values*, %struct.baud_values** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.baud_values, %struct.baud_values* %9, i32 1
  store %struct.baud_values* %incdec.ptr, %struct.baud_values** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.baud_values* null, %struct.baud_values** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load %struct.baud_values*, %struct.baud_values** %retval
  ret %struct.baud_values* %10
}

; Function Attrs: nounwind uwtable
define i32 @CheckTtyname(i8* %tty) #0 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca i8*, align 8
  %st = alloca %struct.stat, align 8
  %realbuf = alloca [4096 x i8], align 16
  %real = alloca i8*, align 8
  %rc = alloca i32, align 4
  store i8* %tty, i8** %tty.addr, align 8
  %0 = load i8*, i8** %tty.addr, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %realbuf, i32 0, i32 0
  %call = call i8* @realpath(i8* %0, i8* %arraydecay) #4
  store i8* %call, i8** %real, align 8
  %1 = load i8*, i8** %real, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %realbuf, i32 0, i64 4095
  store i8 0, i8* %arrayidx, align 1
  %2 = load i8*, i8** %real, align 8
  %call1 = call i32 @lstat(i8* %2, %struct.stat* %st) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %3 = load i32, i32* %st_mode, align 4
  %and = and i32 %3, 61440
  %cmp = icmp eq i32 %and, 8192
  br i1 %cmp, label %lor.lhs.false.3, label %if.then.7

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 2
  %4 = load i64, i64* %st_nlink, align 8
  %cmp4 = icmp ugt i64 %4, 1
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %5 = load i8*, i8** %real, align 8
  %call5 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i64 4) #7
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  store i32 -1, i32* %rc, align 4
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.3
  store i32 0, i32* %rc, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %6 = load i32, i32* %rc, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare i8* @realpath(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @tcsendbreak(i32, i32) #2

declare i64 @read(i32, i8*, i64) #1

declare void @WriteString(%struct.win*, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
