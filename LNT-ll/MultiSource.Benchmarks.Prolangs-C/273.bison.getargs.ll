; ModuleID = './MultiSource.Benchmarks.Prolangs-C/273.bison.getargs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@verboseflag = common global i32 0, align 4
@definesflag = common global i32 0, align 4
@debugflag = common global i32 0, align 4
@fixed_outfiles = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"yvdlto:\00", align 1
@nolinesflag = common global i32 0, align 4
@optarg = external global i8*, align 8
@spec_outfile = external global i8*, align 8
@optind = external global i32, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"grammar file not specified\00", align 1
@infile = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"bison: warning: extra arguments ignored\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @getargs(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  %p = alloca i8*, align 8
  %lastcomponent = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %p, align 8
  store i32 0, i32* @verboseflag, align 4
  store i32 0, i32* @definesflag, align 4
  store i32 0, i32* @debugflag, align 4
  store i32 0, i32* @fixed_outfiles, align 4
  %2 = load i8*, i8** %p, align 8
  store i8* %2, i8** %lastcomponent, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %add.ptr, i8** %lastcomponent, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i8*, i8** %lastcomponent, align 8
  %call = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #3
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %while.end
  store i32 1, i32* @fixed_outfiles, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %while.end
  br label %while.cond.5

while.cond.5:                                     ; preds = %sw.epilog, %if.end.4
  %10 = load i32, i32* %argc.addr, align 4
  %11 = load i8**, i8*** %argv.addr, align 8
  %call6 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  store i32 %call6, i32* %c, align 4
  %cmp7 = icmp ne i32 %call6, -1
  br i1 %cmp7, label %while.body.9, label %while.end.15

while.body.9:                                     ; preds = %while.cond.5
  %12 = load i32, i32* %c, align 4
  switch i32 %12, label %sw.epilog [
    i32 121, label %sw.bb
    i32 118, label %sw.bb.10
    i32 100, label %sw.bb.11
    i32 108, label %sw.bb.12
    i32 116, label %sw.bb.13
    i32 111, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %while.body.9
  store i32 1, i32* @fixed_outfiles, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body.9
  store i32 1, i32* @verboseflag, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body.9
  store i32 1, i32* @definesflag, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body.9
  store i32 1, i32* @nolinesflag, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %while.body.9
  store i32 1, i32* @debugflag, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body.9
  %13 = load i8*, i8** @optarg, align 8
  store i8* %13, i8** @spec_outfile, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.14, %while.body.9, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb
  br label %while.cond.5

while.end.15:                                     ; preds = %while.cond.5
  %14 = load i32, i32* @optind, align 4
  %15 = load i32, i32* %argc.addr, align 4
  %cmp16 = icmp eq i32 %14, %15
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %while.end.15
  call void @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.else:                                          ; preds = %while.end.15
  %16 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx19, align 8
  store i8* %18, i8** @infile, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %19 = load i32, i32* @optind, align 4
  %20 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %20, 1
  %cmp21 = icmp slt i32 %19, %sub
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.20
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.20
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare i32 @getopt(i32, i8**, i8*) #2

declare void @fatal(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
