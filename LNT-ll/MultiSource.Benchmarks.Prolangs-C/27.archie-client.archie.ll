; ModuleID = './MultiSource.Benchmarks.Prolangs-C/27.archie-client.archie.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@rdgram_priority = global i32 0, align 4
@listflag = global i32 0, align 4
@sortflag = global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"archie.rutgers.edu\00", align 1
@main.archies = internal global [7 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [26 x i8] c"archie.ans.net (USA [NY])\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"archie.rutgers.edu (USA [NJ])\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"archie.sura.net (USA [MD])\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"archie.mcgill.ca (Canada)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"archie.funet.fi (Finland/Mainland Europe)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"archie.au (Australia)\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"archie.doc.ic.ac.uk (Great Britain/Ireland)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"archie\00", align 1
@progname = common global i8* null, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"ARCHIE_HOST\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Known archie servers:\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c" * %s is the default Archie server.\0A\00", align 1
@.str.13 = private unnamed_addr constant [98 x i8] c" * For the most up-to-date list, write to an Archie server and give it\0A   the command `servers'.\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [52 x i8] c"%s: -m option requires a value for max hits (>= 1)\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Client version %s based upon Prospero version %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Beta.4.2D\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"Usage: %s [-[cers][l][t][m#][h host][%s][%s#]%s string\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"       -c : case sensitive substring search\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"       -e : exact string match (default)\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"       -r : regular expression search\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"       -s : case insensitive substring search\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"       -l : list one match per line\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"       -t : sort inverted by date\0A\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"      -m# : specifies maximum number of hits to return (default %d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"  -h host : specifies server host\0A\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"       -%s : list known servers and current default\0A\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"      -%s# : specifies query niceness level (0-35765)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %cur_arg = alloca i8*, align 8
  %qtype = alloca i8, align 1
  %etype = alloca i8, align 1
  %eflag = alloca i32, align 4
  %max_hits = alloca i32, align 4
  %offset = alloca i32, align 4
  %exitflag = alloca i32, align 4
  %tmp = alloca i32, align 4
  %host = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 61, i8* %qtype, align 1
  store i8 61, i8* %etype, align 1
  store i32 0, i32* %eflag, align 4
  store i32 95, i32* %max_hits, align 4
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %exitflag, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8** %host, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8** @progname, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %1, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %call = call i8* (i8*, ...) bitcast (i8* (...)* @getenv to i8* (i8*, ...)*)(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call, i8** %p, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  store i8* %2, i8** %host, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %3 = load i32, i32* %argc.addr, align 4
  %cmp3 = icmp sgt i32 %3, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8**, i8*** %argv.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %7, label %while.body, label %while.end.123

while.body:                                       ; preds = %land.end
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %add.ptr, i8** %cur_arg, align 8
  %10 = load i8*, i8** %cur_arg, align 8
  %11 = load i8, i8* %10, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %while.body
  %12 = load i8*, i8** %cur_arg, align 8
  %13 = load i8, i8* %12, align 1
  %conv6 = sext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv6, 45
  br i1 %cmp7, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load i8*, i8** %cur_arg, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %add.ptr9, align 1
  %tobool10 = icmp ne i8 %15, 0
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true, %while.body
  %16 = load i32, i32* %argc.addr, align 4
  %dec12 = add nsw i32 %16, -1
  store i32 %dec12, i32* %argc.addr, align 4
  %17 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr13, i8*** %argv.addr, align 8
  br label %scandone

if.end.14:                                        ; preds = %land.lhs.true, %lor.lhs.false
  br label %while.cond.15

while.cond.15:                                    ; preds = %sw.epilog, %if.end.14
  %18 = load i8*, i8** %cur_arg, align 8
  %19 = load i8, i8* %18, align 1
  %tobool16 = icmp ne i8 %19, 0
  br i1 %tobool16, label %while.body.17, label %while.end

while.body.17:                                    ; preds = %while.cond.15
  %20 = load i8*, i8** %cur_arg, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr18, i8** %cur_arg, align 8
  %21 = load i8, i8* %20, align 1
  %conv19 = sext i8 %21 to i32
  switch i32 %conv19, label %sw.default [
    i32 76, label %sw.bb
    i32 78, label %sw.bb.27
    i32 99, label %sw.bb.59
    i32 101, label %sw.bb.60
    i32 104, label %sw.bb.62
    i32 108, label %sw.bb.66
    i32 48, label %sw.bb.68
    i32 49, label %sw.bb.68
    i32 50, label %sw.bb.68
    i32 51, label %sw.bb.68
    i32 52, label %sw.bb.68
    i32 53, label %sw.bb.68
    i32 54, label %sw.bb.68
    i32 55, label %sw.bb.68
    i32 56, label %sw.bb.68
    i32 57, label %sw.bb.68
    i32 109, label %sw.bb.70
    i32 111, label %sw.bb.100
    i32 114, label %sw.bb.114
    i32 115, label %sw.bb.115
    i32 116, label %sw.bb.116
    i32 118, label %sw.bb.117
  ]

sw.bb:                                            ; preds = %while.body.17
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %tmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %22 = load i32, i32* %tmp, align 4
  %cmp21 = icmp slt i32 %22, 7
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %tmp, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.archies, i32 0, i64 %idxprom
  %24 = load i8*, i8** %arrayidx23, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %tmp, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %tmp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.13, i32 0, i32 0))
  store i32 1, i32* %exitflag, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %while.body.17
  store i32 32765, i32* @rdgram_priority, align 4
  %26 = load i8*, i8** %cur_arg, align 8
  %27 = load i8, i8* %26, align 1
  %conv28 = sext i8 %27 to i32
  %tobool29 = icmp ne i32 %conv28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %sw.bb.27
  %28 = load i8*, i8** %cur_arg, align 8
  %29 = load i8, i8* %28, align 1
  %conv31 = sext i8 %29 to i32
  %call32 = call i8* @strchr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 %conv31) #5
  %tobool33 = icmp ne i8* %call32, null
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %land.lhs.true.30
  %30 = load i8*, i8** %cur_arg, align 8
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32* @rdgram_priority) #6
  %31 = load i8*, i8** %cur_arg, align 8
  %call36 = call i64 @strspn(i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #5
  %32 = load i8*, i8** %cur_arg, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %32, i64 %call36
  store i8* %add.ptr37, i8** %cur_arg, align 8
  br label %if.end.50

if.else:                                          ; preds = %land.lhs.true.30, %sw.bb.27
  %33 = load i32, i32* %argc.addr, align 4
  %cmp38 = icmp sgt i32 %33, 2
  br i1 %cmp38, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %if.else
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %34, i64 1
  %35 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32* @rdgram_priority) #6
  store i32 %call42, i32* %tmp, align 4
  %36 = load i32, i32* %tmp, align 4
  %cmp43 = icmp eq i32 %36, 1
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.then.40
  %37 = load i32, i32* %argc.addr, align 4
  %dec46 = add nsw i32 %37, -1
  store i32 %dec46, i32* %argc.addr, align 4
  %38 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %incdec.ptr47, i8*** %argv.addr, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.then.40
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.else
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.34
  %39 = load i32, i32* @rdgram_priority, align 4
  %cmp51 = icmp sgt i32 %39, 32767
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  store i32 32765, i32* @rdgram_priority, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.50
  %40 = load i32, i32* @rdgram_priority, align 4
  %cmp55 = icmp slt i32 %40, -32765
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.54
  store i32 -32765, i32* @rdgram_priority, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.54
  br label %sw.epilog

sw.bb.59:                                         ; preds = %while.body.17
  store i8 67, i8* %qtype, align 1
  store i8 99, i8* %etype, align 1
  br label %sw.epilog

sw.bb.60:                                         ; preds = %while.body.17
  %41 = load i32, i32* %eflag, align 4
  %inc61 = add nsw i32 %41, 1
  store i32 %inc61, i32* %eflag, align 4
  br label %sw.epilog

sw.bb.62:                                         ; preds = %while.body.17
  %42 = load i8**, i8*** %argv.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %42, i64 1
  %43 = load i8*, i8** %arrayidx63, align 8
  store i8* %43, i8** %host, align 8
  %44 = load i32, i32* %argc.addr, align 4
  %dec64 = add nsw i32 %44, -1
  store i32 %dec64, i32* %argc.addr, align 4
  %45 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %incdec.ptr65, i8*** %argv.addr, align 8
  br label %sw.epilog

sw.bb.66:                                         ; preds = %while.body.17
  %46 = load i32, i32* @listflag, align 4
  %inc67 = add nsw i32 %46, 1
  store i32 %inc67, i32* @listflag, align 4
  br label %sw.epilog

sw.bb.68:                                         ; preds = %while.body.17, %while.body.17, %while.body.17, %while.body.17, %while.body.17, %while.body.17, %while.body.17, %while.body.17, %while.body.17, %while.body.17
  %47 = load i8*, i8** %cur_arg, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %incdec.ptr69, i8** %cur_arg, align 8
  br label %sw.bb.70

sw.bb.70:                                         ; preds = %while.body.17, %sw.bb.68
  store i32 -1, i32* %max_hits, align 4
  %48 = load i8*, i8** %cur_arg, align 8
  %49 = load i8, i8* %48, align 1
  %conv71 = sext i8 %49 to i32
  %tobool72 = icmp ne i32 %conv71, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.else.81

land.lhs.true.73:                                 ; preds = %sw.bb.70
  %50 = load i8*, i8** %cur_arg, align 8
  %51 = load i8, i8* %50, align 1
  %conv74 = sext i8 %51 to i32
  %call75 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 %conv74) #5
  %tobool76 = icmp ne i8* %call75, null
  br i1 %tobool76, label %if.then.77, label %if.else.81

if.then.77:                                       ; preds = %land.lhs.true.73
  %52 = load i8*, i8** %cur_arg, align 8
  %call78 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32* %max_hits) #6
  %53 = load i8*, i8** %cur_arg, align 8
  %call79 = call i64 @strspn(i8* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0)) #5
  %54 = load i8*, i8** %cur_arg, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %54, i64 %call79
  store i8* %add.ptr80, i8** %cur_arg, align 8
  br label %if.end.94

if.else.81:                                       ; preds = %land.lhs.true.73, %sw.bb.70
  %55 = load i32, i32* %argc.addr, align 4
  %cmp82 = icmp sgt i32 %55, 1
  br i1 %cmp82, label %if.then.84, label %if.end.93

if.then.84:                                       ; preds = %if.else.81
  %56 = load i8**, i8*** %argv.addr, align 8
  %arrayidx85 = getelementptr inbounds i8*, i8** %56, i64 1
  %57 = load i8*, i8** %arrayidx85, align 8
  %call86 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32* %max_hits) #6
  store i32 %call86, i32* %tmp, align 4
  %58 = load i32, i32* %tmp, align 4
  %cmp87 = icmp eq i32 %58, 1
  br i1 %cmp87, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.then.84
  %59 = load i32, i32* %argc.addr, align 4
  %dec90 = add nsw i32 %59, -1
  store i32 %dec90, i32* %argc.addr, align 4
  %60 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr91 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %incdec.ptr91, i8*** %argv.addr, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %if.then.84
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.else.81
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.77
  %61 = load i32, i32* %max_hits, align 4
  %cmp95 = icmp slt i32 %61, 1
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.end.94
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %63 = load i8*, i8** @progname, align 8
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i32 0, i32 0), i8* %63)
  call void @exit(i32 1) #7
  unreachable

if.end.99:                                        ; preds = %if.end.94
  br label %sw.epilog

sw.bb.100:                                        ; preds = %while.body.17
  %64 = load i32, i32* %argc.addr, align 4
  %cmp101 = icmp sgt i32 %64, 1
  br i1 %cmp101, label %if.then.103, label %if.end.113

if.then.103:                                      ; preds = %sw.bb.100
  %65 = load i8**, i8*** %argv.addr, align 8
  %arrayidx104 = getelementptr inbounds i8*, i8** %65, i64 1
  %66 = load i8*, i8** %arrayidx104, align 8
  %call105 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32* %offset) #6
  store i32 %call105, i32* %tmp, align 4
  %67 = load i32, i32* %tmp, align 4
  %cmp106 = icmp ne i32 %67, 1
  br i1 %cmp106, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %if.then.103
  store i32 -1, i32* %argc.addr, align 4
  br label %if.end.112

if.else.109:                                      ; preds = %if.then.103
  %68 = load i32, i32* %argc.addr, align 4
  %dec110 = add nsw i32 %68, -1
  store i32 %dec110, i32* %argc.addr, align 4
  %69 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %incdec.ptr111, i8*** %argv.addr, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.109, %if.then.108
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %sw.bb.100
  br label %sw.epilog

sw.bb.114:                                        ; preds = %while.body.17
  store i8 82, i8* %qtype, align 1
  store i8 114, i8* %etype, align 1
  br label %sw.epilog

sw.bb.115:                                        ; preds = %while.body.17
  store i8 83, i8* %qtype, align 1
  store i8 115, i8* %etype, align 1
  br label %sw.epilog

sw.bb.116:                                        ; preds = %while.body.17
  store i32 1, i32* @sortflag, align 4
  br label %sw.epilog

sw.bb.117:                                        ; preds = %while.body.17
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0))
  %71 = load i32, i32* %exitflag, align 4
  %inc119 = add nsw i32 %71, 1
  store i32 %inc119, i32* %exitflag, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.17
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = load i8*, i8** @progname, align 8
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i32 0, i32 0), i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.117, %sw.bb.116, %sw.bb.115, %sw.bb.114, %if.end.113, %if.end.99, %sw.bb.66, %sw.bb.62, %sw.bb.60, %sw.bb.59, %if.end.58, %for.end
  br label %while.cond.15

while.end:                                        ; preds = %while.cond.15
  %74 = load i32, i32* %argc.addr, align 4
  %dec121 = add nsw i32 %74, -1
  store i32 %dec121, i32* %argc.addr, align 4
  %75 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %incdec.ptr122, i8*** %argv.addr, align 8
  br label %while.cond

while.end.123:                                    ; preds = %land.end
  br label %scandone

scandone:                                         ; preds = %while.end.123, %if.then.11
  %76 = load i32, i32* %eflag, align 4
  %tobool124 = icmp ne i32 %76, 0
  br i1 %tobool124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %scandone
  %77 = load i8, i8* %etype, align 1
  store i8 %77, i8* %qtype, align 1
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %scandone
  %78 = load i32, i32* %argc.addr, align 4
  %cmp127 = icmp ne i32 %78, 1
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.132

land.lhs.true.129:                                ; preds = %if.end.126
  %79 = load i32, i32* %exitflag, align 4
  %tobool130 = icmp ne i32 %79, 0
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %land.lhs.true.129
  call void @exit(i32 0) #7
  unreachable

if.end.132:                                       ; preds = %land.lhs.true.129, %if.end.126
  %80 = load i32, i32* %argc.addr, align 4
  %cmp133 = icmp ne i32 %80, 1
  br i1 %cmp133, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %if.end.132
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %82 = load i8*, i8** @progname, align 8
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i32 0, i32 0), i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0))
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0))
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0))
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0))
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i32 0, i32 0))
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0))
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = load i32, i32* %max_hits, align 4
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i32 0, i32 0), i32 %90)
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0))
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.147:                                       ; preds = %if.end.132
  %94 = load i8*, i8** %host, align 8
  %95 = load i8**, i8*** %argv.addr, align 8
  %arrayidx148 = getelementptr inbounds i8*, i8** %95, i64 0
  %96 = load i8*, i8** %arrayidx148, align 8
  %97 = load i32, i32* %max_hits, align 4
  %98 = load i32, i32* %offset, align 4
  %99 = load i8, i8* %qtype, align 1
  %100 = load i32, i32* @sortflag, align 4
  %101 = load i32, i32* @listflag, align 4
  call void @procquery(i8* %94, i8* %96, i32 %97, i32 %98, i8 signext %99, i32 %100, i32 %101)
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  %102 = load i32, i32* %retval
  ret i32 %102
}

declare i8* @getenv(...) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #4

declare void @procquery(i8*, i8*, i32, i32, i8 signext, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
