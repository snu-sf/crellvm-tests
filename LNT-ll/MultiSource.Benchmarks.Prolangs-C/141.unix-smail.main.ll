; ModuleID = './MultiSource.Benchmarks.Prolangs-C/141.unix-smail.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@exitstat = global i32 0, align 4
@debug = global i32 0, align 4
@handle = global i32 0, align 4
@routing = global i32 0, align 4
@hostname = global [512 x i8] zeroinitializer, align 16
@hostdomain = global [512 x i8] zeroinitializer, align 16
@hostuucp = global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"/usr/lib/uucp/paths\00", align 1
@pathfile = global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), align 8
@uuxargs = global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"/usr/lib/aliases\00", align 1
@aliasfile = global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"/usr/lib/fullnames\00", align 1
@fnlist = global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), align 8
@queuecost = global i32 100, align 4
@from_addr = global i8* null, align 8
@maxnoqueue = global i32 2, align 4
@getcost = global i32 1, align 4
@spoolfile = global i8* null, align 8
@spoolmaster = global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"cdvArRlLH:h:p:u:q:a:n:m:f:F:\00", align 1
@optarg = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"valid flags are %s\0A\00", align 1
@optind = external global i32, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"usage: %s [flags] address...\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"smail\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@spoolfp = common global %struct._IO_FILE* null, align 8

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %hostv = alloca [500 x i8*], align 16
  %userv = alloca [500 x i8*], align 16
  %costv = alloca [500 x i32], align 16
  %formv = alloca [500 x i32], align 16
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %printaddr = alloca i32, align 4
  %nargc = alloca i32, align 4
  %nargv = alloca i8**, align 8
  %optstr = alloca i8*, align 8
  %i = alloca i32, align 4
  %abuf = alloca [512 x i8], align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %printaddr, align 4
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8** %optstr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @strrchr(i8* %1, i32 47) #6
  store i8* %call, i8** %p, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx1, align 8
  store i8* %3, i8** %p, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp ne i32 %conv, 114
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* @handle, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.5
  %7 = load i32, i32* %argc.addr, align 4
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i8*, i8** %optstr, align 8
  %call6 = call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 %7, i8** %8, i8* %9)
  store i32 %call6, i32* %c, align 4
  %cmp7 = icmp ne i32 %call6, -1
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %c, align 4
  switch i32 %10, label %sw.default [
    i32 100, label %sw.bb
    i32 118, label %sw.bb.9
    i32 65, label %sw.bb.10
    i32 70, label %sw.bb.11
    i32 114, label %sw.bb.12
    i32 82, label %sw.bb.13
    i32 108, label %sw.bb.14
    i32 76, label %sw.bb.15
    i32 102, label %sw.bb.16
    i32 112, label %sw.bb.17
    i32 117, label %sw.bb.18
    i32 97, label %sw.bb.19
    i32 110, label %sw.bb.20
    i32 72, label %sw.bb.21
    i32 104, label %sw.bb.23
    i32 109, label %sw.bb.25
    i32 99, label %sw.bb.33
    i32 113, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %while.body
  store i32 2, i32* @debug, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  store i32 1, i32* @debug, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  store i32 1, i32* %printaddr, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body
  %11 = load i8*, i8** @optarg, align 8
  store i8* %11, i8** @from_addr, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body
  store i32 1, i32* @routing, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %while.body
  store i32 2, i32* @routing, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body
  store i32 1, i32* @handle, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  store i32 2, i32* @handle, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %while.body
  %12 = load i8*, i8** @optarg, align 8
  store i8* %12, i8** @spoolfile, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %while.body
  %13 = load i8*, i8** @optarg, align 8
  store i8* %13, i8** @pathfile, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %while.body
  %14 = load i8*, i8** @optarg, align 8
  store i8* %14, i8** @uuxargs, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %while.body
  %15 = load i8*, i8** @optarg, align 8
  store i8* %15, i8** @aliasfile, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %while.body
  %16 = load i8*, i8** @optarg, align 8
  store i8* %16, i8** @fnlist, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %while.body
  %17 = load i8*, i8** @optarg, align 8
  %call22 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i32 0, i32 0), i8* %17) #7
  br label %sw.epilog

sw.bb.23:                                         ; preds = %while.body
  %18 = load i8*, i8** @optarg, align 8
  %call24 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i32 0, i32 0), i8* %18) #7
  br label %sw.epilog

sw.bb.25:                                         ; preds = %while.body
  %19 = load i8*, i8** @optarg, align 8
  %20 = load i8, i8* %19, align 1
  %conv26 = sext i8 %20 to i32
  %idxprom = sext i32 %conv26 to i64
  %call27 = call i16** @__ctype_b_loc() #8
  %21 = load i16*, i16** %call27, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %21, i64 %idxprom
  %22 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %22 to i32
  %and = and i32 %conv29, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %sw.bb.25
  %23 = load i8*, i8** @optarg, align 8
  %call31 = call i32 @atoi(i8* %23) #6
  store i32 %call31, i32* @maxnoqueue, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %sw.bb.25
  br label %sw.epilog

sw.bb.33:                                         ; preds = %while.body
  store i32 1, i32* @getcost, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %while.body
  %24 = load i8*, i8** @optarg, align 8
  %25 = load i8, i8* %24, align 1
  %conv35 = sext i8 %25 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %call37 = call i16** @__ctype_b_loc() #8
  %26 = load i16*, i16** %call37, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %26, i64 %idxprom36
  %27 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %27 to i32
  %and40 = and i32 %conv39, 2048
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %sw.bb.34
  %28 = load i8*, i8** @optarg, align 8
  %call43 = call i32 @atoi(i8* %28) #6
  store i32 %call43, i32* @queuecost, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %sw.bb.34
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i8*, i8** %optstr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* %30)
  call void @exit(i32 64) #9
  unreachable

sw.epilog:                                        ; preds = %if.end.44, %sw.bb.33, %if.end.32, %sw.bb.23, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load i32, i32* %argc.addr, align 4
  %32 = load i32, i32* @optind, align 4
  %cmp46 = icmp sle i32 %31, %32
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %while.end
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 64) #9
  unreachable

if.end.50:                                        ; preds = %while.end
  %call51 = call i32 (...) @getmynames()
  %34 = load i32, i32* %argc.addr, align 4
  %35 = load i32, i32* @optind, align 4
  %sub = sub nsw i32 %34, %35
  store i32 %sub, i32* %nargc, align 4
  %36 = load i32, i32* %printaddr, align 4
  %cmp52 = icmp eq i32 %36, 0
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.50
  %37 = load i32, i32* %nargc, align 4
  %38 = load i32, i32* @optind, align 4
  %idxprom55 = sext i32 %38 to i64
  %39 = load i8**, i8*** %argv.addr, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %39, i64 %idxprom55
  call void (i32, i8**, ...) bitcast (void (...)* @spool to void (i32, i8**, ...)*)(i32 %37, i8** %arrayidx56)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.end.50
  %40 = load i32, i32* @optind, align 4
  %idxprom58 = sext i32 %40 to i64
  %41 = load i8**, i8*** %argv.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %41, i64 %idxprom58
  %call60 = call i8** (i32*, i8**, ...) bitcast (i8** (...)* @alias to i8** (i32*, i8**, ...)*)(i32* %nargc, i8** %arrayidx59)
  store i8** %call60, i8*** %nargv, align 8
  %42 = load i32, i32* %nargc, align 4
  %43 = load i8**, i8*** %nargv, align 8
  %arraydecay = getelementptr inbounds [500 x i8*], [500 x i8*]* %hostv, i32 0, i32 0
  %arraydecay61 = getelementptr inbounds [500 x i8*], [500 x i8*]* %userv, i32 0, i32 0
  %arraydecay62 = getelementptr inbounds [500 x i32], [500 x i32]* %formv, i32 0, i32 0
  %arraydecay63 = getelementptr inbounds [500 x i32], [500 x i32]* %costv, i32 0, i32 0
  %call64 = call i32 (i32, i8**, i8**, i8**, i32*, i32*, ...) bitcast (i32 (...)* @map to i32 (i32, i8**, i8**, i8**, i32*, i32*, ...)*)(i32 %42, i8** %43, i8** %arraydecay, i8** %arraydecay61, i32* %arraydecay62, i32* %arraydecay63)
  %44 = load i32, i32* %printaddr, align 4
  %tobool65 = icmp ne i32 %44, 0
  br i1 %tobool65, label %if.then.66, label %if.end.97

if.then.66:                                       ; preds = %if.end.57
  %45 = load i32, i32* %nargc, align 4
  %sub67 = sub nsw i32 %45, 1
  store i32 %sub67, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.66
  %46 = load i32, i32* %i, align 4
  %cmp68 = icmp sge i32 %46, 0
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %47 to i64
  %arrayidx71 = getelementptr inbounds [500 x i32], [500 x i32]* %formv, i32 0, i64 %idxprom70
  %48 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp eq i32 %48, 0
  br i1 %cmp72, label %if.then.74, label %if.else.79

if.then.74:                                       ; preds = %for.body
  %arraydecay75 = getelementptr inbounds [512 x i8], [512 x i8]* %abuf, i32 0, i32 0
  %49 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %49 to i64
  %50 = load i8**, i8*** %nargv, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %50, i64 %idxprom76
  %51 = load i8*, i8** %arrayidx77, align 8
  %call78 = call i8* @strcpy(i8* %arraydecay75, i8* %51) #7
  br label %if.end.88

if.else.79:                                       ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %52 to i64
  %arrayidx81 = getelementptr inbounds [500 x i8*], [500 x i8*]* %hostv, i32 0, i64 %idxprom80
  %53 = load i8*, i8** %arrayidx81, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %54 to i64
  %arrayidx83 = getelementptr inbounds [500 x i8*], [500 x i8*]* %userv, i32 0, i64 %idxprom82
  %55 = load i8*, i8** %arrayidx83, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %56 to i64
  %arrayidx85 = getelementptr inbounds [500 x i32], [500 x i32]* %formv, i32 0, i64 %idxprom84
  %57 = load i32, i32* %arrayidx85, align 4
  %arraydecay86 = getelementptr inbounds [512 x i8], [512 x i8]* %abuf, i32 0, i32 0
  %call87 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @build to i32 (i8*, i8*, i32, i8*, ...)*)(i8* %53, i8* %55, i32 %57, i8* %arraydecay86)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.79, %if.then.74
  %arraydecay89 = getelementptr inbounds [512 x i8], [512 x i8]* %abuf, i32 0, i32 0
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call90 = call i32 @fputs(i8* %arraydecay89, %struct._IO_FILE* %58)
  %59 = load i32, i32* %i, align 4
  %cmp91 = icmp ne i32 %59, 0
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.end.88
  %call94 = call i32 @putchar(i32 32)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.88
  br label %for.inc

for.inc:                                          ; preds = %if.end.95
  %60 = load i32, i32* %i, align 4
  %dec = add nsw i32 %60, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call96 = call i32 @putchar(i32 10)
  call void @exit(i32 0) #9
  unreachable

if.end.97:                                        ; preds = %if.end.57
  %61 = load i32, i32* %nargc, align 4
  %arraydecay98 = getelementptr inbounds [500 x i8*], [500 x i8*]* %hostv, i32 0, i32 0
  %arraydecay99 = getelementptr inbounds [500 x i8*], [500 x i8*]* %userv, i32 0, i32 0
  %arraydecay100 = getelementptr inbounds [500 x i32], [500 x i32]* %formv, i32 0, i32 0
  %arraydecay101 = getelementptr inbounds [500 x i32], [500 x i32]* %costv, i32 0, i32 0
  %call102 = call i32 (i32, i8**, i8**, i32*, i32*, ...) bitcast (i32 (...)* @deliver to i32 (i32, i8**, i8**, i32*, i32*, ...)*)(i32 %61, i8** %arraydecay98, i8** %arraydecay99, i32* %arraydecay100, i32* %arraydecay101)
  %62 = load i32, i32* @exitstat, align 4
  ret i32 %62
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #1

declare i32 @getopt(...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i32 @getmynames(...) #2

declare void @spool(...) #2

declare i8** @alias(...) #2

declare i32 @map(...) #2

declare i32 @build(...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i32 @putchar(i32) #2

declare i32 @deliver(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
