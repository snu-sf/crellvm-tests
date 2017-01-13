; ModuleID = './MultiSource.Benchmarks.Prolangs-C/57.gnugo.getmove.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@play = external global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gnugo.dat\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@p = external global [19 x [19 x i8]], align 16
@.str.5 = private unnamed_addr constant [10 x i8] c"%d %d %d \00", align 1
@mymove = external global i32, align 4
@mk = external global i32, align 4
@uk = external global i32, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@opn = external global [9 x i32], align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@pass = external global i32, align 4
@stdin = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"illegal move !\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"your move? \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define void @getmove(i8* %move, i32* %i, i32* %j) #0 {
entry:
  %move.addr = alloca i8*, align 8
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %move, i8** %move.addr, align 8
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  %0 = load i8*, i8** %move.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @play, align 4
  br label %if.end.55

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %move.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.27

if.then.3:                                        ; preds = %if.else
  %call4 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %if.then.3
  %2 = load i32, i32* %m, align 4
  %cmp5 = icmp slt i32 %2, 19
  br i1 %cmp5, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %n, align 4
  %cmp7 = icmp slt i32 %3, 19
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %5 = load i32, i32* %n, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %m, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom9
  %arrayidx10 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx10, align 1
  %conv = zext i8 %7 to i32
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %8 = load i32, i32* %n, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %9 = load i32, i32* %m, align 4
  %inc13 = add nsw i32 %9, 1
  store i32 %inc13, i32* %m, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %11 = load i32, i32* @mymove, align 4
  %12 = load i32, i32* @mk, align 4
  %13 = load i32, i32* @uk, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 %11, i32 %12, i32 %13)
  store i32 0, i32* %m, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.23, %for.end.14
  %14 = load i32, i32* %m, align 4
  %cmp17 = icmp slt i32 %14, 9
  br i1 %cmp17, label %for.body.19, label %for.end.25

for.body.19:                                      ; preds = %for.cond.16
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %16 = load i32, i32* %m, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [9 x i32], [9 x i32]* @opn, i32 0, i64 %idxprom20
  %17 = load i32, i32* %arrayidx21, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %17)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.19
  %18 = load i32, i32* %m, align 4
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, i32* %m, align 4
  br label %for.cond.16

for.end.25:                                       ; preds = %for.cond.16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i32 @fclose(%struct._IO_FILE* %19)
  store i32 -1, i32* @play, align 4
  br label %if.end.54

if.else.27:                                       ; preds = %if.else
  %20 = load i8*, i8** %move.addr, align 8
  %call28 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #5
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.27
  %21 = load i32, i32* @pass, align 4
  %inc32 = add nsw i32 %21, 1
  store i32 %inc32, i32* @pass, align 4
  %22 = load i32*, i32** %i.addr, align 8
  store i32 -1, i32* %22, align 4
  br label %if.end.53

if.else.33:                                       ; preds = %if.else.27
  store i32 0, i32* @pass, align 4
  %23 = load i8*, i8** %move.addr, align 8
  %24 = load i32*, i32** %i.addr, align 8
  %25 = load i32*, i32** %j.addr, align 8
  %call34 = call i32 @getij(i8* %23, i32* %24, i32* %25)
  %tobool = icmp ne i32 %call34, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.45

lor.lhs.false:                                    ; preds = %if.else.33
  %26 = load i32*, i32** %j.addr, align 8
  %27 = load i32, i32* %26, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load i32*, i32** %i.addr, align 8
  %29 = load i32, i32* %28, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx37, i32 0, i64 %idxprom35
  %30 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %30 to i32
  %cmp40 = icmp ne i32 %conv39, 0
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false
  %31 = load i32*, i32** %i.addr, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %j.addr, align 8
  %34 = load i32, i32* %33, align 4
  %call43 = call i32 @suicide(i32 %32, i32 %34)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.52

if.then.45:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false, %if.else.33
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call46 = call i32 @feof(%struct._IO_FILE* %35) #6
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %if.then.45
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then.45
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  %36 = load i8*, i8** %move.addr, align 8
  %call51 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %36)
  %37 = load i8*, i8** %move.addr, align 8
  %38 = load i32*, i32** %i.addr, align 8
  %39 = load i32*, i32** %j.addr, align 8
  call void @getmove(i8* %37, i32* %38, i32* %39)
  br label %if.end.52

if.end.52:                                        ; preds = %if.end, %lor.lhs.false.42
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.31
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %for.end.25
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @getij(i8*, i32*, i32*) #2

declare i32 @suicide(i32, i32) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @printf(i8*, ...) #2

declare i32 @__isoc99_scanf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
