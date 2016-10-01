; ModuleID = './MultiSource.Benchmarks.Prolangs-C/124.unix-tbl.t1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdin = external global %struct._IO_FILE*, align 8
@tabin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@tabout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".TS\00", align 1
@sargc = common global i32 0, align 4
@sargv = common global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"-ms\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/usr/lib/tmac.s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-mm\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/usr/lib/tmac.m\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-TX\00", align 1
@pr1403 = external global i32, align 4
@ifile = external global i8*, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@iline = external global i32, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c".ds f. %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Can't open file\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call void (i32)* @signal(i32 13, void (i32)* bitcast (void ()* @badsig to void (i32)*)) #4
  %call1 = call i32 (...) @init_options()
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call2 = call i32 @tbl(i32 %0, i8** %1)
  call void @exit(i32 %call2) #5
  unreachable

return:                                           ; No predecessors!
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind uwtable
define void @badsig() #0 {
entry:
  %call = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #4
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @init_options(...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @tbl(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %line = alloca [8192 x i8], align 16
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @tabin, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @tabout, align 8
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  call void @setinp(i32 %2, i8** %3)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %line, i32 0, i32 0
  %call = call i8* @gets1(i8* %arraydecay)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %arraydecay1 = getelementptr inbounds [8192 x i8], [8192 x i8]* %line, i32 0, i32 0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1)
  %arraydecay3 = getelementptr inbounds [8192 x i8], [8192 x i8]* %line, i32 0, i32 0
  %call4 = call i32 @prefix(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @tableput()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %5)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @setinp(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  store i32 %0, i32* @sargc, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  store i8** %1, i8*** @sargv, align 8
  %2 = load i32, i32* @sargc, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @sargc, align 4
  %3 = load i8**, i8*** @sargv, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i32 1
  store i8** %incdec.ptr, i8*** @sargv, align 8
  %4 = load i32, i32* @sargc, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @swapin()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @gets1(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @prefix(i8*, i8*) #2

declare void @tableput() #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @swapin() #0 {
entry:
  %retval = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %0 = load i32, i32* @sargc, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i8**, i8*** @sargv, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* @sargc, align 4
  %cmp3 = icmp sle i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load i8**, i8*** @sargv, align 8
  %7 = load i8*, i8** %6, align 8
  %call = call i32 @match(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load i8**, i8*** @sargv, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8** %8, align 8
  br label %while.end

if.end.6:                                         ; preds = %if.end
  %9 = load i8**, i8*** @sargv, align 8
  %10 = load i8*, i8** %9, align 8
  %call7 = call i32 @match(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %11 = load i8**, i8*** @sargv, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8** %11, align 8
  br label %while.end

if.end.10:                                        ; preds = %if.end.6
  %12 = load i8**, i8*** @sargv, align 8
  %13 = load i8*, i8** %12, align 8
  %call11 = call i32 @match(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 1, i32* @pr1403, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %14 = load i32, i32* @sargc, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* @sargc, align 4
  %15 = load i8**, i8*** @sargv, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** @sargv, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.9, %if.then.5, %land.end
  %16 = load i32, i32* @sargc, align 4
  %cmp15 = icmp sle i32 %16, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %while.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp19 = icmp ne %struct._IO_FILE* %17, %18
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %19)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.18
  %20 = load i8**, i8*** @sargv, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @ifile, align 8
  %call24 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call24, %struct._IO_FILE** @tabin, align 8
  store i32 1, i32* @iline, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %23 = load i8*, i8** @ifile, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %cmp26 = icmp eq %struct._IO_FILE* %24, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.23
  %25 = load i32, i32* @sargc, align 4
  %dec30 = add nsw i32 %25, -1
  store i32 %dec30, i32* @sargc, align 4
  %26 = load i8**, i8*** @sargv, align 8
  %incdec.ptr31 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr31, i8*** @sargv, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.17, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32 @match(i8*, i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @error(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
