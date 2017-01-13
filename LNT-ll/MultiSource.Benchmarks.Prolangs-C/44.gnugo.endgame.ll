; ModuleID = './MultiSource.Benchmarks.Prolangs-C/44.gnugo.endgame.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"\0ATo count score, we need the following steps:\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"First, I need you to remove all dead pieces on the board.\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Second, I need you to fill in neutral territories with \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pieces.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Last, I will fill in all pieces and anounce the winner.\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"\0AFirst, you should enter the dead pieces (blank and white) to\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" be removed.  Enter\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c" 'stop' when you have finished.\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Dead piece? \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@p = external global [19 x [19 x i8]], align 16
@mymove = external global i32, align 4
@mk = external global i32, align 4
@umove = external global i32, align 4
@uk = external global i32, align 4
@.str.11 = private unnamed_addr constant [66 x i8] c"Next, you need to fill in pieces (black and white) in all neutral\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c" territories.\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"Enter your and my pieces alternately and enter 'stop' when finish\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Your piece? \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"My piece? \00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Your total number of pieces %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"My total number of pieces %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @endgame() #0 {
entry:
  %an = alloca [10 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mtot = alloca i32, align 4
  %utot = alloca i32, align 4
  %cont = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store i32 1, i32* %cont, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %an, i32 0, i32 0
  %call9 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay)
  %arraydecay10 = getelementptr inbounds [10 x i8], [10 x i8]* %an, i32 0, i32 0
  %call11 = call i32 @strcmp(i8* %arraydecay10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #3
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.else.36

if.then:                                          ; preds = %do.body
  %arraydecay12 = getelementptr inbounds [10 x i8], [10 x i8]* %an, i32 0, i32 0
  %call13 = call i32 @getij(i8* %arraydecay12, i32* %i, i32* %j)
  %0 = load i32, i32* %j, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom14
  %arrayidx15 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx15, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* @mymove, align 4
  %cmp = icmp eq i32 %conv, %3
  br i1 %cmp, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  %4 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %5 to i64
  %arrayidx20 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx20, i32 0, i64 %idxprom18
  store i8 0, i8* %arrayidx21, align 1
  %6 = load i32, i32* @mk, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @mk, align 4
  br label %if.end.35

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %8 to i64
  %arrayidx24 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx24, i32 0, i64 %idxprom22
  %9 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %9 to i32
  %10 = load i32, i32* @umove, align 4
  %cmp27 = icmp eq i32 %conv26, %10
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else
  %11 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %12 to i64
  %arrayidx32 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx32, i32 0, i64 %idxprom30
  store i8 0, i8* %arrayidx33, align 1
  %13 = load i32, i32* @uk, align 4
  %inc34 = add nsw i32 %13, 1
  store i32 %inc34, i32* @uk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %if.then.17
  call void @showboard()
  br label %if.end.37

if.else.36:                                       ; preds = %do.body
  store i32 0, i32* %cont, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.end.35
  br label %do.cond

do.cond:                                          ; preds = %if.end.37
  %14 = load i32, i32* %cont, align 4
  %tobool38 = icmp ne i32 %14, 0
  br i1 %tobool38, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i32 0, i32 0))
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i32 0, i32 0))
  store i32 1, i32* %cont, align 4
  br label %do.body.42

do.body.42:                                       ; preds = %do.cond.69, %do.end
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  %arraydecay44 = getelementptr inbounds [10 x i8], [10 x i8]* %an, i32 0, i32 0
  %call45 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay44)
  %arraydecay46 = getelementptr inbounds [10 x i8], [10 x i8]* %an, i32 0, i32 0
  %call47 = call i32 @strcmp(i8* %arraydecay46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #3
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.67

if.then.49:                                       ; preds = %do.body.42
  %arraydecay50 = getelementptr inbounds [10 x i8], [10 x i8]* %an, i32 0, i32 0
  %call51 = call i32 @getij(i8* %arraydecay50, i32* %i, i32* %j)
  %15 = load i32, i32* @umove, align 4
  %conv52 = trunc i32 %15 to i8
  %16 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %17 to i64
  %arrayidx55 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx55, i32 0, i64 %idxprom53
  store i8 %conv52, i8* %arrayidx56, align 1
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0))
  %arraydecay58 = getelementptr inbounds [10 x i8], [10 x i8]* %an, i32 0, i32 0
  %call59 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay58)
  %arraydecay60 = getelementptr inbounds [10 x i8], [10 x i8]* %an, i32 0, i32 0
  %call61 = call i32 @getij(i8* %arraydecay60, i32* %i, i32* %j)
  %18 = load i32, i32* @mymove, align 4
  %conv62 = trunc i32 %18 to i8
  %19 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %20 to i64
  %arrayidx65 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx65, i32 0, i64 %idxprom63
  store i8 %conv62, i8* %arrayidx66, align 1
  call void @showboard()
  br label %if.end.68

if.else.67:                                       ; preds = %do.body.42
  store i32 0, i32* %cont, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.then.49
  br label %do.cond.69

do.cond.69:                                       ; preds = %if.end.68
  %21 = load i32, i32* %cont, align 4
  %tobool70 = icmp ne i32 %21, 0
  br i1 %tobool70, label %do.body.42, label %do.end.71

do.end.71:                                        ; preds = %do.cond.69
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.94, %do.end.71
  %22 = load i32, i32* %i, align 4
  %cmp72 = icmp slt i32 %22, 19
  br i1 %cmp72, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4
  %cmp75 = icmp slt i32 %23, 19
  br i1 %cmp75, label %for.body.77, label %for.end

for.body.77:                                      ; preds = %for.cond.74
  %24 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %25 to i64
  %arrayidx80 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx80, i32 0, i64 %idxprom78
  %26 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %26 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.92

if.then.85:                                       ; preds = %for.body.77
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %j, align 4
  %call86 = call i32 @findcolor(i32 %27, i32 %28)
  %conv87 = trunc i32 %call86 to i8
  %29 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %30 to i64
  %arrayidx90 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom89
  %arrayidx91 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx90, i32 0, i64 %idxprom88
  store i8 %conv87, i8* %arrayidx91, align 1
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.85, %for.body.77
  br label %for.inc

for.inc:                                          ; preds = %if.end.92
  %31 = load i32, i32* %j, align 4
  %inc93 = add nsw i32 %31, 1
  store i32 %inc93, i32* %j, align 4
  br label %for.cond.74

for.end:                                          ; preds = %for.cond.74
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %32, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond

for.end.96:                                       ; preds = %for.cond
  store i32 0, i32* %mtot, align 4
  store i32 0, i32* %utot, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.129, %for.end.96
  %33 = load i32, i32* %i, align 4
  %cmp98 = icmp slt i32 %33, 19
  br i1 %cmp98, label %for.body.100, label %for.end.131

for.body.100:                                     ; preds = %for.cond.97
  store i32 0, i32* %j, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.126, %for.body.100
  %34 = load i32, i32* %j, align 4
  %cmp102 = icmp slt i32 %34, 19
  br i1 %cmp102, label %for.body.104, label %for.end.128

for.body.104:                                     ; preds = %for.cond.101
  %35 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %35 to i64
  %36 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %36 to i64
  %arrayidx107 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx107, i32 0, i64 %idxprom105
  %37 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %37 to i32
  %38 = load i32, i32* @mymove, align 4
  %cmp110 = icmp eq i32 %conv109, %38
  br i1 %cmp110, label %if.then.112, label %if.else.114

if.then.112:                                      ; preds = %for.body.104
  %39 = load i32, i32* %mtot, align 4
  %inc113 = add nsw i32 %39, 1
  store i32 %inc113, i32* %mtot, align 4
  br label %if.end.125

if.else.114:                                      ; preds = %for.body.104
  %40 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %41 to i64
  %arrayidx117 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom116
  %arrayidx118 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx117, i32 0, i64 %idxprom115
  %42 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %42 to i32
  %43 = load i32, i32* @umove, align 4
  %cmp120 = icmp eq i32 %conv119, %43
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.else.114
  %44 = load i32, i32* %utot, align 4
  %inc123 = add nsw i32 %44, 1
  store i32 %inc123, i32* %utot, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.else.114
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.112
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %45 = load i32, i32* %j, align 4
  %inc127 = add nsw i32 %45, 1
  store i32 %inc127, i32* %j, align 4
  br label %for.cond.101

for.end.128:                                      ; preds = %for.cond.101
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.128
  %46 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %46, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond.97

for.end.131:                                      ; preds = %for.cond.97
  call void @showboard()
  %47 = load i32, i32* %utot, align 4
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i32 %47)
  %48 = load i32, i32* %mtot, align 4
  %call133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), i32 %48)
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @getij(i8*, i32*, i32*) #1

declare void @showboard() #1

declare i32 @findcolor(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
