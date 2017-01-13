; ModuleID = './MultiSource.Benchmarks.mediabench/83.gsm.toast.toast.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmtdesc = type { i8*, i8*, i8*, i32 ()*, i32 ()*, i32 (i16*)*, i32 (i16*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.gsm_state = type opaque
%struct.utimbuf = type { i64, i64 }

@f_decode = global i32 0, align 4
@f_cat = global i32 0, align 4
@f_force = global i32 0, align 4
@f_precious = global i32 0, align 4
@f_fast = global i32 0, align 4
@f_verbose = global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"8 kHz, 8 bit u-law encoding with Sun audio header\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".au\00", align 1
@f_audio = global %struct.fmtdesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 ()* @audio_init_input, i32 ()* @audio_init_output, i32 (i16*)* @ulaw_input, i32 (i16*)* @ulaw_output }, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"u-law\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"plain 8 kHz, 8 bit u-law encoding\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".u\00", align 1
@f_ulaw = global %struct.fmtdesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 ()* @generic_init, i32 ()* @generic_init, i32 (i16*)* @ulaw_input, i32 (i16*)* @ulaw_output }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"A-law\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"8 kHz, 8 bit A-law encoding\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".A\00", align 1
@f_alaw = global %struct.fmtdesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 ()* @generic_init, i32 ()* @generic_init, i32 (i16*)* @alaw_input, i32 (i16*)* @alaw_output }, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"16 bit (13 significant) signed 8 kHz signal\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".l\00", align 1
@f_linear = global %struct.fmtdesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 ()* @generic_init, i32 ()* @generic_init, i32 (i16*)* @linear_input, i32 (i16*)* @linear_output }, align 8
@alldescs = global [5 x %struct.fmtdesc*] [%struct.fmtdesc* @f_audio, %struct.fmtdesc* @f_alaw, %struct.fmtdesc* @f_ulaw, %struct.fmtdesc* @f_linear, %struct.fmtdesc* null], align 16
@f_format = global %struct.fmtdesc* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"fcdpvhuaslVF\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [51 x i8] c"Usage: %s [-fcpdhvuaslF] [files...] (-h for help)\0A\00", align 1
@progname = common global i8* null, align 8
@optind = external global i32, align 4
@instat = common global %struct.stat zeroinitializer, align 8
@in = common global %struct._IO_FILE* null, align 8
@out = common global %struct._IO_FILE* null, align 8
@inname = common global i8* null, align 8
@outname = common global i8* null, align 8
@output = common global i32 (i16*)* null, align 8
@input = common global i32 (i16*)* null, align 8
@init_input = common global i32 ()* null, align 8
@init_output = common global i32 ()* null, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"toast\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s: only one of -[uals] is possible (%s -h for help)\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%s 1.0, version %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"$Id: toast.c 42693 2007-10-06 10:37:39Z asl $\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Usage: %s [-fcpdhvaulsF] [files...]\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c" -f  force     Replace existing files without asking\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c" -c  cat       Write to stdout, do not remove source files\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c" -d  decode    Decode data (default is encode)\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c" -p  precious  Do not delete the source\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c" -u  u-law     Force 8 kHz/8 bit u-law in/output format\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c" -s  sun .au   Force Sun .au u-law in/output format\0A\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c" -a  A-law     Force 8 kHz/8 bit A-law in/output format\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c" -l  linear    Force 16 bit linear in/output format\0A\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c" -F  fast      Sacrifice conformance to performance\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c" -v  version   Show version information\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c" -h  help      Print this text\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"%s: error %s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"writing header to\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"reading header from\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"%s: error writing \22%s\22\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str.39 = private unnamed_addr constant [30 x i8] c"%s: source \22%s\22 not deleted.\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"%s: could not unlink \22%s\22\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c".gsm\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"%s: %s already has \22%s\22 suffix -- unchanged.\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"%s: cannot open \22%s\22 for reading\0A\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"%s: failed to malloc %d bytes -- abort\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"%s: cannot stat \22%s\22\0A\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"%s: \22%s\22 is not a regular file -- unchanged.\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"%s: \22%s\22 has %s other link%s -- unchanged.\0A\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"%s: can't open \22%s\22 for writing\0A\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"%s: filename \22%s\22 is too long (maximum is %ld)\0A\00", align 1
@.str.54 = private unnamed_addr constant [58 x i8] c"%s already exists; do you wish to overwrite %s (y or n)? \00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"\09not overwritten\0A\00", align 1
@.str.56 = private unnamed_addr constant [50 x i8] c"%s: incomplete frame (%d byte%s missing) from %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"%s: bad frame in %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"%s: error writing to %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"%s: error reading from %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"%s: could not change file mode of \22%s\22\0A\00", align 1

declare i32 @audio_init_input() #0

declare i32 @audio_init_output() #0

declare i32 @ulaw_input(i16*) #0

declare i32 @ulaw_output(i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @generic_init() #1 {
entry:
  ret i32 0
}

declare i32 @alaw_input(i16*) #0

declare i32 @alaw_output(i16*) #0

declare i32 @linear_input(i16*) #0

declare i32 @linear_output(i16*) #0

; Function Attrs: nounwind uwtable
define i32 @main(i32 %ac, i8** %av) #1 {
entry:
  %retval = alloca i32, align 4
  %ac.addr = alloca i32, align 4
  %av.addr = alloca i8**, align 8
  %opt = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %ac, i32* %ac.addr, align 4
  store i8** %av, i8*** %av.addr, align 8
  %0 = load i8**, i8*** %av.addr, align 8
  %1 = load i8*, i8** %0, align 8
  call void @parse_argv0(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, i32* %ac.addr, align 4
  %3 = load i8**, i8*** %av.addr, align 8
  %call = call i32 @getopt(i32 %2, i8** %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)) #6
  store i32 %call, i32* %opt, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %opt, align 4
  switch i32 %4, label %sw.default [
    i32 100, label %sw.bb
    i32 102, label %sw.bb.1
    i32 99, label %sw.bb.2
    i32 112, label %sw.bb.3
    i32 70, label %sw.bb.4
    i32 117, label %sw.bb.5
    i32 108, label %sw.bb.6
    i32 97, label %sw.bb.7
    i32 115, label %sw.bb.8
    i32 118, label %sw.bb.9
    i32 104, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* @f_decode, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  store i32 1, i32* @f_force, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  store i32 1, i32* @f_cat, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  store i32 1, i32* @f_precious, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  store i32 1, i32* @f_fast, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  call void @set_format(%struct.fmtdesc* @f_ulaw)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  call void @set_format(%struct.fmtdesc* @f_linear)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  call void @set_format(%struct.fmtdesc* @f_alaw)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  call void @set_format(%struct.fmtdesc* @f_audio)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  call void @version()
  call void @exit(i32 0) #7
  unreachable

sw.bb.10:                                         ; preds = %while.body
  call void @help()
  call void @exit(i32 0) #7
  unreachable

sw.default:                                       ; preds = %while.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** @progname, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0), i8* %6)
  call void @exit(i32 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* @f_cat, align 4
  %8 = load i32, i32* @f_precious, align 4
  %or = or i32 %8, %7
  store i32 %or, i32* @f_precious, align 4
  %9 = load i32, i32* @optind, align 4
  %10 = load i8**, i8*** %av.addr, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %10, i64 %idx.ext
  store i8** %add.ptr, i8*** %av.addr, align 8
  %11 = load i32, i32* @optind, align 4
  %12 = load i32, i32* %ac.addr, align 4
  %sub = sub nsw i32 %12, %11
  store i32 %sub, i32* %ac.addr, align 4
  call void @catch_signals(void (...)* bitcast (void ()* @onintr to void (...)*))
  %13 = load i32, i32* %ac.addr, align 4
  %cmp12 = icmp sle i32 %13, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %call13 = call i32 @process(i8* null)
  br label %if.end

if.else:                                          ; preds = %while.end
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.15, %if.else
  %14 = load i32, i32* %ac.addr, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %ac.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %while.body.15, label %while.end.17

while.body.15:                                    ; preds = %while.cond.14
  %15 = load i8**, i8*** %av.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** %av.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %call16 = call i32 @process(i8* %16)
  br label %while.cond.14

while.end.17:                                     ; preds = %while.cond.14
  br label %if.end

if.end:                                           ; preds = %while.end.17, %if.then
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @parse_argv0(i8* %av0) #1 {
entry:
  %av0.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  store i8* %av0, i8** %av0.addr, align 8
  %0 = load i8*, i8** %av0.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %av0.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), %cond.false ]
  %call = call i8* @endname(i8* %cond)
  store i8* %call, i8** %av0.addr, align 8
  store i8* %call, i8** @progname, align 8
  %2 = load i8*, i8** %av0.addr, align 8
  %call1 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i64 2) #8
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 1, i32* @f_decode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %3 = load i8*, i8** %av0.addr, align 8
  %call3 = call i64 @strlen(i8* %3) #8
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %l, align 4
  %cmp = icmp sge i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %av0.addr, align 8
  %5 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -3
  %call6 = call i32 @strcmp(i8* %add.ptr5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* @f_decode, align 4
  store i32 1, i32* @f_cat, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @set_format(%struct.fmtdesc* %f) #1 {
entry:
  %f.addr = alloca %struct.fmtdesc*, align 8
  store %struct.fmtdesc* %f, %struct.fmtdesc** %f.addr, align 8
  %0 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8
  %tobool = icmp ne %struct.fmtdesc* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8
  %2 = load %struct.fmtdesc*, %struct.fmtdesc** %f.addr, align 8
  %cmp = icmp ne %struct.fmtdesc* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progname, align 8
  %5 = load i8*, i8** @progname, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* %4, i8* %5)
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.fmtdesc*, %struct.fmtdesc** %f.addr, align 8
  store %struct.fmtdesc* %6, %struct.fmtdesc** @f_format, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @version() #1 {
entry:
  %0 = load i8*, i8** @progname, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0))
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define internal void @help() #1 {
entry:
  %0 = load i8*, i8** @progname, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), i8* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i32 0, i32 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i32 0, i32 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i32 0, i32 0))
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0))
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal void @catch_signals(void (...)* %fun) #1 {
entry:
  %fun.addr = alloca void (...)*, align 8
  store void (...)* %fun, void (...)** %fun.addr, align 8
  %0 = load void (...)*, void (...)** %fun.addr, align 8
  %1 = bitcast void (...)* %0 to void (i32)*
  %call = call void (i32)* @signal(i32 1, void (i32)* %1) #6
  %2 = load void (...)*, void (...)** %fun.addr, align 8
  %3 = bitcast void (...)* %2 to void (i32)*
  %call1 = call void (i32)* @signal(i32 2, void (i32)* %3) #6
  %4 = load void (...)*, void (...)** %fun.addr, align 8
  %5 = bitcast void (...)* %4 to void (i32)*
  %call2 = call void (i32)* @signal(i32 13, void (i32)* %5) #6
  %6 = load void (...)*, void (...)** %fun.addr, align 8
  %7 = bitcast void (...)* %6 to void (i32)*
  %call3 = call void (i32)* @signal(i32 15, void (i32)* %7) #6
  %8 = load void (...)*, void (...)** %fun.addr, align 8
  %9 = bitcast void (...)* %8 to void (i32)*
  %call4 = call void (i32)* @signal(i32 25, void (i32)* %9) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @onintr() #1 {
entry:
  %tmp = alloca i8*, align 8
  %0 = load i8*, i8** @outname, align 8
  store i8* %0, i8** %tmp, align 8
  store i8* null, i8** @outname, align 8
  %1 = load i8*, i8** %tmp, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %tmp, align 8
  %call = call i32 @unlink(i8* %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @process(i8* %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %step = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %step, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @in, align 8
  store i8* null, i8** @outname, align 8
  store i8* null, i8** @inname, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @open_input(i8* %0, %struct.stat* @instat)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 @open_output(i8* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* @f_decode, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i32 ()*, i32 ()** @init_output, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32 ()*, i32 ()** @init_input, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 ()* [ %3, %cond.true ], [ %4, %cond.false ]
  %call4 = call i32 %cond()
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.25

if.then.6:                                        ; preds = %cond.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** @progname, align 8
  %7 = load i32, i32* @f_decode, align 4
  %tobool7 = icmp ne i32 %7, 0
  %cond8 = select i1 %tobool7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0)
  %8 = load i32, i32* @f_decode, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.16

cond.true.10:                                     ; preds = %if.then.6
  %9 = load i8*, i8** @outname, align 8
  %tobool11 = icmp ne i8* %9, null
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.true.10
  %10 = load i8*, i8** @outname, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.true.10
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i8* [ %10, %cond.true.12 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %cond.false.13 ]
  br label %cond.end.22

cond.false.16:                                    ; preds = %if.then.6
  %11 = load i8*, i8** @inname, align 8
  %tobool17 = icmp ne i8* %11, null
  br i1 %tobool17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false.16
  %12 = load i8*, i8** @inname, align 8
  br label %cond.end.20

cond.false.19:                                    ; preds = %cond.false.16
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i8* [ %12, %cond.true.18 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.19 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end.20, %cond.end.14
  %cond23 = phi i8* [ %cond15, %cond.end.14 ], [ %cond21, %cond.end.20 ]
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i8* %6, i8* %cond8, i8* %cond23)
  br label %err

if.end.25:                                        ; preds = %cond.end
  %13 = load i32, i32* @f_decode, align 4
  %tobool26 = icmp ne i32 %13, 0
  %cond27 = select i1 %tobool26, i32 ()* @process_decode, i32 ()* @process_encode
  %call28 = call i32 %cond27()
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.25
  br label %err

if.end.31:                                        ; preds = %if.end.25
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call32 = call i32 @fflush(%struct._IO_FILE* %14)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.then.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.end.31
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call34 = call i32 @ferror(%struct._IO_FILE* %15) #6
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %lor.lhs.false.33, %if.end.31
  %16 = load i8*, i8** @outname, align 8
  %tobool37 = icmp ne i8* %16, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.then.36
  %17 = load i8*, i8** @outname, align 8
  br label %cond.end.40

cond.false.39:                                    ; preds = %if.then.36
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi i8* [ %17, %cond.true.38 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %cond.false.39 ]
  call void @perror(i8* %cond41)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** @progname, align 8
  %20 = load i8*, i8** @outname, align 8
  %tobool42 = icmp ne i8* %20, null
  br i1 %tobool42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.end.40
  %21 = load i8*, i8** @outname, align 8
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end.40
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.43
  %cond46 = phi i8* [ %21, %cond.true.43 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %cond.false.44 ]
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0), i8* %19, i8* %cond46)
  br label %err

if.end.48:                                        ; preds = %lor.lhs.false.33
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp49 = icmp ne %struct._IO_FILE* %22, %23
  br i1 %cmp49, label %if.then.50, label %if.end.59

if.then.50:                                       ; preds = %if.end.48
  call void @update_times()
  call void @update_mode()
  call void @update_own()
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call51 = call i32 @fclose(%struct._IO_FILE* %24)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.then.50
  %25 = load i8*, i8** @outname, align 8
  call void @perror(i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** @progname, align 8
  %28 = load i8*, i8** @outname, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0), i8* %27, i8* %28)
  br label %err

if.end.55:                                        ; preds = %if.then.50
  %29 = load i8*, i8** @outname, align 8
  %30 = load i8*, i8** %name.addr, align 8
  %cmp56 = icmp ne i8* %29, %30
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  %31 = load i8*, i8** @outname, align 8
  call void @free(i8* %31) #6
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.55
  store i8* null, i8** @outname, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.48
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp60 = icmp ne %struct._IO_FILE* %32, %33
  br i1 %cmp60, label %if.then.61, label %if.end.75

if.then.61:                                       ; preds = %if.end.59
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call62 = call i32 @fclose(%struct._IO_FILE* %34)
  store %struct._IO_FILE* null, %struct._IO_FILE** @in, align 8
  %35 = load i32, i32* @f_cat, align 4
  %tobool63 = icmp ne i32 %35, 0
  br i1 %tobool63, label %if.end.71, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.61
  %36 = load i32, i32* @f_precious, align 4
  %tobool64 = icmp ne i32 %36, 0
  br i1 %tobool64, label %if.end.71, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true
  %37 = load i8*, i8** @inname, align 8
  %call66 = call i32 @unlink(i8* %37) #6
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.65
  %38 = load i8*, i8** @inname, align 8
  call void @perror(i8* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = load i8*, i8** @progname, align 8
  %41 = load i8*, i8** @inname, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0), i8* %40, i8* %41)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.then.65
  br label %err

if.end.71:                                        ; preds = %land.lhs.true, %if.then.61
  %42 = load i8*, i8** @inname, align 8
  %43 = load i8*, i8** %name.addr, align 8
  %cmp72 = icmp ne i8* %42, %43
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  %44 = load i8*, i8** @inname, align 8
  call void @free(i8* %44) #6
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.71
  store i8* null, i8** @inname, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.59
  store i32 0, i32* %retval
  br label %return

err:                                              ; preds = %if.end.70, %if.then.53, %cond.end.45, %if.then.30, %cond.end.22, %if.then
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %tobool76 = icmp ne %struct._IO_FILE* %45, null
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.92

land.lhs.true.77:                                 ; preds = %err
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp78 = icmp ne %struct._IO_FILE* %46, %47
  br i1 %cmp78, label %if.then.79, label %if.end.92

if.then.79:                                       ; preds = %land.lhs.true.77
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call80 = call i32 @fclose(%struct._IO_FILE* %48)
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  %49 = load i8*, i8** @outname, align 8
  %call81 = call i32 @unlink(i8* %49) #6
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %land.lhs.true.83, label %if.end.91

land.lhs.true.83:                                 ; preds = %if.then.79
  %call84 = call i32* @__errno_location() #9
  %50 = load i32, i32* %call84, align 4
  %cmp85 = icmp ne i32 %50, 2
  br i1 %cmp85, label %land.lhs.true.86, label %if.end.91

land.lhs.true.86:                                 ; preds = %land.lhs.true.83
  %call87 = call i32* @__errno_location() #9
  %51 = load i32, i32* %call87, align 4
  %cmp88 = icmp ne i32 %51, 4
  br i1 %cmp88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %land.lhs.true.86
  %52 = load i8*, i8** @outname, align 8
  call void @perror(i8* %52)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load i8*, i8** @progname, align 8
  %55 = load i8*, i8** @outname, align 8
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0), i8* %54, i8* %55)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %land.lhs.true.86, %land.lhs.true.83, %if.then.79
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %land.lhs.true.77, %err
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %tobool93 = icmp ne %struct._IO_FILE* %56, null
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.98

land.lhs.true.94:                                 ; preds = %if.end.92
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp95 = icmp ne %struct._IO_FILE* %57, %58
  br i1 %cmp95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %land.lhs.true.94
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call97 = call i32 @fclose(%struct._IO_FILE* %59)
  store %struct._IO_FILE* null, %struct._IO_FILE** @in, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %land.lhs.true.94, %if.end.92
  %60 = load i8*, i8** @inname, align 8
  %tobool99 = icmp ne i8* %60, null
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.103

land.lhs.true.100:                                ; preds = %if.end.98
  %61 = load i8*, i8** @inname, align 8
  %62 = load i8*, i8** %name.addr, align 8
  %cmp101 = icmp ne i8* %61, %62
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %land.lhs.true.100
  %63 = load i8*, i8** @inname, align 8
  call void @free(i8* %63) #6
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %land.lhs.true.100, %if.end.98
  %64 = load i8*, i8** @outname, align 8
  %tobool104 = icmp ne i8* %64, null
  br i1 %tobool104, label %land.lhs.true.105, label %if.end.108

land.lhs.true.105:                                ; preds = %if.end.103
  %65 = load i8*, i8** @outname, align 8
  %66 = load i8*, i8** %name.addr, align 8
  %cmp106 = icmp ne i8* %65, %66
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.105
  %67 = load i8*, i8** @outname, align 8
  call void @free(i8* %67) #6
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %land.lhs.true.105, %if.end.103
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.end.75
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i8* @endname(i8* %name) #1 {
entry:
  %name.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i8* @strrchr(i8* %1, i32 47) #8
  store i8* %call, i8** %s, align 8
  %2 = load i8*, i8** %s, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  store i8* %add.ptr, i8** %name.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %6 = load i8*, i8** %name.addr, align 8
  ret i8* %6
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare i32 @printf(i8*, ...) #0

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @open_input(i8* %name, %struct.stat* %st) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %st.addr = alloca %struct.stat*, align 8
  %f = alloca %struct.fmtdesc*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8
  store %struct.fmtdesc* %0, %struct.fmtdesc** %f, align 8
  %1 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 2
  store i64 0, i64* %st_nlink, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** @inname, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** @in, align 8
  br label %if.end.26

if.else:                                          ; preds = %entry
  %4 = load i32, i32* @f_decode, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %5 = load i8*, i8** %name.addr, align 8
  %call = call i8* @codename(i8* %5)
  store i8* %call, i8** @inname, align 8
  br label %if.end.12

if.else.3:                                        ; preds = %if.else
  %6 = load i32, i32* @f_cat, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.3
  %7 = load i8*, i8** %name.addr, align 8
  %call5 = call i8* @suffix(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** @progname, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i32 0, i32 0), i8* %9, i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.else.3
  %11 = load i8*, i8** %name.addr, align 8
  %call9 = call i64 @strlen(i8* %11) #8
  %add = add i64 %call9, 1
  %call10 = call i8* @emalloc(i64 %add)
  %12 = load i8*, i8** %name.addr, align 8
  %call11 = call i8* @strcpy(i8* %call10, i8* %12) #6
  store i8* %call11, i8** @inname, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.2
  %13 = load i8*, i8** @inname, align 8
  %call13 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  store %struct._IO_FILE* %call13, %struct._IO_FILE** @in, align 8
  %tobool14 = icmp ne %struct._IO_FILE* %call13, null
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %14 = load i8*, i8** @inname, align 8
  call void @perror(i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** @progname, align 8
  %17 = load i8*, i8** @inname, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0), i8* %16, i8* %17)
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %18 = load i8*, i8** @inname, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %20 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %call18 = call i32 @okay_as_input(i8* %18, %struct._IO_FILE* %19, %struct.stat* %20)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %21 = load %struct.fmtdesc*, %struct.fmtdesc** %f, align 8
  %tobool22 = icmp ne %struct.fmtdesc* %21, null
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %22 = load i8*, i8** @inname, align 8
  %call24 = call %struct.fmtdesc* @grok_format(i8* %22)
  store %struct.fmtdesc* %call24, %struct.fmtdesc** %f, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  %23 = load %struct.fmtdesc*, %struct.fmtdesc** %f, align 8
  %tobool27 = icmp ne %struct.fmtdesc* %23, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %24 = load %struct.fmtdesc*, %struct.fmtdesc** %f, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fmtdesc* [ %24, %cond.true ], [ @f_ulaw, %cond.false ]
  call void @prepare_io(%struct.fmtdesc* %cond)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.20, %if.then.15, %if.then.7
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @open_output(i8* %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %outfd = alloca i32, align 4
  %o = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @f_cat, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @out, align 8
  store i8* null, i8** @outname, align 8
  br label %if.end.30

if.else:                                          ; preds = %lor.lhs.false
  store i32 -1, i32* %outfd, align 4
  %3 = load i32, i32* @f_decode, align 4
  %tobool2 = icmp ne i32 %3, 0
  %cond = select i1 %tobool2, i8* (i8*)* @plainname, i8* (i8*)* @codename
  %4 = load i8*, i8** %name.addr, align 8
  %call = call i8* %cond(i8* %4)
  store i8* %call, i8** %o, align 8
  %5 = load i8*, i8** %o, align 8
  %call3 = call i32 @length_okay(i8* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %6 = load i8*, i8** %o, align 8
  %call6 = call i32 (i8*, i32, ...) @open(i8* %6, i32 193, i32 438)
  store i32 %call6, i32* %outfd, align 4
  %cmp = icmp sge i32 %call6, 0
  br i1 %cmp, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end
  %7 = load i32, i32* %outfd, align 4
  %call8 = call %struct._IO_FILE* @fdopen(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0)) #6
  store %struct._IO_FILE* %call8, %struct._IO_FILE** @out, align 8
  br label %if.end.21

if.else.9:                                        ; preds = %if.end
  %call10 = call i32* @__errno_location() #9
  %8 = load i32, i32* %call10, align 4
  %cmp11 = icmp ne i32 %8, 17
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  br label %if.end.20

if.else.13:                                       ; preds = %if.else.9
  %9 = load i8*, i8** %o, align 8
  %call14 = call i32 @ok_to_replace(i8* %9)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else.13
  %10 = load i8*, i8** %o, align 8
  %call17 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  store %struct._IO_FILE* %call17, %struct._IO_FILE** @out, align 8
  br label %if.end.19

if.else.18:                                       ; preds = %if.else.13
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %tobool22 = icmp ne %struct._IO_FILE* %11, null
  br i1 %tobool22, label %if.end.29, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %12 = load i8*, i8** %o, align 8
  call void @perror(i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** @progname, align 8
  %15 = load i8*, i8** %o, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i32 0, i32 0), i8* %14, i8* %15)
  %16 = load i32, i32* %outfd, align 4
  %cmp25 = icmp sge i32 %16, 0
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %17 = load i32, i32* %outfd, align 4
  %call27 = call i32 @close(i32 %17)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.23
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.21
  %18 = load i8*, i8** %o, align 8
  store i8* %18, i8** @outname, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.end.28, %if.else.18, %if.then.5
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @process_decode() #1 {
entry:
  %retval = alloca i32, align 4
  %r = alloca %struct.gsm_state*, align 8
  %s = alloca [33 x i8], align 16
  %d = alloca [160 x i16], align 16
  %cc = alloca i32, align 4
  %call = call %struct.gsm_state* @gsm_create()
  store %struct.gsm_state* %call, %struct.gsm_state** %r, align 8
  %tobool = icmp ne %struct.gsm_state* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** @progname, align 8
  call void @perror(i8* %0)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  %call1 = call i32 @gsm_option(%struct.gsm_state* %1, i32 2, i32* @f_fast)
  %2 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  %call2 = call i32 @gsm_option(%struct.gsm_state* %2, i32 1, i32* @f_verbose)
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %if.end
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %s, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call3 = call i64 @fread(i8* %arraydecay, i64 1, i64 33, %struct._IO_FILE* %3)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %cc, align 4
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %cc, align 4
  %conv5 = sext i32 %4 to i64
  %cmp6 = icmp ne i64 %conv5, 33
  br i1 %cmp6, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %while.body
  %5 = load i32, i32* %cc, align 4
  %cmp9 = icmp sge i32 %5, 0
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.then.8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** @progname, align 8
  %8 = load i32, i32* %cc, align 4
  %conv12 = sext i32 %8 to i64
  %sub = sub i64 33, %conv12
  %9 = load i32, i32* %cc, align 4
  %conv13 = sext i32 %9 to i64
  %sub14 = sub i64 33, %conv13
  %cmp15 = icmp eq i64 %sub14, 1
  %conv16 = zext i1 %cmp15 to i32
  %idx.ext = sext i32 %conv16 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i64 %idx.ext
  %10 = load i8*, i8** @inname, align 8
  %tobool17 = icmp ne i8* %10, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %11 = load i8*, i8** @inname, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false ]
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.56, i32 0, i32 0), i8* %7, i64 %sub, i8* %add.ptr, i8* %cond)
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end, %if.then.8
  %12 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  call void @gsm_destroy(%struct.gsm_state* %12)
  %call20 = call i32* @__errno_location() #9
  store i32 0, i32* %call20, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %while.body
  %13 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  %arraydecay22 = getelementptr inbounds [33 x i8], [33 x i8]* %s, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [160 x i16], [160 x i16]* %d, i32 0, i32 0
  %call24 = call i32 @gsm_decode(%struct.gsm_state* %13, i8* %arraydecay22, i16* %arraydecay23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %if.end.21
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8*, i8** @progname, align 8
  %16 = load i8*, i8** @inname, align 8
  %tobool27 = icmp ne i8* %16, null
  br i1 %tobool27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.then.26
  %17 = load i8*, i8** @inname, align 8
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.then.26
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i8* [ %17, %cond.true.28 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.29 ]
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0), i8* %15, i8* %cond31)
  %18 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  call void @gsm_destroy(%struct.gsm_state* %18)
  %call33 = call i32* @__errno_location() #9
  store i32 0, i32* %call33, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.21
  %19 = load i32 (i16*)*, i32 (i16*)** @output, align 8
  %arraydecay35 = getelementptr inbounds [160 x i16], [160 x i16]* %d, i32 0, i32 0
  %call36 = call i32 %19(i16* %arraydecay35)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.34
  %20 = load i8*, i8** @outname, align 8
  call void @perror(i8* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i8*, i8** @progname, align 8
  %23 = load i8*, i8** @outname, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0), i8* %22, i8* %23)
  %24 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  call void @gsm_destroy(%struct.gsm_state* %24)
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.34
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* %cc, align 4
  %cmp42 = icmp slt i32 %25, 0
  br i1 %cmp42, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %while.end
  %26 = load i8*, i8** @inname, align 8
  %tobool45 = icmp ne i8* %26, null
  br i1 %tobool45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %if.then.44
  %27 = load i8*, i8** @inname, align 8
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.then.44
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.46
  %cond49 = phi i8* [ %27, %cond.true.46 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.47 ]
  call void @perror(i8* %cond49)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i8*, i8** @progname, align 8
  %30 = load i8*, i8** @inname, align 8
  %tobool50 = icmp ne i8* %30, null
  br i1 %tobool50, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.end.48
  %31 = load i8*, i8** @inname, align 8
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end.48
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.51
  %cond54 = phi i8* [ %31, %cond.true.51 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.52 ]
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i8* %29, i8* %cond54)
  %32 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  call void @gsm_destroy(%struct.gsm_state* %32)
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %while.end
  %33 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  call void @gsm_destroy(%struct.gsm_state* %33)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %cond.end.53, %if.then.39, %cond.end.30, %if.end.19, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @process_encode() #1 {
entry:
  %retval = alloca i32, align 4
  %r = alloca %struct.gsm_state*, align 8
  %s = alloca [160 x i16], align 16
  %d = alloca [33 x i8], align 16
  %cc = alloca i32, align 4
  %call = call %struct.gsm_state* @gsm_create()
  store %struct.gsm_state* %call, %struct.gsm_state** %r, align 8
  %tobool = icmp ne %struct.gsm_state* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** @progname, align 8
  call void @perror(i8* %0)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  %call1 = call i32 @gsm_option(%struct.gsm_state* %1, i32 2, i32* @f_fast)
  %2 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  %call2 = call i32 @gsm_option(%struct.gsm_state* %2, i32 1, i32* @f_verbose)
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end
  %3 = load i32 (i16*)*, i32 (i16*)** @input, align 8
  %arraydecay = getelementptr inbounds [160 x i16], [160 x i16]* %s, i32 0, i32 0
  %call3 = call i32 %3(i16* %arraydecay)
  store i32 %call3, i32* %cc, align 4
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %cc, align 4
  %conv = sext i32 %4 to i64
  %cmp4 = icmp ult i64 %conv, 160
  br i1 %cmp4, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %while.body
  %arraydecay7 = getelementptr inbounds [160 x i16], [160 x i16]* %s, i32 0, i32 0
  %5 = load i32, i32* %cc, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay7, i64 %idx.ext
  %6 = bitcast i16* %add.ptr to i8*
  %7 = load i32, i32* %cc, align 4
  %conv8 = sext i32 %7 to i64
  %mul = mul i64 %conv8, 2
  %sub = sub i64 320, %mul
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %sub, i32 1, i1 false)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %while.body
  %8 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  %arraydecay10 = getelementptr inbounds [160 x i16], [160 x i16]* %s, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [33 x i8], [33 x i8]* %d, i32 0, i32 0
  call void @gsm_encode(%struct.gsm_state* %8, i16* %arraydecay10, i8* %arraydecay11)
  %arraydecay12 = getelementptr inbounds [33 x i8], [33 x i8]* %d, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call13 = call i64 @fwrite(i8* %arraydecay12, i64 33, i64 1, %struct._IO_FILE* %9)
  %cmp14 = icmp ne i64 %call13, 1
  br i1 %cmp14, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.end.9
  %10 = load i8*, i8** @outname, align 8
  %tobool17 = icmp ne i8* %10, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  %11 = load i8*, i8** @outname, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %cond.false ]
  call void @perror(i8* %cond)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** @progname, align 8
  %14 = load i8*, i8** @outname, align 8
  %tobool18 = icmp ne i8* %14, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end
  %15 = load i8*, i8** @outname, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i8* [ %15, %cond.true.19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %cond.false.20 ]
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0), i8* %13, i8* %cond22)
  %16 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  call void @gsm_destroy(%struct.gsm_state* %16)
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32, i32* %cc, align 4
  %cmp25 = icmp slt i32 %17, 0
  br i1 %cmp25, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %while.end
  %18 = load i8*, i8** @inname, align 8
  %tobool28 = icmp ne i8* %18, null
  br i1 %tobool28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %if.then.27
  %19 = load i8*, i8** @inname, align 8
  br label %cond.end.31

cond.false.30:                                    ; preds = %if.then.27
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i8* [ %19, %cond.true.29 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.30 ]
  call void @perror(i8* %cond32)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** @progname, align 8
  %22 = load i8*, i8** @inname, align 8
  %tobool33 = icmp ne i8* %22, null
  br i1 %tobool33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.end.31
  %23 = load i8*, i8** @inname, align 8
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end.31
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi i8* [ %23, %cond.true.34 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.35 ]
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i8* %21, i8* %cond37)
  %24 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  call void @gsm_destroy(%struct.gsm_state* %24)
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %while.end
  %25 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8
  call void @gsm_destroy(%struct.gsm_state* %25)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %cond.end.36, %cond.end.21, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @fflush(%struct._IO_FILE*) #0

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare void @perror(i8*) #0

; Function Attrs: nounwind uwtable
define internal void @update_times() #1 {
entry:
  %ut = alloca [2 x i64], align 16
  %0 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 2), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.4

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @outname, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 11, i32 0), align 8
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ut, i32 0, i64 0
  store i64 %2, i64* %arrayidx, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 12, i32 0), align 8
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %ut, i32 0, i64 1
  store i64 %3, i64* %arrayidx3, align 8
  %4 = load i8*, i8** @outname, align 8
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %ut, i32 0, i32 0
  %5 = bitcast i64* %arraydecay to %struct.utimbuf*
  %call = call i32 @utime(i8* %4, %struct.utimbuf* %5) #6
  br label %if.end.4

if.end.4:                                         ; preds = %if.then, %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_mode() #1 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 2), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.5

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %1) #6
  %2 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 3), align 4
  %and = and i32 %2, 4095
  %call1 = call i32 @fchmod(i32 %call, i32 %and) #6
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %3 = load i8*, i8** @outname, align 8
  call void @perror(i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @progname, align 8
  %6 = load i8*, i8** @outname, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i32 0, i32 0), i8* %5, i8* %6)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_own() #1 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 2), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %1) #6
  %2 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 4), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 5), align 4
  %call1 = call i32 @fchown(i32 %call, i32 %2, i32 %3) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #0

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define internal i8* @codename(i8* %name) #1 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i8* @normalname(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @suffix(i8* %name, i8* %suf) #1 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %suf.addr = alloca i8*, align 8
  %nlen = alloca i64, align 8
  %slen = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %suf, i8** %suf.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  store i64 %call, i64* %nlen, align 8
  %1 = load i8*, i8** %suf.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #8
  store i64 %call1, i64* %slen, align 8
  %2 = load i64, i64* %slen, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %nlen, align 8
  %4 = load i64, i64* %slen, align 8
  %cmp = icmp ule i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, i64* %nlen, align 8
  %6 = load i64, i64* %slen, align 8
  %sub = sub i64 %5, %6
  %7 = load i8*, i8** %name.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %sub
  store i8* %add.ptr, i8** %name.addr, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %9 = load i8*, i8** %suf.addr, align 8
  %10 = load i64, i64* %slen, align 8
  %call2 = call i32 @memcmp(i8* %8, i8* %9, i64 %10) #8
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load i8*, i8** %name.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %11, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @emalloc(i64 %len) #1 {
entry:
  %len.addr = alloca i64, align 8
  %s = alloca i8*, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #6
  store i8* %call, i8** %s, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progname, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0), i8* %2, i64 %3)
  call void @onintr()
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %s, align 8
  ret i8* %4
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #0

; Function Attrs: nounwind uwtable
define internal i32 @okay_as_input(i8* %name, %struct._IO_FILE* %f, %struct.stat* %st) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %st.addr = alloca %struct.stat*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %0) #6
  %1 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %call1 = call i32 @fstat(i32 %call, %struct.stat* %1) #6
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  call void @perror(i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progname, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i8* %4, i8* %5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %7 = load i32, i32* %st_mode, align 4
  %and = and i32 %7, 61440
  %cmp3 = icmp eq i32 %and, 32768
  br i1 %cmp3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** @progname, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i32 0, i32 0), i8* %9, i8* %10)
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 2
  %12 = load i64, i64* %st_nlink, align 8
  %cmp7 = icmp ugt i64 %12, 1
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.6
  %13 = load i32, i32* @f_cat, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end.15, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* @f_precious, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** @progname, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_nlink11 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 2
  %19 = load i64, i64* %st_nlink11, align 8
  %sub = sub i64 %19, 1
  %20 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_nlink12 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 2
  %21 = load i64, i64* %st_nlink12, align 8
  %cmp13 = icmp ule i64 %21, 2
  %conv = zext i1 %cmp13 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i64 %idx.ext
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i32 0, i32 0), i8* %16, i8* %17, i64 %sub, i8* %add.ptr)
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.8, %land.lhs.true, %if.end.6
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.10, %if.then.4, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal %struct.fmtdesc* @grok_format(i8* %name) #1 {
entry:
  %retval = alloca %struct.fmtdesc*, align 8
  %name.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  %f = alloca %struct.fmtdesc**, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i8* @plainname(i8* %1)
  store i8* %call, i8** %c, align 8
  store %struct.fmtdesc** getelementptr inbounds ([5 x %struct.fmtdesc*], [5 x %struct.fmtdesc*]* @alldescs, i32 0, i32 0), %struct.fmtdesc*** %f, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8
  %3 = load %struct.fmtdesc*, %struct.fmtdesc** %2, align 8
  %tobool1 = icmp ne %struct.fmtdesc* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8
  %5 = load %struct.fmtdesc*, %struct.fmtdesc** %4, align 8
  %suffix = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %5, i32 0, i32 2
  %6 = load i8*, i8** %suffix, align 8
  %tobool2 = icmp ne i8* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8
  %8 = load %struct.fmtdesc*, %struct.fmtdesc** %7, align 8
  %suffix3 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %8, i32 0, i32 2
  %9 = load i8*, i8** %suffix3, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %11 = load i8*, i8** %c, align 8
  %12 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8
  %13 = load %struct.fmtdesc*, %struct.fmtdesc** %12, align 8
  %suffix6 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %13, i32 0, i32 2
  %14 = load i8*, i8** %suffix6, align 8
  %call7 = call i8* @suffix(i8* %11, i8* %14)
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.5
  %15 = load i8*, i8** %c, align 8
  call void @free(i8* %15) #6
  %16 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8
  %17 = load %struct.fmtdesc*, %struct.fmtdesc** %16, align 8
  store %struct.fmtdesc* %17, %struct.fmtdesc** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.5, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8
  %incdec.ptr = getelementptr inbounds %struct.fmtdesc*, %struct.fmtdesc** %18, i32 1
  store %struct.fmtdesc** %incdec.ptr, %struct.fmtdesc*** %f, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %c, align 8
  call void @free(i8* %19) #6
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %entry
  store %struct.fmtdesc* null, %struct.fmtdesc** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9
  %20 = load %struct.fmtdesc*, %struct.fmtdesc** %retval
  ret %struct.fmtdesc* %20
}

; Function Attrs: nounwind uwtable
define internal void @prepare_io(%struct.fmtdesc* %desc) #1 {
entry:
  %desc.addr = alloca %struct.fmtdesc*, align 8
  store %struct.fmtdesc* %desc, %struct.fmtdesc** %desc.addr, align 8
  %0 = load %struct.fmtdesc*, %struct.fmtdesc** %desc.addr, align 8
  %output = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %0, i32 0, i32 6
  %1 = load i32 (i16*)*, i32 (i16*)** %output, align 8
  store i32 (i16*)* %1, i32 (i16*)** @output, align 8
  %2 = load %struct.fmtdesc*, %struct.fmtdesc** %desc.addr, align 8
  %input = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %2, i32 0, i32 5
  %3 = load i32 (i16*)*, i32 (i16*)** %input, align 8
  store i32 (i16*)* %3, i32 (i16*)** @input, align 8
  %4 = load %struct.fmtdesc*, %struct.fmtdesc** %desc.addr, align 8
  %init_input = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %4, i32 0, i32 3
  %5 = load i32 ()*, i32 ()** %init_input, align 8
  store i32 ()* %5, i32 ()** @init_input, align 8
  %6 = load %struct.fmtdesc*, %struct.fmtdesc** %desc.addr, align 8
  %init_output = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %6, i32 0, i32 4
  %7 = load i32 ()*, i32 ()** %init_output, align 8
  store i32 ()* %7, i32 ()** @init_output, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @normalname(i8* %name, i8* %want, i8* %cut) #1 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %want.addr = alloca i8*, align 8
  %cut.addr = alloca i8*, align 8
  %maxlen = alloca i64, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %want, i8** %want.addr, align 8
  store i8* %cut, i8** %cut.addr, align 8
  store i8* null, i8** %p, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %p, align 8
  store i8* %1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %2) #8
  %add = add i64 %call, 1
  %3 = load i8*, i8** %want.addr, align 8
  %call1 = call i64 @strlen(i8* %3) #8
  %add2 = add i64 %add, %call1
  %4 = load i8*, i8** %cut.addr, align 8
  %call3 = call i64 @strlen(i8* %4) #8
  %add4 = add i64 %add2, %call3
  store i64 %add4, i64* %maxlen, align 8
  %5 = load i64, i64* %maxlen, align 8
  %call5 = call i8* @emalloc(i64 %5)
  %6 = load i8*, i8** %name.addr, align 8
  %call6 = call i8* @strcpy(i8* %call5, i8* %6) #6
  store i8* %call6, i8** %p, align 8
  %7 = load i8*, i8** %p, align 8
  %8 = load i8*, i8** %cut.addr, align 8
  %call7 = call i8* @suffix(i8* %7, i8* %8)
  store i8* %call7, i8** %s, align 8
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %9 = load i8*, i8** %s, align 8
  %10 = load i8*, i8** %want.addr, align 8
  %call10 = call i8* @strcpy(i8* %9, i8* %10) #6
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %11 = load i8*, i8** %want.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %tobool11 = icmp ne i32 %conv, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.else
  %13 = load i8*, i8** %p, align 8
  %14 = load i8*, i8** %want.addr, align 8
  %call12 = call i8* @suffix(i8* %13, i8* %14)
  %tobool13 = icmp ne i8* %call12, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %15 = load i8*, i8** %p, align 8
  %16 = load i8*, i8** %want.addr, align 8
  %call15 = call i8* @strcat(i8* %15, i8* %16) #6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %land.lhs.true, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.9
  %17 = load i8*, i8** %p, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i8* @plainname(i8* %name) #1 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i8* @normalname(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @length_okay(i8* %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %max_filename_length = alloca i64, align 8
  %end = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 0, i64* %max_filename_length, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i8* @endname(i8* %1)
  store i8* %call, i8** %end, align 8
  %2 = load i64, i64* %max_filename_length, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %end, align 8
  %call1 = call i64 @strlen(i8* %3) #8
  %4 = load i64, i64* %max_filename_length, align 8
  %cmp2 = icmp ugt i64 %call1, %4
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** @progname, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %call4 = call i8* @endname(i8* %7)
  %8 = load i64, i64* %max_filename_length, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.53, i32 0, i32 0), i8* %6, i8* %call4, i64 %8)
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @open(i8*, i32, ...) #0

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ok_to_replace(i8* %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %reply = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* @f_force, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %1) #6
  %call1 = call i32 @isatty(i32 %call) #6
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.54, i32 0, i32 0), i8* %3, i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %5)
  %call7 = call i32 @getchar()
  store i32 %call7, i32* %reply, align 4
  store i32 %call7, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %6 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %6, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i32, i32* %c, align 4
  %cmp8 = icmp ne i32 %7, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call9 = call i32 @getchar()
  store i32 %call9, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load i32, i32* %reply, align 4
  %cmp10 = icmp eq i32 %9, 121
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %for.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.3, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @close(i32) #0

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

declare i32 @getchar() #0

declare %struct.gsm_state* @gsm_create() #0

declare i32 @gsm_option(%struct.gsm_state*, i32, i32*) #0

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #0

declare void @gsm_destroy(%struct.gsm_state*) #0

declare i32 @gsm_decode(%struct.gsm_state*, i8*, i16*) #0

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare void @gsm_encode(%struct.gsm_state*, i16*, i8*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare i32 @utime(i8*, %struct.utimbuf*) #2

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #2

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) #2

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
