; ModuleID = './fileio.bc'
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rc_name = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@rc_recursion = global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"TF\00", align 1
@extra_incap = external global i8*, align 8
@display = external global %struct.display*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"vt\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"xterm\00", align 1
@.str.4 = private unnamed_addr constant [129 x i8] c"xn:f0=\1BOp:f1=\1BOq:f2=\1BOr:f3=\1BOs:f4=\1BOt:f5=\1BOu:f6=\1BOv:f7=\1BOw:f8=\1BOx:f9=\1BOy:f.=\1BOn:f,=\1BOl:fe=\1BOM:f+=\1BOk:f-=\1BOm:f*=\1BOj:f/=\1BOo:fq=\1BOX\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@RcFileName = external global i8*, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"Unable to open \22%s\22.\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"%s: 'echo [-n] \22string\22' expected.\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"%s: sleep: one numeric argument expected.\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"termcapinfo\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"terminfo\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"%s: %s: incorrect number of arguments.\00", align 1
@extra_outcap = external global i8*, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"%s: source %s\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"%s: source: recursion limit reached\00", align 1
@fore = external global %struct.win*, align 8
@flayer = external global %struct.layer*, align 8
@users = external global %struct.acluser*, align 8
@EffectiveAclUser = external global %struct.acluser*, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@SockName = external global i8*, align 8
@SockPath = external global [0 x i8], align 1
@.str.20 = private unnamed_addr constant [9 x i8] c".termcap\00", align 1
@hardcopydir = external global i8*, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"%s/hardcopy.%d\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"hardcopy.%d\00", align 1
@hardcopy_append = external global i32, align 4
@.str.23 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@BufferFile = external global i8*, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"/tmp/screen-exchange\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"No write to links, please.\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"<\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Cannot open \22%s\22\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Termcap entry written to \22%s\22.\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Screen image %s to \22%s\22.\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"appended\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"written\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Copybuffer written to \22%s\22.\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"no %s -- no slurp\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"no good %s -- no slurp\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@strnomem = external global [0 x i8], align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"Got only %d bytes from %s\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"Slurped only %d characters (of %d) into buffer - try again\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"Slurped %d characters into buffer\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"%s %sremoved\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@real_uid = external global i32, align 4
@real_gid = external global i32, align 4
@eff_uid = external global i32, align 4
@eff_gid = external global i32, align 4
@.str.41 = private unnamed_addr constant [14 x i8] c"printing pipe\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"printing fork\00", align 1
@displays = external global %struct.display*, align 8
@.str.43 = private unnamed_addr constant [17 x i8] c"printpipe setuid\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"setuid/setgid\00", align 1
@findrcfile.rcfilename_tilde_exp = internal global [4097 x i8] zeroinitializer, align 16
@.str.51 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"%s: source: tilde expansion failed\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"%s: source: tilde expansion failed for user %s\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"%s: source: illegal tilde expression.\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"SCREENRC\00", align 1
@home = external global i8*, align 8
@.str.57 = private unnamed_addr constant [19 x i8] c"Rc: home too large\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"%s/.screenrc\00", align 1

; Function Attrs: nounwind uwtable
define i32 @StartRc(i8* %rcfilename, i32 %nopanic) #0 {
entry:
  %retval = alloca i32, align 4
  %rcfilename.addr = alloca i8*, align 8
  %nopanic.addr = alloca i32, align 4
  %argc = alloca i32, align 4
  %len = alloca i32, align 4
  %p = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %buf = alloca [2048 x i8], align 16
  %args = alloca [64 x i8*], align 16
  %argl = alloca [64 x i32], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %oldrc_name = alloca i8*, align 8
  %rc_nonnull = alloca i8*, align 8
  store i8* %rcfilename, i8** %rcfilename.addr, align 8
  store i32 %nopanic, i32* %nopanic.addr, align 4
  %0 = load i8*, i8** @rc_name, align 8
  store i8* %0, i8** %oldrc_name, align 8
  %1 = load i8*, i8** @extra_incap, align 8
  %call = call i8* @CatExtra(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %1)
  store i8* %call, i8** @extra_incap, align 8
  %2 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_termname = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 13
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname, i32 0, i32 0
  %call1 = call i32 @strncmp(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i64 2) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_termname3 = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 13
  %arraydecay4 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname3, i32 0, i32 0
  %call5 = call i32 @strncmp(i8* %arraydecay4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 5) #7
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load i8*, i8** @extra_incap, align 8
  %call7 = call i8* @CatExtra(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.4, i32 0, i32 0), i8* %5)
  store i8* %call7, i8** @extra_incap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %6 = load i8*, i8** %rcfilename.addr, align 8
  %call8 = call i8* @findrcfile(i8* %6)
  store i8* %call8, i8** @rc_name, align 8
  %7 = load i8*, i8** @rc_name, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end
  %8 = load i8*, i8** @rc_name, align 8
  %call10 = call %struct._IO_FILE* @secfopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %fp, align 8
  %cmp11 = icmp eq %struct._IO_FILE* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.33

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end
  %9 = load i8*, i8** @rc_name, align 8
  %tobool13 = icmp ne i8* %9, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %10 = load i8*, i8** @rc_name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %11 = load i8*, i8** %rcfilename.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ %11, %cond.false ]
  store i8* %cond, i8** %rc_nonnull, align 8
  %12 = load i32, i32* @rc_recursion, align 4
  %tobool14 = icmp ne i32 %12, 0
  br i1 %tobool14, label %if.end.24, label %land.lhs.true.15

land.lhs.true.15:                                 ; preds = %cond.end
  %13 = load i8*, i8** @RcFileName, align 8
  %tobool16 = icmp ne i8* %13, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.24

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %14 = load i8*, i8** @RcFileName, align 8
  %15 = load i8*, i8** %rc_nonnull, align 8
  %call18 = call i32 @strcmp(i8* %14, i8* %15) #7
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.24, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.17
  br label %do.body

do.body:                                          ; preds = %if.then.20
  br label %do.end

do.end:                                           ; preds = %do.body
  %16 = load i32, i32* %nopanic.addr, align 4
  %tobool21 = icmp ne i32 %16, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %do.end
  %17 = load i8*, i8** %rc_nonnull, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* %17) #8
  unreachable

if.end.23:                                        ; preds = %do.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true.17, %land.lhs.true.15, %cond.end
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.body.25
  %18 = load i8*, i8** @rc_name, align 8
  %tobool27 = icmp ne i8* %18, null
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %do.end.26
  %19 = load i8*, i8** @rc_name, align 8
  %cmp29 = icmp eq i8* %19, null
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then.28
  call void @abort() #9
  unreachable

if.else:                                          ; preds = %if.then.28
  %20 = load i8*, i8** @rc_name, align 8
  call void @free(i8* %20) #10
  br label %if.end.31

if.end.31:                                        ; preds = %if.else
  store i8* null, i8** @rc_name, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %do.end.26
  %21 = load i8*, i8** %oldrc_name, align 8
  store i8* %21, i8** @rc_name, align 8
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false.9
  br label %while.cond

while.cond:                                       ; preds = %if.end.167, %if.then.143, %if.then.100, %if.then.95, %if.then.81, %if.then.76, %if.then.64, %if.then.53, %if.then.47, %if.end.33
  %arraydecay34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call35 = call i8* @fgets(i8* %arraydecay34, i32 2048, %struct._IO_FILE* %22)
  %cmp36 = icmp ne i8* %call35, null
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call38 = call i8* @rindex(i8* %arraydecay37, i32 10) #7
  store i8* %call38, i8** %p, align 8
  %cmp39 = icmp ne i8* %call38, null
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.body
  %23 = load i8*, i8** %p, align 8
  store i8 0, i8* %23, align 1
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %while.body
  %arraydecay42 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %arraydecay43 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  %arraydecay44 = getelementptr inbounds [64 x i32], [64 x i32]* %argl, i32 0, i32 0
  %call45 = call i32 @Parse(i8* %arraydecay42, i32 2048, i8** %arraydecay43, i32* %arraydecay44)
  store i32 %call45, i32* %argc, align 4
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.41
  br label %while.cond

if.end.48:                                        ; preds = %if.end.41
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 0
  %24 = load i8*, i8** %arrayidx, align 8
  %call49 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #7
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.70

if.then.51:                                       ; preds = %if.end.48
  %25 = load %struct.display*, %struct.display** @display, align 8
  %tobool52 = icmp ne %struct.display* %25, null
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.then.51
  br label %while.cond

if.end.54:                                        ; preds = %if.then.51
  %26 = load i32, i32* %argc, align 4
  %cmp55 = icmp slt i32 %26, 2
  br i1 %cmp55, label %if.then.64, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.end.54
  %27 = load i32, i32* %argc, align 4
  %cmp57 = icmp eq i32 %27, 3
  br i1 %cmp57, label %land.lhs.true.58, label %lor.lhs.false.62

land.lhs.true.58:                                 ; preds = %lor.lhs.false.56
  %arrayidx59 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 1
  %28 = load i8*, i8** %arrayidx59, align 8
  %call60 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #7
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.64, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %land.lhs.true.58, %lor.lhs.false.56
  %29 = load i32, i32* %argc, align 4
  %cmp63 = icmp sgt i32 %29, 3
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false.62, %land.lhs.true.58, %if.end.54
  %30 = load i8*, i8** @rc_name, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i8* %30)
  br label %while.cond

if.end.65:                                        ; preds = %lor.lhs.false.62
  %31 = load i32, i32* %argc, align 4
  %sub = sub nsw i32 %31, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx66 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 %idxprom
  %32 = load i8*, i8** %arrayidx66, align 8
  call void @AddStr(i8* %32)
  %33 = load i32, i32* %argc, align 4
  %cmp67 = icmp ne i32 %33, 3
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.65
  call void @AddStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  call void @Flush(i32 0)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.65
  br label %if.end.167

if.else.70:                                       ; preds = %if.end.48
  %arrayidx71 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 0
  %34 = load i8*, i8** %arrayidx71, align 8
  %call72 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #7
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then.74, label %if.else.85

if.then.74:                                       ; preds = %if.else.70
  %35 = load %struct.display*, %struct.display** @display, align 8
  %tobool75 = icmp ne %struct.display* %35, null
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %if.then.74
  br label %while.cond

if.end.77:                                        ; preds = %if.then.74
  br label %do.body.78

do.body.78:                                       ; preds = %if.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.body.78
  %36 = load i32, i32* %argc, align 4
  %cmp80 = icmp ne i32 %36, 2
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %do.end.79
  %37 = load i8*, i8** @rc_name, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0), i8* %37)
  br label %while.cond

if.end.82:                                        ; preds = %do.end.79
  %arrayidx83 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 1
  %38 = load i8*, i8** %arrayidx83, align 8
  %call84 = call i32 @atoi(i8* %38) #7
  %mul = mul nsw i32 1000, %call84
  call void @DisplaySleep1000(i32 %mul, i32 1)
  br label %if.end.166

if.else.85:                                       ; preds = %if.else.70
  %arrayidx86 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 0
  %39 = load i8*, i8** %arrayidx86, align 8
  %call87 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #7
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %lor.lhs.false.89, label %if.then.93

lor.lhs.false.89:                                 ; preds = %if.else.85
  %arrayidx90 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 0
  %40 = load i8*, i8** %arrayidx90, align 8
  %call91 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #7
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.else.153, label %if.then.93

if.then.93:                                       ; preds = %lor.lhs.false.89, %if.else.85
  %41 = load %struct.display*, %struct.display** @display, align 8
  %tobool94 = icmp ne %struct.display* %41, null
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %if.then.93
  br label %while.cond

if.end.96:                                        ; preds = %if.then.93
  %42 = load i32, i32* %argc, align 4
  %cmp97 = icmp slt i32 %42, 3
  br i1 %cmp97, label %if.then.100, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.end.96
  %43 = load i32, i32* %argc, align 4
  %cmp99 = icmp sgt i32 %43, 4
  br i1 %cmp99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %lor.lhs.false.98, %if.end.96
  %44 = load i8*, i8** @rc_name, align 8
  %arrayidx101 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 0
  %45 = load i8*, i8** %arrayidx101, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), i8* %44, i8* %45)
  br label %while.cond

if.end.102:                                       ; preds = %lor.lhs.false.98
  %arrayidx103 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 1
  %46 = load i8*, i8** %arrayidx103, align 8
  store i8* %46, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.102
  %47 = load i8*, i8** %p, align 8
  %tobool104 = icmp ne i8* %47, null
  br i1 %tobool104, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %48 = load i8*, i8** %p, align 8
  %49 = load i8, i8* %48, align 1
  %conv = sext i8 %49 to i32
  %tobool105 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %50 = phi i1 [ false, %for.cond ], [ %tobool105, %land.rhs ]
  br i1 %50, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %51 = load i8*, i8** %p, align 8
  %call106 = call i8* @index(i8* %51, i32 124) #7
  store i8* %call106, i8** %cp, align 8
  %cmp107 = icmp ne i8* %call106, null
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %for.body
  %52 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  store i8 0, i8* %52, align 1
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %for.body
  %53 = load i8*, i8** %p, align 8
  %call111 = call i64 @strlen(i8* %53) #7
  %conv112 = trunc i64 %call111 to i32
  store i32 %conv112, i32* %len, align 4
  %54 = load i32, i32* %len, align 4
  %sub113 = sub nsw i32 %54, 1
  %idxprom114 = sext i32 %sub113 to i64
  %55 = load i8*, i8** %p, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %55, i64 %idxprom114
  %56 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %56 to i32
  %cmp117 = icmp eq i32 %conv116, 42
  br i1 %cmp117, label %if.then.119, label %if.else.131

if.then.119:                                      ; preds = %if.end.110
  %57 = load i32, i32* %len, align 4
  %sub120 = sub nsw i32 %57, 1
  %tobool121 = icmp ne i32 %sub120, 0
  br i1 %tobool121, label %lor.lhs.false.122, label %if.then.129

lor.lhs.false.122:                                ; preds = %if.then.119
  %58 = load i8*, i8** %p, align 8
  %59 = load %struct.display*, %struct.display** @display, align 8
  %d_termname123 = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 13
  %arraydecay124 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname123, i32 0, i32 0
  %60 = load i32, i32* %len, align 4
  %sub125 = sub nsw i32 %60, 1
  %conv126 = sext i32 %sub125 to i64
  %call127 = call i32 @strncmp(i8* %58, i8* %arraydecay124, i64 %conv126) #7
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.end.130, label %if.then.129

if.then.129:                                      ; preds = %lor.lhs.false.122, %if.then.119
  br label %for.end

if.end.130:                                       ; preds = %lor.lhs.false.122
  br label %if.end.138

if.else.131:                                      ; preds = %if.end.110
  %61 = load i8*, i8** %p, align 8
  %62 = load %struct.display*, %struct.display** @display, align 8
  %d_termname132 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 13
  %arraydecay133 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname132, i32 0, i32 0
  %call134 = call i32 @strcmp(i8* %61, i8* %arraydecay133) #7
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %if.else.131
  br label %for.end

if.end.137:                                       ; preds = %if.else.131
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.130
  br label %for.inc

for.inc:                                          ; preds = %if.end.138
  %63 = load i8*, i8** %cp, align 8
  store i8* %63, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.136, %if.then.129, %land.end
  %64 = load i8*, i8** %p, align 8
  %tobool139 = icmp ne i8* %64, null
  br i1 %tobool139, label %land.lhs.true.140, label %if.then.143

land.lhs.true.140:                                ; preds = %for.end
  %65 = load i8*, i8** %p, align 8
  %66 = load i8, i8* %65, align 1
  %conv141 = sext i8 %66 to i32
  %tobool142 = icmp ne i32 %conv141, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %land.lhs.true.140, %for.end
  br label %while.cond

if.end.144:                                       ; preds = %land.lhs.true.140
  %arrayidx145 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 2
  %67 = load i8*, i8** %arrayidx145, align 8
  %68 = load i8*, i8** @extra_incap, align 8
  %call146 = call i8* @CatExtra(i8* %67, i8* %68)
  store i8* %call146, i8** @extra_incap, align 8
  %69 = load i32, i32* %argc, align 4
  %cmp147 = icmp eq i32 %69, 4
  br i1 %cmp147, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.end.144
  %arrayidx150 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 3
  %70 = load i8*, i8** %arrayidx150, align 8
  %71 = load i8*, i8** @extra_outcap, align 8
  %call151 = call i8* @CatExtra(i8* %70, i8* %71)
  store i8* %call151, i8** @extra_outcap, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.end.144
  br label %if.end.165

if.else.153:                                      ; preds = %lor.lhs.false.89
  %arrayidx154 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 0
  %72 = load i8*, i8** %arrayidx154, align 8
  %call155 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #7
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.end.164, label %if.then.157

if.then.157:                                      ; preds = %if.else.153
  %73 = load i32, i32* @rc_recursion, align 4
  %cmp158 = icmp sle i32 %73, 10
  br i1 %cmp158, label %if.then.160, label %if.end.163

if.then.160:                                      ; preds = %if.then.157
  %74 = load i32, i32* @rc_recursion, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* @rc_recursion, align 4
  %arrayidx161 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i64 1
  %75 = load i8*, i8** %arrayidx161, align 8
  %call162 = call i32 @StartRc(i8* %75, i32 0)
  %76 = load i32, i32* @rc_recursion, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, i32* @rc_recursion, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.160, %if.then.157
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.else.153
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.end.152
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.82
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.69
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call168 = call i32 @fclose(%struct._IO_FILE* %77)
  %78 = load i8*, i8** @rc_name, align 8
  %cmp169 = icmp eq i8* %78, null
  br i1 %cmp169, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %while.end
  call void @abort() #9
  unreachable

if.else.172:                                      ; preds = %while.end
  %79 = load i8*, i8** @rc_name, align 8
  call void @free(i8* %79) #10
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.172
  store i8* null, i8** @rc_name, align 8
  %80 = load i8*, i8** %oldrc_name, align 8
  store i8* %80, i8** @rc_name, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.173, %if.end.32
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal i8* @CatExtra(i8* %str1, i8* %str2) #0 {
entry:
  %retval = alloca i8*, align 8
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %add_colon = alloca i32, align 4
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %1 = load i32, i32* %len1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %str2.addr, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %len1, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %4 = load i8*, i8** %str1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 58
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, i32* %add_colon, align 4
  %6 = load i8*, i8** %str2.addr, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %7 = load i8*, i8** %str2.addr, align 8
  %call6 = call i64 @strlen(i8* %7) #7
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, i32* %len2, align 4
  %8 = load i8*, i8** %str2.addr, align 8
  %9 = load i32, i32* %len1, align 4
  %10 = load i32, i32* %len2, align 4
  %add = add i32 %9, %10
  %11 = load i32, i32* %add_colon, align 4
  %add8 = add i32 %add, %11
  %add9 = add i32 %add8, 1
  %conv10 = zext i32 %add9 to i64
  %call11 = call i8* @realloc(i8* %8, i64 %conv10) #10
  store i8* %call11, i8** %cp, align 8
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.5
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0)) #8
  unreachable

if.end.15:                                        ; preds = %if.then.5
  %12 = load i8*, i8** %cp, align 8
  %13 = load i8*, i8** %cp, align 8
  %14 = load i32, i32* %len1, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %15 = load i32, i32* %add_colon, align 4
  %idx.ext16 = sext i32 %15 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext16
  %16 = load i32, i32* %len2, align 4
  %add18 = add nsw i32 %16, 1
  %conv19 = sext i32 %add18 to i64
  call void @bcopy(i8* %12, i8* %add.ptr17, i64 %conv19) #10
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %len1, align 4
  %18 = load i32, i32* %add_colon, align 4
  %add20 = add i32 %17, %18
  %add21 = add i32 %add20, 1
  %conv22 = zext i32 %add21 to i64
  %call23 = call noalias i8* @malloc(i64 %conv22) #10
  store i8* %call23, i8** %cp, align 8
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0)) #8
  unreachable

if.end.27:                                        ; preds = %if.else
  %19 = load i32, i32* %len1, align 4
  %20 = load i32, i32* %add_colon, align 4
  %add28 = add nsw i32 %19, %20
  %idxprom29 = sext i32 %add28 to i64
  %21 = load i8*, i8** %cp, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %21, i64 %idxprom29
  store i8 0, i8* %arrayidx30, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.27, %if.end.15
  %22 = load i8*, i8** %str1.addr, align 8
  %23 = load i8*, i8** %cp, align 8
  %24 = load i32, i32* %len1, align 4
  %conv32 = sext i32 %24 to i64
  call void @bcopy(i8* %22, i8* %23, i64 %conv32) #10
  %25 = load i32, i32* %add_colon, align 4
  %tobool33 = icmp ne i32 %25, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.31
  %26 = load i32, i32* %len1, align 4
  %idxprom35 = sext i32 %26 to i64
  %27 = load i8*, i8** %cp, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %27, i64 %idxprom35
  store i8 58, i8* %arrayidx36, align 1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.31
  %28 = load i8*, i8** %cp, align 8
  store i8* %28, i8** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @findrcfile(i8* %rcfile) #0 {
entry:
  %retval = alloca i8*, align 8
  %rcfile.addr = alloca i8*, align 8
  %buf = alloca [256 x i8], align 16
  %p = alloca i8*, align 8
  %slash_position = alloca i8*, align 8
  %home = alloca i8*, align 8
  %p12 = alloca %struct.passwd*, align 8
  %rcend = alloca i8*, align 8
  store i8* %rcfile, i8** %rcfile.addr, align 8
  %0 = load i8*, i8** %rcfile.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %rcfile.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 126
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %rcfile.addr, align 8
  %call = call i8* @strchr(i8* %3, i32 47) #7
  store i8* %call, i8** %slash_position, align 8
  %4 = load i8*, i8** %slash_position, align 8
  %5 = load i8*, i8** %rcfile.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %cmp2 = icmp eq i8* %4, %add.ptr
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %call5 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0)) #10
  store i8* %call5, i8** %home, align 8
  %6 = load i8*, i8** %home, align 8
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  %7 = load i8*, i8** @rc_name, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i32 0, i32 0), i8* %7)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  %8 = load i8*, i8** %home, align 8
  %9 = load i8*, i8** %rcfile.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %9, i64 2
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([4097 x i8], [4097 x i8]* @findrcfile.rcfilename_tilde_exp, i32 0, i32 0), i64 4096, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* %8, i8* %add.ptr8) #10
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %10 = load i8*, i8** %slash_position, align 8
  %tobool10 = icmp ne i8* %10, null
  br i1 %tobool10, label %if.then.11, label %if.else.21

if.then.11:                                       ; preds = %if.else
  %11 = load i8*, i8** %slash_position, align 8
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %rcfile.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %12, i64 1
  %call14 = call %struct.passwd* @getpwnam(i8* %add.ptr13)
  store %struct.passwd* %call14, %struct.passwd** %p12, align 8
  %13 = load %struct.passwd*, %struct.passwd** %p12, align 8
  %tobool15 = icmp ne %struct.passwd* %13, null
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %if.then.11
  %14 = load i8*, i8** @rc_name, align 8
  %15 = load i8*, i8** %rcfile.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %15, i64 1
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i32 0, i32 0), i8* %14, i8* %add.ptr17)
  store i8* null, i8** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.11
  %16 = load %struct.passwd*, %struct.passwd** %p12, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 5
  %17 = load i8*, i8** %pw_dir, align 8
  %18 = load i8*, i8** %slash_position, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %18, i64 1
  %call20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([4097 x i8], [4097 x i8]* @findrcfile.rcfilename_tilde_exp, i32 0, i32 0), i64 4096, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* %17, i8* %add.ptr19) #10
  br label %if.end.22

if.else.21:                                       ; preds = %if.else
  %19 = load i8*, i8** @rc_name, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i32 0, i32 0), i8* %19)
  store i8* null, i8** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  store i8* getelementptr inbounds ([4097 x i8], [4097 x i8]* @findrcfile.rcfilename_tilde_exp, i32 0, i32 0), i8** %rcfile.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true, %entry
  %20 = load i8*, i8** %rcfile.addr, align 8
  %tobool25 = icmp ne i8* %20, null
  br i1 %tobool25, label %if.then.26, label %if.end.61

if.then.26:                                       ; preds = %if.end.24
  %21 = load i8*, i8** @rc_name, align 8
  %call27 = call i8* @rindex(i8* %21, i32 47) #7
  store i8* %call27, i8** %rcend, align 8
  %22 = load i8*, i8** %rcfile.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv28 = sext i8 %23 to i32
  %cmp29 = icmp ne i32 %conv28, 47
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.59

land.lhs.true.31:                                 ; preds = %if.then.26
  %24 = load i8*, i8** %rcend, align 8
  %tobool32 = icmp ne i8* %24, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.59

land.lhs.true.33:                                 ; preds = %land.lhs.true.31
  %25 = load i8*, i8** %rcend, align 8
  %26 = load i8*, i8** @rc_name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = load i8*, i8** %rcfile.addr, align 8
  %call34 = call i64 @strlen(i8* %27) #7
  %add = add i64 %sub.ptr.sub, %call34
  %add35 = add i64 %add, 2
  %cmp36 = icmp ult i64 %add35, 256
  br i1 %cmp36, label %if.then.38, label %if.end.59

if.then.38:                                       ; preds = %land.lhs.true.33
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %28 = load i8*, i8** @rc_name, align 8
  %29 = load i8*, i8** %rcend, align 8
  %30 = load i8*, i8** @rc_name, align 8
  %sub.ptr.lhs.cast39 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %30 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %add42 = add nsw i64 %sub.ptr.sub41, 1
  %call43 = call i8* @strncpy(i8* %arraydecay, i8* %28, i64 %add42) #10
  %arraydecay44 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %31 = load i8*, i8** %rcend, align 8
  %32 = load i8*, i8** @rc_name, align 8
  %sub.ptr.lhs.cast45 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast46 = ptrtoint i8* %32 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %add.ptr48 = getelementptr inbounds i8, i8* %arraydecay44, i64 %sub.ptr.sub47
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr48, i64 1
  %33 = load i8*, i8** %rcfile.addr, align 8
  %call50 = call i8* @strcpy(i8* %add.ptr49, i8* %33) #10
  %arraydecay51 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call52 = call i32 @access(i8* %arraydecay51, i32 4) #10
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.then.38
  %arraydecay56 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call57 = call i8* @SaveStr(i8* %arraydecay56)
  store i8* %call57, i8** %retval
  br label %return

if.end.58:                                        ; preds = %if.then.38
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true.33, %land.lhs.true.31, %if.then.26
  br label %do.body

do.body:                                          ; preds = %if.end.59
  br label %do.end

do.end:                                           ; preds = %do.body
  %34 = load i8*, i8** %rcfile.addr, align 8
  %call60 = call i8* @SaveStr(i8* %34)
  store i8* %call60, i8** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.24
  br label %do.body.62

do.body.62:                                       ; preds = %if.end.61
  br label %do.end.63

do.end.63:                                        ; preds = %do.body.62
  %call64 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0)) #10
  store i8* %call64, i8** %p, align 8
  %cmp65 = icmp ne i8* %call64, null
  br i1 %cmp65, label %land.lhs.true.67, label %if.else.75

land.lhs.true.67:                                 ; preds = %do.end.63
  %35 = load i8*, i8** %p, align 8
  %36 = load i8, i8* %35, align 1
  %conv68 = sext i8 %36 to i32
  %cmp69 = icmp ne i32 %conv68, 0
  br i1 %cmp69, label %if.then.71, label %if.else.75

if.then.71:                                       ; preds = %land.lhs.true.67
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  br label %do.end.73

do.end.73:                                        ; preds = %do.body.72
  %37 = load i8*, i8** %p, align 8
  %call74 = call i8* @SaveStr(i8* %37)
  store i8* %call74, i8** %retval
  br label %return

if.else.75:                                       ; preds = %land.lhs.true.67, %do.end.63
  br label %do.body.76

do.body.76:                                       ; preds = %if.else.75
  br label %do.end.77

do.end.77:                                        ; preds = %do.body.76
  %38 = load i8*, i8** @home, align 8
  %call78 = call i64 @strlen(i8* %38) #7
  %cmp79 = icmp ugt i64 %call78, 244
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %do.end.77
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0)) #8
  unreachable

if.end.82:                                        ; preds = %do.end.77
  %arraydecay83 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %39 = load i8*, i8** @home, align 8
  %call84 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i8* %39) #10
  %arraydecay85 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call86 = call i8* @SaveStr(i8* %arraydecay85)
  store i8* %call86, i8** %retval
  br label %return

return:                                           ; preds = %if.end.82, %do.end.73, %do.end, %if.then.55, %if.else.21, %if.then.16, %if.then.7
  %40 = load i8*, i8** %retval
  ret i8* %40
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @secfopen(i8* %name, i8* %mode) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %fi = alloca %struct._IO_FILE*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %0)
  %1 = load i32, i32* @real_gid, align 4
  call void @xsetegid(i32 %1)
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %mode.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %2, i8* %3)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fi, align 8
  %4 = load i32, i32* @eff_uid, align 4
  call void @xseteuid(i32 %4)
  %5 = load i32, i32* @eff_gid, align 4
  call void @xsetegid(i32 %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fi, align 8
  ret %struct._IO_FILE* %6
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noreturn
declare void @Panic(i32, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

; Function Attrs: nounwind readonly
declare i8* @rindex(i8*, i32) #1

declare i32 @Parse(i8*, i32, i8**, i32*) #5

declare void @Msg(i32, i8*, ...) #5

declare void @AddStr(i8*) #5

declare void @Flush(i32) #5

declare void @DisplaySleep1000(i32, i32) #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: nounwind uwtable
define void @FinishRc(i8* %rcfilename) #0 {
entry:
  %rcfilename.addr = alloca i8*, align 8
  %buf = alloca [2048 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %oldrc_name = alloca i8*, align 8
  %rc_nonnull = alloca i8*, align 8
  store i8* %rcfilename, i8** %rcfilename.addr, align 8
  %0 = load i8*, i8** @rc_name, align 8
  store i8* %0, i8** %oldrc_name, align 8
  %1 = load i8*, i8** %rcfilename.addr, align 8
  %call = call i8* @findrcfile(i8* %1)
  store i8* %call, i8** @rc_name, align 8
  %2 = load i8*, i8** @rc_name, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** @rc_name, align 8
  %call1 = call %struct._IO_FILE* @secfopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then, label %if.end.20

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** @rc_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load i8*, i8** @rc_name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load i8*, i8** %rcfilename.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ %6, %cond.false ]
  store i8* %cond, i8** %rc_nonnull, align 8
  %7 = load i32, i32* @rc_recursion, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %cond.end
  %call5 = call i32* @__errno_location() #11
  %8 = load i32, i32* %call5, align 4
  %9 = load i8*, i8** %oldrc_name, align 8
  %10 = load i8*, i8** %rc_nonnull, align 8
  call void (i32, i8*, ...) @Msg(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* %9, i8* %10)
  br label %if.end.10

if.else:                                          ; preds = %cond.end
  %11 = load i8*, i8** @RcFileName, align 8
  %tobool6 = icmp ne i8* %11, null
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %12 = load i8*, i8** @RcFileName, align 8
  %13 = load i8*, i8** %rc_nonnull, align 8
  %call7 = call i32 @strcmp(i8* %12, i8* %13) #7
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %do.body
  %14 = load i8*, i8** %rc_nonnull, align 8
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* %14) #8
  unreachable

if.end:                                           ; preds = %land.lhs.true, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.4
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  %15 = load i8*, i8** @rc_name, align 8
  %tobool13 = icmp ne i8* %15, null
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %do.end.12
  %16 = load i8*, i8** @rc_name, align 8
  %cmp15 = icmp eq i8* %16, null
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.then.14
  call void @abort() #9
  unreachable

if.else.17:                                       ; preds = %if.then.14
  %17 = load i8*, i8** @rc_name, align 8
  call void @free(i8* %17) #10
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17
  store i8* null, i8** @rc_name, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %do.end.12
  %18 = load i8*, i8** %oldrc_name, align 8
  store i8* %18, i8** @rc_name, align 8
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.22
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call23 = call i8* @fgets(i8* %arraydecay, i32 2048, %struct._IO_FILE* %19)
  %cmp24 = icmp ne i8* %call23, null
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void @RcLine(i8* %arraydecay25, i32 2048)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i32 @fclose(%struct._IO_FILE* %20)
  %21 = load i8*, i8** @rc_name, align 8
  %cmp27 = icmp eq i8* %21, null
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %while.end
  call void @abort() #9
  unreachable

if.else.29:                                       ; preds = %while.end
  %22 = load i8*, i8** @rc_name, align 8
  call void @free(i8* %22) #10
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29
  store i8* null, i8** @rc_name, align 8
  %23 = load i8*, i8** %oldrc_name, align 8
  store i8* %23, i8** @rc_name, align 8
  br label %return

return:                                           ; preds = %if.end.30, %if.end.19
  ret void
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define void @RcLine(i8* %ubuf, i32 %ubufl) #0 {
entry:
  %ubuf.addr = alloca i8*, align 8
  %ubufl.addr = alloca i32, align 4
  %args = alloca [64 x i8*], align 16
  %argl = alloca [64 x i32], align 16
  store i8* %ubuf, i8** %ubuf.addr, align 8
  store i32 %ubufl, i32* %ubufl.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 10
  %2 = load %struct.win*, %struct.win** %d_fore, align 8
  store %struct.win* %2, %struct.win** @fore, align 8
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 4
  %4 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 9
  %5 = load %struct.layer*, %struct.layer** %c_layer, align 8
  store %struct.layer* %5, %struct.layer** @flayer, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.win*, %struct.win** @fore, align 8
  %tobool1 = icmp ne %struct.win* %6, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %7 = load %struct.win*, %struct.win** @fore, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 4
  %8 = load %struct.layer*, %struct.layer** %w_savelayer, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.layer* [ %8, %cond.true ], [ null, %cond.false ]
  store %struct.layer* %cond, %struct.layer** @flayer, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %9 = load i8*, i8** %ubuf.addr, align 8
  %10 = load i32, i32* %ubufl.addr, align 4
  %arraydecay = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [64 x i32], [64 x i32]* %argl, i32 0, i32 0
  %call = call i32 @Parse(i8* %9, i32 %10, i8** %arraydecay, i32* %arraydecay2)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.display*, %struct.display** @display, align 8
  %tobool5 = icmp ne %struct.display* %11, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %12 = load %struct.acluser*, %struct.acluser** @users, align 8
  store %struct.acluser* %12, %struct.acluser** @EffectiveAclUser, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %if.end.4
  %arraydecay8 = getelementptr inbounds [64 x i8*], [64 x i8*]* %args, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [64 x i32], [64 x i32]* %argl, i32 0, i32 0
  call void @DoCommand(i8** %arraydecay8, i32* %arraydecay9)
  store %struct.acluser* null, %struct.acluser** @EffectiveAclUser, align 8
  br label %return

return:                                           ; preds = %if.end.7, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_source(i8* %rcfilename) #0 {
entry:
  %rcfilename.addr = alloca i8*, align 8
  store i8* %rcfilename, i8** %rcfilename.addr, align 8
  %0 = load i32, i32* @rc_recursion, align 4
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @rc_name, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i8* %1)
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @rc_recursion, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @rc_recursion, align 4
  %3 = load i8*, i8** %rcfilename.addr, align 8
  call void @FinishRc(i8* %3)
  %4 = load i32, i32* @rc_recursion, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @rc_recursion, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @DoCommand(i8**, i32*) #5

; Function Attrs: nounwind uwtable
define void @WriteFile(%struct.acluser* %user, i8* %fn, i32 %dump) #0 {
entry:
  %user.addr = alloca %struct.acluser*, align 8
  %fn.addr = alloca i8*, align 8
  %dump.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %fnbuf = alloca [1024 x i8], align 16
  %mode = alloca i8*, align 8
  %public = alloca i32, align 4
  %stb = alloca %struct.stat, align 8
  %stb2 = alloca %struct.stat, align 8
  %fd = alloca i32, align 4
  %exists = alloca i32, align 4
  store %struct.acluser* %user, %struct.acluser** %user.addr, align 8
  store i8* %fn, i8** %fn.addr, align 8
  store i32 %dump, i32* %dump.addr, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8** %mode, align 8
  store i32 0, i32* %public, align 4
  store i32 0, i32* %exists, align 4
  %0 = load i32, i32* %dump.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 3, label %sw.bb.9
    i32 2, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %fn.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %sw.bb
  %2 = load i8*, i8** @SockName, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([0 x i8]* @SockPath to i64)
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %3, 1015
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %fnbuf, i32 0, i32 0
  %4 = load i32, i32* %i, align 4
  %conv4 = sext i32 %4 to i64
  %call = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @SockPath, i32 0, i32 0), i64 %conv4) #10
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fnbuf, i32 0, i32 0
  %5 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay5, i64 %idx.ext
  %call6 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #10
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fnbuf, i32 0, i32 0
  store i8* %arraydecay7, i8** %fn.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry, %entry
  %6 = load i8*, i8** %fn.addr, align 8
  %cmp10 = icmp eq i8* %6, null
  br i1 %cmp10, label %if.then.12, label %if.end.31

if.then.12:                                       ; preds = %sw.bb.9
  %7 = load %struct.win*, %struct.win** @fore, align 8
  %cmp13 = icmp eq %struct.win* %7, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  br label %if.end.274

if.end.16:                                        ; preds = %if.then.12
  %8 = load i8*, i8** @hardcopydir, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.16
  %9 = load i8*, i8** @hardcopydir, align 8
  %10 = load i8, i8* %9, align 1
  %conv17 = sext i8 %10 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %11 = load i8*, i8** @hardcopydir, align 8
  %call20 = call i64 @strlen(i8* %11) #7
  %cmp21 = icmp ult i64 %call20, 1003
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.19
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fnbuf, i32 0, i32 0
  %12 = load i8*, i8** @hardcopydir, align 8
  %13 = load %struct.win*, %struct.win** @fore, align 8
  %w_number = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 9
  %14 = load i32, i32* %w_number, align 4
  %call25 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* %12, i32 %14) #10
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true.19, %land.lhs.true, %if.end.16
  %arraydecay26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fnbuf, i32 0, i32 0
  %15 = load %struct.win*, %struct.win** @fore, align 8
  %w_number27 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 9
  %16 = load i32, i32* %w_number27, align 4
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 %16) #10
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.23
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fnbuf, i32 0, i32 0
  store i8* %arraydecay30, i8** %fn.addr, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %sw.bb.9
  %17 = load i32, i32* @hardcopy_append, align 4
  %tobool32 = icmp ne i32 %17, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.37

land.lhs.true.33:                                 ; preds = %if.end.31
  %18 = load i8*, i8** %fn.addr, align 8
  %call34 = call i32 @access(i8* %18, i32 2) #10
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.33
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8** %mode, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %land.lhs.true.33, %if.end.31
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %19 = load i8*, i8** %fn.addr, align 8
  %cmp39 = icmp eq i8* %19, null
  br i1 %cmp39, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %sw.bb.38
  %arraydecay42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fnbuf, i32 0, i32 0
  %20 = load i8*, i8** @BufferFile, align 8
  %call43 = call i8* @strncpy(i8* %arraydecay42, i8* %20, i64 1023) #10
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %fnbuf, i32 0, i64 1023
  store i8 0, i8* %arrayidx, align 1
  %arraydecay44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fnbuf, i32 0, i32 0
  store i8* %arraydecay44, i8** %fn.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %sw.bb.38
  %21 = load i8*, i8** %fn.addr, align 8
  %call46 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0)) #7
  %tobool47 = icmp ne i32 %call46, 0
  %lnot = xor i1 %tobool47, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %public, align 4
  %22 = load i8*, i8** %fn.addr, align 8
  %call48 = call i32 @lstat(i8* %22, %struct.stat* %stb) #10
  %tobool49 = icmp ne i32 %call48, 0
  %lnot50 = xor i1 %tobool49, true
  %lnot.ext51 = zext i1 %lnot50 to i32
  store i32 %lnot.ext51, i32* %exists, align 4
  %23 = load i32, i32* %public, align 4
  %tobool52 = icmp ne i32 %23, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.61

land.lhs.true.53:                                 ; preds = %if.end.45
  %24 = load i32, i32* %exists, align 4
  %tobool54 = icmp ne i32 %24, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.61

land.lhs.true.55:                                 ; preds = %land.lhs.true.53
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %stb, i32 0, i32 3
  %25 = load i32, i32* %st_mode, align 4
  %and = and i32 %25, 61440
  %cmp56 = icmp eq i32 %and, 40960
  br i1 %cmp56, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.55
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %stb, i32 0, i32 2
  %26 = load i64, i64* %st_nlink, align 8
  %cmp58 = icmp ugt i64 %26, 1
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false, %land.lhs.true.55
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.274

if.end.61:                                        ; preds = %lor.lhs.false, %land.lhs.true.53, %if.end.45
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.61, %if.end.37, %if.end.8
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.body
  %call62 = call i32 @UserContext()
  %cmp63 = icmp sgt i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.255

if.then.65:                                       ; preds = %do.end
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.body.66
  %27 = load i32, i32* %dump.addr, align 4
  %cmp68 = icmp eq i32 %27, 2
  br i1 %cmp68, label %land.lhs.true.70, label %if.else.102

land.lhs.true.70:                                 ; preds = %do.end.67
  %28 = load i32, i32* %public, align 4
  %tobool71 = icmp ne i32 %28, 0
  br i1 %tobool71, label %if.then.72, label %if.else.102

if.then.72:                                       ; preds = %land.lhs.true.70
  %29 = load i32, i32* %exists, align 4
  %tobool73 = icmp ne i32 %29, 0
  br i1 %tobool73, label %if.then.74, label %if.else.96

if.then.74:                                       ; preds = %if.then.72
  %30 = load i8*, i8** %fn.addr, align 8
  %call75 = call i32 (i8*, i32, ...) @open(i8* %30, i32 1, i32 438)
  store i32 %call75, i32* %fd, align 4
  %cmp76 = icmp sge i32 %call75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.95

if.then.78:                                       ; preds = %if.then.74
  %31 = load i32, i32* %fd, align 4
  %call79 = call i32 @fstat(i32 %31, %struct.stat* %stb2) #10
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.else.92

land.lhs.true.82:                                 ; preds = %if.then.78
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %stb, i32 0, i32 0
  %32 = load i64, i64* %st_dev, align 8
  %st_dev83 = getelementptr inbounds %struct.stat, %struct.stat* %stb2, i32 0, i32 0
  %33 = load i64, i64* %st_dev83, align 8
  %cmp84 = icmp eq i64 %32, %33
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.92

land.lhs.true.86:                                 ; preds = %land.lhs.true.82
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %stb, i32 0, i32 1
  %34 = load i64, i64* %st_ino, align 8
  %st_ino87 = getelementptr inbounds %struct.stat, %struct.stat* %stb2, i32 0, i32 1
  %35 = load i64, i64* %st_ino87, align 8
  %cmp88 = icmp eq i64 %34, %35
  br i1 %cmp88, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %land.lhs.true.86
  %36 = load i32, i32* %fd, align 4
  %call91 = call i32 @ftruncate(i32 %36, i64 0) #10
  br label %if.end.94

if.else.92:                                       ; preds = %land.lhs.true.86, %land.lhs.true.82, %if.then.78
  %37 = load i32, i32* %fd, align 4
  %call93 = call i32 @close(i32 %37)
  store i32 -1, i32* %fd, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.then.90
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.74
  br label %if.end.98

if.else.96:                                       ; preds = %if.then.72
  %38 = load i8*, i8** %fn.addr, align 8
  %call97 = call i32 (i8*, i32, ...) @open(i8* %38, i32 193, i32 438)
  store i32 %call97, i32* %fd, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.end.95
  %39 = load i32, i32* %fd, align 4
  %cmp99 = icmp sge i32 %39, 0
  br i1 %cmp99, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.98
  %40 = load i32, i32* %fd, align 4
  %41 = load i8*, i8** %mode, align 8
  %call101 = call %struct._IO_FILE* @fdopen(i32 %40, i8* %41) #10
  br label %cond.end

cond.false:                                       ; preds = %if.end.98
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %call101, %cond.true ], [ null, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %f, align 8
  br label %if.end.104

if.else.102:                                      ; preds = %land.lhs.true.70, %do.end.67
  %42 = load i8*, i8** %fn.addr, align 8
  %43 = load i8*, i8** %mode, align 8
  %call103 = call %struct._IO_FILE* @fopen(i8* %42, i8* %43)
  store %struct._IO_FILE* %call103, %struct._IO_FILE** %f, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.102, %cond.end
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp105 = icmp eq %struct._IO_FILE* %44, null
  br i1 %cmp105, label %if.then.107, label %if.else.110

if.then.107:                                      ; preds = %if.end.104
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  br label %do.end.109

do.end.109:                                       ; preds = %do.body.108
  call void @UserReturn(i32 0)
  br label %if.end.254

if.else.110:                                      ; preds = %if.end.104
  %45 = load i32, i32* %dump.addr, align 4
  switch i32 %45, label %sw.epilog.252 [
    i32 1, label %sw.bb.111
    i32 3, label %sw.bb.111
    i32 0, label %sw.bb.216
    i32 2, label %sw.bb.225
  ]

sw.bb.111:                                        ; preds = %if.else.110, %if.else.110
  %46 = load %struct.win*, %struct.win** @fore, align 8
  %tobool112 = icmp ne %struct.win* %46, null
  br i1 %tobool112, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %sw.bb.111
  br label %sw.epilog.252

if.end.114:                                       ; preds = %sw.bb.111
  %47 = load i8*, i8** %mode, align 8
  %48 = load i8, i8* %47, align 1
  %conv115 = sext i8 %48 to i32
  %cmp116 = icmp eq i32 %conv115, 97
  br i1 %cmp116, label %if.then.118, label %if.end.124

if.then.118:                                      ; preds = %if.end.114
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call119 = call i32 @_IO_putc(i32 62, %struct._IO_FILE* %49)
  %50 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %50, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %51 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %51, 2
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.118
  %52 = load i32, i32* %j, align 4
  %cmp120 = icmp sgt i32 %52, 0
  br i1 %cmp120, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call122 = call i32 @_IO_putc(i32 61, %struct._IO_FILE* %53)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %j, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call123 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %55)
  br label %if.end.124

if.end.124:                                       ; preds = %for.end, %if.end.114
  %56 = load i32, i32* %dump.addr, align 4
  %cmp125 = icmp eq i32 %56, 3
  br i1 %cmp125, label %if.then.127, label %if.end.174

if.then.127:                                      ; preds = %if.end.124
  store i32 0, i32* %i, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.171, %if.then.127
  %57 = load i32, i32* %i, align 4
  %58 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %58, i32 0, i32 77
  %59 = load i32, i32* %w_histheight, align 4
  %cmp129 = icmp slt i32 %57, %59
  br i1 %cmp129, label %for.body.131, label %for.end.173

for.body.131:                                     ; preds = %for.cond.128
  %60 = load i32, i32* %i, align 4
  %61 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight132 = getelementptr inbounds %struct.win, %struct.win* %61, i32 0, i32 77
  %62 = load i32, i32* %w_histheight132, align 4
  %cmp133 = icmp slt i32 %60, %62
  br i1 %cmp133, label %cond.true.135, label %cond.false.138

cond.true.135:                                    ; preds = %for.body.131
  %63 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %63, i32 0, i32 78
  %64 = load i32, i32* %w_histidx, align 4
  %65 = load i32, i32* %i, align 4
  %add = add nsw i32 %64, %65
  %66 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight136 = getelementptr inbounds %struct.win, %struct.win* %66, i32 0, i32 77
  %67 = load i32, i32* %w_histheight136, align 4
  %rem = srem i32 %add, %67
  %idxprom = sext i32 %rem to i64
  %68 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %68, i32 0, i32 79
  %69 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx137 = getelementptr inbounds %struct.mline, %struct.mline* %69, i64 %idxprom
  br label %cond.end.143

cond.false.138:                                   ; preds = %for.body.131
  %70 = load i32, i32* %i, align 4
  %71 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight139 = getelementptr inbounds %struct.win, %struct.win* %71, i32 0, i32 77
  %72 = load i32, i32* %w_histheight139, align 4
  %sub140 = sub nsw i32 %70, %72
  %idxprom141 = sext i32 %sub140 to i64
  %73 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %73, i32 0, i32 36
  %74 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx142 = getelementptr inbounds %struct.mline, %struct.mline* %74, i64 %idxprom141
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.138, %cond.true.135
  %cond144 = phi %struct.mline* [ %arrayidx137, %cond.true.135 ], [ %arrayidx142, %cond.false.138 ]
  %image = getelementptr inbounds %struct.mline, %struct.mline* %cond144, i32 0, i32 0
  %75 = load i8*, i8** %image, align 8
  store i8* %75, i8** %p, align 8
  %76 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer145 = getelementptr inbounds %struct.win, %struct.win* %76, i32 0, i32 3
  %l_width146 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer145, i32 0, i32 1
  %77 = load i32, i32* %l_width146, align 4
  %sub147 = sub nsw i32 %77, 1
  store i32 %sub147, i32* %k, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.157, %cond.end.143
  %78 = load i32, i32* %k, align 4
  %cmp149 = icmp sge i32 %78, 0
  br i1 %cmp149, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.148
  %79 = load i32, i32* %k, align 4
  %idxprom151 = sext i32 %79 to i64
  %80 = load i8*, i8** %p, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %80, i64 %idxprom151
  %81 = load i8, i8* %arrayidx152, align 1
  %conv153 = sext i8 %81 to i32
  %cmp154 = icmp eq i32 %conv153, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.148
  %82 = phi i1 [ false, %for.cond.148 ], [ %cmp154, %land.rhs ]
  br i1 %82, label %for.body.156, label %for.end.159

for.body.156:                                     ; preds = %land.end
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.body.156
  %83 = load i32, i32* %k, align 4
  %dec158 = add nsw i32 %83, -1
  store i32 %dec158, i32* %k, align 4
  br label %for.cond.148

for.end.159:                                      ; preds = %land.end
  store i32 0, i32* %j, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.168, %for.end.159
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* %k, align 4
  %cmp161 = icmp sle i32 %84, %85
  br i1 %cmp161, label %for.body.163, label %for.end.169

for.body.163:                                     ; preds = %for.cond.160
  %86 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %86 to i64
  %87 = load i8*, i8** %p, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %87, i64 %idxprom164
  %88 = load i8, i8* %arrayidx165, align 1
  %conv166 = sext i8 %88 to i32
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call167 = call i32 @_IO_putc(i32 %conv166, %struct._IO_FILE* %89)
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.163
  %90 = load i32, i32* %j, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.160

for.end.169:                                      ; preds = %for.cond.160
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call170 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %91)
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.end.169
  %92 = load i32, i32* %i, align 4
  %inc172 = add nsw i32 %92, 1
  store i32 %inc172, i32* %i, align 4
  br label %for.cond.128

for.end.173:                                      ; preds = %for.cond.128
  br label %if.end.174

if.end.174:                                       ; preds = %for.end.173, %if.end.124
  store i32 0, i32* %i, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.213, %if.end.174
  %93 = load i32, i32* %i, align 4
  %94 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer176 = getelementptr inbounds %struct.win, %struct.win* %94, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer176, i32 0, i32 2
  %95 = load i32, i32* %l_height, align 4
  %cmp177 = icmp slt i32 %93, %95
  br i1 %cmp177, label %for.body.179, label %for.end.215

for.body.179:                                     ; preds = %for.cond.175
  %96 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %96 to i64
  %97 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines181 = getelementptr inbounds %struct.win, %struct.win* %97, i32 0, i32 36
  %98 = load %struct.mline*, %struct.mline** %w_mlines181, align 8
  %arrayidx182 = getelementptr inbounds %struct.mline, %struct.mline* %98, i64 %idxprom180
  %image183 = getelementptr inbounds %struct.mline, %struct.mline* %arrayidx182, i32 0, i32 0
  %99 = load i8*, i8** %image183, align 8
  store i8* %99, i8** %p, align 8
  %100 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer184 = getelementptr inbounds %struct.win, %struct.win* %100, i32 0, i32 3
  %l_width185 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer184, i32 0, i32 1
  %101 = load i32, i32* %l_width185, align 4
  %sub186 = sub nsw i32 %101, 1
  store i32 %sub186, i32* %k, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.198, %for.body.179
  %102 = load i32, i32* %k, align 4
  %cmp188 = icmp sge i32 %102, 0
  br i1 %cmp188, label %land.rhs.190, label %land.end.196

land.rhs.190:                                     ; preds = %for.cond.187
  %103 = load i32, i32* %k, align 4
  %idxprom191 = sext i32 %103 to i64
  %104 = load i8*, i8** %p, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %104, i64 %idxprom191
  %105 = load i8, i8* %arrayidx192, align 1
  %conv193 = sext i8 %105 to i32
  %cmp194 = icmp eq i32 %conv193, 32
  br label %land.end.196

land.end.196:                                     ; preds = %land.rhs.190, %for.cond.187
  %106 = phi i1 [ false, %for.cond.187 ], [ %cmp194, %land.rhs.190 ]
  br i1 %106, label %for.body.197, label %for.end.200

for.body.197:                                     ; preds = %land.end.196
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.197
  %107 = load i32, i32* %k, align 4
  %dec199 = add nsw i32 %107, -1
  store i32 %dec199, i32* %k, align 4
  br label %for.cond.187

for.end.200:                                      ; preds = %land.end.196
  store i32 0, i32* %j, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.209, %for.end.200
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %k, align 4
  %cmp202 = icmp sle i32 %108, %109
  br i1 %cmp202, label %for.body.204, label %for.end.211

for.body.204:                                     ; preds = %for.cond.201
  %110 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %110 to i64
  %111 = load i8*, i8** %p, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %111, i64 %idxprom205
  %112 = load i8, i8* %arrayidx206, align 1
  %conv207 = sext i8 %112 to i32
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call208 = call i32 @_IO_putc(i32 %conv207, %struct._IO_FILE* %113)
  br label %for.inc.209

for.inc.209:                                      ; preds = %for.body.204
  %114 = load i32, i32* %j, align 4
  %inc210 = add nsw i32 %114, 1
  store i32 %inc210, i32* %j, align 4
  br label %for.cond.201

for.end.211:                                      ; preds = %for.cond.201
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call212 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %115)
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.end.211
  %116 = load i32, i32* %i, align 4
  %inc214 = add nsw i32 %116, 1
  store i32 %inc214, i32* %i, align 4
  br label %for.cond.175

for.end.215:                                      ; preds = %for.cond.175
  br label %sw.epilog.252

sw.bb.216:                                        ; preds = %if.else.110
  %117 = load %struct.win*, %struct.win** @fore, align 8
  %w_aflag = getelementptr inbounds %struct.win, %struct.win* %117, i32 0, i32 20
  %118 = load i32, i32* %w_aflag, align 4
  %call217 = call i8* @MakeTermcap(i32 %118)
  %call218 = call i8* @index(i8* %call217, i32 61) #7
  store i8* %call218, i8** %p, align 8
  %cmp219 = icmp ne i8* %call218, null
  br i1 %cmp219, label %if.then.221, label %if.end.224

if.then.221:                                      ; preds = %sw.bb.216
  %119 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call222 = call i32 @fputs(i8* %incdec.ptr, %struct._IO_FILE* %120)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call223 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %121)
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.221, %sw.bb.216
  br label %sw.epilog.252

sw.bb.225:                                        ; preds = %if.else.110
  %122 = load %struct.acluser*, %struct.acluser** %user.addr, align 8
  %u_plop = getelementptr inbounds %struct.acluser, %struct.acluser* %122, i32 0, i32 8
  %buf = getelementptr inbounds %struct.plop, %struct.plop* %u_plop, i32 0, i32 0
  %123 = load i8*, i8** %buf, align 8
  store i8* %123, i8** %p, align 8
  %124 = load %struct.acluser*, %struct.acluser** %user.addr, align 8
  %u_plop226 = getelementptr inbounds %struct.acluser, %struct.acluser* %124, i32 0, i32 8
  %len = getelementptr inbounds %struct.plop, %struct.plop* %u_plop226, i32 0, i32 1
  %125 = load i32, i32* %len, align 4
  store i32 %125, i32* %i, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.249, %sw.bb.225
  %126 = load i32, i32* %i, align 4
  %dec228 = add nsw i32 %126, -1
  store i32 %dec228, i32* %i, align 4
  %cmp229 = icmp sgt i32 %126, 0
  br i1 %cmp229, label %for.body.231, label %for.end.251

for.body.231:                                     ; preds = %for.cond.227
  %127 = load i8*, i8** %p, align 8
  %128 = load i8, i8* %127, align 1
  %conv232 = sext i8 %128 to i32
  %cmp233 = icmp eq i32 %conv232, 13
  br i1 %cmp233, label %land.lhs.true.235, label %if.else.245

land.lhs.true.235:                                ; preds = %for.body.231
  %129 = load i32, i32* %i, align 4
  %cmp236 = icmp eq i32 %129, 0
  br i1 %cmp236, label %if.then.243, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %land.lhs.true.235
  %130 = load i8*, i8** %p, align 8
  %arrayidx239 = getelementptr inbounds i8, i8* %130, i64 1
  %131 = load i8, i8* %arrayidx239, align 1
  %conv240 = sext i8 %131 to i32
  %cmp241 = icmp ne i32 %conv240, 10
  br i1 %cmp241, label %if.then.243, label %if.else.245

if.then.243:                                      ; preds = %lor.lhs.false.238, %land.lhs.true.235
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call244 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %132)
  br label %if.end.248

if.else.245:                                      ; preds = %lor.lhs.false.238, %for.body.231
  %133 = load i8*, i8** %p, align 8
  %134 = load i8, i8* %133, align 1
  %conv246 = sext i8 %134 to i32
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call247 = call i32 @_IO_putc(i32 %conv246, %struct._IO_FILE* %135)
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.245, %if.then.243
  br label %for.inc.249

for.inc.249:                                      ; preds = %if.end.248
  %136 = load i8*, i8** %p, align 8
  %incdec.ptr250 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr250, i8** %p, align 8
  br label %for.cond.227

for.end.251:                                      ; preds = %for.cond.227
  br label %sw.epilog.252

sw.epilog.252:                                    ; preds = %if.else.110, %for.end.251, %if.end.224, %for.end.215, %if.then.113
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call253 = call i32 @fclose(%struct._IO_FILE* %137)
  call void @UserReturn(i32 1)
  br label %if.end.254

if.end.254:                                       ; preds = %sw.epilog.252, %do.end.109
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %do.end
  %call256 = call i32 @UserStatus()
  %cmp257 = icmp sle i32 %call256, 0
  br i1 %cmp257, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %if.end.255
  %138 = load i8*, i8** %fn.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* %138)
  br label %if.end.274

if.else.260:                                      ; preds = %if.end.255
  %139 = load %struct.display*, %struct.display** @display, align 8
  %tobool261 = icmp ne %struct.display* %139, null
  br i1 %tobool261, label %land.lhs.true.262, label %if.end.273

land.lhs.true.262:                                ; preds = %if.else.260
  %140 = load i8*, i8** @rc_name, align 8
  %141 = load i8, i8* %140, align 1
  %tobool263 = icmp ne i8 %141, 0
  br i1 %tobool263, label %if.end.273, label %if.then.264

if.then.264:                                      ; preds = %land.lhs.true.262
  %142 = load i32, i32* %dump.addr, align 4
  switch i32 %142, label %sw.epilog.272 [
    i32 0, label %sw.bb.265
    i32 1, label %sw.bb.266
    i32 3, label %sw.bb.266
    i32 2, label %sw.bb.271
  ]

sw.bb.265:                                        ; preds = %if.then.264
  %143 = load i8*, i8** %fn.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0), i8* %143)
  br label %sw.epilog.272

sw.bb.266:                                        ; preds = %if.then.264, %if.then.264
  %144 = load i8*, i8** %mode, align 8
  %145 = load i8, i8* %144, align 1
  %conv267 = sext i8 %145 to i32
  %cmp268 = icmp eq i32 %conv267, 97
  %cond270 = select i1 %cmp268, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)
  %146 = load i8*, i8** %fn.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i8* %cond270, i8* %146)
  br label %sw.epilog.272

sw.bb.271:                                        ; preds = %if.then.264
  %147 = load i8*, i8** %fn.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i8* %147)
  br label %sw.epilog.272

sw.epilog.272:                                    ; preds = %sw.bb.271, %if.then.264, %sw.bb.266, %sw.bb.265
  br label %if.end.273

if.end.273:                                       ; preds = %sw.epilog.272, %land.lhs.true.262, %if.else.260
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.15, %if.then.60, %if.end.273, %if.then.259
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #4

declare i32 @UserContext() #5

declare i32 @open(i8*, i32, ...) #5

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #4

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #4

declare i32 @close(i32) #5

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #5

declare void @UserReturn(i32) #5

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #5

declare i32 @fputs(i8*, %struct._IO_FILE*) #5

declare i8* @MakeTermcap(i32) #5

declare i32 @UserStatus() #5

; Function Attrs: nounwind uwtable
define i8* @ReadFile(i8* %fn, i32* %lenp) #0 {
entry:
  %retval = alloca i8*, align 8
  %fn.addr = alloca i8*, align 8
  %lenp.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %size = alloca i32, align 4
  %c = alloca i8, align 1
  %bp = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %stb = alloca %struct.stat, align 8
  store i8* %fn, i8** %fn.addr, align 8
  store i32* %lenp, i32** %lenp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call i32 @secopen(i8* %0, i32 0, i32 0)
  store i32 %call, i32* %i, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.2
  %call3 = call i32* @__errno_location() #11
  %1 = load i32, i32* %call3, align 4
  %2 = load i8*, i8** %fn.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i8* %2)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %do.end.2
  %3 = load i32, i32* %i, align 4
  %call4 = call i32 @fstat(i32 %3, %struct.stat* %stb) #10
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %call6 = call i32* @__errno_location() #11
  %4 = load i32, i32* %call6, align 4
  %5 = load i8*, i8** %fn.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* %5)
  %6 = load i32, i32* %i, align 4
  %call7 = call i32 @close(i32 %6)
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %stb, i32 0, i32 8
  %7 = load i64, i64* %st_size, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %size, align 4
  %8 = load i32, i32* %size, align 4
  %conv9 = sext i32 %8 to i64
  %call10 = call noalias i8* @malloc(i64 %conv9) #10
  store i8* %call10, i8** %buf, align 8
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.8
  %9 = load i32, i32* %i, align 4
  %call14 = call i32 @close(i32 %9)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %call16 = call i32* @__errno_location() #11
  store i32 0, i32* %call16, align 4
  %10 = load i32, i32* %i, align 4
  %11 = load i8*, i8** %buf, align 8
  %12 = load i32, i32* %size, align 4
  %conv17 = sext i32 %12 to i64
  %call18 = call i64 @read(i32 %10, i8* %11, i64 %conv17)
  %conv19 = trunc i64 %call18 to i32
  store i32 %conv19, i32* %l, align 4
  %13 = load i32, i32* %size, align 4
  %cmp20 = icmp ne i32 %conv19, %13
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.15
  %14 = load i32, i32* %l, align 4
  %cmp23 = icmp slt i32 %14, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.22
  store i32 0, i32* %l, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.22
  %call27 = call i32* @__errno_location() #11
  %15 = load i32, i32* %call27, align 4
  %16 = load i32, i32* %l, align 4
  %17 = load i8*, i8** %fn.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i32 0, i32 0), i32 %16, i8* %17)
  br label %if.end.34

if.else:                                          ; preds = %if.end.15
  %18 = load i32, i32* %i, align 4
  %call28 = call i64 @read(i32 %18, i8* %c, i64 1)
  %cmp29 = icmp sgt i64 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else
  %19 = load i32, i32* %l, align 4
  %20 = load i32, i32* %size, align 4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.37, i32 0, i32 0), i32 %19, i32 %20)
  br label %if.end.33

if.else.32:                                       ; preds = %if.else
  %21 = load i32, i32* %l, align 4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0), i32 %21)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.26
  %22 = load i32, i32* %i, align 4
  %call35 = call i32 @close(i32 %22)
  %23 = load i32, i32* %l, align 4
  %24 = load i32*, i32** %lenp.addr, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %buf, align 8
  store i8* %25, i8** %bp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %26 = load i32, i32* %l, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %l, align 4
  %cmp36 = icmp sgt i32 %26, 0
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %bp, align 8
  %28 = load i8, i8* %27, align 1
  %conv38 = sext i8 %28 to i32
  %cmp39 = icmp eq i32 %conv38, 10
  br i1 %cmp39, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %for.body
  %29 = load i8*, i8** %bp, align 8
  %30 = load i8*, i8** %buf, align 8
  %cmp41 = icmp eq i8* %29, %30
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %31 = load i8*, i8** %bp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 -1
  %32 = load i8, i8* %arrayidx, align 1
  %conv43 = sext i8 %32 to i32
  %cmp44 = icmp ne i32 %conv43, 13
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %33 = load i8*, i8** %bp, align 8
  store i8 13, i8* %33, align 1
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %34 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i8*, i8** %buf, align 8
  store i8* %35, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.13, %if.then.5, %if.then
  %36 = load i8*, i8** %retval
  ret i8* %36
}

; Function Attrs: nounwind uwtable
define i32 @secopen(i8* %name, i32 %flags, i32 %mode) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %0)
  %1 = load i32, i32* @real_gid, align 4
  call void @xsetegid(i32 %1)
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %4 = load i32, i32* %mode.addr, align 4
  %call = call i32 (i8*, i32, ...) @open(i8* %2, i32 %3, i32 %4)
  store i32 %call, i32* %fd, align 4
  %5 = load i32, i32* @eff_uid, align 4
  call void @xseteuid(i32 %5)
  %6 = load i32, i32* @eff_gid, align 4
  call void @xsetegid(i32 %6)
  %7 = load i32, i32* %fd, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare i64 @read(i32, i8*, i64) #5

; Function Attrs: nounwind uwtable
define void @KillBuffers() #0 {
entry:
  %call = call i32 @UserContext()
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** @BufferFile, align 8
  %call1 = call i32 @unlink(i8* %0) #10
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call2 = call i32* @__errno_location() #11
  %1 = load i32, i32* %call2, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %cond.false ]
  call void @UserReturn(i32 %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %call3 = call i32 @UserStatus()
  %call4 = call i32* @__errno_location() #11
  store i32 %call3, i32* %call4, align 4
  %call5 = call i32* @__errno_location() #11
  %2 = load i32, i32* %call5, align 4
  %3 = load i8*, i8** @BufferFile, align 8
  %call6 = call i32* @__errno_location() #11
  %4 = load i32, i32* %call6, align 4
  %tobool7 = icmp ne i32 %4, 0
  %cond8 = select i1 %tobool7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)
  call void (i32, i8*, ...) @Msg(i32 %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8* %3, i8* %cond8)
  ret void
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #4

declare void @xseteuid(i32) #5

declare void @xsetegid(i32) #5

; Function Attrs: nounwind uwtable
define i32 @printpipe(%struct.win* %p, i8* %cmd) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.win*, align 8
  %cmd.addr = alloca i8*, align 8
  %pi = alloca [2 x i32], align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i8* %cmd, i8** %cmd.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %pi, i32 0, i32 0
  %call = call i32 @pipe(i32* %arraydecay) #10
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %call1 = call i32* @__errno_location() #11
  %1 = load i32, i32* %call1, align 4
  call void @WMsg(%struct.win* %0, i32 %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @fork() #10
  switch i32 %call2, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load %struct.win*, %struct.win** %p.addr, align 8
  %call3 = call i32* @__errno_location() #11
  %3 = load i32, i32* %call3, align 4
  call void @WMsg(%struct.win* %2, i32 %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pdisplay = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 7
  %5 = load %struct.display*, %struct.display** %w_pdisplay, align 8
  store %struct.display* %5, %struct.display** @display, align 8
  store %struct.display* null, %struct.display** @displays, align 8
  %call5 = call i32 @close(i32 0)
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %pi, i32 0, i64 0
  %6 = load i32, i32* %arrayidx, align 4
  %call6 = call i32 @dup(i32 %6) #10
  call void @closeallfiles(i32 0)
  %7 = load i32, i32* @real_gid, align 4
  %call7 = call i32 @setgid(i32 %7) #10
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.4
  %8 = load i32, i32* @real_uid, align 4
  %call9 = call i32 @setuid(i32 %8) #10
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %lor.lhs.false, %sw.bb.4
  %call12 = call i32* @__errno_location() #11
  %9 = load i32, i32* %call12, align 4
  call void (i32, i8*, ...) @Panic(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0)) #8
  unreachable

if.end.13:                                        ; preds = %lor.lhs.false
  %call14 = call void (i32)* @xsignal(i32 13, void (i32)* null)
  %10 = load i8*, i8** %cmd.addr, align 8
  %call15 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %10, i8* null) #10
  %call16 = call i32* @__errno_location() #11
  %11 = load i32, i32* %call16, align 4
  call void (i32, i8*, ...) @Panic(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0)) #8
  unreachable

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %pi, i32 0, i64 0
  %12 = load i32, i32* %arrayidx17, align 4
  %call18 = call i32 @close(i32 %12)
  %arrayidx19 = getelementptr inbounds [2 x i32], [2 x i32]* %pi, i32 0, i64 1
  %13 = load i32, i32* %arrayidx19, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #4

declare void @WMsg(%struct.win*, i32, i8*) #5

; Function Attrs: nounwind
declare i32 @fork() #4

; Function Attrs: nounwind
declare i32 @dup(i32) #4

declare void @closeallfiles(i32) #5

; Function Attrs: nounwind
declare i32 @setgid(i32) #4

; Function Attrs: nounwind
declare i32 @setuid(i32) #4

declare void (i32)* @xsignal(i32, void (i32)*) #5

; Function Attrs: nounwind
declare i32 @execl(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @readpipe(i8** %cmdv) #0 {
entry:
  %retval = alloca i32, align 4
  %cmdv.addr = alloca i8**, align 8
  %pi = alloca [2 x i32], align 4
  store i8** %cmdv, i8*** %cmdv.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %pi, i32 0, i32 0
  %call = call i32 @pipe(i32* %arraydecay) #10
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #11
  %0 = load i32, i32* %call1, align 4
  call void (i32, i8*, ...) @Msg(i32 %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @fork() #10
  switch i32 %call2, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  %call3 = call i32* @__errno_location() #11
  %1 = load i32, i32* %call3, align 4
  call void (i32, i8*, ...) @Msg(i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  store %struct.display* null, %struct.display** @displays, align 8
  %call5 = call i32 @close(i32 1)
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %pi, i32 0, i64 1
  %2 = load i32, i32* %arrayidx, align 4
  %call6 = call i32 @dup(i32 %2) #10
  %cmp = icmp ne i32 %call6, 1
  br i1 %cmp, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %sw.bb.4
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %pi, i32 0, i64 1
  %3 = load i32, i32* %arrayidx8, align 4
  %call9 = call i32 @close(i32 %3)
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0)) #8
  unreachable

if.end.10:                                        ; preds = %sw.bb.4
  call void @closeallfiles(i32 1)
  %4 = load i32, i32* @real_gid, align 4
  %call11 = call i32 @setgid(i32 %4) #10
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.10
  %5 = load i32, i32* @real_uid, align 4
  %call13 = call i32 @setuid(i32 %5) #10
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.10
  %call16 = call i32 @close(i32 1)
  %call17 = call i32* @__errno_location() #11
  %6 = load i32, i32* %call17, align 4
  call void (i32, i8*, ...) @Panic(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0)) #8
  unreachable

if.end.18:                                        ; preds = %lor.lhs.false
  %call19 = call void (i32)* @xsignal(i32 13, void (i32)* null)
  %7 = load i8**, i8*** %cmdv.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8**, i8*** %cmdv.addr, align 8
  %call20 = call i32 @execvp(i8* %8, i8** %9) #10
  %call21 = call i32 @close(i32 1)
  %call22 = call i32* @__errno_location() #11
  %10 = load i32, i32* %call22, align 4
  %11 = load i8**, i8*** %cmdv.addr, align 8
  %12 = load i8*, i8** %11, align 8
  call void (i32, i8*, ...) @Panic(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* %12) #8
  unreachable

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %pi, i32 0, i64 1
  %13 = load i32, i32* %arrayidx23, align 4
  %call24 = call i32 @close(i32 %13)
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %pi, i32 0, i64 0
  %14 = load i32, i32* %arrayidx25, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

declare %struct.passwd* @getpwnam(i8*) #5

declare i8* @SaveStr(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
