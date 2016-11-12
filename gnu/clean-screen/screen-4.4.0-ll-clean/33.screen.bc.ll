; ModuleID = './screen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NewWindow = type { i32, i8*, i8**, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.mode = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.logfile = type { %struct.logfile*, %struct._IO_FILE*, i8*, i32, i32, i32, %struct.stat* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.mline = type { i8*, i8*, i8*, i8*, i8* }
%struct.paster = type { i8*, i8*, i32, %struct.layer*, %struct.event }
%struct.anon.2 = type { i32, %struct.mline*, i32, i32, i32, %struct.mline*, i32, %struct.cursor }
%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
%struct.timeval = type { i64, i64 }
%struct.action = type { i32, i8**, i32*, i32 }
%union.tcu = type { i8* }
%struct.utmp = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.exit_status, i32, %struct.anon.1, [4 x i32], [20 x i8] }
%struct.exit_status = type { i16, i16 }
%struct.anon.1 = type { i32, i32 }
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.backtick = type { %struct.backtick*, i32, i32, i32, i64, [768 x i8], i8**, %struct.event, i8*, i32 }
%struct.fd_set = type { [16 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.spwd = type { i8*, i8*, i64, i64, i64, i64, i64, i64, i64 }
%union.anon = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.timezone = type { i32, i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i32 }

@force_vt = global i32 1, align 4
@attach_fd = global i32 -1, align 4
@SockMatch = global i8* null, align 8
@ServerSocket = global i32 -1, align 4
@NewEnv = global i8** null, align 8
@RcFileName = global i8* null, align 8
@log_flush = global i32 10, align 4
@logtstamp_on = global i32 0, align 4
@logtstamp_after = global i32 120, align 4
@hardcopydir = global i8* null, align 8
@auto_detach = global i32 1, align 4
@queryflag = global i32 -1, align 4
@tty_oldmode = global i32 -1, align 4
@preselect = global i8* null, align 8
@nethackflag = global i32 0, align 4
@strnomem = global [15 x i8] c"Out of memory.\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@version = external global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%d.%.2d.%.2d%s (%s%s) %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"GNU\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"19-Jun-16\00", align 1
@nversion = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Bell in window %n\00", align 1
@BellString = common global i8* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"   Wuff,  Wuff!!  \00", align 1
@VisualBellString = common global i8* null, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"Activity in window %n\00", align 1
@ActivityString = common global i8* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"screenlog.%n\00", align 1
@screenlogfile = common global i8* null, align 8
@.str.9 = private unnamed_addr constant [45 x i8] c"-- %n:%t -- time-stamp -- %M/%d/%y %c:%s --\0A\00", align 1
@logtstamp_string = common global i8* null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"%h\00", align 1
@hstatusstring = common global i8* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"%4n %t\00", align 1
@captionstring = common global i8* null, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"%c:%s %M %d %H%? %l%?\00", align 1
@timestring = common global i8* null, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c" Num Name%=Flags\00", align 1
@wlisttit = common global i8* null, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"%4n %t%=%f\00", align 1
@wliststr = common global i8* null, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"/tmp/screen-exchange\00", align 1
@BufferFile = common global i8* null, align 8
@ShellProg = common global i8* null, align 8
@PowDetachString = common global i8* null, align 8
@default_startup = common global i32 0, align 4
@adaptflag = common global i32 0, align 4
@VBellWait = common global i32 0, align 4
@MsgWait = common global i32 0, align 4
@MsgMinWait = common global i32 0, align 4
@SilenceWait = common global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"!!! sz -vv -b \00", align 1
@zmodem_sendcmd = external global i8*, align 8
@.str.17 = private unnamed_addr constant [17 x i8] c"!!! rz -vv -b -E\00", align 1
@zmodem_recvcmd = external global i8*, align 8
@mark_key_tab = external global [0 x i8], align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"/usr/share/screen/utf8encodings\00", align 1
@screenencodings = common global i8* null, align 8
@cjkwidth = common global i32 0, align 4
@nwin_undef = external global %struct.NewWindow, align 8
@nwin_options = external global %struct.NewWindow, align 8
@screenterm = external global [0 x i8], align 1
@rflag = common global i32 0, align 4
@xflag = common global i32 0, align 4
@DefaultShell = external global [0 x i8], align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Screen version %s\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Specify a window to preselect with -p\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"Specify an alternate rc-filename with -c\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Specify command characters with -e\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Two characters are required with -e option, not '%s'.\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Unknown flow option -%s\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"-h: %s: negative scrollback size?\00", align 1
@iflag = common global i32 0, align 4
@.str.28 = private unnamed_addr constant [34 x i8] c"Specify a new window-name with -t\00", align 1
@lsflag = common global i32 0, align 4
@.str.29 = private unnamed_addr constant [28 x i8] c"%s: Unknown suboption to -l\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"ipe\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Unknown option %s\00", align 1
@wipeflag = common global i32 0, align 4
@.str.32 = private unnamed_addr constant [30 x i8] c"Specify terminal-type with -T\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"-T: terminal name too long. (max. 20 char)\00", align 1
@quietflag = common global i32 0, align 4
@cmdflag = common global i32 0, align 4
@dflag = common global i32 0, align 4
@.str.34 = private unnamed_addr constant [22 x i8] c"Specify shell with -s\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Specify session-name with -S\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Empty session-name?\00", align 1
@real_uid = common global i32 0, align 4
@real_gid = common global i32 0, align 4
@eff_uid = common global i32 0, align 4
@eff_gid = common global i32 0, align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"zh_\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"ja_\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"ko_\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"Ridiculously long socketname - try again.\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@ShellArgs = common global [2 x i8*] zeroinitializer, align 16
@.str.43 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@home = common global i8* null, align 8
@.str.44 = private unnamed_addr constant [4 x i8] c"STY\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"NETHACKOPTIONS\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"%s/.nethackrc\00", align 1
@multi_uid = common global i32 0, align 4
@own_uid = common global i32 0, align 4
@multi = common global i8* null, align 8
@.str.47 = private unnamed_addr constant [30 x i8] c"Cannot identify account '%s'.\00", align 1
@multi_home = common global i8* null, align 8
@.str.48 = private unnamed_addr constant [29 x i8] c"home directory path too long\00", align 1
@multiattach = common global i32 0, align 4
@.str.49 = private unnamed_addr constant [42 x i8] c"Must run suid root for multiuser support.\00", align 1
@LoginName = common global i8* null, align 8
@ppp = common global %struct.passwd* null, align 8
@.str.50 = private unnamed_addr constant [40 x i8] c"getpwuid() can't identify your account!\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"LoginName too long - sorry.\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"Screen owner name too long - sorry.\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"$HOME too long - sorry.\00", align 1
@attach_tty = common global i8* null, align 8
@.str.54 = private unnamed_addr constant [33 x i8] c"Must be connected to a terminal.\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"Cannot access '%s'\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"Bad tty '%s'\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"TtyName too long - sorry.\00", align 1
@tty_mode = common global i32 0, align 4
@.str.58 = private unnamed_addr constant [47 x i8] c"Cannot open your terminal '%s' - please check.\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@attach_term = common global i8* null, align 8
@.str.60 = private unnamed_addr constant [28 x i8] c"Please set a terminal type.\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"$TERM too long - sorry.\00", align 1
@attach_Mode = common global %struct.mode zeroinitializer, align 4
@.str.62 = private unnamed_addr constant [28 x i8] c"Cannot change umask to zero\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"SCREENDIR\00", align 1
@.str.64 = private unnamed_addr constant [42 x i8] c"Ridiculously long $SCREENDIR - try again.\00", align 1
@.str.65 = private unnamed_addr constant [42 x i8] c"No $SCREENDIR with multi screens, please.\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"/tmp/uscreens\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"/tmp/screens\00", align 1
@SockPath = common global [5632 x i8] zeroinitializer, align 16
@.str.68 = private unnamed_addr constant [8 x i8] c"%s/S-%s\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"Cannot make directory '%s'.\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"Cannot make directory '%s'\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"'%s' must be a directory.\00", align 1
@.str.72 = private unnamed_addr constant [38 x i8] c"Directory '%s' must be owned by root.\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"Directory '%s' must have mode %03o.\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"Cannot access %s\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"%s is not a directory.\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"%s is not the owner of %s.\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"You are not the owner of %s.\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"Directory %s must have mode 700.\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"Bad session name '%s'\00", align 1
@SockName = common global i8* null, align 8
@HostName = common global [768 x i8] zeroinitializer, align 16
@.str.80 = private unnamed_addr constant [25 x i8] c"No Sockets found in %s.\0A\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"%d Socket%s in %s.\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"Please specify a command.\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"Can't create sessions of other users.\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"[%s %sdetached.]\0A\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"power \00", align 1
@nwin_default = external global %struct.NewWindow, align 8
@MasterPid = common global i32 0, align 4
@.str.87 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"%d.%s\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"%d.%s.%s\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@PanicPid = common global i32 0, align 4
@DefaultEsc = external global i32, align 4
@DefaultMetaEsc = external global i32, align 4
@.str.91 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"Cannot reopen '%s' - please check.\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.95 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.96 = private unnamed_addr constant [27 x i8] c"Could not create user info\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"Could not alloc display\00", align 1
@display = external global %struct.display*, align 8
@.str.98 = private unnamed_addr constant [12 x i8] c"SYSSCREENRC\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"/usr/etc/screenrc\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"Warning: NBLOCK fcntl failed\00", align 1
@windows = common global %struct.win* null, align 8
@.str.101 = private unnamed_addr constant [36 x i8] c"Sorry, could not find a PTY or TTY.\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"New screen...\00", align 1
@serv_read = common global %struct.event zeroinitializer, align 8
@serv_select = common global %struct.event zeroinitializer, align 8
@logflushev = common global %struct.event zeroinitializer, align 8
@ZombieKey_destroy = common global i32 0, align 4
@ZombieKey_onerror = common global i32 0, align 4
@.str.103 = private unnamed_addr constant [31 x i8] c"terminated with exit status %d\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"terminated normally\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"terminated with signal %d%s\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c" (core file generated)\00", align 1
@.str.107 = private unnamed_addr constant [21 x i8] c"detached from window\00", align 1
@.str.108 = private unnamed_addr constant [26 x i8] c"\0A\0D=== Command %s (%s) ===\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@displays = external global %struct.display*, align 8
@.str.110 = private unnamed_addr constant [26 x i8] c"[screen is terminating]\0D\0A\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"[detached from \00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"]\0D\0A\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"[detached]\0D\0A\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"[remote detached from \00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"[remote detached]\0D\0A\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c"[power detached from \00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"[power detached]\0D\0A\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.119 = private unnamed_addr constant [29 x i8] c"[remote power detached from \00", align 1
@.str.120 = private unnamed_addr constant [26 x i8] c"[remote power detached]\0D\0A\00", align 1
@console_window = common global %struct.win* null, align 8
@.str.121 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@layout_last = external global %struct.layout*, align 8
@MakeNewEnv.stybuf = internal global [768 x i8] zeroinitializer, align 16
@environ = external global i8**, align 8
@.str.122 = private unnamed_addr constant [7 x i8] c"STY=%s\00", align 1
@Term = external global [0 x i8], align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"TERMCAP\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"WINDOW\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"SCREENCAP\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@backticks = common global %struct.backtick* null, align 8
@winmsg_numrend = internal global i32 0, align 4
@winmsg_buf = internal global [768 x i8] zeroinitializer, align 16
@winmsg_rend = internal global [256 x i32] zeroinitializer, align 16
@winmsg_rendpos = internal global [256 x i32] zeroinitializer, align 16
@MakeWinMsgEv.tick = internal global i32 0, align 4
@.str.130 = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"%A\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"%B\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"%b\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"%04d\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"%2d:%02d\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MarkLf = external global %struct.LayFuncs, align 8
@.str.144 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@ZombieKey_resurrect = common global i32 0, align 4
@maxwin = common global i32 0, align 4
@flayer = common global %struct.layer* null, align 8
@fore = common global %struct.win* null, align 8
@locale_name.s = internal global i8* null, align 8
@.str.148 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@getpwbyname.spw = internal global i8* null, align 8
@GotSigChld = internal global i32 0, align 4
@InterruptPlease = internal global i32 0, align 4
@.str.151 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.153 = private unnamed_addr constant [33 x i8] c"\0D\0A[screen caught signal %d.%s]\0D\0A\00", align 1
@visual_bell = external global i32, align 4
@.str.154 = private unnamed_addr constant [22 x i8] c"Suspended (tty input)\00", align 1
@.str.155 = private unnamed_addr constant [23 x i8] c"Suspended (tty output)\00", align 1
@.str.156 = private unnamed_addr constant [36 x i8] c"Child has been stopped, restarting.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %ac, i8** %av) #0 {
entry:
  %retval = alloca i32, align 4
  %ac.addr = alloca i32, align 4
  %av.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %ap = alloca i8*, align 8
  %av0 = alloca i8*, align 8
  %socknamebuf = alloca [1536 x i8], align 16
  %mflag = alloca i32, align 4
  %myname = alloca i8*, align 8
  %SockDir = alloca i8*, align 8
  %st = alloca %struct.stat, align 8
  %oumask = alloca i32, align 4
  %nwin = alloca %struct.NewWindow, align 8
  %detached = alloca i32, align 4
  %sockp = alloca i8*, align 8
  %sty = alloca i8*, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %newsz = alloca i64, align 8
  %newbuf = alloca i8*, align 8
  %sh = alloca i8*, align 8
  %nethackrc = alloca [4096 x i8], align 16
  %mppp = alloca %struct.passwd*, align 8
  %fl = alloca i32, align 4
  %i = alloca i32, align 4
  %fo = alloca i32, align 4
  %oth = alloca i32, align 4
  %rfd = alloca %struct.fd_set, align 8
  %tv = alloca %struct.timeval, align 8
  store i32 0, i32* %retval
  store i32 %ac, i32* %ac.addr, align 4
  store i8** %av, i8*** %av.addr, align 8
  store i32 0, i32* %mflag, align 4
  %0 = load i32, i32* %ac.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i8**, i8*** %av.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %cond.true ], [ %2, %cond.false ]
  store i8* %cond, i8** %myname, align 8
  store i32 0, i32* %detached, align 4
  store i8* null, i8** %sty, align 8
  call void @closeallfiles(i32 0)
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @version, i32 0, i32 0), i64 59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 4, i32 4, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #3
  store i32 40400, i32* @nversion, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  br label %do.body.5

do.body.5:                                        ; preds = %do.end.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.body.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %call23 = call i8* @SaveStr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call23, i8** @BellString, align 8
  %call24 = call i8* @SaveStr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  store i8* %call24, i8** @VisualBellString, align 8
  %call25 = call i8* @SaveStr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call25, i8** @ActivityString, align 8
  %call26 = call i8* @SaveStr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call26, i8** @screenlogfile, align 8
  %call27 = call i8* @SaveStr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call27, i8** @logtstamp_string, align 8
  %call28 = call i8* @SaveStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  store i8* %call28, i8** @hstatusstring, align 8
  %call29 = call i8* @SaveStr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0))
  store i8* %call29, i8** @captionstring, align 8
  %call30 = call i8* @SaveStr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  store i8* %call30, i8** @timestring, align 8
  %call31 = call i8* @SaveStr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call31, i8** @wlisttit, align 8
  %call32 = call i8* @SaveStr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0))
  store i8* %call32, i8** @wliststr, align 8
  %call33 = call i8* @SaveStr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0))
  store i8* %call33, i8** @BufferFile, align 8
  store i8* null, i8** @ShellProg, align 8
  store i8* null, i8** @PowDetachString, align 8
  %3 = load i32, i32* %ac.addr, align 4
  %cmp34 = icmp sgt i32 %3, 1
  %cond35 = select i1 %cmp34, i32 0, i32 1
  store i32 %cond35, i32* @default_startup, align 4
  store i32 0, i32* @adaptflag, align 4
  store i32 1000, i32* @VBellWait, align 4
  store i32 5000, i32* @MsgWait, align 4
  store i32 1000, i32* @MsgMinWait, align 4
  store i32 30, i32* @SilenceWait, align 4
  %call36 = call i8* @SaveStr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0))
  store i8* %call36, i8** @zmodem_sendcmd, align 8
  %call37 = call i8* @SaveStr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  store i8* %call37, i8** @zmodem_recvcmd, align 8
  %call38 = call i32 @CompileKeys(i8* null, i32 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @mark_key_tab, i32 0, i32 0))
  call void @InitBuiltinTabs()
  %call39 = call i8* @SaveStr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0))
  store i8* %call39, i8** @screenencodings, align 8
  store i32 0, i32* @cjkwidth, align 4
  %4 = bitcast %struct.NewWindow* %nwin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.NewWindow* @nwin_undef to i8*), i64 120, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.NewWindow* @nwin_options to i8*), i8* bitcast (%struct.NewWindow* @nwin_undef to i8*), i64 120, i32 8, i1 false)
  %call40 = call i8* @strncpy(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @screenterm, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 32) #3
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @screenterm, i32 0, i64 32), align 1
  call void @logreopen_register(i32 (i8*, i32, %struct.logfile*)* @lf_secreopen)
  %5 = load i8**, i8*** %av.addr, align 8
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %av0, align 8
  %7 = load i8*, i8** %av0, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp41 = icmp eq i32 %conv, 45
  br i1 %cmp41, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.22
  store i32 4, i32* @rflag, align 4
  store i32 1, i32* @xflag, align 4
  %call43 = call i8* @SaveStr(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @DefaultShell, i32 0, i32 0))
  store i8* %call43, i8** @ShellProg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.22
  br label %while.cond

while.cond:                                       ; preds = %if.end.299, %if.end
  %9 = load i32, i32* %ac.addr, align 4
  %cmp44 = icmp sgt i32 %9, 0
  br i1 %cmp44, label %while.body, label %while.end.300

while.body:                                       ; preds = %while.cond
  %10 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %av.addr, align 8
  %11 = load i8*, i8** %incdec.ptr, align 8
  store i8* %11, i8** %ap, align 8
  %12 = load i32, i32* %ac.addr, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %ac.addr, align 4
  %cmp46 = icmp sgt i32 %dec, 0
  br i1 %cmp46, label %land.lhs.true, label %if.else.298

land.lhs.true:                                    ; preds = %while.body
  %13 = load i8*, i8** %ap, align 8
  %14 = load i8, i8* %13, align 1
  %conv48 = sext i8 %14 to i32
  %cmp49 = icmp eq i32 %conv48, 45
  br i1 %cmp49, label %if.then.51, label %if.else.298

if.then.51:                                       ; preds = %land.lhs.true
  %15 = load i8*, i8** %ap, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %16 to i32
  %cmp54 = icmp eq i32 %conv53, 45
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.64

land.lhs.true.56:                                 ; preds = %if.then.51
  %17 = load i8*, i8** %ap, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %18 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %land.lhs.true.56
  %19 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr62 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr62, i8*** %av.addr, align 8
  %20 = load i32, i32* %ac.addr, align 4
  %dec63 = add nsw i32 %20, -1
  store i32 %dec63, i32* %ac.addr, align 4
  br label %while.end.300

if.end.64:                                        ; preds = %land.lhs.true.56, %if.then.51
  %21 = load i8*, i8** %ap, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %22 to i32
  %cmp67 = icmp eq i32 %conv66, 45
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.72

land.lhs.true.69:                                 ; preds = %if.end.64
  %23 = load i8*, i8** %ap, align 8
  %call70 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #9
  %tobool = icmp ne i32 %call70, 0
  br i1 %tobool, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.69
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @version, i32 0, i32 0)) #10
  unreachable

if.end.72:                                        ; preds = %land.lhs.true.69, %if.end.64
  %24 = load i8*, i8** %ap, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %25 to i32
  %cmp75 = icmp eq i32 %conv74, 45
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.81

land.lhs.true.77:                                 ; preds = %if.end.72
  %26 = load i8*, i8** %ap, align 8
  %call78 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #9
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.77
  %27 = load i8*, i8** %myname, align 8
  call void @exit_with_usage(i8* %27, i8* null, i8* null)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %land.lhs.true.77, %if.end.72
  br label %while.cond.82

while.cond.82:                                    ; preds = %sw.epilog.297, %if.end.81
  %28 = load i8*, i8** %ap, align 8
  %tobool83 = icmp ne i8* %28, null
  br i1 %tobool83, label %land.lhs.true.84, label %land.end

land.lhs.true.84:                                 ; preds = %while.cond.82
  %29 = load i8*, i8** %ap, align 8
  %30 = load i8, i8* %29, align 1
  %conv85 = sext i8 %30 to i32
  %tobool86 = icmp ne i32 %conv85, 0
  br i1 %tobool86, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.84
  %31 = load i8*, i8** %ap, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr87, i8** %ap, align 8
  %32 = load i8, i8* %incdec.ptr87, align 1
  %conv88 = sext i8 %32 to i32
  %tobool89 = icmp ne i32 %conv88, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.84, %while.cond.82
  %33 = phi i1 [ false, %land.lhs.true.84 ], [ false, %while.cond.82 ], [ %tobool89, %land.rhs ]
  br i1 %33, label %while.body.90, label %while.end

while.body.90:                                    ; preds = %land.end
  %34 = load i8*, i8** %ap, align 8
  %35 = load i8, i8* %34, align 1
  %conv91 = sext i8 %35 to i32
  switch i32 %conv91, label %sw.default.295 [
    i32 97, label %sw.bb
    i32 65, label %sw.bb.92
    i32 112, label %sw.bb.93
    i32 99, label %sw.bb.103
    i32 101, label %sw.bb.115
    i32 102, label %sw.bb.130
    i32 104, label %sw.bb.140
    i32 105, label %sw.bb.152
    i32 116, label %sw.bb.153
    i32 108, label %sw.bb.160
    i32 119, label %sw.bb.181
    i32 76, label %sw.bb.195
    i32 109, label %sw.bb.196
    i32 79, label %sw.bb.197
    i32 84, label %sw.bb.198
    i32 113, label %sw.bb.212
    i32 81, label %sw.bb.213
    i32 114, label %sw.bb.214
    i32 82, label %sw.bb.214
    i32 120, label %sw.bb.214
    i32 100, label %sw.bb.242
    i32 68, label %sw.bb.243
    i32 115, label %sw.bb.263
    i32 83, label %sw.bb.276
    i32 88, label %sw.bb.289
    i32 118, label %sw.bb.290
    i32 85, label %sw.bb.291
  ]

sw.bb:                                            ; preds = %while.body.90
  store i32 1, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 5), align 4
  br label %sw.epilog.297

sw.bb.92:                                         ; preds = %while.body.90
  store i32 1, i32* @adaptflag, align 4
  br label %sw.epilog.297

sw.bb.93:                                         ; preds = %while.body.90
  %36 = load i8*, i8** %ap, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr94, i8** %ap, align 8
  %37 = load i8, i8* %incdec.ptr94, align 1
  %tobool95 = icmp ne i8 %37, 0
  br i1 %tobool95, label %if.then.96, label %if.else

if.then.96:                                       ; preds = %sw.bb.93
  %38 = load i8*, i8** %ap, align 8
  store i8* %38, i8** @preselect, align 8
  br label %if.end.102

if.else:                                          ; preds = %sw.bb.93
  %39 = load i32, i32* %ac.addr, align 4
  %dec97 = add nsw i32 %39, -1
  store i32 %dec97, i32* %ac.addr, align 4
  %tobool98 = icmp ne i32 %dec97, 0
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.else
  %40 = load i8*, i8** %myname, align 8
  call void @exit_with_usage(i8* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i32 0, i32 0), i8* null)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.else
  %41 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr101 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %incdec.ptr101, i8*** %av.addr, align 8
  %42 = load i8*, i8** %incdec.ptr101, align 8
  store i8* %42, i8** @preselect, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.100, %if.then.96
  store i8* null, i8** %ap, align 8
  br label %sw.epilog.297

sw.bb.103:                                        ; preds = %while.body.90
  %43 = load i8*, i8** %ap, align 8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr104, i8** %ap, align 8
  %44 = load i8, i8* %incdec.ptr104, align 1
  %tobool105 = icmp ne i8 %44, 0
  br i1 %tobool105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %sw.bb.103
  %45 = load i8*, i8** %ap, align 8
  store i8* %45, i8** @RcFileName, align 8
  br label %if.end.114

if.else.107:                                      ; preds = %sw.bb.103
  %46 = load i32, i32* %ac.addr, align 4
  %dec108 = add nsw i32 %46, -1
  store i32 %dec108, i32* %ac.addr, align 4
  %cmp109 = icmp eq i32 %dec108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.else.107
  %47 = load i8*, i8** %myname, align 8
  call void @exit_with_usage(i8* %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0), i8* null)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.else.107
  %48 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr113 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %incdec.ptr113, i8*** %av.addr, align 8
  %49 = load i8*, i8** %incdec.ptr113, align 8
  store i8* %49, i8** @RcFileName, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.112, %if.then.106
  store i8* null, i8** %ap, align 8
  br label %sw.epilog.297

sw.bb.115:                                        ; preds = %while.body.90
  %50 = load i8*, i8** %ap, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr116, i8** %ap, align 8
  %51 = load i8, i8* %incdec.ptr116, align 1
  %tobool117 = icmp ne i8 %51, 0
  br i1 %tobool117, label %if.end.125, label %if.then.118

if.then.118:                                      ; preds = %sw.bb.115
  %52 = load i32, i32* %ac.addr, align 4
  %dec119 = add nsw i32 %52, -1
  store i32 %dec119, i32* %ac.addr, align 4
  %cmp120 = icmp eq i32 %dec119, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.then.118
  %53 = load i8*, i8** %myname, align 8
  call void @exit_with_usage(i8* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* null)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.then.118
  %54 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr124 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %incdec.ptr124, i8*** %av.addr, align 8
  %55 = load i8*, i8** %incdec.ptr124, align 8
  store i8* %55, i8** %ap, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.123, %sw.bb.115
  %56 = load i8*, i8** %ap, align 8
  %call126 = call i32 @ParseEscape(i8* %56)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.125
  %57 = load i8*, i8** %ap, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), i8* %57) #10
  unreachable

if.end.129:                                       ; preds = %if.end.125
  store i8* null, i8** %ap, align 8
  br label %sw.epilog.297

sw.bb.130:                                        ; preds = %while.body.90
  %58 = load i8*, i8** %ap, align 8
  %incdec.ptr131 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr131, i8** %ap, align 8
  %59 = load i8*, i8** %ap, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr132, i8** %ap, align 8
  %60 = load i8, i8* %59, align 1
  %conv133 = sext i8 %60 to i32
  switch i32 %conv133, label %sw.default [
    i32 110, label %sw.bb.134
    i32 48, label %sw.bb.134
    i32 0, label %sw.bb.135
    i32 121, label %sw.bb.137
    i32 49, label %sw.bb.137
    i32 97, label %sw.bb.138
  ]

sw.bb.134:                                        ; preds = %sw.bb.130, %sw.bb.130
  store i32 0, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 6), align 4
  br label %sw.epilog

sw.bb.135:                                        ; preds = %sw.bb.130
  %61 = load i8*, i8** %ap, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %incdec.ptr136, i8** %ap, align 8
  br label %sw.bb.137

sw.bb.137:                                        ; preds = %sw.bb.130, %sw.bb.130, %sw.bb.135
  store i32 1, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 6), align 4
  br label %sw.epilog

sw.bb.138:                                        ; preds = %sw.bb.130
  store i32 4, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 6), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.130
  %62 = load i8*, i8** %myname, align 8
  %63 = load i8*, i8** %ap, align 8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %incdec.ptr139, i8** %ap, align 8
  call void @exit_with_usage(i8* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i8* %incdec.ptr139)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.138, %sw.bb.137, %sw.bb.134
  br label %sw.epilog.297

sw.bb.140:                                        ; preds = %while.body.90
  %64 = load i32, i32* %ac.addr, align 4
  %dec141 = add nsw i32 %64, -1
  store i32 %dec141, i32* %ac.addr, align 4
  %cmp142 = icmp eq i32 %dec141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %sw.bb.140
  %65 = load i8*, i8** %myname, align 8
  call void @exit_with_usage(i8* %65, i8* null, i8* null)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %sw.bb.140
  %66 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr146 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %incdec.ptr146, i8*** %av.addr, align 8
  %67 = load i8*, i8** %incdec.ptr146, align 8
  %call147 = call i32 @atoi(i8* %67) #9
  store i32 %call147, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 8), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 8), align 4
  %cmp148 = icmp slt i32 %68, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.145
  %69 = load i8*, i8** %myname, align 8
  %70 = load i8**, i8*** %av.addr, align 8
  %71 = load i8*, i8** %70, align 8
  call void @exit_with_usage(i8* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0), i8* %71)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.end.145
  br label %sw.epilog.297

sw.bb.152:                                        ; preds = %while.body.90
  store i32 1, i32* @iflag, align 4
  br label %sw.epilog.297

sw.bb.153:                                        ; preds = %while.body.90
  %72 = load i32, i32* %ac.addr, align 4
  %dec154 = add nsw i32 %72, -1
  store i32 %dec154, i32* %ac.addr, align 4
  %cmp155 = icmp eq i32 %dec154, 0
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %sw.bb.153
  %73 = load i8*, i8** %myname, align 8
  call void @exit_with_usage(i8* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), i8* null)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %sw.bb.153
  %74 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr159 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %incdec.ptr159, i8*** %av.addr, align 8
  %75 = load i8*, i8** %incdec.ptr159, align 8
  store i8* %75, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 1), align 8
  br label %sw.epilog.297

sw.bb.160:                                        ; preds = %while.body.90
  %76 = load i8*, i8** %ap, align 8
  %incdec.ptr161 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr161, i8** %ap, align 8
  %77 = load i8*, i8** %ap, align 8
  %incdec.ptr162 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr162, i8** %ap, align 8
  %78 = load i8, i8* %77, align 1
  %conv163 = sext i8 %78 to i32
  switch i32 %conv163, label %sw.default.178 [
    i32 110, label %sw.bb.164
    i32 48, label %sw.bb.164
    i32 0, label %sw.bb.165
    i32 121, label %sw.bb.167
    i32 49, label %sw.bb.167
    i32 97, label %sw.bb.168
    i32 115, label %sw.bb.169
    i32 105, label %sw.bb.169
  ]

sw.bb.164:                                        ; preds = %sw.bb.160, %sw.bb.160
  store i32 0, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 7), align 4
  br label %sw.epilog.180

sw.bb.165:                                        ; preds = %sw.bb.160
  %79 = load i8*, i8** %ap, align 8
  %incdec.ptr166 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %incdec.ptr166, i8** %ap, align 8
  br label %sw.bb.167

sw.bb.167:                                        ; preds = %sw.bb.160, %sw.bb.160, %sw.bb.165
  store i32 1, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 7), align 4
  br label %sw.epilog.180

sw.bb.168:                                        ; preds = %sw.bb.160
  store i32 3, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 7), align 4
  br label %sw.epilog.180

sw.bb.169:                                        ; preds = %sw.bb.160, %sw.bb.160
  store i32 1, i32* @lsflag, align 4
  %80 = load i32, i32* %ac.addr, align 4
  %cmp170 = icmp sgt i32 %80, 1
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.177

land.lhs.true.172:                                ; preds = %sw.bb.169
  %81 = load i8*, i8** @SockMatch, align 8
  %tobool173 = icmp ne i8* %81, null
  br i1 %tobool173, label %if.end.177, label %if.then.174

if.then.174:                                      ; preds = %land.lhs.true.172
  %82 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr175 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %incdec.ptr175, i8*** %av.addr, align 8
  %83 = load i8*, i8** %incdec.ptr175, align 8
  store i8* %83, i8** @SockMatch, align 8
  %84 = load i32, i32* %ac.addr, align 4
  %dec176 = add nsw i32 %84, -1
  store i32 %dec176, i32* %ac.addr, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.174, %land.lhs.true.172, %sw.bb.169
  store i8* null, i8** %ap, align 8
  br label %sw.epilog.180

sw.default.178:                                   ; preds = %sw.bb.160
  %85 = load i8*, i8** %myname, align 8
  %86 = load i8*, i8** %ap, align 8
  %incdec.ptr179 = getelementptr inbounds i8, i8* %86, i32 -1
  store i8* %incdec.ptr179, i8** %ap, align 8
  call void @exit_with_usage(i8* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %incdec.ptr179)
  br label %sw.epilog.180

sw.epilog.180:                                    ; preds = %sw.default.178, %if.end.177, %sw.bb.168, %sw.bb.167, %sw.bb.164
  br label %sw.epilog.297

sw.bb.181:                                        ; preds = %while.body.90
  %87 = load i8*, i8** %ap, align 8
  %add.ptr = getelementptr inbounds i8, i8* %87, i64 1
  %call182 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)) #9
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %sw.bb.181
  %88 = load i8*, i8** %myname, align 8
  %89 = load i8*, i8** %ap, align 8
  %incdec.ptr185 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %incdec.ptr185, i8** %ap, align 8
  call void @exit_with_usage(i8* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* %incdec.ptr185)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %sw.bb.181
  store i32 1, i32* @lsflag, align 4
  store i32 1, i32* @wipeflag, align 4
  %90 = load i32, i32* %ac.addr, align 4
  %cmp187 = icmp sgt i32 %90, 1
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.194

land.lhs.true.189:                                ; preds = %if.end.186
  %91 = load i8*, i8** @SockMatch, align 8
  %tobool190 = icmp ne i8* %91, null
  br i1 %tobool190, label %if.end.194, label %if.then.191

if.then.191:                                      ; preds = %land.lhs.true.189
  %92 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr192 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %incdec.ptr192, i8*** %av.addr, align 8
  %93 = load i8*, i8** %incdec.ptr192, align 8
  store i8* %93, i8** @SockMatch, align 8
  %94 = load i32, i32* %ac.addr, align 4
  %dec193 = add nsw i32 %94, -1
  store i32 %dec193, i32* %ac.addr, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.191, %land.lhs.true.189, %if.end.186
  br label %sw.epilog.297

sw.bb.195:                                        ; preds = %while.body.90
  store i32 1, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 13), align 4
  br label %sw.epilog.297

sw.bb.196:                                        ; preds = %while.body.90
  store i32 1, i32* %mflag, align 4
  br label %sw.epilog.297

sw.bb.197:                                        ; preds = %while.body.90
  store i32 0, i32* @force_vt, align 4
  br label %sw.epilog.297

sw.bb.198:                                        ; preds = %while.body.90
  %95 = load i32, i32* %ac.addr, align 4
  %dec199 = add nsw i32 %95, -1
  store i32 %dec199, i32* %ac.addr, align 4
  %cmp200 = icmp eq i32 %dec199, 0
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %sw.bb.198
  %96 = load i8*, i8** %myname, align 8
  call void @exit_with_usage(i8* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0), i8* null)
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.202, %sw.bb.198
  %97 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr204 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %incdec.ptr204, i8*** %av.addr, align 8
  %98 = load i8*, i8** %incdec.ptr204, align 8
  %call205 = call i64 @strlen(i8* %98) #9
  %cmp206 = icmp ult i64 %call205, 32
  br i1 %cmp206, label %if.then.208, label %if.else.210

if.then.208:                                      ; preds = %if.end.203
  %99 = load i8**, i8*** %av.addr, align 8
  %100 = load i8*, i8** %99, align 8
  %call209 = call i8* @strncpy(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @screenterm, i32 0, i32 0), i8* %100, i64 32) #3
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @screenterm, i32 0, i64 32), align 1
  br label %if.end.211

if.else.210:                                      ; preds = %if.end.203
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i32 0, i32 0)) #10
  unreachable

if.end.211:                                       ; preds = %if.then.208
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @screenterm, i32 0, i32 0), i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 4), align 8
  br label %sw.epilog.297

sw.bb.212:                                        ; preds = %while.body.90
  store i32 1, i32* @quietflag, align 4
  br label %sw.epilog.297

sw.bb.213:                                        ; preds = %while.body.90
  store i32 1, i32* @queryflag, align 4
  store i32 1, i32* @cmdflag, align 4
  br label %sw.epilog.297

sw.bb.214:                                        ; preds = %while.body.90, %while.body.90, %while.body.90
  %101 = load i32, i32* %ac.addr, align 4
  %cmp215 = icmp sgt i32 %101, 1
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.229

land.lhs.true.217:                                ; preds = %sw.bb.214
  %102 = load i8**, i8*** %av.addr, align 8
  %arrayidx218 = getelementptr inbounds i8*, i8** %102, i64 1
  %103 = load i8*, i8** %arrayidx218, align 8
  %104 = load i8, i8* %103, align 1
  %conv219 = sext i8 %104 to i32
  %cmp220 = icmp ne i32 %conv219, 45
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.229

land.lhs.true.222:                                ; preds = %land.lhs.true.217
  %105 = load i8*, i8** @SockMatch, align 8
  %tobool223 = icmp ne i8* %105, null
  br i1 %tobool223, label %if.end.229, label %if.then.224

if.then.224:                                      ; preds = %land.lhs.true.222
  %106 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr225 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %incdec.ptr225, i8*** %av.addr, align 8
  %107 = load i8*, i8** %incdec.ptr225, align 8
  store i8* %107, i8** @SockMatch, align 8
  %108 = load i32, i32* %ac.addr, align 4
  %dec226 = add nsw i32 %108, -1
  store i32 %dec226, i32* %ac.addr, align 4
  br label %do.body.227

do.body.227:                                      ; preds = %if.then.224
  br label %do.end.228

do.end.228:                                       ; preds = %do.body.227
  br label %if.end.229

if.end.229:                                       ; preds = %do.end.228, %land.lhs.true.222, %land.lhs.true.217, %sw.bb.214
  %109 = load i8*, i8** %ap, align 8
  %110 = load i8, i8* %109, align 1
  %conv230 = sext i8 %110 to i32
  %cmp231 = icmp eq i32 %conv230, 120
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.end.229
  store i32 1, i32* @xflag, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %if.end.229
  %111 = load i32, i32* @rflag, align 4
  %tobool235 = icmp ne i32 %111, 0
  br i1 %tobool235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.234
  store i32 2, i32* @rflag, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.end.234
  %112 = load i8*, i8** %ap, align 8
  %113 = load i8, i8* %112, align 1
  %conv238 = sext i8 %113 to i32
  %cmp239 = icmp eq i32 %conv238, 82
  %cond241 = select i1 %cmp239, i32 2, i32 1
  %114 = load i32, i32* @rflag, align 4
  %add = add nsw i32 %114, %cond241
  store i32 %add, i32* @rflag, align 4
  br label %sw.epilog.297

sw.bb.242:                                        ; preds = %while.body.90
  store i32 1, i32* @dflag, align 4
  br label %sw.bb.243

sw.bb.243:                                        ; preds = %while.body.90, %sw.bb.242
  %115 = load i32, i32* @dflag, align 4
  %tobool244 = icmp ne i32 %115, 0
  br i1 %tobool244, label %if.end.246, label %if.then.245

if.then.245:                                      ; preds = %sw.bb.243
  store i32 2, i32* @dflag, align 4
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.245, %sw.bb.243
  %116 = load i32, i32* %ac.addr, align 4
  %cmp247 = icmp eq i32 %116, 2
  br i1 %cmp247, label %if.then.249, label %if.end.262

if.then.249:                                      ; preds = %if.end.246
  %117 = load i8**, i8*** %av.addr, align 8
  %arrayidx250 = getelementptr inbounds i8*, i8** %117, i64 1
  %118 = load i8*, i8** %arrayidx250, align 8
  %119 = load i8, i8* %118, align 1
  %conv251 = sext i8 %119 to i32
  %cmp252 = icmp ne i32 %conv251, 45
  br i1 %cmp252, label %land.lhs.true.254, label %if.end.261

land.lhs.true.254:                                ; preds = %if.then.249
  %120 = load i8*, i8** @SockMatch, align 8
  %tobool255 = icmp ne i8* %120, null
  br i1 %tobool255, label %if.end.261, label %if.then.256

if.then.256:                                      ; preds = %land.lhs.true.254
  %121 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr257 = getelementptr inbounds i8*, i8** %121, i32 1
  store i8** %incdec.ptr257, i8*** %av.addr, align 8
  %122 = load i8*, i8** %incdec.ptr257, align 8
  store i8* %122, i8** @SockMatch, align 8
  %123 = load i32, i32* %ac.addr, align 4
  %dec258 = add nsw i32 %123, -1
  store i32 %dec258, i32* %ac.addr, align 4
  br label %do.body.259

do.body.259:                                      ; preds = %if.then.256
  br label %do.end.260

do.end.260:                                       ; preds = %do.body.259
  br label %if.end.261

if.end.261:                                       ; preds = %do.end.260, %land.lhs.true.254, %if.then.249
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.end.246
  br label %sw.epilog.297

sw.bb.263:                                        ; preds = %while.body.90
  %124 = load i32, i32* %ac.addr, align 4
  %dec264 = add nsw i32 %124, -1
  store i32 %dec264, i32* %ac.addr, align 4
  %cmp265 = icmp eq i32 %dec264, 0
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %sw.bb.263
  %125 = load i8*, i8** %myname, align 8
  call void @exit_with_usage(i8* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i8* null)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %sw.bb.263
  %126 = load i8*, i8** @ShellProg, align 8
  %tobool269 = icmp ne i8* %126, null
  br i1 %tobool269, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %if.end.268
  %127 = load i8*, i8** @ShellProg, align 8
  call void @free(i8* %127) #3
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.270, %if.end.268
  %128 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr272 = getelementptr inbounds i8*, i8** %128, i32 1
  store i8** %incdec.ptr272, i8*** %av.addr, align 8
  %129 = load i8*, i8** %incdec.ptr272, align 8
  %call273 = call i8* @SaveStr(i8* %129)
  store i8* %call273, i8** @ShellProg, align 8
  br label %do.body.274

do.body.274:                                      ; preds = %if.end.271
  br label %do.end.275

do.end.275:                                       ; preds = %do.body.274
  br label %sw.epilog.297

sw.bb.276:                                        ; preds = %while.body.90
  %130 = load i8*, i8** @SockMatch, align 8
  %tobool277 = icmp ne i8* %130, null
  br i1 %tobool277, label %if.end.285, label %if.then.278

if.then.278:                                      ; preds = %sw.bb.276
  %131 = load i32, i32* %ac.addr, align 4
  %dec279 = add nsw i32 %131, -1
  store i32 %dec279, i32* %ac.addr, align 4
  %cmp280 = icmp eq i32 %dec279, 0
  br i1 %cmp280, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %if.then.278
  %132 = load i8*, i8** %myname, align 8
  call void @exit_with_usage(i8* %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0), i8* null)
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.282, %if.then.278
  %133 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr284 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %incdec.ptr284, i8*** %av.addr, align 8
  %134 = load i8*, i8** %incdec.ptr284, align 8
  store i8* %134, i8** @SockMatch, align 8
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.283, %sw.bb.276
  %135 = load i8*, i8** @SockMatch, align 8
  %136 = load i8, i8* %135, align 1
  %tobool286 = icmp ne i8 %136, 0
  br i1 %tobool286, label %if.end.288, label %if.then.287

if.then.287:                                      ; preds = %if.end.285
  %137 = load i8*, i8** %myname, align 8
  call void @exit_with_usage(i8* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8* null)
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.287, %if.end.285
  br label %sw.epilog.297

sw.bb.289:                                        ; preds = %while.body.90
  store i32 1, i32* @cmdflag, align 4
  br label %sw.epilog.297

sw.bb.290:                                        ; preds = %while.body.90
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @version, i32 0, i32 0)) #10
  unreachable

sw.bb.291:                                        ; preds = %while.body.90
  %138 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 18), align 4
  %cmp292 = icmp eq i32 %138, -1
  %cond294 = select i1 %cmp292, i32 8, i32 0
  store i32 %cond294, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 18), align 4
  br label %sw.epilog.297

sw.default.295:                                   ; preds = %while.body.90
  %139 = load i8*, i8** %myname, align 8
  %140 = load i8*, i8** %ap, align 8
  %incdec.ptr296 = getelementptr inbounds i8, i8* %140, i32 -1
  store i8* %incdec.ptr296, i8** %ap, align 8
  call void @exit_with_usage(i8* %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* %incdec.ptr296)
  br label %sw.epilog.297

sw.epilog.297:                                    ; preds = %sw.default.295, %sw.bb.291, %sw.bb.289, %if.end.288, %do.end.275, %if.end.262, %if.end.237, %sw.bb.213, %sw.bb.212, %if.end.211, %sw.bb.197, %sw.bb.196, %sw.bb.195, %if.end.194, %sw.epilog.180, %if.end.158, %sw.bb.152, %if.end.151, %sw.epilog, %if.end.129, %if.end.114, %if.end.102, %sw.bb.92, %sw.bb
  br label %while.cond.82

while.end:                                        ; preds = %land.end
  br label %if.end.299

if.else.298:                                      ; preds = %land.lhs.true, %while.body
  br label %while.end.300

if.end.299:                                       ; preds = %while.end
  br label %while.cond

while.end.300:                                    ; preds = %if.else.298, %if.then.61, %while.cond
  %call301 = call i32 @getuid() #3
  store i32 %call301, i32* @real_uid, align 4
  %call302 = call i32 @getgid() #3
  store i32 %call302, i32* @real_gid, align 4
  %call303 = call i32 @geteuid() #3
  store i32 %call303, i32* @eff_uid, align 4
  %call304 = call i32 @getegid() #3
  store i32 %call304, i32* @eff_gid, align 4
  %call305 = call void (i32)* @xsignal(i32 7, void (i32)* @CoreDump)
  %call306 = call void (i32)* @xsignal(i32 11, void (i32)* @CoreDump)
  %call307 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #3
  %141 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 18), align 4
  %cmp308 = icmp eq i32 %141, -1
  br i1 %cmp308, label %if.then.310, label %if.end.315

if.then.310:                                      ; preds = %while.end.300
  %call311 = call i8* @nl_langinfo(i32 14) #3
  %call312 = call i32 @FindEncoding(i8* %call311)
  store i32 %call312, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 18), align 4
  br label %do.body.313

do.body.313:                                      ; preds = %if.then.310
  br label %do.end.314

do.end.314:                                       ; preds = %do.body.313
  br label %if.end.315

if.end.315:                                       ; preds = %do.end.314, %while.end.300
  %call316 = call i8* @locale_name()
  store i8* %call316, i8** %s, align 8
  %tobool317 = icmp ne i8* %call316, null
  br i1 %tobool317, label %if.then.318, label %if.end.328

if.then.318:                                      ; preds = %if.end.315
  %142 = load i8*, i8** %s, align 8
  %call319 = call i32 @strncmp(i8* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i64 3) #9
  %tobool320 = icmp ne i32 %call319, 0
  br i1 %tobool320, label %lor.lhs.false, label %if.then.326

lor.lhs.false:                                    ; preds = %if.then.318
  %143 = load i8*, i8** %s, align 8
  %call321 = call i32 @strncmp(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i64 3) #9
  %tobool322 = icmp ne i32 %call321, 0
  br i1 %tobool322, label %lor.lhs.false.323, label %if.then.326

lor.lhs.false.323:                                ; preds = %lor.lhs.false
  %144 = load i8*, i8** %s, align 8
  %call324 = call i32 @strncmp(i8* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i64 3) #9
  %tobool325 = icmp ne i32 %call324, 0
  br i1 %tobool325, label %if.end.327, label %if.then.326

if.then.326:                                      ; preds = %lor.lhs.false.323, %lor.lhs.false, %if.then.318
  store i32 1, i32* @cjkwidth, align 4
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.326, %lor.lhs.false.323
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.end.315
  %145 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 1), align 8
  %tobool329 = icmp ne i8* %145, null
  br i1 %tobool329, label %if.then.330, label %if.end.346

if.then.330:                                      ; preds = %if.end.328
  %146 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 18), align 4
  %cmp331 = icmp sgt i32 %146, 0
  br i1 %cmp331, label %if.then.333, label %if.else.343

if.then.333:                                      ; preds = %if.then.330
  %147 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 1), align 8
  %call334 = call i64 @strlen(i8* %147) #9
  store i64 %call334, i64* %len, align 8
  %148 = load i64, i64* %len, align 8
  %mul = mul i64 3, %148
  %call335 = call noalias i8* @malloc(i64 %mul) #3
  store i8* %call335, i8** %newbuf, align 8
  %149 = load i8*, i8** %newbuf, align 8
  %tobool336 = icmp ne i8* %149, null
  br i1 %tobool336, label %if.end.338, label %if.then.337

if.then.337:                                      ; preds = %if.then.333
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @strnomem, i32 0, i32 0)) #10
  unreachable

if.end.338:                                       ; preds = %if.then.333
  %150 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 1), align 8
  %151 = load i64, i64* %len, align 8
  %conv339 = trunc i64 %151 to i32
  %152 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 18), align 4
  %153 = load i8*, i8** %newbuf, align 8
  %call340 = call i32 @RecodeBuf(i8* %150, i32 %conv339, i32 %152, i32 0, i8* %153)
  %conv341 = sext i32 %call340 to i64
  store i64 %conv341, i64* %newsz, align 8
  %154 = load i64, i64* %newsz, align 8
  %155 = load i8*, i8** %newbuf, align 8
  %arrayidx342 = getelementptr inbounds i8, i8* %155, i64 %154
  store i8 0, i8* %arrayidx342, align 1
  %156 = load i8*, i8** %newbuf, align 8
  store i8* %156, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 1), align 8
  br label %if.end.345

if.else.343:                                      ; preds = %if.then.330
  %157 = load i8*, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 1), align 8
  %call344 = call i8* @SaveStr(i8* %157)
  store i8* %call344, i8** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 1), align 8
  br label %if.end.345

if.end.345:                                       ; preds = %if.else.343, %if.end.338
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %if.end.328
  %158 = load i8*, i8** @SockMatch, align 8
  %tobool347 = icmp ne i8* %158, null
  br i1 %tobool347, label %land.lhs.true.348, label %if.end.353

land.lhs.true.348:                                ; preds = %if.end.346
  %159 = load i8*, i8** @SockMatch, align 8
  %call349 = call i64 @strlen(i8* %159) #9
  %cmp350 = icmp uge i64 %call349, 768
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %land.lhs.true.348
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i32 0, i32 0)) #10
  unreachable

if.end.353:                                       ; preds = %land.lhs.true.348, %if.end.346
  %160 = load i32, i32* @cmdflag, align 4
  %tobool354 = icmp ne i32 %160, 0
  br i1 %tobool354, label %land.lhs.true.355, label %if.end.362

land.lhs.true.355:                                ; preds = %if.end.353
  %161 = load i32, i32* @rflag, align 4
  %tobool356 = icmp ne i32 %161, 0
  br i1 %tobool356, label %if.end.362, label %land.lhs.true.357

land.lhs.true.357:                                ; preds = %land.lhs.true.355
  %162 = load i32, i32* @dflag, align 4
  %tobool358 = icmp ne i32 %162, 0
  br i1 %tobool358, label %if.end.362, label %land.lhs.true.359

land.lhs.true.359:                                ; preds = %land.lhs.true.357
  %163 = load i32, i32* @xflag, align 4
  %tobool360 = icmp ne i32 %163, 0
  br i1 %tobool360, label %if.end.362, label %if.then.361

if.then.361:                                      ; preds = %land.lhs.true.359
  store i32 1, i32* @xflag, align 4
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.361, %land.lhs.true.359, %land.lhs.true.357, %land.lhs.true.355, %if.end.353
  %164 = load i32, i32* @cmdflag, align 4
  %tobool363 = icmp ne i32 %164, 0
  br i1 %tobool363, label %if.end.373, label %land.lhs.true.364

land.lhs.true.364:                                ; preds = %if.end.362
  %165 = load i32, i32* @dflag, align 4
  %tobool365 = icmp ne i32 %165, 0
  br i1 %tobool365, label %land.lhs.true.366, label %if.end.373

land.lhs.true.366:                                ; preds = %land.lhs.true.364
  %166 = load i32, i32* %mflag, align 4
  %tobool367 = icmp ne i32 %166, 0
  br i1 %tobool367, label %land.lhs.true.368, label %if.end.373

land.lhs.true.368:                                ; preds = %land.lhs.true.366
  %167 = load i32, i32* @rflag, align 4
  %tobool369 = icmp ne i32 %167, 0
  br i1 %tobool369, label %if.end.373, label %lor.lhs.false.370

lor.lhs.false.370:                                ; preds = %land.lhs.true.368
  %168 = load i32, i32* @xflag, align 4
  %tobool371 = icmp ne i32 %168, 0
  br i1 %tobool371, label %if.end.373, label %if.then.372

if.then.372:                                      ; preds = %lor.lhs.false.370
  store i32 1, i32* %detached, align 4
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.372, %lor.lhs.false.370, %land.lhs.true.368, %land.lhs.true.366, %land.lhs.true.364, %if.end.362
  %169 = bitcast %struct.NewWindow* %nwin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* bitcast (%struct.NewWindow* @nwin_options to i8*), i64 120, i32 8, i1 false)
  %170 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_undef, i32 0, i32 18), align 4
  %encoding = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 18
  store i32 %170, i32* %encoding, align 4
  %171 = load i32, i32* %ac.addr, align 4
  %tobool374 = icmp ne i32 %171, 0
  br i1 %tobool374, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %if.end.373
  %172 = load i8**, i8*** %av.addr, align 8
  %args = getelementptr inbounds %struct.NewWindow, %struct.NewWindow* %nwin, i32 0, i32 2
  store i8** %172, i8*** %args, align 8
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %if.end.373
  %call377 = call void (i32)* @xsignal(i32 25, void (i32)* inttoptr (i64 1 to void (i32)*))
  %call378 = call void (i32)* @xsignal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*))
  %173 = load i8*, i8** @ShellProg, align 8
  %tobool379 = icmp ne i8* %173, null
  br i1 %tobool379, label %if.end.388, label %if.then.380

if.then.380:                                      ; preds = %if.end.376
  %call381 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)) #3
  store i8* %call381, i8** %sh, align 8
  %174 = load i8*, i8** %sh, align 8
  %tobool382 = icmp ne i8* %174, null
  br i1 %tobool382, label %cond.true.383, label %cond.false.384

cond.true.383:                                    ; preds = %if.then.380
  %175 = load i8*, i8** %sh, align 8
  br label %cond.end.385

cond.false.384:                                   ; preds = %if.then.380
  br label %cond.end.385

cond.end.385:                                     ; preds = %cond.false.384, %cond.true.383
  %cond386 = phi i8* [ %175, %cond.true.383 ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @DefaultShell, i32 0, i32 0), %cond.false.384 ]
  %call387 = call i8* @SaveStr(i8* %cond386)
  store i8* %call387, i8** @ShellProg, align 8
  br label %if.end.388

if.end.388:                                       ; preds = %cond.end.385, %if.end.376
  %176 = load i8*, i8** @ShellProg, align 8
  store i8* %176, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @ShellArgs, i32 0, i64 0), align 8
  %call389 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #3
  store i8* %call389, i8** @home, align 8
  %177 = load i32, i32* %mflag, align 4
  %tobool390 = icmp ne i32 %177, 0
  br i1 %tobool390, label %if.end.402, label %land.lhs.true.391

land.lhs.true.391:                                ; preds = %if.end.388
  %178 = load i8*, i8** @SockMatch, align 8
  %tobool392 = icmp ne i8* %178, null
  br i1 %tobool392, label %if.end.402, label %if.then.393

if.then.393:                                      ; preds = %land.lhs.true.391
  %call394 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0)) #3
  store i8* %call394, i8** %sty, align 8
  %179 = load i8*, i8** %sty, align 8
  %tobool395 = icmp ne i8* %179, null
  br i1 %tobool395, label %land.lhs.true.396, label %if.end.401

land.lhs.true.396:                                ; preds = %if.then.393
  %180 = load i8*, i8** %sty, align 8
  %181 = load i8, i8* %180, align 1
  %conv397 = sext i8 %181 to i32
  %cmp398 = icmp eq i32 %conv397, 0
  br i1 %cmp398, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %land.lhs.true.396
  store i8* null, i8** %sty, align 8
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.400, %land.lhs.true.396, %if.then.393
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.401, %land.lhs.true.391, %if.end.388
  %call403 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0)) #3
  %cmp404 = icmp ne i8* %call403, null
  %conv405 = zext i1 %cmp404 to i32
  store i32 %conv405, i32* @nethackflag, align 4
  br i1 %cmp404, label %if.end.418, label %if.then.406

if.then.406:                                      ; preds = %if.end.402
  %182 = load i8*, i8** @home, align 8
  %tobool407 = icmp ne i8* %182, null
  br i1 %tobool407, label %land.lhs.true.408, label %if.end.417

land.lhs.true.408:                                ; preds = %if.then.406
  %183 = load i8*, i8** @home, align 8
  %call409 = call i64 @strlen(i8* %183) #9
  %cmp410 = icmp ult i64 %call409, 4076
  br i1 %cmp410, label %if.then.412, label %if.end.417

if.then.412:                                      ; preds = %land.lhs.true.408
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %nethackrc, i32 0, i32 0
  %184 = load i8*, i8** @home, align 8
  %call413 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8* %184) #3
  %arraydecay414 = getelementptr inbounds [4096 x i8], [4096 x i8]* %nethackrc, i32 0, i32 0
  %call415 = call i32 @access(i8* %arraydecay414, i32 0) #3
  %tobool416 = icmp ne i32 %call415, 0
  %lnot = xor i1 %tobool416, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @nethackflag, align 4
  br label %if.end.417

if.end.417:                                       ; preds = %if.then.412, %land.lhs.true.408, %if.then.406
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.417, %if.end.402
  %185 = load i32, i32* @real_uid, align 4
  store i32 %185, i32* @multi_uid, align 4
  store i32 %185, i32* @own_uid, align 4
  %186 = load i8*, i8** @SockMatch, align 8
  %tobool419 = icmp ne i8* %186, null
  br i1 %tobool419, label %land.lhs.true.420, label %if.end.450

land.lhs.true.420:                                ; preds = %if.end.418
  %187 = load i8*, i8** @SockMatch, align 8
  %call421 = call i8* @index(i8* %187, i32 47) #9
  store i8* %call421, i8** %sockp, align 8
  %tobool422 = icmp ne i8* %call421, null
  br i1 %tobool422, label %if.then.423, label %if.end.450

if.then.423:                                      ; preds = %land.lhs.true.420
  %188 = load i8*, i8** %sockp, align 8
  store i8 0, i8* %188, align 1
  %189 = load i8*, i8** @SockMatch, align 8
  store i8* %189, i8** @multi, align 8
  %190 = load i8*, i8** %sockp, align 8
  %add.ptr424 = getelementptr inbounds i8, i8* %190, i64 1
  store i8* %add.ptr424, i8** @SockMatch, align 8
  %191 = load i8*, i8** @multi, align 8
  %192 = load i8, i8* %191, align 1
  %tobool425 = icmp ne i8 %192, 0
  br i1 %tobool425, label %if.then.426, label %if.end.443

if.then.426:                                      ; preds = %if.then.423
  %193 = load i8*, i8** @multi, align 8
  %call427 = call %struct.passwd* @getpwnam(i8* %193)
  store %struct.passwd* %call427, %struct.passwd** %mppp, align 8
  %cmp428 = icmp eq %struct.passwd* %call427, null
  br i1 %cmp428, label %if.then.430, label %if.end.431

if.then.430:                                      ; preds = %if.then.426
  %194 = load i8*, i8** @multi, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i8* %194) #10
  unreachable

if.end.431:                                       ; preds = %if.then.426
  %195 = load %struct.passwd*, %struct.passwd** %mppp, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %195, i32 0, i32 2
  %196 = load i32, i32* %pw_uid, align 4
  store i32 %196, i32* @multi_uid, align 4
  %197 = load %struct.passwd*, %struct.passwd** %mppp, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %197, i32 0, i32 5
  %198 = load i8*, i8** %pw_dir, align 8
  %call432 = call i8* @SaveStr(i8* %198)
  store i8* %call432, i8** @multi_home, align 8
  %199 = load i8*, i8** @multi_home, align 8
  %call433 = call i64 @strlen(i8* %199) #9
  %cmp434 = icmp ugt i64 %call433, 4086
  br i1 %cmp434, label %if.then.436, label %if.end.437

if.then.436:                                      ; preds = %if.end.431
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0)) #10
  unreachable

if.end.437:                                       ; preds = %if.end.431
  %200 = load i32, i32* @rflag, align 4
  %tobool438 = icmp ne i32 %200, 0
  br i1 %tobool438, label %if.then.441, label %lor.lhs.false.439

lor.lhs.false.439:                                ; preds = %if.end.437
  %201 = load i32, i32* @lsflag, align 4
  %tobool440 = icmp ne i32 %201, 0
  br i1 %tobool440, label %if.then.441, label %if.end.442

if.then.441:                                      ; preds = %lor.lhs.false.439, %if.end.437
  store i32 1, i32* @xflag, align 4
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.441, %lor.lhs.false.439
  store i32 0, i32* %detached, align 4
  store i32 1, i32* @multiattach, align 4
  br label %if.end.443

if.end.443:                                       ; preds = %if.end.442, %if.then.423
  %202 = load i32, i32* @eff_uid, align 4
  %tobool444 = icmp ne i32 %202, 0
  br i1 %tobool444, label %land.lhs.true.445, label %if.end.449

land.lhs.true.445:                                ; preds = %if.end.443
  %203 = load i32, i32* @multi_uid, align 4
  %204 = load i32, i32* @eff_uid, align 4
  %cmp446 = icmp ne i32 %203, %204
  br i1 %cmp446, label %if.then.448, label %if.end.449

if.then.448:                                      ; preds = %land.lhs.true.445
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i32 0, i32 0)) #10
  unreachable

if.end.449:                                       ; preds = %land.lhs.true.445, %if.end.443
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %land.lhs.true.420, %if.end.418
  %205 = load i8*, i8** @SockMatch, align 8
  %tobool451 = icmp ne i8* %205, null
  br i1 %tobool451, label %land.lhs.true.452, label %if.end.457

land.lhs.true.452:                                ; preds = %if.end.450
  %206 = load i8*, i8** @SockMatch, align 8
  %207 = load i8, i8* %206, align 1
  %conv453 = sext i8 %207 to i32
  %cmp454 = icmp eq i32 %conv453, 0
  br i1 %cmp454, label %if.then.456, label %if.end.457

if.then.456:                                      ; preds = %land.lhs.true.452
  store i8* null, i8** @SockMatch, align 8
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.456, %land.lhs.true.452, %if.end.450
  %call458 = call i8* @getlogin()
  store i8* %call458, i8** @LoginName, align 8
  %tobool459 = icmp ne i8* %call458, null
  br i1 %tobool459, label %land.lhs.true.460, label %if.end.476

land.lhs.true.460:                                ; preds = %if.end.457
  %208 = load i8*, i8** @LoginName, align 8
  %arrayidx461 = getelementptr inbounds i8, i8* %208, i64 0
  %209 = load i8, i8* %arrayidx461, align 1
  %conv462 = sext i8 %209 to i32
  %cmp463 = icmp ne i32 %conv462, 0
  br i1 %cmp463, label %if.then.465, label %if.end.476

if.then.465:                                      ; preds = %land.lhs.true.460
  %210 = load i8*, i8** @LoginName, align 8
  %call466 = call %struct.passwd* @getpwnam(i8* %210)
  store %struct.passwd* %call466, %struct.passwd** @ppp, align 8
  %cmp467 = icmp ne %struct.passwd* %call466, null
  br i1 %cmp467, label %if.then.469, label %if.end.475

if.then.469:                                      ; preds = %if.then.465
  %211 = load %struct.passwd*, %struct.passwd** @ppp, align 8
  %pw_uid470 = getelementptr inbounds %struct.passwd, %struct.passwd* %211, i32 0, i32 2
  %212 = load i32, i32* %pw_uid470, align 4
  %213 = load i32, i32* @real_uid, align 4
  %cmp471 = icmp ne i32 %212, %213
  br i1 %cmp471, label %if.then.473, label %if.end.474

if.then.473:                                      ; preds = %if.then.469
  store %struct.passwd* null, %struct.passwd** @ppp, align 8
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.473, %if.then.469
  br label %if.end.475

if.end.475:                                       ; preds = %if.end.474, %if.then.465
  br label %if.end.476

if.end.476:                                       ; preds = %if.end.475, %land.lhs.true.460, %if.end.457
  %214 = load %struct.passwd*, %struct.passwd** @ppp, align 8
  %cmp477 = icmp eq %struct.passwd* %214, null
  br i1 %cmp477, label %if.then.479, label %if.end.485

if.then.479:                                      ; preds = %if.end.476
  %215 = load i32, i32* @real_uid, align 4
  %call480 = call %struct.passwd* @getpwuid(i32 %215)
  store %struct.passwd* %call480, %struct.passwd** @ppp, align 8
  %cmp481 = icmp eq %struct.passwd* %call480, null
  br i1 %cmp481, label %if.then.483, label %if.end.484

if.then.483:                                      ; preds = %if.then.479
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.50, i32 0, i32 0)) #10
  unreachable

if.end.484:                                       ; preds = %if.then.479
  %216 = load %struct.passwd*, %struct.passwd** @ppp, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %216, i32 0, i32 0
  %217 = load i8*, i8** %pw_name, align 8
  store i8* %217, i8** @LoginName, align 8
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.end.476
  %218 = load i8*, i8** @LoginName, align 8
  %call486 = call i8* @SaveStr(i8* %218)
  store i8* %call486, i8** @LoginName, align 8
  %219 = load i8*, i8** @LoginName, align 8
  %220 = load %struct.passwd*, %struct.passwd** @ppp, align 8
  %call487 = call %struct.passwd* @getpwbyname(i8* %219, %struct.passwd* %220)
  store %struct.passwd* %call487, %struct.passwd** @ppp, align 8
  %221 = load i8*, i8** @home, align 8
  %cmp488 = icmp eq i8* %221, null
  br i1 %cmp488, label %if.then.494, label %lor.lhs.false.490

lor.lhs.false.490:                                ; preds = %if.end.485
  %222 = load i8*, i8** @home, align 8
  %223 = load i8, i8* %222, align 1
  %conv491 = sext i8 %223 to i32
  %cmp492 = icmp eq i32 %conv491, 0
  br i1 %cmp492, label %if.then.494, label %if.end.496

if.then.494:                                      ; preds = %lor.lhs.false.490, %if.end.485
  %224 = load %struct.passwd*, %struct.passwd** @ppp, align 8
  %pw_dir495 = getelementptr inbounds %struct.passwd, %struct.passwd* %224, i32 0, i32 5
  %225 = load i8*, i8** %pw_dir495, align 8
  store i8* %225, i8** @home, align 8
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.494, %lor.lhs.false.490
  %226 = load i8*, i8** @LoginName, align 8
  %call497 = call i64 @strlen(i8* %226) #9
  %cmp498 = icmp ugt i64 %call497, 256
  br i1 %cmp498, label %if.then.500, label %if.end.501

if.then.500:                                      ; preds = %if.end.496
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0)) #10
  unreachable

if.end.501:                                       ; preds = %if.end.496
  %227 = load i8*, i8** @multi, align 8
  %tobool502 = icmp ne i8* %227, null
  br i1 %tobool502, label %land.lhs.true.503, label %if.end.508

land.lhs.true.503:                                ; preds = %if.end.501
  %228 = load i8*, i8** @multi, align 8
  %call504 = call i64 @strlen(i8* %228) #9
  %cmp505 = icmp ugt i64 %call504, 256
  br i1 %cmp505, label %if.then.507, label %if.end.508

if.then.507:                                      ; preds = %land.lhs.true.503
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0)) #10
  unreachable

if.end.508:                                       ; preds = %land.lhs.true.503, %if.end.501
  %229 = load i8*, i8** @home, align 8
  %call509 = call i64 @strlen(i8* %229) #9
  %cmp510 = icmp ugt i64 %call509, 4071
  br i1 %cmp510, label %if.then.512, label %if.end.513

if.then.512:                                      ; preds = %if.end.508
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0)) #10
  unreachable

if.end.513:                                       ; preds = %if.end.508
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** @attach_tty, align 8
  %230 = load i32, i32* %detached, align 4
  %tobool514 = icmp ne i32 %230, 0
  br i1 %tobool514, label %if.end.594, label %land.lhs.true.515

land.lhs.true.515:                                ; preds = %if.end.513
  %231 = load i32, i32* @lsflag, align 4
  %tobool516 = icmp ne i32 %231, 0
  br i1 %tobool516, label %if.end.594, label %land.lhs.true.517

land.lhs.true.517:                                ; preds = %land.lhs.true.515
  %232 = load i32, i32* @cmdflag, align 4
  %tobool518 = icmp ne i32 %232, 0
  br i1 %tobool518, label %if.end.594, label %land.lhs.true.519

land.lhs.true.519:                                ; preds = %land.lhs.true.517
  %233 = load i32, i32* @dflag, align 4
  %tobool520 = icmp ne i32 %233, 0
  br i1 %tobool520, label %land.lhs.true.521, label %land.lhs.true.527

land.lhs.true.521:                                ; preds = %land.lhs.true.519
  %234 = load i32, i32* %mflag, align 4
  %tobool522 = icmp ne i32 %234, 0
  br i1 %tobool522, label %land.lhs.true.527, label %land.lhs.true.523

land.lhs.true.523:                                ; preds = %land.lhs.true.521
  %235 = load i32, i32* @rflag, align 4
  %tobool524 = icmp ne i32 %235, 0
  br i1 %tobool524, label %land.lhs.true.527, label %land.lhs.true.525

land.lhs.true.525:                                ; preds = %land.lhs.true.523
  %236 = load i32, i32* @xflag, align 4
  %tobool526 = icmp ne i32 %236, 0
  br i1 %tobool526, label %land.lhs.true.527, label %if.end.594

land.lhs.true.527:                                ; preds = %land.lhs.true.525, %land.lhs.true.523, %land.lhs.true.521, %land.lhs.true.519
  %237 = load i8*, i8** %sty, align 8
  %tobool528 = icmp ne i8* %237, null
  br i1 %tobool528, label %land.lhs.true.529, label %if.then.537

land.lhs.true.529:                                ; preds = %land.lhs.true.527
  %238 = load i8*, i8** @SockMatch, align 8
  %tobool530 = icmp ne i8* %238, null
  br i1 %tobool530, label %if.then.537, label %land.lhs.true.531

land.lhs.true.531:                                ; preds = %land.lhs.true.529
  %239 = load i32, i32* %mflag, align 4
  %tobool532 = icmp ne i32 %239, 0
  br i1 %tobool532, label %if.then.537, label %land.lhs.true.533

land.lhs.true.533:                                ; preds = %land.lhs.true.531
  %240 = load i32, i32* @rflag, align 4
  %tobool534 = icmp ne i32 %240, 0
  br i1 %tobool534, label %if.then.537, label %land.lhs.true.535

land.lhs.true.535:                                ; preds = %land.lhs.true.533
  %241 = load i32, i32* @xflag, align 4
  %tobool536 = icmp ne i32 %241, 0
  br i1 %tobool536, label %if.then.537, label %if.end.594

if.then.537:                                      ; preds = %land.lhs.true.535, %land.lhs.true.533, %land.lhs.true.531, %land.lhs.true.529, %land.lhs.true.527
  br label %do.body.538

do.body.538:                                      ; preds = %if.then.537
  %call539 = call i8* @ttyname(i32 0) #3
  store i8* %call539, i8** @attach_tty, align 8
  %tobool540 = icmp ne i8* %call539, null
  br i1 %tobool540, label %if.else.542, label %if.then.541

if.then.541:                                      ; preds = %do.body.538
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i32 0, i32 0)) #10
  unreachable

if.else.542:                                      ; preds = %do.body.538
  %242 = load i8*, i8** @attach_tty, align 8
  %call543 = call i32 @stat(i8* %242, %struct.stat* %st) #3
  %tobool544 = icmp ne i32 %call543, 0
  br i1 %tobool544, label %if.then.545, label %if.end.547

if.then.545:                                      ; preds = %if.else.542
  %call546 = call i32* @__errno_location() #11
  %243 = load i32, i32* %call546, align 4
  %244 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 %243, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i8* %244) #10
  unreachable

if.end.547:                                       ; preds = %if.else.542
  %245 = load i8*, i8** @attach_tty, align 8
  %call548 = call i32 @CheckTtyname(i8* %245)
  %tobool549 = icmp ne i32 %call548, 0
  br i1 %tobool549, label %if.then.550, label %if.end.551

if.then.550:                                      ; preds = %if.end.547
  %246 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8* %246) #10
  unreachable

if.end.551:                                       ; preds = %if.end.547
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.551
  %247 = load i8*, i8** @attach_tty, align 8
  %call553 = call i64 @strlen(i8* %247) #9
  %cmp554 = icmp uge i64 %call553, 4096
  br i1 %cmp554, label %if.then.556, label %if.end.557

if.then.556:                                      ; preds = %if.end.552
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0)) #10
  unreachable

if.end.557:                                       ; preds = %if.end.552
  br label %do.end.558

do.end.558:                                       ; preds = %if.end.557
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %248 = load i32, i32* %st_mode, align 4
  %and = and i32 %248, 511
  store i32 %and, i32* @tty_mode, align 4
  %call559 = call i32 (i32, i32, ...) @fcntl(i32 0, i32 3, i32 0)
  store i32 %call559, i32* %fl, align 4
  %249 = load i32, i32* %fl, align 4
  %cmp560 = icmp ne i32 %249, -1
  br i1 %cmp560, label %land.lhs.true.562, label %if.end.567

land.lhs.true.562:                                ; preds = %do.end.558
  %250 = load i32, i32* %fl, align 4
  %and563 = and i32 %250, 3
  %cmp564 = icmp eq i32 %and563, 2
  br i1 %cmp564, label %if.then.566, label %if.end.567

if.then.566:                                      ; preds = %land.lhs.true.562
  store i32 0, i32* @attach_fd, align 4
  br label %if.end.567

if.end.567:                                       ; preds = %if.then.566, %land.lhs.true.562, %do.end.558
  %251 = load i32, i32* @attach_fd, align 4
  %cmp568 = icmp eq i32 %251, -1
  br i1 %cmp568, label %if.then.570, label %if.end.577

if.then.570:                                      ; preds = %if.end.567
  %252 = load i8*, i8** @attach_tty, align 8
  %call571 = call i32 @secopen(i8* %252, i32 2050, i32 0)
  store i32 %call571, i32* %n, align 4
  %cmp572 = icmp slt i32 %call571, 0
  br i1 %cmp572, label %if.then.574, label %if.end.575

if.then.574:                                      ; preds = %if.then.570
  %253 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.58, i32 0, i32 0), i8* %253) #10
  unreachable

if.end.575:                                       ; preds = %if.then.570
  %254 = load i32, i32* %n, align 4
  %call576 = call i32 @close(i32 %254)
  br label %if.end.577

if.end.577:                                       ; preds = %if.end.575, %if.end.567
  br label %do.body.578

do.body.578:                                      ; preds = %if.end.577
  br label %do.end.579

do.end.579:                                       ; preds = %do.body.578
  %call580 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0)) #3
  store i8* %call580, i8** @attach_term, align 8
  %cmp581 = icmp eq i8* %call580, null
  br i1 %cmp581, label %if.then.587, label %lor.lhs.false.583

lor.lhs.false.583:                                ; preds = %do.end.579
  %255 = load i8*, i8** @attach_term, align 8
  %256 = load i8, i8* %255, align 1
  %conv584 = sext i8 %256 to i32
  %cmp585 = icmp eq i32 %conv584, 0
  br i1 %cmp585, label %if.then.587, label %if.end.588

if.then.587:                                      ; preds = %lor.lhs.false.583, %do.end.579
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0)) #10
  unreachable

if.end.588:                                       ; preds = %lor.lhs.false.583
  %257 = load i8*, i8** @attach_term, align 8
  %call589 = call i64 @strlen(i8* %257) #9
  %cmp590 = icmp ugt i64 %call589, 32
  br i1 %cmp590, label %if.then.592, label %if.end.593

if.then.592:                                      ; preds = %if.end.588
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0)) #10
  unreachable

if.end.593:                                       ; preds = %if.end.588
  call void @GetTTY(i32 0, %struct.mode* @attach_Mode)
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.593, %land.lhs.true.535, %land.lhs.true.525, %land.lhs.true.517, %land.lhs.true.515, %if.end.513
  %call595 = call i32 @umask(i32 0) #3
  store i32 %call595, i32* %oumask, align 4
  %cmp596 = icmp eq i32 %call595, -1
  br i1 %cmp596, label %if.then.598, label %if.end.600

if.then.598:                                      ; preds = %if.end.594
  %call599 = call i32* @__errno_location() #11
  %258 = load i32, i32* %call599, align 4
  call void (i32, i8*, ...) @Panic(i32 %258, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i32 0, i32 0)) #10
  unreachable

if.end.600:                                       ; preds = %if.end.594
  %call601 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0)) #3
  store i8* %call601, i8** %SockDir, align 8
  %259 = load i8*, i8** %SockDir, align 8
  %tobool602 = icmp ne i8* %259, null
  br i1 %tobool602, label %if.then.603, label %if.end.612

if.then.603:                                      ; preds = %if.end.600
  %260 = load i8*, i8** %SockDir, align 8
  %call604 = call i64 @strlen(i8* %260) #9
  %cmp605 = icmp uge i64 %call604, 4095
  br i1 %cmp605, label %if.then.607, label %if.end.608

if.then.607:                                      ; preds = %if.then.603
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.64, i32 0, i32 0)) #10
  unreachable

if.end.608:                                       ; preds = %if.then.603
  %261 = load i8*, i8** @multi, align 8
  %tobool609 = icmp ne i8* %261, null
  br i1 %tobool609, label %if.then.610, label %if.end.611

if.then.610:                                      ; preds = %if.end.608
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i32 0, i32 0)) #10
  unreachable

if.end.611:                                       ; preds = %if.end.608
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.611, %if.end.600
  %262 = load i32, i32* @multiattach, align 4
  %tobool613 = icmp ne i32 %262, 0
  br i1 %tobool613, label %if.then.614, label %if.else.618

if.then.614:                                      ; preds = %if.end.612
  %263 = load i32, i32* @eff_uid, align 4
  %tobool615 = icmp ne i32 %263, 0
  %cond616 = select i1 %tobool615, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0)
  store i8* %cond616, i8** %SockDir, align 8
  %264 = load i8*, i8** %SockDir, align 8
  %265 = load i8*, i8** @multi, align 8
  %call617 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* %264, i8* %265) #3
  br label %if.end.732

if.else.618:                                      ; preds = %if.end.612
  %266 = load i8*, i8** %SockDir, align 8
  %tobool619 = icmp ne i8* %266, null
  br i1 %tobool619, label %if.then.620, label %if.else.646

if.then.620:                                      ; preds = %if.else.618
  %267 = load i8*, i8** %SockDir, align 8
  %call621 = call i32 @access(i8* %267, i32 0) #3
  %tobool622 = icmp ne i32 %call621, 0
  br i1 %tobool622, label %if.then.623, label %if.end.640

if.then.623:                                      ; preds = %if.then.620
  br label %do.body.624

do.body.624:                                      ; preds = %if.then.623
  br label %do.end.625

do.end.625:                                       ; preds = %do.body.624
  %call626 = call i32 @UserContext()
  %cmp627 = icmp sgt i32 %call626, 0
  br i1 %cmp627, label %if.then.629, label %if.end.634

if.then.629:                                      ; preds = %do.end.625
  %268 = load i8*, i8** %SockDir, align 8
  %call630 = call i32 @mkdir(i8* %268, i32 448) #3
  %tobool631 = icmp ne i32 %call630, 0
  br i1 %tobool631, label %if.then.632, label %if.end.633

if.then.632:                                      ; preds = %if.then.629
  call void @UserReturn(i32 0)
  br label %if.end.633

if.end.633:                                       ; preds = %if.then.632, %if.then.629
  call void @UserReturn(i32 1)
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.633, %do.end.625
  %call635 = call i32 @UserStatus()
  %cmp636 = icmp sle i32 %call635, 0
  br i1 %cmp636, label %if.then.638, label %if.end.639

if.then.638:                                      ; preds = %if.end.634
  %269 = load i8*, i8** %SockDir, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i32 0, i32 0), i8* %269) #10
  unreachable

if.end.639:                                       ; preds = %if.end.634
  br label %if.end.640

if.end.640:                                       ; preds = %if.end.639, %if.then.620
  %270 = load i8*, i8** %SockDir, align 8
  %cmp641 = icmp ne i8* %270, getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)
  br i1 %cmp641, label %if.then.643, label %if.end.645

if.then.643:                                      ; preds = %if.end.640
  %271 = load i8*, i8** %SockDir, align 8
  %call644 = call i8* @strcpy(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), i8* %271) #3
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.643, %if.end.640
  br label %if.end.731

if.else.646:                                      ; preds = %if.else.618
  %272 = load i32, i32* @eff_uid, align 4
  %tobool647 = icmp ne i32 %272, 0
  %cond648 = select i1 %tobool647, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0)
  store i8* %cond648, i8** %SockDir, align 8
  %273 = load i8*, i8** %SockDir, align 8
  %call649 = call i32 @stat(i8* %273, %struct.stat* %st) #3
  %tobool650 = icmp ne i32 %call649, 0
  br i1 %tobool650, label %if.then.651, label %if.else.672

if.then.651:                                      ; preds = %if.else.646
  %274 = load i32, i32* @eff_uid, align 4
  %cmp652 = icmp eq i32 %274, 0
  br i1 %cmp652, label %land.lhs.true.654, label %cond.false.660

land.lhs.true.654:                                ; preds = %if.then.651
  %275 = load i32, i32* @real_uid, align 4
  %tobool655 = icmp ne i32 %275, 0
  br i1 %tobool655, label %cond.true.659, label %lor.lhs.false.656

lor.lhs.false.656:                                ; preds = %land.lhs.true.654
  %276 = load i32, i32* @eff_gid, align 4
  %277 = load i32, i32* @real_gid, align 4
  %cmp657 = icmp eq i32 %276, %277
  br i1 %cmp657, label %cond.true.659, label %cond.false.660

cond.true.659:                                    ; preds = %lor.lhs.false.656, %land.lhs.true.654
  br label %cond.end.664

cond.false.660:                                   ; preds = %lor.lhs.false.656, %if.then.651
  %278 = load i32, i32* @eff_gid, align 4
  %279 = load i32, i32* @real_gid, align 4
  %cmp661 = icmp ne i32 %278, %279
  %cond663 = select i1 %cmp661, i32 509, i32 1023
  br label %cond.end.664

cond.end.664:                                     ; preds = %cond.false.660, %cond.true.659
  %cond665 = phi i32 [ 493, %cond.true.659 ], [ %cond663, %cond.false.660 ]
  store i32 %cond665, i32* %n, align 4
  %280 = load i8*, i8** %SockDir, align 8
  %281 = load i32, i32* %n, align 4
  %call666 = call i32 @mkdir(i8* %280, i32 %281) #3
  %cmp667 = icmp eq i32 %call666, -1
  br i1 %cmp667, label %if.then.669, label %if.end.671

if.then.669:                                      ; preds = %cond.end.664
  %call670 = call i32* @__errno_location() #11
  %282 = load i32, i32* %call670, align 4
  %283 = load i8*, i8** %SockDir, align 8
  call void (i32, i8*, ...) @Panic(i32 %282, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i32 0, i32 0), i8* %283) #10
  unreachable

if.end.671:                                       ; preds = %cond.end.664
  br label %if.end.714

if.else.672:                                      ; preds = %if.else.646
  %st_mode673 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %284 = load i32, i32* %st_mode673, align 4
  %and674 = and i32 %284, 61440
  %cmp675 = icmp eq i32 %and674, 16384
  br i1 %cmp675, label %if.end.678, label %if.then.677

if.then.677:                                      ; preds = %if.else.672
  %285 = load i8*, i8** %SockDir, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i32 0, i32 0), i8* %285) #10
  unreachable

if.end.678:                                       ; preds = %if.else.672
  %286 = load i32, i32* @eff_uid, align 4
  %cmp679 = icmp eq i32 %286, 0
  br i1 %cmp679, label %land.lhs.true.681, label %if.end.687

land.lhs.true.681:                                ; preds = %if.end.678
  %287 = load i32, i32* @real_uid, align 4
  %tobool682 = icmp ne i32 %287, 0
  br i1 %tobool682, label %land.lhs.true.683, label %if.end.687

land.lhs.true.683:                                ; preds = %land.lhs.true.681
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %288 = load i32, i32* %st_uid, align 4
  %289 = load i32, i32* @eff_uid, align 4
  %cmp684 = icmp ne i32 %288, %289
  br i1 %cmp684, label %if.then.686, label %if.end.687

if.then.686:                                      ; preds = %land.lhs.true.683
  %290 = load i8*, i8** %SockDir, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.72, i32 0, i32 0), i8* %290) #10
  unreachable

if.end.687:                                       ; preds = %land.lhs.true.683, %land.lhs.true.681, %if.end.678
  %291 = load i32, i32* @eff_uid, align 4
  %cmp688 = icmp eq i32 %291, 0
  br i1 %cmp688, label %land.lhs.true.690, label %cond.false.698

land.lhs.true.690:                                ; preds = %if.end.687
  %292 = load i32, i32* @real_uid, align 4
  %tobool691 = icmp ne i32 %292, 0
  br i1 %tobool691, label %cond.true.697, label %lor.lhs.false.692

lor.lhs.false.692:                                ; preds = %land.lhs.true.690
  %st_mode693 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %293 = load i32, i32* %st_mode693, align 4
  %and694 = and i32 %293, 509
  %cmp695 = icmp ne i32 %and694, 509
  br i1 %cmp695, label %cond.true.697, label %cond.false.698

cond.true.697:                                    ; preds = %lor.lhs.false.692, %land.lhs.true.690
  br label %cond.end.706

cond.false.698:                                   ; preds = %lor.lhs.false.692, %if.end.687
  %294 = load i32, i32* @eff_gid, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 5
  %295 = load i32, i32* %st_gid, align 4
  %cmp699 = icmp eq i32 %294, %295
  br i1 %cmp699, label %land.rhs.701, label %land.end.704

land.rhs.701:                                     ; preds = %cond.false.698
  %296 = load i32, i32* @eff_gid, align 4
  %297 = load i32, i32* @real_gid, align 4
  %cmp702 = icmp ne i32 %296, %297
  br label %land.end.704

land.end.704:                                     ; preds = %land.rhs.701, %cond.false.698
  %298 = phi i1 [ false, %cond.false.698 ], [ %cmp702, %land.rhs.701 ]
  %cond705 = select i1 %298, i32 509, i32 511
  br label %cond.end.706

cond.end.706:                                     ; preds = %land.end.704, %cond.true.697
  %cond707 = phi i32 [ 493, %cond.true.697 ], [ %cond705, %land.end.704 ]
  store i32 %cond707, i32* %n, align 4
  %st_mode708 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %299 = load i32, i32* %st_mode708, align 4
  %and709 = and i32 %299, 511
  %300 = load i32, i32* %n, align 4
  %cmp710 = icmp ne i32 %and709, %300
  br i1 %cmp710, label %if.then.712, label %if.end.713

if.then.712:                                      ; preds = %cond.end.706
  %301 = load i8*, i8** %SockDir, align 8
  %302 = load i32, i32* %n, align 4
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i32 0, i32 0), i8* %301, i32 %302) #10
  unreachable

if.end.713:                                       ; preds = %cond.end.706
  br label %if.end.714

if.end.714:                                       ; preds = %if.end.713, %if.end.671
  %303 = load i8*, i8** %SockDir, align 8
  %304 = load i8*, i8** @LoginName, align 8
  %call715 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* %303, i8* %304) #3
  %call716 = call i32 @access(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), i32 0) #3
  %tobool717 = icmp ne i32 %call716, 0
  br i1 %tobool717, label %if.then.718, label %if.end.730

if.then.718:                                      ; preds = %if.end.714
  %call719 = call i32 @mkdir(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), i32 448) #3
  %cmp720 = icmp eq i32 %call719, -1
  br i1 %cmp720, label %land.lhs.true.722, label %if.end.728

land.lhs.true.722:                                ; preds = %if.then.718
  %call723 = call i32* @__errno_location() #11
  %305 = load i32, i32* %call723, align 4
  %cmp724 = icmp ne i32 %305, 17
  br i1 %cmp724, label %if.then.726, label %if.end.728

if.then.726:                                      ; preds = %land.lhs.true.722
  %call727 = call i32* @__errno_location() #11
  %306 = load i32, i32* %call727, align 4
  call void (i32, i8*, ...) @Panic(i32 %306, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #10
  unreachable

if.end.728:                                       ; preds = %land.lhs.true.722, %if.then.718
  %307 = load i32, i32* @real_uid, align 4
  %308 = load i32, i32* @real_gid, align 4
  %call729 = call i32 @chown(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), i32 %307, i32 %308) #3
  br label %if.end.730

if.end.730:                                       ; preds = %if.end.728, %if.end.714
  br label %if.end.731

if.end.731:                                       ; preds = %if.end.730, %if.end.645
  br label %if.end.732

if.end.732:                                       ; preds = %if.end.731, %if.then.614
  %call733 = call i32 @stat(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), %struct.stat* %st) #3
  %cmp734 = icmp eq i32 %call733, -1
  br i1 %cmp734, label %if.then.736, label %if.else.738

if.then.736:                                      ; preds = %if.end.732
  %call737 = call i32* @__errno_location() #11
  %309 = load i32, i32* %call737, align 4
  call void (i32, i8*, ...) @Panic(i32 %309, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #10
  unreachable

if.else.738:                                      ; preds = %if.end.732
  %st_mode739 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %310 = load i32, i32* %st_mode739, align 4
  %and740 = and i32 %310, 61440
  %cmp741 = icmp eq i32 %and740, 16384
  br i1 %cmp741, label %if.end.744, label %if.then.743

if.then.743:                                      ; preds = %if.else.738
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #10
  unreachable

if.end.744:                                       ; preds = %if.else.738
  br label %if.end.745

if.end.745:                                       ; preds = %if.end.744
  %311 = load i8*, i8** @multi, align 8
  %tobool746 = icmp ne i8* %311, null
  br i1 %tobool746, label %if.then.747, label %if.else.753

if.then.747:                                      ; preds = %if.end.745
  %st_uid748 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %312 = load i32, i32* %st_uid748, align 4
  %313 = load i32, i32* @multi_uid, align 4
  %cmp749 = icmp ne i32 %312, %313
  br i1 %cmp749, label %if.then.751, label %if.end.752

if.then.751:                                      ; preds = %if.then.747
  %314 = load i8*, i8** @multi, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i32 0, i32 0), i8* %314, i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #10
  unreachable

if.end.752:                                       ; preds = %if.then.747
  br label %if.end.759

if.else.753:                                      ; preds = %if.end.745
  %st_uid754 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 4
  %315 = load i32, i32* %st_uid754, align 4
  %316 = load i32, i32* @real_uid, align 4
  %cmp755 = icmp ne i32 %315, %316
  br i1 %cmp755, label %if.then.757, label %if.end.758

if.then.757:                                      ; preds = %if.else.753
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #10
  unreachable

if.end.758:                                       ; preds = %if.else.753
  br label %if.end.759

if.end.759:                                       ; preds = %if.end.758, %if.end.752
  %st_mode760 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %317 = load i32, i32* %st_mode760, align 4
  %and761 = and i32 %317, 511
  %cmp762 = icmp ne i32 %and761, 448
  br i1 %cmp762, label %if.then.764, label %if.end.765

if.then.764:                                      ; preds = %if.end.759
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #10
  unreachable

if.end.765:                                       ; preds = %if.end.759
  %318 = load i8*, i8** @SockMatch, align 8
  %tobool766 = icmp ne i8* %318, null
  br i1 %tobool766, label %land.lhs.true.767, label %if.end.771

land.lhs.true.767:                                ; preds = %if.end.765
  %319 = load i8*, i8** @SockMatch, align 8
  %call768 = call i8* @index(i8* %319, i32 47) #9
  %tobool769 = icmp ne i8* %call768, null
  br i1 %tobool769, label %if.then.770, label %if.end.771

if.then.770:                                      ; preds = %land.lhs.true.767
  %320 = load i8*, i8** @SockMatch, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i32 0, i32 0), i8* %320) #10
  unreachable

if.end.771:                                       ; preds = %land.lhs.true.767, %if.end.765
  %call772 = call i64 @strlen(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #9
  %add.ptr773 = getelementptr inbounds i8, i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), i64 %call772
  %add.ptr774 = getelementptr inbounds i8, i8* %add.ptr773, i64 1
  store i8* %add.ptr774, i8** @SockName, align 8
  %321 = load i8*, i8** @SockName, align 8
  store i8 0, i8* %321, align 1
  %322 = load i32, i32* %oumask, align 4
  %call775 = call i32 @umask(i32 %322) #3
  br label %do.body.776

do.body.776:                                      ; preds = %if.end.771
  br label %do.end.777

do.end.777:                                       ; preds = %do.body.776
  %call778 = call i32 @gethostname(i8* getelementptr inbounds ([768 x i8], [768 x i8]* @HostName, i32 0, i32 0), i64 768) #3
  store i8 0, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @HostName, i32 0, i64 767), align 1
  %call779 = call i8* @index(i8* getelementptr inbounds ([768 x i8], [768 x i8]* @HostName, i32 0, i32 0), i32 46) #9
  store i8* %call779, i8** %ap, align 8
  %cmp780 = icmp ne i8* %call779, null
  br i1 %cmp780, label %if.then.782, label %if.end.783

if.then.782:                                      ; preds = %do.end.777
  %323 = load i8*, i8** %ap, align 8
  store i8 0, i8* %323, align 1
  br label %if.end.783

if.end.783:                                       ; preds = %if.then.782, %do.end.777
  %324 = load i32, i32* @lsflag, align 4
  %tobool784 = icmp ne i32 %324, 0
  br i1 %tobool784, label %if.then.785, label %if.end.813

if.then.785:                                      ; preds = %if.end.783
  %325 = load i8*, i8** @multi, align 8
  %tobool786 = icmp ne i8* %325, null
  br i1 %tobool786, label %if.then.787, label %if.end.788

if.then.787:                                      ; preds = %if.then.785
  %326 = load i32, i32* @multi_uid, align 4
  store i32 %326, i32* @real_uid, align 4
  br label %if.end.788

if.end.788:                                       ; preds = %if.then.787, %if.then.785
  br label %do.body.789

do.body.789:                                      ; preds = %if.end.788
  %327 = load i32, i32* @real_gid, align 4
  %call790 = call i32 @setgid(i32 %327) #3
  %328 = load i32, i32* @real_uid, align 4
  %call791 = call i32 @setuid(i32 %328) #3
  %329 = load i32, i32* @real_uid, align 4
  store i32 %329, i32* @eff_uid, align 4
  %330 = load i32, i32* @real_gid, align 4
  store i32 %330, i32* @eff_gid, align 4
  br label %do.end.792

do.end.792:                                       ; preds = %do.body.789
  %331 = load i8*, i8** @SockMatch, align 8
  %call793 = call i32 @FindSocket(i32* null, i32* %fo, i32* %oth, i8* %331)
  store i32 %call793, i32* %i, align 4
  %332 = load i32, i32* @quietflag, align 4
  %tobool794 = icmp ne i32 %332, 0
  br i1 %tobool794, label %if.then.795, label %if.end.805

if.then.795:                                      ; preds = %do.end.792
  %333 = load i32, i32* @rflag, align 4
  %tobool796 = icmp ne i32 %333, 0
  br i1 %tobool796, label %if.then.797, label %if.else.799

if.then.797:                                      ; preds = %if.then.795
  %334 = load i32, i32* %i, align 4
  %add798 = add nsw i32 10, %334
  call void @exit(i32 %add798) #12
  unreachable

if.else.799:                                      ; preds = %if.then.795
  %335 = load i32, i32* %fo, align 4
  %tobool800 = icmp ne i32 %335, 0
  br i1 %tobool800, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else.799
  %336 = load i32, i32* %oth, align 4
  %tobool801 = icmp ne i32 %336, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else.799
  %337 = phi i1 [ true, %if.else.799 ], [ %tobool801, %lor.rhs ]
  %cond802 = select i1 %337, i32 1, i32 0
  %add803 = add nsw i32 9, %cond802
  %338 = load i32, i32* %fo, align 4
  %add804 = add nsw i32 %add803, %338
  call void @exit(i32 %add804) #12
  unreachable

if.end.805:                                       ; preds = %do.end.792
  %339 = load i32, i32* %fo, align 4
  %cmp806 = icmp eq i32 %339, 0
  br i1 %cmp806, label %if.then.808, label %if.end.809

if.then.808:                                      ; preds = %if.end.805
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #10
  unreachable

if.end.809:                                       ; preds = %if.end.805
  %340 = load i32, i32* %fo, align 4
  %341 = load i32, i32* %fo, align 4
  %cmp810 = icmp sgt i32 %341, 1
  %cond812 = select i1 %cmp810, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i32 0, i32 0), i32 %340, i8* %cond812, i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0))
  call void @eexit(i32 0) #10
  unreachable

if.end.813:                                       ; preds = %if.end.783
  %call814 = call void (i32)* @xsignal(i32 1, void (i32)* @AttacherFinit)
  %342 = load i32, i32* @cmdflag, align 4
  %tobool815 = icmp ne i32 %342, 0
  br i1 %tobool815, label %if.then.816, label %if.else.847

if.then.816:                                      ; preds = %if.end.813
  br label %do.body.817

do.body.817:                                      ; preds = %if.then.816
  %call818 = call i8* @ttyname(i32 0) #3
  store i8* %call818, i8** @attach_tty, align 8
  %tobool819 = icmp ne i8* %call818, null
  br i1 %tobool819, label %if.else.821, label %if.then.820

if.then.820:                                      ; preds = %do.body.817
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** @attach_tty, align 8
  br label %if.end.831

if.else.821:                                      ; preds = %do.body.817
  %343 = load i8*, i8** @attach_tty, align 8
  %call822 = call i32 @stat(i8* %343, %struct.stat* %st) #3
  %tobool823 = icmp ne i32 %call822, 0
  br i1 %tobool823, label %if.then.824, label %if.end.826

if.then.824:                                      ; preds = %if.else.821
  %call825 = call i32* @__errno_location() #11
  %344 = load i32, i32* %call825, align 4
  %345 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 %344, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i8* %345) #10
  unreachable

if.end.826:                                       ; preds = %if.else.821
  %346 = load i8*, i8** @attach_tty, align 8
  %call827 = call i32 @CheckTtyname(i8* %346)
  %tobool828 = icmp ne i32 %call827, 0
  br i1 %tobool828, label %if.then.829, label %if.end.830

if.then.829:                                      ; preds = %if.end.826
  %347 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8* %347) #10
  unreachable

if.end.830:                                       ; preds = %if.end.826
  br label %if.end.831

if.end.831:                                       ; preds = %if.end.830, %if.then.820
  %348 = load i8*, i8** @attach_tty, align 8
  %call832 = call i64 @strlen(i8* %348) #9
  %cmp833 = icmp uge i64 %call832, 4096
  br i1 %cmp833, label %if.then.835, label %if.end.836

if.then.835:                                      ; preds = %if.end.831
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0)) #10
  unreachable

if.end.836:                                       ; preds = %if.end.831
  br label %do.end.837

do.end.837:                                       ; preds = %if.end.836
  %349 = load i8**, i8*** %av.addr, align 8
  %350 = load i8*, i8** %349, align 8
  %tobool838 = icmp ne i8* %350, null
  br i1 %tobool838, label %if.end.840, label %if.then.839

if.then.839:                                      ; preds = %do.end.837
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.83, i32 0, i32 0)) #10
  unreachable

if.end.840:                                       ; preds = %do.end.837
  br label %do.body.841

do.body.841:                                      ; preds = %if.end.840
  %351 = load i32, i32* @real_gid, align 4
  %call842 = call i32 @setgid(i32 %351) #3
  %352 = load i32, i32* @real_uid, align 4
  %call843 = call i32 @setuid(i32 %352) #3
  %353 = load i32, i32* @real_uid, align 4
  store i32 %353, i32* @eff_uid, align 4
  %354 = load i32, i32* @real_gid, align 4
  store i32 %354, i32* @eff_gid, align 4
  br label %do.end.844

do.end.844:                                       ; preds = %do.body.841
  %355 = load i8*, i8** %sty, align 8
  %356 = load i8*, i8** @SockMatch, align 8
  %357 = load i8**, i8*** %av.addr, align 8
  %358 = load i32, i32* @queryflag, align 4
  %cmp845 = icmp sge i32 %358, 0
  %conv846 = zext i1 %cmp845 to i32
  call void @SendCmdMessage(i8* %355, i8* %356, i8** %357, i32 %conv846)
  call void @exit(i32 0) #12
  unreachable

if.else.847:                                      ; preds = %if.end.813
  %359 = load i32, i32* @rflag, align 4
  %tobool848 = icmp ne i32 %359, 0
  br i1 %tobool848, label %if.then.851, label %lor.lhs.false.849

lor.lhs.false.849:                                ; preds = %if.else.847
  %360 = load i32, i32* @xflag, align 4
  %tobool850 = icmp ne i32 %360, 0
  br i1 %tobool850, label %if.then.851, label %if.else.863

if.then.851:                                      ; preds = %lor.lhs.false.849, %if.else.847
  br label %do.body.852

do.body.852:                                      ; preds = %if.then.851
  br label %do.end.853

do.end.853:                                       ; preds = %do.body.852
  %call854 = call i32 @Attach(i32 2)
  %tobool855 = icmp ne i32 %call854, 0
  br i1 %tobool855, label %if.then.856, label %if.end.857

if.then.856:                                      ; preds = %do.end.853
  call void @Attacher()
  br label %if.end.857

if.end.857:                                       ; preds = %if.then.856, %do.end.853
  %361 = load i32, i32* @multiattach, align 4
  %tobool858 = icmp ne i32 %361, 0
  br i1 %tobool858, label %if.then.859, label %if.end.860

if.then.859:                                      ; preds = %if.end.857
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i32 0, i32 0)) #10
  unreachable

if.end.860:                                       ; preds = %if.end.857
  br label %do.body.861

do.body.861:                                      ; preds = %if.end.860
  br label %do.end.862

do.end.862:                                       ; preds = %do.body.861
  br label %if.end.894

if.else.863:                                      ; preds = %lor.lhs.false.849
  %362 = load i32, i32* @dflag, align 4
  %tobool864 = icmp ne i32 %362, 0
  br i1 %tobool864, label %land.lhs.true.865, label %if.end.893

land.lhs.true.865:                                ; preds = %if.else.863
  %363 = load i32, i32* %mflag, align 4
  %tobool866 = icmp ne i32 %363, 0
  br i1 %tobool866, label %if.end.893, label %if.then.867

if.then.867:                                      ; preds = %land.lhs.true.865
  br label %do.body.868

do.body.868:                                      ; preds = %if.then.867
  %call869 = call i8* @ttyname(i32 0) #3
  store i8* %call869, i8** @attach_tty, align 8
  %tobool870 = icmp ne i8* %call869, null
  br i1 %tobool870, label %if.else.872, label %if.then.871

if.then.871:                                      ; preds = %do.body.868
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** @attach_tty, align 8
  br label %if.end.882

if.else.872:                                      ; preds = %do.body.868
  %364 = load i8*, i8** @attach_tty, align 8
  %call873 = call i32 @stat(i8* %364, %struct.stat* %st) #3
  %tobool874 = icmp ne i32 %call873, 0
  br i1 %tobool874, label %if.then.875, label %if.end.877

if.then.875:                                      ; preds = %if.else.872
  %call876 = call i32* @__errno_location() #11
  %365 = load i32, i32* %call876, align 4
  %366 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 %365, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i8* %366) #10
  unreachable

if.end.877:                                       ; preds = %if.else.872
  %367 = load i8*, i8** @attach_tty, align 8
  %call878 = call i32 @CheckTtyname(i8* %367)
  %tobool879 = icmp ne i32 %call878, 0
  br i1 %tobool879, label %if.then.880, label %if.end.881

if.then.880:                                      ; preds = %if.end.877
  %368 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8* %368) #10
  unreachable

if.end.881:                                       ; preds = %if.end.877
  br label %if.end.882

if.end.882:                                       ; preds = %if.end.881, %if.then.871
  %369 = load i8*, i8** @attach_tty, align 8
  %call883 = call i64 @strlen(i8* %369) #9
  %cmp884 = icmp uge i64 %call883, 4096
  br i1 %cmp884, label %if.then.886, label %if.end.887

if.then.886:                                      ; preds = %if.end.882
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0)) #10
  unreachable

if.end.887:                                       ; preds = %if.end.882
  br label %do.end.888

do.end.888:                                       ; preds = %if.end.887
  %call889 = call i32 @Attach(i32 4)
  %370 = load i8*, i8** @SockName, align 8
  %371 = load i32, i32* @dflag, align 4
  %cmp890 = icmp sgt i32 %371, 1
  %cond892 = select i1 %cmp890, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0), i8* %370, i8* %cond892)
  call void @eexit(i32 0) #10
  unreachable

if.end.893:                                       ; preds = %land.lhs.true.865, %if.else.863
  br label %if.end.894

if.end.894:                                       ; preds = %if.end.893, %do.end.862
  br label %if.end.895

if.end.895:                                       ; preds = %if.end.894
  %372 = load i8*, i8** @SockMatch, align 8
  %tobool896 = icmp ne i8* %372, null
  br i1 %tobool896, label %if.end.927, label %land.lhs.true.897

land.lhs.true.897:                                ; preds = %if.end.895
  %373 = load i32, i32* %mflag, align 4
  %tobool898 = icmp ne i32 %373, 0
  br i1 %tobool898, label %if.end.927, label %land.lhs.true.899

land.lhs.true.899:                                ; preds = %land.lhs.true.897
  %374 = load i8*, i8** %sty, align 8
  %tobool900 = icmp ne i8* %374, null
  br i1 %tobool900, label %if.then.901, label %if.end.927

if.then.901:                                      ; preds = %land.lhs.true.899
  br label %do.body.902

do.body.902:                                      ; preds = %if.then.901
  %call903 = call i8* @ttyname(i32 0) #3
  store i8* %call903, i8** @attach_tty, align 8
  %tobool904 = icmp ne i8* %call903, null
  br i1 %tobool904, label %if.else.906, label %if.then.905

if.then.905:                                      ; preds = %do.body.902
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** @attach_tty, align 8
  br label %if.end.916

if.else.906:                                      ; preds = %do.body.902
  %375 = load i8*, i8** @attach_tty, align 8
  %call907 = call i32 @stat(i8* %375, %struct.stat* %st) #3
  %tobool908 = icmp ne i32 %call907, 0
  br i1 %tobool908, label %if.then.909, label %if.end.911

if.then.909:                                      ; preds = %if.else.906
  %call910 = call i32* @__errno_location() #11
  %376 = load i32, i32* %call910, align 4
  %377 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 %376, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i8* %377) #10
  unreachable

if.end.911:                                       ; preds = %if.else.906
  %378 = load i8*, i8** @attach_tty, align 8
  %call912 = call i32 @CheckTtyname(i8* %378)
  %tobool913 = icmp ne i32 %call912, 0
  br i1 %tobool913, label %if.then.914, label %if.end.915

if.then.914:                                      ; preds = %if.end.911
  %379 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8* %379) #10
  unreachable

if.end.915:                                       ; preds = %if.end.911
  br label %if.end.916

if.end.916:                                       ; preds = %if.end.915, %if.then.905
  %380 = load i8*, i8** @attach_tty, align 8
  %call917 = call i64 @strlen(i8* %380) #9
  %cmp918 = icmp uge i64 %call917, 4096
  br i1 %cmp918, label %if.then.920, label %if.end.921

if.then.920:                                      ; preds = %if.end.916
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0)) #10
  unreachable

if.end.921:                                       ; preds = %if.end.916
  br label %do.end.922

do.end.922:                                       ; preds = %if.end.921
  br label %do.body.923

do.body.923:                                      ; preds = %do.end.922
  %381 = load i32, i32* @real_gid, align 4
  %call924 = call i32 @setgid(i32 %381) #3
  %382 = load i32, i32* @real_uid, align 4
  %call925 = call i32 @setuid(i32 %382) #3
  %383 = load i32, i32* @real_uid, align 4
  store i32 %383, i32* @eff_uid, align 4
  %384 = load i32, i32* @real_gid, align 4
  store i32 %384, i32* @eff_gid, align 4
  br label %do.end.926

do.end.926:                                       ; preds = %do.body.923
  %385 = load i8**, i8*** %av.addr, align 8
  store i8** %385, i8*** getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 2), align 8
  %386 = load i8*, i8** %sty, align 8
  call void @SendCreateMsg(i8* %386, %struct.NewWindow* %nwin)
  call void @exit(i32 0) #12
  unreachable

if.end.927:                                       ; preds = %land.lhs.true.899, %land.lhs.true.897, %if.end.895
  call void @nwin_compose(%struct.NewWindow* @nwin_default, %struct.NewWindow* @nwin_options, %struct.NewWindow* @nwin_default)
  %387 = load i32, i32* %detached, align 4
  %tobool928 = icmp ne i32 %387, 0
  br i1 %tobool928, label %lor.lhs.false.929, label %if.then.932

lor.lhs.false.929:                                ; preds = %if.end.927
  %388 = load i32, i32* @dflag, align 4
  %cmp930 = icmp ne i32 %388, 2
  br i1 %cmp930, label %if.then.932, label %if.else.934

if.then.932:                                      ; preds = %lor.lhs.false.929, %if.end.927
  %call933 = call i32 @fork() #3
  store i32 %call933, i32* @MasterPid, align 4
  br label %if.end.935

if.else.934:                                      ; preds = %lor.lhs.false.929
  store i32 0, i32* @MasterPid, align 4
  br label %if.end.935

if.end.935:                                       ; preds = %if.else.934, %if.then.932
  %389 = load i32, i32* @MasterPid, align 4
  switch i32 %389, label %sw.default.939 [
    i32 -1, label %sw.bb.936
    i32 0, label %sw.bb.938
  ]

sw.bb.936:                                        ; preds = %if.end.935
  %call937 = call i32* @__errno_location() #11
  %390 = load i32, i32* %call937, align 4
  call void (i32, i8*, ...) @Panic(i32 %390, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0)) #10
  unreachable

sw.bb.938:                                        ; preds = %if.end.935
  br label %sw.epilog.975

sw.default.939:                                   ; preds = %if.end.935
  %391 = load i32, i32* %detached, align 4
  %tobool940 = icmp ne i32 %391, 0
  br i1 %tobool940, label %if.then.941, label %if.end.942

if.then.941:                                      ; preds = %sw.default.939
  call void @exit(i32 0) #12
  unreachable

if.end.942:                                       ; preds = %sw.default.939
  %392 = load i8*, i8** @SockMatch, align 8
  %tobool943 = icmp ne i8* %392, null
  br i1 %tobool943, label %if.then.944, label %if.else.947

if.then.944:                                      ; preds = %if.end.942
  %arraydecay945 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i32 0
  %393 = load i32, i32* @MasterPid, align 4
  %394 = load i8*, i8** @SockMatch, align 8
  %call946 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay945, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i32 %393, i8* %394) #3
  br label %if.end.951

if.else.947:                                      ; preds = %if.end.942
  %arraydecay948 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i32 0
  %395 = load i32, i32* @MasterPid, align 4
  %396 = load i8*, i8** @attach_tty, align 8
  %call949 = call i8* @stripdev(i8* %396)
  %call950 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay948, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0), i32 %395, i8* %call949, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @HostName, i32 0, i32 0)) #3
  br label %if.end.951

if.end.951:                                       ; preds = %if.else.947, %if.then.944
  %arraydecay952 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i32 0
  store i8* %arraydecay952, i8** %ap, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.951
  %397 = load i8*, i8** %ap, align 8
  %398 = load i8, i8* %397, align 1
  %tobool953 = icmp ne i8 %398, 0
  br i1 %tobool953, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %399 = load i8*, i8** %ap, align 8
  %400 = load i8, i8* %399, align 1
  %conv954 = sext i8 %400 to i32
  %cmp955 = icmp eq i32 %conv954, 47
  br i1 %cmp955, label %if.then.957, label %if.end.958

if.then.957:                                      ; preds = %for.body
  %401 = load i8*, i8** %ap, align 8
  store i8 45, i8* %401, align 1
  br label %if.end.958

if.end.958:                                       ; preds = %if.then.957, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.958
  %402 = load i8*, i8** %ap, align 8
  %incdec.ptr959 = getelementptr inbounds i8, i8* %402, i32 1
  store i8* %incdec.ptr959, i8** %ap, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay960 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i32 0
  %call961 = call i64 @strlen(i8* %arraydecay960) #9
  %cmp962 = icmp ugt i64 %call961, 255
  br i1 %cmp962, label %if.then.964, label %if.end.966

if.then.964:                                      ; preds = %for.end
  %arrayidx965 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i64 255
  store i8 0, i8* %arrayidx965, align 1
  br label %if.end.966

if.end.966:                                       ; preds = %if.then.964, %for.end
  %call967 = call i64 @strlen(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #9
  %add.ptr968 = getelementptr inbounds i8, i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), i64 %call967
  %arraydecay969 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i32 0
  %call970 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr968, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* %arraydecay969) #3
  br label %do.body.971

do.body.971:                                      ; preds = %if.end.966
  %403 = load i32, i32* @real_gid, align 4
  %call972 = call i32 @setgid(i32 %403) #3
  %404 = load i32, i32* @real_uid, align 4
  %call973 = call i32 @setuid(i32 %404) #3
  %405 = load i32, i32* @real_uid, align 4
  store i32 %405, i32* @eff_uid, align 4
  %406 = load i32, i32* @real_gid, align 4
  store i32 %406, i32* @eff_gid, align 4
  br label %do.end.974

do.end.974:                                       ; preds = %do.body.971
  call void @Attacher()
  br label %sw.epilog.975

sw.epilog.975:                                    ; preds = %do.end.974, %sw.bb.938
  %407 = load i32, i32* %detached, align 4
  %tobool976 = icmp ne i32 %407, 0
  br i1 %tobool976, label %if.end.979, label %if.then.977

if.then.977:                                      ; preds = %sw.epilog.975
  %call978 = call i32 @getppid() #3
  store i32 %call978, i32* @PanicPid, align 4
  br label %if.end.979

if.end.979:                                       ; preds = %if.then.977, %sw.epilog.975
  %408 = load i32, i32* @DefaultEsc, align 4
  %cmp980 = icmp eq i32 %408, -1
  br i1 %cmp980, label %if.then.982, label %if.end.983

if.then.982:                                      ; preds = %if.end.979
  store i32 1, i32* @DefaultEsc, align 4
  br label %if.end.983

if.end.983:                                       ; preds = %if.then.982, %if.end.979
  %409 = load i32, i32* @DefaultMetaEsc, align 4
  %cmp984 = icmp eq i32 %409, -1
  br i1 %cmp984, label %if.then.986, label %if.end.987

if.then.986:                                      ; preds = %if.end.983
  store i32 97, i32* @DefaultMetaEsc, align 4
  br label %if.end.987

if.end.987:                                       ; preds = %if.then.986, %if.end.983
  %410 = load i8*, i8** %av0, align 8
  %411 = load i8*, i8** %av0, align 8
  %call988 = call i64 @strlen(i8* %411) #9
  %add.ptr989 = getelementptr inbounds i8, i8* %410, i64 %call988
  %add.ptr990 = getelementptr inbounds i8, i8* %add.ptr989, i64 -1
  store i8* %add.ptr990, i8** %ap, align 8
  br label %while.cond.991

while.cond.991:                                   ; preds = %if.end.999, %if.end.987
  %412 = load i8*, i8** %ap, align 8
  %413 = load i8*, i8** %av0, align 8
  %cmp992 = icmp uge i8* %412, %413
  br i1 %cmp992, label %while.body.994, label %while.end.1001

while.body.994:                                   ; preds = %while.cond.991
  %414 = load i8*, i8** %ap, align 8
  %call995 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %414, i64 6) #9
  %tobool996 = icmp ne i32 %call995, 0
  br i1 %tobool996, label %if.end.999, label %if.then.997

if.then.997:                                      ; preds = %while.body.994
  %415 = load i8*, i8** %ap, align 8
  %call998 = call i8* @strncpy(i8* %415, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i64 6) #3
  br label %while.end.1001

if.end.999:                                       ; preds = %while.body.994
  %416 = load i8*, i8** %ap, align 8
  %incdec.ptr1000 = getelementptr inbounds i8, i8* %416, i32 -1
  store i8* %incdec.ptr1000, i8** %ap, align 8
  br label %while.cond.991

while.end.1001:                                   ; preds = %if.then.997, %while.cond.991
  %417 = load i8*, i8** %ap, align 8
  %418 = load i8*, i8** %av0, align 8
  %cmp1002 = icmp ult i8* %417, %418
  br i1 %cmp1002, label %if.then.1004, label %if.end.1005

if.then.1004:                                     ; preds = %while.end.1001
  %419 = load i8*, i8** %av0, align 8
  store i8 83, i8* %419, align 1
  br label %if.end.1005

if.end.1005:                                      ; preds = %if.then.1004, %while.end.1001
  %420 = load i32, i32* %detached, align 4
  %tobool1006 = icmp ne i32 %420, 0
  br i1 %tobool1006, label %if.else.1019, label %if.then.1007

if.then.1007:                                     ; preds = %if.end.1005
  %421 = load i32, i32* @attach_fd, align 4
  %cmp1008 = icmp eq i32 %421, -1
  br i1 %cmp1008, label %if.then.1010, label %if.else.1016

if.then.1010:                                     ; preds = %if.then.1007
  %422 = load i8*, i8** @attach_tty, align 8
  %call1011 = call i32 @secopen(i8* %422, i32 2050, i32 0)
  store i32 %call1011, i32* %n, align 4
  %cmp1012 = icmp slt i32 %call1011, 0
  br i1 %cmp1012, label %if.then.1014, label %if.end.1015

if.then.1014:                                     ; preds = %if.then.1010
  %423 = load i8*, i8** @attach_tty, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.92, i32 0, i32 0), i8* %423) #10
  unreachable

if.end.1015:                                      ; preds = %if.then.1010
  br label %if.end.1018

if.else.1016:                                     ; preds = %if.then.1007
  %424 = load i32, i32* @attach_fd, align 4
  %call1017 = call i32 @dup(i32 %424) #3
  store i32 %call1017, i32* %n, align 4
  br label %if.end.1018

if.end.1018:                                      ; preds = %if.else.1016, %if.end.1015
  br label %if.end.1020

if.else.1019:                                     ; preds = %if.end.1005
  store i32 -1, i32* %n, align 4
  br label %if.end.1020

if.end.1020:                                      ; preds = %if.else.1019, %if.end.1018
  %425 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call1021 = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %425)
  %426 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1022 = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0), %struct._IO_FILE* %426)
  %427 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1023 = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0), %struct._IO_FILE* %427)
  br label %do.body.1024

do.body.1024:                                     ; preds = %if.end.1020
  br label %do.end.1025

do.end.1025:                                      ; preds = %do.body.1024
  %428 = load i8*, i8** @LoginName, align 8
  %call1026 = call i32 @UserAdd(i8* %428, i8* null, %struct.acluser** null)
  %cmp1027 = icmp slt i32 %call1026, 0
  br i1 %cmp1027, label %if.then.1029, label %if.end.1030

if.then.1029:                                     ; preds = %do.end.1025
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i32 0, i32 0)) #10
  unreachable

if.end.1030:                                      ; preds = %do.end.1025
  %429 = load i32, i32* %detached, align 4
  %tobool1031 = icmp ne i32 %429, 0
  br i1 %tobool1031, label %if.end.1047, label %if.then.1032

if.then.1032:                                     ; preds = %if.end.1030
  %430 = load i8*, i8** @LoginName, align 8
  %431 = load i8*, i8** @attach_tty, align 8
  %432 = load i8*, i8** @attach_term, align 8
  %433 = load i32, i32* %n, align 4
  %call1033 = call i32 @getppid() #3
  %call1034 = call %struct.display* @MakeDisplay(i8* %430, i8* %431, i8* %432, i32 %433, i32 %call1033, %struct.mode* @attach_Mode)
  %cmp1035 = icmp eq %struct.display* %call1034, null
  br i1 %cmp1035, label %if.then.1037, label %if.end.1038

if.then.1037:                                     ; preds = %if.then.1032
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.97, i32 0, i32 0)) #10
  unreachable

if.end.1038:                                      ; preds = %if.then.1032
  store i32 0, i32* @PanicPid, align 4
  %434 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 18), align 4
  %cmp1039 = icmp sgt i32 %434, 0
  br i1 %cmp1039, label %cond.true.1041, label %cond.false.1042

cond.true.1041:                                   ; preds = %if.end.1038
  %435 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_options, i32 0, i32 18), align 4
  br label %cond.end.1043

cond.false.1042:                                  ; preds = %if.end.1038
  br label %cond.end.1043

cond.end.1043:                                    ; preds = %cond.false.1042, %cond.true.1041
  %cond1044 = phi i32 [ %435, %cond.true.1041 ], [ 0, %cond.false.1042 ]
  %436 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %436, i32 0, i32 28
  store i32 %cond1044, i32* %d_encoding, align 4
  br label %do.body.1045

do.body.1045:                                     ; preds = %cond.end.1043
  br label %do.end.1046

do.end.1046:                                      ; preds = %do.body.1045
  br label %if.end.1047

if.end.1047:                                      ; preds = %do.end.1046, %if.end.1030
  %437 = load i8*, i8** @SockMatch, align 8
  %tobool1048 = icmp ne i8* %437, null
  br i1 %tobool1048, label %if.then.1049, label %if.else.1053

if.then.1049:                                     ; preds = %if.end.1047
  %arraydecay1050 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i32 0
  %call1051 = call i32 @getpid() #3
  %438 = load i8*, i8** @SockMatch, align 8
  %call1052 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1050, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i32 %call1051, i8* %438) #3
  br label %if.end.1058

if.else.1053:                                     ; preds = %if.end.1047
  %arraydecay1054 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i32 0
  %call1055 = call i32 @getpid() #3
  %439 = load i8*, i8** @attach_tty, align 8
  %call1056 = call i8* @stripdev(i8* %439)
  %call1057 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1054, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0), i32 %call1055, i8* %call1056, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @HostName, i32 0, i32 0)) #3
  br label %if.end.1058

if.end.1058:                                      ; preds = %if.else.1053, %if.then.1049
  %arraydecay1059 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i32 0
  store i8* %arraydecay1059, i8** %ap, align 8
  br label %for.cond.1060

for.cond.1060:                                    ; preds = %for.inc.1068, %if.end.1058
  %440 = load i8*, i8** %ap, align 8
  %441 = load i8, i8* %440, align 1
  %tobool1061 = icmp ne i8 %441, 0
  br i1 %tobool1061, label %for.body.1062, label %for.end.1070

for.body.1062:                                    ; preds = %for.cond.1060
  %442 = load i8*, i8** %ap, align 8
  %443 = load i8, i8* %442, align 1
  %conv1063 = sext i8 %443 to i32
  %cmp1064 = icmp eq i32 %conv1063, 47
  br i1 %cmp1064, label %if.then.1066, label %if.end.1067

if.then.1066:                                     ; preds = %for.body.1062
  %444 = load i8*, i8** %ap, align 8
  store i8 45, i8* %444, align 1
  br label %if.end.1067

if.end.1067:                                      ; preds = %if.then.1066, %for.body.1062
  br label %for.inc.1068

for.inc.1068:                                     ; preds = %if.end.1067
  %445 = load i8*, i8** %ap, align 8
  %incdec.ptr1069 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %incdec.ptr1069, i8** %ap, align 8
  br label %for.cond.1060

for.end.1070:                                     ; preds = %for.cond.1060
  %arraydecay1071 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i32 0
  %call1072 = call i64 @strlen(i8* %arraydecay1071) #9
  %cmp1073 = icmp ugt i64 %call1072, 255
  br i1 %cmp1073, label %if.then.1075, label %if.end.1079

if.then.1075:                                     ; preds = %for.end.1070
  br label %do.body.1076

do.body.1076:                                     ; preds = %if.then.1075
  br label %do.end.1077

do.end.1077:                                      ; preds = %do.body.1076
  %arrayidx1078 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i64 255
  store i8 0, i8* %arrayidx1078, align 1
  br label %if.end.1079

if.end.1079:                                      ; preds = %do.end.1077, %for.end.1070
  %call1080 = call i64 @strlen(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #9
  %add.ptr1081 = getelementptr inbounds i8, i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), i64 %call1080
  %arraydecay1082 = getelementptr inbounds [1536 x i8], [1536 x i8]* %socknamebuf, i32 0, i32 0
  %call1083 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr1081, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* %arraydecay1082) #3
  %call1084 = call i32 @MakeServerSocket()
  store i32 %call1084, i32* @ServerSocket, align 4
  call void @InitKeytab()
  %call1085 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0)) #3
  store i8* %call1085, i8** %ap, align 8
  %tobool1086 = icmp ne i8* %call1085, null
  br i1 %tobool1086, label %if.then.1087, label %if.else.1089

if.then.1087:                                     ; preds = %if.end.1079
  %446 = load i8*, i8** %ap, align 8
  %call1088 = call i32 @StartRc(i8* %446, i32 0)
  br label %if.end.1091

if.else.1089:                                     ; preds = %if.end.1079
  %call1090 = call i32 @StartRc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0), i32 0)
  br label %if.end.1091

if.end.1091:                                      ; preds = %if.else.1089, %if.then.1087
  %447 = load i8*, i8** @RcFileName, align 8
  %call1092 = call i32 @StartRc(i8* %447, i32 0)
  call void @InitUtmp()
  %448 = load %struct.display*, %struct.display** @display, align 8
  %tobool1093 = icmp ne %struct.display* %448, null
  br i1 %tobool1093, label %if.then.1094, label %if.else.1107

if.then.1094:                                     ; preds = %if.end.1091
  %call1095 = call i32 @InitTermcap(i32 0, i32 0)
  %tobool1096 = icmp ne i32 %call1095, 0
  br i1 %tobool1096, label %if.then.1097, label %if.end.1105

if.then.1097:                                     ; preds = %if.then.1094
  br label %do.body.1098

do.body.1098:                                     ; preds = %if.then.1097
  br label %do.end.1099

do.end.1099:                                      ; preds = %do.body.1098
  %449 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %449, i32 0, i32 59
  %450 = load i32, i32* %d_userfd, align 4
  %call1100 = call i32 (i32, i32, ...) @fcntl(i32 %450, i32 4, i32 0)
  call void @freetty()
  %451 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %451, i32 0, i32 57
  %452 = load i32, i32* %d_userpid, align 4
  %tobool1101 = icmp ne i32 %452, 0
  br i1 %tobool1101, label %if.then.1102, label %if.end.1104

if.then.1102:                                     ; preds = %do.end.1099
  %453 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid1103 = getelementptr inbounds %struct.display, %struct.display* %453, i32 0, i32 57
  %454 = load i32, i32* %d_userpid1103, align 4
  call void @Kill(i32 %454, i32 1)
  br label %if.end.1104

if.end.1104:                                      ; preds = %if.then.1102, %do.end.1099
  call void @eexit(i32 1) #10
  unreachable

if.end.1105:                                      ; preds = %if.then.1094
  %call1106 = call i32 @MakeDefaultCanvas()
  call void @InitTerm(i32 0)
  call void @RemoveLoginSlot()
  br label %if.end.1109

if.else.1107:                                     ; preds = %if.end.1091
  %call1108 = call i8* @MakeTermcap(i32 1)
  br label %if.end.1109

if.end.1109:                                      ; preds = %if.else.1107, %if.end.1105
  call void @InitLoadav()
  call void @MakeNewEnv()
  %call1110 = call void (i32)* @xsignal(i32 1, void (i32)* @SigHup)
  %call1111 = call void (i32)* @xsignal(i32 2, void (i32)* @FinitHandler)
  %call1112 = call void (i32)* @xsignal(i32 3, void (i32)* @FinitHandler)
  %call1113 = call void (i32)* @xsignal(i32 15, void (i32)* @FinitHandler)
  %call1114 = call void (i32)* @xsignal(i32 21, void (i32)* inttoptr (i64 1 to void (i32)*))
  %call1115 = call void (i32)* @xsignal(i32 22, void (i32)* inttoptr (i64 1 to void (i32)*))
  %455 = load %struct.display*, %struct.display** @display, align 8
  %tobool1116 = icmp ne %struct.display* %455, null
  br i1 %tobool1116, label %if.then.1117, label %if.else.1127

if.then.1117:                                     ; preds = %if.end.1109
  %456 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd1118 = getelementptr inbounds %struct.display, %struct.display* %456, i32 0, i32 59
  %457 = load i32, i32* %d_userfd1118, align 4
  call void @brktty(i32 %457)
  %458 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %458, i32 0, i32 63
  %459 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode = getelementptr inbounds %struct.display, %struct.display* %459, i32 0, i32 64
  %460 = load %struct.display*, %struct.display** @display, align 8
  %d_flow = getelementptr inbounds %struct.display, %struct.display* %460, i32 0, i32 65
  %461 = load i32, i32* %d_flow, align 4
  %462 = load i32, i32* @iflag, align 4
  call void @SetMode(%struct.mode* %d_OldMode, %struct.mode* %d_NewMode, i32 %461, i32 %462)
  %463 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd1119 = getelementptr inbounds %struct.display, %struct.display* %463, i32 0, i32 59
  %464 = load i32, i32* %d_userfd1119, align 4
  %465 = load %struct.display*, %struct.display** @display, align 8
  %d_NewMode1120 = getelementptr inbounds %struct.display, %struct.display* %465, i32 0, i32 64
  call void @SetTTY(i32 %464, %struct.mode* %d_NewMode1120)
  %466 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd1121 = getelementptr inbounds %struct.display, %struct.display* %466, i32 0, i32 59
  %467 = load i32, i32* %d_userfd1121, align 4
  %call1122 = call i32 (i32, i32, ...) @fcntl(i32 %467, i32 4, i32 2048)
  %tobool1123 = icmp ne i32 %call1122, 0
  br i1 %tobool1123, label %if.then.1124, label %if.end.1126

if.then.1124:                                     ; preds = %if.then.1117
  %call1125 = call i32* @__errno_location() #11
  %468 = load i32, i32* %call1125, align 4
  call void (i32, i8*, ...) @Msg(i32 %468, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.100, i32 0, i32 0))
  br label %if.end.1126

if.end.1126:                                      ; preds = %if.then.1124, %if.then.1117
  br label %if.end.1128

if.else.1127:                                     ; preds = %if.end.1109
  call void @brktty(i32 -1)
  br label %if.end.1128

if.end.1128:                                      ; preds = %if.else.1127, %if.end.1126
  %call1129 = call void (i32)* @xsignal(i32 17, void (i32)* @SigChld)
  %call1130 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0)) #3
  store i8* %call1130, i8** %ap, align 8
  %tobool1131 = icmp ne i8* %call1130, null
  br i1 %tobool1131, label %if.then.1132, label %if.else.1133

if.then.1132:                                     ; preds = %if.end.1128
  %469 = load i8*, i8** %ap, align 8
  call void @FinishRc(i8* %469)
  br label %if.end.1134

if.else.1133:                                     ; preds = %if.end.1128
  call void @FinishRc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0))
  br label %if.end.1134

if.end.1134:                                      ; preds = %if.else.1133, %if.then.1132
  %470 = load i8*, i8** @RcFileName, align 8
  call void @FinishRc(i8* %470)
  br label %do.body.1135

do.body.1135:                                     ; preds = %if.end.1134
  br label %do.end.1136

do.end.1136:                                      ; preds = %do.body.1135
  %471 = load %struct.win*, %struct.win** @windows, align 8
  %cmp1137 = icmp eq %struct.win* %471, null
  br i1 %cmp1137, label %if.then.1139, label %if.else.1152

if.then.1139:                                     ; preds = %do.end.1136
  br label %do.body.1140

do.body.1140:                                     ; preds = %if.then.1139
  br label %do.end.1141

do.end.1141:                                      ; preds = %do.body.1140
  %call1142 = call i32 @MakeWindow(%struct.NewWindow* %nwin)
  %cmp1143 = icmp eq i32 %call1142, -1
  br i1 %cmp1143, label %if.then.1145, label %if.end.1151

if.then.1145:                                     ; preds = %do.end.1141
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %472 = load i32, i32* @MsgWait, align 4
  %div = sdiv i32 %472, 1000
  %conv1146 = sext i32 %div to i64
  store i64 %conv1146, i64* %tv_sec, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %473 = load i32, i32* @MsgWait, align 4
  %rem = srem i32 %473, 1000
  %mul1147 = mul nsw i32 1000, %rem
  %conv1148 = sext i32 %mul1147 to i64
  store i64 %conv1148, i64* %tv_usec, align 8
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %rfd, i32 0, i32 0
  %arrayidx1149 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %474 = load i64, i64* %arrayidx1149, align 8
  %or = or i64 %474, 1
  store i64 %or, i64* %arrayidx1149, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.101, i32 0, i32 0))
  %call1150 = call i32 @select(i32 1, %struct.fd_set* %rfd, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %tv)
  call void @Finit(i32 0)
  br label %if.end.1151

if.end.1151:                                      ; preds = %if.then.1145, %do.end.1141
  br label %if.end.1157

if.else.1152:                                     ; preds = %do.end.1136
  %475 = load i32, i32* %ac.addr, align 4
  %tobool1153 = icmp ne i32 %475, 0
  br i1 %tobool1153, label %if.then.1154, label %if.end.1156

if.then.1154:                                     ; preds = %if.else.1152
  %call1155 = call i32 @MakeWindow(%struct.NewWindow* %nwin)
  br label %if.end.1156

if.end.1156:                                      ; preds = %if.then.1154, %if.else.1152
  br label %if.end.1157

if.end.1157:                                      ; preds = %if.end.1156, %if.end.1151
  %476 = load %struct.display*, %struct.display** @display, align 8
  %tobool1158 = icmp ne %struct.display* %476, null
  br i1 %tobool1158, label %land.lhs.true.1159, label %if.end.1162

land.lhs.true.1159:                               ; preds = %if.end.1157
  %477 = load i32, i32* @default_startup, align 4
  %tobool1160 = icmp ne i32 %477, 0
  br i1 %tobool1160, label %if.then.1161, label %if.end.1162

if.then.1161:                                     ; preds = %land.lhs.true.1159
  call void @display_copyright()
  br label %if.end.1162

if.end.1162:                                      ; preds = %if.then.1161, %land.lhs.true.1159, %if.end.1157
  %call1163 = call void (i32)* @xsignal(i32 2, void (i32)* @SigInt)
  %478 = load i32, i32* @rflag, align 4
  %tobool1164 = icmp ne i32 %478, 0
  br i1 %tobool1164, label %land.lhs.true.1165, label %if.end.1172

land.lhs.true.1165:                               ; preds = %if.end.1162
  %479 = load i32, i32* @rflag, align 4
  %and1166 = and i32 %479, 1
  %cmp1167 = icmp eq i32 %and1166, 0
  br i1 %cmp1167, label %land.lhs.true.1169, label %if.end.1172

land.lhs.true.1169:                               ; preds = %land.lhs.true.1165
  %480 = load i32, i32* @quietflag, align 4
  %tobool1170 = icmp ne i32 %480, 0
  br i1 %tobool1170, label %if.end.1172, label %if.then.1171

if.then.1171:                                     ; preds = %land.lhs.true.1169
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i32 0, i32 0))
  store i32 0, i32* @rflag, align 4
  br label %if.end.1172

if.end.1172:                                      ; preds = %if.then.1171, %land.lhs.true.1169, %land.lhs.true.1165, %if.end.1162
  store i32 1, i32* getelementptr inbounds (%struct.event, %struct.event* @serv_read, i32 0, i32 4), align 4
  %481 = load i32, i32* @ServerSocket, align 4
  store i32 %481, i32* getelementptr inbounds (%struct.event, %struct.event* @serv_read, i32 0, i32 3), align 4
  store void (%struct.event*, i8*)* @serv_read_fn, void (%struct.event*, i8*)** getelementptr inbounds (%struct.event, %struct.event* @serv_read, i32 0, i32 1), align 8
  call void @evenq(%struct.event* @serv_read)
  store i32 -10, i32* getelementptr inbounds (%struct.event, %struct.event* @serv_select, i32 0, i32 5), align 4
  store i32 3, i32* getelementptr inbounds (%struct.event, %struct.event* @serv_select, i32 0, i32 4), align 4
  store void (%struct.event*, i8*)* @serv_select_fn, void (%struct.event*, i8*)** getelementptr inbounds (%struct.event, %struct.event* @serv_select, i32 0, i32 1), align 8
  call void @evenq(%struct.event* @serv_select)
  store i32 0, i32* getelementptr inbounds (%struct.event, %struct.event* @logflushev, i32 0, i32 4), align 4
  store void (%struct.event*, i8*)* @logflush_fn, void (%struct.event*, i8*)** getelementptr inbounds (%struct.event, %struct.event* @logflushev, i32 0, i32 1), align 8
  call void @sched()
  ret i32 0
}

declare void @closeallfiles(i32) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i8* @SaveStr(i8*) #1

declare i32 @CompileKeys(i8*, i32, i8*) #1

declare void @InitBuiltinTabs() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare void @logreopen_register(i32 (i8*, i32, %struct.logfile*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lf_secreopen(i8* %name, i32 %wantfd, %struct.logfile* %l) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %wantfd.addr = alloca i32, align 4
  %l.addr = alloca %struct.logfile*, align 8
  %got_fd = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %wantfd, i32* %wantfd.addr, align 4
  store %struct.logfile* %l, %struct.logfile** %l.addr, align 8
  %0 = load i32, i32* %wantfd.addr, align 4
  %call = call i32 @close(i32 %0)
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 @secopen(i8* %1, i32 1089, i32 438)
  store i32 %call1, i32* %got_fd, align 4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %got_fd, align 4
  %3 = load i32, i32* %wantfd.addr, align 4
  %call2 = call i32 @lf_move_fd(i32 %2, i32 %3)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %call4 = call i32 @logfclose(%struct.logfile* %4)
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %st = getelementptr inbounds %struct.logfile, %struct.logfile* %5, i32 0, i32 6
  %6 = load %struct.stat*, %struct.stat** %st, align 8
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  store i64 0, i64* %st_dev, align 8
  %7 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %st5 = getelementptr inbounds %struct.logfile, %struct.logfile* %7, i32 0, i32 6
  %8 = load %struct.stat*, %struct.stat** %st5, align 8
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  store i64 0, i64* %st_ino, align 8
  br label %do.body.6

do.body.6:                                        ; preds = %if.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.7, %do.end
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noreturn nounwind uwtable
define void @Panic(i32 %err, i8* %fmt, ...) #5 {
entry:
  %err.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  %p = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %tty = alloca i8*, align 8
  store i32 %err, i32* %err.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay12 = bitcast %struct.__va_list_tag* %arraydecay1 to i8*
  call void @llvm.va_start(i8* %arraydecay12)
  %0 = load i8*, i8** %fmt.addr, align 8
  %call = call i8* @DoNLS(i8* %0)
  store i8* %call, i8** %fmt.addr, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load i8*, i8** %fmt.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call4 = call i32 @vsnprintf(i8* %1, i64 8092, i8* %2, %struct.__va_list_tag* %arraydecay3) #3
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %3 = load i32, i32* %err.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i8*, i8** %p, align 8
  %call7 = call i64 @strlen(i8* %4) #9
  %5 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %call7
  store i8* %add.ptr, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 58, i8* %6, align 1
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  store i8 32, i8* %7, align 1
  %8 = load i8*, i8** %p, align 8
  %9 = load i32, i32* %err.addr, align 4
  %call9 = call i8* @strerror(i32 %9) #3
  %arraydecay10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %add.ptr11 = getelementptr inbounds i8, i8* %arraydecay10, i64 8192
  %10 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  %call12 = call i8* @strncpy(i8* %8, i8* %call9, i64 %sub) #3
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 8191
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  %11 = load %struct.display*, %struct.display** @displays, align 8
  %cmp = icmp eq %struct.display* %11, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end.14
  %12 = load %struct.display*, %struct.display** @display, align 8
  %cmp15 = icmp eq %struct.display* %12, null
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true
  %arraydecay17 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), i8* %arraydecay17)
  %13 = load i32, i32* @PanicPid, align 4
  %tobool19 = icmp ne i32 %13, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  %14 = load i32, i32* @PanicPid, align 4
  call void @Kill(i32 %14, i32 1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.16
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true, %do.end.14
  %15 = load %struct.display*, %struct.display** @displays, align 8
  %cmp22 = icmp eq %struct.display* %15, null
  br i1 %cmp22, label %if.then.23, label %if.else.28

if.then.23:                                       ; preds = %if.else
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_usertty = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 58
  %arraydecay24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %d_usertty, i32 0, i32 0
  store i8* %arraydecay24, i8** %tty, align 8
  store %struct.display* null, %struct.display** @display, align 8
  %17 = load i8*, i8** %tty, align 8
  %arraydecay25 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call26 = call i32 @SendErrorMsg(i8* %17, i8* %arraydecay25)
  %call27 = call i32 @sleep(i32 2)
  call void @_exit(i32 1) #10
  unreachable

if.else.28:                                       ; preds = %if.else
  %18 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %18, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.28
  %19 = load %struct.display*, %struct.display** @display, align 8
  %tobool29 = icmp ne %struct.display* %19, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 43
  %21 = load i32, i32* %d_status, align 4
  %tobool30 = icmp ne i32 %21, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body
  call void @RemoveStatus()
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.body
  call void @FinitTerm()
  call void @Flush(i32 3)
  call void @RestoreLoginSlot()
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 59
  %23 = load i32, i32* %d_userfd, align 4
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 63
  call void @SetTTY(i32 %23, %struct.mode* %d_OldMode)
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd33 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 59
  %26 = load i32, i32* %d_userfd33, align 4
  %call34 = call i32 (i32, i32, ...) @fcntl(i32 %26, i32 4, i32 0)
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd35 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 59
  %28 = load i32, i32* %d_userfd35, align 4
  %arraydecay36 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call38 = call i64 @strlen(i8* %arraydecay37) #9
  %call39 = call i64 @write(i32 %28, i8* %arraydecay36, i64 %call38)
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd40 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 59
  %30 = load i32, i32* %d_userfd40, align 4
  %call41 = call i64 @write(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i64 1)
  call void @freetty()
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 57
  %32 = load i32, i32* %d_userpid, align 4
  %tobool42 = icmp ne i32 %32, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.32
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid44 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 57
  %34 = load i32, i32* %d_userpid44, align 4
  call void @Kill(i32 %34, i32 1)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 0
  %36 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %36, %struct.display** @display, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.46

if.end.46:                                        ; preds = %for.end
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.21
  %37 = load i32, i32* @tty_oldmode, align 4
  %cmp48 = icmp sge i32 %37, 0
  br i1 %cmp48, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %if.end.47
  %38 = load i32, i32* @own_uid, align 4
  %call50 = call i32 @setuid(i32 %38) #3
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.49
  %39 = load i32, i32* @own_uid, align 4
  call void @xseteuid(i32 %39)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.49
  br label %do.body.54

do.body.54:                                       ; preds = %if.end.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.body.54
  %40 = load i8*, i8** @attach_tty, align 8
  %41 = load i32, i32* @tty_oldmode, align 4
  %call56 = call i32 @chmod(i8* %40, i32 %41) #3
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.55, %if.end.47
  call void @eexit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @exit_with_usage(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ParseEscape(i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %buf = alloca [2 x i8], align 1
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @SetEscape(%struct.acluser* null, i32 -1, i32 -1)
  br label %if.end.14

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  %call = call i8* @ParseChar(i8* %2, i8* %arraydecay)
  store i8* %call, i8** %p.addr, align 8
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i8*, i8** %p.addr, align 8
  %arraydecay4 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay4, i64 1
  %call5 = call i8* @ParseChar(i8* %3, i8* %add.ptr)
  store i8* %call5, i8** %p.addr, align 8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %4 = load i8*, i8** %p.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv9 = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv9, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false, %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv11 = zext i8 %6 to i32
  %arrayidx12 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  %7 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %7 to i32
  call void @SetEscape(%struct.acluser* null, i32 %conv11, i32 %conv13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i32 @getuid() #2

; Function Attrs: nounwind
declare i32 @getgid() #2

; Function Attrs: nounwind
declare i32 @geteuid() #2

; Function Attrs: nounwind
declare i32 @getegid() #2

declare void (i32)* @xsignal(i32, void (i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @CoreDump(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  %disp = alloca %struct.display*, align 8
  %buf = alloca [80 x i8], align 16
  %dump_msg = alloca i8*, align 8
  %running_w_s_bit = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.151, i32 0, i32 0), i8** %dump_msg, align 8
  %call = call i32 @getuid() #3
  %call1 = call i32 @geteuid() #3
  %cmp = icmp ne i32 %call, %call1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %running_w_s_bit, align 4
  %0 = load i32, i32* %running_w_s_bit, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %dump_msg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @getgid() #3
  %call3 = call i32 @setgid(i32 %call2) #3
  %call4 = call i32 @getuid() #3
  %call5 = call i32 @setuid(i32 %call4) #3
  %call6 = call i32 @unlink(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0)) #3
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %1 = load i32, i32* %sigsig.addr, align 4
  %2 = load i8*, i8** %dump_msg, align 8
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.153, i32 0, i32 0), i32 %1, i8* %2) #3
  %3 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %3, %struct.display** %disp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.display*, %struct.display** %disp, align 8
  %tobool8 = icmp ne %struct.display* %4, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.display*, %struct.display** %disp, align 8
  %d_nonblock = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 12
  %6 = load i32, i32* %d_nonblock, align 4
  %cmp9 = icmp slt i32 %6, -1
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.display*, %struct.display** %disp, align 8
  %d_nonblock11 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 12
  %8 = load i32, i32* %d_nonblock11, align 4
  %cmp12 = icmp sgt i32 %8, 1000000
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.15:                                        ; preds = %lor.lhs.false
  %9 = load %struct.display*, %struct.display** %disp, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 59
  %10 = load i32, i32* %d_userfd, align 4
  %call16 = call i32 (i32, i32, ...) @fcntl(i32 %10, i32 4, i32 0)
  %11 = load %struct.display*, %struct.display** %disp, align 8
  %d_userfd17 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 59
  %12 = load i32, i32* %d_userfd17, align 4
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 63
  call void @SetTTY(i32 %12, %struct.mode* %d_OldMode)
  %14 = load %struct.display*, %struct.display** %disp, align 8
  %d_userfd18 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 59
  %15 = load i32, i32* %d_userfd18, align 4
  %arraydecay19 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call21 = call i64 @strlen(i8* %arraydecay20) #9
  %call22 = call i64 @write(i32 %15, i8* %arraydecay19, i64 %call21)
  %16 = load %struct.display*, %struct.display** %disp, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 57
  %17 = load i32, i32* %d_userpid, align 4
  call void @Kill(i32 %17, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end.15, %if.then.14
  %18 = load %struct.display*, %struct.display** %disp, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 0
  %19 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %19, %struct.display** %disp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %running_w_s_bit, align 4
  %tobool23 = icmp ne i32 %20, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.end
  %call25 = call i32 @getpid() #3
  call void @Kill(i32 %call25, i32 9)
  call void @eexit(i32 11) #10
  unreachable

if.else:                                          ; preds = %for.end
  call void @abort() #12
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

declare i32 @FindEncoding(i8*) #1

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @locale_name() #0 {
entry:
  %0 = load i8*, i8** @locale_name.s, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0)) #3
  store i8* %call, i8** @locale_name.s, align 8
  %1 = load i8*, i8** @locale_name.s, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.149, i32 0, i32 0)) #3
  store i8* %call2, i8** @locale_name.s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %2 = load i8*, i8** @locale_name.s, align 8
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i32 0, i32 0)) #3
  store i8* %call5, i8** @locale_name.s, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %3 = load i8*, i8** @locale_name.s, align 8
  ret i8* %3
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @RecodeBuf(i8*, i32, i32, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #4

declare %struct.passwd* @getpwnam(i8*) #1

declare i8* @getlogin() #1

declare %struct.passwd* @getpwuid(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.passwd* @getpwbyname(i8* %name, %struct.passwd* %ppp) #0 {
entry:
  %retval = alloca %struct.passwd*, align 8
  %name.addr = alloca i8*, align 8
  %ppp.addr = alloca %struct.passwd*, align 8
  %n = alloca i32, align 4
  %sss = alloca %struct.spwd*, align 8
  %c = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  store %struct.passwd* %ppp, %struct.passwd** %ppp.addr, align 8
  store %struct.spwd* null, %struct.spwd** %sss, align 8
  %0 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %tobool = icmp ne %struct.passwd* %0, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct.passwd* @getpwnam(i8* %1)
  store %struct.passwd* %call, %struct.passwd** %ppp.addr, align 8
  %tobool1 = icmp ne %struct.passwd* %call, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct.passwd* null, %struct.passwd** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %pw_try_again

pw_try_again:                                     ; preds = %if.end.68, %if.end
  store i32 0, i32* %n, align 4
  %2 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_passwd = getelementptr inbounds %struct.passwd, %struct.passwd* %2, i32 0, i32 1
  %3 = load i8*, i8** %pw_passwd, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 35
  br i1 %cmp, label %land.lhs.true.3, label %if.end.15

land.lhs.true.3:                                  ; preds = %pw_try_again
  %5 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_passwd4 = getelementptr inbounds %struct.passwd, %struct.passwd* %5, i32 0, i32 1
  %6 = load i8*, i8** %pw_passwd4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 35
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.15

land.lhs.true.9:                                  ; preds = %land.lhs.true.3
  %8 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_passwd10 = getelementptr inbounds %struct.passwd, %struct.passwd* %8, i32 0, i32 1
  %9 = load i8*, i8** %pw_passwd10, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 0
  %11 = load i8*, i8** %pw_name, align 8
  %call11 = call i32 @strcmp(i8* %add.ptr, i8* %11) #9
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.9
  store i32 13, i32* %n, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.9, %land.lhs.true.3, %pw_try_again
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %12 = load i32, i32* %n, align 4
  %cmp16 = icmp slt i32 %12, 13
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %n, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_passwd18 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 1
  %15 = load i8*, i8** %pw_passwd18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx19, align 1
  store i8 %16, i8* %c, align 1
  %17 = load i8, i8* %c, align 1
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp eq i32 %conv20, 46
  br i1 %cmp21, label %if.end.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load i8, i8* %c, align 1
  %conv23 = sext i8 %18 to i32
  %cmp24 = icmp eq i32 %conv23, 47
  br i1 %cmp24, label %if.end.55, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %19 = load i8, i8* %c, align 1
  %conv27 = sext i8 %19 to i32
  %cmp28 = icmp eq i32 %conv27, 36
  br i1 %cmp28, label %if.end.55, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.26
  %20 = load i8, i8* %c, align 1
  %conv31 = sext i8 %20 to i32
  %cmp32 = icmp sge i32 %conv31, 48
  br i1 %cmp32, label %land.lhs.true.34, label %lor.lhs.false.38

land.lhs.true.34:                                 ; preds = %lor.lhs.false.30
  %21 = load i8, i8* %c, align 1
  %conv35 = sext i8 %21 to i32
  %cmp36 = icmp sle i32 %conv35, 57
  br i1 %cmp36, label %if.end.55, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %land.lhs.true.34, %lor.lhs.false.30
  %22 = load i8, i8* %c, align 1
  %conv39 = sext i8 %22 to i32
  %cmp40 = icmp sge i32 %conv39, 97
  br i1 %cmp40, label %land.lhs.true.42, label %lor.lhs.false.46

land.lhs.true.42:                                 ; preds = %lor.lhs.false.38
  %23 = load i8, i8* %c, align 1
  %conv43 = sext i8 %23 to i32
  %cmp44 = icmp sle i32 %conv43, 122
  br i1 %cmp44, label %if.end.55, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %land.lhs.true.42, %lor.lhs.false.38
  %24 = load i8, i8* %c, align 1
  %conv47 = sext i8 %24 to i32
  %cmp48 = icmp sge i32 %conv47, 65
  br i1 %cmp48, label %land.lhs.true.50, label %if.then.54

land.lhs.true.50:                                 ; preds = %lor.lhs.false.46
  %25 = load i8, i8* %c, align 1
  %conv51 = sext i8 %25 to i32
  %cmp52 = icmp sle i32 %conv51, 90
  br i1 %cmp52, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true.50, %lor.lhs.false.46
  br label %for.end

if.end.55:                                        ; preds = %land.lhs.true.50, %land.lhs.true.42, %land.lhs.true.34, %lor.lhs.false.26, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %26 = load i32, i32* %n, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.54, %for.cond
  %27 = load i32, i32* %n, align 4
  %cmp56 = icmp slt i32 %27, 13
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.72

land.lhs.true.58:                                 ; preds = %for.end
  %28 = load %struct.spwd*, %struct.spwd** %sss, align 8
  %cmp59 = icmp eq %struct.spwd* %28, null
  br i1 %cmp59, label %if.then.61, label %if.end.72

if.then.61:                                       ; preds = %land.lhs.true.58
  %29 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_name62 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 0
  %30 = load i8*, i8** %pw_name62, align 8
  %call63 = call %struct.spwd* @getspnam(i8* %30)
  store %struct.spwd* %call63, %struct.spwd** %sss, align 8
  %31 = load %struct.spwd*, %struct.spwd** %sss, align 8
  %tobool64 = icmp ne %struct.spwd* %31, null
  br i1 %tobool64, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %if.then.61
  %32 = load i8*, i8** @getpwbyname.spw, align 8
  %tobool66 = icmp ne i8* %32, null
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.65
  %33 = load i8*, i8** @getpwbyname.spw, align 8
  call void @free(i8* %33) #3
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.then.65
  %34 = load %struct.spwd*, %struct.spwd** %sss, align 8
  %sp_pwdp = getelementptr inbounds %struct.spwd, %struct.spwd* %34, i32 0, i32 1
  %35 = load i8*, i8** %sp_pwdp, align 8
  %call69 = call i8* @SaveStr(i8* %35)
  store i8* %call69, i8** @getpwbyname.spw, align 8
  %36 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_passwd70 = getelementptr inbounds %struct.passwd, %struct.passwd* %36, i32 0, i32 1
  store i8* %call69, i8** %pw_passwd70, align 8
  call void @endspent()
  br label %pw_try_again

if.end.71:                                        ; preds = %if.then.61
  call void @endspent()
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true.58, %for.end
  %37 = load i32, i32* %n, align 4
  %cmp73 = icmp slt i32 %37, 13
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.72
  %38 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_passwd76 = getelementptr inbounds %struct.passwd, %struct.passwd* %38, i32 0, i32 1
  store i8* null, i8** %pw_passwd76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.72
  %39 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_passwd78 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 1
  %40 = load i8*, i8** %pw_passwd78, align 8
  %tobool79 = icmp ne i8* %40, null
  br i1 %tobool79, label %land.lhs.true.80, label %if.end.88

land.lhs.true.80:                                 ; preds = %if.end.77
  %41 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_passwd81 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 1
  %42 = load i8*, i8** %pw_passwd81, align 8
  %call82 = call i64 @strlen(i8* %42) #9
  %cmp83 = icmp eq i64 %call82, 24
  br i1 %cmp83, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %land.lhs.true.80
  %43 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  %pw_passwd86 = getelementptr inbounds %struct.passwd, %struct.passwd* %43, i32 0, i32 1
  %44 = load i8*, i8** %pw_passwd86, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %44, i64 13
  store i8 0, i8* %arrayidx87, align 1
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %land.lhs.true.80, %if.end.77
  %45 = load %struct.passwd*, %struct.passwd** %ppp.addr, align 8
  store %struct.passwd* %45, %struct.passwd** %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then
  %46 = load %struct.passwd*, %struct.passwd** %retval
  ret %struct.passwd* %46
}

; Function Attrs: nounwind
declare i8* @ttyname(i32) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @CheckTtyname(i8*) #1

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @secopen(i8*, i32, i32) #1

declare i32 @close(i32) #1

declare void @GetTTY(i32, %struct.mode*) #1

; Function Attrs: nounwind
declare i32 @umask(i32) #2

declare i32 @UserContext() #1

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #2

declare void @UserReturn(i32) #1

declare i32 @UserStatus() #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @chown(i8*, i32, i32) #2

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #2

; Function Attrs: nounwind
declare i32 @setgid(i32) #2

; Function Attrs: nounwind
declare i32 @setuid(i32) #2

declare i32 @FindSocket(i32*, i32*, i32*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind uwtable
define void @Msg(i32 %err, i8* %fmt, ...) #0 {
entry:
  %err.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  %p = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %tty = alloca i8*, align 8
  %olddisplay = alloca %struct.display*, align 8
  store i32 %err, i32* %err.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay12 = bitcast %struct.__va_list_tag* %arraydecay1 to i8*
  call void @llvm.va_start(i8* %arraydecay12)
  %0 = load i8*, i8** %fmt.addr, align 8
  %call = call i8* @DoNLS(i8* %0)
  store i8* %call, i8** %fmt.addr, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load i8*, i8** %fmt.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call4 = call i32 @vsnprintf(i8* %1, i64 8092, i8* %2, %struct.__va_list_tag* %arraydecay3) #3
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %3 = load i32, i32* %err.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i8*, i8** %p, align 8
  %call7 = call i64 @strlen(i8* %4) #9
  %5 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %call7
  store i8* %add.ptr, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 58, i8* %6, align 1
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  store i8 32, i8* %7, align 1
  %8 = load i8*, i8** %p, align 8
  %9 = load i32, i32* %err.addr, align 4
  %call9 = call i8* @strerror(i32 %9) #3
  %arraydecay10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %add.ptr11 = getelementptr inbounds i8, i8* %arraydecay10, i64 8192
  %10 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  %call12 = call i8* @strncpy(i8* %8, i8* %call9, i64 %sub) #3
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 8191
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  %11 = load %struct.display*, %struct.display** @display, align 8
  %tobool15 = icmp ne %struct.display* %11, null
  br i1 %tobool15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end.14
  %12 = load %struct.display*, %struct.display** @displays, align 8
  %tobool16 = icmp ne %struct.display* %12, null
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true
  %arraydecay18 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  call void @MakeStatus(i8* %arraydecay18)
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %do.end.14
  %13 = load %struct.display*, %struct.display** @displays, align 8
  %tobool19 = icmp ne %struct.display* %13, null
  br i1 %tobool19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.else
  %14 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %14, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %15 = load %struct.display*, %struct.display** @display, align 8
  %tobool21 = icmp ne %struct.display* %15, null
  br i1 %tobool21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay22 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  call void @MakeStatus(i8* %arraydecay22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 0
  %17 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %17, %struct.display** @display, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.else.23:                                       ; preds = %if.else
  %18 = load %struct.display*, %struct.display** @display, align 8
  %tobool24 = icmp ne %struct.display* %18, null
  br i1 %tobool24, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %if.else.23
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_usertty = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 58
  %arraydecay26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %d_usertty, i32 0, i32 0
  store i8* %arraydecay26, i8** %tty, align 8
  %20 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %20, %struct.display** %olddisplay, align 8
  store %struct.display* null, %struct.display** @display, align 8
  %21 = load i8*, i8** %tty, align 8
  %arraydecay27 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call28 = call i32 @SendErrorMsg(i8* %21, i8* %arraydecay27)
  %22 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %22, %struct.display** @display, align 8
  br label %if.end.32

if.else.29:                                       ; preds = %if.else.23
  %arraydecay30 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), i8* %arraydecay30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.25
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.17
  %23 = load i32, i32* @queryflag, align 4
  %cmp = icmp sge i32 %23, 0
  br i1 %cmp, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.end.34
  %24 = load i32, i32* @queryflag, align 4
  %arraydecay36 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call38 = call i64 @strlen(i8* %arraydecay37) #9
  %call39 = call i64 @write(i32 %24, i8* %arraydecay36, i64 %call38)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %if.end.34
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @eexit(i32 %e) #5 {
entry:
  %e.addr = alloca i32, align 4
  store i32 %e, i32* %e.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* @ServerSocket, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %1 = load i32, i32* @real_gid, align 4
  %call = call i32 @setgid(i32 %1) #3
  %2 = load i32, i32* @real_uid, align 4
  %call3 = call i32 @setuid(i32 %2) #3
  %call4 = call i32 @unlink(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %do.end.2, %do.end
  %3 = load i32, i32* %e.addr, align 4
  call void @exit(i32 %3) #12
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @AttacherFinit(i32) #1

declare void @SendCmdMessage(i8*, i8*, i8**, i32) #1

declare i32 @Attach(i32) #1

declare void @Attacher() #1

declare void @SendCreateMsg(i8*, %struct.NewWindow*) #1

declare void @nwin_compose(%struct.NewWindow*, %struct.NewWindow*, %struct.NewWindow*) #1

; Function Attrs: nounwind
declare i32 @fork() #2

declare i8* @stripdev(i8*) #1

; Function Attrs: nounwind
declare i32 @getppid() #2

; Function Attrs: nounwind
declare i32 @dup(i32) #2

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #1

declare i32 @UserAdd(i8*, i8*, %struct.acluser**) #1

declare %struct.display* @MakeDisplay(i8*, i8*, i8*, i32, i32, %struct.mode*) #1

; Function Attrs: nounwind
declare i32 @getpid() #2

declare i32 @MakeServerSocket() #1

declare void @InitKeytab() #1

declare i32 @StartRc(i8*, i32) #1

declare void @InitUtmp() #1

declare i32 @InitTermcap(i32, i32) #1

declare void @freetty() #1

declare void @Kill(i32, i32) #1

declare i32 @MakeDefaultCanvas() #1

declare void @InitTerm(i32) #1

declare void @RemoveLoginSlot() #1

declare i8* @MakeTermcap(i32) #1

declare void @InitLoadav() #1

; Function Attrs: nounwind uwtable
define void @MakeNewEnv() #0 {
entry:
  %op = alloca i8**, align 8
  %np = alloca i8**, align 8
  %0 = load i8**, i8*** @environ, align 8
  store i8** %0, i8*** %op, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8**, i8*** %op, align 8
  %2 = load i8*, i8** %1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i8**, i8*** %op, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i32 1
  store i8** %incdec.ptr, i8*** %op, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i8**, i8*** @NewEnv, align 8
  %tobool1 = icmp ne i8** %4, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %5 = load i8**, i8*** @NewEnv, align 8
  %6 = bitcast i8** %5 to i8*
  call void @free(i8* %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %7 = load i8**, i8*** %op, align 8
  %8 = load i8**, i8*** @environ, align 8
  %sub.ptr.lhs.cast = ptrtoint i8** %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8** %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 7
  %add2 = add nsw i64 %add, 1
  %conv = trunc i64 %add2 to i32
  %conv3 = zext i32 %conv to i64
  %mul = mul i64 %conv3, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %9 = bitcast i8* %call to i8**
  store i8** %9, i8*** %np, align 8
  store i8** %9, i8*** @NewEnv, align 8
  %10 = load i8**, i8*** @NewEnv, align 8
  %tobool4 = icmp ne i8** %10, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @strnomem, i32 0, i32 0)) #10
  unreachable

if.end.6:                                         ; preds = %if.end
  %11 = load i8*, i8** @SockName, align 8
  %call7 = call i64 @strlen(i8* %11) #9
  %cmp = icmp ule i64 %call7, 763
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %12 = load i8*, i8** @SockName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), %cond.false ]
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([768 x i8], [768 x i8]* @MakeNewEnv.stybuf, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i32 0, i32 0), i8* %cond) #3
  %13 = load i8**, i8*** %np, align 8
  %incdec.ptr10 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr10, i8*** %np, align 8
  store i8* getelementptr inbounds ([768 x i8], [768 x i8]* @MakeNewEnv.stybuf, i32 0, i32 0), i8** %13, align 8
  %14 = load i8**, i8*** %np, align 8
  %incdec.ptr11 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %incdec.ptr11, i8*** %np, align 8
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Term, i32 0, i32 0), i8** %14, align 8
  %15 = load i8**, i8*** %np, align 8
  %incdec.ptr12 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr12, i8*** %np, align 8
  %16 = load i8**, i8*** %np, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %16, i64 2
  store i8** %add.ptr, i8*** %np, align 8
  %17 = load i8**, i8*** @environ, align 8
  store i8** %17, i8*** %op, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.41, %cond.end
  %18 = load i8**, i8*** %op, align 8
  %19 = load i8*, i8** %18, align 8
  %tobool14 = icmp ne i8* %19, null
  br i1 %tobool14, label %for.body.15, label %for.end.43

for.body.15:                                      ; preds = %for.cond.13
  %20 = load i8**, i8*** %op, align 8
  %21 = load i8*, i8** %20, align 8
  %call16 = call i32 @IsSymbol(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0))
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.40, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.15
  %22 = load i8**, i8*** %op, align 8
  %23 = load i8*, i8** %22, align 8
  %call18 = call i32 @IsSymbol(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0))
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.40, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %24 = load i8**, i8*** %op, align 8
  %25 = load i8*, i8** %24, align 8
  %call21 = call i32 @IsSymbol(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0))
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.40, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %land.lhs.true.20
  %26 = load i8**, i8*** %op, align 8
  %27 = load i8*, i8** %26, align 8
  %call24 = call i32 @IsSymbol(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0))
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.40, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %land.lhs.true.23
  %28 = load i8**, i8*** %op, align 8
  %29 = load i8*, i8** %28, align 8
  %call27 = call i32 @IsSymbol(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0))
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.40, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %land.lhs.true.26
  %30 = load i8**, i8*** %op, align 8
  %31 = load i8*, i8** %30, align 8
  %call30 = call i32 @IsSymbol(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0))
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.40, label %land.lhs.true.32

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %32 = load i8**, i8*** %op, align 8
  %33 = load i8*, i8** %32, align 8
  %call33 = call i32 @IsSymbol(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0))
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.40, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %land.lhs.true.32
  %34 = load i8**, i8*** %op, align 8
  %35 = load i8*, i8** %34, align 8
  %call36 = call i32 @IsSymbol(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.127, i32 0, i32 0))
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.35
  %36 = load i8**, i8*** %op, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %np, align 8
  %incdec.ptr39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %incdec.ptr39, i8*** %np, align 8
  store i8* %37, i8** %38, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %land.lhs.true.35, %land.lhs.true.32, %land.lhs.true.29, %land.lhs.true.26, %land.lhs.true.23, %land.lhs.true.20, %land.lhs.true, %for.body.15
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %39 = load i8**, i8*** %op, align 8
  %incdec.ptr42 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %incdec.ptr42, i8*** %op, align 8
  br label %for.cond.13

for.end.43:                                       ; preds = %for.cond.13
  %40 = load i8**, i8*** %np, align 8
  store i8* null, i8** %40, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @SigHup(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %0, %struct.display** @display, align 8
  %cmp = icmp ne %struct.display* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @Hangup()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FinitHandler(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @Finit(i32 1)
  ret void
}

declare void @brktty(i32) #1

declare void @SetMode(%struct.mode*, %struct.mode*, i32, i32) #1

declare void @SetTTY(i32, %struct.mode*) #1

; Function Attrs: nounwind uwtable
define internal void @SigChld(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* @GotSigChld, align 4
  ret void
}

declare void @FinishRc(i8*) #1

declare i32 @MakeWindow(%struct.NewWindow*) #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: nounwind uwtable
define void @Finit(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %p = alloca %struct.win*, align 8
  store i32 %i, i32* %i.addr, align 4
  %call = call void (i32)* @xsignal(i32 17, void (i32)* null)
  %call1 = call void (i32)* @xsignal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*))
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %0 = load %struct.win*, %struct.win** @windows, align 8
  %tobool = icmp ne %struct.win* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %1, %struct.win** %p, align 8
  %2 = load %struct.win*, %struct.win** @windows, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 0
  %3 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %3, %struct.win** @windows, align 8
  %4 = load %struct.win*, %struct.win** %p, align 8
  call void @FreeWindow(%struct.win* %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* @ServerSocket, align 4
  %cmp = icmp ne i32 %5, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.2
  %6 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %6)
  %7 = load i32, i32* @real_gid, align 4
  call void @xsetegid(i32 %7)
  %call4 = call i32 @unlink(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0)) #3
  %8 = load i32, i32* @eff_uid, align 4
  call void @xseteuid(i32 %8)
  %9 = load i32, i32* @eff_gid, align 4
  call void @xsetegid(i32 %9)
  br label %if.end

if.end:                                           ; preds = %do.end.3, %while.end
  %10 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %10, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.display*, %struct.display** @display, align 8
  %tobool5 = icmp ne %struct.display* %11, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 43
  %13 = load i32, i32* %d_status, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  call void @RemoveStatus()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.body
  call void @FinitTerm()
  call void @RestoreLoginSlot()
  call void @AddStr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.110, i32 0, i32 0))
  call void @Flush(i32 3)
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 59
  %15 = load i32, i32* %d_userfd, align 4
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 63
  call void @SetTTY(i32 %15, %struct.mode* %d_OldMode)
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd9 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 59
  %18 = load i32, i32* %d_userfd9, align 4
  %call10 = call i32 (i32, i32, ...) @fcntl(i32 %18, i32 4, i32 0)
  call void @freetty()
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 57
  %20 = load i32, i32* %d_userpid, align 4
  call void @Kill(i32 %20, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 0
  %22 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %22, %struct.display** @display, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %i.addr, align 4
  call void @exit(i32 %23) #12
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @display_copyright() #1

; Function Attrs: nounwind uwtable
define internal void @SigInt(i32 %sigsig) #0 {
entry:
  %sigsig.addr = alloca i32, align 4
  store i32 %sigsig, i32* %sigsig.addr, align 4
  %call = call void (i32)* @xsignal(i32 2, void (i32)* @SigInt)
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* @InterruptPlease, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @serv_read_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @ReceiveMsg()
  ret void
}

declare void @evenq(%struct.event*) #1

; Function Attrs: nounwind uwtable
define internal void @serv_select_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  %ibuf = alloca i8, align 1
  %cv = alloca %struct.canvas*, align 8
  %visual = alloca i32, align 4
  %cv68 = alloca %struct.canvas*, align 8
  %cv118 = alloca %struct.canvas*, align 8
  %lx = alloca i32, align 4
  %ly = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %olddisplay = alloca %struct.display*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %l = alloca %struct.layer*, align 8
  %cvlist = alloca %struct.canvas*, align 8
  %cvlnext = alloca %struct.canvas*, align 8
  %i182 = alloca i32, align 4
  %n183 = alloca i32, align 4
  %olddisplay199 = alloca %struct.display*, align 8
  %oldflayer200 = alloca %struct.layer*, align 8
  %l201 = alloca %struct.layer*, align 8
  %cvlist203 = alloca %struct.canvas*, align 8
  %cvlnext205 = alloca %struct.canvas*, align 8
  %i244 = alloca i32, align 4
  %n245 = alloca i32, align 4
  %olddisplay282 = alloca %struct.display*, align 8
  %oldflayer283 = alloca %struct.layer*, align 8
  %l284 = alloca %struct.layer*, align 8
  %cvlist286 = alloca %struct.canvas*, align 8
  %cvlnext288 = alloca %struct.canvas*, align 8
  %i325 = alloca i32, align 4
  %n326 = alloca i32, align 4
  %olddisplay373 = alloca %struct.display*, align 8
  %oldflayer374 = alloca %struct.layer*, align 8
  %l375 = alloca %struct.layer*, align 8
  %cvlist377 = alloca %struct.canvas*, align 8
  %cvlnext379 = alloca %struct.canvas*, align 8
  %olddisplay438 = alloca %struct.display*, align 8
  %oldflayer439 = alloca %struct.layer*, align 8
  %l440 = alloca %struct.layer*, align 8
  %cvlist443 = alloca %struct.canvas*, align 8
  %cvlnext445 = alloca %struct.canvas*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* @GotSigChld, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void @SigChldHandler()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %1 = load i32, i32* @InterruptPlease, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end.18

if.then.2:                                        ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %2 = load %struct.win*, %struct.win** @fore, align 8
  %tobool5 = icmp ne %struct.win* %2, null
  br i1 %tobool5, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %do.end.4
  %3 = load %struct.display*, %struct.display** @displays, align 8
  %tobool6 = icmp ne %struct.display* %3, null
  br i1 %tobool6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %land.lhs.true
  %4 = load %struct.display*, %struct.display** @displays, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 63
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %d_OldMode, i32 0, i32 0
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  store i8 %5, i8* %ibuf, align 1
  %6 = load %struct.win*, %struct.win** @fore, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 6
  %7 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  %tobool8 = icmp ne %struct.pseudowin* %7, null
  br i1 %tobool8, label %land.lhs.true.9, label %cond.false

land.lhs.true.9:                                  ; preds = %if.then.7
  %8 = load %struct.win*, %struct.win** @fore, align 8
  %w_pwin10 = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 6
  %9 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin10, align 8
  %p_fdpat = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %9, i32 0, i32 0
  %10 = load i32, i32* %p_fdpat, align 4
  %and = and i32 %10, 4096
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.9
  %11 = load %struct.win*, %struct.win** @fore, align 8
  %w_pwin12 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 6
  %12 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin12, align 8
  %p_ptyfd = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %12, i32 0, i32 2
  %13 = load i32, i32* %p_ptyfd, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.9, %if.then.7
  %14 = load %struct.win*, %struct.win** @fore, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 15
  %15 = load i32, i32* %w_ptyfd, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %15, %cond.false ]
  %call = call i64 @write(i32 %cond, i8* %ibuf, i64 1)
  br label %do.body.13

do.body.13:                                       ; preds = %cond.end
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  br label %if.end.17

if.end.17:                                        ; preds = %do.end.16, %land.lhs.true, %do.end.4
  store i32 0, i32* @InterruptPlease, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %16 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %16, %struct.win** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.113, %if.end.18
  %17 = load %struct.win*, %struct.win** %p, align 8
  %tobool19 = icmp ne %struct.win* %17, null
  br i1 %tobool19, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  %18 = load %struct.win*, %struct.win** %p, align 8
  %w_bell = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 66
  %19 = load i32, i32* %w_bell, align 4
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %20 = load %struct.win*, %struct.win** %p, align 8
  %w_bell20 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 66
  %21 = load i32, i32* %w_bell20, align 4
  %cmp21 = icmp eq i32 %21, 3
  br i1 %cmp21, label %if.then.22, label %if.end.64

if.then.22:                                       ; preds = %lor.lhs.false, %for.body
  %22 = load %struct.win*, %struct.win** %p, align 8
  %w_bell23 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 66
  %23 = load i32, i32* %w_bell23, align 4
  %cmp24 = icmp eq i32 %23, 3
  br i1 %cmp24, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.22
  %24 = load i32, i32* @visual_bell, align 4
  %tobool25 = icmp ne i32 %24, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.22
  %25 = phi i1 [ true, %if.then.22 ], [ %tobool25, %lor.rhs ]
  %lor.ext = zext i1 %25 to i32
  store i32 %lor.ext, i32* %visual, align 4
  %26 = load %struct.win*, %struct.win** %p, align 8
  %w_bell26 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 66
  store i32 0, i32* %w_bell26, align 4
  %27 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %27, %struct.display** @display, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.58, %lor.end
  %28 = load %struct.display*, %struct.display** @display, align 8
  %tobool28 = icmp ne %struct.display* %28, null
  br i1 %tobool28, label %for.body.29, label %for.end.59

for.body.29:                                      ; preds = %for.cond.27
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 3
  %30 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %30, %struct.canvas** %cv, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %for.body.29
  %31 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool31 = icmp ne %struct.canvas* %31, null
  br i1 %tobool31, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.30
  %32 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %32, i32 0, i32 9
  %33 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %33, i32 0, i32 9
  %34 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %35 = load %struct.win*, %struct.win** %p, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 3
  %cmp33 = icmp eq %struct.layer* %34, %w_layer
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.32
  br label %for.end

if.end.35:                                        ; preds = %for.body.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %36 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %36, i32 0, i32 0
  %37 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %37, %struct.canvas** %cv, align 8
  br label %for.cond.30

for.end:                                          ; preds = %if.then.34, %for.cond.30
  %38 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %cmp36 = icmp eq %struct.canvas* %38, null
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %for.end
  %39 = load %struct.win*, %struct.win** %p, align 8
  %w_bell38 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 66
  store i32 2, i32* %w_bell38, align 4
  %40 = load i8*, i8** @BellString, align 8
  %41 = load %struct.win*, %struct.win** %p, align 8
  %call39 = call i8* @MakeWinMsg(i8* %40, %struct.win* %41, i32 37)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* %call39)
  br label %if.end.57

if.else:                                          ; preds = %for.end
  %42 = load i32, i32* %visual, align 4
  %tobool40 = icmp ne i32 %42, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.56

land.lhs.true.41:                                 ; preds = %if.else
  %43 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 83
  %arrayidx42 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 43
  %str = bitcast %union.tcu* %arrayidx42 to i8**
  %44 = load i8*, i8** %str, align 8
  %tobool43 = icmp ne i8* %44, null
  br i1 %tobool43, label %if.end.56, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %land.lhs.true.41
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 43
  %46 = load i32, i32* %d_status, align 4
  %tobool45 = icmp ne i32 %46, 0
  br i1 %tobool45, label %lor.lhs.false.46, label %if.then.48

lor.lhs.false.46:                                 ; preds = %land.lhs.true.44
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_status_bell = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 44
  %48 = load i8, i8* %d_status_bell, align 1
  %tobool47 = icmp ne i8 %48, 0
  br i1 %tobool47, label %if.end.56, label %if.then.48

if.then.48:                                       ; preds = %lor.lhs.false.46, %land.lhs.true.44
  %49 = load i8*, i8** @VisualBellString, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* %49)
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_status49 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 43
  %51 = load i32, i32* %d_status49, align 4
  %tobool50 = icmp ne i32 %51, 0
  br i1 %tobool50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.then.48
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_status_bell52 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 44
  store i8 1, i8* %d_status_bell52, align 1
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.53
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_statusev = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 53
  %54 = load i32, i32* @VBellWait, align 4
  call void @SetTimeout(%struct.event* %d_statusev, i32 %54)
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %if.then.48
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %lor.lhs.false.46, %land.lhs.true.41, %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.37
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %55 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 0
  %56 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %56, %struct.display** @display, align 8
  br label %for.cond.27

for.end.59:                                       ; preds = %for.cond.27
  %57 = load %struct.win*, %struct.win** %p, align 8
  %w_monitor = getelementptr inbounds %struct.win, %struct.win* %57, i32 0, i32 70
  %58 = load i32, i32* %w_monitor, align 4
  %cmp60 = icmp eq i32 %58, 2
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %for.end.59
  %59 = load %struct.win*, %struct.win** %p, align 8
  %w_monitor62 = getelementptr inbounds %struct.win, %struct.win* %59, i32 0, i32 70
  store i32 3, i32* %w_monitor62, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %for.end.59
  %60 = load %struct.win*, %struct.win** %p, align 8
  call void @WindowChanged(%struct.win* %60, i32 102)
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %lor.lhs.false
  %61 = load %struct.win*, %struct.win** %p, align 8
  %w_monitor65 = getelementptr inbounds %struct.win, %struct.win* %61, i32 0, i32 70
  %62 = load i32, i32* %w_monitor65, align 4
  %cmp66 = icmp eq i32 %62, 2
  br i1 %cmp66, label %if.then.67, label %if.end.103

if.then.67:                                       ; preds = %if.end.64
  %63 = load %struct.win*, %struct.win** %p, align 8
  %w_monitor69 = getelementptr inbounds %struct.win, %struct.win* %63, i32 0, i32 70
  store i32 1, i32* %w_monitor69, align 4
  %64 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %64, %struct.display** @display, align 8
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.100, %if.then.67
  %65 = load %struct.display*, %struct.display** @display, align 8
  %tobool71 = icmp ne %struct.display* %65, null
  br i1 %tobool71, label %for.body.72, label %for.end.102

for.body.72:                                      ; preds = %for.cond.70
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist73 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 3
  %67 = load %struct.canvas*, %struct.canvas** %d_cvlist73, align 8
  store %struct.canvas* %67, %struct.canvas** %cv68, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.83, %for.body.72
  %68 = load %struct.canvas*, %struct.canvas** %cv68, align 8
  %tobool75 = icmp ne %struct.canvas* %68, null
  br i1 %tobool75, label %for.body.76, label %for.end.85

for.body.76:                                      ; preds = %for.cond.74
  %69 = load %struct.canvas*, %struct.canvas** %cv68, align 8
  %c_layer77 = getelementptr inbounds %struct.canvas, %struct.canvas* %69, i32 0, i32 9
  %70 = load %struct.layer*, %struct.layer** %c_layer77, align 8
  %l_bottom78 = getelementptr inbounds %struct.layer, %struct.layer* %70, i32 0, i32 9
  %71 = load %struct.layer*, %struct.layer** %l_bottom78, align 8
  %72 = load %struct.win*, %struct.win** %p, align 8
  %w_layer79 = getelementptr inbounds %struct.win, %struct.win* %72, i32 0, i32 3
  %cmp80 = icmp eq %struct.layer* %71, %w_layer79
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.body.76
  br label %for.end.85

if.end.82:                                        ; preds = %for.body.76
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %73 = load %struct.canvas*, %struct.canvas** %cv68, align 8
  %c_next84 = getelementptr inbounds %struct.canvas, %struct.canvas* %73, i32 0, i32 0
  %74 = load %struct.canvas*, %struct.canvas** %c_next84, align 8
  store %struct.canvas* %74, %struct.canvas** %cv68, align 8
  br label %for.cond.74

for.end.85:                                       ; preds = %if.then.81, %for.cond.74
  %75 = load %struct.canvas*, %struct.canvas** %cv68, align 8
  %tobool86 = icmp ne %struct.canvas* %75, null
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.end.85
  br label %for.inc.100

if.end.88:                                        ; preds = %for.end.85
  %76 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %76, i32 0, i32 1
  %77 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %u_id = getelementptr inbounds %struct.acluser, %struct.acluser* %77, i32 0, i32 9
  %78 = load i32, i32* %u_id, align 4
  %shr = ashr i32 %78, 3
  %idxprom = sext i32 %shr to i64
  %79 = load %struct.win*, %struct.win** %p, align 8
  %w_mon_notify = getelementptr inbounds %struct.win, %struct.win* %79, i32 0, i32 33
  %80 = load i8*, i8** %w_mon_notify, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %80, i64 %idxprom
  %81 = load i8, i8* %arrayidx89, align 1
  %conv = zext i8 %81 to i32
  %82 = load %struct.display*, %struct.display** @display, align 8
  %d_user90 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 1
  %83 = load %struct.acluser*, %struct.acluser** %d_user90, align 8
  %u_id91 = getelementptr inbounds %struct.acluser, %struct.acluser* %83, i32 0, i32 9
  %84 = load i32, i32* %u_id91, align 4
  %and92 = and i32 %84, 7
  %shr93 = ashr i32 128, %and92
  %and94 = and i32 %conv, %shr93
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.end.88
  br label %for.inc.100

if.end.97:                                        ; preds = %if.end.88
  %85 = load i8*, i8** @ActivityString, align 8
  %86 = load %struct.win*, %struct.win** %p, align 8
  %call98 = call i8* @MakeWinMsg(i8* %85, %struct.win* %86, i32 37)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* %call98)
  %87 = load %struct.win*, %struct.win** %p, align 8
  %w_monitor99 = getelementptr inbounds %struct.win, %struct.win* %87, i32 0, i32 70
  store i32 3, i32* %w_monitor99, align 4
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.97, %if.then.96, %if.then.87
  %88 = load %struct.display*, %struct.display** @display, align 8
  %d_next101 = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 0
  %89 = load %struct.display*, %struct.display** %d_next101, align 8
  store %struct.display* %89, %struct.display** @display, align 8
  br label %for.cond.70

for.end.102:                                      ; preds = %for.cond.70
  %90 = load %struct.win*, %struct.win** %p, align 8
  call void @WindowChanged(%struct.win* %90, i32 102)
  br label %if.end.103

if.end.103:                                       ; preds = %for.end.102, %if.end.64
  %91 = load %struct.win*, %struct.win** %p, align 8
  %w_silence = getelementptr inbounds %struct.win, %struct.win* %91, i32 0, i32 72
  %92 = load i32, i32* %w_silence, align 4
  %cmp104 = icmp eq i32 %92, 2
  br i1 %cmp104, label %if.then.106, label %if.end.112

if.then.106:                                      ; preds = %if.end.103
  %93 = load %struct.win*, %struct.win** %p, align 8
  %w_layer107 = getelementptr inbounds %struct.win, %struct.win* %93, i32 0, i32 3
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %w_layer107, i32 0, i32 0
  %94 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool108 = icmp ne %struct.canvas* %94, null
  br i1 %tobool108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.then.106
  %95 = load %struct.win*, %struct.win** %p, align 8
  %w_silence110 = getelementptr inbounds %struct.win, %struct.win* %95, i32 0, i32 72
  store i32 1, i32* %w_silence110, align 4
  %96 = load %struct.win*, %struct.win** %p, align 8
  call void @WindowChanged(%struct.win* %96, i32 102)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %if.then.106
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.103
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %97 = load %struct.win*, %struct.win** %p, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %97, i32 0, i32 0
  %98 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %98, %struct.win** %p, align 8
  br label %for.cond

for.end.114:                                      ; preds = %for.cond
  %99 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %99, %struct.display** @display, align 8
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.416, %for.end.114
  %100 = load %struct.display*, %struct.display** @display, align 8
  %tobool116 = icmp ne %struct.display* %100, null
  br i1 %tobool116, label %for.body.117, label %for.end.418

for.body.117:                                     ; preds = %for.cond.115
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_status119 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 43
  %102 = load i32, i32* %d_status119, align 4
  %cmp120 = icmp eq i32 %102, 1
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.body.117
  br label %for.inc.416

if.end.123:                                       ; preds = %for.body.117
  %103 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist124 = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 3
  %104 = load %struct.canvas*, %struct.canvas** %d_cvlist124, align 8
  store %struct.canvas* %104, %struct.canvas** %cv118, align 8
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.413, %if.end.123
  %105 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %tobool126 = icmp ne %struct.canvas* %105, null
  br i1 %tobool126, label %for.body.127, label %for.end.415

for.body.127:                                     ; preds = %for.cond.125
  %106 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer128 = getelementptr inbounds %struct.canvas, %struct.canvas* %106, i32 0, i32 9
  %107 = load %struct.layer*, %struct.layer** %c_layer128, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %107, i32 0, i32 3
  %108 = load i32, i32* %l_x, align 4
  store i32 %108, i32* %lx, align 4
  %109 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer129 = getelementptr inbounds %struct.canvas, %struct.canvas* %109, i32 0, i32 9
  %110 = load %struct.layer*, %struct.layer** %c_layer129, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %110, i32 0, i32 4
  %111 = load i32, i32* %l_y, align 4
  store i32 %111, i32* %ly, align 4
  %112 = load i32, i32* %lx, align 4
  %113 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer130 = getelementptr inbounds %struct.canvas, %struct.canvas* %113, i32 0, i32 9
  %114 = load %struct.layer*, %struct.layer** %c_layer130, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %114, i32 0, i32 1
  %115 = load i32, i32* %l_width, align 4
  %cmp131 = icmp eq i32 %112, %115
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %for.body.127
  %116 = load i32, i32* %lx, align 4
  %dec = add nsw i32 %116, -1
  store i32 %dec, i32* %lx, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %for.body.127
  %117 = load i32, i32* %ly, align 4
  %118 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %118, i32 0, i32 13
  %119 = load i32, i32* %c_yoff, align 4
  %add = add nsw i32 %117, %119
  %120 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %120, i32 0, i32 16
  %121 = load i32, i32* %c_ys, align 4
  %cmp135 = icmp slt i32 %add, %121
  br i1 %cmp135, label %if.then.137, label %if.else.176

if.then.137:                                      ; preds = %if.end.134
  %122 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_ys138 = getelementptr inbounds %struct.canvas, %struct.canvas* %122, i32 0, i32 16
  %123 = load i32, i32* %c_ys138, align 4
  %124 = load i32, i32* %ly, align 4
  %125 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_yoff139 = getelementptr inbounds %struct.canvas, %struct.canvas* %125, i32 0, i32 13
  %126 = load i32, i32* %c_yoff139, align 4
  %add140 = add nsw i32 %124, %126
  %sub = sub nsw i32 %123, %add140
  store i32 %sub, i32* %n, align 4
  %127 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_ys141 = getelementptr inbounds %struct.canvas, %struct.canvas* %127, i32 0, i32 16
  %128 = load i32, i32* %c_ys141, align 4
  %129 = load i32, i32* %ly, align 4
  %sub142 = sub nsw i32 %128, %129
  %130 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_yoff143 = getelementptr inbounds %struct.canvas, %struct.canvas* %130, i32 0, i32 13
  store i32 %sub142, i32* %c_yoff143, align 4
  %131 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  call void @RethinkViewportOffsets(%struct.canvas* %131)
  %132 = load i32, i32* %n, align 4
  %133 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer144 = getelementptr inbounds %struct.canvas, %struct.canvas* %133, i32 0, i32 9
  %134 = load %struct.layer*, %struct.layer** %c_layer144, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %134, i32 0, i32 2
  %135 = load i32, i32* %l_height, align 4
  %cmp145 = icmp sgt i32 %132, %135
  br i1 %cmp145, label %if.then.147, label %if.end.150

if.then.147:                                      ; preds = %if.then.137
  %136 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer148 = getelementptr inbounds %struct.canvas, %struct.canvas* %136, i32 0, i32 9
  %137 = load %struct.layer*, %struct.layer** %c_layer148, align 8
  %l_height149 = getelementptr inbounds %struct.layer, %struct.layer* %137, i32 0, i32 2
  %138 = load i32, i32* %l_height149, align 4
  store i32 %138, i32* %n, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.147, %if.then.137
  %139 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %139, %struct.display** %olddisplay, align 8
  %140 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %140, %struct.layer** %oldflayer, align 8
  %141 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer151 = getelementptr inbounds %struct.canvas, %struct.canvas* %141, i32 0, i32 9
  %142 = load %struct.layer*, %struct.layer** %c_layer151, align 8
  store %struct.layer* %142, %struct.layer** %l, align 8
  %143 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist152 = getelementptr inbounds %struct.layer, %struct.layer* %143, i32 0, i32 0
  %144 = load %struct.canvas*, %struct.canvas** %l_cvlist152, align 8
  store %struct.canvas* %144, %struct.canvas** %cvlist, align 8
  %145 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %145, i32 0, i32 10
  %146 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %146, %struct.canvas** %cvlnext, align 8
  %147 = load %struct.layer*, %struct.layer** %l, align 8
  store %struct.layer* %147, %struct.layer** @flayer, align 8
  %148 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %149 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist153 = getelementptr inbounds %struct.layer, %struct.layer* %149, i32 0, i32 0
  store %struct.canvas* %148, %struct.canvas** %l_cvlist153, align 8
  %150 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext154 = getelementptr inbounds %struct.canvas, %struct.canvas* %150, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext154, align 8
  %151 = load %struct.layer*, %struct.layer** @flayer, align 8
  %152 = load i32, i32* %n, align 4
  %sub155 = sub nsw i32 0, %152
  %153 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height156 = getelementptr inbounds %struct.layer, %struct.layer* %153, i32 0, i32 2
  %154 = load i32, i32* %l_height156, align 4
  %sub157 = sub nsw i32 %154, 1
  call void @LScrollV(%struct.layer* %151, i32 %sub155, i32 0, i32 %sub157, i32 0)
  %155 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %155, i32 0, i32 6
  %156 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayRedisplayLine = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %156, i32 0, i32 2
  %157 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine, align 8
  call void %157(i32 -1, i32 -1, i32 -1, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.166, %if.end.150
  %158 = load i32, i32* %i, align 4
  %159 = load i32, i32* %n, align 4
  %cmp159 = icmp slt i32 %158, %159
  br i1 %cmp159, label %for.body.161, label %for.end.167

for.body.161:                                     ; preds = %for.cond.158
  %160 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn162 = getelementptr inbounds %struct.layer, %struct.layer* %160, i32 0, i32 6
  %161 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn162, align 8
  %lf_LayRedisplayLine163 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %161, i32 0, i32 2
  %162 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine163, align 8
  %163 = load i32, i32* %i, align 4
  %164 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width164 = getelementptr inbounds %struct.layer, %struct.layer* %164, i32 0, i32 1
  %165 = load i32, i32* %l_width164, align 4
  %sub165 = sub nsw i32 %165, 1
  call void %162(i32 %163, i32 0, i32 %sub165, i32 1)
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.body.161
  %166 = load i32, i32* %i, align 4
  %inc = add nsw i32 %166, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.158

for.end.167:                                      ; preds = %for.cond.158
  %167 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %168 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %168, i32 0, i32 1
  %169 = load %struct.display*, %struct.display** %c_display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %169, i32 0, i32 4
  %170 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp168 = icmp eq %struct.canvas* %167, %170
  br i1 %cmp168, label %if.then.170, label %if.end.173

if.then.170:                                      ; preds = %for.end.167
  %171 = load %struct.layer*, %struct.layer** @flayer, align 8
  %172 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x171 = getelementptr inbounds %struct.layer, %struct.layer* %172, i32 0, i32 3
  %173 = load i32, i32* %l_x171, align 4
  %174 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y172 = getelementptr inbounds %struct.layer, %struct.layer* %174, i32 0, i32 4
  %175 = load i32, i32* %l_y172, align 4
  call void @LGotoPos(%struct.layer* %171, i32 %173, i32 %175)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.170, %for.end.167
  %176 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %176, %struct.layer** @flayer, align 8
  %177 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %178 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist174 = getelementptr inbounds %struct.layer, %struct.layer* %178, i32 0, i32 0
  store %struct.canvas* %177, %struct.canvas** %l_cvlist174, align 8
  %179 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %180 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext175 = getelementptr inbounds %struct.canvas, %struct.canvas* %180, i32 0, i32 10
  store %struct.canvas* %179, %struct.canvas** %c_lnext175, align 8
  %181 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %181, %struct.display** @display, align 8
  br label %if.end.239

if.else.176:                                      ; preds = %if.end.134
  %182 = load i32, i32* %ly, align 4
  %183 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_yoff177 = getelementptr inbounds %struct.canvas, %struct.canvas* %183, i32 0, i32 13
  %184 = load i32, i32* %c_yoff177, align 4
  %add178 = add nsw i32 %182, %184
  %185 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %185, i32 0, i32 17
  %186 = load i32, i32* %c_ye, align 4
  %cmp179 = icmp sgt i32 %add178, %186
  br i1 %cmp179, label %if.then.181, label %if.end.238

if.then.181:                                      ; preds = %if.else.176
  %187 = load i32, i32* %ly, align 4
  %188 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_yoff184 = getelementptr inbounds %struct.canvas, %struct.canvas* %188, i32 0, i32 13
  %189 = load i32, i32* %c_yoff184, align 4
  %add185 = add nsw i32 %187, %189
  %190 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_ye186 = getelementptr inbounds %struct.canvas, %struct.canvas* %190, i32 0, i32 17
  %191 = load i32, i32* %c_ye186, align 4
  %sub187 = sub nsw i32 %add185, %191
  store i32 %sub187, i32* %n183, align 4
  %192 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_ye188 = getelementptr inbounds %struct.canvas, %struct.canvas* %192, i32 0, i32 17
  %193 = load i32, i32* %c_ye188, align 4
  %194 = load i32, i32* %ly, align 4
  %sub189 = sub nsw i32 %193, %194
  %195 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_yoff190 = getelementptr inbounds %struct.canvas, %struct.canvas* %195, i32 0, i32 13
  store i32 %sub189, i32* %c_yoff190, align 4
  %196 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  call void @RethinkViewportOffsets(%struct.canvas* %196)
  %197 = load i32, i32* %n183, align 4
  %198 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer191 = getelementptr inbounds %struct.canvas, %struct.canvas* %198, i32 0, i32 9
  %199 = load %struct.layer*, %struct.layer** %c_layer191, align 8
  %l_height192 = getelementptr inbounds %struct.layer, %struct.layer* %199, i32 0, i32 2
  %200 = load i32, i32* %l_height192, align 4
  %cmp193 = icmp sgt i32 %197, %200
  br i1 %cmp193, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %if.then.181
  %201 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer196 = getelementptr inbounds %struct.canvas, %struct.canvas* %201, i32 0, i32 9
  %202 = load %struct.layer*, %struct.layer** %c_layer196, align 8
  %l_height197 = getelementptr inbounds %struct.layer, %struct.layer* %202, i32 0, i32 2
  %203 = load i32, i32* %l_height197, align 4
  store i32 %203, i32* %n183, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.195, %if.then.181
  %204 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %204, %struct.display** %olddisplay199, align 8
  %205 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %205, %struct.layer** %oldflayer200, align 8
  %206 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer202 = getelementptr inbounds %struct.canvas, %struct.canvas* %206, i32 0, i32 9
  %207 = load %struct.layer*, %struct.layer** %c_layer202, align 8
  store %struct.layer* %207, %struct.layer** %l201, align 8
  %208 = load %struct.layer*, %struct.layer** %l201, align 8
  %l_cvlist204 = getelementptr inbounds %struct.layer, %struct.layer* %208, i32 0, i32 0
  %209 = load %struct.canvas*, %struct.canvas** %l_cvlist204, align 8
  store %struct.canvas* %209, %struct.canvas** %cvlist203, align 8
  %210 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext206 = getelementptr inbounds %struct.canvas, %struct.canvas* %210, i32 0, i32 10
  %211 = load %struct.canvas*, %struct.canvas** %c_lnext206, align 8
  store %struct.canvas* %211, %struct.canvas** %cvlnext205, align 8
  %212 = load %struct.layer*, %struct.layer** %l201, align 8
  store %struct.layer* %212, %struct.layer** @flayer, align 8
  %213 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %214 = load %struct.layer*, %struct.layer** %l201, align 8
  %l_cvlist207 = getelementptr inbounds %struct.layer, %struct.layer* %214, i32 0, i32 0
  store %struct.canvas* %213, %struct.canvas** %l_cvlist207, align 8
  %215 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext208 = getelementptr inbounds %struct.canvas, %struct.canvas* %215, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext208, align 8
  %216 = load %struct.layer*, %struct.layer** @flayer, align 8
  %217 = load i32, i32* %n183, align 4
  %218 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer209 = getelementptr inbounds %struct.canvas, %struct.canvas* %218, i32 0, i32 9
  %219 = load %struct.layer*, %struct.layer** %c_layer209, align 8
  %l_height210 = getelementptr inbounds %struct.layer, %struct.layer* %219, i32 0, i32 2
  %220 = load i32, i32* %l_height210, align 4
  %sub211 = sub nsw i32 %220, 1
  call void @LScrollV(%struct.layer* %216, i32 %217, i32 0, i32 %sub211, i32 0)
  %221 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn212 = getelementptr inbounds %struct.layer, %struct.layer* %221, i32 0, i32 6
  %222 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn212, align 8
  %lf_LayRedisplayLine213 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %222, i32 0, i32 2
  %223 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine213, align 8
  call void %223(i32 -1, i32 -1, i32 -1, i32 1)
  store i32 0, i32* %i182, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.225, %if.end.198
  %224 = load i32, i32* %i182, align 4
  %225 = load i32, i32* %n183, align 4
  %cmp215 = icmp slt i32 %224, %225
  br i1 %cmp215, label %for.body.217, label %for.end.227

for.body.217:                                     ; preds = %for.cond.214
  %226 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn218 = getelementptr inbounds %struct.layer, %struct.layer* %226, i32 0, i32 6
  %227 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn218, align 8
  %lf_LayRedisplayLine219 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %227, i32 0, i32 2
  %228 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine219, align 8
  %229 = load i32, i32* %i182, align 4
  %230 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height220 = getelementptr inbounds %struct.layer, %struct.layer* %230, i32 0, i32 2
  %231 = load i32, i32* %l_height220, align 4
  %add221 = add nsw i32 %229, %231
  %232 = load i32, i32* %n183, align 4
  %sub222 = sub nsw i32 %add221, %232
  %233 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width223 = getelementptr inbounds %struct.layer, %struct.layer* %233, i32 0, i32 1
  %234 = load i32, i32* %l_width223, align 4
  %sub224 = sub nsw i32 %234, 1
  call void %228(i32 %sub222, i32 0, i32 %sub224, i32 1)
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.body.217
  %235 = load i32, i32* %i182, align 4
  %inc226 = add nsw i32 %235, 1
  store i32 %inc226, i32* %i182, align 4
  br label %for.cond.214

for.end.227:                                      ; preds = %for.cond.214
  %236 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %237 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_display228 = getelementptr inbounds %struct.canvas, %struct.canvas* %237, i32 0, i32 1
  %238 = load %struct.display*, %struct.display** %c_display228, align 8
  %d_forecv229 = getelementptr inbounds %struct.display, %struct.display* %238, i32 0, i32 4
  %239 = load %struct.canvas*, %struct.canvas** %d_forecv229, align 8
  %cmp230 = icmp eq %struct.canvas* %236, %239
  br i1 %cmp230, label %if.then.232, label %if.end.235

if.then.232:                                      ; preds = %for.end.227
  %240 = load %struct.layer*, %struct.layer** @flayer, align 8
  %241 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x233 = getelementptr inbounds %struct.layer, %struct.layer* %241, i32 0, i32 3
  %242 = load i32, i32* %l_x233, align 4
  %243 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y234 = getelementptr inbounds %struct.layer, %struct.layer* %243, i32 0, i32 4
  %244 = load i32, i32* %l_y234, align 4
  call void @LGotoPos(%struct.layer* %240, i32 %242, i32 %244)
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.232, %for.end.227
  %245 = load %struct.layer*, %struct.layer** %oldflayer200, align 8
  store %struct.layer* %245, %struct.layer** @flayer, align 8
  %246 = load %struct.canvas*, %struct.canvas** %cvlist203, align 8
  %247 = load %struct.layer*, %struct.layer** %l201, align 8
  %l_cvlist236 = getelementptr inbounds %struct.layer, %struct.layer* %247, i32 0, i32 0
  store %struct.canvas* %246, %struct.canvas** %l_cvlist236, align 8
  %248 = load %struct.canvas*, %struct.canvas** %cvlnext205, align 8
  %249 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext237 = getelementptr inbounds %struct.canvas, %struct.canvas* %249, i32 0, i32 10
  store %struct.canvas* %248, %struct.canvas** %c_lnext237, align 8
  %250 = load %struct.display*, %struct.display** %olddisplay199, align 8
  store %struct.display* %250, %struct.display** @display, align 8
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.235, %if.else.176
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.end.173
  %251 = load i32, i32* %lx, align 4
  %252 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %252, i32 0, i32 12
  %253 = load i32, i32* %c_xoff, align 4
  %add240 = add nsw i32 %251, %253
  %254 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %254, i32 0, i32 14
  %255 = load i32, i32* %c_xs, align 4
  %cmp241 = icmp slt i32 %add240, %255
  br i1 %cmp241, label %if.then.243, label %if.else.318

if.then.243:                                      ; preds = %if.end.239
  %256 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xs246 = getelementptr inbounds %struct.canvas, %struct.canvas* %256, i32 0, i32 14
  %257 = load i32, i32* %c_xs246, align 4
  %258 = load i32, i32* %lx, align 4
  %259 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xoff247 = getelementptr inbounds %struct.canvas, %struct.canvas* %259, i32 0, i32 12
  %260 = load i32, i32* %c_xoff247, align 4
  %add248 = add nsw i32 %258, %260
  %sub249 = sub nsw i32 %257, %add248
  store i32 %sub249, i32* %n245, align 4
  %261 = load i32, i32* %n245, align 4
  %262 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %262, i32 0, i32 15
  %263 = load i32, i32* %c_xe, align 4
  %264 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xs250 = getelementptr inbounds %struct.canvas, %struct.canvas* %264, i32 0, i32 14
  %265 = load i32, i32* %c_xs250, align 4
  %sub251 = sub nsw i32 %263, %265
  %add252 = add nsw i32 %sub251, 1
  %div = sdiv i32 %add252, 2
  %cmp253 = icmp slt i32 %261, %div
  br i1 %cmp253, label %if.then.255, label %if.end.261

if.then.255:                                      ; preds = %if.then.243
  %266 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xe256 = getelementptr inbounds %struct.canvas, %struct.canvas* %266, i32 0, i32 15
  %267 = load i32, i32* %c_xe256, align 4
  %268 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xs257 = getelementptr inbounds %struct.canvas, %struct.canvas* %268, i32 0, i32 14
  %269 = load i32, i32* %c_xs257, align 4
  %sub258 = sub nsw i32 %267, %269
  %add259 = add nsw i32 %sub258, 1
  %div260 = sdiv i32 %add259, 2
  store i32 %div260, i32* %n245, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.255, %if.then.243
  %270 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xoff262 = getelementptr inbounds %struct.canvas, %struct.canvas* %270, i32 0, i32 12
  %271 = load i32, i32* %c_xoff262, align 4
  %272 = load i32, i32* %n245, align 4
  %add263 = add nsw i32 %271, %272
  %273 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xs264 = getelementptr inbounds %struct.canvas, %struct.canvas* %273, i32 0, i32 14
  %274 = load i32, i32* %c_xs264, align 4
  %cmp265 = icmp sgt i32 %add263, %274
  br i1 %cmp265, label %if.then.267, label %if.end.271

if.then.267:                                      ; preds = %if.end.261
  %275 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xs268 = getelementptr inbounds %struct.canvas, %struct.canvas* %275, i32 0, i32 14
  %276 = load i32, i32* %c_xs268, align 4
  %277 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xoff269 = getelementptr inbounds %struct.canvas, %struct.canvas* %277, i32 0, i32 12
  %278 = load i32, i32* %c_xoff269, align 4
  %sub270 = sub nsw i32 %276, %278
  store i32 %sub270, i32* %n245, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.267, %if.end.261
  %279 = load i32, i32* %n245, align 4
  %280 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xoff272 = getelementptr inbounds %struct.canvas, %struct.canvas* %280, i32 0, i32 12
  %281 = load i32, i32* %c_xoff272, align 4
  %add273 = add nsw i32 %281, %279
  store i32 %add273, i32* %c_xoff272, align 4
  %282 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  call void @RethinkViewportOffsets(%struct.canvas* %282)
  %283 = load i32, i32* %n245, align 4
  %284 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer274 = getelementptr inbounds %struct.canvas, %struct.canvas* %284, i32 0, i32 9
  %285 = load %struct.layer*, %struct.layer** %c_layer274, align 8
  %l_width275 = getelementptr inbounds %struct.layer, %struct.layer* %285, i32 0, i32 1
  %286 = load i32, i32* %l_width275, align 4
  %cmp276 = icmp sgt i32 %283, %286
  br i1 %cmp276, label %if.then.278, label %if.end.281

if.then.278:                                      ; preds = %if.end.271
  %287 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer279 = getelementptr inbounds %struct.canvas, %struct.canvas* %287, i32 0, i32 9
  %288 = load %struct.layer*, %struct.layer** %c_layer279, align 8
  %l_width280 = getelementptr inbounds %struct.layer, %struct.layer* %288, i32 0, i32 1
  %289 = load i32, i32* %l_width280, align 4
  store i32 %289, i32* %n245, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.278, %if.end.271
  %290 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %290, %struct.display** %olddisplay282, align 8
  %291 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %291, %struct.layer** %oldflayer283, align 8
  %292 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer285 = getelementptr inbounds %struct.canvas, %struct.canvas* %292, i32 0, i32 9
  %293 = load %struct.layer*, %struct.layer** %c_layer285, align 8
  store %struct.layer* %293, %struct.layer** %l284, align 8
  %294 = load %struct.layer*, %struct.layer** %l284, align 8
  %l_cvlist287 = getelementptr inbounds %struct.layer, %struct.layer* %294, i32 0, i32 0
  %295 = load %struct.canvas*, %struct.canvas** %l_cvlist287, align 8
  store %struct.canvas* %295, %struct.canvas** %cvlist286, align 8
  %296 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext289 = getelementptr inbounds %struct.canvas, %struct.canvas* %296, i32 0, i32 10
  %297 = load %struct.canvas*, %struct.canvas** %c_lnext289, align 8
  store %struct.canvas* %297, %struct.canvas** %cvlnext288, align 8
  %298 = load %struct.layer*, %struct.layer** %l284, align 8
  store %struct.layer* %298, %struct.layer** @flayer, align 8
  %299 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %300 = load %struct.layer*, %struct.layer** %l284, align 8
  %l_cvlist290 = getelementptr inbounds %struct.layer, %struct.layer* %300, i32 0, i32 0
  store %struct.canvas* %299, %struct.canvas** %l_cvlist290, align 8
  %301 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext291 = getelementptr inbounds %struct.canvas, %struct.canvas* %301, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext291, align 8
  %302 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn292 = getelementptr inbounds %struct.layer, %struct.layer* %302, i32 0, i32 6
  %303 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn292, align 8
  %lf_LayRedisplayLine293 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %303, i32 0, i32 2
  %304 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine293, align 8
  call void %304(i32 -1, i32 -1, i32 -1, i32 1)
  store i32 0, i32* %i244, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.305, %if.end.281
  %305 = load i32, i32* %i244, align 4
  %306 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height295 = getelementptr inbounds %struct.layer, %struct.layer* %306, i32 0, i32 2
  %307 = load i32, i32* %l_height295, align 4
  %cmp296 = icmp slt i32 %305, %307
  br i1 %cmp296, label %for.body.298, label %for.end.307

for.body.298:                                     ; preds = %for.cond.294
  %308 = load %struct.layer*, %struct.layer** @flayer, align 8
  %309 = load i32, i32* %n245, align 4
  %sub299 = sub nsw i32 0, %309
  %310 = load i32, i32* %i244, align 4
  %311 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width300 = getelementptr inbounds %struct.layer, %struct.layer* %311, i32 0, i32 1
  %312 = load i32, i32* %l_width300, align 4
  %sub301 = sub nsw i32 %312, 1
  call void @LScrollH(%struct.layer* %308, i32 %sub299, i32 %310, i32 0, i32 %sub301, i32 0, %struct.mline* null)
  %313 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn302 = getelementptr inbounds %struct.layer, %struct.layer* %313, i32 0, i32 6
  %314 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn302, align 8
  %lf_LayRedisplayLine303 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %314, i32 0, i32 2
  %315 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine303, align 8
  %316 = load i32, i32* %i244, align 4
  %317 = load i32, i32* %n245, align 4
  %sub304 = sub nsw i32 %317, 1
  call void %315(i32 %316, i32 0, i32 %sub304, i32 1)
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.body.298
  %318 = load i32, i32* %i244, align 4
  %inc306 = add nsw i32 %318, 1
  store i32 %inc306, i32* %i244, align 4
  br label %for.cond.294

for.end.307:                                      ; preds = %for.cond.294
  %319 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %320 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_display308 = getelementptr inbounds %struct.canvas, %struct.canvas* %320, i32 0, i32 1
  %321 = load %struct.display*, %struct.display** %c_display308, align 8
  %d_forecv309 = getelementptr inbounds %struct.display, %struct.display* %321, i32 0, i32 4
  %322 = load %struct.canvas*, %struct.canvas** %d_forecv309, align 8
  %cmp310 = icmp eq %struct.canvas* %319, %322
  br i1 %cmp310, label %if.then.312, label %if.end.315

if.then.312:                                      ; preds = %for.end.307
  %323 = load %struct.layer*, %struct.layer** @flayer, align 8
  %324 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x313 = getelementptr inbounds %struct.layer, %struct.layer* %324, i32 0, i32 3
  %325 = load i32, i32* %l_x313, align 4
  %326 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y314 = getelementptr inbounds %struct.layer, %struct.layer* %326, i32 0, i32 4
  %327 = load i32, i32* %l_y314, align 4
  call void @LGotoPos(%struct.layer* %323, i32 %325, i32 %327)
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.312, %for.end.307
  %328 = load %struct.layer*, %struct.layer** %oldflayer283, align 8
  store %struct.layer* %328, %struct.layer** @flayer, align 8
  %329 = load %struct.canvas*, %struct.canvas** %cvlist286, align 8
  %330 = load %struct.layer*, %struct.layer** %l284, align 8
  %l_cvlist316 = getelementptr inbounds %struct.layer, %struct.layer* %330, i32 0, i32 0
  store %struct.canvas* %329, %struct.canvas** %l_cvlist316, align 8
  %331 = load %struct.canvas*, %struct.canvas** %cvlnext288, align 8
  %332 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext317 = getelementptr inbounds %struct.canvas, %struct.canvas* %332, i32 0, i32 10
  store %struct.canvas* %331, %struct.canvas** %c_lnext317, align 8
  %333 = load %struct.display*, %struct.display** %olddisplay282, align 8
  store %struct.display* %333, %struct.display** @display, align 8
  br label %if.end.412

if.else.318:                                      ; preds = %if.end.239
  %334 = load i32, i32* %lx, align 4
  %335 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xoff319 = getelementptr inbounds %struct.canvas, %struct.canvas* %335, i32 0, i32 12
  %336 = load i32, i32* %c_xoff319, align 4
  %add320 = add nsw i32 %334, %336
  %337 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xe321 = getelementptr inbounds %struct.canvas, %struct.canvas* %337, i32 0, i32 15
  %338 = load i32, i32* %c_xe321, align 4
  %cmp322 = icmp sgt i32 %add320, %338
  br i1 %cmp322, label %if.then.324, label %if.end.411

if.then.324:                                      ; preds = %if.else.318
  %339 = load i32, i32* %lx, align 4
  %340 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xoff327 = getelementptr inbounds %struct.canvas, %struct.canvas* %340, i32 0, i32 12
  %341 = load i32, i32* %c_xoff327, align 4
  %add328 = add nsw i32 %339, %341
  %342 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xe329 = getelementptr inbounds %struct.canvas, %struct.canvas* %342, i32 0, i32 15
  %343 = load i32, i32* %c_xe329, align 4
  %sub330 = sub nsw i32 %add328, %343
  store i32 %sub330, i32* %n326, align 4
  %344 = load i32, i32* %n326, align 4
  %345 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xe331 = getelementptr inbounds %struct.canvas, %struct.canvas* %345, i32 0, i32 15
  %346 = load i32, i32* %c_xe331, align 4
  %347 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xs332 = getelementptr inbounds %struct.canvas, %struct.canvas* %347, i32 0, i32 14
  %348 = load i32, i32* %c_xs332, align 4
  %sub333 = sub nsw i32 %346, %348
  %add334 = add nsw i32 %sub333, 1
  %div335 = sdiv i32 %add334, 2
  %cmp336 = icmp slt i32 %344, %div335
  br i1 %cmp336, label %if.then.338, label %if.end.344

if.then.338:                                      ; preds = %if.then.324
  %349 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xe339 = getelementptr inbounds %struct.canvas, %struct.canvas* %349, i32 0, i32 15
  %350 = load i32, i32* %c_xe339, align 4
  %351 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xs340 = getelementptr inbounds %struct.canvas, %struct.canvas* %351, i32 0, i32 14
  %352 = load i32, i32* %c_xs340, align 4
  %sub341 = sub nsw i32 %350, %352
  %add342 = add nsw i32 %sub341, 1
  %div343 = sdiv i32 %add342, 2
  store i32 %div343, i32* %n326, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.338, %if.then.324
  %353 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xoff345 = getelementptr inbounds %struct.canvas, %struct.canvas* %353, i32 0, i32 12
  %354 = load i32, i32* %c_xoff345, align 4
  %355 = load i32, i32* %n326, align 4
  %sub346 = sub nsw i32 %354, %355
  %356 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer347 = getelementptr inbounds %struct.canvas, %struct.canvas* %356, i32 0, i32 9
  %357 = load %struct.layer*, %struct.layer** %c_layer347, align 8
  %l_width348 = getelementptr inbounds %struct.layer, %struct.layer* %357, i32 0, i32 1
  %358 = load i32, i32* %l_width348, align 4
  %add349 = add nsw i32 %sub346, %358
  %sub350 = sub nsw i32 %add349, 1
  %359 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xe351 = getelementptr inbounds %struct.canvas, %struct.canvas* %359, i32 0, i32 15
  %360 = load i32, i32* %c_xe351, align 4
  %cmp352 = icmp slt i32 %sub350, %360
  br i1 %cmp352, label %if.then.354, label %if.end.362

if.then.354:                                      ; preds = %if.end.344
  %361 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xoff355 = getelementptr inbounds %struct.canvas, %struct.canvas* %361, i32 0, i32 12
  %362 = load i32, i32* %c_xoff355, align 4
  %363 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer356 = getelementptr inbounds %struct.canvas, %struct.canvas* %363, i32 0, i32 9
  %364 = load %struct.layer*, %struct.layer** %c_layer356, align 8
  %l_width357 = getelementptr inbounds %struct.layer, %struct.layer* %364, i32 0, i32 1
  %365 = load i32, i32* %l_width357, align 4
  %add358 = add nsw i32 %362, %365
  %sub359 = sub nsw i32 %add358, 1
  %366 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xe360 = getelementptr inbounds %struct.canvas, %struct.canvas* %366, i32 0, i32 15
  %367 = load i32, i32* %c_xe360, align 4
  %sub361 = sub nsw i32 %sub359, %367
  store i32 %sub361, i32* %n326, align 4
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.354, %if.end.344
  %368 = load i32, i32* %n326, align 4
  %369 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_xoff363 = getelementptr inbounds %struct.canvas, %struct.canvas* %369, i32 0, i32 12
  %370 = load i32, i32* %c_xoff363, align 4
  %sub364 = sub nsw i32 %370, %368
  store i32 %sub364, i32* %c_xoff363, align 4
  %371 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  call void @RethinkViewportOffsets(%struct.canvas* %371)
  %372 = load i32, i32* %n326, align 4
  %373 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer365 = getelementptr inbounds %struct.canvas, %struct.canvas* %373, i32 0, i32 9
  %374 = load %struct.layer*, %struct.layer** %c_layer365, align 8
  %l_width366 = getelementptr inbounds %struct.layer, %struct.layer* %374, i32 0, i32 1
  %375 = load i32, i32* %l_width366, align 4
  %cmp367 = icmp sgt i32 %372, %375
  br i1 %cmp367, label %if.then.369, label %if.end.372

if.then.369:                                      ; preds = %if.end.362
  %376 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer370 = getelementptr inbounds %struct.canvas, %struct.canvas* %376, i32 0, i32 9
  %377 = load %struct.layer*, %struct.layer** %c_layer370, align 8
  %l_width371 = getelementptr inbounds %struct.layer, %struct.layer* %377, i32 0, i32 1
  %378 = load i32, i32* %l_width371, align 4
  store i32 %378, i32* %n326, align 4
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.369, %if.end.362
  %379 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %379, %struct.display** %olddisplay373, align 8
  %380 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %380, %struct.layer** %oldflayer374, align 8
  %381 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_layer376 = getelementptr inbounds %struct.canvas, %struct.canvas* %381, i32 0, i32 9
  %382 = load %struct.layer*, %struct.layer** %c_layer376, align 8
  store %struct.layer* %382, %struct.layer** %l375, align 8
  %383 = load %struct.layer*, %struct.layer** %l375, align 8
  %l_cvlist378 = getelementptr inbounds %struct.layer, %struct.layer* %383, i32 0, i32 0
  %384 = load %struct.canvas*, %struct.canvas** %l_cvlist378, align 8
  store %struct.canvas* %384, %struct.canvas** %cvlist377, align 8
  %385 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext380 = getelementptr inbounds %struct.canvas, %struct.canvas* %385, i32 0, i32 10
  %386 = load %struct.canvas*, %struct.canvas** %c_lnext380, align 8
  store %struct.canvas* %386, %struct.canvas** %cvlnext379, align 8
  %387 = load %struct.layer*, %struct.layer** %l375, align 8
  store %struct.layer* %387, %struct.layer** @flayer, align 8
  %388 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %389 = load %struct.layer*, %struct.layer** %l375, align 8
  %l_cvlist381 = getelementptr inbounds %struct.layer, %struct.layer* %389, i32 0, i32 0
  store %struct.canvas* %388, %struct.canvas** %l_cvlist381, align 8
  %390 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext382 = getelementptr inbounds %struct.canvas, %struct.canvas* %390, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext382, align 8
  %391 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn383 = getelementptr inbounds %struct.layer, %struct.layer* %391, i32 0, i32 6
  %392 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn383, align 8
  %lf_LayRedisplayLine384 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %392, i32 0, i32 2
  %393 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine384, align 8
  call void %393(i32 -1, i32 -1, i32 -1, i32 1)
  store i32 0, i32* %i325, align 4
  br label %for.cond.385

for.cond.385:                                     ; preds = %for.inc.398, %if.end.372
  %394 = load i32, i32* %i325, align 4
  %395 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height386 = getelementptr inbounds %struct.layer, %struct.layer* %395, i32 0, i32 2
  %396 = load i32, i32* %l_height386, align 4
  %cmp387 = icmp slt i32 %394, %396
  br i1 %cmp387, label %for.body.389, label %for.end.400

for.body.389:                                     ; preds = %for.cond.385
  %397 = load %struct.layer*, %struct.layer** @flayer, align 8
  %398 = load i32, i32* %n326, align 4
  %399 = load i32, i32* %i325, align 4
  %400 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width390 = getelementptr inbounds %struct.layer, %struct.layer* %400, i32 0, i32 1
  %401 = load i32, i32* %l_width390, align 4
  %sub391 = sub nsw i32 %401, 1
  call void @LScrollH(%struct.layer* %397, i32 %398, i32 %399, i32 0, i32 %sub391, i32 0, %struct.mline* null)
  %402 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn392 = getelementptr inbounds %struct.layer, %struct.layer* %402, i32 0, i32 6
  %403 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn392, align 8
  %lf_LayRedisplayLine393 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %403, i32 0, i32 2
  %404 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine393, align 8
  %405 = load i32, i32* %i325, align 4
  %406 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width394 = getelementptr inbounds %struct.layer, %struct.layer* %406, i32 0, i32 1
  %407 = load i32, i32* %l_width394, align 4
  %408 = load i32, i32* %n326, align 4
  %sub395 = sub nsw i32 %407, %408
  %409 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width396 = getelementptr inbounds %struct.layer, %struct.layer* %409, i32 0, i32 1
  %410 = load i32, i32* %l_width396, align 4
  %sub397 = sub nsw i32 %410, 1
  call void %404(i32 %405, i32 %sub395, i32 %sub397, i32 1)
  br label %for.inc.398

for.inc.398:                                      ; preds = %for.body.389
  %411 = load i32, i32* %i325, align 4
  %inc399 = add nsw i32 %411, 1
  store i32 %inc399, i32* %i325, align 4
  br label %for.cond.385

for.end.400:                                      ; preds = %for.cond.385
  %412 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %413 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_display401 = getelementptr inbounds %struct.canvas, %struct.canvas* %413, i32 0, i32 1
  %414 = load %struct.display*, %struct.display** %c_display401, align 8
  %d_forecv402 = getelementptr inbounds %struct.display, %struct.display* %414, i32 0, i32 4
  %415 = load %struct.canvas*, %struct.canvas** %d_forecv402, align 8
  %cmp403 = icmp eq %struct.canvas* %412, %415
  br i1 %cmp403, label %if.then.405, label %if.end.408

if.then.405:                                      ; preds = %for.end.400
  %416 = load %struct.layer*, %struct.layer** @flayer, align 8
  %417 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x406 = getelementptr inbounds %struct.layer, %struct.layer* %417, i32 0, i32 3
  %418 = load i32, i32* %l_x406, align 4
  %419 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y407 = getelementptr inbounds %struct.layer, %struct.layer* %419, i32 0, i32 4
  %420 = load i32, i32* %l_y407, align 4
  call void @LGotoPos(%struct.layer* %416, i32 %418, i32 %420)
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.405, %for.end.400
  %421 = load %struct.layer*, %struct.layer** %oldflayer374, align 8
  store %struct.layer* %421, %struct.layer** @flayer, align 8
  %422 = load %struct.canvas*, %struct.canvas** %cvlist377, align 8
  %423 = load %struct.layer*, %struct.layer** %l375, align 8
  %l_cvlist409 = getelementptr inbounds %struct.layer, %struct.layer* %423, i32 0, i32 0
  store %struct.canvas* %422, %struct.canvas** %l_cvlist409, align 8
  %424 = load %struct.canvas*, %struct.canvas** %cvlnext379, align 8
  %425 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_lnext410 = getelementptr inbounds %struct.canvas, %struct.canvas* %425, i32 0, i32 10
  store %struct.canvas* %424, %struct.canvas** %c_lnext410, align 8
  %426 = load %struct.display*, %struct.display** %olddisplay373, align 8
  store %struct.display* %426, %struct.display** @display, align 8
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.408, %if.else.318
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.411, %if.end.315
  br label %for.inc.413

for.inc.413:                                      ; preds = %if.end.412
  %427 = load %struct.canvas*, %struct.canvas** %cv118, align 8
  %c_next414 = getelementptr inbounds %struct.canvas, %struct.canvas* %427, i32 0, i32 0
  %428 = load %struct.canvas*, %struct.canvas** %c_next414, align 8
  store %struct.canvas* %428, %struct.canvas** %cv118, align 8
  br label %for.cond.125

for.end.415:                                      ; preds = %for.cond.125
  br label %for.inc.416

for.inc.416:                                      ; preds = %for.end.415, %if.then.122
  %429 = load %struct.display*, %struct.display** @display, align 8
  %d_next417 = getelementptr inbounds %struct.display, %struct.display* %429, i32 0, i32 0
  %430 = load %struct.display*, %struct.display** %d_next417, align 8
  store %struct.display* %430, %struct.display** @display, align 8
  br label %for.cond.115

for.end.418:                                      ; preds = %for.cond.115
  %431 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %431, %struct.display** @display, align 8
  br label %for.cond.419

for.cond.419:                                     ; preds = %for.inc.458, %for.end.418
  %432 = load %struct.display*, %struct.display** @display, align 8
  %tobool420 = icmp ne %struct.display* %432, null
  br i1 %tobool420, label %for.body.421, label %for.end.460

for.body.421:                                     ; preds = %for.cond.419
  %433 = load %struct.display*, %struct.display** @display, align 8
  %d_status422 = getelementptr inbounds %struct.display, %struct.display* %433, i32 0, i32 43
  %434 = load i32, i32* %d_status422, align 4
  %cmp423 = icmp eq i32 %434, 1
  br i1 %cmp423, label %if.then.434, label %lor.lhs.false.425

lor.lhs.false.425:                                ; preds = %for.body.421
  %435 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist426 = getelementptr inbounds %struct.display, %struct.display* %435, i32 0, i32 3
  %436 = load %struct.canvas*, %struct.canvas** %d_cvlist426, align 8
  %cmp427 = icmp eq %struct.canvas* %436, null
  br i1 %cmp427, label %if.then.434, label %lor.lhs.false.429

lor.lhs.false.429:                                ; preds = %lor.lhs.false.425
  %437 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist430 = getelementptr inbounds %struct.display, %struct.display* %437, i32 0, i32 3
  %438 = load %struct.canvas*, %struct.canvas** %d_cvlist430, align 8
  %c_next431 = getelementptr inbounds %struct.canvas, %struct.canvas* %438, i32 0, i32 0
  %439 = load %struct.canvas*, %struct.canvas** %c_next431, align 8
  %cmp432 = icmp eq %struct.canvas* %439, null
  br i1 %cmp432, label %if.then.434, label %if.end.435

if.then.434:                                      ; preds = %lor.lhs.false.429, %lor.lhs.false.425, %for.body.421
  br label %for.inc.458

if.end.435:                                       ; preds = %lor.lhs.false.429
  br label %do.body.436

do.body.436:                                      ; preds = %if.end.435
  br label %do.end.437

do.end.437:                                       ; preds = %do.body.436
  %440 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %440, %struct.display** %olddisplay438, align 8
  %441 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %441, %struct.layer** %oldflayer439, align 8
  %442 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv441 = getelementptr inbounds %struct.display, %struct.display* %442, i32 0, i32 4
  %443 = load %struct.canvas*, %struct.canvas** %d_forecv441, align 8
  %c_layer442 = getelementptr inbounds %struct.canvas, %struct.canvas* %443, i32 0, i32 9
  %444 = load %struct.layer*, %struct.layer** %c_layer442, align 8
  store %struct.layer* %444, %struct.layer** %l440, align 8
  %445 = load %struct.layer*, %struct.layer** %l440, align 8
  %l_cvlist444 = getelementptr inbounds %struct.layer, %struct.layer* %445, i32 0, i32 0
  %446 = load %struct.canvas*, %struct.canvas** %l_cvlist444, align 8
  store %struct.canvas* %446, %struct.canvas** %cvlist443, align 8
  %447 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv446 = getelementptr inbounds %struct.display, %struct.display* %447, i32 0, i32 4
  %448 = load %struct.canvas*, %struct.canvas** %d_forecv446, align 8
  %c_lnext447 = getelementptr inbounds %struct.canvas, %struct.canvas* %448, i32 0, i32 10
  %449 = load %struct.canvas*, %struct.canvas** %c_lnext447, align 8
  store %struct.canvas* %449, %struct.canvas** %cvlnext445, align 8
  %450 = load %struct.layer*, %struct.layer** %l440, align 8
  store %struct.layer* %450, %struct.layer** @flayer, align 8
  %451 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv448 = getelementptr inbounds %struct.display, %struct.display* %451, i32 0, i32 4
  %452 = load %struct.canvas*, %struct.canvas** %d_forecv448, align 8
  %453 = load %struct.layer*, %struct.layer** %l440, align 8
  %l_cvlist449 = getelementptr inbounds %struct.layer, %struct.layer* %453, i32 0, i32 0
  store %struct.canvas* %452, %struct.canvas** %l_cvlist449, align 8
  %454 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv450 = getelementptr inbounds %struct.display, %struct.display* %454, i32 0, i32 4
  %455 = load %struct.canvas*, %struct.canvas** %d_forecv450, align 8
  %c_lnext451 = getelementptr inbounds %struct.canvas, %struct.canvas* %455, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext451, align 8
  %456 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn452 = getelementptr inbounds %struct.layer, %struct.layer* %456, i32 0, i32 6
  %457 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn452, align 8
  %lf_LayRestore = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %457, i32 0, i32 6
  %458 = load void ()*, void ()** %lf_LayRestore, align 8
  call void %458()
  %459 = load %struct.layer*, %struct.layer** @flayer, align 8
  %460 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x453 = getelementptr inbounds %struct.layer, %struct.layer* %460, i32 0, i32 3
  %461 = load i32, i32* %l_x453, align 4
  %462 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y454 = getelementptr inbounds %struct.layer, %struct.layer* %462, i32 0, i32 4
  %463 = load i32, i32* %l_y454, align 4
  call void @LGotoPos(%struct.layer* %459, i32 %461, i32 %463)
  %464 = load %struct.layer*, %struct.layer** %oldflayer439, align 8
  store %struct.layer* %464, %struct.layer** @flayer, align 8
  %465 = load %struct.canvas*, %struct.canvas** %cvlist443, align 8
  %466 = load %struct.layer*, %struct.layer** %l440, align 8
  %l_cvlist455 = getelementptr inbounds %struct.layer, %struct.layer* %466, i32 0, i32 0
  store %struct.canvas* %465, %struct.canvas** %l_cvlist455, align 8
  %467 = load %struct.canvas*, %struct.canvas** %cvlnext445, align 8
  %468 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv456 = getelementptr inbounds %struct.display, %struct.display* %468, i32 0, i32 4
  %469 = load %struct.canvas*, %struct.canvas** %d_forecv456, align 8
  %c_lnext457 = getelementptr inbounds %struct.canvas, %struct.canvas* %469, i32 0, i32 10
  store %struct.canvas* %467, %struct.canvas** %c_lnext457, align 8
  %470 = load %struct.display*, %struct.display** %olddisplay438, align 8
  store %struct.display* %470, %struct.display** @display, align 8
  br label %for.inc.458

for.inc.458:                                      ; preds = %do.end.437, %if.then.434
  %471 = load %struct.display*, %struct.display** @display, align 8
  %d_next459 = getelementptr inbounds %struct.display, %struct.display* %471, i32 0, i32 0
  %472 = load %struct.display*, %struct.display** %d_next459, align 8
  store %struct.display* %472, %struct.display** @display, align 8
  br label %for.cond.419

for.end.460:                                      ; preds = %for.cond.419
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @logflush_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  %buf = alloca i8*, align 8
  %n = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i32 @islogfile(i8* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @logfflush(%struct.logfile* null)
  %0 = load i32, i32* @log_flush, align 4
  %tobool2 = icmp ne i32 %0, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %1 = load i32, i32* @log_flush, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %2 = load i32, i32* @logtstamp_after, align 4
  %add = add nsw i32 %2, 4
  %div = sdiv i32 %add, 5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %div, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %3 = load i32, i32* %n, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  %4 = load %struct.event*, %struct.event** %ev.addr, align 8
  %5 = load i32, i32* %n, align 4
  %mul = mul nsw i32 %5, 1000
  call void @SetTimeout(%struct.event* %4, i32 %mul)
  %6 = load %struct.event*, %struct.event** %ev.addr, align 8
  call void @evenq(%struct.event* %6)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %cond.end
  %7 = load i32, i32* @logtstamp_on, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  br label %for.end

if.end.8:                                         ; preds = %if.end.5
  %8 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %8, %struct.win** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %9 = load %struct.win*, %struct.win** %p, align 8
  %tobool9 = icmp ne %struct.win* %9, null
  br i1 %tobool9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.win*, %struct.win** %p, align 8
  %w_log = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 68
  %11 = load %struct.logfile*, %struct.logfile** %w_log, align 8
  %tobool10 = icmp ne %struct.logfile* %11, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %for.body
  br label %for.inc

if.end.12:                                        ; preds = %for.body
  %12 = load i32, i32* %n, align 4
  %13 = load %struct.win*, %struct.win** %p, align 8
  %w_logsilence = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 69
  %14 = load i32, i32* %w_logsilence, align 4
  %add13 = add nsw i32 %14, %12
  store i32 %add13, i32* %w_logsilence, align 4
  %15 = load %struct.win*, %struct.win** %p, align 8
  %w_logsilence14 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 69
  %16 = load i32, i32* %w_logsilence14, align 4
  %17 = load i32, i32* @logtstamp_after, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %for.inc

if.end.16:                                        ; preds = %if.end.12
  %18 = load %struct.win*, %struct.win** %p, align 8
  %w_logsilence17 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 69
  %19 = load i32, i32* %w_logsilence17, align 4
  %20 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %19, %20
  %21 = load i32, i32* @logtstamp_after, align 4
  %cmp18 = icmp sge i32 %sub, %21
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %for.inc

if.end.20:                                        ; preds = %if.end.16
  %22 = load i8*, i8** @logtstamp_string, align 8
  %23 = load %struct.win*, %struct.win** %p, align 8
  %call21 = call i8* @MakeWinMsg(i8* %22, %struct.win* %23, i32 37)
  store i8* %call21, i8** %buf, align 8
  %24 = load %struct.win*, %struct.win** %p, align 8
  %w_log22 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 68
  %25 = load %struct.logfile*, %struct.logfile** %w_log22, align 8
  %26 = load i8*, i8** %buf, align 8
  %27 = load i8*, i8** %buf, align 8
  %call23 = call i64 @strlen(i8* %27) #9
  %conv = trunc i64 %call23 to i32
  %call24 = call i32 @logfwrite(%struct.logfile* %25, i8* %26, i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end.20, %if.then.19, %if.then.15, %if.then.11
  %28 = load %struct.win*, %struct.win** %p, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 0
  %29 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %29, %struct.win** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.7, %for.cond
  ret void
}

declare void @sched() #1

; Function Attrs: nounwind uwtable
define void @WindowDied(%struct.win* %p, i32 %wstat, i32 %wstat_valid) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %wstat.addr = alloca i32, align 4
  %wstat_valid.addr = alloca i32, align 4
  %killit = alloca i32, align 4
  %.compoundliteral = alloca %union.anon, align 4
  %.compoundliteral21 = alloca %union.anon.3, align 4
  %buf = alloca [100 x i8], align 16
  %s = alloca i8*, align 8
  %reason = alloca [100 x i8], align 16
  %now = alloca i64, align 8
  %.compoundliteral34 = alloca %union.anon.4, align 4
  %.compoundliteral40 = alloca %union.anon.5, align 4
  %.compoundliteral47 = alloca %union.anon.6, align 4
  %.compoundliteral57 = alloca %union.anon.7, align 4
  %.compoundliteral67 = alloca %union.anon.8, align 4
  %.compoundliteral71 = alloca %union.anon.9, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %wstat, i32* %wstat.addr, align 4
  store i32 %wstat_valid, i32* %wstat_valid.addr, align 4
  store i32 0, i32* %killit, align 4
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_destroyev = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 93
  %data = getelementptr inbounds %struct.event, %struct.event* %w_destroyev, i32 0, i32 2
  %1 = load i8*, i8** %data, align 8
  %2 = load %struct.win*, %struct.win** %p.addr, align 8
  %3 = bitcast %struct.win* %2 to i8*
  %cmp = icmp eq i8* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_exitstatus = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 94
  %5 = load i32, i32* %w_exitstatus, align 4
  store i32 %5, i32* %wstat.addr, align 4
  store i32 1, i32* %wstat_valid.addr, align 4
  %6 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_destroyev1 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 93
  call void @evdeq(%struct.event* %w_destroyev1)
  %7 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_destroyev2 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 93
  %data3 = getelementptr inbounds %struct.event, %struct.event* %w_destroyev2, i32 0, i32 2
  store i8* null, i8** %data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %wstat_valid.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pid = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 81
  %10 = load i32, i32* %w_pid, align 4
  %cmp4 = icmp sgt i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %land.lhs.true
  %11 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pid6 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 81
  %12 = load i32, i32* %w_pid6, align 4
  %call = call i32 @waitpid(i32 %12, i32* %wstat.addr, i32 3)
  %13 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pid7 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 81
  %14 = load i32, i32* %w_pid7, align 4
  %cmp8 = icmp eq i32 %call, %14
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.5
  %15 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pid10 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 81
  store i32 0, i32* %w_pid10, align 4
  store i32 1, i32* %wstat_valid.addr, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %land.lhs.true, %if.end
  %16 = load i32, i32* @ZombieKey_destroy, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.27

land.lhs.true.14:                                 ; preds = %if.end.12
  %17 = load i32, i32* @ZombieKey_onerror, align 4
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.27

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %18 = load i32, i32* %wstat_valid.addr, align 4
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.27

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %__in = bitcast %union.anon* %.compoundliteral to i32*
  %19 = load i32, i32* %wstat.addr, align 4
  store i32 %19, i32* %__in, align 4
  %__i = bitcast %union.anon* %.compoundliteral to i32*
  %20 = load i32, i32* %__i, align 4
  %and = and i32 %20, 127
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.27

land.lhs.true.20:                                 ; preds = %land.lhs.true.18
  %__in22 = bitcast %union.anon.3* %.compoundliteral21 to i32*
  %21 = load i32, i32* %wstat.addr, align 4
  store i32 %21, i32* %__in22, align 4
  %__i23 = bitcast %union.anon.3* %.compoundliteral21 to i32*
  %22 = load i32, i32* %__i23, align 4
  %and24 = and i32 %22, 65280
  %shr = ashr i32 %and24, 8
  %cmp25 = icmp eq i32 %shr, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.20
  store i32 1, i32* %killit, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true.20, %land.lhs.true.18, %land.lhs.true.16, %land.lhs.true.14, %if.end.12
  %23 = load i32, i32* @ZombieKey_destroy, align 4
  %tobool28 = icmp ne i32 %23, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.121

land.lhs.true.29:                                 ; preds = %if.end.27
  %24 = load i32, i32* %killit, align 4
  %tobool30 = icmp ne i32 %24, 0
  br i1 %tobool30, label %if.else.121, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true.29
  %25 = load i32, i32* %wstat_valid.addr, align 4
  %tobool32 = icmp ne i32 %25, 0
  br i1 %tobool32, label %if.then.33, label %if.else.79

if.then.33:                                       ; preds = %if.then.31
  %__in35 = bitcast %union.anon.4* %.compoundliteral34 to i32*
  %26 = load i32, i32* %wstat.addr, align 4
  store i32 %26, i32* %__in35, align 4
  %__i36 = bitcast %union.anon.4* %.compoundliteral34 to i32*
  %27 = load i32, i32* %__i36, align 4
  %and37 = and i32 %27, 127
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.56

if.then.39:                                       ; preds = %if.then.33
  %__in41 = bitcast %union.anon.5* %.compoundliteral40 to i32*
  %28 = load i32, i32* %wstat.addr, align 4
  store i32 %28, i32* %__in41, align 4
  %__i42 = bitcast %union.anon.5* %.compoundliteral40 to i32*
  %29 = load i32, i32* %__i42, align 4
  %and43 = and i32 %29, 65280
  %shr44 = ashr i32 %and43, 8
  %tobool45 = icmp ne i32 %shr44, 0
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.39
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %reason, i32 0, i32 0
  %__in48 = bitcast %union.anon.6* %.compoundliteral47 to i32*
  %30 = load i32, i32* %wstat.addr, align 4
  store i32 %30, i32* %__in48, align 4
  %__i49 = bitcast %union.anon.6* %.compoundliteral47 to i32*
  %31 = load i32, i32* %__i49, align 4
  %and50 = and i32 %31, 65280
  %shr51 = ashr i32 %and50, 8
  %call52 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.103, i32 0, i32 0), i32 %shr51) #3
  br label %if.end.55

if.else:                                          ; preds = %if.then.39
  %arraydecay53 = getelementptr inbounds [100 x i8], [100 x i8]* %reason, i32 0, i32 0
  %call54 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i32 0, i32 0)) #3
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.46
  br label %if.end.78

if.else.56:                                       ; preds = %if.then.33
  %__in58 = bitcast %union.anon.7* %.compoundliteral57 to i32*
  %32 = load i32, i32* %wstat.addr, align 4
  store i32 %32, i32* %__in58, align 4
  %__i59 = bitcast %union.anon.7* %.compoundliteral57 to i32*
  %33 = load i32, i32* %__i59, align 4
  %and60 = and i32 %33, 127
  %add = add nsw i32 %and60, 1
  %conv = trunc i32 %add to i8
  %conv61 = sext i8 %conv to i32
  %shr62 = ashr i32 %conv61, 1
  %cmp63 = icmp sgt i32 %shr62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.77

if.then.65:                                       ; preds = %if.else.56
  %arraydecay66 = getelementptr inbounds [100 x i8], [100 x i8]* %reason, i32 0, i32 0
  %__in68 = bitcast %union.anon.8* %.compoundliteral67 to i32*
  %34 = load i32, i32* %wstat.addr, align 4
  store i32 %34, i32* %__in68, align 4
  %__i69 = bitcast %union.anon.8* %.compoundliteral67 to i32*
  %35 = load i32, i32* %__i69, align 4
  %and70 = and i32 %35, 127
  %__in72 = bitcast %union.anon.9* %.compoundliteral71 to i32*
  %36 = load i32, i32* %wstat.addr, align 4
  store i32 %36, i32* %__in72, align 4
  %__i73 = bitcast %union.anon.9* %.compoundliteral71 to i32*
  %37 = load i32, i32* %__i73, align 4
  %and74 = and i32 %37, 128
  %tobool75 = icmp ne i32 %and74, 0
  %cond = select i1 %tobool75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  %call76 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.105, i32 0, i32 0), i32 %and70, i8* %cond) #3
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.65, %if.else.56
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.55
  br label %if.end.82

if.else.79:                                       ; preds = %if.then.31
  %arraydecay80 = getelementptr inbounds [100 x i8], [100 x i8]* %reason, i32 0, i32 0
  %call81 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.107, i32 0, i32 0)) #3
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.end.78
  %call83 = call i64 @time(i64* %now) #3
  %call84 = call i8* @ctime(i64* %now) #3
  store i8* %call84, i8** %s, align 8
  %38 = load i8*, i8** %s, align 8
  %tobool85 = icmp ne i8* %38, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.91

land.lhs.true.86:                                 ; preds = %if.end.82
  %39 = load i8*, i8** %s, align 8
  %40 = load i8, i8* %39, align 1
  %conv87 = sext i8 %40 to i32
  %tobool88 = icmp ne i32 %conv87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %land.lhs.true.86
  %41 = load i8*, i8** %s, align 8
  %call90 = call i64 @strlen(i8* %41) #9
  %sub = sub i64 %call90, 1
  %42 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %land.lhs.true.86, %if.end.82
  br label %do.body

do.body:                                          ; preds = %if.end.91
  br label %do.end

do.end:                                           ; preds = %do.body
  %43 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_slot = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 87
  %44 = load i8*, i8** %w_slot, align 8
  %cmp92 = icmp ne i8* %44, null
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.101

land.lhs.true.94:                                 ; preds = %do.end
  %45 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_slot95 = getelementptr inbounds %struct.win, %struct.win* %45, i32 0, i32 87
  %46 = load i8*, i8** %w_slot95, align 8
  %cmp96 = icmp ne i8* %46, inttoptr (i64 -1 to i8*)
  br i1 %cmp96, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %land.lhs.true.94
  %47 = load %struct.win*, %struct.win** %p.addr, align 8
  %call99 = call i32 @RemoveUtmp(%struct.win* %47)
  %48 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_slot100 = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 87
  store i8* null, i8** %w_slot100, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %land.lhs.true.94, %do.end
  %49 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @CloseDevice(%struct.win* %49)
  %50 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pid102 = getelementptr inbounds %struct.win, %struct.win* %50, i32 0, i32 81
  %51 = load i32, i32* %w_pid102, align 4
  %52 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_deadpid = getelementptr inbounds %struct.win, %struct.win* %52, i32 0, i32 82
  store i32 %51, i32* %w_deadpid, align 4
  %53 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pid103 = getelementptr inbounds %struct.win, %struct.win* %53, i32 0, i32 81
  store i32 0, i32* %w_pid103, align 4
  %54 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @ResetWindow(%struct.win* %54)
  %55 = load %struct.win*, %struct.win** %p.addr, align 8
  %56 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %56, i32 0, i32 47
  %57 = load i32, i32* %w_bot, align 4
  %call104 = call i32 @MFindUsedLine(%struct.win* %55, i32 %57, i32 1)
  %58 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %58, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  store i32 %call104, i32* %l_y, align 4
  %arraydecay105 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay106 = getelementptr inbounds [100 x i8], [100 x i8]* %reason, i32 0, i32 0
  %59 = load i8*, i8** %s, align 8
  %tobool107 = icmp ne i8* %59, null
  br i1 %tobool107, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.101
  %60 = load i8*, i8** %s, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.101
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond108 = phi i8* [ %60, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), %cond.false ]
  %call109 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.108, i32 0, i32 0), i8* %arraydecay106, i8* %cond108) #3
  %61 = load %struct.win*, %struct.win** %p.addr, align 8
  %arraydecay110 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay111 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call112 = call i64 @strlen(i8* %arraydecay111) #9
  %conv113 = trunc i64 %call112 to i32
  call void @WriteString(%struct.win* %61, i8* %arraydecay110, i32 %conv113)
  %62 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_poll_zombie_timeout = getelementptr inbounds %struct.win, %struct.win* %62, i32 0, i32 14
  %63 = load i32, i32* %w_poll_zombie_timeout, align 4
  %tobool114 = icmp ne i32 %63, 0
  br i1 %tobool114, label %if.then.115, label %if.end.120

if.then.115:                                      ; preds = %cond.end
  br label %do.body.116

do.body.116:                                      ; preds = %if.then.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.body.116
  %64 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zombieev = getelementptr inbounds %struct.win, %struct.win* %64, i32 0, i32 13
  %65 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_poll_zombie_timeout118 = getelementptr inbounds %struct.win, %struct.win* %65, i32 0, i32 14
  %66 = load i32, i32* %w_poll_zombie_timeout118, align 4
  %mul = mul nsw i32 %66, 1000
  call void @SetTimeout(%struct.event* %w_zombieev, i32 %mul)
  %67 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_zombieev119 = getelementptr inbounds %struct.win, %struct.win* %67, i32 0, i32 13
  call void @evenq(%struct.event* %w_zombieev119)
  br label %if.end.120

if.end.120:                                       ; preds = %do.end.117, %cond.end
  %68 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @WindowChanged(%struct.win* %68, i32 102)
  br label %if.end.122

if.else.121:                                      ; preds = %land.lhs.true.29, %if.end.27
  %69 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @KillWindow(%struct.win* %69)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.end.120
  ret void
}

declare void @evdeq(%struct.event*) #1

declare i32 @waitpid(i32, i32*, i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

declare i32 @RemoveUtmp(%struct.win*) #1

declare void @CloseDevice(%struct.win*) #1

declare void @ResetWindow(%struct.win*) #1

declare i32 @MFindUsedLine(%struct.win*, i32, i32) #1

declare void @WriteString(%struct.win*, i8*, i32) #1

declare void @SetTimeout(%struct.event*, i32) #1

declare void @WindowChanged(%struct.win*, i32) #1

declare void @KillWindow(%struct.win*) #1

; Function Attrs: nounwind uwtable
define void @Hangup() #0 {
entry:
  %0 = load %struct.display*, %struct.display** @display, align 8
  %cmp = icmp eq %struct.display* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 59
  %2 = load i32, i32* %d_userfd, align 4
  %cmp1 = icmp sge i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %do.end
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd3 = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 59
  %4 = load i32, i32* %d_userfd3, align 4
  %call = call i32 @close(i32 %4)
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd4 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 59
  store i32 -1, i32* %d_userfd4, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %do.end
  %6 = load i32, i32* @auto_detach, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %7 = load %struct.display*, %struct.display** @displays, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 0
  %8 = load %struct.display*, %struct.display** %d_next, align 8
  %tobool6 = icmp ne %struct.display* %8, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.5
  call void @Detach(i32 6)
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  call void @Finit(i32 0)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.else, %if.then.7
  ret void
}

declare void @FreeWindow(%struct.win*) #1

declare void @xseteuid(i32) #1

declare void @xsetegid(i32) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare void @RemoveStatus() #1

declare void @FinitTerm() #1

declare void @RestoreLoginSlot() #1

declare void @AddStr(i8*) #1

declare void @Flush(i32) #1

; Function Attrs: nounwind uwtable
define void @Detach(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %sign = alloca i32, align 4
  %pid = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %p = alloca %struct.win*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 0, i32* %sign, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %cmp = icmp eq %struct.display* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call void (i32)* @xsignal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*))
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 43
  %2 = load i32, i32* %d_status, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  call void @RemoveStatus()
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %do.end
  call void @FinitTerm()
  %3 = load %struct.display*, %struct.display** @display, align 8
  %tobool3 = icmp ne %struct.display* %3, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %4 = load i32, i32* %mode.addr, align 4
  switch i32 %4, label %sw.epilog [
    i32 6, label %sw.bb
    i32 0, label %sw.bb.6
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.20
    i32 4, label %sw.bb.30
    i32 5, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %if.end.5
  store i32 1, i32* %sign, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %sw.bb.6
  %5 = load i8*, i8** @SockName, align 8
  %tobool8 = icmp ne i8* %5, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.7
  call void @AddStr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i32 0, i32 0))
  %6 = load i8*, i8** @SockName, align 8
  call void @AddStr(i8* %6)
  call void @AddStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i32 0, i32 0))
  br label %if.end.10

if.else:                                          ; preds = %do.body.7
  call void @AddStr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  store i32 1, i32* %sign, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end.5
  store i32 20, i32* %sign, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.5
  br label %do.body.14

do.body.14:                                       ; preds = %sw.bb.13
  %7 = load i8*, i8** @SockName, align 8
  %tobool15 = icmp ne i8* %7, null
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.14
  call void @AddStr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.114, i32 0, i32 0))
  %8 = load i8*, i8** @SockName, align 8
  call void @AddStr(i8* %8)
  call void @AddStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i32 0, i32 0))
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.14
  call void @AddStr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.115, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  store i32 1, i32* %sign, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.5
  br label %do.body.21

do.body.21:                                       ; preds = %sw.bb.20
  %9 = load i8*, i8** @SockName, align 8
  %tobool22 = icmp ne i8* %9, null
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.21
  call void @AddStr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.116, i32 0, i32 0))
  %10 = load i8*, i8** @SockName, align 8
  call void @AddStr(i8* %10)
  call void @AddStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i32 0, i32 0))
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.21
  call void @AddStr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.117, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %11 = load i8*, i8** @PowDetachString, align 8
  %tobool27 = icmp ne i8* %11, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.26
  %12 = load i8*, i8** @PowDetachString, align 8
  call void @AddStr(i8* %12)
  call void @AddStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %do.end.26
  store i32 10, i32* %sign, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.5
  br label %do.body.31

do.body.31:                                       ; preds = %sw.bb.30
  %13 = load i8*, i8** @SockName, align 8
  %tobool32 = icmp ne i8* %13, null
  br i1 %tobool32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.31
  call void @AddStr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.119, i32 0, i32 0))
  %14 = load i8*, i8** @SockName, align 8
  call void @AddStr(i8* %14)
  call void @AddStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i32 0, i32 0))
  br label %if.end.35

if.else.34:                                       ; preds = %do.body.31
  call void @AddStr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.120, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  %15 = load i8*, i8** @PowDetachString, align 8
  %tobool37 = icmp ne i8* %15, null
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.end.36
  %16 = load i8*, i8** @PowDetachString, align 8
  call void @AddStr(i8* %16)
  call void @AddStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %do.end.36
  store i32 10, i32* %sign, align 4
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.5
  call void @ClearAll()
  store i32 12, i32* %sign, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.5, %sw.bb.40, %if.end.39, %if.end.29, %do.end.19, %sw.bb.12, %do.end.11, %sw.bb
  %17 = load %struct.display*, %struct.display** @displays, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 0
  %18 = load %struct.display*, %struct.display** %d_next, align 8
  %cmp41 = icmp eq %struct.display* %18, null
  br i1 %cmp41, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %sw.epilog
  %19 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %19, %struct.win** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.42
  %20 = load %struct.win*, %struct.win** %p, align 8
  %tobool43 = icmp ne %struct.win* %20, null
  br i1 %tobool43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.win*, %struct.win** %p, align 8
  %w_slot = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 87
  %22 = load i8*, i8** %w_slot, align 8
  %cmp44 = icmp ne i8* %22, inttoptr (i64 -1 to i8*)
  br i1 %cmp44, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %for.body
  %23 = load %struct.win*, %struct.win** %p, align 8
  %w_lflag = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 86
  %24 = load i32, i32* %w_lflag, align 4
  %and = and i32 %24, 2
  %tobool45 = icmp ne i32 %and, 0
  br i1 %tobool45, label %if.end.49, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true
  %25 = load %struct.win*, %struct.win** %p, align 8
  %call47 = call i32 @RemoveUtmp(%struct.win* %25)
  %26 = load %struct.win*, %struct.win** %p, align 8
  %w_slot48 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 87
  store i8* null, i8** %w_slot48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %27 = load %struct.win*, %struct.win** %p, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 0
  %28 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %28, %struct.win** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %sw.epilog
  %29 = load i32, i32* %mode.addr, align 4
  %cmp51 = icmp ne i32 %29, 6
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  call void @RestoreLoginSlot()
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  %30 = load %struct.display*, %struct.display** @displays, align 8
  %d_next54 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 0
  %31 = load %struct.display*, %struct.display** %d_next54, align 8
  %cmp55 = icmp eq %struct.display* %31, null
  br i1 %cmp55, label %land.lhs.true.56, label %if.end.65

land.lhs.true.56:                                 ; preds = %if.end.53
  %32 = load %struct.win*, %struct.win** @console_window, align 8
  %tobool57 = icmp ne %struct.win* %32, null
  br i1 %tobool57, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %land.lhs.true.56
  %33 = load %struct.win*, %struct.win** @console_window, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 15
  %34 = load i32, i32* %w_ptyfd, align 4
  %call59 = call i32 @TtyGrabConsole(i32 %34, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0))
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %if.then.58
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  br label %do.end.63

do.end.63:                                        ; preds = %do.body.62
  %35 = load %struct.win*, %struct.win** @console_window, align 8
  call void @KillWindow(%struct.win* %35)
  %36 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %36, %struct.display** @display, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %if.then.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true.56, %if.end.53
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 10
  %38 = load %struct.win*, %struct.win** %d_fore, align 8
  %tobool66 = icmp ne %struct.win* %38, null
  br i1 %tobool66, label %if.then.67, label %if.end.75

if.then.67:                                       ; preds = %if.end.65
  %39 = load %struct.display*, %struct.display** @display, align 8
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_fore68 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 10
  %41 = load %struct.win*, %struct.win** %d_fore68, align 8
  %call69 = call i32 @ReleaseAutoWritelock(%struct.display* %39, %struct.win* %41)
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_fore70 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 10
  %43 = load %struct.win*, %struct.win** %d_fore70, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 9
  %44 = load i32, i32* %w_number, align 4
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 1
  %46 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %u_detachwin = getelementptr inbounds %struct.acluser, %struct.acluser* %46, i32 0, i32 4
  store i32 %44, i32* %u_detachwin, align 4
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_other = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 11
  %48 = load %struct.win*, %struct.win** %d_other, align 8
  %tobool71 = icmp ne %struct.win* %48, null
  br i1 %tobool71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.67
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_other72 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 11
  %50 = load %struct.win*, %struct.win** %d_other72, align 8
  %w_number73 = getelementptr inbounds %struct.win, %struct.win* %50, i32 0, i32 9
  %51 = load i32, i32* %w_number73, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.67
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %51, %cond.true ], [ -1, %cond.false ]
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_user74 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 1
  %53 = load %struct.acluser*, %struct.acluser** %d_user74, align 8
  %u_detachotherwin = getelementptr inbounds %struct.acluser, %struct.acluser* %53, i32 0, i32 5
  store i32 %cond, i32* %u_detachotherwin, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %cond.end, %if.end.65
  %54 = load %struct.display*, %struct.display** @display, align 8
  %d_layout = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 5
  %55 = load %struct.layout*, %struct.layout** %d_layout, align 8
  call void @AutosaveLayout(%struct.layout* %55)
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_layout76 = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 5
  %57 = load %struct.layout*, %struct.layout** %d_layout76, align 8
  store %struct.layout* %57, %struct.layout** @layout_last, align 8
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 3
  %59 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %59, %struct.canvas** %cv, align 8
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.83, %if.end.75
  %60 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool78 = icmp ne %struct.canvas* %60, null
  br i1 %tobool78, label %for.body.79, label %for.end.84

for.body.79:                                      ; preds = %for.cond.77
  %61 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %61, i32 0, i32 9
  %62 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %62, i32 0, i32 9
  %63 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %63, i32 0, i32 7
  %64 = load i8*, i8** %l_data, align 8
  %65 = bitcast i8* %64 to %struct.win*
  store %struct.win* %65, %struct.win** %p, align 8
  %66 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @SetCanvasWindow(%struct.canvas* %66, %struct.win* null)
  %67 = load %struct.win*, %struct.win** %p, align 8
  %tobool80 = icmp ne %struct.win* %67, null
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.body.79
  %68 = load %struct.win*, %struct.win** %p, align 8
  call void @WindowChanged(%struct.win* %68, i32 117)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %for.body.79
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %69 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %69, i32 0, i32 0
  %70 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %70, %struct.canvas** %cv, align 8
  br label %for.cond.77

for.end.84:                                       ; preds = %for.cond.77
  %71 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 57
  %72 = load i32, i32* %d_userpid, align 4
  store i32 %72, i32* %pid, align 4
  br label %do.body.85

do.body.85:                                       ; preds = %for.end.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.body.85
  call void @FreeDisplay()
  %73 = load %struct.display*, %struct.display** @displays, align 8
  %cmp87 = icmp eq %struct.display* %73, null
  br i1 %cmp87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %do.end.86
  %call89 = call i32 @chsock()
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %do.end.86
  %74 = load i32, i32* %pid, align 4
  %75 = load i32, i32* %sign, align 4
  call void @Kill(i32 %74, i32 %75)
  br label %do.body.91

do.body.91:                                       ; preds = %if.end.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.body.91
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  br label %do.end.94

do.end.94:                                        ; preds = %do.body.93
  %call95 = call void (i32)* @xsignal(i32 1, void (i32)* @SigHup)
  br label %return

return:                                           ; preds = %do.end.94, %if.then.4, %if.then
  ret void
}

declare void @ClearAll() #1

declare i32 @TtyGrabConsole(i32, i32, i8*) #1

declare i32 @ReleaseAutoWritelock(%struct.display*, %struct.win*) #1

declare void @AutosaveLayout(%struct.layout*) #1

declare void @SetCanvasWindow(%struct.canvas*, %struct.win*) #1

declare void @FreeDisplay() #1

declare i32 @chsock() #1

; Function Attrs: nounwind uwtable
define internal i32 @IsSymbol(i8* %e, i8* %s) #0 {
entry:
  %e.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  store i8* %e, i8** %e.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  %1 = load i8*, i8** %e.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %l, align 4
  %conv1 = sext i32 %3 to i64
  %call2 = call i32 @strncmp(i8* %1, i8* %2, i64 %conv1) #9
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i32, i32* %l, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %e.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare i8* @DoNLS(i8*) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

declare void @MakeStatus(i8*) #1

declare i32 @SendErrorMsg(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i64 @write(i32, i8*, i64) #1

declare i32 @sleep(i32) #1

; Function Attrs: noreturn
declare void @_exit(i32) #8

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @QueryMsg(i32 %err, i8* %fmt, ...) #0 {
entry:
  %err.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  %p = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %err, i32* %err.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load i32, i32* @queryflag, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay12 = bitcast %struct.__va_list_tag* %arraydecay1 to i8*
  call void @llvm.va_start(i8* %arraydecay12)
  %1 = load i8*, i8** %fmt.addr, align 8
  %call = call i8* @DoNLS(i8* %1)
  store i8* %call, i8** %fmt.addr, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load i8*, i8** %fmt.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call4 = call i32 @vsnprintf(i8* %2, i64 8092, i8* %3, %struct.__va_list_tag* %arraydecay3) #3
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %4 = load i32, i32* %err.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body
  %5 = load i8*, i8** %p, align 8
  %call8 = call i64 @strlen(i8* %5) #9
  %6 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %call8
  store i8* %add.ptr, i8** %p, align 8
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 58, i8* %7, align 1
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8
  store i8 32, i8* %8, align 1
  %9 = load i8*, i8** %p, align 8
  %10 = load i32, i32* %err.addr, align 4
  %call10 = call i8* @strerror(i32 %10) #3
  %arraydecay11 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 8192
  %11 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  %call13 = call i8* @strncpy(i8* %9, i8* %call10, i64 %sub) #3
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 8191
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %12 = load i32, i32* @queryflag, align 4
  %arraydecay15 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %call17 = call i64 @strlen(i8* %arraydecay16) #9
  %call18 = call i64 @write(i32 %12, i8* %arraydecay15, i64 %call17)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Dummy(i32 %err, i8* %fmt, ...) #0 {
entry:
  %err.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  store i32 %err, i32* %err.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @setbacktick(i32 %num, i32 %lifespan, i32 %tick, i8** %cmdv) #0 {
entry:
  %num.addr = alloca i32, align 4
  %lifespan.addr = alloca i32, align 4
  %tick.addr = alloca i32, align 4
  %cmdv.addr = alloca i8**, align 8
  %btp = alloca %struct.backtick**, align 8
  %bt = alloca %struct.backtick*, align 8
  %v = alloca i8**, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %lifespan, i32* %lifespan.addr, align 4
  store i32 %tick, i32* %tick.addr, align 4
  store i8** %cmdv, i8*** %cmdv.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store %struct.backtick** @backticks, %struct.backtick*** %btp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %0 = load %struct.backtick**, %struct.backtick*** %btp, align 8
  %1 = load %struct.backtick*, %struct.backtick** %0, align 8
  store %struct.backtick* %1, %struct.backtick** %bt, align 8
  %cmp = icmp ne %struct.backtick* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %num1 = getelementptr inbounds %struct.backtick, %struct.backtick* %2, i32 0, i32 1
  %3 = load i32, i32* %num1, align 4
  %4 = load i32, i32* %num.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %next = getelementptr inbounds %struct.backtick, %struct.backtick* %5, i32 0, i32 0
  store %struct.backtick** %next, %struct.backtick*** %btp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %tobool = icmp ne %struct.backtick* %6, null
  br i1 %tobool, label %if.end.5, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %7 = load i8**, i8*** %cmdv.addr, align 8
  %tobool3 = icmp ne i8** %7, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.74

if.end.5:                                         ; preds = %land.lhs.true, %for.end
  %8 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %tobool6 = icmp ne %struct.backtick* %8, null
  br i1 %tobool6, label %if.then.7, label %if.end.25

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %cmdv8 = getelementptr inbounds %struct.backtick, %struct.backtick* %9, i32 0, i32 6
  %10 = load i8**, i8*** %cmdv8, align 8
  store i8** %10, i8*** %v, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.12, %if.then.7
  %11 = load i8**, i8*** %v, align 8
  %12 = load i8*, i8** %11, align 8
  %tobool10 = icmp ne i8* %12, null
  br i1 %tobool10, label %for.body.11, label %for.end.13

for.body.11:                                      ; preds = %for.cond.9
  %13 = load i8**, i8*** %v, align 8
  %14 = load i8*, i8** %13, align 8
  call void @free(i8* %14) #3
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.11
  %15 = load i8**, i8*** %v, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** %v, align 8
  br label %for.cond.9

for.end.13:                                       ; preds = %for.cond.9
  %16 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %cmdv14 = getelementptr inbounds %struct.backtick, %struct.backtick* %16, i32 0, i32 6
  %17 = load i8**, i8*** %cmdv14, align 8
  %18 = bitcast i8** %17 to i8*
  call void @free(i8* %18) #3
  %19 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf = getelementptr inbounds %struct.backtick, %struct.backtick* %19, i32 0, i32 8
  %20 = load i8*, i8** %buf, align 8
  %tobool15 = icmp ne i8* %20, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end.13
  %21 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf17 = getelementptr inbounds %struct.backtick, %struct.backtick* %21, i32 0, i32 8
  %22 = load i8*, i8** %buf17, align 8
  call void @free(i8* %22) #3
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.end.13
  %23 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %ev = getelementptr inbounds %struct.backtick, %struct.backtick* %23, i32 0, i32 7
  %fd = getelementptr inbounds %struct.event, %struct.event* %ev, i32 0, i32 3
  %24 = load i32, i32* %fd, align 4
  %cmp19 = icmp sge i32 %24, 0
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %25 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %ev21 = getelementptr inbounds %struct.backtick, %struct.backtick* %25, i32 0, i32 7
  %fd22 = getelementptr inbounds %struct.event, %struct.event* %ev21, i32 0, i32 3
  %26 = load i32, i32* %fd22, align 4
  %call = call i32 @close(i32 %26)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %27 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %ev24 = getelementptr inbounds %struct.backtick, %struct.backtick* %27, i32 0, i32 7
  call void @evdeq(%struct.event* %ev24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.23, %if.end.5
  %28 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %tobool26 = icmp ne %struct.backtick* %28, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %if.end.25
  %29 = load i8**, i8*** %cmdv.addr, align 8
  %tobool28 = icmp ne i8** %29, null
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.27
  %30 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %next30 = getelementptr inbounds %struct.backtick, %struct.backtick* %30, i32 0, i32 0
  %31 = load %struct.backtick*, %struct.backtick** %next30, align 8
  %32 = load %struct.backtick**, %struct.backtick*** %btp, align 8
  store %struct.backtick* %31, %struct.backtick** %32, align 8
  %33 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %34 = bitcast %struct.backtick* %33 to i8*
  call void @free(i8* %34) #3
  br label %if.end.74

if.end.31:                                        ; preds = %land.lhs.true.27, %if.end.25
  %35 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %tobool32 = icmp ne %struct.backtick* %35, null
  br i1 %tobool32, label %if.end.39, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  %call34 = call noalias i8* @malloc(i64 904) #3
  %36 = bitcast i8* %call34 to %struct.backtick*
  store %struct.backtick* %36, %struct.backtick** %bt, align 8
  %37 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %tobool35 = icmp ne %struct.backtick* %37, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.33
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @strnomem, i32 0, i32 0))
  br label %if.end.74

if.end.37:                                        ; preds = %if.then.33
  %38 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %39 = bitcast %struct.backtick* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 904, i32 8, i1 false)
  %40 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %next38 = getelementptr inbounds %struct.backtick, %struct.backtick* %40, i32 0, i32 0
  store %struct.backtick* null, %struct.backtick** %next38, align 8
  %41 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %42 = load %struct.backtick**, %struct.backtick*** %btp, align 8
  store %struct.backtick* %41, %struct.backtick** %42, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.37, %if.end.31
  %43 = load i32, i32* %num.addr, align 4
  %44 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %num40 = getelementptr inbounds %struct.backtick, %struct.backtick* %44, i32 0, i32 1
  store i32 %43, i32* %num40, align 4
  %45 = load i32, i32* %tick.addr, align 4
  %46 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %tick41 = getelementptr inbounds %struct.backtick, %struct.backtick* %46, i32 0, i32 2
  store i32 %45, i32* %tick41, align 4
  %47 = load i32, i32* %lifespan.addr, align 4
  %48 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %lifespan42 = getelementptr inbounds %struct.backtick, %struct.backtick* %48, i32 0, i32 3
  store i32 %47, i32* %lifespan42, align 4
  %49 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %bestbefore = getelementptr inbounds %struct.backtick, %struct.backtick* %49, i32 0, i32 4
  store i64 0, i64* %bestbefore, align 8
  %50 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %result = getelementptr inbounds %struct.backtick, %struct.backtick* %50, i32 0, i32 5
  %arrayidx = getelementptr inbounds [768 x i8], [768 x i8]* %result, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %51 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf43 = getelementptr inbounds %struct.backtick, %struct.backtick* %51, i32 0, i32 8
  store i8* null, i8** %buf43, align 8
  %52 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %bufi = getelementptr inbounds %struct.backtick, %struct.backtick* %52, i32 0, i32 9
  store i32 0, i32* %bufi, align 4
  %53 = load i8**, i8*** %cmdv.addr, align 8
  %54 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %cmdv44 = getelementptr inbounds %struct.backtick, %struct.backtick* %54, i32 0, i32 6
  store i8** %53, i8*** %cmdv44, align 8
  %55 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %ev45 = getelementptr inbounds %struct.backtick, %struct.backtick* %55, i32 0, i32 7
  %fd46 = getelementptr inbounds %struct.event, %struct.event* %ev45, i32 0, i32 3
  store i32 -1, i32* %fd46, align 4
  %56 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %tick47 = getelementptr inbounds %struct.backtick, %struct.backtick* %56, i32 0, i32 2
  %57 = load i32, i32* %tick47, align 4
  %cmp48 = icmp eq i32 %57, 0
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.74

land.lhs.true.49:                                 ; preds = %if.end.39
  %58 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %lifespan50 = getelementptr inbounds %struct.backtick, %struct.backtick* %58, i32 0, i32 3
  %59 = load i32, i32* %lifespan50, align 4
  %cmp51 = icmp eq i32 %59, 0
  br i1 %cmp51, label %if.then.52, label %if.end.74

if.then.52:                                       ; preds = %land.lhs.true.49
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.53
  %call55 = call noalias i8* @malloc(i64 768) #3
  %60 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf56 = getelementptr inbounds %struct.backtick, %struct.backtick* %60, i32 0, i32 8
  store i8* %call55, i8** %buf56, align 8
  %61 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf57 = getelementptr inbounds %struct.backtick, %struct.backtick* %61, i32 0, i32 8
  %62 = load i8*, i8** %buf57, align 8
  %cmp58 = icmp eq i8* %62, null
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %do.end.54
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @strnomem, i32 0, i32 0))
  %63 = load i32, i32* %num.addr, align 4
  call void @setbacktick(i32 %63, i32 0, i32 0, i8** null)
  br label %if.end.74

if.end.60:                                        ; preds = %do.end.54
  %64 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %ev61 = getelementptr inbounds %struct.backtick, %struct.backtick* %64, i32 0, i32 7
  %type = getelementptr inbounds %struct.event, %struct.event* %ev61, i32 0, i32 4
  store i32 1, i32* %type, align 4
  %65 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %cmdv62 = getelementptr inbounds %struct.backtick, %struct.backtick* %65, i32 0, i32 6
  %66 = load i8**, i8*** %cmdv62, align 8
  %call63 = call i32 @readpipe(i8** %66)
  %67 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %ev64 = getelementptr inbounds %struct.backtick, %struct.backtick* %67, i32 0, i32 7
  %fd65 = getelementptr inbounds %struct.event, %struct.event* %ev64, i32 0, i32 3
  store i32 %call63, i32* %fd65, align 4
  %68 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %ev66 = getelementptr inbounds %struct.backtick, %struct.backtick* %68, i32 0, i32 7
  %handler = getelementptr inbounds %struct.event, %struct.event* %ev66, i32 0, i32 1
  store void (%struct.event*, i8*)* @backtick_fn, void (%struct.event*, i8*)** %handler, align 8
  %69 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %70 = bitcast %struct.backtick* %69 to i8*
  %71 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %ev67 = getelementptr inbounds %struct.backtick, %struct.backtick* %71, i32 0, i32 7
  %data = getelementptr inbounds %struct.event, %struct.event* %ev67, i32 0, i32 2
  store i8* %70, i8** %data, align 8
  %72 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %ev68 = getelementptr inbounds %struct.backtick, %struct.backtick* %72, i32 0, i32 7
  %fd69 = getelementptr inbounds %struct.event, %struct.event* %ev68, i32 0, i32 3
  %73 = load i32, i32* %fd69, align 4
  %cmp70 = icmp sge i32 %73, 0
  br i1 %cmp70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.60
  %74 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %ev72 = getelementptr inbounds %struct.backtick, %struct.backtick* %74, i32 0, i32 7
  call void @evenq(%struct.event* %ev72)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.60
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.4, %if.then.29, %if.then.36, %if.then.59, %if.end.73, %land.lhs.true.49, %if.end.39
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @readpipe(i8**) #1

; Function Attrs: nounwind uwtable
define internal void @backtick_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %bt = alloca %struct.backtick*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.backtick*
  store %struct.backtick* %1, %struct.backtick** %bt, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %bufi = getelementptr inbounds %struct.backtick, %struct.backtick* %2, i32 0, i32 9
  %3 = load i32, i32* %bufi, align 4
  store i32 %3, i32* %i, align 4
  %4 = load %struct.event*, %struct.event** %ev.addr, align 8
  %fd = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 3
  %5 = load i32, i32* %fd, align 4
  %6 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf = getelementptr inbounds %struct.backtick, %struct.backtick* %6, i32 0, i32 8
  %7 = load i8*, i8** %buf, align 8
  %8 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %9 = load i32, i32* %i, align 4
  %sub = sub nsw i32 768, %9
  %conv = sext i32 %sub to i64
  %call = call i64 @read(i32 %5, i8* %add.ptr, i64 %conv)
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %l, align 4
  %10 = load i32, i32* %l, align 4
  %cmp = icmp sle i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %11 = load %struct.event*, %struct.event** %ev.addr, align 8
  call void @evdeq(%struct.event* %11)
  %12 = load %struct.event*, %struct.event** %ev.addr, align 8
  %fd5 = getelementptr inbounds %struct.event, %struct.event* %12, i32 0, i32 3
  %13 = load i32, i32* %fd5, align 4
  %call6 = call i32 @close(i32 %13)
  %14 = load %struct.event*, %struct.event** %ev.addr, align 8
  %fd7 = getelementptr inbounds %struct.event, %struct.event* %14, i32 0, i32 3
  store i32 -1, i32* %fd7, align 4
  br label %return

if.end:                                           ; preds = %do.end
  br label %do.body.8

do.body.8:                                        ; preds = %if.end
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.8
  %15 = load i32, i32* %l, align 4
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.9
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %l, align 4
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  %sub12 = sub nsw i32 %19, %20
  %sub13 = sub nsw i32 %sub12, 1
  %idxprom = sext i32 %sub13 to i64
  %21 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf14 = getelementptr inbounds %struct.backtick, %struct.backtick* %21, i32 0, i32 8
  %22 = load i8*, i8** %buf14, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %conv15 = sext i8 %23 to i32
  %cmp16 = icmp eq i32 %conv15, 10
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  br label %for.end

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.18, %for.cond
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %l, align 4
  %cmp20 = icmp slt i32 %25, %26
  br i1 %cmp20, label %if.then.22, label %if.end.52

if.then.22:                                       ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %j, align 4
  %sub23 = sub nsw i32 %27, %28
  %sub24 = sub nsw i32 %sub23, 2
  store i32 %sub24, i32* %k, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.37, %if.then.22
  %29 = load i32, i32* %k, align 4
  %cmp26 = icmp sge i32 %29, 0
  br i1 %cmp26, label %for.body.28, label %for.end.38

for.body.28:                                      ; preds = %for.cond.25
  %30 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %30 to i64
  %31 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf30 = getelementptr inbounds %struct.backtick, %struct.backtick* %31, i32 0, i32 8
  %32 = load i8*, i8** %buf30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %32, i64 %idxprom29
  %33 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %33 to i32
  %cmp33 = icmp eq i32 %conv32, 10
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body.28
  br label %for.end.38

if.end.36:                                        ; preds = %for.body.28
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %34 = load i32, i32* %k, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.25

for.end.38:                                       ; preds = %if.then.35, %for.cond.25
  %35 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %35, 1
  store i32 %inc39, i32* %k, align 4
  %36 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf40 = getelementptr inbounds %struct.backtick, %struct.backtick* %36, i32 0, i32 8
  %37 = load i8*, i8** %buf40, align 8
  %38 = load i32, i32* %k, align 4
  %idx.ext41 = sext i32 %38 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %37, i64 %idx.ext41
  %39 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %result = getelementptr inbounds %struct.backtick, %struct.backtick* %39, i32 0, i32 5
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %result, i32 0, i32 0
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %j, align 4
  %sub43 = sub nsw i32 %40, %41
  %42 = load i32, i32* %k, align 4
  %sub44 = sub nsw i32 %sub43, %42
  %conv45 = sext i32 %sub44 to i64
  call void @bcopy(i8* %add.ptr42, i8* %arraydecay, i64 %conv45) #3
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %j, align 4
  %sub46 = sub nsw i32 %43, %44
  %45 = load i32, i32* %k, align 4
  %sub47 = sub nsw i32 %sub46, %45
  %sub48 = sub nsw i32 %sub47, 1
  %idxprom49 = sext i32 %sub48 to i64
  %46 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %result50 = getelementptr inbounds %struct.backtick, %struct.backtick* %46, i32 0, i32 5
  %arrayidx51 = getelementptr inbounds [768 x i8], [768 x i8]* %result50, i32 0, i64 %idxprom49
  store i8 0, i8* %arrayidx51, align 1
  %47 = load %struct.backtick*, %struct.backtick** %bt, align 8
  call void @backtick_filter(%struct.backtick* %47)
  call void @WindowChanged(%struct.win* null, i32 96)
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.38, %for.end
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* %l, align 4
  %cmp53 = icmp eq i32 %48, %49
  br i1 %cmp53, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.52
  %50 = load i32, i32* %i, align 4
  %cmp55 = icmp eq i32 %50, 768
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %land.lhs.true
  store i32 384, i32* %j, align 4
  %51 = load i32, i32* %j, align 4
  %add58 = add nsw i32 %51, 1
  store i32 %add58, i32* %l, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %land.lhs.true, %if.end.52
  %52 = load i32, i32* %j, align 4
  %53 = load i32, i32* %l, align 4
  %cmp60 = icmp slt i32 %52, %53
  br i1 %cmp60, label %if.then.62, label %if.end.72

if.then.62:                                       ; preds = %if.end.59
  %54 = load i32, i32* %j, align 4
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.then.63, label %if.end.71

if.then.63:                                       ; preds = %if.then.62
  %55 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf64 = getelementptr inbounds %struct.backtick, %struct.backtick* %55, i32 0, i32 8
  %56 = load i8*, i8** %buf64, align 8
  %57 = load i32, i32* %i, align 4
  %idx.ext65 = sext i32 %57 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %56, i64 %idx.ext65
  %58 = load i32, i32* %j, align 4
  %idx.ext67 = sext i32 %58 to i64
  %idx.neg = sub i64 0, %idx.ext67
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr66, i64 %idx.neg
  %59 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %buf69 = getelementptr inbounds %struct.backtick, %struct.backtick* %59, i32 0, i32 8
  %60 = load i8*, i8** %buf69, align 8
  %61 = load i32, i32* %j, align 4
  %conv70 = sext i32 %61 to i64
  call void @bcopy(i8* %add.ptr68, i8* %60, i64 %conv70) #3
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.63, %if.then.62
  %62 = load i32, i32* %j, align 4
  store i32 %62, i32* %i, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.59
  %63 = load i32, i32* %i, align 4
  %64 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %bufi73 = getelementptr inbounds %struct.backtick, %struct.backtick* %64, i32 0, i32 9
  store i32 %63, i32* %bufi73, align 4
  br label %return

return:                                           ; preds = %if.end.72, %do.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @AddWinMsgRend(i8* %str, i32 %r) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %r.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* @winmsg_numrend, align 4
  %cmp = icmp sge i32 %0, 256
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %cmp1 = icmp ult i8* %1, getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0)
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i8*, i8** %str.addr, align 8
  %cmp3 = icmp uge i8* %2, getelementptr inbounds (i8, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0), i64 768)
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %r.addr, align 4
  %4 = load i32, i32* @winmsg_numrend, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rend, i32 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  %5 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %conv = trunc i64 %sub.ptr.sub to i32
  %6 = load i32, i32* @winmsg_numrend, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom4
  store i32 %conv, i32* %arrayidx5, align 4
  %7 = load i32, i32* @winmsg_numrend, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @winmsg_numrend, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i8* @MakeWinMsgEv(i8* %str, %struct.win* %win, i32 %esc, i32 %padlen, %struct.event* %ev, i32 %rec) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %win.addr = alloca %struct.win*, align 8
  %esc.addr = alloca i32, align 4
  %padlen.addr = alloca i32, align 4
  %ev.addr = alloca %struct.event*, align 8
  %rec.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %ctrl = alloca i32, align 4
  %now = alloca %struct.timeval, align 8
  %tm = alloca %struct.tm*, align 8
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %num = alloca i32, align 4
  %zeroflg = alloca i32, align 4
  %longflg = alloca i32, align 4
  %minusflg = alloca i32, align 4
  %plusflg = alloca i32, align 4
  %qmflag = alloca i32, align 4
  %omflag = alloca i32, align 4
  %qmnumrend = alloca i32, align 4
  %qmpos = alloca i8*, align 8
  %numpad = alloca i32, align 4
  %lastpad = alloca i32, align 4
  %truncpos = alloca i32, align 4
  %truncper = alloca i32, align 4
  %trunclong = alloca i32, align 4
  %bt = alloca %struct.backtick*, align 8
  %nowsec = alloca i64, align 8
  %savebuf = alloca [768 x i8], align 16
  %oldtick = alloca i32, align 4
  %oldnumrend = alloca i32, align 4
  %oldfore = alloca %struct.win*, align 8
  %ss = alloca i8*, align 8
  %rbuf = alloca [128 x i8], align 16
  %session_name = alloca i8*, align 8
  %cv = alloca %struct.canvas*, align 8
  %left = alloca i32, align 4
  %trunc = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store %struct.win* %win, %struct.win** %win.addr, align 8
  store i32 %esc, i32* %esc.addr, align 4
  store i32 %padlen, i32* %padlen.addr, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i32 %rec, i32* %rec.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %s, align 8
  store i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0), i8** %p, align 8
  store i32 0, i32* %qmflag, align 4
  store i32 0, i32* %omflag, align 4
  store i32 0, i32* %qmnumrend, align 4
  store i8* null, i8** %qmpos, align 8
  store i32 0, i32* %numpad, align 4
  store i32 0, i32* %lastpad, align 4
  store i32 -1, i32* %truncpos, align 4
  store i32 0, i32* %truncper, align 4
  store i32 0, i32* %trunclong, align 4
  store %struct.backtick* null, %struct.backtick** %bt, align 8
  %1 = load i32, i32* @winmsg_numrend, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @winmsg_numrend, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @winmsg_numrend, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, i32* @winmsg_numrend, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* @MakeWinMsgEv.tick, align 4
  store %struct.tm* null, %struct.tm** %tm, align 8
  store i32 0, i32* %ctrl, align 4
  %call = call i32 @gettimeofday(%struct.timeval* %now, %struct.timezone* null) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc.914, %if.end
  %3 = load i8*, i8** %s, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p, align 8
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 ptrtoint (i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i64 767) to i64), %sub.ptr.rhs.cast
  %conv1 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv1, i32* %l, align 4
  %cmp2 = icmp sgt i32 %conv1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %for.body, label %for.end.917

for.body:                                         ; preds = %land.end
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8*, i8** %p, align 8
  store i8 %8, i8* %9, align 1
  %10 = load i32, i32* %ctrl, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %for.body
  store i32 0, i32* %ctrl, align 4
  %11 = load i8*, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %conv6 = sext i8 %12 to i32
  %cmp7 = icmp ne i32 %conv6, 94
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.then.5
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp sge i32 %conv9, 64
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %land.lhs.true
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = sext i8 %16 to i32
  %and = and i32 %conv13, 31
  %conv14 = trunc i32 %and to i8
  store i8 %conv14, i8* %15, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %land.lhs.true, %if.then.5
  br label %for.inc.914

if.end.16:                                        ; preds = %for.body
  %17 = load i8*, i8** %s, align 8
  %18 = load i8, i8* %17, align 1
  %conv17 = sext i8 %18 to i32
  %19 = load i32, i32* %esc.addr, align 4
  %cmp18 = icmp ne i32 %conv17, %19
  br i1 %cmp18, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.16
  %20 = load i32, i32* %esc.addr, align 4
  %cmp21 = icmp eq i32 %20, 37
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.20
  %21 = load i8*, i8** %s, align 8
  %22 = load i8, i8* %21, align 1
  %conv24 = sext i8 %22 to i32
  switch i32 %conv24, label %sw.default [
    i32 94, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.23
  store i32 1, i32* %ctrl, align 4
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 94, i8* %23, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end.25

if.end.25:                                        ; preds = %sw.epilog, %if.then.20
  br label %for.inc.914

if.end.26:                                        ; preds = %if.end.16
  %24 = load i8*, i8** %s, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr27, i8** %s, align 8
  %25 = load i8, i8* %incdec.ptr27, align 1
  %conv28 = sext i8 %25 to i32
  %26 = load i32, i32* %esc.addr, align 4
  %cmp29 = icmp eq i32 %conv28, %26
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.26
  br label %for.inc.914

if.end.32:                                        ; preds = %if.end.26
  %27 = load i8*, i8** %s, align 8
  %28 = load i8, i8* %27, align 1
  %conv33 = sext i8 %28 to i32
  %cmp34 = icmp eq i32 %conv33, 43
  %conv35 = zext i1 %cmp34 to i32
  store i32 %conv35, i32* %plusflg, align 4
  %cmp36 = icmp ne i32 %conv35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.32
  %29 = load i8*, i8** %s, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr39, i8** %s, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.32
  %30 = load i8*, i8** %s, align 8
  %31 = load i8, i8* %30, align 1
  %conv41 = sext i8 %31 to i32
  %cmp42 = icmp eq i32 %conv41, 45
  %conv43 = zext i1 %cmp42 to i32
  store i32 %conv43, i32* %minusflg, align 4
  %cmp44 = icmp ne i32 %conv43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.40
  %32 = load i8*, i8** %s, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr47, i8** %s, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.40
  %33 = load i8*, i8** %s, align 8
  %34 = load i8, i8* %33, align 1
  %conv49 = sext i8 %34 to i32
  %cmp50 = icmp eq i32 %conv49, 48
  %conv51 = zext i1 %cmp50 to i32
  store i32 %conv51, i32* %zeroflg, align 4
  %cmp52 = icmp ne i32 %conv51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.48
  %35 = load i8*, i8** %s, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr55, i8** %s, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.48
  store i32 0, i32* %num, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.56
  %36 = load i8*, i8** %s, align 8
  %37 = load i8, i8* %36, align 1
  %conv57 = sext i8 %37 to i32
  %cmp58 = icmp sge i32 %conv57, 48
  br i1 %cmp58, label %land.rhs.60, label %land.end.64

land.rhs.60:                                      ; preds = %while.cond
  %38 = load i8*, i8** %s, align 8
  %39 = load i8, i8* %38, align 1
  %conv61 = sext i8 %39 to i32
  %cmp62 = icmp sle i32 %conv61, 57
  br label %land.end.64

land.end.64:                                      ; preds = %land.rhs.60, %while.cond
  %40 = phi i1 [ false, %while.cond ], [ %cmp62, %land.rhs.60 ]
  br i1 %40, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.64
  %41 = load i32, i32* %num, align 4
  %mul = mul nsw i32 %41, 10
  %42 = load i8*, i8** %s, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr65, i8** %s, align 8
  %43 = load i8, i8* %42, align 1
  %conv66 = sext i8 %43 to i32
  %sub67 = sub nsw i32 %conv66, 48
  %add = add nsw i32 %mul, %sub67
  store i32 %add, i32* %num, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.64
  %44 = load i8*, i8** %s, align 8
  %45 = load i8, i8* %44, align 1
  %conv68 = sext i8 %45 to i32
  %cmp69 = icmp eq i32 %conv68, 76
  %conv70 = zext i1 %cmp69 to i32
  store i32 %conv70, i32* %longflg, align 4
  %cmp71 = icmp ne i32 %conv70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %while.end
  %46 = load i8*, i8** %s, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr74, i8** %s, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %while.end
  %47 = load i8*, i8** %s, align 8
  %48 = load i8, i8* %47, align 1
  %conv76 = sext i8 %48 to i32
  switch i32 %conv76, label %sw.default.889 [
    i32 63, label %sw.bb.77
    i32 58, label %sw.bb.93
    i32 100, label %sw.bb.109
    i32 68, label %sw.bb.109
    i32 109, label %sw.bb.109
    i32 77, label %sw.bb.109
    i32 121, label %sw.bb.109
    i32 89, label %sw.bb.109
    i32 97, label %sw.bb.109
    i32 65, label %sw.bb.109
    i32 115, label %sw.bb.109
    i32 99, label %sw.bb.109
    i32 67, label %sw.bb.109
    i32 88, label %sw.bb.190
    i32 120, label %sw.bb.190
    i32 108, label %sw.bb.228
    i32 96, label %sw.bb.249
    i32 104, label %sw.bb.249
    i32 119, label %sw.bb.335
    i32 87, label %sw.bb.335
    i32 117, label %sw.bb.369
    i32 102, label %sw.bb.381
    i32 116, label %sw.bb.393
    i32 123, label %sw.bb.410
    i32 72, label %sw.bb.483
    i32 83, label %sw.bb.497
    i32 112, label %sw.bb.513
    i32 70, label %sw.bb.526
    i32 80, label %sw.bb.548
    i32 69, label %sw.bb.566
    i32 62, label %sw.bb.573
    i32 61, label %sw.bb.584
    i32 60, label %sw.bb.584
    i32 110, label %sw.bb.887
  ]

sw.bb.77:                                         ; preds = %if.end.75
  %49 = load i8*, i8** %p, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %incdec.ptr78, i8** %p, align 8
  %50 = load i8*, i8** %qmpos, align 8
  %tobool79 = icmp ne i8* %50, null
  br i1 %tobool79, label %if.then.80, label %if.end.92

if.then.80:                                       ; preds = %sw.bb.77
  %51 = load i32, i32* %qmflag, align 4
  %tobool81 = icmp ne i32 %51, 0
  br i1 %tobool81, label %lor.lhs.false, label %land.lhs.true.82

land.lhs.true.82:                                 ; preds = %if.then.80
  %52 = load i32, i32* %omflag, align 4
  %tobool83 = icmp ne i32 %52, 0
  br i1 %tobool83, label %lor.lhs.false, label %if.then.86

lor.lhs.false:                                    ; preds = %land.lhs.true.82, %if.then.80
  %53 = load i32, i32* %omflag, align 4
  %cmp84 = icmp eq i32 %53, 1
  br i1 %cmp84, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %lor.lhs.false, %land.lhs.true.82
  %54 = load i8*, i8** %qmpos, align 8
  store i8* %54, i8** %p, align 8
  %55 = load i32, i32* %qmnumrend, align 4
  %56 = load i32, i32* @winmsg_numrend, align 4
  %cmp87 = icmp slt i32 %55, %56
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.86
  %57 = load i32, i32* %qmnumrend, align 4
  store i32 %57, i32* @winmsg_numrend, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.then.86
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %lor.lhs.false
  store i8* null, i8** %qmpos, align 8
  br label %sw.epilog.913

if.end.92:                                        ; preds = %sw.bb.77
  %58 = load i8*, i8** %p, align 8
  store i8* %58, i8** %qmpos, align 8
  %59 = load i32, i32* @winmsg_numrend, align 4
  store i32 %59, i32* %qmnumrend, align 4
  store i32 0, i32* %omflag, align 4
  store i32 0, i32* %qmflag, align 4
  br label %sw.epilog.913

sw.bb.93:                                         ; preds = %if.end.75
  %60 = load i8*, i8** %p, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %incdec.ptr94, i8** %p, align 8
  %61 = load i8*, i8** %qmpos, align 8
  %tobool95 = icmp ne i8* %61, null
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %sw.bb.93
  br label %sw.epilog.913

if.end.97:                                        ; preds = %sw.bb.93
  %62 = load i32, i32* %qmflag, align 4
  %tobool98 = icmp ne i32 %62, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.else.103

land.lhs.true.99:                                 ; preds = %if.end.97
  %63 = load i32, i32* %omflag, align 4
  %cmp100 = icmp ne i32 %63, 1
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %land.lhs.true.99
  store i32 1, i32* %omflag, align 4
  %64 = load i8*, i8** %p, align 8
  store i8* %64, i8** %qmpos, align 8
  %65 = load i32, i32* @winmsg_numrend, align 4
  store i32 %65, i32* %qmnumrend, align 4
  br label %if.end.108

if.else.103:                                      ; preds = %land.lhs.true.99, %if.end.97
  %66 = load i8*, i8** %qmpos, align 8
  store i8* %66, i8** %p, align 8
  %67 = load i32, i32* %qmnumrend, align 4
  %68 = load i32, i32* @winmsg_numrend, align 4
  %cmp104 = icmp slt i32 %67, %68
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.else.103
  %69 = load i32, i32* %qmnumrend, align 4
  store i32 %69, i32* @winmsg_numrend, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.else.103
  store i32 -1, i32* %omflag, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.102
  br label %sw.epilog.913

sw.bb.109:                                        ; preds = %if.end.75, %if.end.75, %if.end.75, %if.end.75, %if.end.75, %if.end.75, %if.end.75, %if.end.75, %if.end.75, %if.end.75, %if.end.75
  %70 = load i32, i32* %l, align 4
  %cmp110 = icmp slt i32 %70, 4
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %sw.bb.109
  br label %sw.epilog.913

if.end.113:                                       ; preds = %sw.bb.109
  %71 = load %struct.tm*, %struct.tm** %tm, align 8
  %cmp114 = icmp eq %struct.tm* %71, null
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.end.113
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %72 = load i64, i64* %tv_sec, align 8
  store i64 %72, i64* %nowsec, align 8
  %call117 = call %struct.tm* @localtime(i64* %nowsec) #3
  store %struct.tm* %call117, %struct.tm** %tm, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.end.113
  store i32 1, i32* %qmflag, align 4
  %73 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %tobool119 = icmp ne i32 %73, 0
  br i1 %tobool119, label %lor.lhs.false.120, label %if.then.123

lor.lhs.false.120:                                ; preds = %if.end.118
  %74 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %cmp121 = icmp sgt i32 %74, 3600
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %lor.lhs.false.120, %if.end.118
  store i32 3600, i32* @MakeWinMsgEv.tick, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %lor.lhs.false.120
  %75 = load i8*, i8** %s, align 8
  %76 = load i8, i8* %75, align 1
  %conv125 = sext i8 %76 to i32
  switch i32 %conv125, label %sw.default.186 [
    i32 100, label %sw.bb.126
    i32 68, label %sw.bb.128
    i32 109, label %sw.bb.132
    i32 77, label %sw.bb.135
    i32 121, label %sw.bb.140
    i32 89, label %sw.bb.143
    i32 97, label %sw.bb.147
    i32 65, label %sw.bb.152
    i32 115, label %sw.bb.158
    i32 99, label %sw.bb.160
    i32 67, label %sw.bb.171
  ]

sw.bb.126:                                        ; preds = %if.end.124
  %77 = load i8*, i8** %p, align 8
  %78 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %78, i32 0, i32 3
  %79 = load i32, i32* %tm_mday, align 4
  %rem = srem i32 %79, 100
  %call127 = call i32 (i8*, i8*, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), i32 %rem) #3
  br label %sw.epilog.187

sw.bb.128:                                        ; preds = %if.end.124
  %80 = load i8*, i8** %p, align 8
  %81 = load i32, i32* %l, align 4
  %conv129 = sext i32 %81 to i64
  %82 = load i32, i32* %longflg, align 4
  %tobool130 = icmp ne i32 %82, 0
  %cond = select i1 %tobool130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0)
  %83 = load %struct.tm*, %struct.tm** %tm, align 8
  %call131 = call i64 @strftime(i8* %80, i64 %conv129, i8* %cond, %struct.tm* %83) #3
  br label %sw.epilog.187

sw.bb.132:                                        ; preds = %if.end.124
  %84 = load i8*, i8** %p, align 8
  %85 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 4
  %86 = load i32, i32* %tm_mon, align 4
  %add133 = add nsw i32 %86, 1
  %call134 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), i32 %add133) #3
  br label %sw.epilog.187

sw.bb.135:                                        ; preds = %if.end.124
  %87 = load i8*, i8** %p, align 8
  %88 = load i32, i32* %l, align 4
  %conv136 = sext i32 %88 to i64
  %89 = load i32, i32* %longflg, align 4
  %tobool137 = icmp ne i32 %89, 0
  %cond138 = select i1 %tobool137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i32 0, i32 0)
  %90 = load %struct.tm*, %struct.tm** %tm, align 8
  %call139 = call i64 @strftime(i8* %87, i64 %conv136, i8* %cond138, %struct.tm* %90) #3
  br label %sw.epilog.187

sw.bb.140:                                        ; preds = %if.end.124
  %91 = load i8*, i8** %p, align 8
  %92 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %92, i32 0, i32 5
  %93 = load i32, i32* %tm_year, align 4
  %rem141 = srem i32 %93, 100
  %call142 = call i32 (i8*, i8*, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), i32 %rem141) #3
  br label %sw.epilog.187

sw.bb.143:                                        ; preds = %if.end.124
  %94 = load i8*, i8** %p, align 8
  %95 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_year144 = getelementptr inbounds %struct.tm, %struct.tm* %95, i32 0, i32 5
  %96 = load i32, i32* %tm_year144, align 4
  %add145 = add nsw i32 %96, 1900
  %call146 = call i32 (i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), i32 %add145) #3
  br label %sw.epilog.187

sw.bb.147:                                        ; preds = %if.end.124
  %97 = load i8*, i8** %p, align 8
  %98 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %98, i32 0, i32 2
  %99 = load i32, i32* %tm_hour, align 4
  %cmp148 = icmp sge i32 %99, 12
  %cond150 = select i1 %cmp148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i32 0, i32 0)
  %call151 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* %cond150) #3
  br label %sw.epilog.187

sw.bb.152:                                        ; preds = %if.end.124
  %100 = load i8*, i8** %p, align 8
  %101 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_hour153 = getelementptr inbounds %struct.tm, %struct.tm* %101, i32 0, i32 2
  %102 = load i32, i32* %tm_hour153, align 4
  %cmp154 = icmp sge i32 %102, 12
  %cond156 = select i1 %cmp154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0)
  %call157 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* %cond156) #3
  br label %sw.epilog.187

sw.bb.158:                                        ; preds = %if.end.124
  %103 = load i8*, i8** %p, align 8
  %104 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 0
  %105 = load i32, i32* %tm_sec, align 4
  %call159 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), i32 %105) #3
  store i32 1, i32* @MakeWinMsgEv.tick, align 4
  br label %sw.epilog.187

sw.bb.160:                                        ; preds = %if.end.124
  %106 = load i8*, i8** %p, align 8
  %107 = load i32, i32* %zeroflg, align 4
  %tobool161 = icmp ne i32 %107, 0
  %cond162 = select i1 %tobool161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0)
  %108 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_hour163 = getelementptr inbounds %struct.tm, %struct.tm* %108, i32 0, i32 2
  %109 = load i32, i32* %tm_hour163, align 4
  %110 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %110, i32 0, i32 1
  %111 = load i32, i32* %tm_min, align 4
  %call164 = call i32 (i8*, i8*, ...) @sprintf(i8* %106, i8* %cond162, i32 %109, i32 %111) #3
  %112 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %tobool165 = icmp ne i32 %112, 0
  br i1 %tobool165, label %lor.lhs.false.166, label %if.then.169

lor.lhs.false.166:                                ; preds = %sw.bb.160
  %113 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %cmp167 = icmp sgt i32 %113, 60
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %lor.lhs.false.166, %sw.bb.160
  store i32 60, i32* @MakeWinMsgEv.tick, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %lor.lhs.false.166
  br label %sw.epilog.187

sw.bb.171:                                        ; preds = %if.end.124
  %114 = load i8*, i8** %p, align 8
  %115 = load i32, i32* %zeroflg, align 4
  %tobool172 = icmp ne i32 %115, 0
  %cond173 = select i1 %tobool172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0)
  %116 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_hour174 = getelementptr inbounds %struct.tm, %struct.tm* %116, i32 0, i32 2
  %117 = load i32, i32* %tm_hour174, align 4
  %add175 = add nsw i32 %117, 11
  %rem176 = srem i32 %add175, 12
  %add177 = add nsw i32 %rem176, 1
  %118 = load %struct.tm*, %struct.tm** %tm, align 8
  %tm_min178 = getelementptr inbounds %struct.tm, %struct.tm* %118, i32 0, i32 1
  %119 = load i32, i32* %tm_min178, align 4
  %call179 = call i32 (i8*, i8*, ...) @sprintf(i8* %114, i8* %cond173, i32 %add177, i32 %119) #3
  %120 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %tobool180 = icmp ne i32 %120, 0
  br i1 %tobool180, label %lor.lhs.false.181, label %if.then.184

lor.lhs.false.181:                                ; preds = %sw.bb.171
  %121 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %cmp182 = icmp sgt i32 %121, 60
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %lor.lhs.false.181, %sw.bb.171
  store i32 60, i32* @MakeWinMsgEv.tick, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %lor.lhs.false.181
  br label %sw.epilog.187

sw.default.186:                                   ; preds = %if.end.124
  br label %sw.epilog.187

sw.epilog.187:                                    ; preds = %sw.default.186, %if.end.185, %if.end.170, %sw.bb.158, %sw.bb.152, %sw.bb.147, %sw.bb.143, %sw.bb.140, %sw.bb.135, %sw.bb.132, %sw.bb.128, %sw.bb.126
  %122 = load i8*, i8** %p, align 8
  %call188 = call i64 @strlen(i8* %122) #9
  %sub189 = sub i64 %call188, 1
  %123 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %123, i64 %sub189
  store i8* %add.ptr, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.190:                                        ; preds = %if.end.75, %if.end.75
  %124 = load i8*, i8** %p, align 8
  store i8 0, i8* %124, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc, %sw.bb.190
  %125 = load %struct.win*, %struct.win** %win.addr, align 8
  %tobool192 = icmp ne %struct.win* %125, null
  br i1 %tobool192, label %land.rhs.193, label %land.end.195

land.rhs.193:                                     ; preds = %for.cond.191
  %126 = load i32, i32* %i, align 4
  %idxprom = sext i32 %126 to i64
  %127 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_cmdargs = getelementptr inbounds %struct.win, %struct.win* %127, i32 0, i32 83
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs, i32 0, i64 %idxprom
  %128 = load i8*, i8** %arrayidx, align 8
  %tobool194 = icmp ne i8* %128, null
  br label %land.end.195

land.end.195:                                     ; preds = %land.rhs.193, %for.cond.191
  %129 = phi i1 [ false, %for.cond.191 ], [ %tobool194, %land.rhs.193 ]
  br i1 %129, label %for.body.196, label %for.end

for.body.196:                                     ; preds = %land.end.195
  %130 = load i32, i32* %l, align 4
  %conv197 = sext i32 %130 to i64
  %131 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %131 to i64
  %132 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_cmdargs199 = getelementptr inbounds %struct.win, %struct.win* %132, i32 0, i32 83
  %arrayidx200 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs199, i32 0, i64 %idxprom198
  %133 = load i8*, i8** %arrayidx200, align 8
  %call201 = call i64 @strlen(i8* %133) #9
  %add202 = add i64 %call201, 1
  %cmp203 = icmp ult i64 %conv197, %add202
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %for.body.196
  br label %for.end

if.end.206:                                       ; preds = %for.body.196
  %134 = load i8*, i8** %p, align 8
  %135 = load i32, i32* %i, align 4
  %tobool207 = icmp ne i32 %135, 0
  %cond208 = select i1 %tobool207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i32 0, i32 0)
  %136 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %136 to i64
  %137 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_cmdargs210 = getelementptr inbounds %struct.win, %struct.win* %137, i32 0, i32 83
  %arrayidx211 = getelementptr inbounds [64 x i8*], [64 x i8*]* %w_cmdargs210, i32 0, i64 %idxprom209
  %138 = load i8*, i8** %arrayidx211, align 8
  %call212 = call i32 (i8*, i8*, ...) @sprintf(i8* %134, i8* %cond208, i8* %138) #3
  %139 = load i8*, i8** %p, align 8
  %call213 = call i64 @strlen(i8* %139) #9
  %140 = load i32, i32* %l, align 4
  %conv214 = sext i32 %140 to i64
  %sub215 = sub i64 %conv214, %call213
  %conv216 = trunc i64 %sub215 to i32
  store i32 %conv216, i32* %l, align 4
  %141 = load i8*, i8** %p, align 8
  %call217 = call i64 @strlen(i8* %141) #9
  %142 = load i8*, i8** %p, align 8
  %add.ptr218 = getelementptr inbounds i8, i8* %142, i64 %call217
  store i8* %add.ptr218, i8** %p, align 8
  %143 = load i32, i32* %i, align 4
  %cmp219 = icmp eq i32 %143, 0
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.226

land.lhs.true.221:                                ; preds = %if.end.206
  %144 = load i8*, i8** %s, align 8
  %145 = load i8, i8* %144, align 1
  %conv222 = sext i8 %145 to i32
  %cmp223 = icmp eq i32 %conv222, 88
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %land.lhs.true.221
  br label %for.end

if.end.226:                                       ; preds = %land.lhs.true.221, %if.end.206
  br label %for.inc

for.inc:                                          ; preds = %if.end.226
  %146 = load i32, i32* %i, align 4
  %inc = add nsw i32 %146, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.191

for.end:                                          ; preds = %if.then.225, %if.then.205, %land.end.195
  %147 = load i8*, i8** %p, align 8
  %incdec.ptr227 = getelementptr inbounds i8, i8* %147, i32 -1
  store i8* %incdec.ptr227, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.228:                                        ; preds = %if.end.75
  %148 = load i8*, i8** %p, align 8
  store i8 0, i8* %148, align 1
  %149 = load i32, i32* %l, align 4
  %cmp229 = icmp sgt i32 %149, 20
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %sw.bb.228
  %150 = load i8*, i8** %p, align 8
  call void @AddLoadav(i8* %150)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %sw.bb.228
  %151 = load i8*, i8** %p, align 8
  %152 = load i8, i8* %151, align 1
  %tobool233 = icmp ne i8 %152, 0
  br i1 %tobool233, label %if.then.234, label %if.else.238

if.then.234:                                      ; preds = %if.end.232
  store i32 1, i32* %qmflag, align 4
  %153 = load i8*, i8** %p, align 8
  %call235 = call i64 @strlen(i8* %153) #9
  %sub236 = sub i64 %call235, 1
  %154 = load i8*, i8** %p, align 8
  %add.ptr237 = getelementptr inbounds i8, i8* %154, i64 %sub236
  store i8* %add.ptr237, i8** %p, align 8
  br label %if.end.239

if.else.238:                                      ; preds = %if.end.232
  %155 = load i8*, i8** %p, align 8
  store i8 63, i8* %155, align 1
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.238, %if.then.234
  %156 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %tobool240 = icmp ne i32 %156, 0
  br i1 %tobool240, label %lor.lhs.false.241, label %if.then.244

lor.lhs.false.241:                                ; preds = %if.end.239
  %157 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %cmp242 = icmp sgt i32 %157, 60
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %lor.lhs.false.241, %if.end.239
  store i32 60, i32* @MakeWinMsgEv.tick, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %lor.lhs.false.241
  %158 = load i8*, i8** %p, align 8
  %call246 = call i64 @strlen(i8* %158) #9
  %sub247 = sub i64 %call246, 1
  %159 = load i8*, i8** %p, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %159, i64 %sub247
  store i8* %add.ptr248, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.249:                                        ; preds = %if.end.75, %if.end.75
  %160 = load i32, i32* %rec.addr, align 4
  %cmp250 = icmp sge i32 %160, 10
  br i1 %cmp250, label %if.then.267, label %lor.lhs.false.252

lor.lhs.false.252:                                ; preds = %sw.bb.249
  %161 = load i8*, i8** %s, align 8
  %162 = load i8, i8* %161, align 1
  %conv253 = sext i8 %162 to i32
  %cmp254 = icmp eq i32 %conv253, 104
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.269

land.lhs.true.256:                                ; preds = %lor.lhs.false.252
  %163 = load %struct.win*, %struct.win** %win.addr, align 8
  %cmp257 = icmp eq %struct.win* %163, null
  br i1 %cmp257, label %if.then.267, label %lor.lhs.false.259

lor.lhs.false.259:                                ; preds = %land.lhs.true.256
  %164 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_hstatus = getelementptr inbounds %struct.win, %struct.win* %164, i32 0, i32 57
  %165 = load i8*, i8** %w_hstatus, align 8
  %cmp260 = icmp eq i8* %165, null
  br i1 %cmp260, label %if.then.267, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %lor.lhs.false.259
  %166 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_hstatus263 = getelementptr inbounds %struct.win, %struct.win* %166, i32 0, i32 57
  %167 = load i8*, i8** %w_hstatus263, align 8
  %168 = load i8, i8* %167, align 1
  %conv264 = sext i8 %168 to i32
  %cmp265 = icmp eq i32 %conv264, 0
  br i1 %cmp265, label %if.then.267, label %if.end.269

if.then.267:                                      ; preds = %lor.lhs.false.262, %lor.lhs.false.259, %land.lhs.true.256, %sw.bb.249
  %169 = load i8*, i8** %p, align 8
  %incdec.ptr268 = getelementptr inbounds i8, i8* %169, i32 -1
  store i8* %incdec.ptr268, i8** %p, align 8
  br label %sw.epilog.913

if.end.269:                                       ; preds = %lor.lhs.false.262, %lor.lhs.false.252
  %170 = load i8*, i8** %s, align 8
  %171 = load i8, i8* %170, align 1
  %conv270 = sext i8 %171 to i32
  %cmp271 = icmp eq i32 %conv270, 96
  br i1 %cmp271, label %if.then.273, label %if.end.289

if.then.273:                                      ; preds = %if.end.269
  %172 = load %struct.backtick*, %struct.backtick** @backticks, align 8
  store %struct.backtick* %172, %struct.backtick** %bt, align 8
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.282, %if.then.273
  %173 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %tobool275 = icmp ne %struct.backtick* %173, null
  br i1 %tobool275, label %for.body.276, label %for.end.283

for.body.276:                                     ; preds = %for.cond.274
  %174 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %num277 = getelementptr inbounds %struct.backtick, %struct.backtick* %174, i32 0, i32 1
  %175 = load i32, i32* %num277, align 4
  %176 = load i32, i32* %num, align 4
  %cmp278 = icmp eq i32 %175, %176
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %for.body.276
  br label %for.end.283

if.end.281:                                       ; preds = %for.body.276
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.281
  %177 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %next = getelementptr inbounds %struct.backtick, %struct.backtick* %177, i32 0, i32 0
  %178 = load %struct.backtick*, %struct.backtick** %next, align 8
  store %struct.backtick* %178, %struct.backtick** %bt, align 8
  br label %for.cond.274

for.end.283:                                      ; preds = %if.then.280, %for.cond.274
  %179 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %cmp284 = icmp eq %struct.backtick* %179, null
  br i1 %cmp284, label %if.then.286, label %if.end.288

if.then.286:                                      ; preds = %for.end.283
  %180 = load i8*, i8** %p, align 8
  %incdec.ptr287 = getelementptr inbounds i8, i8* %180, i32 -1
  store i8* %incdec.ptr287, i8** %p, align 8
  br label %sw.epilog.913

if.end.288:                                       ; preds = %for.end.283
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.end.269
  %181 = load i32, i32* @MakeWinMsgEv.tick, align 4
  store i32 %181, i32* %oldtick, align 4
  %182 = load i32, i32* @winmsg_numrend, align 4
  store i32 %182, i32* %oldnumrend, align 4
  %183 = load i8*, i8** %p, align 8
  store i8 0, i8* %183, align 1
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %savebuf, i32 0, i32 0
  %call290 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0)) #3
  %184 = load i32, i32* @winmsg_numrend, align 4
  %sub291 = sub nsw i32 0, %184
  store i32 %sub291, i32* @winmsg_numrend, align 4
  %185 = load i8*, i8** %s, align 8
  %186 = load i8, i8* %185, align 1
  %conv292 = sext i8 %186 to i32
  %cmp293 = icmp eq i32 %conv292, 104
  br i1 %cmp293, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.289
  %187 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_hstatus295 = getelementptr inbounds %struct.win, %struct.win* %187, i32 0, i32 57
  %188 = load i8*, i8** %w_hstatus295, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.289
  %189 = load %struct.backtick*, %struct.backtick** %bt, align 8
  %tv_sec296 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %190 = load i64, i64* %tv_sec296, align 8
  %call297 = call i8* @runbacktick(%struct.backtick* %189, i32* %oldtick, i64 %190)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond298 = phi i8* [ %188, %cond.true ], [ %call297, %cond.false ]
  %191 = load %struct.win*, %struct.win** %win.addr, align 8
  %192 = load i32, i32* %rec.addr, align 4
  %add299 = add nsw i32 %192, 1
  %call300 = call i8* @MakeWinMsgEv(i8* %cond298, %struct.win* %191, i32 5, i32 0, %struct.event* null, i32 %add299)
  br label %do.body

do.body:                                          ; preds = %cond.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %193 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %tobool301 = icmp ne i32 %193, 0
  br i1 %tobool301, label %lor.lhs.false.302, label %if.then.305

lor.lhs.false.302:                                ; preds = %do.end
  %194 = load i32, i32* %oldtick, align 4
  %195 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %cmp303 = icmp slt i32 %194, %195
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %lor.lhs.false.302, %do.end
  %196 = load i32, i32* %oldtick, align 4
  store i32 %196, i32* @MakeWinMsgEv.tick, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %lor.lhs.false.302
  %call307 = call i64 @strlen(i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0)) #9
  %conv308 = trunc i64 %call307 to i32
  %197 = load i32, i32* %l, align 4
  %cmp309 = icmp slt i32 %conv308, %197
  br i1 %cmp309, label %if.then.311, label %if.end.314

if.then.311:                                      ; preds = %if.end.306
  %arraydecay312 = getelementptr inbounds [768 x i8], [768 x i8]* %savebuf, i32 0, i32 0
  %call313 = call i8* @strcat(i8* %arraydecay312, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0)) #3
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.311, %if.end.306
  %arraydecay315 = getelementptr inbounds [768 x i8], [768 x i8]* %savebuf, i32 0, i32 0
  %call316 = call i8* @strcpy(i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0), i8* %arraydecay315) #3
  br label %while.cond.317

while.cond.317:                                   ; preds = %while.body.320, %if.end.314
  %198 = load i32, i32* %oldnumrend, align 4
  %199 = load i32, i32* @winmsg_numrend, align 4
  %cmp318 = icmp slt i32 %198, %199
  br i1 %cmp318, label %while.body.320, label %while.end.328

while.body.320:                                   ; preds = %while.cond.317
  %200 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %200 to i64
  %sub.ptr.sub321 = sub i64 %sub.ptr.lhs.cast, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %201 = load i32, i32* %oldnumrend, align 4
  %inc322 = add nsw i32 %201, 1
  store i32 %inc322, i32* %oldnumrend, align 4
  %idxprom323 = sext i32 %201 to i64
  %arrayidx324 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom323
  %202 = load i32, i32* %arrayidx324, align 4
  %conv325 = sext i32 %202 to i64
  %add326 = add nsw i64 %conv325, %sub.ptr.sub321
  %conv327 = trunc i64 %add326 to i32
  store i32 %conv327, i32* %arrayidx324, align 4
  br label %while.cond.317

while.end.328:                                    ; preds = %while.cond.317
  %203 = load i8*, i8** %p, align 8
  %204 = load i8, i8* %203, align 1
  %tobool329 = icmp ne i8 %204, 0
  br i1 %tobool329, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %while.end.328
  store i32 1, i32* %qmflag, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.330, %while.end.328
  %205 = load i8*, i8** %p, align 8
  %call332 = call i64 @strlen(i8* %205) #9
  %sub333 = sub i64 %call332, 1
  %206 = load i8*, i8** %p, align 8
  %add.ptr334 = getelementptr inbounds i8, i8* %206, i64 %sub333
  store i8* %add.ptr334, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.335:                                        ; preds = %if.end.75, %if.end.75
  store %struct.win* null, %struct.win** %oldfore, align 8
  %207 = load %struct.display*, %struct.display** @display, align 8
  %tobool336 = icmp ne %struct.display* %207, null
  br i1 %tobool336, label %if.then.337, label %if.end.339

if.then.337:                                      ; preds = %sw.bb.335
  %208 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %208, i32 0, i32 10
  %209 = load %struct.win*, %struct.win** %d_fore, align 8
  store %struct.win* %209, %struct.win** %oldfore, align 8
  %210 = load %struct.win*, %struct.win** %win.addr, align 8
  %211 = load %struct.display*, %struct.display** @display, align 8
  %d_fore338 = getelementptr inbounds %struct.display, %struct.display* %211, i32 0, i32 10
  store %struct.win* %210, %struct.win** %d_fore338, align 8
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.337, %sw.bb.335
  %212 = load i8*, i8** %p, align 8
  %213 = load i32, i32* %l, align 4
  %sub340 = sub nsw i32 %213, 1
  %214 = load i8*, i8** %s, align 8
  %215 = load i8, i8* %214, align 1
  %conv341 = sext i8 %215 to i32
  %cmp342 = icmp eq i32 %conv341, 119
  %cond344 = select i1 %cmp342, i32 0, i32 1
  %216 = load i32, i32* %longflg, align 4
  %tobool345 = icmp ne i32 %216, 0
  %cond346 = select i1 %tobool345, i32 0, i32 2
  %or = or i32 %cond344, %cond346
  %217 = load i32, i32* %plusflg, align 4
  %tobool347 = icmp ne i32 %217, 0
  %cond348 = select i1 %tobool347, i32 4, i32 0
  %or349 = or i32 %or, %cond348
  %218 = load i32, i32* %minusflg, align 4
  %tobool350 = icmp ne i32 %218, 0
  %cond351 = select i1 %tobool350, i32 8, i32 0
  %or352 = or i32 %or349, %cond351
  %219 = load %struct.win*, %struct.win** %win.addr, align 8
  %tobool353 = icmp ne %struct.win* %219, null
  br i1 %tobool353, label %cond.true.354, label %cond.false.355

cond.true.354:                                    ; preds = %if.end.339
  %220 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %220, i32 0, i32 9
  %221 = load i32, i32* %w_number, align 4
  br label %cond.end.356

cond.false.355:                                   ; preds = %if.end.339
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.355, %cond.true.354
  %cond357 = phi i32 [ %221, %cond.true.354 ], [ -1, %cond.false.355 ]
  %call358 = call i8* @AddWindows(i8* %212, i32 %sub340, i32 %or352, i32 %cond357)
  store i8* %call358, i8** %ss, align 8
  %222 = load %struct.display*, %struct.display** @display, align 8
  %tobool359 = icmp ne %struct.display* %222, null
  br i1 %tobool359, label %if.then.360, label %if.end.362

if.then.360:                                      ; preds = %cond.end.356
  %223 = load %struct.win*, %struct.win** %oldfore, align 8
  %224 = load %struct.display*, %struct.display** @display, align 8
  %d_fore361 = getelementptr inbounds %struct.display, %struct.display* %224, i32 0, i32 10
  store %struct.win* %223, %struct.win** %d_fore361, align 8
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.360, %cond.end.356
  %225 = load i8*, i8** %p, align 8
  %226 = load i8, i8* %225, align 1
  %tobool363 = icmp ne i8 %226, 0
  br i1 %tobool363, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %if.end.362
  store i32 1, i32* %qmflag, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.364, %if.end.362
  %227 = load i8*, i8** %p, align 8
  %call366 = call i64 @strlen(i8* %227) #9
  %sub367 = sub i64 %call366, 1
  %228 = load i8*, i8** %p, align 8
  %add.ptr368 = getelementptr inbounds i8, i8* %228, i64 %sub367
  store i8* %add.ptr368, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.369:                                        ; preds = %if.end.75
  %229 = load i8*, i8** %p, align 8
  store i8 0, i8* %229, align 1
  %230 = load %struct.win*, %struct.win** %win.addr, align 8
  %tobool370 = icmp ne %struct.win* %230, null
  br i1 %tobool370, label %if.then.371, label %if.end.374

if.then.371:                                      ; preds = %sw.bb.369
  %231 = load i8*, i8** %p, align 8
  %232 = load i32, i32* %l, align 4
  %sub372 = sub nsw i32 %232, 1
  %233 = load %struct.win*, %struct.win** %win.addr, align 8
  %call373 = call i8* @AddOtherUsers(i8* %231, i32 %sub372, %struct.win* %233)
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.371, %sw.bb.369
  %234 = load i8*, i8** %p, align 8
  %235 = load i8, i8* %234, align 1
  %tobool375 = icmp ne i8 %235, 0
  br i1 %tobool375, label %if.then.376, label %if.end.377

if.then.376:                                      ; preds = %if.end.374
  store i32 1, i32* %qmflag, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.376, %if.end.374
  %236 = load i8*, i8** %p, align 8
  %call378 = call i64 @strlen(i8* %236) #9
  %sub379 = sub i64 %call378, 1
  %237 = load i8*, i8** %p, align 8
  %add.ptr380 = getelementptr inbounds i8, i8* %237, i64 %sub379
  store i8* %add.ptr380, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.381:                                        ; preds = %if.end.75
  %238 = load i8*, i8** %p, align 8
  store i8 0, i8* %238, align 1
  %239 = load %struct.win*, %struct.win** %win.addr, align 8
  %tobool382 = icmp ne %struct.win* %239, null
  br i1 %tobool382, label %if.then.383, label %if.end.386

if.then.383:                                      ; preds = %sw.bb.381
  %240 = load i8*, i8** %p, align 8
  %241 = load i32, i32* %l, align 4
  %sub384 = sub nsw i32 %241, 1
  %242 = load %struct.win*, %struct.win** %win.addr, align 8
  %call385 = call i8* @AddWindowFlags(i8* %240, i32 %sub384, %struct.win* %242)
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.383, %sw.bb.381
  %243 = load i8*, i8** %p, align 8
  %244 = load i8, i8* %243, align 1
  %tobool387 = icmp ne i8 %244, 0
  br i1 %tobool387, label %if.then.388, label %if.end.389

if.then.388:                                      ; preds = %if.end.386
  store i32 1, i32* %qmflag, align 4
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.388, %if.end.386
  %245 = load i8*, i8** %p, align 8
  %call390 = call i64 @strlen(i8* %245) #9
  %sub391 = sub i64 %call390, 1
  %246 = load i8*, i8** %p, align 8
  %add.ptr392 = getelementptr inbounds i8, i8* %246, i64 %sub391
  store i8* %add.ptr392, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.393:                                        ; preds = %if.end.75
  %247 = load i8*, i8** %p, align 8
  store i8 0, i8* %247, align 1
  %248 = load %struct.win*, %struct.win** %win.addr, align 8
  %tobool394 = icmp ne %struct.win* %248, null
  br i1 %tobool394, label %land.lhs.true.395, label %if.end.406

land.lhs.true.395:                                ; preds = %sw.bb.393
  %249 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_title = getelementptr inbounds %struct.win, %struct.win* %249, i32 0, i32 21
  %250 = load i8*, i8** %w_title, align 8
  %call396 = call i64 @strlen(i8* %250) #9
  %conv397 = trunc i64 %call396 to i32
  %251 = load i32, i32* %l, align 4
  %cmp398 = icmp slt i32 %conv397, %251
  br i1 %cmp398, label %if.then.400, label %if.end.406

if.then.400:                                      ; preds = %land.lhs.true.395
  %252 = load i8*, i8** %p, align 8
  %253 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_title401 = getelementptr inbounds %struct.win, %struct.win* %253, i32 0, i32 21
  %254 = load i8*, i8** %w_title401, align 8
  %call402 = call i8* @strcpy(i8* %252, i8* %254) #3
  %255 = load i8*, i8** %p, align 8
  %256 = load i8, i8* %255, align 1
  %tobool403 = icmp ne i8 %256, 0
  br i1 %tobool403, label %if.then.404, label %if.end.405

if.then.404:                                      ; preds = %if.then.400
  store i32 1, i32* %qmflag, align 4
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.404, %if.then.400
  br label %if.end.406

if.end.406:                                       ; preds = %if.end.405, %land.lhs.true.395, %sw.bb.393
  %257 = load i8*, i8** %p, align 8
  %call407 = call i64 @strlen(i8* %257) #9
  %sub408 = sub i64 %call407, 1
  %258 = load i8*, i8** %p, align 8
  %add.ptr409 = getelementptr inbounds i8, i8* %258, i64 %sub408
  store i8* %add.ptr409, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.410:                                        ; preds = %if.end.75
  %259 = load i8*, i8** %s, align 8
  %incdec.ptr411 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %incdec.ptr411, i8** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.412

for.cond.412:                                     ; preds = %for.inc.433, %sw.bb.410
  %260 = load i32, i32* %i, align 4
  %cmp413 = icmp slt i32 %260, 127
  br i1 %cmp413, label %for.body.415, label %for.end.435

for.body.415:                                     ; preds = %for.cond.412
  %261 = load i32, i32* %i, align 4
  %idxprom416 = sext i32 %261 to i64
  %262 = load i8*, i8** %s, align 8
  %arrayidx417 = getelementptr inbounds i8, i8* %262, i64 %idxprom416
  %263 = load i8, i8* %arrayidx417, align 1
  %conv418 = sext i8 %263 to i32
  %tobool419 = icmp ne i32 %conv418, 0
  br i1 %tobool419, label %land.lhs.true.420, label %if.else.431

land.lhs.true.420:                                ; preds = %for.body.415
  %264 = load i32, i32* %i, align 4
  %idxprom421 = sext i32 %264 to i64
  %265 = load i8*, i8** %s, align 8
  %arrayidx422 = getelementptr inbounds i8, i8* %265, i64 %idxprom421
  %266 = load i8, i8* %arrayidx422, align 1
  %conv423 = sext i8 %266 to i32
  %cmp424 = icmp ne i32 %conv423, 125
  br i1 %cmp424, label %if.then.426, label %if.else.431

if.then.426:                                      ; preds = %land.lhs.true.420
  %267 = load i32, i32* %i, align 4
  %idxprom427 = sext i32 %267 to i64
  %268 = load i8*, i8** %s, align 8
  %arrayidx428 = getelementptr inbounds i8, i8* %268, i64 %idxprom427
  %269 = load i8, i8* %arrayidx428, align 1
  %270 = load i32, i32* %i, align 4
  %idxprom429 = sext i32 %270 to i64
  %arrayidx430 = getelementptr inbounds [128 x i8], [128 x i8]* %rbuf, i32 0, i64 %idxprom429
  store i8 %269, i8* %arrayidx430, align 1
  br label %if.end.432

if.else.431:                                      ; preds = %land.lhs.true.420, %for.body.415
  br label %for.end.435

if.end.432:                                       ; preds = %if.then.426
  br label %for.inc.433

for.inc.433:                                      ; preds = %if.end.432
  %271 = load i32, i32* %i, align 4
  %inc434 = add nsw i32 %271, 1
  store i32 %inc434, i32* %i, align 4
  br label %for.cond.412

for.end.435:                                      ; preds = %if.else.431, %for.cond.412
  %272 = load i32, i32* %i, align 4
  %idxprom436 = sext i32 %272 to i64
  %273 = load i8*, i8** %s, align 8
  %arrayidx437 = getelementptr inbounds i8, i8* %273, i64 %idxprom436
  %274 = load i8, i8* %arrayidx437, align 1
  %conv438 = sext i8 %274 to i32
  %cmp439 = icmp eq i32 %conv438, 125
  br i1 %cmp439, label %land.lhs.true.441, label %if.end.480

land.lhs.true.441:                                ; preds = %for.end.435
  %275 = load i32, i32* @winmsg_numrend, align 4
  %cmp442 = icmp slt i32 %275, 256
  br i1 %cmp442, label %if.then.444, label %if.end.480

if.then.444:                                      ; preds = %land.lhs.true.441
  store i32 -1, i32* %r, align 4
  %276 = load i32, i32* %i, align 4
  %idxprom445 = sext i32 %276 to i64
  %arrayidx446 = getelementptr inbounds [128 x i8], [128 x i8]* %rbuf, i32 0, i64 %idxprom445
  store i8 0, i8* %arrayidx446, align 1
  br label %do.body.447

do.body.447:                                      ; preds = %if.then.444
  br label %do.end.448

do.end.448:                                       ; preds = %do.body.447
  %277 = load i32, i32* %i, align 4
  %cmp449 = icmp ne i32 %277, 1
  br i1 %cmp449, label %if.then.456, label %lor.lhs.false.451

lor.lhs.false.451:                                ; preds = %do.end.448
  %arrayidx452 = getelementptr inbounds [128 x i8], [128 x i8]* %rbuf, i32 0, i64 0
  %278 = load i8, i8* %arrayidx452, align 1
  %conv453 = sext i8 %278 to i32
  %cmp454 = icmp ne i32 %conv453, 45
  br i1 %cmp454, label %if.then.456, label %if.end.459

if.then.456:                                      ; preds = %lor.lhs.false.451, %do.end.448
  %arraydecay457 = getelementptr inbounds [128 x i8], [128 x i8]* %rbuf, i32 0, i32 0
  %call458 = call i32 @ParseAttrColor(i8* %arraydecay457, i8* null, i32 0)
  store i32 %call458, i32* %r, align 4
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.456, %lor.lhs.false.451
  %279 = load i32, i32* %r, align 4
  %cmp460 = icmp ne i32 %279, -1
  br i1 %cmp460, label %if.then.470, label %lor.lhs.false.462

lor.lhs.false.462:                                ; preds = %if.end.459
  %280 = load i32, i32* %i, align 4
  %cmp463 = icmp eq i32 %280, 1
  br i1 %cmp463, label %land.lhs.true.465, label %if.end.479

land.lhs.true.465:                                ; preds = %lor.lhs.false.462
  %arrayidx466 = getelementptr inbounds [128 x i8], [128 x i8]* %rbuf, i32 0, i64 0
  %281 = load i8, i8* %arrayidx466, align 1
  %conv467 = sext i8 %281 to i32
  %cmp468 = icmp eq i32 %conv467, 45
  br i1 %cmp468, label %if.then.470, label %if.end.479

if.then.470:                                      ; preds = %land.lhs.true.465, %if.end.459
  %282 = load i32, i32* %r, align 4
  %283 = load i32, i32* @winmsg_numrend, align 4
  %idxprom471 = sext i32 %283 to i64
  %arrayidx472 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rend, i32 0, i64 %idxprom471
  store i32 %282, i32* %arrayidx472, align 4
  %284 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast473 = ptrtoint i8* %284 to i64
  %sub.ptr.sub474 = sub i64 %sub.ptr.lhs.cast473, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %conv475 = trunc i64 %sub.ptr.sub474 to i32
  %285 = load i32, i32* @winmsg_numrend, align 4
  %idxprom476 = sext i32 %285 to i64
  %arrayidx477 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom476
  store i32 %conv475, i32* %arrayidx477, align 4
  %286 = load i32, i32* @winmsg_numrend, align 4
  %inc478 = add nsw i32 %286, 1
  store i32 %inc478, i32* @winmsg_numrend, align 4
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.470, %land.lhs.true.465, %lor.lhs.false.462
  br label %if.end.480

if.end.480:                                       ; preds = %if.end.479, %land.lhs.true.441, %for.end.435
  %287 = load i32, i32* %i, align 4
  %288 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %287 to i64
  %add.ptr481 = getelementptr inbounds i8, i8* %288, i64 %idx.ext
  store i8* %add.ptr481, i8** %s, align 8
  %289 = load i8*, i8** %p, align 8
  %incdec.ptr482 = getelementptr inbounds i8, i8* %289, i32 -1
  store i8* %incdec.ptr482, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.483:                                        ; preds = %if.end.75
  %290 = load i8*, i8** %p, align 8
  store i8 0, i8* %290, align 1
  %call484 = call i64 @strlen(i8* getelementptr inbounds ([768 x i8], [768 x i8]* @HostName, i32 0, i32 0)) #9
  %conv485 = trunc i64 %call484 to i32
  %291 = load i32, i32* %l, align 4
  %cmp486 = icmp slt i32 %conv485, %291
  br i1 %cmp486, label %if.then.488, label %if.end.493

if.then.488:                                      ; preds = %sw.bb.483
  %292 = load i8*, i8** %p, align 8
  %call489 = call i8* @strcpy(i8* %292, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @HostName, i32 0, i32 0)) #3
  %293 = load i8*, i8** %p, align 8
  %294 = load i8, i8* %293, align 1
  %tobool490 = icmp ne i8 %294, 0
  br i1 %tobool490, label %if.then.491, label %if.end.492

if.then.491:                                      ; preds = %if.then.488
  store i32 1, i32* %qmflag, align 4
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.491, %if.then.488
  br label %if.end.493

if.end.493:                                       ; preds = %if.end.492, %sw.bb.483
  %295 = load i8*, i8** %p, align 8
  %call494 = call i64 @strlen(i8* %295) #9
  %sub495 = sub i64 %call494, 1
  %296 = load i8*, i8** %p, align 8
  %add.ptr496 = getelementptr inbounds i8, i8* %296, i64 %sub495
  store i8* %add.ptr496, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.497:                                        ; preds = %if.end.75
  %297 = load i8*, i8** %p, align 8
  store i8 0, i8* %297, align 1
  %298 = load i8*, i8** @SockName, align 8
  %call498 = call i8* @strchr(i8* %298, i32 46) #9
  %add.ptr499 = getelementptr inbounds i8, i8* %call498, i64 1
  store i8* %add.ptr499, i8** %session_name, align 8
  %299 = load i8*, i8** %session_name, align 8
  %call500 = call i64 @strlen(i8* %299) #9
  %conv501 = trunc i64 %call500 to i32
  %300 = load i32, i32* %l, align 4
  %cmp502 = icmp slt i32 %conv501, %300
  br i1 %cmp502, label %if.then.504, label %if.end.509

if.then.504:                                      ; preds = %sw.bb.497
  %301 = load i8*, i8** %p, align 8
  %302 = load i8*, i8** %session_name, align 8
  %call505 = call i8* @strcpy(i8* %301, i8* %302) #3
  %303 = load i8*, i8** %p, align 8
  %304 = load i8, i8* %303, align 1
  %tobool506 = icmp ne i8 %304, 0
  br i1 %tobool506, label %if.then.507, label %if.end.508

if.then.507:                                      ; preds = %if.then.504
  store i32 1, i32* %qmflag, align 4
  br label %if.end.508

if.end.508:                                       ; preds = %if.then.507, %if.then.504
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508, %sw.bb.497
  %305 = load i8*, i8** %p, align 8
  %call510 = call i64 @strlen(i8* %305) #9
  %sub511 = sub i64 %call510, 1
  %306 = load i8*, i8** %p, align 8
  %add.ptr512 = getelementptr inbounds i8, i8* %306, i64 %sub511
  store i8* %add.ptr512, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.513:                                        ; preds = %if.end.75
  %307 = load i8*, i8** %p, align 8
  %308 = load i32, i32* %plusflg, align 4
  %tobool514 = icmp ne i32 %308, 0
  br i1 %tobool514, label %land.lhs.true.515, label %cond.false.518

land.lhs.true.515:                                ; preds = %sw.bb.513
  %309 = load %struct.display*, %struct.display** @display, align 8
  %tobool516 = icmp ne %struct.display* %309, null
  br i1 %tobool516, label %cond.true.517, label %cond.false.518

cond.true.517:                                    ; preds = %land.lhs.true.515
  %310 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %310, i32 0, i32 57
  %311 = load i32, i32* %d_userpid, align 4
  br label %cond.end.520

cond.false.518:                                   ; preds = %land.lhs.true.515, %sw.bb.513
  %call519 = call i32 @getpid() #3
  br label %cond.end.520

cond.end.520:                                     ; preds = %cond.false.518, %cond.true.517
  %cond521 = phi i32 [ %311, %cond.true.517 ], [ %call519, %cond.false.518 ]
  %call522 = call i32 (i8*, i8*, ...) @sprintf(i8* %307, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.143, i32 0, i32 0), i32 %cond521) #3
  %312 = load i8*, i8** %p, align 8
  %call523 = call i64 @strlen(i8* %312) #9
  %sub524 = sub i64 %call523, 1
  %313 = load i8*, i8** %p, align 8
  %add.ptr525 = getelementptr inbounds i8, i8* %313, i64 %sub524
  store i8* %add.ptr525, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.526:                                        ; preds = %if.end.75
  %314 = load i8*, i8** %p, align 8
  %incdec.ptr527 = getelementptr inbounds i8, i8* %314, i32 -1
  store i8* %incdec.ptr527, i8** %p, align 8
  %315 = load %struct.display*, %struct.display** @display, align 8
  %tobool528 = icmp ne %struct.display* %315, null
  br i1 %tobool528, label %land.lhs.true.529, label %if.end.544

land.lhs.true.529:                                ; preds = %sw.bb.526
  %316 = load %struct.event*, %struct.event** %ev.addr, align 8
  %tobool530 = icmp ne %struct.event* %316, null
  br i1 %tobool530, label %land.lhs.true.531, label %lor.lhs.false.534

land.lhs.true.531:                                ; preds = %land.lhs.true.529
  %317 = load %struct.event*, %struct.event** %ev.addr, align 8
  %318 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %318, i32 0, i32 4
  %319 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %c_captev = getelementptr inbounds %struct.canvas, %struct.canvas* %319, i32 0, i32 18
  %cmp532 = icmp eq %struct.event* %317, %c_captev
  br i1 %cmp532, label %if.then.542, label %lor.lhs.false.534

lor.lhs.false.534:                                ; preds = %land.lhs.true.531, %land.lhs.true.529
  %320 = load %struct.event*, %struct.event** %ev.addr, align 8
  %tobool535 = icmp ne %struct.event* %320, null
  br i1 %tobool535, label %if.end.544, label %land.lhs.true.536

land.lhs.true.536:                                ; preds = %lor.lhs.false.534
  %321 = load %struct.win*, %struct.win** %win.addr, align 8
  %tobool537 = icmp ne %struct.win* %321, null
  br i1 %tobool537, label %land.lhs.true.538, label %if.end.544

land.lhs.true.538:                                ; preds = %land.lhs.true.536
  %322 = load %struct.win*, %struct.win** %win.addr, align 8
  %323 = load %struct.display*, %struct.display** @display, align 8
  %d_fore539 = getelementptr inbounds %struct.display, %struct.display* %323, i32 0, i32 10
  %324 = load %struct.win*, %struct.win** %d_fore539, align 8
  %cmp540 = icmp eq %struct.win* %322, %324
  br i1 %cmp540, label %if.then.542, label %if.end.544

if.then.542:                                      ; preds = %land.lhs.true.538, %land.lhs.true.531
  %325 = load i32, i32* %minusflg, align 4
  %tobool543 = icmp ne i32 %325, 0
  %lnot = xor i1 %tobool543, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %minusflg, align 4
  br label %if.end.544

if.end.544:                                       ; preds = %if.then.542, %land.lhs.true.538, %land.lhs.true.536, %lor.lhs.false.534, %sw.bb.526
  %326 = load i32, i32* %minusflg, align 4
  %tobool545 = icmp ne i32 %326, 0
  br i1 %tobool545, label %if.then.546, label %if.end.547

if.then.546:                                      ; preds = %if.end.544
  store i32 1, i32* %qmflag, align 4
  br label %if.end.547

if.end.547:                                       ; preds = %if.then.546, %if.end.544
  br label %sw.epilog.913

sw.bb.548:                                        ; preds = %if.end.75
  %327 = load i8*, i8** %p, align 8
  %incdec.ptr549 = getelementptr inbounds i8, i8* %327, i32 -1
  store i8* %incdec.ptr549, i8** %p, align 8
  %328 = load %struct.display*, %struct.display** @display, align 8
  %tobool550 = icmp ne %struct.display* %328, null
  br i1 %tobool550, label %land.lhs.true.551, label %if.end.565

land.lhs.true.551:                                ; preds = %sw.bb.548
  %329 = load %struct.event*, %struct.event** %ev.addr, align 8
  %tobool552 = icmp ne %struct.event* %329, null
  br i1 %tobool552, label %land.lhs.true.553, label %if.end.565

land.lhs.true.553:                                ; preds = %land.lhs.true.551
  %330 = load %struct.event*, %struct.event** %ev.addr, align 8
  %331 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatusev = getelementptr inbounds %struct.display, %struct.display* %331, i32 0, i32 54
  %cmp554 = icmp ne %struct.event* %330, %d_hstatusev
  br i1 %cmp554, label %if.then.556, label %if.end.565

if.then.556:                                      ; preds = %land.lhs.true.553
  %332 = load %struct.event*, %struct.event** %ev.addr, align 8
  %data = getelementptr inbounds %struct.event, %struct.event* %332, i32 0, i32 2
  %333 = load i8*, i8** %data, align 8
  %334 = bitcast i8* %333 to %struct.canvas*
  store %struct.canvas* %334, %struct.canvas** %cv, align 8
  %335 = load %struct.event*, %struct.event** %ev.addr, align 8
  %336 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_captev557 = getelementptr inbounds %struct.canvas, %struct.canvas* %336, i32 0, i32 18
  %cmp558 = icmp eq %struct.event* %335, %c_captev557
  br i1 %cmp558, label %land.lhs.true.560, label %if.end.564

land.lhs.true.560:                                ; preds = %if.then.556
  %337 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %337, i32 0, i32 9
  %338 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %338, i32 0, i32 6
  %339 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %cmp561 = icmp eq %struct.LayFuncs* %339, @MarkLf
  br i1 %cmp561, label %if.then.563, label %if.end.564

if.then.563:                                      ; preds = %land.lhs.true.560
  store i32 1, i32* %qmflag, align 4
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.563, %land.lhs.true.560, %if.then.556
  br label %if.end.565

if.end.565:                                       ; preds = %if.end.564, %land.lhs.true.553, %land.lhs.true.551, %sw.bb.548
  br label %sw.epilog.913

sw.bb.566:                                        ; preds = %if.end.75
  %340 = load i8*, i8** %p, align 8
  %incdec.ptr567 = getelementptr inbounds i8, i8* %340, i32 -1
  store i8* %incdec.ptr567, i8** %p, align 8
  %341 = load %struct.display*, %struct.display** @display, align 8
  %tobool568 = icmp ne %struct.display* %341, null
  br i1 %tobool568, label %land.lhs.true.569, label %if.end.572

land.lhs.true.569:                                ; preds = %sw.bb.566
  %342 = load %struct.display*, %struct.display** @display, align 8
  %d_ESCseen = getelementptr inbounds %struct.display, %struct.display* %342, i32 0, i32 56
  %343 = load %struct.action*, %struct.action** %d_ESCseen, align 8
  %tobool570 = icmp ne %struct.action* %343, null
  br i1 %tobool570, label %if.then.571, label %if.end.572

if.then.571:                                      ; preds = %land.lhs.true.569
  store i32 1, i32* %qmflag, align 4
  br label %if.end.572

if.end.572:                                       ; preds = %if.then.571, %land.lhs.true.569, %sw.bb.566
  br label %sw.epilog.913

sw.bb.573:                                        ; preds = %if.end.75
  %344 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast574 = ptrtoint i8* %344 to i64
  %sub.ptr.sub575 = sub i64 %sub.ptr.lhs.cast574, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %conv576 = trunc i64 %sub.ptr.sub575 to i32
  store i32 %conv576, i32* %truncpos, align 4
  %345 = load i32, i32* %num, align 4
  %cmp577 = icmp sgt i32 %345, 100
  br i1 %cmp577, label %cond.true.579, label %cond.false.580

cond.true.579:                                    ; preds = %sw.bb.573
  br label %cond.end.581

cond.false.580:                                   ; preds = %sw.bb.573
  %346 = load i32, i32* %num, align 4
  br label %cond.end.581

cond.end.581:                                     ; preds = %cond.false.580, %cond.true.579
  %cond582 = phi i32 [ 100, %cond.true.579 ], [ %346, %cond.false.580 ]
  store i32 %cond582, i32* %truncper, align 4
  %347 = load i32, i32* %longflg, align 4
  store i32 %347, i32* %trunclong, align 4
  %348 = load i8*, i8** %p, align 8
  %incdec.ptr583 = getelementptr inbounds i8, i8* %348, i32 -1
  store i8* %incdec.ptr583, i8** %p, align 8
  br label %sw.epilog.913

sw.bb.584:                                        ; preds = %if.end.75, %if.end.75
  %349 = load i8*, i8** %p, align 8
  store i8 32, i8* %349, align 1
  %350 = load i32, i32* %num, align 4
  %tobool585 = icmp ne i32 %350, 0
  br i1 %tobool585, label %if.then.596, label %lor.lhs.false.586

lor.lhs.false.586:                                ; preds = %sw.bb.584
  %351 = load i32, i32* %zeroflg, align 4
  %tobool587 = icmp ne i32 %351, 0
  br i1 %tobool587, label %if.then.596, label %lor.lhs.false.588

lor.lhs.false.588:                                ; preds = %lor.lhs.false.586
  %352 = load i32, i32* %plusflg, align 4
  %tobool589 = icmp ne i32 %352, 0
  br i1 %tobool589, label %if.then.596, label %lor.lhs.false.590

lor.lhs.false.590:                                ; preds = %lor.lhs.false.588
  %353 = load i32, i32* %longflg, align 4
  %tobool591 = icmp ne i32 %353, 0
  br i1 %tobool591, label %if.then.596, label %lor.lhs.false.592

lor.lhs.false.592:                                ; preds = %lor.lhs.false.590
  %354 = load i8*, i8** %s, align 8
  %355 = load i8, i8* %354, align 1
  %conv593 = sext i8 %355 to i32
  %cmp594 = icmp ne i32 %conv593, 61
  br i1 %cmp594, label %if.then.596, label %if.else.881

if.then.596:                                      ; preds = %lor.lhs.false.592, %lor.lhs.false.590, %lor.lhs.false.588, %lor.lhs.false.586, %sw.bb.584
  %356 = load i32, i32* %minusflg, align 4
  %tobool597 = icmp ne i32 %356, 0
  br i1 %tobool597, label %if.then.598, label %if.else.614

if.then.598:                                      ; preds = %if.then.596
  %357 = load i32, i32* %plusflg, align 4
  %tobool599 = icmp ne i32 %357, 0
  br i1 %tobool599, label %cond.true.600, label %cond.false.601

cond.true.600:                                    ; preds = %if.then.598
  %358 = load i32, i32* %lastpad, align 4
  br label %cond.end.602

cond.false.601:                                   ; preds = %if.then.598
  %359 = load i32, i32* %padlen.addr, align 4
  br label %cond.end.602

cond.end.602:                                     ; preds = %cond.false.601, %cond.true.600
  %cond603 = phi i32 [ %358, %cond.true.600 ], [ %359, %cond.false.601 ]
  %360 = load i32, i32* %num, align 4
  %sub604 = sub nsw i32 %cond603, %360
  store i32 %sub604, i32* %num, align 4
  %361 = load i32, i32* %plusflg, align 4
  %tobool605 = icmp ne i32 %361, 0
  br i1 %tobool605, label %if.end.613, label %land.lhs.true.606

land.lhs.true.606:                                ; preds = %cond.end.602
  %362 = load i32, i32* %padlen.addr, align 4
  %cmp607 = icmp eq i32 %362, 0
  br i1 %cmp607, label %if.then.609, label %if.end.613

if.then.609:                                      ; preds = %land.lhs.true.606
  %363 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast610 = ptrtoint i8* %363 to i64
  %sub.ptr.sub611 = sub i64 %sub.ptr.lhs.cast610, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %conv612 = trunc i64 %sub.ptr.sub611 to i32
  store i32 %conv612, i32* %num, align 4
  br label %if.end.613

if.end.613:                                       ; preds = %if.then.609, %land.lhs.true.606, %cond.end.602
  store i32 0, i32* %plusflg, align 4
  br label %if.end.647

if.else.614:                                      ; preds = %if.then.596
  %364 = load i32, i32* %zeroflg, align 4
  %tobool615 = icmp ne i32 %364, 0
  br i1 %tobool615, label %if.end.646, label %if.then.616

if.then.616:                                      ; preds = %if.else.614
  %365 = load i8*, i8** %s, align 8
  %366 = load i8, i8* %365, align 1
  %conv617 = sext i8 %366 to i32
  %cmp618 = icmp ne i32 %conv617, 61
  br i1 %cmp618, label %land.lhs.true.620, label %if.end.626

land.lhs.true.620:                                ; preds = %if.then.616
  %367 = load i32, i32* %num, align 4
  %cmp621 = icmp eq i32 %367, 0
  br i1 %cmp621, label %land.lhs.true.623, label %if.end.626

land.lhs.true.623:                                ; preds = %land.lhs.true.620
  %368 = load i32, i32* %plusflg, align 4
  %tobool624 = icmp ne i32 %368, 0
  br i1 %tobool624, label %if.end.626, label %if.then.625

if.then.625:                                      ; preds = %land.lhs.true.623
  store i32 100, i32* %num, align 4
  br label %if.end.626

if.end.626:                                       ; preds = %if.then.625, %land.lhs.true.623, %land.lhs.true.620, %if.then.616
  %369 = load i32, i32* %num, align 4
  %cmp627 = icmp sgt i32 %369, 100
  br i1 %cmp627, label %if.then.629, label %if.end.630

if.then.629:                                      ; preds = %if.end.626
  store i32 100, i32* %num, align 4
  br label %if.end.630

if.end.630:                                       ; preds = %if.then.629, %if.end.626
  %370 = load i32, i32* %padlen.addr, align 4
  %cmp631 = icmp eq i32 %370, 0
  br i1 %cmp631, label %if.then.633, label %if.else.637

if.then.633:                                      ; preds = %if.end.630
  %371 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast634 = ptrtoint i8* %371 to i64
  %sub.ptr.sub635 = sub i64 %sub.ptr.lhs.cast634, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %conv636 = trunc i64 %sub.ptr.sub635 to i32
  store i32 %conv636, i32* %num, align 4
  br label %if.end.645

if.else.637:                                      ; preds = %if.end.630
  %372 = load i32, i32* %padlen.addr, align 4
  %373 = load i32, i32* %plusflg, align 4
  %tobool638 = icmp ne i32 %373, 0
  br i1 %tobool638, label %cond.true.639, label %cond.false.640

cond.true.639:                                    ; preds = %if.else.637
  %374 = load i32, i32* %lastpad, align 4
  br label %cond.end.641

cond.false.640:                                   ; preds = %if.else.637
  br label %cond.end.641

cond.end.641:                                     ; preds = %cond.false.640, %cond.true.639
  %cond642 = phi i32 [ %374, %cond.true.639 ], [ 0, %cond.false.640 ]
  %sub643 = sub nsw i32 %372, %cond642
  %375 = load i32, i32* %num, align 4
  %mul644 = mul nsw i32 %sub643, %375
  %div = sdiv i32 %mul644, 100
  store i32 %div, i32* %num, align 4
  br label %if.end.645

if.end.645:                                       ; preds = %cond.end.641, %if.then.633
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.645, %if.else.614
  br label %if.end.647

if.end.647:                                       ; preds = %if.end.646, %if.end.613
  %376 = load i32, i32* %num, align 4
  %cmp648 = icmp slt i32 %376, 0
  br i1 %cmp648, label %if.then.650, label %if.end.651

if.then.650:                                      ; preds = %if.end.647
  store i32 0, i32* %num, align 4
  br label %if.end.651

if.end.651:                                       ; preds = %if.then.650, %if.end.647
  %377 = load i32, i32* %plusflg, align 4
  %tobool652 = icmp ne i32 %377, 0
  br i1 %tobool652, label %if.then.653, label %if.end.655

if.then.653:                                      ; preds = %if.end.651
  %378 = load i32, i32* %lastpad, align 4
  %379 = load i32, i32* %num, align 4
  %add654 = add nsw i32 %379, %378
  store i32 %add654, i32* %num, align 4
  br label %if.end.655

if.end.655:                                       ; preds = %if.then.653, %if.end.651
  %380 = load i32, i32* %num, align 4
  %cmp656 = icmp sgt i32 %380, 767
  br i1 %cmp656, label %if.then.658, label %if.end.659

if.then.658:                                      ; preds = %if.end.655
  store i32 767, i32* %num, align 4
  br label %if.end.659

if.end.659:                                       ; preds = %if.then.658, %if.end.655
  %381 = load i32, i32* %numpad, align 4
  %tobool660 = icmp ne i32 %381, 0
  br i1 %tobool660, label %if.then.661, label %if.end.663

if.then.661:                                      ; preds = %if.end.659
  %382 = load i8*, i8** %p, align 8
  %383 = load i32, i32* %numpad, align 4
  %384 = load i32, i32* %num, align 4
  %call662 = call i8* @pad_expand(i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0), i8* %382, i32 %383, i32 %384)
  store i8* %call662, i8** %p, align 8
  br label %if.end.663

if.end.663:                                       ; preds = %if.then.661, %if.end.659
  store i32 0, i32* %numpad, align 4
  %385 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast664 = ptrtoint i8* %385 to i64
  %sub.ptr.sub665 = sub i64 %sub.ptr.lhs.cast664, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %386 = load i32, i32* %num, align 4
  %conv666 = sext i32 %386 to i64
  %cmp667 = icmp sgt i64 %sub.ptr.sub665, %conv666
  br i1 %cmp667, label %land.lhs.true.669, label %if.end.860

land.lhs.true.669:                                ; preds = %if.end.663
  %387 = load i32, i32* %longflg, align 4
  %tobool670 = icmp ne i32 %387, 0
  br i1 %tobool670, label %if.end.860, label %if.then.671

if.then.671:                                      ; preds = %land.lhs.true.669
  %388 = load i32, i32* %truncpos, align 4
  %cmp672 = icmp eq i32 %388, -1
  br i1 %cmp672, label %if.then.674, label %if.end.675

if.then.674:                                      ; preds = %if.then.671
  %389 = load i32, i32* %lastpad, align 4
  store i32 %389, i32* %truncpos, align 4
  store i32 0, i32* %truncper, align 4
  br label %if.end.675

if.end.675:                                       ; preds = %if.then.674, %if.then.671
  %390 = load i32, i32* %lastpad, align 4
  %391 = load i32, i32* %truncper, align 4
  %392 = load i32, i32* %num, align 4
  %393 = load i32, i32* %lastpad, align 4
  %sub676 = sub nsw i32 %392, %393
  %mul677 = mul nsw i32 %391, %sub676
  %div678 = sdiv i32 %mul677, 100
  %add679 = add nsw i32 %390, %div678
  store i32 %add679, i32* %trunc, align 4
  %394 = load i32, i32* %trunc, align 4
  %395 = load i32, i32* %num, align 4
  %cmp680 = icmp sgt i32 %394, %395
  br i1 %cmp680, label %if.then.682, label %if.end.683

if.then.682:                                      ; preds = %if.end.675
  %396 = load i32, i32* %num, align 4
  store i32 %396, i32* %trunc, align 4
  br label %if.end.683

if.end.683:                                       ; preds = %if.then.682, %if.end.675
  %397 = load i32, i32* %trunc, align 4
  %398 = load i32, i32* %lastpad, align 4
  %cmp684 = icmp slt i32 %397, %398
  br i1 %cmp684, label %if.then.686, label %if.end.687

if.then.686:                                      ; preds = %if.end.683
  %399 = load i32, i32* %lastpad, align 4
  store i32 %399, i32* %trunc, align 4
  br label %if.end.687

if.end.687:                                       ; preds = %if.then.686, %if.end.683
  %400 = load i32, i32* %truncpos, align 4
  %401 = load i32, i32* %trunc, align 4
  %sub688 = sub nsw i32 %400, %401
  store i32 %sub688, i32* %left, align 4
  %402 = load i32, i32* %left, align 4
  %conv689 = sext i32 %402 to i64
  %403 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast690 = ptrtoint i8* %403 to i64
  %sub.ptr.sub691 = sub i64 %sub.ptr.lhs.cast690, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %404 = load i32, i32* %num, align 4
  %conv692 = sext i32 %404 to i64
  %sub693 = sub nsw i64 %sub.ptr.sub691, %conv692
  %cmp694 = icmp sgt i64 %conv689, %sub693
  br i1 %cmp694, label %if.then.696, label %if.end.702

if.then.696:                                      ; preds = %if.end.687
  %405 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast697 = ptrtoint i8* %405 to i64
  %sub.ptr.sub698 = sub i64 %sub.ptr.lhs.cast697, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %406 = load i32, i32* %num, align 4
  %conv699 = sext i32 %406 to i64
  %sub700 = sub nsw i64 %sub.ptr.sub698, %conv699
  %conv701 = trunc i64 %sub700 to i32
  store i32 %conv701, i32* %left, align 4
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.696, %if.end.687
  br label %do.body.703

do.body.703:                                      ; preds = %if.end.702
  br label %do.end.704

do.end.704:                                       ; preds = %do.body.703
  br label %do.body.705

do.body.705:                                      ; preds = %do.end.704
  br label %do.end.706

do.end.706:                                       ; preds = %do.body.705
  %407 = load i32, i32* %left, align 4
  %cmp707 = icmp sgt i32 %407, 0
  br i1 %cmp707, label %if.then.709, label %if.end.803

if.then.709:                                      ; preds = %do.end.706
  %408 = load i32, i32* %left, align 4
  %409 = load i32, i32* %lastpad, align 4
  %add710 = add nsw i32 %408, %409
  %conv711 = sext i32 %add710 to i64
  %410 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast712 = ptrtoint i8* %410 to i64
  %sub.ptr.sub713 = sub i64 %sub.ptr.lhs.cast712, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %cmp714 = icmp sgt i64 %conv711, %sub.ptr.sub713
  br i1 %cmp714, label %if.then.716, label %if.end.722

if.then.716:                                      ; preds = %if.then.709
  %411 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast717 = ptrtoint i8* %411 to i64
  %sub.ptr.sub718 = sub i64 %sub.ptr.lhs.cast717, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %412 = load i32, i32* %lastpad, align 4
  %conv719 = sext i32 %412 to i64
  %sub720 = sub nsw i64 %sub.ptr.sub718, %conv719
  %conv721 = trunc i64 %sub720 to i32
  store i32 %conv721, i32* %left, align 4
  br label %if.end.722

if.end.722:                                       ; preds = %if.then.716, %if.then.709
  %413 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast723 = ptrtoint i8* %413 to i64
  %sub.ptr.sub724 = sub i64 %sub.ptr.lhs.cast723, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %414 = load i32, i32* %lastpad, align 4
  %conv725 = sext i32 %414 to i64
  %sub726 = sub nsw i64 %sub.ptr.sub724, %conv725
  %415 = load i32, i32* %left, align 4
  %conv727 = sext i32 %415 to i64
  %sub728 = sub nsw i64 %sub726, %conv727
  %cmp729 = icmp sgt i64 %sub728, 0
  br i1 %cmp729, label %if.then.731, label %if.end.744

if.then.731:                                      ; preds = %if.end.722
  %416 = load i32, i32* %lastpad, align 4
  %idx.ext732 = sext i32 %416 to i64
  %add.ptr733 = getelementptr inbounds i8, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0), i64 %idx.ext732
  %417 = load i32, i32* %left, align 4
  %idx.ext734 = sext i32 %417 to i64
  %add.ptr735 = getelementptr inbounds i8, i8* %add.ptr733, i64 %idx.ext734
  %418 = load i32, i32* %lastpad, align 4
  %idx.ext736 = sext i32 %418 to i64
  %add.ptr737 = getelementptr inbounds i8, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0), i64 %idx.ext736
  %419 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast738 = ptrtoint i8* %419 to i64
  %sub.ptr.sub739 = sub i64 %sub.ptr.lhs.cast738, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %420 = load i32, i32* %lastpad, align 4
  %conv740 = sext i32 %420 to i64
  %sub741 = sub nsw i64 %sub.ptr.sub739, %conv740
  %421 = load i32, i32* %left, align 4
  %conv742 = sext i32 %421 to i64
  %sub743 = sub nsw i64 %sub741, %conv742
  call void @bcopy(i8* %add.ptr735, i8* %add.ptr737, i64 %sub743) #3
  br label %if.end.744

if.end.744:                                       ; preds = %if.then.731, %if.end.722
  %422 = load i32, i32* %left, align 4
  %423 = load i8*, i8** %p, align 8
  %idx.ext745 = sext i32 %422 to i64
  %idx.neg = sub i64 0, %idx.ext745
  %add.ptr746 = getelementptr inbounds i8, i8* %423, i64 %idx.neg
  store i8* %add.ptr746, i8** %p, align 8
  %424 = load i32, i32* @winmsg_numrend, align 4
  store i32 %424, i32* %r, align 4
  br label %while.cond.747

while.cond.747:                                   ; preds = %if.end.767, %if.end.744
  %425 = load i32, i32* %r, align 4
  %tobool748 = icmp ne i32 %425, 0
  br i1 %tobool748, label %land.rhs.749, label %land.end.755

land.rhs.749:                                     ; preds = %while.cond.747
  %426 = load i32, i32* %r, align 4
  %sub750 = sub nsw i32 %426, 1
  %idxprom751 = sext i32 %sub750 to i64
  %arrayidx752 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom751
  %427 = load i32, i32* %arrayidx752, align 4
  %428 = load i32, i32* %lastpad, align 4
  %cmp753 = icmp sgt i32 %427, %428
  br label %land.end.755

land.end.755:                                     ; preds = %land.rhs.749, %while.cond.747
  %429 = phi i1 [ false, %while.cond.747 ], [ %cmp753, %land.rhs.749 ]
  br i1 %429, label %while.body.756, label %while.end.768

while.body.756:                                   ; preds = %land.end.755
  %430 = load i32, i32* %r, align 4
  %dec = add nsw i32 %430, -1
  store i32 %dec, i32* %r, align 4
  %431 = load i32, i32* %left, align 4
  %432 = load i32, i32* %r, align 4
  %idxprom757 = sext i32 %432 to i64
  %arrayidx758 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom757
  %433 = load i32, i32* %arrayidx758, align 4
  %sub759 = sub nsw i32 %433, %431
  store i32 %sub759, i32* %arrayidx758, align 4
  %434 = load i32, i32* %r, align 4
  %idxprom760 = sext i32 %434 to i64
  %arrayidx761 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom760
  %435 = load i32, i32* %arrayidx761, align 4
  %436 = load i32, i32* %lastpad, align 4
  %cmp762 = icmp slt i32 %435, %436
  br i1 %cmp762, label %if.then.764, label %if.end.767

if.then.764:                                      ; preds = %while.body.756
  %437 = load i32, i32* %lastpad, align 4
  %438 = load i32, i32* %r, align 4
  %idxprom765 = sext i32 %438 to i64
  %arrayidx766 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom765
  store i32 %437, i32* %arrayidx766, align 4
  br label %if.end.767

if.end.767:                                       ; preds = %if.then.764, %while.body.756
  br label %while.cond.747

while.end.768:                                    ; preds = %land.end.755
  %439 = load i32, i32* %trunclong, align 4
  %tobool769 = icmp ne i32 %439, 0
  br i1 %tobool769, label %if.then.770, label %if.end.802

if.then.770:                                      ; preds = %while.end.768
  %440 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast771 = ptrtoint i8* %440 to i64
  %sub.ptr.sub772 = sub i64 %sub.ptr.lhs.cast771, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %441 = load i32, i32* %lastpad, align 4
  %conv773 = sext i32 %441 to i64
  %cmp774 = icmp sgt i64 %sub.ptr.sub772, %conv773
  br i1 %cmp774, label %if.then.776, label %if.end.779

if.then.776:                                      ; preds = %if.then.770
  %442 = load i32, i32* %lastpad, align 4
  %idxprom777 = sext i32 %442 to i64
  %arrayidx778 = getelementptr inbounds [768 x i8], [768 x i8]* @winmsg_buf, i32 0, i64 %idxprom777
  store i8 46, i8* %arrayidx778, align 1
  br label %if.end.779

if.end.779:                                       ; preds = %if.then.776, %if.then.770
  %443 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast780 = ptrtoint i8* %443 to i64
  %sub.ptr.sub781 = sub i64 %sub.ptr.lhs.cast780, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %444 = load i32, i32* %lastpad, align 4
  %add782 = add nsw i32 %444, 1
  %conv783 = sext i32 %add782 to i64
  %cmp784 = icmp sgt i64 %sub.ptr.sub781, %conv783
  br i1 %cmp784, label %if.then.786, label %if.end.790

if.then.786:                                      ; preds = %if.end.779
  %445 = load i32, i32* %lastpad, align 4
  %add787 = add nsw i32 %445, 1
  %idxprom788 = sext i32 %add787 to i64
  %arrayidx789 = getelementptr inbounds [768 x i8], [768 x i8]* @winmsg_buf, i32 0, i64 %idxprom788
  store i8 46, i8* %arrayidx789, align 1
  br label %if.end.790

if.end.790:                                       ; preds = %if.then.786, %if.end.779
  %446 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast791 = ptrtoint i8* %446 to i64
  %sub.ptr.sub792 = sub i64 %sub.ptr.lhs.cast791, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %447 = load i32, i32* %lastpad, align 4
  %add793 = add nsw i32 %447, 2
  %conv794 = sext i32 %add793 to i64
  %cmp795 = icmp sgt i64 %sub.ptr.sub792, %conv794
  br i1 %cmp795, label %if.then.797, label %if.end.801

if.then.797:                                      ; preds = %if.end.790
  %448 = load i32, i32* %lastpad, align 4
  %add798 = add nsw i32 %448, 2
  %idxprom799 = sext i32 %add798 to i64
  %arrayidx800 = getelementptr inbounds [768 x i8], [768 x i8]* @winmsg_buf, i32 0, i64 %idxprom799
  store i8 46, i8* %arrayidx800, align 1
  br label %if.end.801

if.end.801:                                       ; preds = %if.then.797, %if.end.790
  br label %if.end.802

if.end.802:                                       ; preds = %if.end.801, %while.end.768
  br label %if.end.803

if.end.803:                                       ; preds = %if.end.802, %do.end.706
  %449 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast804 = ptrtoint i8* %449 to i64
  %sub.ptr.sub805 = sub i64 %sub.ptr.lhs.cast804, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %450 = load i32, i32* %num, align 4
  %conv806 = sext i32 %450 to i64
  %cmp807 = icmp sgt i64 %sub.ptr.sub805, %conv806
  br i1 %cmp807, label %if.then.809, label %if.end.847

if.then.809:                                      ; preds = %if.end.803
  %451 = load i32, i32* %num, align 4
  %idx.ext810 = sext i32 %451 to i64
  %add.ptr811 = getelementptr inbounds i8, i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0), i64 %idx.ext810
  store i8* %add.ptr811, i8** %p, align 8
  %452 = load i32, i32* %trunclong, align 4
  %tobool812 = icmp ne i32 %452, 0
  br i1 %tobool812, label %if.then.813, label %if.end.832

if.then.813:                                      ; preds = %if.then.809
  %453 = load i32, i32* %num, align 4
  %sub814 = sub nsw i32 %453, 1
  %454 = load i32, i32* %lastpad, align 4
  %cmp815 = icmp sge i32 %sub814, %454
  br i1 %cmp815, label %if.then.817, label %if.end.819

if.then.817:                                      ; preds = %if.then.813
  %455 = load i8*, i8** %p, align 8
  %arrayidx818 = getelementptr inbounds i8, i8* %455, i64 -1
  store i8 46, i8* %arrayidx818, align 1
  br label %if.end.819

if.end.819:                                       ; preds = %if.then.817, %if.then.813
  %456 = load i32, i32* %num, align 4
  %sub820 = sub nsw i32 %456, 2
  %457 = load i32, i32* %lastpad, align 4
  %cmp821 = icmp sge i32 %sub820, %457
  br i1 %cmp821, label %if.then.823, label %if.end.825

if.then.823:                                      ; preds = %if.end.819
  %458 = load i8*, i8** %p, align 8
  %arrayidx824 = getelementptr inbounds i8, i8* %458, i64 -2
  store i8 46, i8* %arrayidx824, align 1
  br label %if.end.825

if.end.825:                                       ; preds = %if.then.823, %if.end.819
  %459 = load i32, i32* %num, align 4
  %sub826 = sub nsw i32 %459, 3
  %460 = load i32, i32* %lastpad, align 4
  %cmp827 = icmp sge i32 %sub826, %460
  br i1 %cmp827, label %if.then.829, label %if.end.831

if.then.829:                                      ; preds = %if.end.825
  %461 = load i8*, i8** %p, align 8
  %arrayidx830 = getelementptr inbounds i8, i8* %461, i64 -3
  store i8 46, i8* %arrayidx830, align 1
  br label %if.end.831

if.end.831:                                       ; preds = %if.then.829, %if.end.825
  br label %if.end.832

if.end.832:                                       ; preds = %if.end.831, %if.then.809
  %462 = load i32, i32* @winmsg_numrend, align 4
  store i32 %462, i32* %r, align 4
  br label %while.cond.833

while.cond.833:                                   ; preds = %while.body.842, %if.end.832
  %463 = load i32, i32* %r, align 4
  %tobool834 = icmp ne i32 %463, 0
  br i1 %tobool834, label %land.rhs.835, label %land.end.841

land.rhs.835:                                     ; preds = %while.cond.833
  %464 = load i32, i32* %r, align 4
  %sub836 = sub nsw i32 %464, 1
  %idxprom837 = sext i32 %sub836 to i64
  %arrayidx838 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom837
  %465 = load i32, i32* %arrayidx838, align 4
  %466 = load i32, i32* %num, align 4
  %cmp839 = icmp sgt i32 %465, %466
  br label %land.end.841

land.end.841:                                     ; preds = %land.rhs.835, %while.cond.833
  %467 = phi i1 [ false, %while.cond.833 ], [ %cmp839, %land.rhs.835 ]
  br i1 %467, label %while.body.842, label %while.end.846

while.body.842:                                   ; preds = %land.end.841
  %468 = load i32, i32* %num, align 4
  %469 = load i32, i32* %r, align 4
  %dec843 = add nsw i32 %469, -1
  store i32 %dec843, i32* %r, align 4
  %idxprom844 = sext i32 %dec843 to i64
  %arrayidx845 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom844
  store i32 %468, i32* %arrayidx845, align 4
  br label %while.cond.833

while.end.846:                                    ; preds = %land.end.841
  br label %if.end.847

if.end.847:                                       ; preds = %while.end.846, %if.end.803
  store i32 -1, i32* %truncpos, align 4
  store i32 0, i32* %trunclong, align 4
  %470 = load i32, i32* %lastpad, align 4
  %conv848 = sext i32 %470 to i64
  %471 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast849 = ptrtoint i8* %471 to i64
  %sub.ptr.sub850 = sub i64 %sub.ptr.lhs.cast849, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %cmp851 = icmp sgt i64 %conv848, %sub.ptr.sub850
  br i1 %cmp851, label %if.then.853, label %if.end.857

if.then.853:                                      ; preds = %if.end.847
  %472 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast854 = ptrtoint i8* %472 to i64
  %sub.ptr.sub855 = sub i64 %sub.ptr.lhs.cast854, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %conv856 = trunc i64 %sub.ptr.sub855 to i32
  store i32 %conv856, i32* %lastpad, align 4
  br label %if.end.857

if.end.857:                                       ; preds = %if.then.853, %if.end.847
  br label %do.body.858

do.body.858:                                      ; preds = %if.end.857
  br label %do.end.859

do.end.859:                                       ; preds = %do.body.858
  br label %if.end.860

if.end.860:                                       ; preds = %do.end.859, %land.lhs.true.669, %if.end.663
  %473 = load i8*, i8** %s, align 8
  %474 = load i8, i8* %473, align 1
  %conv861 = sext i8 %474 to i32
  %cmp862 = icmp eq i32 %conv861, 61
  br i1 %cmp862, label %if.then.864, label %if.end.879

if.then.864:                                      ; preds = %if.end.860
  br label %while.cond.865

while.cond.865:                                   ; preds = %while.body.871, %if.then.864
  %475 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast866 = ptrtoint i8* %475 to i64
  %sub.ptr.sub867 = sub i64 %sub.ptr.lhs.cast866, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %476 = load i32, i32* %num, align 4
  %conv868 = sext i32 %476 to i64
  %cmp869 = icmp slt i64 %sub.ptr.sub867, %conv868
  br i1 %cmp869, label %while.body.871, label %while.end.873

while.body.871:                                   ; preds = %while.cond.865
  %477 = load i8*, i8** %p, align 8
  %incdec.ptr872 = getelementptr inbounds i8, i8* %477, i32 1
  store i8* %incdec.ptr872, i8** %p, align 8
  store i8 32, i8* %477, align 1
  br label %while.cond.865

while.end.873:                                    ; preds = %while.cond.865
  %478 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast874 = ptrtoint i8* %478 to i64
  %sub.ptr.sub875 = sub i64 %sub.ptr.lhs.cast874, ptrtoint ([768 x i8]* @winmsg_buf to i64)
  %conv876 = trunc i64 %sub.ptr.sub875 to i32
  store i32 %conv876, i32* %lastpad, align 4
  store i32 -1, i32* %truncpos, align 4
  store i32 0, i32* %trunclong, align 4
  br label %do.body.877

do.body.877:                                      ; preds = %while.end.873
  br label %do.end.878

do.end.878:                                       ; preds = %do.body.877
  br label %if.end.879

if.end.879:                                       ; preds = %do.end.878, %if.end.860
  %479 = load i8*, i8** %p, align 8
  %incdec.ptr880 = getelementptr inbounds i8, i8* %479, i32 -1
  store i8* %incdec.ptr880, i8** %p, align 8
  br label %if.end.886

if.else.881:                                      ; preds = %lor.lhs.false.592
  %480 = load i32, i32* %padlen.addr, align 4
  %tobool882 = icmp ne i32 %480, 0
  br i1 %tobool882, label %if.then.883, label %if.end.885

if.then.883:                                      ; preds = %if.else.881
  %481 = load i8*, i8** %p, align 8
  store i8 127, i8* %481, align 1
  %482 = load i32, i32* %numpad, align 4
  %inc884 = add nsw i32 %482, 1
  store i32 %inc884, i32* %numpad, align 4
  br label %if.end.885

if.end.885:                                       ; preds = %if.then.883, %if.else.881
  br label %if.end.886

if.end.886:                                       ; preds = %if.end.885, %if.end.879
  br label %sw.epilog.913

sw.bb.887:                                        ; preds = %if.end.75
  %483 = load i8*, i8** %s, align 8
  %incdec.ptr888 = getelementptr inbounds i8, i8* %483, i32 1
  store i8* %incdec.ptr888, i8** %s, align 8
  br label %sw.default.889

sw.default.889:                                   ; preds = %if.end.75, %sw.bb.887
  %484 = load i8*, i8** %s, align 8
  %incdec.ptr890 = getelementptr inbounds i8, i8* %484, i32 -1
  store i8* %incdec.ptr890, i8** %s, align 8
  %485 = load i32, i32* %l, align 4
  %486 = load i32, i32* %num, align 4
  %add891 = add nsw i32 10, %486
  %cmp892 = icmp sgt i32 %485, %add891
  br i1 %cmp892, label %if.then.894, label %if.end.912

if.then.894:                                      ; preds = %sw.default.889
  %487 = load i32, i32* %num, align 4
  %cmp895 = icmp eq i32 %487, 0
  br i1 %cmp895, label %if.then.897, label %if.end.898

if.then.897:                                      ; preds = %if.then.894
  store i32 1, i32* %num, align 4
  br label %if.end.898

if.end.898:                                       ; preds = %if.then.897, %if.then.894
  %488 = load %struct.win*, %struct.win** %win.addr, align 8
  %tobool899 = icmp ne %struct.win* %488, null
  br i1 %tobool899, label %if.else.905, label %if.then.900

if.then.900:                                      ; preds = %if.end.898
  %489 = load i8*, i8** %p, align 8
  %490 = load i32, i32* %num, align 4
  %491 = load i32, i32* %num, align 4
  %cmp901 = icmp sgt i32 %491, 1
  %cond903 = select i1 %cmp901, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i32 0, i32 0)
  %call904 = call i32 (i8*, i8*, ...) @sprintf(i8* %489, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0), i32 %490, i8* %cond903) #3
  br label %if.end.908

if.else.905:                                      ; preds = %if.end.898
  %492 = load i8*, i8** %p, align 8
  %493 = load i32, i32* %num, align 4
  %494 = load %struct.win*, %struct.win** %win.addr, align 8
  %w_number906 = getelementptr inbounds %struct.win, %struct.win* %494, i32 0, i32 9
  %495 = load i32, i32* %w_number906, align 4
  %call907 = call i32 (i8*, i8*, ...) @sprintf(i8* %492, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i32 0, i32 0), i32 %493, i32 %495) #3
  br label %if.end.908

if.end.908:                                       ; preds = %if.else.905, %if.then.900
  store i32 1, i32* %qmflag, align 4
  %496 = load i8*, i8** %p, align 8
  %call909 = call i64 @strlen(i8* %496) #9
  %sub910 = sub i64 %call909, 1
  %497 = load i8*, i8** %p, align 8
  %add.ptr911 = getelementptr inbounds i8, i8* %497, i64 %sub910
  store i8* %add.ptr911, i8** %p, align 8
  br label %if.end.912

if.end.912:                                       ; preds = %if.end.908, %sw.default.889
  br label %sw.epilog.913

sw.epilog.913:                                    ; preds = %if.end.912, %if.end.886, %cond.end.581, %if.end.572, %if.end.565, %if.end.547, %cond.end.520, %if.end.509, %if.end.493, %if.end.480, %if.end.406, %if.end.389, %if.end.377, %if.end.365, %if.end.331, %if.then.286, %if.then.267, %if.end.245, %for.end, %sw.epilog.187, %if.then.112, %if.end.108, %if.then.96, %if.end.92, %if.end.91
  br label %for.inc.914

for.inc.914:                                      ; preds = %sw.epilog.913, %if.then.31, %if.end.25, %if.end.15
  %498 = load i8*, i8** %s, align 8
  %incdec.ptr915 = getelementptr inbounds i8, i8* %498, i32 1
  store i8* %incdec.ptr915, i8** %s, align 8
  %499 = load i8*, i8** %p, align 8
  %incdec.ptr916 = getelementptr inbounds i8, i8* %499, i32 1
  store i8* %incdec.ptr916, i8** %p, align 8
  br label %for.cond

for.end.917:                                      ; preds = %land.end
  %500 = load i8*, i8** %qmpos, align 8
  %tobool918 = icmp ne i8* %500, null
  br i1 %tobool918, label %land.lhs.true.919, label %if.end.923

land.lhs.true.919:                                ; preds = %for.end.917
  %501 = load i32, i32* %qmflag, align 4
  %tobool920 = icmp ne i32 %501, 0
  br i1 %tobool920, label %if.end.923, label %if.then.921

if.then.921:                                      ; preds = %land.lhs.true.919
  %502 = load i8*, i8** %qmpos, align 8
  %add.ptr922 = getelementptr inbounds i8, i8* %502, i64 1
  store i8* %add.ptr922, i8** %p, align 8
  br label %if.end.923

if.end.923:                                       ; preds = %if.then.921, %land.lhs.true.919, %for.end.917
  %503 = load i8*, i8** %p, align 8
  store i8 0, i8* %503, align 1
  %504 = load i32, i32* %numpad, align 4
  %tobool924 = icmp ne i32 %504, 0
  br i1 %tobool924, label %if.then.925, label %if.end.931

if.then.925:                                      ; preds = %if.end.923
  %505 = load i32, i32* %padlen.addr, align 4
  %cmp926 = icmp sgt i32 %505, 767
  br i1 %cmp926, label %if.then.928, label %if.end.929

if.then.928:                                      ; preds = %if.then.925
  store i32 767, i32* %padlen.addr, align 4
  br label %if.end.929

if.end.929:                                       ; preds = %if.then.928, %if.then.925
  %506 = load i8*, i8** %p, align 8
  %507 = load i32, i32* %numpad, align 4
  %508 = load i32, i32* %padlen.addr, align 4
  %call930 = call i8* @pad_expand(i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0), i8* %506, i32 %507, i32 %508)
  store i8* %call930, i8** %p, align 8
  br label %if.end.931

if.end.931:                                       ; preds = %if.end.929, %if.end.923
  %509 = load %struct.event*, %struct.event** %ev.addr, align 8
  %tobool932 = icmp ne %struct.event* %509, null
  br i1 %tobool932, label %if.then.933, label %if.end.936

if.then.933:                                      ; preds = %if.end.931
  %510 = load %struct.event*, %struct.event** %ev.addr, align 8
  call void @evdeq(%struct.event* %510)
  %511 = load %struct.event*, %struct.event** %ev.addr, align 8
  %timeout = getelementptr inbounds %struct.event, %struct.event* %511, i32 0, i32 6
  %tv_sec934 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  store i64 0, i64* %tv_sec934, align 8
  %512 = load %struct.event*, %struct.event** %ev.addr, align 8
  %timeout935 = getelementptr inbounds %struct.event, %struct.event* %512, i32 0, i32 6
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout935, i32 0, i32 1
  store i64 0, i64* %tv_usec, align 8
  br label %if.end.936

if.end.936:                                       ; preds = %if.then.933, %if.end.931
  %513 = load %struct.event*, %struct.event** %ev.addr, align 8
  %tobool937 = icmp ne %struct.event* %513, null
  br i1 %tobool937, label %land.lhs.true.938, label %if.end.959

land.lhs.true.938:                                ; preds = %if.end.936
  %514 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %tobool939 = icmp ne i32 %514, 0
  br i1 %tobool939, label %if.then.940, label %if.end.959

if.then.940:                                      ; preds = %land.lhs.true.938
  %tv_usec941 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  store i64 100000, i64* %tv_usec941, align 8
  %515 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %cmp942 = icmp eq i32 %515, 1
  br i1 %cmp942, label %if.then.944, label %if.else.947

if.then.944:                                      ; preds = %if.then.940
  %tv_sec945 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %516 = load i64, i64* %tv_sec945, align 8
  %inc946 = add nsw i64 %516, 1
  store i64 %inc946, i64* %tv_sec945, align 8
  br label %if.end.955

if.else.947:                                      ; preds = %if.then.940
  %517 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %conv948 = sext i32 %517 to i64
  %tv_sec949 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %518 = load i64, i64* %tv_sec949, align 8
  %519 = load i32, i32* @MakeWinMsgEv.tick, align 4
  %conv950 = sext i32 %519 to i64
  %rem951 = srem i64 %518, %conv950
  %sub952 = sub nsw i64 %conv948, %rem951
  %tv_sec953 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %520 = load i64, i64* %tv_sec953, align 8
  %add954 = add nsw i64 %520, %sub952
  store i64 %add954, i64* %tv_sec953, align 8
  br label %if.end.955

if.end.955:                                       ; preds = %if.else.947, %if.then.944
  %521 = load %struct.event*, %struct.event** %ev.addr, align 8
  %timeout956 = getelementptr inbounds %struct.event, %struct.event* %521, i32 0, i32 6
  %522 = bitcast %struct.timeval* %timeout956 to i8*
  %523 = bitcast %struct.timeval* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %522, i8* %523, i64 16, i32 8, i1 false)
  br label %do.body.957

do.body.957:                                      ; preds = %if.end.955
  br label %do.end.958

do.end.958:                                       ; preds = %do.body.957
  br label %if.end.959

if.end.959:                                       ; preds = %do.end.958, %land.lhs.true.938, %if.end.936
  ret i8* getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0)
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

declare void @AddLoadav(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @runbacktick(%struct.backtick* %bt, i32* %tickp, i64 %now) #0 {
entry:
  %retval = alloca i8*, align 8
  %bt.addr = alloca %struct.backtick*, align 8
  %tickp.addr = alloca i32*, align 8
  %now.addr = alloca i64, align 8
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %j = alloca i32, align 4
  %now2 = alloca i64, align 8
  store %struct.backtick* %bt, %struct.backtick** %bt.addr, align 8
  store i32* %tickp, i32** %tickp.addr, align 8
  store i64 %now, i64* %now.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %tick = getelementptr inbounds %struct.backtick, %struct.backtick* %0, i32 0, i32 2
  %1 = load i32, i32* %tick, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %2 = load i32*, i32** %tickp.addr, align 8
  %3 = load i32, i32* %2, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %tick2 = getelementptr inbounds %struct.backtick, %struct.backtick* %4, i32 0, i32 2
  %5 = load i32, i32* %tick2, align 4
  %6 = load i32*, i32** %tickp.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %tick3 = getelementptr inbounds %struct.backtick, %struct.backtick* %8, i32 0, i32 2
  %9 = load i32, i32* %tick3, align 4
  %10 = load i32*, i32** %tickp.addr, align 8
  store i32 %9, i32* %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %do.end
  %11 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %lifespan = getelementptr inbounds %struct.backtick, %struct.backtick* %11, i32 0, i32 3
  %12 = load i32, i32* %lifespan, align 4
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %land.lhs.true.5, label %lor.lhs.false.8

land.lhs.true.5:                                  ; preds = %if.end
  %13 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %tick6 = getelementptr inbounds %struct.backtick, %struct.backtick* %13, i32 0, i32 2
  %14 = load i32, i32* %tick6, align 4
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %land.lhs.true.5, %if.end
  %15 = load i64, i64* %now.addr, align 8
  %16 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %bestbefore = getelementptr inbounds %struct.backtick, %struct.backtick* %16, i32 0, i32 4
  %17 = load i64, i64* %bestbefore, align 8
  %cmp9 = icmp slt i64 %15, %17
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %lor.lhs.false.8, %land.lhs.true.5
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  %18 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result = getelementptr inbounds %struct.backtick, %struct.backtick* %18, i32 0, i32 5
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %result, i32 0, i32 0
  store i8* %arraydecay, i8** %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false.8
  %19 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %cmdv = getelementptr inbounds %struct.backtick, %struct.backtick* %19, i32 0, i32 6
  %20 = load i8**, i8*** %cmdv, align 8
  %call = call i32 @readpipe(i8** %20)
  store i32 %call, i32* %f, align 4
  %21 = load i32, i32* %f, align 4
  %cmp14 = icmp eq i32 %21, -1
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %22 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result16 = getelementptr inbounds %struct.backtick, %struct.backtick* %22, i32 0, i32 5
  %arraydecay17 = getelementptr inbounds [768 x i8], [768 x i8]* %result16, i32 0, i32 0
  store i8* %arraydecay17, i8** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.58, %if.end.18
  %23 = load i32, i32* %f, align 4
  %24 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result19 = getelementptr inbounds %struct.backtick, %struct.backtick* %24, i32 0, i32 5
  %arraydecay20 = getelementptr inbounds [768 x i8], [768 x i8]* %result19, i32 0, i32 0
  %25 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay20, i64 %idx.ext
  %26 = load i32, i32* %i, align 4
  %conv = sext i32 %26 to i64
  %sub = sub i64 768, %conv
  %call21 = call i64 @read(i32 %23, i8* %add.ptr, i64 %sub)
  %conv22 = trunc i64 %call21 to i32
  store i32 %conv22, i32* %l, align 4
  %cmp23 = icmp sgt i32 %conv22, 0
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.25

do.body.25:                                       ; preds = %while.body
  br label %do.end.26

do.end.26:                                        ; preds = %do.body.25
  %27 = load i32, i32* %l, align 4
  %28 = load i32, i32* %i, align 4
  %add = add nsw i32 %28, %27
  store i32 %add, i32* %i, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.26
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %l, align 4
  %cmp27 = icmp slt i32 %29, %30
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %j, align 4
  %sub29 = sub nsw i32 %31, %32
  %sub30 = sub nsw i32 %sub29, 1
  %idxprom = sext i32 %sub30 to i64
  %33 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result31 = getelementptr inbounds %struct.backtick, %struct.backtick* %33, i32 0, i32 5
  %arrayidx = getelementptr inbounds [768 x i8], [768 x i8]* %result31, i32 0, i64 %idxprom
  %34 = load i8, i8* %arrayidx, align 1
  %conv32 = sext i8 %34 to i32
  %cmp33 = icmp eq i32 %conv32, 10
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body
  br label %for.end

if.end.36:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %35 = load i32, i32* %j, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.35, %for.cond
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %l, align 4
  %cmp37 = icmp eq i32 %36, %37
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.45

land.lhs.true.39:                                 ; preds = %for.end
  %38 = load i32, i32* %i, align 4
  %conv40 = sext i32 %38 to i64
  %cmp41 = icmp eq i64 %conv40, 768
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %land.lhs.true.39
  store i32 384, i32* %j, align 4
  %39 = load i32, i32* %j, align 4
  %add44 = add nsw i32 %39, 1
  store i32 %add44, i32* %l, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.39, %for.end
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %l, align 4
  %cmp46 = icmp slt i32 %40, %41
  br i1 %cmp46, label %if.then.48, label %if.end.58

if.then.48:                                       ; preds = %if.end.45
  %42 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result49 = getelementptr inbounds %struct.backtick, %struct.backtick* %42, i32 0, i32 5
  %arraydecay50 = getelementptr inbounds [768 x i8], [768 x i8]* %result49, i32 0, i32 0
  %43 = load i32, i32* %i, align 4
  %idx.ext51 = sext i32 %43 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %arraydecay50, i64 %idx.ext51
  %44 = load i32, i32* %j, align 4
  %idx.ext53 = sext i32 %44 to i64
  %idx.neg = sub i64 0, %idx.ext53
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr52, i64 %idx.neg
  %45 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result55 = getelementptr inbounds %struct.backtick, %struct.backtick* %45, i32 0, i32 5
  %arraydecay56 = getelementptr inbounds [768 x i8], [768 x i8]* %result55, i32 0, i32 0
  %46 = load i32, i32* %j, align 4
  %conv57 = sext i32 %46 to i64
  call void @bcopy(i8* %add.ptr54, i8* %arraydecay56, i64 %conv57) #3
  %47 = load i32, i32* %j, align 4
  store i32 %47, i32* %i, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.48, %if.end.45
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load i32, i32* %f, align 4
  %call59 = call i32 @close(i32 %48)
  %49 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result60 = getelementptr inbounds %struct.backtick, %struct.backtick* %49, i32 0, i32 5
  %arrayidx61 = getelementptr inbounds [768 x i8], [768 x i8]* %result60, i32 0, i64 767
  store i8 10, i8* %arrayidx61, align 1
  %50 = load i32, i32* %i, align 4
  %tobool62 = icmp ne i32 %50, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.72

land.lhs.true.63:                                 ; preds = %while.end
  %51 = load i32, i32* %i, align 4
  %sub64 = sub nsw i32 %51, 1
  %idxprom65 = sext i32 %sub64 to i64
  %52 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result66 = getelementptr inbounds %struct.backtick, %struct.backtick* %52, i32 0, i32 5
  %arrayidx67 = getelementptr inbounds [768 x i8], [768 x i8]* %result66, i32 0, i64 %idxprom65
  %53 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %53 to i32
  %cmp69 = icmp eq i32 %conv68, 10
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.63
  %54 = load i32, i32* %i, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %i, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %land.lhs.true.63, %while.end
  br label %do.body.73

do.body.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.body.73
  %55 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %55 to i64
  %56 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result76 = getelementptr inbounds %struct.backtick, %struct.backtick* %56, i32 0, i32 5
  %arrayidx77 = getelementptr inbounds [768 x i8], [768 x i8]* %result76, i32 0, i64 %idxprom75
  store i8 0, i8* %arrayidx77, align 1
  %57 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  call void @backtick_filter(%struct.backtick* %57)
  %call78 = call i64 @time(i64* %now2) #3
  %58 = load i64, i64* %now2, align 8
  %59 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %lifespan79 = getelementptr inbounds %struct.backtick, %struct.backtick* %59, i32 0, i32 3
  %60 = load i32, i32* %lifespan79, align 4
  %conv80 = sext i32 %60 to i64
  %add81 = add nsw i64 %58, %conv80
  %61 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %bestbefore82 = getelementptr inbounds %struct.backtick, %struct.backtick* %61, i32 0, i32 4
  store i64 %add81, i64* %bestbefore82, align 8
  %62 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result83 = getelementptr inbounds %struct.backtick, %struct.backtick* %62, i32 0, i32 5
  %arraydecay84 = getelementptr inbounds [768 x i8], [768 x i8]* %result83, i32 0, i32 0
  store i8* %arraydecay84, i8** %retval
  br label %return

return:                                           ; preds = %do.end.74, %if.then.15, %do.end.12
  %63 = load i8*, i8** %retval
  ret i8* %63
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i8* @AddWindows(i8*, i32, i32, i32) #1

declare i8* @AddOtherUsers(i8*, i32, %struct.win*) #1

declare i8* @AddWindowFlags(i8*, i32, %struct.win*) #1

declare i32 @ParseAttrColor(i8*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal i8* @pad_expand(i8* %buf, i8* %p, i32 %numpad, i32 %padlen) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %numpad.addr = alloca i32, align 4
  %padlen.addr = alloca i32, align 4
  %pn = alloca i8*, align 8
  %pn2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %numpad, i32* %numpad.addr, align 4
  store i32 %padlen, i32* %padlen.addr, align 4
  %0 = load i32, i32* %padlen.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %conv, %sub.ptr.sub
  %conv1 = trunc i64 %sub to i32
  store i32 %conv1, i32* %padlen.addr, align 4
  %3 = load i32, i32* %padlen.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %padlen.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %p.addr, align 8
  %5 = load i32, i32* %padlen.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %pn, align 8
  store i8* %add.ptr, i8** %pn2, align 8
  %6 = load i32, i32* @winmsg_numrend, align 4
  store i32 %6, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.63, %if.then.16, %if.end
  %7 = load i8*, i8** %p.addr, align 8
  %8 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp uge i8* %7, %8
  br i1 %cmp3, label %while.body, label %while.end.64

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %r, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %while.body
  %10 = load i8*, i8** %p.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp ne i32 %conv5, 127
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.23

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %12 = load i8*, i8** %p.addr, align 8
  %13 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast9 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %13 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %14 = load i32, i32* %r, align 4
  %sub12 = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub12 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %conv13 = sext i32 %15 to i64
  %cmp14 = icmp eq i64 %sub.ptr.sub11, %conv13
  br i1 %cmp14, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %land.lhs.true.8
  %16 = load i8*, i8** %pn, align 8
  %17 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast17 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %17 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %conv20 = trunc i64 %sub.ptr.sub19 to i32
  %18 = load i32, i32* %r, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %r, align 4
  %idxprom21 = sext i32 %dec to i64
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom21
  store i32 %conv20, i32* %arrayidx22, align 4
  br label %while.cond

if.end.23:                                        ; preds = %land.lhs.true.8, %land.lhs.true, %while.body
  %19 = load i8*, i8** %p.addr, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %pn, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr, i8** %pn, align 8
  store i8 %20, i8* %21, align 1
  %22 = load i8*, i8** %p.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr24, i8** %p.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 127
  br i1 %cmp26, label %if.then.28, label %if.end.63

if.then.28:                                       ; preds = %if.end.23
  %24 = load i8*, i8** %pn, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 32, i8* %arrayidx29, align 1
  %25 = load i32, i32* %numpad.addr, align 4
  %cmp30 = icmp sgt i32 %25, 0
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.28
  %26 = load i32, i32* %padlen.addr, align 4
  %27 = load i32, i32* %numpad.addr, align 4
  %add = add nsw i32 %26, %27
  %sub32 = sub nsw i32 %add, 1
  %28 = load i32, i32* %numpad.addr, align 4
  %div = sdiv i32 %sub32, %28
  br label %cond.end

cond.false:                                       ; preds = %if.then.28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %padlen.addr, align 4
  %sub33 = sub nsw i32 %30, %29
  store i32 %sub33, i32* %padlen.addr, align 4
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.38, %cond.end
  %31 = load i32, i32* %i, align 4
  %dec35 = add nsw i32 %31, -1
  store i32 %dec35, i32* %i, align 4
  %cmp36 = icmp sgt i32 %31, 0
  br i1 %cmp36, label %while.body.38, label %while.end

while.body.38:                                    ; preds = %while.cond.34
  %32 = load i8*, i8** %pn, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr39, i8** %pn, align 8
  store i8 32, i8* %32, align 1
  br label %while.cond.34

while.end:                                        ; preds = %while.cond.34
  %33 = load i32, i32* %numpad.addr, align 4
  %dec40 = add nsw i32 %33, -1
  store i32 %dec40, i32* %numpad.addr, align 4
  %34 = load i32, i32* %r, align 4
  %tobool41 = icmp ne i32 %34, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.62

land.lhs.true.42:                                 ; preds = %while.end
  %35 = load i8*, i8** %p.addr, align 8
  %36 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast43 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast44 = ptrtoint i8* %36 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %add46 = add nsw i64 %sub.ptr.sub45, 1
  %37 = load i32, i32* %r, align 4
  %sub47 = sub nsw i32 %37, 1
  %idxprom48 = sext i32 %sub47 to i64
  %arrayidx49 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom48
  %38 = load i32, i32* %arrayidx49, align 4
  %conv50 = sext i32 %38 to i64
  %cmp51 = icmp eq i64 %add46, %conv50
  br i1 %cmp51, label %if.then.53, label %if.end.62

if.then.53:                                       ; preds = %land.lhs.true.42
  %39 = load i8*, i8** %pn, align 8
  %40 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast54 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast55 = ptrtoint i8* %40 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %add57 = add nsw i64 %sub.ptr.sub56, 1
  %conv58 = trunc i64 %add57 to i32
  %41 = load i32, i32* %r, align 4
  %dec59 = add nsw i32 %41, -1
  store i32 %dec59, i32* %r, align 4
  %idxprom60 = sext i32 %dec59 to i64
  %arrayidx61 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom60
  store i32 %conv58, i32* %arrayidx61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.53, %land.lhs.true.42, %while.end
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.23
  br label %while.cond

while.end.64:                                     ; preds = %while.cond
  %42 = load i8*, i8** %pn2, align 8
  ret i8* %42
}

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i8* @MakeWinMsg(i8* %s, %struct.win* %win, i32 %esc) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %win.addr = alloca %struct.win*, align 8
  %esc.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store %struct.win* %win, %struct.win** %win.addr, align 8
  store i32 %esc, i32* %esc.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load %struct.win*, %struct.win** %win.addr, align 8
  %2 = load i32, i32* %esc.addr, align 4
  %call = call i8* @MakeWinMsgEv(i8* %0, %struct.win* %1, i32 %2, i32 0, %struct.event* null, i32 0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @PutWinMsg(i8* %s, i32 %start, i32 %max) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %n = alloca i32, align 4
  %rend = alloca %struct.mchar, align 1
  %rendstack = alloca [256 x %struct.mchar], align 16
  %rendstackn = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store i32 0, i32* %rendstackn, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp ne i8* %0, getelementptr inbounds ([768 x i8], [768 x i8]* @winmsg_buf, i32 0, i32 0)
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %1) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  %2 = load i32, i32* %l, align 4
  %3 = load i32, i32* %max.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.end
  %4 = load i32, i32* %max.addr, align 4
  store i32 %4, i32* %l, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.end
  %5 = load i32, i32* %start.addr, align 4
  %6 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %6, %5
  store i32 %sub, i32* %l, align 4
  %7 = load i32, i32* %start.addr, align 4
  %8 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load i32, i32* %l, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %l, align 4
  %cmp4 = icmp sgt i32 %9, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv6 = sext i8 %11 to i32
  call void @PUTCHARLP(i32 %conv6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.92

if.end.7:                                         ; preds = %entry
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 24
  %13 = bitcast %struct.mchar* %rend to i8*
  %14 = bitcast %struct.mchar* %d_rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 6, i32 1, i1 false)
  store i32 0, i32* %p, align 4
  %15 = load i8*, i8** %s.addr, align 8
  %call8 = call i64 @strlen(i8* %15) #9
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, i32* %l, align 4
  br label %do.body.10

do.body.10:                                       ; preds = %if.end.7
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.11
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @winmsg_numrend, align 4
  %cmp12 = icmp slt i32 %16, %17
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %18 = load i32, i32* %max.addr, align 4
  %cmp14 = icmp sgt i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp14, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %20 = load i32, i32* %p, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %cmp16 = icmp sgt i32 %20, %22
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom18
  %24 = load i32, i32* %arrayidx19, align 4
  %25 = load i32, i32* %l, align 4
  %cmp20 = icmp sgt i32 %24, %25
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end.23:                                        ; preds = %lor.lhs.false
  %26 = load i32, i32* %p, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom24
  %28 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp slt i32 %26, %28
  br i1 %cmp26, label %if.then.28, label %if.end.51

if.then.28:                                       ; preds = %if.end.23
  %29 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rendpos, i32 0, i64 %idxprom29
  %30 = load i32, i32* %arrayidx30, align 4
  %31 = load i32, i32* %p, align 4
  %sub31 = sub nsw i32 %30, %31
  store i32 %sub31, i32* %n, align 4
  %32 = load i32, i32* %n, align 4
  %33 = load i32, i32* %max.addr, align 4
  %cmp32 = icmp sgt i32 %32, %33
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.28
  %34 = load i32, i32* %max.addr, align 4
  store i32 %34, i32* %n, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.28
  %35 = load i32, i32* %n, align 4
  %36 = load i32, i32* %max.addr, align 4
  %sub36 = sub nsw i32 %36, %35
  store i32 %sub36, i32* %max.addr, align 4
  %37 = load i32, i32* %n, align 4
  %38 = load i32, i32* %p, align 4
  %add = add nsw i32 %38, %37
  store i32 %add, i32* %p, align 4
  br label %while.cond.37

while.cond.37:                                    ; preds = %if.end.49, %if.end.35
  %39 = load i32, i32* %n, align 4
  %dec38 = add nsw i32 %39, -1
  store i32 %dec38, i32* %n, align 4
  %cmp39 = icmp sgt i32 %39, 0
  br i1 %cmp39, label %while.body.41, label %while.end.50

while.body.41:                                    ; preds = %while.cond.37
  %40 = load i32, i32* %start.addr, align 4
  %dec42 = add nsw i32 %40, -1
  store i32 %dec42, i32* %start.addr, align 4
  %cmp43 = icmp sgt i32 %40, 0
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %while.body.41
  %41 = load i8*, i8** %s.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr46, i8** %s.addr, align 8
  br label %if.end.49

if.else:                                          ; preds = %while.body.41
  %42 = load i8*, i8** %s.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr47, i8** %s.addr, align 8
  %43 = load i8, i8* %42, align 1
  %conv48 = sext i8 %43 to i32
  call void @PUTCHARLP(i32 %conv48)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.45
  br label %while.cond.37

while.end.50:                                     ; preds = %while.cond.37
  br label %if.end.51

if.end.51:                                        ; preds = %while.end.50, %if.end.23
  %44 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %44 to i64
  %arrayidx53 = getelementptr inbounds [256 x i32], [256 x i32]* @winmsg_rend, i32 0, i64 %idxprom52
  %45 = load i32, i32* %arrayidx53, align 4
  store i32 %45, i32* %r, align 4
  %46 = load i32, i32* %r, align 4
  %cmp54 = icmp eq i32 %46, -1
  br i1 %cmp54, label %if.then.56, label %if.else.64

if.then.56:                                       ; preds = %if.end.51
  %47 = load i32, i32* %rendstackn, align 4
  %cmp57 = icmp sgt i32 %47, 0
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.then.56
  %48 = load i32, i32* %rendstackn, align 4
  %dec60 = add nsw i32 %48, -1
  store i32 %dec60, i32* %rendstackn, align 4
  %idxprom61 = sext i32 %dec60 to i64
  %arrayidx62 = getelementptr inbounds [256 x %struct.mchar], [256 x %struct.mchar]* %rendstack, i32 0, i64 %idxprom61
  %49 = bitcast %struct.mchar* %rend to i8*
  %50 = bitcast %struct.mchar* %arrayidx62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 6, i32 1, i1 false)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.then.56
  br label %if.end.67

if.else.64:                                       ; preds = %if.end.51
  %51 = load i32, i32* %rendstackn, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %rendstackn, align 4
  %idxprom65 = sext i32 %51 to i64
  %arrayidx66 = getelementptr inbounds [256 x %struct.mchar], [256 x %struct.mchar]* %rendstack, i32 0, i64 %idxprom65
  %52 = bitcast %struct.mchar* %arrayidx66 to i8*
  %53 = bitcast %struct.mchar* %rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 6, i32 1, i1 false)
  %54 = load i32, i32* %r, align 4
  call void @ApplyAttrColor(i32 %54, %struct.mchar* %rend)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.end.63
  call void @SetRendition(%struct.mchar* %rend)
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %55 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %55, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.22, %land.end
  %56 = load i32, i32* %p, align 4
  %57 = load i32, i32* %l, align 4
  %cmp69 = icmp slt i32 %56, %57
  br i1 %cmp69, label %if.then.71, label %if.end.92

if.then.71:                                       ; preds = %for.end
  %58 = load i32, i32* %l, align 4
  %59 = load i32, i32* %p, align 4
  %sub72 = sub nsw i32 %58, %59
  store i32 %sub72, i32* %n, align 4
  %60 = load i32, i32* %n, align 4
  %61 = load i32, i32* %max.addr, align 4
  %cmp73 = icmp sgt i32 %60, %61
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.71
  %62 = load i32, i32* %max.addr, align 4
  store i32 %62, i32* %n, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.then.71
  br label %while.cond.77

while.cond.77:                                    ; preds = %if.end.90, %if.end.76
  %63 = load i32, i32* %n, align 4
  %dec78 = add nsw i32 %63, -1
  store i32 %dec78, i32* %n, align 4
  %cmp79 = icmp sgt i32 %63, 0
  br i1 %cmp79, label %while.body.81, label %while.end.91

while.body.81:                                    ; preds = %while.cond.77
  %64 = load i32, i32* %start.addr, align 4
  %dec82 = add nsw i32 %64, -1
  store i32 %dec82, i32* %start.addr, align 4
  %cmp83 = icmp sgt i32 %64, 0
  br i1 %cmp83, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %while.body.81
  %65 = load i8*, i8** %s.addr, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr86, i8** %s.addr, align 8
  br label %if.end.90

if.else.87:                                       ; preds = %while.body.81
  %66 = load i8*, i8** %s.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr88, i8** %s.addr, align 8
  %67 = load i8, i8* %66, align 1
  %conv89 = sext i8 %67 to i32
  call void @PUTCHARLP(i32 %conv89)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.85
  br label %while.cond.77

while.end.91:                                     ; preds = %while.cond.77
  br label %if.end.92

if.end.92:                                        ; preds = %while.end, %while.end.91, %for.end
  ret void
}

declare void @PUTCHARLP(i32) #1

declare void @ApplyAttrColor(i32, %struct.mchar*) #1

declare void @SetRendition(%struct.mchar*) #1

declare i32 @lf_move_fd(i32, i32) #1

declare i32 @logfclose(%struct.logfile*) #1

declare %struct.spwd* @getspnam(i8*) #1

declare void @endspent() #1

; Function Attrs: noreturn nounwind
declare void @abort() #7

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @backtick_filter(%struct.backtick* %bt) #0 {
entry:
  %bt.addr = alloca %struct.backtick*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %c = alloca i32, align 4
  store %struct.backtick* %bt, %struct.backtick** %bt.addr, align 8
  %0 = load %struct.backtick*, %struct.backtick** %bt.addr, align 8
  %result = getelementptr inbounds %struct.backtick, %struct.backtick* %0, i32 0, i32 5
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %result, i32 0, i32 0
  store i8* %arraydecay, i8** %q, align 8
  store i8* %arraydecay, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.11, %entry
  %1 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %c, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %3, 9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 32, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, i32* %c, align 4
  %cmp4 = icmp sge i32 %4, 32
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %5, 5
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load i32, i32* %c, align 4
  %conv9 = trunc i32 %6 to i8
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr10, i8** %q, align 8
  store i8 %conv9, i8* %7, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %lor.lhs.false
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %q, align 8
  store i8 0, i8* %8, align 1
  ret void
}

declare void @ReceiveMsg() #1

; Function Attrs: nounwind uwtable
define internal void @SigChldHandler() #0 {
entry:
  %st = alloca %struct.stat, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @GotSigChld, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* @GotSigChld, align 4
  call void @DoWait()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = call i32 @stat(i8* getelementptr inbounds ([5632 x i8], [5632 x i8]* @SockPath, i32 0, i32 0), %struct.stat* %st) #3
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %while.end
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %call1 = call i32 @RecoverSocket()
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %do.end
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  call void @Finit(i32 1)
  br label %if.end

if.else:                                          ; preds = %do.end
  br label %do.body.6

do.body.6:                                        ; preds = %if.else
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  br label %if.end

if.end:                                           ; preds = %do.end.7, %do.end.5
  br label %if.end.11

if.else.8:                                        ; preds = %while.end
  br label %do.body.9

do.body.9:                                        ; preds = %if.else.8
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  br label %if.end.11

if.end.11:                                        ; preds = %do.end.10, %if.end
  ret void
}

declare void @RethinkViewportOffsets(%struct.canvas*) #1

declare void @LScrollV(%struct.layer*, i32, i32, i32, i32) #1

declare void @LGotoPos(%struct.layer*, i32, i32) #1

declare void @LScrollH(%struct.layer*, i32, i32, i32, i32, i32, %struct.mline*) #1

; Function Attrs: nounwind uwtable
define internal void @DoWait() #0 {
entry:
  %pid = alloca i32, align 4
  %p = alloca %struct.win*, align 8
  %next = alloca %struct.win*, align 8
  %wstat = alloca i32, align 4
  %.compoundliteral = alloca %union.anon.10, align 4
  %.compoundliteral11 = alloca %union.anon.11, align 4
  %.compoundliteral17 = alloca %union.anon.12, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %entry
  %call = call i32 @waitpid(i32 -1, i32* %wstat, i32 3)
  store i32 %call, i32* %pid, align 4
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %0, %struct.win** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load %struct.win*, %struct.win** %p, align 8
  %tobool = icmp ne %struct.win* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.win*, %struct.win** %p, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 0
  %3 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %3, %struct.win** %next, align 8
  %4 = load %struct.win*, %struct.win** %p, align 8
  %w_pid = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 81
  %5 = load i32, i32* %w_pid, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %pid, align 4
  %7 = load %struct.win*, %struct.win** %p, align 8
  %w_pid2 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 81
  %8 = load i32, i32* %w_pid2, align 4
  %cmp3 = icmp eq i32 %6, %8
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %9 = load %struct.win*, %struct.win** %p, align 8
  %w_deadpid = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 82
  %10 = load i32, i32* %w_deadpid, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.33

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* %pid, align 4
  %12 = load %struct.win*, %struct.win** %p, align 8
  %w_deadpid6 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 82
  %13 = load i32, i32* %w_deadpid6, align 4
  %cmp7 = icmp eq i32 %11, %13
  br i1 %cmp7, label %if.then, label %if.end.33

if.then:                                          ; preds = %land.lhs.true.5, %land.lhs.true
  %14 = load %struct.win*, %struct.win** %p, align 8
  %w_pid8 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 81
  store i32 0, i32* %w_pid8, align 4
  %__in = bitcast %union.anon.10* %.compoundliteral to i32*
  %15 = load i32, i32* %wstat, align 4
  store i32 %15, i32* %__in, align 4
  %__i = bitcast %union.anon.10* %.compoundliteral to i32*
  %16 = load i32, i32* %__i, align 4
  %and = and i32 %16, 255
  %cmp9 = icmp eq i32 %and, 127
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.10
  br label %do.end

do.end:                                           ; preds = %do.body
  %__in12 = bitcast %union.anon.11* %.compoundliteral11 to i32*
  %17 = load i32, i32* %wstat, align 4
  store i32 %17, i32* %__in12, align 4
  %__i13 = bitcast %union.anon.11* %.compoundliteral11 to i32*
  %18 = load i32, i32* %__i13, align 4
  %and14 = and i32 %18, 65280
  %shr = ashr i32 %and14, 8
  %cmp15 = icmp eq i32 %shr, 21
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %do.end
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.154, i32 0, i32 0))
  br label %for.inc

if.end:                                           ; preds = %do.end
  %__in18 = bitcast %union.anon.12* %.compoundliteral17 to i32*
  %19 = load i32, i32* %wstat, align 4
  store i32 %19, i32* %__in18, align 4
  %__i19 = bitcast %union.anon.12* %.compoundliteral17 to i32*
  %20 = load i32, i32* %__i19, align 4
  %and20 = and i32 %20, 65280
  %shr21 = ashr i32 %and20, 8
  %cmp22 = icmp eq i32 %shr21, 22
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.155, i32 0, i32 0))
  br label %for.inc

if.end.24:                                        ; preds = %if.end
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.156, i32 0, i32 0))
  %21 = load i32, i32* %pid, align 4
  %call25 = call i32 @killpg(i32 %21, i32 18) #3
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %22 = load i32, i32* %pid, align 4
  %call28 = call i32 @kill(i32 %22, i32 18) #3
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  br label %if.end.32

if.else:                                          ; preds = %if.then
  %23 = load %struct.win*, %struct.win** %p, align 8
  %24 = bitcast %struct.win* %23 to i8*
  %25 = load %struct.win*, %struct.win** %p, align 8
  %w_destroyev = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 93
  %data = getelementptr inbounds %struct.event, %struct.event* %w_destroyev, i32 0, i32 2
  store i8* %24, i8** %data, align 8
  %26 = load i32, i32* %wstat, align 4
  %27 = load %struct.win*, %struct.win** %p, align 8
  %w_exitstatus = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 94
  store i32 %26, i32* %w_exitstatus, align 4
  %28 = load %struct.win*, %struct.win** %p, align 8
  %w_destroyev30 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 93
  call void @SetTimeout(%struct.event* %w_destroyev30, i32 10000)
  %29 = load %struct.win*, %struct.win** %p, align 8
  %w_destroyev31 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 93
  call void @evenq(%struct.event* %w_destroyev31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.end.29
  br label %for.end

if.end.33:                                        ; preds = %land.lhs.true.5, %lor.lhs.false
  %30 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 6
  %31 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  %tobool34 = icmp ne %struct.pseudowin* %31, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.41

land.lhs.true.35:                                 ; preds = %if.end.33
  %32 = load i32, i32* %pid, align 4
  %33 = load %struct.win*, %struct.win** %p, align 8
  %w_pwin36 = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 6
  %34 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin36, align 8
  %p_pid = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %34, i32 0, i32 1
  %35 = load i32, i32* %p_pid, align 4
  %cmp37 = icmp eq i32 %32, %35
  br i1 %cmp37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %land.lhs.true.35
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.39
  %36 = load %struct.win*, %struct.win** %p, align 8
  call void @FreePseudowin(%struct.win* %36)
  br label %for.end

if.end.41:                                        ; preds = %land.lhs.true.35, %if.end.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.41, %if.then.23, %if.then.16
  %37 = load %struct.win*, %struct.win** %next, align 8
  store %struct.win* %37, %struct.win** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %do.end.40, %if.end.32, %for.cond
  %38 = load %struct.win*, %struct.win** %p, align 8
  %cmp42 = icmp eq %struct.win* %38, null
  br i1 %cmp42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %for.end
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  br label %do.end.45

do.end.45:                                        ; preds = %do.body.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @RecoverSocket() #1

; Function Attrs: nounwind
declare i32 @killpg(i32, i32) #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

declare void @FreePseudowin(%struct.win*) #1

declare i32 @islogfile(i8*) #1

declare i32 @logfflush(%struct.logfile*) #1

declare i32 @logfwrite(%struct.logfile*, i8*, i32) #1

declare void @SetEscape(%struct.acluser*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @ParseChar(i8* %p, i8* %cp) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %cp.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %cp, i8** %cp.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 94
  br i1 %cmp3, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv5, 0
  br i1 %tobool, label %if.then.6, label %if.else.21

if.then.6:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %7 = load i8, i8* %incdec.ptr, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 63
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.6
  %8 = load i8*, i8** %cp.addr, align 8
  store i8 127, i8* %8, align 1
  br label %if.end.19

if.else:                                          ; preds = %if.then.6
  %9 = load i8*, i8** %p.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv11 = sext i8 %10 to i32
  %cmp12 = icmp sge i32 %conv11, 64
  br i1 %cmp12, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.else
  %11 = load i8*, i8** %p.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv15 = sext i8 %12 to i32
  %and = and i32 %conv15, 31
  %conv16 = trunc i32 %and to i8
  %13 = load i8*, i8** %cp.addr, align 8
  store i8 %conv16, i8* %13, align 1
  br label %if.end.18

if.else.17:                                       ; preds = %if.else
  store i8* null, i8** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.10
  %14 = load i8*, i8** %p.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr20, i8** %p.addr, align 8
  br label %if.end.48

if.else.21:                                       ; preds = %land.lhs.true, %if.end
  %15 = load i8*, i8** %p.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv22 = sext i8 %16 to i32
  %cmp23 = icmp eq i32 %conv22, 92
  br i1 %cmp23, label %land.lhs.true.25, label %if.else.45

land.lhs.true.25:                                 ; preds = %if.else.21
  %17 = load i8*, i8** %p.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr26, i8** %p.addr, align 8
  %18 = load i8, i8* %incdec.ptr26, align 1
  %conv27 = sext i8 %18 to i32
  %cmp28 = icmp sle i32 %conv27, 55
  br i1 %cmp28, label %land.lhs.true.30, label %if.else.45

land.lhs.true.30:                                 ; preds = %land.lhs.true.25
  %19 = load i8*, i8** %p.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv31 = sext i8 %20 to i32
  %cmp32 = icmp sge i32 %conv31, 48
  br i1 %cmp32, label %if.then.34, label %if.else.45

if.then.34:                                       ; preds = %land.lhs.true.30
  %21 = load i8*, i8** %cp.addr, align 8
  store i8 0, i8* %21, align 1
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.34
  %22 = load i8*, i8** %cp.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv35 = sext i8 %23 to i32
  %mul = mul nsw i32 %conv35, 8
  %24 = load i8*, i8** %p.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv36 = sext i8 %25 to i32
  %add = add nsw i32 %mul, %conv36
  %sub = sub nsw i32 %add, 48
  %conv37 = trunc i32 %sub to i8
  %26 = load i8*, i8** %cp.addr, align 8
  store i8 %conv37, i8* %26, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %27 = load i8*, i8** %p.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr38, i8** %p.addr, align 8
  %28 = load i8, i8* %incdec.ptr38, align 1
  %conv39 = sext i8 %28 to i32
  %cmp40 = icmp sle i32 %conv39, 55
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %29 = load i8*, i8** %p.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv42 = sext i8 %30 to i32
  %cmp43 = icmp sge i32 %conv42, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %31 = phi i1 [ false, %do.cond ], [ %cmp43, %land.rhs ]
  br i1 %31, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.47

if.else.45:                                       ; preds = %land.lhs.true.30, %land.lhs.true.25, %if.else.21
  %32 = load i8*, i8** %p.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr46, i8** %p.addr, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %cp.addr, align 8
  store i8 %33, i8* %34, align 1
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %do.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.19
  %35 = load i8*, i8** %p.addr, align 8
  store i8* %35, i8** %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.else.17, %if.then
  %36 = load i8*, i8** %retval
  ret i8* %36
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }
attributes #11 = { nounwind readnone }
attributes #12 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
