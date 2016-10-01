; ModuleID = './MultiSource.Benchmarks.Ptrdist/17.bc.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@compile_only = external global i8, align 1
@use_math = external global i8, align 1
@warn_not_std = external global i8, align 1
@std_only = external global i8, align 1
@interactive = external global i8, align 1
@.str = private unnamed_addr constant [7 x i8] c"lcisvw\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"bc 1.02 (Mar 3, 92) Copyright (C) 1991, 1992 Free Software Foundation, Inc.\00", align 1
@g_argv = external global i8**, align 8
@g_argc = external global i32, align 4
@is_std_in = external global i8, align 1
@first_file = common global i8 0, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@line_no = external global i32, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@libmath = external global [0 x i8], align 1
@optind = external global i32, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"File %s is unavailable.\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@yyin = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"\0A(interrupt) use quit to exit.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ch = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* @compile_only, align 1
  store i8 0, i8* @use_math, align 1
  store i8 0, i8* @warn_not_std, align 1
  store i8 0, i8* @std_only, align 1
  %call = call i32 @isatty(i32 0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @isatty(i32 1) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* @interactive, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8 0, i8* @interactive, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call3 = call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #4
  store i32 %call3, i32* %ch, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %2 = load i32, i32* %ch, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %ch, align 4
  switch i32 %3, label %sw.epilog [
    i32 99, label %sw.bb
    i32 108, label %sw.bb.4
    i32 105, label %sw.bb.5
    i32 119, label %sw.bb.6
    i32 115, label %sw.bb.7
    i32 118, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %while.body
  store i8 1, i8* @compile_only, align 1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  store i8 1, i8* @use_math, align 1
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  store i8 1, i8* @interactive, align 1
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  store i8 1, i8* @warn_not_std, align 1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  store i8 1, i8* @std_only, align 1
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  %4 = load i32, i32* %argc.addr, align 4
  %5 = load i8**, i8*** %argv.addr, align 8
  %call10 = call i32 @getopt(i32 %4, i8** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #4
  store i32 %call10, i32* %ch, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @init_storage()
  call void @init_load()
  %6 = load i8, i8* @interactive, align 1
  %tobool11 = icmp ne i8 %6, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %while.end
  %call13 = call void (i32)* @signal(i32 2, void (i32)* @use_quit) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %while.end
  call void @init_tree()
  call void @init_gen()
  store i8** null, i8*** @g_argv, align 8
  store i32 0, i32* @g_argc, align 4
  store i8 0, i8* @is_std_in, align 1
  store i8 1, i8* @first_file, align 1
  %call15 = call i32 @open_new_file()
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  call void @exit(i32 1) #5
  unreachable

if.end.18:                                        ; preds = %if.end.14
  %call19 = call i32 @yyparse()
  %7 = load i8, i8* @compile_only, align 1
  %tobool20 = icmp ne i8 %7, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.18
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare i32 @isatty(i32) #1

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

declare i32 @printf(i8*, ...) #2

declare void @init_storage() #2

declare void @init_load() #2

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind uwtable
define void @use_quit(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  %call1 = call void (i32)* @signal(i32 2, void (i32)* @use_quit) #4
  ret void
}

declare void @init_tree() #2

declare void @init_gen() #2

; Function Attrs: nounwind uwtable
define i32 @open_new_file() #0 {
entry:
  %retval = alloca i32, align 4
  %new_file = alloca %struct._IO_FILE*, align 8
  %tmp = alloca i8, align 1
  store i32 1, i32* @line_no, align 4
  %0 = load i8, i8* @is_std_in, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* @use_math, align 1
  %conv = sext i8 %1 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, i8* @first_file, align 1
  %conv2 = sext i8 %2 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %land.lhs.true
  %call = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 2)
  %conv5 = trunc i32 %call to i8
  store i8 %conv5, i8* %tmp, align 1
  %call6 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 2)
  %conv7 = trunc i32 %call6 to i8
  store i8 %conv7, i8* %tmp, align 1
  %call8 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i32 2)
  %conv9 = trunc i32 %call8 to i8
  store i8 %conv9, i8* %tmp, align 1
  %call10 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 2)
  %conv11 = trunc i32 %call10 to i8
  store i8 %conv11, i8* %tmp, align 1
  %call12 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32 2)
  %conv13 = trunc i32 %call12 to i8
  store i8 %conv13, i8* %tmp, align 1
  %call14 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 2)
  %conv15 = trunc i32 %call14 to i8
  store i8 %conv15, i8* %tmp, align 1
  call void @load_code(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @libmath, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.4, %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.16
  %3 = load i32, i32* @optind, align 4
  %4 = load i32, i32* @g_argc, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8**, i8*** @g_argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call18 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store %struct._IO_FILE* %call18, %struct._IO_FILE** %new_file, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %new_file, align 8
  %cmp19 = icmp ne %struct._IO_FILE* %8, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %while.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %new_file, align 8
  call void @new_yy_file(%struct._IO_FILE* %9)
  %10 = load i32, i32* @optind, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @optind, align 4
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %while.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* @optind, align 4
  %inc23 = add nsw i32 %12, 1
  store i32 %inc23, i32* @optind, align 4
  %idxprom24 = sext i32 %12 to i64
  %13 = load i8**, i8*** @g_argv, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %13, i64 %idxprom24
  %14 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* %14)
  call void @exit(i32 1) #5
  unreachable

while.end:                                        ; preds = %while.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @new_yy_file(%struct._IO_FILE* %15)
  store i8 1, i8* @is_std_in, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.21, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @yyparse() #2

declare i32 @lookup(i8*, i32) #2

declare void @load_code(i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @new_yy_file(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i8, i8* @first_file, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @yyin, align 8
  store i8 0, i8* @first_file, align 1
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
