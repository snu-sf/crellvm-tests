; ModuleID = './lib-src/emacsclient.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.linger = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__sigset_t = type { [16 x i64] }

@nowait = global i32 0, align 4
@quiet = global i32 0, align 4
@eval = global i32 0, align 4
@current_frame = global i32 1, align 4
@display = global i8* null, align 8
@alt_display = global i8* null, align 8
@parent_id = global i8* null, align 8
@tty = global i32 0, align 4
@alternate_editor = global i8* null, align 8
@socket_name = global i8* null, align 8
@server_file = global i8* null, align 8
@emacs_pid = global i32 0, align 4
@frame_parameters = global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"no-wait\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"nw\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"create-frame\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"alternate-editor\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"frame-parameters\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"socket-name\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"server-file\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"parent-id\00", align 1
@longopts = global [15 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i32* null, i32 72 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 1, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, i32* null, i32 70 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option zeroinitializer], align 16
@sblen = global i32 0, align 4
@emacs_socket = global i32 0, align 4
@main_argv = common global i8** null, align 8
@progname = common global i8* null, align 8
@optind = external global i32, align 4
@.str.14 = private unnamed_addr constant [73 x i8] c"%s: file name or argument required\0ATry '%s --help' for more information\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Cannot get current working directory\00", align 1
@environ = external global i8**, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"-env \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"-dir \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"-nowait \00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"-current-frame \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"-display \00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"-parent-id \00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"-frame-parameters \00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"-tty \00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"-window-system \00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"-eval \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"-position \00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"-file \00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Waiting for Emacs...\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [12 x i8] c"-emacs-pid \00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"-window-system-unsupported \00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"-print \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"-print-nonl \00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"-error \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.39 = private unnamed_addr constant [12 x i8] c"*ERROR*: %s\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"-suspend \00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"*ERROR*: Unknown message: %s\0A\00", align 1
@send_buffer = common global [4097 x i8] zeroinitializer, align 16
@.str.42 = private unnamed_addr constant [17 x i8] c"ALTERNATE_EDITOR\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"VHneqa:s:f:d:F:tc\00", align 1
@optarg = external global i8*, align 8
@.str.44 = private unnamed_addr constant [16 x i8] c"emacsclient %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"25.1\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"Try '%s --help' for more information\0A\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTIONS] FILE...\0A%s%s%s\00", align 1
@.str.49 = private unnamed_addr constant [422 x i8] c"Tell the Emacs server to visit the specified files.\0AEvery FILE can be either just a FILENAME or [+LINE[:COLUMN]] FILENAME.\0A\0AThe following OPTIONS are accepted:\0A-V, --version\09\09Just print version info and return\0A-H, --help    \09\09Print this usage information message\0A-nw, -t, --tty \09\09Open a new Emacs frame on the current terminal\0A-c, --create-frame    \09Create a new frame instead of trying to\0A\09\09\09use the current Emacs frame\0A\00", align 1
@.str.50 = private unnamed_addr constant [305 x i8] c"-F ALIST, --frame-parameters=ALIST\0A\09\09\09Set the parameters of a new frame\0A-e, --eval    \09\09Evaluate the FILE arguments as ELisp expressions\0A-n, --no-wait\09\09Don't wait for the server to return\0A-q, --quiet\09\09Don't display messages on success\0A-d DISPLAY, --display=DISPLAY\0A\09\09\09Visit the file in the given display\0A\00", align 1
@.str.51 = private unnamed_addr constant [446 x i8] c"--parent-id=ID          Open in parent window ID, via XEmbed\0A-s SOCKET, --socket-name=SOCKET\0A\09\09\09Set filename of the UNIX socket for communication\0A-f SERVER, --server-file=SERVER\0A\09\09\09Set filename of the TCP authentication file\0A-a EDITOR, --alternate-editor=EDITOR\0A\09\09\09Editor to fallback to if the server is not running\0A\09\09\09If EDITOR is the empty string, start Emacs in daemon\0A\09\09\09mode and try connecting again\0A\0AReport bugs with M-x report-emacs-bug.\0A\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"%s: error accessing socket \22%s\22\0A\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"EMACS_SERVER_FILE\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"%s: error accessing server file \22%s\22\0A\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.56 = private unnamed_addr constant [192 x i8] c"%s: No socket or alternate editor.  Please use:\0A\0A\09--socket-name\0A\09--server-file      (or environment variable EMACS_SERVER_FILE)\0A\09--alternate-editor (or environment variable ALTERNATE_EDITOR)\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"%s: socket: %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"/emacs%ld/\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"%s: socket-name %s too long\0A\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"%s: Invalid socket owner\0A\00", align 1
@.str.65 = private unnamed_addr constant [108 x i8] c"%s: can't find socket; have you started the server?\0ATo start the server in Emacs, type \22M-x server-start\22.\0A\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"%s: can't stat %s: %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"%s: connect: %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@set_tcp_socket.l_arg = private unnamed_addr constant %struct.linger { i32 1, i32 1 }, align 4
@.str.69 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"%s: connected to remote socket at %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"-auth \00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"/.emacs.d/server/\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"%s: invalid configuration info\0A\00", align 1
@.str.78 = private unnamed_addr constant [37 x i8] c"%s: cannot read authentication info\0A\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [43 x i8] c"%s: error executing alternate editor \22%s\22\0A\00", align 1
@.str.81 = private unnamed_addr constant [41 x i8] c"Error: Could not start the Emacs daemon\0A\00", align 1
@.str.82 = private unnamed_addr constant [59 x i8] c"Emacs daemon should have started, trying to connect again\0A\00", align 1
@.str.83 = private unnamed_addr constant [60 x i8] c"Error: Cannot connect even after starting the Emacs daemon\0A\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"Error: Cannot fork!\0A\00", align 1
@start_daemon_and_retry_set_socket.emacs = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@start_daemon_and_retry_set_socket.daemon_option = private unnamed_addr constant [9 x i8] c"--daemon\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"--daemon=\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.87 = private unnamed_addr constant [33 x i8] c"%s: error starting emacs daemon\0A\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"%s: failed to send %d bytes to socket: %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.90 = private unnamed_addr constant [33 x i8] c"%s: could not get terminal name\0A\00", align 1
@.str.91 = private unnamed_addr constant [56 x i8] c"%s: please set the TERM variable to your terminal type\0A\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"eterm\00", align 1
@.str.93 = private unnamed_addr constant [62 x i8] c"%s: opening a frame in an Emacs term buffer is not supported\0A\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"-resume \0A\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"-suspend \0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %rl = alloca i32, align 4
  %needlf = alloca i32, align 4
  %cwd = alloca i8*, align 8
  %str = alloca i8*, align 8
  %string = alloca [8193 x i8], align 16
  %start_daemon_if_needed = alloca i32, align 4
  %exit_status = alloca i32, align 4
  %pgrp = alloca i32, align 4
  %tcpgrp = alloca i32, align 4
  %i = alloca i32, align 4
  %tty_type = alloca i8*, align 8
  %tty_name = alloca i8*, align 8
  %i75 = alloca i32, align 4
  %p = alloca i8*, align 8
  %p154 = alloca i8*, align 8
  %end_p = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %rl, align 4
  store i32 0, i32* %needlf, align 4
  store i32 0, i32* %exit_status, align 4
  %0 = load i8**, i8*** %argv.addr, align 8
  store i8** %0, i8*** @main_argv, align 8
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** @progname, align 8
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  call void @decode_options(i32 %3, i8** %4)
  %5 = load i32, i32* %argc.addr, align 4
  %6 = load i32, i32* @optind, align 4
  %sub = sub nsw i32 %5, %6
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* @eval, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* @current_frame, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.1
  %9 = load i8*, i8** @progname, align 8
  %10 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.14, i32 0, i32 0), i8* %9, i8* %10)
  call void @exit(i32 1) #8
  unreachable

if.end:                                           ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  %11 = load i32, i32* @tty, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.end
  %call = call i32 @getpgrp() #7
  store i32 %call, i32* %pgrp, align 4
  %call5 = call i32 @tcgetpgrp(i32 1) #7
  store i32 %call5, i32* %tcpgrp, align 4
  %12 = load i32, i32* %tcpgrp, align 4
  %cmp6 = icmp sle i32 0, %12
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.12

land.lhs.true.7:                                  ; preds = %if.then.4
  %13 = load i32, i32* %tcpgrp, align 4
  %14 = load i32, i32* %pgrp, align 4
  %cmp8 = icmp ne i32 %13, %14
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %land.lhs.true.7
  %15 = load i32, i32* %pgrp, align 4
  %sub10 = sub nsw i32 0, %15
  %call11 = call i32 @kill(i32 %sub10, i32 21) #7
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %land.lhs.true.7, %if.then.4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %16 = load i8*, i8** @alternate_editor, align 8
  %tobool14 = icmp ne i8* %16, null
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.13
  %17 = load i8*, i8** @alternate_editor, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx15, align 1
  %conv = sext i8 %18 to i32
  %cmp16 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.13
  %19 = phi i1 [ false, %if.end.13 ], [ %cmp16, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  store i32 %land.ext, i32* %start_daemon_if_needed, align 4
  %20 = load i8*, i8** @alternate_editor, align 8
  %tobool18 = icmp ne i8* %20, null
  br i1 %tobool18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.end
  %21 = load i32, i32* %start_daemon_if_needed, align 4
  %tobool19 = icmp ne i32 %21, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.end
  %22 = phi i1 [ true, %land.end ], [ %tobool19, %lor.rhs ]
  %lor.ext = zext i1 %22 to i32
  %call20 = call i32 @set_socket(i32 %lor.ext)
  store i32 %call20, i32* @emacs_socket, align 4
  %23 = load i32, i32* @emacs_socket, align 4
  %cmp21 = icmp eq i32 %23, -1
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %lor.end
  %24 = load i32, i32* %start_daemon_if_needed, align 4
  %tobool24 = icmp ne i32 %24, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.23
  call void @fail() #9
  unreachable

if.end.26:                                        ; preds = %if.then.23
  call void @start_daemon_and_retry_set_socket()
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %lor.end
  %call28 = call i8* @get_current_dir_name() #7
  store i8* %call28, i8** %cwd, align 8
  %25 = load i8*, i8** %cwd, align 8
  %cmp29 = icmp eq i8* %25, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  %26 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0))
  call void @fail() #9
  unreachable

if.end.32:                                        ; preds = %if.end.27
  %27 = load i32, i32* @current_frame, align 4
  %tobool33 = icmp ne i32 %27, 0
  br i1 %tobool33, label %if.end.39, label %if.then.34

if.then.34:                                       ; preds = %if.end.32
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.34
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i8**, i8*** @environ, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %29, i64 %idxprom
  %30 = load i8*, i8** %arrayidx35, align 8
  %tobool36 = icmp ne i8* %30, null
  br i1 %tobool36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0))
  %32 = load i32, i32* @emacs_socket, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %33 to i64
  %34 = load i8**, i8*** @environ, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %34, i64 %idxprom37
  %35 = load i8*, i8** %arrayidx38, align 8
  call void @quote_argument(i32 %32, i8* %35)
  %36 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %if.end.32
  %38 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0))
  %39 = load i32, i32* @emacs_socket, align 4
  %40 = load i8*, i8** %cwd, align 8
  call void @quote_argument(i32 %39, i8* %40)
  %41 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %42 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %retry

retry:                                            ; preds = %if.end.203, %if.end.39
  %43 = load i32, i32* @nowait, align 4
  %tobool40 = icmp ne i32 %43, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %retry
  %44 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %retry
  %45 = load i32, i32* @current_frame, align 4
  %tobool43 = icmp ne i32 %45, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.42
  %46 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.42
  %47 = load i8*, i8** @display, align 8
  %tobool46 = icmp ne i8* %47, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.45
  %48 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0))
  %49 = load i32, i32* @emacs_socket, align 4
  %50 = load i8*, i8** @display, align 8
  call void @quote_argument(i32 %49, i8* %50)
  %51 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.45
  %52 = load i8*, i8** @parent_id, align 8
  %tobool49 = icmp ne i8* %52, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  %53 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0))
  %54 = load i32, i32* @emacs_socket, align 4
  %55 = load i8*, i8** @parent_id, align 8
  call void @quote_argument(i32 %54, i8* %55)
  %56 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.48
  %57 = load i8*, i8** @frame_parameters, align 8
  %tobool52 = icmp ne i8* %57, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.56

land.lhs.true.53:                                 ; preds = %if.end.51
  %58 = load i32, i32* @current_frame, align 4
  %tobool54 = icmp ne i32 %58, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  %59 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0))
  %60 = load i32, i32* @emacs_socket, align 4
  %61 = load i8*, i8** @frame_parameters, align 8
  call void @quote_argument(i32 %60, i8* %61)
  %62 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.53, %if.end.51
  %63 = load i32, i32* @current_frame, align 4
  %tobool57 = icmp ne i32 %63, 0
  br i1 %tobool57, label %lor.lhs.false, label %if.then.59

lor.lhs.false:                                    ; preds = %if.end.56
  %64 = load i32, i32* @eval, align 4
  %tobool58 = icmp ne i32 %64, 0
  br i1 %tobool58, label %if.end.65, label %if.then.59

if.then.59:                                       ; preds = %lor.lhs.false, %if.end.56
  %65 = load i32, i32* @tty, align 4
  %tobool60 = icmp ne i32 %65, 0
  %lnot = xor i1 %tobool60, true
  %lnot.ext = zext i1 %lnot to i32
  %call61 = call i32 @find_tty(i8** %tty_type, i8** %tty_name, i32 %lnot.ext)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.59
  call void @init_signals()
  %66 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  %67 = load i32, i32* @emacs_socket, align 4
  %68 = load i8*, i8** %tty_name, align 8
  call void @quote_argument(i32 %67, i8* %68)
  %69 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  %70 = load i32, i32* @emacs_socket, align 4
  %71 = load i8*, i8** %tty_type, align 8
  call void @quote_argument(i32 %70, i8* %71)
  %72 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.59
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %lor.lhs.false
  %73 = load i32, i32* @current_frame, align 4
  %tobool66 = icmp ne i32 %73, 0
  br i1 %tobool66, label %if.end.70, label %land.lhs.true.67

land.lhs.true.67:                                 ; preds = %if.end.65
  %74 = load i32, i32* @tty, align 4
  %tobool68 = icmp ne i32 %74, 0
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true.67
  %75 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true.67, %if.end.65
  %76 = load i32, i32* %argc.addr, align 4
  %77 = load i32, i32* @optind, align 4
  %sub71 = sub nsw i32 %76, %77
  %cmp72 = icmp sgt i32 %sub71, 0
  br i1 %cmp72, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %if.end.70
  %78 = load i32, i32* @optind, align 4
  store i32 %78, i32* %i75, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.115, %if.then.74
  %79 = load i32, i32* %i75, align 4
  %80 = load i32, i32* %argc.addr, align 4
  %cmp77 = icmp slt i32 %79, %80
  br i1 %cmp77, label %for.body.79, label %for.end.117

for.body.79:                                      ; preds = %for.cond.76
  %81 = load i32, i32* @eval, align 4
  %tobool80 = icmp ne i32 %81, 0
  br i1 %tobool80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %for.body.79
  %82 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0))
  %83 = load i32, i32* @emacs_socket, align 4
  %84 = load i32, i32* %i75, align 4
  %idxprom82 = sext i32 %84 to i64
  %85 = load i8**, i8*** %argv.addr, align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %85, i64 %idxprom82
  %86 = load i8*, i8** %arrayidx83, align 8
  call void @quote_argument(i32 %83, i8* %86)
  %87 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %for.inc.115

if.end.84:                                        ; preds = %for.body.79
  %88 = load i32, i32* %i75, align 4
  %idxprom85 = sext i32 %88 to i64
  %89 = load i8**, i8*** %argv.addr, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %89, i64 %idxprom85
  %90 = load i8*, i8** %arrayidx86, align 8
  %91 = load i8, i8* %90, align 1
  %conv87 = sext i8 %91 to i32
  %cmp88 = icmp eq i32 %conv87, 43
  br i1 %cmp88, label %if.then.90, label %if.end.112

if.then.90:                                       ; preds = %if.end.84
  %92 = load i32, i32* %i75, align 4
  %idxprom91 = sext i32 %92 to i64
  %93 = load i8**, i8*** %argv.addr, align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %93, i64 %idxprom91
  %94 = load i8*, i8** %arrayidx92, align 8
  %add.ptr = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.90
  %95 = load i8*, i8** %p, align 8
  %96 = load i8, i8* %95, align 1
  %conv93 = zext i8 %96 to i32
  %idxprom94 = sext i32 %conv93 to i64
  %call95 = call i16** @__ctype_b_loc() #10
  %97 = load i16*, i16** %call95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %97, i64 %idxprom94
  %98 = load i16, i16* %arrayidx96, align 2
  %conv97 = zext i16 %98 to i32
  %and = and i32 %conv97, 2048
  %tobool98 = icmp ne i32 %and, 0
  br i1 %tobool98, label %lor.end.103, label %lor.rhs.99

lor.rhs.99:                                       ; preds = %while.cond
  %99 = load i8*, i8** %p, align 8
  %100 = load i8, i8* %99, align 1
  %conv100 = sext i8 %100 to i32
  %cmp101 = icmp eq i32 %conv100, 58
  br label %lor.end.103

lor.end.103:                                      ; preds = %lor.rhs.99, %while.cond
  %101 = phi i1 [ true, %while.cond ], [ %cmp101, %lor.rhs.99 ]
  br i1 %101, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end.103
  %102 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end.103
  %103 = load i8*, i8** %p, align 8
  %104 = load i8, i8* %103, align 1
  %conv105 = sext i8 %104 to i32
  %cmp106 = icmp eq i32 %conv105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %while.end
  %105 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0))
  %106 = load i32, i32* @emacs_socket, align 4
  %107 = load i32, i32* %i75, align 4
  %idxprom109 = sext i32 %107 to i64
  %108 = load i8**, i8*** %argv.addr, align 8
  %arrayidx110 = getelementptr inbounds i8*, i8** %108, i64 %idxprom109
  %109 = load i8*, i8** %arrayidx110, align 8
  call void @quote_argument(i32 %106, i8* %109)
  %110 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %for.inc.115

if.end.111:                                       ; preds = %while.end
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.84
  %111 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0))
  %112 = load i32, i32* @emacs_socket, align 4
  %113 = load i32, i32* %i75, align 4
  %idxprom113 = sext i32 %113 to i64
  %114 = load i8**, i8*** %argv.addr, align 8
  %arrayidx114 = getelementptr inbounds i8*, i8** %114, i64 %idxprom113
  %115 = load i8*, i8** %arrayidx114, align 8
  call void @quote_argument(i32 %112, i8* %115)
  %116 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.112, %if.then.108, %if.then.81
  %117 = load i32, i32* %i75, align 4
  %inc116 = add nsw i32 %117, 1
  store i32 %inc116, i32* %i75, align 4
  br label %for.cond.76

for.end.117:                                      ; preds = %for.cond.76
  br label %if.end.126

if.else:                                          ; preds = %if.end.70
  %118 = load i32, i32* @eval, align 4
  %tobool118 = icmp ne i32 %118, 0
  br i1 %tobool118, label %if.then.119, label %if.end.125

if.then.119:                                      ; preds = %if.else
  br label %while.cond.120

while.cond.120:                                   ; preds = %while.body.123, %if.then.119
  %arraydecay = getelementptr inbounds [8193 x i8], [8193 x i8]* %string, i32 0, i32 0
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call121 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %119)
  store i8* %call121, i8** %str, align 8
  %tobool122 = icmp ne i8* %call121, null
  br i1 %tobool122, label %while.body.123, label %while.end.124

while.body.123:                                   ; preds = %while.cond.120
  %120 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0))
  %121 = load i32, i32* @emacs_socket, align 4
  %122 = load i8*, i8** %str, align 8
  call void @quote_argument(i32 %121, i8* %122)
  br label %while.cond.120

while.end.124:                                    ; preds = %while.cond.120
  %123 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.125

if.end.125:                                       ; preds = %while.end.124, %if.else
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %for.end.117
  %124 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  %125 = load i32, i32* @eval, align 4
  %tobool127 = icmp ne i32 %125, 0
  br i1 %tobool127, label %if.end.136, label %land.lhs.true.128

land.lhs.true.128:                                ; preds = %if.end.126
  %126 = load i32, i32* @tty, align 4
  %tobool129 = icmp ne i32 %126, 0
  br i1 %tobool129, label %if.end.136, label %land.lhs.true.130

land.lhs.true.130:                                ; preds = %land.lhs.true.128
  %127 = load i32, i32* @nowait, align 4
  %tobool131 = icmp ne i32 %127, 0
  br i1 %tobool131, label %if.end.136, label %land.lhs.true.132

land.lhs.true.132:                                ; preds = %land.lhs.true.130
  %128 = load i32, i32* @quiet, align 4
  %tobool133 = icmp ne i32 %128, 0
  br i1 %tobool133, label %if.end.136, label %if.then.134

if.then.134:                                      ; preds = %land.lhs.true.132
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0))
  store i32 2, i32* %needlf, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %land.lhs.true.132, %land.lhs.true.130, %land.lhs.true.128, %if.end.126
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call137 = call i32 @fflush(%struct._IO_FILE* %129)
  br label %while.cond.138

while.cond.138:                                   ; preds = %while.body.148, %if.end.136
  %call139 = call i32 @fdatasync(i32 1)
  %cmp140 = icmp ne i32 %call139, 0
  br i1 %cmp140, label %land.rhs.142, label %land.end.146

land.rhs.142:                                     ; preds = %while.cond.138
  %call143 = call i32* @__errno_location() #10
  %130 = load i32, i32* %call143, align 4
  %cmp144 = icmp eq i32 %130, 4
  br label %land.end.146

land.end.146:                                     ; preds = %land.rhs.142, %while.cond.138
  %131 = phi i1 [ false, %while.cond.138 ], [ %cmp144, %land.rhs.142 ]
  br i1 %131, label %while.body.148, label %while.end.149

while.body.148:                                   ; preds = %land.end.146
  br label %while.cond.138

while.end.149:                                    ; preds = %land.end.146
  br label %while.cond.150

while.cond.150:                                   ; preds = %for.end.293, %while.end.149
  %132 = load i32, i32* %exit_status, align 4
  %cmp151 = icmp eq i32 %132, 0
  br i1 %cmp151, label %while.body.153, label %while.end.294

while.body.153:                                   ; preds = %while.cond.150
  br label %do.body

do.body:                                          ; preds = %land.end.165, %while.body.153
  %call155 = call i32* @__errno_location() #10
  store i32 0, i32* %call155, align 4
  %133 = load i32, i32* @emacs_socket, align 4
  %arraydecay156 = getelementptr inbounds [8193 x i8], [8193 x i8]* %string, i32 0, i32 0
  %call157 = call i64 @recv(i32 %133, i8* %arraydecay156, i64 8192, i32 0)
  %conv158 = trunc i64 %call157 to i32
  store i32 %conv158, i32* %rl, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %134 = load i32, i32* %rl, align 4
  %cmp159 = icmp slt i32 %134, 0
  br i1 %cmp159, label %land.rhs.161, label %land.end.165

land.rhs.161:                                     ; preds = %do.cond
  %call162 = call i32* @__errno_location() #10
  %135 = load i32, i32* %call162, align 4
  %cmp163 = icmp eq i32 %135, 4
  br label %land.end.165

land.end.165:                                     ; preds = %land.rhs.161, %do.cond
  %136 = phi i1 [ false, %do.cond ], [ %cmp163, %land.rhs.161 ]
  br i1 %136, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.165
  %137 = load i32, i32* %rl, align 4
  %cmp167 = icmp sle i32 %137, 0
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %do.end
  br label %while.end.294

if.end.170:                                       ; preds = %do.end
  %138 = load i32, i32* %rl, align 4
  %idxprom171 = sext i32 %138 to i64
  %arrayidx172 = getelementptr inbounds [8193 x i8], [8193 x i8]* %string, i32 0, i64 %idxprom171
  store i8 0, i8* %arrayidx172, align 1
  %arraydecay173 = getelementptr inbounds [8193 x i8], [8193 x i8]* %string, i32 0, i32 0
  store i8* %arraydecay173, i8** %p154, align 8
  store i8* %arraydecay173, i8** %end_p, align 8
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.292, %if.end.170
  %139 = load i8*, i8** %end_p, align 8
  %cmp175 = icmp ne i8* %139, null
  br i1 %cmp175, label %land.rhs.177, label %land.end.181

land.rhs.177:                                     ; preds = %for.cond.174
  %140 = load i8*, i8** %end_p, align 8
  %141 = load i8, i8* %140, align 1
  %conv178 = sext i8 %141 to i32
  %cmp179 = icmp ne i32 %conv178, 0
  br label %land.end.181

land.end.181:                                     ; preds = %land.rhs.177, %for.cond.174
  %142 = phi i1 [ false, %for.cond.174 ], [ %cmp179, %land.rhs.177 ]
  br i1 %142, label %for.body.183, label %for.end.293

for.body.183:                                     ; preds = %land.end.181
  %143 = load i8*, i8** %p154, align 8
  %call184 = call i8* @strchr(i8* %143, i32 10) #11
  store i8* %call184, i8** %end_p, align 8
  %144 = load i8*, i8** %end_p, align 8
  %cmp185 = icmp ne i8* %144, null
  br i1 %cmp185, label %if.then.187, label %if.end.189

if.then.187:                                      ; preds = %for.body.183
  %145 = load i8*, i8** %end_p, align 8
  %incdec.ptr188 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr188, i8** %end_p, align 8
  store i8 0, i8* %145, align 1
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.187, %for.body.183
  %146 = load i8*, i8** %p154, align 8
  %call190 = call i32 @strprefix(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8* %146)
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.then.192, label %if.else.196

if.then.192:                                      ; preds = %if.end.189
  %147 = load i8*, i8** %p154, align 8
  %add.ptr193 = getelementptr inbounds i8, i8* %147, i64 10
  %call194 = call i64 @strtol(i8* %add.ptr193, i8** null, i32 10) #7
  %conv195 = trunc i64 %call194 to i32
  store i32 %conv195, i32* @emacs_pid, align 4
  br label %if.end.291

if.else.196:                                      ; preds = %if.end.189
  %148 = load i8*, i8** %p154, align 8
  %call197 = call i32 @strprefix(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0), i8* %148)
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.then.199, label %if.else.204

if.then.199:                                      ; preds = %if.else.196
  %149 = load i8*, i8** @alt_display, align 8
  %tobool200 = icmp ne i8* %149, null
  br i1 %tobool200, label %if.then.201, label %if.else.202

if.then.201:                                      ; preds = %if.then.199
  %150 = load i8*, i8** @alt_display, align 8
  store i8* %150, i8** @display, align 8
  store i8* null, i8** @alt_display, align 8
  br label %if.end.203

if.else.202:                                      ; preds = %if.then.199
  store i32 0, i32* @nowait, align 4
  store i32 1, i32* @tty, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.202, %if.then.201
  br label %retry

if.else.204:                                      ; preds = %if.else.196
  %151 = load i8*, i8** %p154, align 8
  %call205 = call i32 @strprefix(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* %151)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.then.207, label %if.else.225

if.then.207:                                      ; preds = %if.else.204
  %152 = load i8*, i8** %p154, align 8
  %add.ptr208 = getelementptr inbounds i8, i8* %152, i64 7
  %call209 = call i8* @unquote_argument(i8* %add.ptr208)
  store i8* %call209, i8** %str, align 8
  %153 = load i32, i32* %needlf, align 4
  %tobool210 = icmp ne i32 %153, 0
  br i1 %tobool210, label %if.then.211, label %if.end.213

if.then.211:                                      ; preds = %if.then.207
  %call212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.211, %if.then.207
  %154 = load i8*, i8** %str, align 8
  %call214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* %154)
  %155 = load i8*, i8** %str, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %155, i64 0
  %156 = load i8, i8* %arrayidx215, align 1
  %conv216 = sext i8 %156 to i32
  %cmp217 = icmp eq i32 %conv216, 0
  br i1 %cmp217, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.213
  %157 = load i32, i32* %needlf, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.213
  %158 = load i8*, i8** %str, align 8
  %call219 = call i64 @strlen(i8* %158) #11
  %sub220 = sub i64 %call219, 1
  %159 = load i8*, i8** %str, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %159, i64 %sub220
  %160 = load i8, i8* %arrayidx221, align 1
  %conv222 = sext i8 %160 to i32
  %cmp223 = icmp ne i32 %conv222, 10
  %conv224 = zext i1 %cmp223 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %157, %cond.true ], [ %conv224, %cond.false ]
  store i32 %cond, i32* %needlf, align 4
  br label %if.end.289

if.else.225:                                      ; preds = %if.else.204
  %161 = load i8*, i8** %p154, align 8
  %call226 = call i32 @strprefix(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i8* %161)
  %tobool227 = icmp ne i32 %call226, 0
  br i1 %tobool227, label %if.then.228, label %if.else.246

if.then.228:                                      ; preds = %if.else.225
  %162 = load i8*, i8** %p154, align 8
  %add.ptr229 = getelementptr inbounds i8, i8* %162, i64 12
  %call230 = call i8* @unquote_argument(i8* %add.ptr229)
  store i8* %call230, i8** %str, align 8
  %163 = load i8*, i8** %str, align 8
  %call231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* %163)
  %164 = load i8*, i8** %str, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %164, i64 0
  %165 = load i8, i8* %arrayidx232, align 1
  %conv233 = sext i8 %165 to i32
  %cmp234 = icmp eq i32 %conv233, 0
  br i1 %cmp234, label %cond.true.236, label %cond.false.237

cond.true.236:                                    ; preds = %if.then.228
  %166 = load i32, i32* %needlf, align 4
  br label %cond.end.244

cond.false.237:                                   ; preds = %if.then.228
  %167 = load i8*, i8** %str, align 8
  %call238 = call i64 @strlen(i8* %167) #11
  %sub239 = sub i64 %call238, 1
  %168 = load i8*, i8** %str, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %168, i64 %sub239
  %169 = load i8, i8* %arrayidx240, align 1
  %conv241 = sext i8 %169 to i32
  %cmp242 = icmp ne i32 %conv241, 10
  %conv243 = zext i1 %cmp242 to i32
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.237, %cond.true.236
  %cond245 = phi i32 [ %166, %cond.true.236 ], [ %conv243, %cond.false.237 ]
  store i32 %cond245, i32* %needlf, align 4
  br label %if.end.288

if.else.246:                                      ; preds = %if.else.225
  %170 = load i8*, i8** %p154, align 8
  %call247 = call i32 @strprefix(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* %170)
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.then.249, label %if.else.271

if.then.249:                                      ; preds = %if.else.246
  %171 = load i8*, i8** %p154, align 8
  %add.ptr250 = getelementptr inbounds i8, i8* %171, i64 7
  %call251 = call i8* @unquote_argument(i8* %add.ptr250)
  store i8* %call251, i8** %str, align 8
  %172 = load i32, i32* %needlf, align 4
  %tobool252 = icmp ne i32 %172, 0
  br i1 %tobool252, label %if.then.253, label %if.end.255

if.then.253:                                      ; preds = %if.then.249
  %call254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.253, %if.then.249
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %174 = load i8*, i8** %str, align 8
  %call256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i8* %174)
  %175 = load i8*, i8** %str, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %175, i64 0
  %176 = load i8, i8* %arrayidx257, align 1
  %conv258 = sext i8 %176 to i32
  %cmp259 = icmp eq i32 %conv258, 0
  br i1 %cmp259, label %cond.true.261, label %cond.false.262

cond.true.261:                                    ; preds = %if.end.255
  %177 = load i32, i32* %needlf, align 4
  br label %cond.end.269

cond.false.262:                                   ; preds = %if.end.255
  %178 = load i8*, i8** %str, align 8
  %call263 = call i64 @strlen(i8* %178) #11
  %sub264 = sub i64 %call263, 1
  %179 = load i8*, i8** %str, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %179, i64 %sub264
  %180 = load i8, i8* %arrayidx265, align 1
  %conv266 = sext i8 %180 to i32
  %cmp267 = icmp ne i32 %conv266, 10
  %conv268 = zext i1 %cmp267 to i32
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.262, %cond.true.261
  %cond270 = phi i32 [ %177, %cond.true.261 ], [ %conv268, %cond.false.262 ]
  store i32 %cond270, i32* %needlf, align 4
  store i32 1, i32* %exit_status, align 4
  br label %if.end.287

if.else.271:                                      ; preds = %if.else.246
  %181 = load i8*, i8** %p154, align 8
  %call272 = call i32 @strprefix(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* %181)
  %tobool273 = icmp ne i32 %call272, 0
  br i1 %tobool273, label %if.then.274, label %if.else.280

if.then.274:                                      ; preds = %if.else.271
  %182 = load i32, i32* %needlf, align 4
  %tobool275 = icmp ne i32 %182, 0
  br i1 %tobool275, label %if.then.276, label %if.end.278

if.then.276:                                      ; preds = %if.then.274
  %call277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.276, %if.then.274
  store i32 0, i32* %needlf, align 4
  %call279 = call i32 @kill(i32 0, i32 19) #7
  br label %if.end.286

if.else.280:                                      ; preds = %if.else.271
  %183 = load i32, i32* %needlf, align 4
  %tobool281 = icmp ne i32 %183, 0
  br i1 %tobool281, label %if.then.282, label %if.end.284

if.then.282:                                      ; preds = %if.else.280
  %call283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.282, %if.else.280
  store i32 0, i32* %needlf, align 4
  %184 = load i8*, i8** %p154, align 8
  %call285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i8* %184)
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.284, %if.end.278
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %cond.end.269
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %cond.end.244
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %cond.end
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.then.192
  br label %for.inc.292

for.inc.292:                                      ; preds = %if.end.291
  %185 = load i8*, i8** %end_p, align 8
  store i8* %185, i8** %p154, align 8
  br label %for.cond.174

for.end.293:                                      ; preds = %land.end.181
  br label %while.cond.150

while.end.294:                                    ; preds = %if.then.169, %while.cond.150
  %186 = load i32, i32* %needlf, align 4
  %tobool295 = icmp ne i32 %186, 0
  br i1 %tobool295, label %if.then.296, label %if.end.298

if.then.296:                                      ; preds = %while.end.294
  %call297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.296, %while.end.294
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call299 = call i32 @fflush(%struct._IO_FILE* %187)
  br label %while.cond.300

while.cond.300:                                   ; preds = %while.body.310, %if.end.298
  %call301 = call i32 @fdatasync(i32 1)
  %cmp302 = icmp ne i32 %call301, 0
  br i1 %cmp302, label %land.rhs.304, label %land.end.308

land.rhs.304:                                     ; preds = %while.cond.300
  %call305 = call i32* @__errno_location() #10
  %188 = load i32, i32* %call305, align 4
  %cmp306 = icmp eq i32 %188, 4
  br label %land.end.308

land.end.308:                                     ; preds = %land.rhs.304, %while.cond.300
  %189 = phi i1 [ false, %while.cond.300 ], [ %cmp306, %land.rhs.304 ]
  br i1 %189, label %while.body.310, label %while.end.311

while.body.310:                                   ; preds = %land.end.308
  br label %while.cond.300

while.end.311:                                    ; preds = %land.end.308
  %190 = load i32, i32* %rl, align 4
  %cmp312 = icmp slt i32 %190, 0
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %while.end.311
  store i32 1, i32* %exit_status, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %while.end.311
  %191 = load i32, i32* @emacs_socket, align 4
  %call316 = call i32 @close(i32 %191)
  %192 = load i32, i32* %exit_status, align 4
  ret i32 %192
}

; Function Attrs: nounwind uwtable
define internal void @decode_options(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %opt = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0)) #7
  store i8* %call, i8** @alternate_editor, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call1 = call i32 @getopt_long_only(i32 %0, i8** %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), %struct.option* getelementptr inbounds ([15 x %struct.option], [15 x %struct.option]* @longopts, i32 0, i32 0), i32* null) #7
  store i32 %call1, i32* %opt, align 4
  %2 = load i32, i32* %opt, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %3 = load i32, i32* %opt, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 97, label %sw.bb.2
    i32 115, label %sw.bb.3
    i32 102, label %sw.bb.4
    i32 100, label %sw.bb.5
    i32 110, label %sw.bb.6
    i32 101, label %sw.bb.7
    i32 113, label %sw.bb.8
    i32 86, label %sw.bb.9
    i32 116, label %sw.bb.10
    i32 99, label %sw.bb.11
    i32 112, label %sw.bb.12
    i32 72, label %sw.bb.13
    i32 70, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  %4 = load i8*, i8** @optarg, align 8
  store i8* %4, i8** @alternate_editor, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %5 = load i8*, i8** @optarg, align 8
  store i8* %5, i8** @socket_name, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %6 = load i8*, i8** @optarg, align 8
  store i8* %6, i8** @server_file, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %7 = load i8*, i8** @optarg, align 8
  store i8* %7, i8** @display, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  store i32 1, i32* @nowait, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  store i32 1, i32* @eval, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  store i32 1, i32* @quiet, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  call void (i1, i8*, ...) @message(i1 zeroext false, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0))
  call void @exit(i32 0) #8
  unreachable

sw.bb.10:                                         ; preds = %if.end
  store i32 1, i32* @tty, align 4
  store i32 0, i32* @current_frame, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  store i32 0, i32* @current_frame, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %8 = load i8*, i8** @optarg, align 8
  store i8* %8, i8** @parent_id, align 8
  store i32 0, i32* @current_frame, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  call void @print_help_and_exit() #9
  unreachable

sw.bb.14:                                         ; preds = %if.end
  %9 = load i8*, i8** @optarg, align 8
  store i8* %9, i8** @frame_parameters, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %10 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.46, i32 0, i32 0), i8* %10)
  call void @exit(i32 1) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb.14, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  br label %while.body

while.end:                                        ; preds = %if.then
  %11 = load i32, i32* @current_frame, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end.20, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %12 = load i32, i32* @tty, align 4
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %if.end.20, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %13 = load i8*, i8** @display, align 8
  %tobool17 = icmp ne i8* %13, null
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.16
  %call19 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #7
  store i8* %call19, i8** @display, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true.16, %land.lhs.true, %while.end
  %14 = load i8*, i8** @display, align 8
  %tobool21 = icmp ne i8* %14, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  %15 = load i8*, i8** @alt_display, align 8
  store i8* %15, i8** @display, align 8
  store i8* null, i8** @alt_display, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %16 = load i8*, i8** @display, align 8
  %tobool24 = icmp ne i8* %16, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.29

land.lhs.true.25:                                 ; preds = %if.end.23
  %17 = load i8*, i8** @display, align 8
  %call26 = call i64 @strlen(i8* %17) #11
  %cmp27 = icmp eq i64 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.25
  store i8* null, i8** @display, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.25, %if.end.23
  %18 = load i32, i32* @current_frame, align 4
  %tobool30 = icmp ne i32 %18, 0
  br i1 %tobool30, label %if.end.34, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %if.end.29
  %19 = load i8*, i8** @display, align 8
  %tobool32 = icmp ne i8* %19, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* @tty, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true.31, %if.end.29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @message(i1 zeroext %is_error, i8* %format, ...) #0 {
entry:
  %is_error.addr = alloca i8, align 1
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %f = alloca %struct._IO_FILE*, align 8
  %frombool = zext i1 %is_error to i8
  store i8 %frombool, i8* %is_error.addr, align 1
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8, i8* %is_error.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %1, %cond.true ], [ %2, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %f, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %4 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vfprintf(%struct._IO_FILE* %3, i8* %4, %struct.__va_list_tag* %arraydecay2)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %5)
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

; Function Attrs: nounwind
declare i32 @getpgrp() #2

; Function Attrs: nounwind
declare i32 @tcgetpgrp(i32) #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @set_socket(i32 %no_exit_if_error) #0 {
entry:
  %retval = alloca i32, align 4
  %no_exit_if_error.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %local_server_file = alloca i8*, align 8
  store i32 %no_exit_if_error, i32* %no_exit_if_error.addr, align 4
  %0 = load i8*, i8** @server_file, align 8
  store i8* %0, i8** %local_server_file, align 8
  %1 = load i8*, i8** @socket_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @socket_name, align 8
  %call = call i32 @set_local_socket(i8* %2)
  store i32 %call, i32* %s, align 4
  %3 = load i32, i32* %s, align 4
  %cmp = icmp ne i32 %3, -1
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i32, i32* %no_exit_if_error.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %5 = load i32, i32* %s, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** @progname, align 8
  %7 = load i8*, i8** @socket_name, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i32 0, i32 0), i8* %6, i8* %7)
  call void @exit(i32 1) #8
  unreachable

if.end.3:                                         ; preds = %entry
  %8 = load i8*, i8** %local_server_file, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %call6 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0)) #7
  store i8* %call6, i8** %local_server_file, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %9 = load i8*, i8** %local_server_file, align 8
  %tobool8 = icmp ne i8* %9, null
  br i1 %tobool8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end.7
  %10 = load i8*, i8** %local_server_file, align 8
  %call10 = call i32 @set_tcp_socket(i8* %10)
  store i32 %call10, i32* %s, align 4
  %11 = load i32, i32* %s, align 4
  %cmp11 = icmp ne i32 %11, -1
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.then.9
  %12 = load i32, i32* %no_exit_if_error.addr, align 4
  %tobool13 = icmp ne i32 %12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.12, %if.then.9
  %13 = load i32, i32* %s, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.12
  %14 = load i8*, i8** @progname, align 8
  %15 = load i8*, i8** %local_server_file, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i32 0, i32 0), i8* %14, i8* %15)
  call void @exit(i32 1) #8
  unreachable

if.end.16:                                        ; preds = %if.end.7
  %call17 = call i32 @set_local_socket(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0))
  store i32 %call17, i32* %s, align 4
  %16 = load i32, i32* %s, align 4
  %cmp18 = icmp ne i32 %16, -1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %17 = load i32, i32* %s, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %call21 = call i32 @set_tcp_socket(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0))
  store i32 %call21, i32* %s, align 4
  %18 = load i32, i32* %s, align 4
  %cmp22 = icmp ne i32 %18, -1
  br i1 %cmp22, label %if.then.25, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.end.20
  %19 = load i32, i32* %no_exit_if_error.addr, align 4
  %tobool24 = icmp ne i32 %19, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.23, %if.end.20
  %20 = load i32, i32* %s, align 4
  store i32 %20, i32* %retval
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false.23
  %21 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.56, i32 0, i32 0), i8* %21)
  call void @exit(i32 1) #8
  unreachable

return:                                           ; preds = %if.then.25, %if.then.19, %if.then.14, %if.then.2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: noreturn nounwind uwtable
define internal void @fail() #3 {
entry:
  %i = alloca i32, align 4
  %0 = load i8*, i8** @alternate_editor, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @optind, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  %2 = load i8*, i8** @alternate_editor, align 8
  %3 = load i8**, i8*** @main_argv, align 8
  %4 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %3, i64 %idx.ext
  %call = call i32 @execvp(i8* %2, i8** %add.ptr) #7
  %5 = load i8*, i8** @progname, align 8
  %6 = load i8*, i8** @alternate_editor, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i32 0, i32 0), i8* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_daemon_and_retry_set_socket() #0 {
entry:
  %dpid = alloca i32, align 4
  %status = alloca i32, align 4
  %w = alloca i32, align 4
  %.compoundliteral = alloca %union.anon.0, align 4
  %.compoundliteral5 = alloca %union.anon.1, align 4
  %emacs = alloca [6 x i8], align 1
  %daemon_option = alloca [9 x i8], align 1
  %d_argv = alloca [3 x i8*], align 16
  %deq = alloca i8*, align 8
  %daemon_arg = alloca i8*, align 8
  %call = call i32 @fork() #7
  store i32 %call, i32* %dpid, align 4
  %0 = load i32, i32* %dpid, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dpid, align 4
  %call1 = call i32 @waitpid(i32 %1, i32* %status, i32 10)
  store i32 %call1, i32* %w, align 4
  %2 = load i32, i32* %w, align 4
  %cmp2 = icmp eq i32 %2, -1
  br i1 %cmp2, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %__in = bitcast %union.anon.0* %.compoundliteral to i32*
  %3 = load i32, i32* %status, align 4
  store i32 %3, i32* %__in, align 4
  %__i = bitcast %union.anon.0* %.compoundliteral to i32*
  %4 = load i32, i32* %__i, align 4
  %and = and i32 %4, 127
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %lor.lhs.false.4, label %if.then.9

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %__in6 = bitcast %union.anon.1* %.compoundliteral5 to i32*
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %__in6, align 4
  %__i7 = bitcast %union.anon.1* %.compoundliteral5 to i32*
  %6 = load i32, i32* %__i7, align 4
  %and8 = and i32 %6, 65280
  %shr = ashr i32 %and8, 8
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.then
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.81, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false.4
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.82, i32 0, i32 0))
  %call10 = call i32 @set_socket(i32 1)
  store i32 %call10, i32* @emacs_socket, align 4
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.83, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end.13:                                        ; preds = %if.end
  br label %if.end.34

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %dpid, align 4
  %cmp14 = icmp slt i32 %7, 0
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.84, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.else.17:                                       ; preds = %if.else
  %9 = bitcast [6 x i8]* %emacs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @start_daemon_and_retry_set_socket.emacs, i32 0, i32 0), i64 6, i32 1, i1 false)
  %10 = bitcast [9 x i8]* %daemon_option to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @start_daemon_and_retry_set_socket.daemon_option, i32 0, i32 0), i64 9, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %emacs, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %d_argv, i32 0, i64 0
  store i8* %arraydecay, i8** %arrayidx, align 8
  %arraydecay18 = getelementptr inbounds [9 x i8], [9 x i8]* %daemon_option, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %d_argv, i32 0, i64 1
  store i8* %arraydecay18, i8** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %d_argv, i32 0, i64 2
  store i8* null, i8** %arrayidx20, align 8
  %11 = load i8*, i8** @socket_name, align 8
  %cmp21 = icmp ne i8* %11, null
  br i1 %cmp21, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %if.else.17
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8** %deq, align 8
  %12 = load i8*, i8** %deq, align 8
  %call23 = call i64 @strlen(i8* %12) #11
  %13 = load i8*, i8** @socket_name, align 8
  %call24 = call i64 @strlen(i8* %13) #11
  %add = add i64 %call23, %call24
  %add25 = add i64 %add, 1
  %call26 = call i8* @xmalloc(i64 %add25)
  store i8* %call26, i8** %daemon_arg, align 8
  %14 = load i8*, i8** %daemon_arg, align 8
  %15 = load i8*, i8** %deq, align 8
  %call27 = call i8* @stpcpy(i8* %14, i8* %15) #7
  %16 = load i8*, i8** @socket_name, align 8
  %call28 = call i8* @strcpy(i8* %call27, i8* %16) #7
  %17 = load i8*, i8** %daemon_arg, align 8
  %arrayidx29 = getelementptr inbounds [3 x i8*], [3 x i8*]* %d_argv, i32 0, i64 1
  store i8* %17, i8** %arrayidx29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.22, %if.else.17
  %arraydecay31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %d_argv, i32 0, i32 0
  %call32 = call i32 @execvp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8** %arraydecay31) #7
  %18 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.87, i32 0, i32 0), i8* %18)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.13
  ret void
}

; Function Attrs: nounwind
declare i8* @get_current_dir_name() #2

; Function Attrs: nounwind uwtable
define internal void @send_to_emacs(i32 %s, i8* %data) #0 {
entry:
  %s.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %dlen = alloca i64, align 8
  %part = alloca i64, align 8
  %sent = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %call = call i64 @strlen(i8* %1) #11
  store i64 %call, i64* %dlen, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %if.end
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %dlen, align 8
  %5 = load i32, i32* @sblen, align 4
  %sub = sub nsw i32 4096, %5
  %conv = sext i32 %sub to i64
  %cmp = icmp ult i64 %4, %conv
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %6 = load i64, i64* %dlen, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %7 = load i32, i32* @sblen, align 4
  %sub3 = sub nsw i32 4096, %7
  %conv4 = sext i32 %sub3 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %conv4, %cond.false ]
  store i64 %cond, i64* %part, align 8
  %8 = load i32, i32* @sblen, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [4097 x i8], [4097 x i8]* @send_buffer, i32 0, i64 %idxprom
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %part, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %9, i64 %10, i32 1, i1 false)
  %11 = load i64, i64* %part, align 8
  %12 = load i8*, i8** %data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %11
  store i8* %add.ptr, i8** %data.addr, align 8
  %13 = load i64, i64* %part, align 8
  %14 = load i32, i32* @sblen, align 4
  %conv5 = sext i32 %14 to i64
  %add = add i64 %conv5, %13
  %conv6 = trunc i64 %add to i32
  store i32 %conv6, i32* @sblen, align 4
  %15 = load i32, i32* @sblen, align 4
  %cmp7 = icmp eq i32 %15, 4096
  br i1 %cmp7, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %16 = load i32, i32* @sblen, align 4
  %cmp9 = icmp sgt i32 %16, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %lor.lhs.false
  %17 = load i32, i32* @sblen, align 4
  %sub11 = sub nsw i32 %17, 1
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds [4097 x i8], [4097 x i8]* @send_buffer, i32 0, i64 %idxprom12
  %18 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp eq i32 %conv14, 10
  br i1 %cmp15, label %if.then.17, label %if.end.36

if.then.17:                                       ; preds = %land.lhs.true, %cond.end
  %19 = load i32, i32* %s.addr, align 4
  %20 = load i32, i32* @sblen, align 4
  %conv18 = sext i32 %20 to i64
  %call19 = call i64 @send(i32 %19, i8* getelementptr inbounds ([4097 x i8], [4097 x i8]* @send_buffer, i32 0, i32 0), i64 %conv18, i32 0)
  %conv20 = trunc i64 %call19 to i32
  store i32 %conv20, i32* %sent, align 4
  %21 = load i32, i32* %sent, align 4
  %cmp21 = icmp slt i32 %21, 0
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.then.17
  %22 = load i8*, i8** @progname, align 8
  %23 = load i32, i32* @sblen, align 4
  %call24 = call i32* @__errno_location() #10
  %24 = load i32, i32* %call24, align 4
  %call25 = call i8* @strerror(i32 %24) #7
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.88, i32 0, i32 0), i8* %22, i32 %23, i8* %call25)
  call void @fail() #9
  unreachable

if.end.26:                                        ; preds = %if.then.17
  %25 = load i32, i32* %sent, align 4
  %26 = load i32, i32* @sblen, align 4
  %cmp27 = icmp ne i32 %25, %26
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end.26
  %27 = load i32, i32* %sent, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [4097 x i8], [4097 x i8]* @send_buffer, i32 0, i64 %idxprom30
  %28 = load i32, i32* @sblen, align 4
  %29 = load i32, i32* %sent, align 4
  %sub32 = sub nsw i32 %28, %29
  %conv33 = sext i32 %sub32 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* getelementptr inbounds ([4097 x i8], [4097 x i8]* @send_buffer, i32 0, i32 0), i8* %arrayidx31, i64 %conv33, i32 1, i1 false)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.end.26
  %30 = load i32, i32* %sent, align 4
  %31 = load i32, i32* @sblen, align 4
  %sub35 = sub nsw i32 %31, %30
  store i32 %sub35, i32* @sblen, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.34, %land.lhs.true, %lor.lhs.false
  %32 = load i64, i64* %part, align 8
  %33 = load i64, i64* %dlen, align 8
  %sub37 = sub i64 %33, %32
  store i64 %sub37, i64* %dlen, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quote_argument(i32 %s, i8* %str) #0 {
entry:
  %s.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %copy = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i32 %s, i32* %s.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #11
  %mul = mul i64 %call, 2
  %add = add i64 %mul, 1
  %call1 = call i8* @xmalloc(i64 %add)
  store i8* %call1, i8** %copy, align 8
  %1 = load i8*, i8** %str.addr, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %copy, align 8
  store i8* %2, i8** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 38, i8* %7, align 1
  %8 = load i8*, i8** %q, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr3, i8** %q, align 8
  store i8 95, i8* %8, align 1
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr4, i8** %p, align 8
  br label %if.end.26

if.else:                                          ; preds = %while.body
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv5, 10
  br i1 %cmp6, label %if.then.8, label %if.else.12

if.then.8:                                        ; preds = %if.else
  %12 = load i8*, i8** %q, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr9, i8** %q, align 8
  store i8 38, i8* %12, align 1
  %13 = load i8*, i8** %q, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr10, i8** %q, align 8
  store i8 110, i8* %13, align 1
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  br label %if.end.25

if.else.12:                                       ; preds = %if.else
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv13, 38
  br i1 %cmp14, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.12
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv16 = sext i8 %18 to i32
  %cmp17 = icmp eq i32 %conv16, 45
  br i1 %cmp17, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %19 = load i8*, i8** %p, align 8
  %20 = load i8*, i8** %str.addr, align 8
  %cmp19 = icmp eq i8* %19, %20
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true, %if.else.12
  %21 = load i8*, i8** %q, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr22, i8** %q, align 8
  store i8 38, i8* %21, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.21, %land.lhs.true, %lor.lhs.false
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %24 = load i8*, i8** %q, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr24, i8** %q, align 8
  store i8 %23, i8* %24, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i8*, i8** %q, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr27, i8** %q, align 8
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* %s.addr, align 4
  %27 = load i8*, i8** %copy, align 8
  call void @send_to_emacs(i32 %26, i8* %27)
  %28 = load i8*, i8** %copy, align 8
  call void @free(i8* %28) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_tty(i8** %tty_type, i8** %tty_name, i32 %noabort) #0 {
entry:
  %retval = alloca i32, align 4
  %tty_type.addr = alloca i8**, align 8
  %tty_name.addr = alloca i8**, align 8
  %noabort.addr = alloca i32, align 4
  %type = alloca i8*, align 8
  %name = alloca i8*, align 8
  store i8** %tty_type, i8*** %tty_type.addr, align 8
  store i8** %tty_name, i8*** %tty_name.addr, align 8
  store i32 %noabort, i32* %noabort.addr, align 4
  %call = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0)) #7
  store i8* %call, i8** %type, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fileno(%struct._IO_FILE* %0) #7
  %call2 = call i8* @ttyname(i32 %call1) #7
  store i8* %call2, i8** %name, align 8
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %noabort.addr, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %3 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i32 0, i32 0), i8* %3)
  call void @fail() #9
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %type, align 8
  %tobool5 = icmp ne i8* %4, null
  br i1 %tobool5, label %if.end.10, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %5 = load i32, i32* %noabort.addr, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.then.6
  %6 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.91, i32 0, i32 0), i8* %6)
  call void @fail() #9
  unreachable

if.end.10:                                        ; preds = %if.end
  %7 = load i8*, i8** %type, align 8
  %call11 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0)) #11
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.10
  %8 = load i32, i32* %noabort.addr, align 4
  %tobool13 = icmp ne i32 %8, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.then.12
  store i32 0, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.then.12
  %9 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.93, i32 0, i32 0), i8* %9)
  call void @fail() #9
  unreachable

if.end.16:                                        ; preds = %if.end.10
  %10 = load i8*, i8** %name, align 8
  %11 = load i8**, i8*** %tty_name.addr, align 8
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %type, align 8
  %13 = load i8**, i8*** %tty_type.addr, align 8
  store i8* %12, i8** %13, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then.8, %if.then.4
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @init_signals() #0 {
entry:
  %call = call void (i32)* @signal(i32 28, void (i32)* @pass_signal_to_emacs) #7
  %call1 = call void (i32)* @signal(i32 18, void (i32)* @handle_sigcont) #7
  %call2 = call void (i32)* @signal(i32 20, void (i32)* @handle_sigtstp) #7
  %call3 = call void (i32)* @signal(i32 22, void (i32)* @handle_sigtstp) #7
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

declare i32 @printf(i8*, ...) #5

declare i32 @fflush(%struct._IO_FILE*) #5

declare i32 @fdatasync(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i64 @recv(i32, i8*, i64, i32) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind uwtable
define internal i32 @strprefix(i8* %prefix, i8* %string) #0 {
entry:
  %prefix.addr = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %prefix.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i8*, i8** %prefix.addr, align 8
  %call = call i64 @strlen(i8* %2) #11
  %call1 = call i32 @strncmp(i8* %0, i8* %1, i64 %call) #11
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @unquote_argument(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  store i8* %1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  store i8* %2, i8** %p, align 8
  %3 = load i8*, i8** %str.addr, align 8
  store i8* %3, i8** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %if.end
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 38
  br i1 %cmp, label %if.then.3, label %if.end.26

if.then.3:                                        ; preds = %while.body
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv4 = sext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv4, 38
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.3
  %11 = load i8*, i8** %p, align 8
  store i8 38, i8* %11, align 1
  br label %if.end.25

if.else:                                          ; preds = %if.then.3
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 95
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %14 = load i8*, i8** %p, align 8
  store i8 32, i8* %14, align 1
  br label %if.end.24

if.else.12:                                       ; preds = %if.else
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv13, 110
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.12
  %17 = load i8*, i8** %p, align 8
  store i8 10, i8* %17, align 1
  br label %if.end.23

if.else.17:                                       ; preds = %if.else.12
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv18 = sext i8 %19 to i32
  %cmp19 = icmp eq i32 %conv18, 45
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.17
  %20 = load i8*, i8** %p, align 8
  store i8 45, i8* %20, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.16
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.11
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.7
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %while.body
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %q, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr28, i8** %q, align 8
  store i8 %22, i8* %23, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i8*, i8** %q, align 8
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %str.addr, align 8
  store i8* %25, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %26 = load i8*, i8** %retval
  ret i8* %26
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

declare i32 @close(i32) #5

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare i32 @getopt_long_only(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: noreturn nounwind uwtable
define internal void @print_help_and_exit() #3 {
entry:
  %0 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext false, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.48, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([422 x i8], [422 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([446 x i8], [446 x i8]* @.str.51, i32 0, i32 0))
  call void @exit(i32 0) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind uwtable
define internal i32 @set_local_socket(i8* %local_socket_name) #0 {
entry:
  %retval = alloca i32, align 4
  %local_socket_name.addr = alloca i8*, align 8
  %s = alloca i32, align 4
  %server = alloca %struct.sockaddr_un, align 2
  %sock_status = alloca i32, align 4
  %use_tmpdir = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  %server_name = alloca i8*, align 8
  %tmpdir = alloca i8*, align 8
  %tmpdir_storage = alloca i8*, align 8
  %socket_name_storage = alloca i8*, align 8
  %uid = alloca i64, align 8
  %z = alloca i8*, align 8
  %user_name = alloca i8*, align 8
  %pw = alloca %struct.passwd*, align 8
  %uid48 = alloca i64, align 8
  %user_socket_name = alloca i8*, align 8
  %z56 = alloca i8*, align 8
  %agg.tmp = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %local_socket_name, i8** %local_socket_name.addr, align 8
  %call = call i32 @socket(i32 1, i32 1, i32 0) #7
  store i32 %call, i32* %s, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** @progname, align 8
  %call1 = call i32* @__errno_location() #10
  %1 = load i32, i32* %call1, align 4
  %call2 = call i8* @strerror(i32 %1) #7
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i8* %0, i8* %call2)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %sun_family = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %server, i32 0, i32 0
  store i16 1, i16* %sun_family, align 2
  store i32 0, i32* %use_tmpdir, align 4
  %2 = load i8*, i8** %local_socket_name.addr, align 8
  store i8* %2, i8** %server_name, align 8
  store i8* null, i8** %tmpdir_storage, align 8
  store i8* null, i8** %socket_name_storage, align 8
  %3 = load i8*, i8** %local_socket_name.addr, align 8
  %call3 = call i8* @strchr(i8* %3, i32 47) #11
  %tobool = icmp ne i8* %call3, null
  br i1 %tobool, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %local_socket_name.addr, align 8
  %call4 = call i8* @strchr(i8* %4, i32 92) #11
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.end.19, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %call7 = call i32 @geteuid() #7
  %conv = zext i32 %call7 to i64
  store i64 %conv, i64* %uid, align 8
  store i32 1, i32* %use_tmpdir, align 4
  %call8 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0)) #7
  store i8* %call8, i8** %tmpdir, align 8
  %5 = load i8*, i8** %tmpdir, align 8
  %tobool9 = icmp ne i8* %5, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i8** %tmpdir, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.6
  %6 = load i8*, i8** %tmpdir, align 8
  %call12 = call i64 @strlen(i8* %6) #11
  %7 = load i8*, i8** %server_name, align 8
  %call13 = call i64 @strlen(i8* %7) #11
  %add = add i64 %call12, %call13
  %add14 = add i64 %add, 100
  %call15 = call i8* @xmalloc(i64 %add14)
  store i8* %call15, i8** %socket_name_storage, align 8
  %8 = load i8*, i8** %socket_name_storage, align 8
  %9 = load i8*, i8** %tmpdir, align 8
  %call16 = call i8* @stpcpy(i8* %8, i8* %9) #7
  store i8* %call16, i8** %z, align 8
  %10 = load i8*, i8** %z, align 8
  %11 = load i64, i64* %uid, align 8
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i64 %11) #7
  %12 = load i8*, i8** %z, align 8
  %idx.ext = sext i32 %call17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %z, align 8
  %13 = load i8*, i8** %z, align 8
  %14 = load i8*, i8** %server_name, align 8
  %call18 = call i8* @strcpy(i8* %13, i8* %14) #7
  %15 = load i8*, i8** %socket_name_storage, align 8
  store i8* %15, i8** %local_socket_name.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.11, %land.lhs.true, %if.end
  %16 = load i8*, i8** %local_socket_name.addr, align 8
  %call20 = call i64 @strlen(i8* %16) #11
  %cmp21 = icmp ult i64 %call20, 108
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.19
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %server, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i32 0
  %17 = load i8*, i8** %local_socket_name.addr, align 8
  %call24 = call i8* @strcpy(i8* %arraydecay, i8* %17) #7
  br label %if.end.25

if.else:                                          ; preds = %if.end.19
  %18 = load i8*, i8** @progname, align 8
  %19 = load i8*, i8** %local_socket_name.addr, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i32 0, i32 0), i8* %18, i8* %19)
  call void @fail() #9
  unreachable

if.end.25:                                        ; preds = %if.then.23
  %sun_path26 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %server, i32 0, i32 1
  %arraydecay27 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path26, i32 0, i32 0
  %call28 = call i32 @socket_status(i8* %arraydecay27)
  store i32 %call28, i32* %sock_status, align 4
  %call29 = call i32* @__errno_location() #10
  %20 = load i32, i32* %call29, align 4
  store i32 %20, i32* %saved_errno, align 4
  %21 = load i32, i32* %sock_status, align 4
  %tobool30 = icmp ne i32 %21, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.79

land.lhs.true.31:                                 ; preds = %if.end.25
  %22 = load i32, i32* %use_tmpdir, align 4
  %tobool32 = icmp ne i32 %22, 0
  br i1 %tobool32, label %if.then.33, label %if.end.79

if.then.33:                                       ; preds = %land.lhs.true.31
  %call34 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)) #7
  store i8* %call34, i8** %user_name, align 8
  %23 = load i8*, i8** %user_name, align 8
  %tobool35 = icmp ne i8* %23, null
  br i1 %tobool35, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.then.33
  %call37 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0)) #7
  store i8* %call37, i8** %user_name, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.33
  %24 = load i8*, i8** %user_name, align 8
  %tobool39 = icmp ne i8* %24, null
  br i1 %tobool39, label %if.then.40, label %if.end.78

if.then.40:                                       ; preds = %if.end.38
  %25 = load i8*, i8** %user_name, align 8
  %call41 = call %struct.passwd* @getpwnam(i8* %25)
  store %struct.passwd* %call41, %struct.passwd** %pw, align 8
  %26 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %tobool42 = icmp ne %struct.passwd* %26, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.else.75

land.lhs.true.43:                                 ; preds = %if.then.40
  %27 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 2
  %28 = load i32, i32* %pw_uid, align 4
  %call44 = call i32 @geteuid() #7
  %cmp45 = icmp ne i32 %28, %call44
  br i1 %cmp45, label %if.then.47, label %if.else.75

if.then.47:                                       ; preds = %land.lhs.true.43
  %29 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %pw_uid49 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 2
  %30 = load i32, i32* %pw_uid49, align 4
  %conv50 = zext i32 %30 to i64
  store i64 %conv50, i64* %uid48, align 8
  %31 = load i8*, i8** %tmpdir, align 8
  %call51 = call i64 @strlen(i8* %31) #11
  %32 = load i8*, i8** %server_name, align 8
  %call52 = call i64 @strlen(i8* %32) #11
  %add53 = add i64 %call51, %call52
  %add54 = add i64 %add53, 100
  %call55 = call i8* @xmalloc(i64 %add54)
  store i8* %call55, i8** %user_socket_name, align 8
  %33 = load i8*, i8** %user_socket_name, align 8
  %34 = load i8*, i8** %tmpdir, align 8
  %call57 = call i8* @stpcpy(i8* %33, i8* %34) #7
  store i8* %call57, i8** %z56, align 8
  %35 = load i8*, i8** %z56, align 8
  %36 = load i64, i64* %uid48, align 8
  %call58 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i64 %36) #7
  %37 = load i8*, i8** %z56, align 8
  %idx.ext59 = sext i32 %call58 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %37, i64 %idx.ext59
  store i8* %add.ptr60, i8** %z56, align 8
  %38 = load i8*, i8** %z56, align 8
  %39 = load i8*, i8** %server_name, align 8
  %call61 = call i8* @strcpy(i8* %38, i8* %39) #7
  %40 = load i8*, i8** %user_socket_name, align 8
  %call62 = call i64 @strlen(i8* %40) #11
  %cmp63 = icmp ult i64 %call62, 108
  br i1 %cmp63, label %if.then.65, label %if.else.69

if.then.65:                                       ; preds = %if.then.47
  %sun_path66 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %server, i32 0, i32 1
  %arraydecay67 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path66, i32 0, i32 0
  %41 = load i8*, i8** %user_socket_name, align 8
  %call68 = call i8* @strcpy(i8* %arraydecay67, i8* %41) #7
  br label %if.end.70

if.else.69:                                       ; preds = %if.then.47
  %42 = load i8*, i8** @progname, align 8
  %43 = load i8*, i8** %user_socket_name, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i32 0, i32 0), i8* %42, i8* %43)
  call void @exit(i32 1) #8
  unreachable

if.end.70:                                        ; preds = %if.then.65
  %44 = load i8*, i8** %user_socket_name, align 8
  call void @free(i8* %44) #7
  %sun_path71 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %server, i32 0, i32 1
  %arraydecay72 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path71, i32 0, i32 0
  %call73 = call i32 @socket_status(i8* %arraydecay72)
  store i32 %call73, i32* %sock_status, align 4
  %call74 = call i32* @__errno_location() #10
  %45 = load i32, i32* %call74, align 4
  store i32 %45, i32* %saved_errno, align 4
  br label %if.end.77

if.else.75:                                       ; preds = %land.lhs.true.43, %if.then.40
  %46 = load i32, i32* %saved_errno, align 4
  %call76 = call i32* @__errno_location() #10
  store i32 %46, i32* %call76, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.end.70
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.38
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %land.lhs.true.31, %if.end.25
  %47 = load i8*, i8** %socket_name_storage, align 8
  call void @free(i8* %47) #7
  %48 = load i8*, i8** %tmpdir_storage, align 8
  call void @free(i8* %48) #7
  %49 = load i32, i32* %sock_status, align 4
  switch i32 %49, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.85
  ]

sw.bb:                                            ; preds = %if.end.79
  %call80 = call i32 @geteuid() #7
  %cmp81 = icmp ne i32 0, %call80
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %sw.bb
  %50 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0), i8* %50)
  store i32 -1, i32* %retval
  br label %return

if.end.84:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.end.79
  %51 = load i32, i32* %saved_errno, align 4
  %cmp86 = icmp eq i32 %51, 2
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %sw.bb.85
  %52 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.65, i32 0, i32 0), i8* %52)
  br label %if.end.93

if.else.89:                                       ; preds = %sw.bb.85
  %53 = load i8*, i8** @progname, align 8
  %sun_path90 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %server, i32 0, i32 1
  %arraydecay91 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path90, i32 0, i32 0
  %54 = load i32, i32* %saved_errno, align 4
  %call92 = call i8* @strerror(i32 %54) #7
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), i8* %53, i8* %arraydecay91, i8* %call92)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.89, %if.then.88
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.79, %if.end.84
  %55 = load i32, i32* %s, align 4
  %__sockaddr__ = bitcast %union.__CONST_SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %56 = bitcast %struct.sockaddr_un* %server to %struct.sockaddr*
  store %struct.sockaddr* %56, %struct.sockaddr** %__sockaddr__, align 8
  %sun_path94 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %server, i32 0, i32 1
  %arraydecay95 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path94, i32 0, i32 0
  %call96 = call i64 @strlen(i8* %arraydecay95) #11
  %add97 = add i64 %call96, 2
  %conv98 = trunc i64 %add97 to i32
  %coerce.dive = getelementptr %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %57 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call99 = call i32 @connect(i32 %55, %struct.sockaddr* %57, i32 %conv98)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.105

if.then.102:                                      ; preds = %sw.epilog
  %58 = load i8*, i8** @progname, align 8
  %call103 = call i32* @__errno_location() #10
  %59 = load i32, i32* %call103, align 4
  %call104 = call i8* @strerror(i32 %59) #7
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i32 0, i32 0), i8* %58, i8* %call104)
  store i32 -1, i32* %retval
  br label %return

if.end.105:                                       ; preds = %sw.epilog
  %60 = load i32, i32* %s, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %if.end.105, %if.then.102, %if.end.93, %if.then.83, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @set_tcp_socket(i8* %local_server_file) #0 {
entry:
  %retval = alloca i32, align 4
  %local_server_file.addr = alloca i8*, align 8
  %s = alloca i32, align 4
  %server = alloca %struct.sockaddr_in, align 4
  %l_arg = alloca %struct.linger, align 4
  %auth_string = alloca [65 x i8], align 16
  %agg.tmp = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i8* %local_server_file, i8** %local_server_file.addr, align 8
  %0 = bitcast %struct.linger* %l_arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.linger* @set_tcp_socket.l_arg to i8*), i64 8, i32 4, i1 false)
  %1 = load i8*, i8** %local_server_file.addr, align 8
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %auth_string, i32 0, i32 0
  %call = call i32 @get_server_config(i8* %1, %struct.sockaddr_in* %server, i8* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %server, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  %2 = load i32, i32* %s_addr, align 4
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0)) #7
  %cmp = icmp ne i32 %2, %call1
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* @quiet, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load i8*, i8** @progname, align 8
  %sin_addr4 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %server, i32 0, i32 2
  %coerce.dive = getelementptr %struct.in_addr, %struct.in_addr* %sin_addr4, i32 0, i32 0
  %5 = load i32, i32* %coerce.dive, align 4
  %call5 = call i8* @inet_ntoa(i32 %5) #7
  call void (i1, i8*, ...) @message(i1 zeroext false, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.70, i32 0, i32 0), i8* %4, i8* %call5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %call7 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %call7, i32* %s, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  call void @sock_err_message(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load i32, i32* %s, align 4
  %__sockaddr__ = bitcast %union.__CONST_SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %7 = bitcast %struct.sockaddr_in* %server to %struct.sockaddr*
  store %struct.sockaddr* %7, %struct.sockaddr** %__sockaddr__, align 8
  %coerce.dive11 = getelementptr %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %8 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive11, align 8
  %call12 = call i32 @connect(i32 %6, %struct.sockaddr* %8, i32 16)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  call void @sock_err_message(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %9 = load i32, i32* %s, align 4
  %10 = bitcast %struct.linger* %l_arg to i8*
  %call16 = call i32 @setsockopt(i32 %9, i32 1, i32 13, i8* %10, i32 8) #7
  %arrayidx = getelementptr inbounds [65 x i8], [65 x i8]* %auth_string, i32 0, i64 64
  store i8 0, i8* %arrayidx, align 1
  %11 = load i32, i32* %s, align 4
  call void @send_to_emacs(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0))
  %12 = load i32, i32* %s, align 4
  %arraydecay17 = getelementptr inbounds [65 x i8], [65 x i8]* %auth_string, i32 0, i32 0
  call void @send_to_emacs(i32 %12, i8* %arraydecay17)
  %13 = load i32, i32* %s, align 4
  call void @send_to_emacs(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  %14 = load i32, i32* %s, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.9, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind
declare i32 @geteuid() #2

; Function Attrs: nounwind uwtable
define internal i8* @xmalloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #7
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %result, align 8
  ret i8* %2
}

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @socket_status(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %statbfr = alloca %struct.stat, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %statbfr) #7
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %statbfr, i32 0, i32 4
  %1 = load i32, i32* %st_uid, align 4
  %call1 = call i32 @geteuid() #7
  %cmp2 = icmp ne i32 %1, %call1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare %struct.passwd* @getpwnam(i8*) #5

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @perror(i8*) #5

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define internal i32 @get_server_config(i8* %config_file, %struct.sockaddr_in* %server, i8* %authentication) #0 {
entry:
  %retval = alloca i32, align 4
  %config_file.addr = alloca i8*, align 8
  %server.addr = alloca %struct.sockaddr_in*, align 8
  %authentication.addr = alloca i8*, align 8
  %dotted = alloca [32 x i8], align 16
  %port = alloca i8*, align 8
  %config = alloca %struct._IO_FILE*, align 8
  %home = alloca i8*, align 8
  %path = alloca i8*, align 8
  %z = alloca i8*, align 8
  store i8* %config_file, i8** %config_file.addr, align 8
  store %struct.sockaddr_in* %server, %struct.sockaddr_in** %server.addr, align 8
  store i8* %authentication, i8** %authentication.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %config, align 8
  %0 = load i8*, i8** %config_file.addr, align 8
  %call = call i32 @file_name_absolute_p(i8* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %config_file.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %config, align 8
  br label %if.end.13

if.else:                                          ; preds = %entry
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0)) #7
  store i8* %call2, i8** %home, align 8
  %2 = load i8*, i8** %home, align 8
  %tobool3 = icmp ne i8* %2, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %3 = load i8*, i8** %home, align 8
  %call5 = call i64 @strlen(i8* %3) #11
  %4 = load i8*, i8** %config_file.addr, align 8
  %call6 = call i64 @strlen(i8* %4) #11
  %add = add i64 %call5, %call6
  %add7 = add i64 %add, 100
  %call8 = call i8* @xmalloc(i64 %add7)
  store i8* %call8, i8** %path, align 8
  %5 = load i8*, i8** %path, align 8
  %6 = load i8*, i8** %home, align 8
  %call9 = call i8* @stpcpy(i8* %5, i8* %6) #7
  store i8* %call9, i8** %z, align 8
  %7 = load i8*, i8** %z, align 8
  %call10 = call i8* @stpcpy(i8* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i32 0, i32 0)) #7
  store i8* %call10, i8** %z, align 8
  %8 = load i8*, i8** %z, align 8
  %9 = load i8*, i8** %config_file.addr, align 8
  %call11 = call i8* @strcpy(i8* %8, i8* %9) #7
  %10 = load i8*, i8** %path, align 8
  %call12 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0))
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %config, align 8
  %11 = load i8*, i8** %path, align 8
  call void @free(i8* %11) #7
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %config, align 8
  %tobool14 = icmp ne %struct._IO_FILE* %12, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %dotted, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %config, align 8
  %call17 = call i8* @fgets(i8* %arraydecay, i32 32, %struct._IO_FILE* %13)
  %tobool18 = icmp ne i8* %call17, null
  br i1 %tobool18, label %land.lhs.true, label %if.else.23

land.lhs.true:                                    ; preds = %if.end.16
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %dotted, i32 0, i32 0
  %call20 = call i8* @strchr(i8* %arraydecay19, i32 58) #11
  store i8* %call20, i8** %port, align 8
  %tobool21 = icmp ne i8* %call20, null
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true
  %14 = load i8*, i8** %port, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %port, align 8
  store i8 0, i8* %14, align 1
  br label %if.end.24

if.else.23:                                       ; preds = %land.lhs.true, %if.end.16
  %15 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.77, i32 0, i32 0), i8* %15)
  call void @exit(i32 1) #8
  unreachable

if.end.24:                                        ; preds = %if.then.22
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %server.addr, align 8
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %sin_family, align 2
  %arraydecay25 = getelementptr inbounds [32 x i8], [32 x i8]* %dotted, i32 0, i32 0
  %call26 = call i32 @inet_addr(i8* %arraydecay25) #7
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %server.addr, align 8
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  store i32 %call26, i32* %s_addr, align 4
  %18 = load i8*, i8** %port, align 8
  %call27 = call i32 @atoi(i8* %18) #11
  %conv = trunc i32 %call27 to i16
  %call28 = call zeroext i16 @htons(i16 zeroext %conv) #10
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %server.addr, align 8
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  store i16 %call28, i16* %sin_port, align 2
  %20 = load i8*, i8** %authentication.addr, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %config, align 8
  %call29 = call i64 @fread(i8* %20, i64 64, i64 1, %struct._IO_FILE* %21)
  %tobool30 = icmp ne i64 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.24
  %22 = load i8*, i8** @progname, align 8
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.78, i32 0, i32 0), i8* %22)
  call void @exit(i32 1) #8
  unreachable

if.end.32:                                        ; preds = %if.end.24
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %config, align 8
  %call33 = call i32 @fclose(%struct._IO_FILE* %23)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.15
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #2

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #2

; Function Attrs: nounwind uwtable
define internal void @sock_err_message(i8* %function_name) #0 {
entry:
  %function_name.addr = alloca i8*, align 8
  store i8* %function_name, i8** %function_name.addr, align 8
  %0 = load i8*, i8** @progname, align 8
  %1 = load i8*, i8** %function_name.addr, align 8
  %call = call i32* @__errno_location() #10
  %2 = load i32, i32* %call, align 4
  %call1 = call i8* @strerror(i32 %2) #7
  call void (i1, i8*, ...) @message(i1 zeroext true, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i32 0, i32 0), i8* %0, i8* %1, i8* %call1)
  ret void
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @file_name_absolute_p(i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i8*, i8** %filename.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.2, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #5

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #5

declare i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #2

; Function Attrs: nounwind
declare i32 @fork() #2

declare i32 @waitpid(i32, i32*, i32) #5

declare i64 @send(i32, i8*, i64, i32) #5

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare i8* @ttyname(i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: nounwind uwtable
define internal void @pass_signal_to_emacs(i32 %signalnum) #0 {
entry:
  %signalnum.addr = alloca i32, align 4
  %old_errno = alloca i32, align 4
  store i32 %signalnum, i32* %signalnum.addr, align 4
  %call = call i32* @__errno_location() #10
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %old_errno, align 4
  %1 = load i32, i32* @emacs_pid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @emacs_pid, align 4
  %3 = load i32, i32* %signalnum.addr, align 4
  %call1 = call i32 @kill(i32 %2, i32 %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %signalnum.addr, align 4
  %call2 = call void (i32)* @signal(i32 %4, void (i32)* @pass_signal_to_emacs) #7
  %5 = load i32, i32* %old_errno, align 4
  %call3 = call i32* @__errno_location() #10
  store i32 %5, i32* %call3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @handle_sigcont(i32 %signalnum) #0 {
entry:
  %signalnum.addr = alloca i32, align 4
  %old_errno = alloca i32, align 4
  %pgrp = alloca i32, align 4
  %tcpgrp = alloca i32, align 4
  store i32 %signalnum, i32* %signalnum.addr, align 4
  %call = call i32* @__errno_location() #10
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %old_errno, align 4
  %call1 = call i32 @getpgrp() #7
  store i32 %call1, i32* %pgrp, align 4
  %call2 = call i32 @tcgetpgrp(i32 1) #7
  store i32 %call2, i32* %tcpgrp, align 4
  %1 = load i32, i32* %tcpgrp, align 4
  %2 = load i32, i32* %pgrp, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0))
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %tcpgrp, align 4
  %cmp3 = icmp sle i32 0, %4
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %5 = load i32, i32* @tty, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %pgrp, align 4
  %sub = sub nsw i32 0, %6
  %call5 = call i32 @kill(i32 %sub, i32 21) #7
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %signalnum.addr, align 4
  %call7 = call void (i32)* @signal(i32 %7, void (i32)* @handle_sigcont) #7
  %8 = load i32, i32* %old_errno, align 4
  %call8 = call i32* @__errno_location() #10
  store i32 %8, i32* %call8, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @handle_sigtstp(i32 %signalnum) #0 {
entry:
  %signalnum.addr = alloca i32, align 4
  %old_errno = alloca i32, align 4
  %set = alloca %struct.__sigset_t, align 8
  store i32 %signalnum, i32* %signalnum.addr, align 4
  %call = call i32* @__errno_location() #10
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %old_errno, align 4
  %1 = load i32, i32* @emacs_socket, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @emacs_socket, align 4
  call void @send_to_emacs(i32 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* null, %struct.__sigset_t* %set) #7
  %3 = load i32, i32* %signalnum.addr, align 4
  %call2 = call i32 @sigdelset(%struct.__sigset_t* %set, i32 %3) #7
  %4 = load i32, i32* %signalnum.addr, align 4
  %call3 = call void (i32)* @signal(i32 %4, void (i32)* null) #7
  %5 = load i32, i32* %signalnum.addr, align 4
  %call4 = call i32 @raise(i32 %5) #7
  %call5 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %set, %struct.__sigset_t* null) #7
  %6 = load i32, i32* %signalnum.addr, align 4
  %call6 = call void (i32)* @signal(i32 %6, void (i32)* @handle_sigtstp) #7
  %7 = load i32, i32* %old_errno, align 4
  %call7 = call i32* @__errno_location() #10
  store i32 %7, i32* %call7, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #2

; Function Attrs: nounwind
declare i32 @sigdelset(%struct.__sigset_t*, i32) #2

; Function Attrs: nounwind
declare i32 @raise(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
