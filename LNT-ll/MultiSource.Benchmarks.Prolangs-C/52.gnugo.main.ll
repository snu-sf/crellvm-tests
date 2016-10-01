; ModuleID = './MultiSource.Benchmarks.Prolangs-C/52.gnugo.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"gnugo.dat\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@p = common global [19 x [19 x i8]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"%d %d %d \00", align 1
@mymove = common global i32 0, align 4
@mk = common global i32 0, align 4
@uk = common global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@opn = common global [9 x i32] zeroinitializer, align 16
@umove = common global i32 0, align 4
@play = common global i32 0, align 4
@pass = common global i32 0, align 4
@mik = common global i32 0, align 4
@mjk = common global i32 0, align 4
@uik = common global i32 0, align 4
@ujk = common global i32 0, align 4
@rd = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Number of handicap for black (0 to 17)? \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\0AChoose side(b or w)? \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"your move? \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Do you want to count score (y or n)? \00", align 1
@l = common global [19 x [19 x i8]] zeroinitializer, align 16
@ma = common global [19 x [19 x i8]] zeroinitializer, align 16
@ml = common global [19 x [19 x i8]] zeroinitializer, align 16
@lib = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %move = alloca [10 x i8], align 1
  %ans = alloca [5 x i8], align 1
  %cont = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %cont, align 4
  call void @showinst()
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %cont, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %if.then
  %0 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %0, 19
  br i1 %cmp1, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %1, 19
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %6 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %6, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32* @mymove, i32* @mk, i32* @uk)
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.18, %for.end.10
  %8 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %8, 9
  br i1 %cmp13, label %for.body.14, label %for.end.20

for.body.14:                                      ; preds = %for.cond.12
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [9 x i32], [9 x i32]* @opn, i32 0, i64 %idxprom15
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32* %arrayidx16)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.14
  %11 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %11, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.12

for.end.20:                                       ; preds = %for.cond.12
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call21 = call i32 @fclose(%struct._IO_FILE* %12)
  %13 = load i32, i32* @mymove, align 4
  %sub = sub nsw i32 3, %13
  store i32 %sub, i32* @umove, align 4
  %call22 = call i32 @unlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #3
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.28, %if.else
  %14 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %14, 9
  br i1 %cmp24, label %for.body.25, label %for.end.30

for.body.25:                                      ; preds = %for.cond.23
  %15 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %15 to i64
  %arrayidx27 = getelementptr inbounds [9 x i32], [9 x i32]* @opn, i32 0, i64 %idxprom26
  store i32 1, i32* %arrayidx27, align 4
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.25
  %16 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %16, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.23

for.end.30:                                       ; preds = %for.cond.23
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 4), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.44, %for.end.30
  %17 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %17, 19
  br i1 %cmp32, label %for.body.33, label %for.end.46

for.body.33:                                      ; preds = %for.cond.31
  store i32 0, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.41, %for.body.33
  %18 = load i32, i32* %j, align 4
  %cmp35 = icmp slt i32 %18, 19
  br i1 %cmp35, label %for.body.36, label %for.end.43

for.body.36:                                      ; preds = %for.cond.34
  %19 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %20 to i64
  %arrayidx39 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx39, i32 0, i64 %idxprom37
  store i8 0, i8* %arrayidx40, align 1
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.36
  %21 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %21, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond.34

for.end.43:                                       ; preds = %for.cond.34
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %22 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %22, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.31

for.end.46:                                       ; preds = %for.cond.31
  store i32 0, i32* @mk, align 4
  store i32 0, i32* @uk, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.46, %for.end.20
  store i32 1, i32* @play, align 4
  store i32 0, i32* @pass, align 4
  store i32 -1, i32* @mik, align 4
  store i32 -1, i32* @mjk, align 4
  store i32 -1, i32* @uik, align 4
  store i32 -1, i32* @ujk, align 4
  call void @seed(i32* @rd)
  %23 = load i32, i32* %cont, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.end.76, label %if.then.47

if.then.47:                                       ; preds = %if.end
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0))
  %call49 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %i)
  %call50 = call i32 @getchar()
  %24 = load i32, i32* %i, align 4
  call void @sethand(i32 %24)
  call void @showboard()
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %ans, i32 0, i32 0
  %call52 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay)
  %arrayidx53 = getelementptr inbounds [5 x i8], [5 x i8]* %ans, i32 0, i64 0
  %25 = load i8, i8* %arrayidx53, align 1
  %conv = sext i8 %25 to i32
  %cmp54 = icmp eq i32 %conv, 98
  br i1 %cmp54, label %if.then.56, label %if.else.65

if.then.56:                                       ; preds = %if.then.47
  store i32 1, i32* @mymove, align 4
  store i32 2, i32* @umove, align 4
  %26 = load i32, i32* %i, align 4
  %tobool57 = icmp ne i32 %26, 0
  br i1 %tobool57, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.then.56
  call void @genmove(i32* %i, i32* %j)
  %27 = load i32, i32* @mymove, align 4
  %conv59 = trunc i32 %27 to i8
  %28 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %29 to i64
  %arrayidx62 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx62, i32 0, i64 %idxprom60
  store i8 %conv59, i8* %arrayidx63, align 1
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.58, %if.then.56
  br label %if.end.75

if.else.65:                                       ; preds = %if.then.47
  store i32 2, i32* @mymove, align 4
  store i32 1, i32* @umove, align 4
  %30 = load i32, i32* %i, align 4
  %cmp66 = icmp eq i32 %30, 0
  br i1 %cmp66, label %if.then.68, label %if.end.74

if.then.68:                                       ; preds = %if.else.65
  call void @genmove(i32* %i, i32* %j)
  %31 = load i32, i32* @mymove, align 4
  %conv69 = trunc i32 %31 to i8
  %32 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %33 to i64
  %arrayidx72 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx72, i32 0, i64 %idxprom70
  store i8 %conv69, i8* %arrayidx73, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.68, %if.else.65
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.64
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end
  call void @showboard()
  br label %while.cond

while.cond:                                       ; preds = %if.end.112, %if.end.76
  %34 = load i32, i32* @play, align 4
  %cmp77 = icmp sgt i32 %34, 0
  br i1 %cmp77, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %arraydecay80 = getelementptr inbounds [10 x i8], [10 x i8]* %move, i32 0, i32 0
  %call81 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay80)
  %arraydecay82 = getelementptr inbounds [10 x i8], [10 x i8]* %move, i32 0, i32 0
  call void @getmove(i8* %arraydecay82, i32* %i, i32* %j)
  %35 = load i32, i32* @play, align 4
  %cmp83 = icmp sgt i32 %35, 0
  br i1 %cmp83, label %if.then.85, label %if.end.108

if.then.85:                                       ; preds = %while.body
  %36 = load i32, i32* %i, align 4
  %cmp86 = icmp sge i32 %36, 0
  br i1 %cmp86, label %if.then.88, label %if.end.94

if.then.88:                                       ; preds = %if.then.85
  %37 = load i32, i32* @umove, align 4
  %conv89 = trunc i32 %37 to i8
  %38 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %38 to i64
  %39 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %39 to i64
  %arrayidx92 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx92, i32 0, i64 %idxprom90
  store i8 %conv89, i8* %arrayidx93, align 1
  %40 = load i32, i32* @mymove, align 4
  call void @examboard(i32 %40)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.88, %if.then.85
  %41 = load i32, i32* @pass, align 4
  %cmp95 = icmp ne i32 %41, 2
  br i1 %cmp95, label %if.then.97, label %if.end.107

if.then.97:                                       ; preds = %if.end.94
  call void @genmove(i32* %i, i32* %j)
  %42 = load i32, i32* %i, align 4
  %cmp98 = icmp sge i32 %42, 0
  br i1 %cmp98, label %if.then.100, label %if.end.106

if.then.100:                                      ; preds = %if.then.97
  %43 = load i32, i32* @mymove, align 4
  %conv101 = trunc i32 %43 to i8
  %44 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %45 to i64
  %arrayidx104 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx104, i32 0, i64 %idxprom102
  store i8 %conv101, i8* %arrayidx105, align 1
  %46 = load i32, i32* @umove, align 4
  call void @examboard(i32 %46)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.100, %if.then.97
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.94
  call void @showboard()
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %while.body
  %47 = load i32, i32* @pass, align 4
  %cmp109 = icmp eq i32 %47, 2
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.108
  store i32 0, i32* @play, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.end.108
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load i32, i32* @play, align 4
  %cmp113 = icmp eq i32 %48, 0
  br i1 %cmp113, label %if.then.115, label %if.end.126

if.then.115:                                      ; preds = %while.end
  %call116 = call i32 @getchar()
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0))
  %arraydecay118 = getelementptr inbounds [5 x i8], [5 x i8]* %ans, i32 0, i32 0
  %call119 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay118)
  %arrayidx120 = getelementptr inbounds [5 x i8], [5 x i8]* %ans, i32 0, i64 0
  %49 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %49 to i32
  %cmp122 = icmp eq i32 %conv121, 121
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.then.115
  call void @endgame()
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.then.115
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %while.end
  ret i32 0
}

declare void @showinst() #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare void @seed(i32*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

declare i32 @getchar() #1

declare void @sethand(i32) #1

declare void @showboard() #1

declare void @genmove(i32*, i32*) #1

declare void @getmove(i8*, i32*, i32*) #1

declare void @examboard(i32) #1

declare void @endgame() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
