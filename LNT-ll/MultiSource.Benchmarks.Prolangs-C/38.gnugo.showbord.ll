; ModuleID = './MultiSource.Benchmarks.Prolangs-C/38.gnugo.showbord.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"   A B C D E F G H J K L M N O P Q R S T\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@p = external global [19 x [19 x i8]], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" O\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" X\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@umove = external global i32, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"     Your color: White O\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"     Your color: Black X\0A\00", align 1
@mymove = external global i32, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"     My color:   White O\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"     My color:   Black X\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"     You have captured %d pieces\0A\00", align 1
@mk = external global i32, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"     I have captured %d pieces\0A\00", align 1
@uk = external global i32, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c" 4\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"   A B C D E F G H J K L M N O P Q R S T\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @showboard() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %sub = sub nsw i32 19, %1
  store i32 %sub, i32* %ii, align 4
  %2 = load i32, i32* %ii, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %2)
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %3, 19
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.21

if.else:                                          ; preds = %for.body.4
  %7 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx12, i32 0, i64 %idxprom10
  %9 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.else.19:                                       ; preds = %if.else
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %11 = load i32, i32* %ii, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %11)
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %12, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.51, %for.end.26
  %13 = load i32, i32* %j, align 4
  %cmp29 = icmp slt i32 %13, 3
  br i1 %cmp29, label %for.body.31, label %for.end.53

for.body.31:                                      ; preds = %for.cond.28
  %14 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %14 to i64
  %arrayidx33 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3), i32 0, i64 %idxprom32
  %15 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %15 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %for.body.31
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.50

if.else.39:                                       ; preds = %for.body.31
  %16 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %16 to i64
  %arrayidx41 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3), i32 0, i64 %idxprom40
  %17 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %17 to i32
  %cmp43 = icmp eq i32 %conv42, 1
  br i1 %cmp43, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.else.39
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.49

if.else.47:                                       ; preds = %if.else.39
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %if.then.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.37
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %18 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %18, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond.28

for.end.53:                                       ; preds = %for.cond.28
  %19 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3, i64 3), align 1
  %conv54 = zext i8 %19 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %for.end.53
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.68

if.else.59:                                       ; preds = %for.end.53
  %20 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3, i64 3), align 1
  %conv60 = zext i8 %20 to i32
  %cmp61 = icmp eq i32 %conv60, 1
  br i1 %cmp61, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.else.59
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.67

if.else.65:                                       ; preds = %if.else.59
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.57
  store i32 4, i32* %j, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.92, %if.end.68
  %21 = load i32, i32* %j, align 4
  %cmp70 = icmp slt i32 %21, 9
  br i1 %cmp70, label %for.body.72, label %for.end.94

for.body.72:                                      ; preds = %for.cond.69
  %22 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %22 to i64
  %arrayidx74 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3), i32 0, i64 %idxprom73
  %23 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %23 to i32
  %cmp76 = icmp eq i32 %conv75, 0
  br i1 %cmp76, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %for.body.72
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.91

if.else.80:                                       ; preds = %for.body.72
  %24 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %24 to i64
  %arrayidx82 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3), i32 0, i64 %idxprom81
  %25 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %25 to i32
  %cmp84 = icmp eq i32 %conv83, 1
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %if.else.80
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.90

if.else.88:                                       ; preds = %if.else.80
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.88, %if.then.86
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.78
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %26 = load i32, i32* %j, align 4
  %inc93 = add nsw i32 %26, 1
  store i32 %inc93, i32* %j, align 4
  br label %for.cond.69

for.end.94:                                       ; preds = %for.cond.69
  %27 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3, i64 9), align 1
  %conv95 = zext i8 %27 to i32
  %cmp96 = icmp eq i32 %conv95, 0
  br i1 %cmp96, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %for.end.94
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.109

if.else.100:                                      ; preds = %for.end.94
  %28 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3, i64 9), align 1
  %conv101 = zext i8 %28 to i32
  %cmp102 = icmp eq i32 %conv101, 1
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.else.100
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.108

if.else.106:                                      ; preds = %if.else.100
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.106, %if.then.104
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.98
  store i32 10, i32* %j, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.133, %if.end.109
  %29 = load i32, i32* %j, align 4
  %cmp111 = icmp slt i32 %29, 15
  br i1 %cmp111, label %for.body.113, label %for.end.135

for.body.113:                                     ; preds = %for.cond.110
  %30 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %30 to i64
  %arrayidx115 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3), i32 0, i64 %idxprom114
  %31 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %31 to i32
  %cmp117 = icmp eq i32 %conv116, 0
  br i1 %cmp117, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %for.body.113
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.132

if.else.121:                                      ; preds = %for.body.113
  %32 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %32 to i64
  %arrayidx123 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3), i32 0, i64 %idxprom122
  %33 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %33 to i32
  %cmp125 = icmp eq i32 %conv124, 1
  br i1 %cmp125, label %if.then.127, label %if.else.129

if.then.127:                                      ; preds = %if.else.121
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.131

if.else.129:                                      ; preds = %if.else.121
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.129, %if.then.127
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.119
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %34 = load i32, i32* %j, align 4
  %inc134 = add nsw i32 %34, 1
  store i32 %inc134, i32* %j, align 4
  br label %for.cond.110

for.end.135:                                      ; preds = %for.cond.110
  %35 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3, i64 15), align 1
  %conv136 = zext i8 %35 to i32
  %cmp137 = icmp eq i32 %conv136, 0
  br i1 %cmp137, label %if.then.139, label %if.else.141

if.then.139:                                      ; preds = %for.end.135
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.150

if.else.141:                                      ; preds = %for.end.135
  %36 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3, i64 15), align 1
  %conv142 = zext i8 %36 to i32
  %cmp143 = icmp eq i32 %conv142, 1
  br i1 %cmp143, label %if.then.145, label %if.else.147

if.then.145:                                      ; preds = %if.else.141
  %call146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.149

if.else.147:                                      ; preds = %if.else.141
  %call148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.147, %if.then.145
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.139
  store i32 16, i32* %j, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.174, %if.end.150
  %37 = load i32, i32* %j, align 4
  %cmp152 = icmp slt i32 %37, 19
  br i1 %cmp152, label %for.body.154, label %for.end.176

for.body.154:                                     ; preds = %for.cond.151
  %38 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %38 to i64
  %arrayidx156 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3), i32 0, i64 %idxprom155
  %39 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %39 to i32
  %cmp158 = icmp eq i32 %conv157, 0
  br i1 %cmp158, label %if.then.160, label %if.else.162

if.then.160:                                      ; preds = %for.body.154
  %call161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.173

if.else.162:                                      ; preds = %for.body.154
  %40 = load i32, i32* %j, align 4
  %idxprom163 = sext i32 %40 to i64
  %arrayidx164 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 3), i32 0, i64 %idxprom163
  %41 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %41 to i32
  %cmp166 = icmp eq i32 %conv165, 1
  br i1 %cmp166, label %if.then.168, label %if.else.170

if.then.168:                                      ; preds = %if.else.162
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.172

if.else.170:                                      ; preds = %if.else.162
  %call171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.170, %if.then.168
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.160
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %42 = load i32, i32* %j, align 4
  %inc175 = add nsw i32 %42, 1
  store i32 %inc175, i32* %j, align 4
  br label %for.cond.151

for.end.176:                                      ; preds = %for.cond.151
  %call177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  %43 = load i32, i32* @umove, align 4
  %cmp178 = icmp eq i32 %43, 1
  br i1 %cmp178, label %if.then.180, label %if.else.182

if.then.180:                                      ; preds = %for.end.176
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.190

if.else.182:                                      ; preds = %for.end.176
  %44 = load i32, i32* @umove, align 4
  %cmp183 = icmp eq i32 %44, 2
  br i1 %cmp183, label %if.then.185, label %if.else.187

if.then.185:                                      ; preds = %if.else.182
  %call186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.189

if.else.187:                                      ; preds = %if.else.182
  %call188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.187, %if.then.185
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.180
  store i32 4, i32* %i, align 4
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.253, %if.end.190
  %45 = load i32, i32* %i, align 4
  %cmp192 = icmp slt i32 %45, 9
  br i1 %cmp192, label %for.body.194, label %for.end.255

for.body.194:                                     ; preds = %for.cond.191
  %46 = load i32, i32* %i, align 4
  %sub195 = sub nsw i32 19, %46
  store i32 %sub195, i32* %ii, align 4
  %47 = load i32, i32* %ii, align 4
  %call196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %47)
  store i32 0, i32* %j, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.224, %for.body.194
  %48 = load i32, i32* %j, align 4
  %cmp198 = icmp slt i32 %48, 19
  br i1 %cmp198, label %for.body.200, label %for.end.226

for.body.200:                                     ; preds = %for.cond.197
  %49 = load i32, i32* %j, align 4
  %idxprom201 = sext i32 %49 to i64
  %50 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %50 to i64
  %arrayidx203 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom202
  %arrayidx204 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx203, i32 0, i64 %idxprom201
  %51 = load i8, i8* %arrayidx204, align 1
  %conv205 = zext i8 %51 to i32
  %cmp206 = icmp eq i32 %conv205, 0
  br i1 %cmp206, label %if.then.208, label %if.else.210

if.then.208:                                      ; preds = %for.body.200
  %call209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.223

if.else.210:                                      ; preds = %for.body.200
  %52 = load i32, i32* %j, align 4
  %idxprom211 = sext i32 %52 to i64
  %53 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %53 to i64
  %arrayidx213 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom212
  %arrayidx214 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx213, i32 0, i64 %idxprom211
  %54 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %54 to i32
  %cmp216 = icmp eq i32 %conv215, 1
  br i1 %cmp216, label %if.then.218, label %if.else.220

if.then.218:                                      ; preds = %if.else.210
  %call219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.222

if.else.220:                                      ; preds = %if.else.210
  %call221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.220, %if.then.218
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.208
  br label %for.inc.224

for.inc.224:                                      ; preds = %if.end.223
  %55 = load i32, i32* %j, align 4
  %inc225 = add nsw i32 %55, 1
  store i32 %inc225, i32* %j, align 4
  br label %for.cond.197

for.end.226:                                      ; preds = %for.cond.197
  %56 = load i32, i32* %ii, align 4
  %call227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %56)
  %57 = load i32, i32* %i, align 4
  %cmp228 = icmp eq i32 %57, 4
  br i1 %cmp228, label %if.then.230, label %if.else.244

if.then.230:                                      ; preds = %for.end.226
  %58 = load i32, i32* @mymove, align 4
  %cmp231 = icmp eq i32 %58, 1
  br i1 %cmp231, label %if.then.233, label %if.else.235

if.then.233:                                      ; preds = %if.then.230
  %call234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.243

if.else.235:                                      ; preds = %if.then.230
  %59 = load i32, i32* @mymove, align 4
  %cmp236 = icmp eq i32 %59, 2
  br i1 %cmp236, label %if.then.238, label %if.else.240

if.then.238:                                      ; preds = %if.else.235
  %call239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.242

if.else.240:                                      ; preds = %if.else.235
  %call241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.240, %if.then.238
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.233
  br label %if.end.252

if.else.244:                                      ; preds = %for.end.226
  %60 = load i32, i32* %i, align 4
  %cmp245 = icmp ne i32 %60, 8
  br i1 %cmp245, label %if.then.247, label %if.else.249

if.then.247:                                      ; preds = %if.else.244
  %call248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.251

if.else.249:                                      ; preds = %if.else.244
  %61 = load i32, i32* @mk, align 4
  %call250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i32 %61)
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.249, %if.then.247
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.end.243
  br label %for.inc.253

for.inc.253:                                      ; preds = %if.end.252
  %62 = load i32, i32* %i, align 4
  %inc254 = add nsw i32 %62, 1
  store i32 %inc254, i32* %i, align 4
  br label %for.cond.191

for.end.255:                                      ; preds = %for.cond.191
  %call256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.280, %for.end.255
  %63 = load i32, i32* %j, align 4
  %cmp258 = icmp slt i32 %63, 3
  br i1 %cmp258, label %for.body.260, label %for.end.282

for.body.260:                                     ; preds = %for.cond.257
  %64 = load i32, i32* %j, align 4
  %idxprom261 = sext i32 %64 to i64
  %arrayidx262 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9), i32 0, i64 %idxprom261
  %65 = load i8, i8* %arrayidx262, align 1
  %conv263 = zext i8 %65 to i32
  %cmp264 = icmp eq i32 %conv263, 0
  br i1 %cmp264, label %if.then.266, label %if.else.268

if.then.266:                                      ; preds = %for.body.260
  %call267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.279

if.else.268:                                      ; preds = %for.body.260
  %66 = load i32, i32* %j, align 4
  %idxprom269 = sext i32 %66 to i64
  %arrayidx270 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9), i32 0, i64 %idxprom269
  %67 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %67 to i32
  %cmp272 = icmp eq i32 %conv271, 1
  br i1 %cmp272, label %if.then.274, label %if.else.276

if.then.274:                                      ; preds = %if.else.268
  %call275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.278

if.else.276:                                      ; preds = %if.else.268
  %call277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.276, %if.then.274
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.then.266
  br label %for.inc.280

for.inc.280:                                      ; preds = %if.end.279
  %68 = load i32, i32* %j, align 4
  %inc281 = add nsw i32 %68, 1
  store i32 %inc281, i32* %j, align 4
  br label %for.cond.257

for.end.282:                                      ; preds = %for.cond.257
  %69 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 3), align 1
  %conv283 = zext i8 %69 to i32
  %cmp284 = icmp eq i32 %conv283, 0
  br i1 %cmp284, label %if.then.286, label %if.else.288

if.then.286:                                      ; preds = %for.end.282
  %call287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.297

if.else.288:                                      ; preds = %for.end.282
  %70 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 3), align 1
  %conv289 = zext i8 %70 to i32
  %cmp290 = icmp eq i32 %conv289, 1
  br i1 %cmp290, label %if.then.292, label %if.else.294

if.then.292:                                      ; preds = %if.else.288
  %call293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.296

if.else.294:                                      ; preds = %if.else.288
  %call295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.294, %if.then.292
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.then.286
  store i32 4, i32* %j, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.321, %if.end.297
  %71 = load i32, i32* %j, align 4
  %cmp299 = icmp slt i32 %71, 9
  br i1 %cmp299, label %for.body.301, label %for.end.323

for.body.301:                                     ; preds = %for.cond.298
  %72 = load i32, i32* %j, align 4
  %idxprom302 = sext i32 %72 to i64
  %arrayidx303 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9), i32 0, i64 %idxprom302
  %73 = load i8, i8* %arrayidx303, align 1
  %conv304 = zext i8 %73 to i32
  %cmp305 = icmp eq i32 %conv304, 0
  br i1 %cmp305, label %if.then.307, label %if.else.309

if.then.307:                                      ; preds = %for.body.301
  %call308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.320

if.else.309:                                      ; preds = %for.body.301
  %74 = load i32, i32* %j, align 4
  %idxprom310 = sext i32 %74 to i64
  %arrayidx311 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9), i32 0, i64 %idxprom310
  %75 = load i8, i8* %arrayidx311, align 1
  %conv312 = zext i8 %75 to i32
  %cmp313 = icmp eq i32 %conv312, 1
  br i1 %cmp313, label %if.then.315, label %if.else.317

if.then.315:                                      ; preds = %if.else.309
  %call316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.319

if.else.317:                                      ; preds = %if.else.309
  %call318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.319

if.end.319:                                       ; preds = %if.else.317, %if.then.315
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.then.307
  br label %for.inc.321

for.inc.321:                                      ; preds = %if.end.320
  %76 = load i32, i32* %j, align 4
  %inc322 = add nsw i32 %76, 1
  store i32 %inc322, i32* %j, align 4
  br label %for.cond.298

for.end.323:                                      ; preds = %for.cond.298
  %77 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 9), align 1
  %conv324 = zext i8 %77 to i32
  %cmp325 = icmp eq i32 %conv324, 0
  br i1 %cmp325, label %if.then.327, label %if.else.329

if.then.327:                                      ; preds = %for.end.323
  %call328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.338

if.else.329:                                      ; preds = %for.end.323
  %78 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 9), align 1
  %conv330 = zext i8 %78 to i32
  %cmp331 = icmp eq i32 %conv330, 1
  br i1 %cmp331, label %if.then.333, label %if.else.335

if.then.333:                                      ; preds = %if.else.329
  %call334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.337

if.else.335:                                      ; preds = %if.else.329
  %call336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.337

if.end.337:                                       ; preds = %if.else.335, %if.then.333
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %if.then.327
  store i32 10, i32* %j, align 4
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.362, %if.end.338
  %79 = load i32, i32* %j, align 4
  %cmp340 = icmp slt i32 %79, 15
  br i1 %cmp340, label %for.body.342, label %for.end.364

for.body.342:                                     ; preds = %for.cond.339
  %80 = load i32, i32* %j, align 4
  %idxprom343 = sext i32 %80 to i64
  %arrayidx344 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9), i32 0, i64 %idxprom343
  %81 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %81 to i32
  %cmp346 = icmp eq i32 %conv345, 0
  br i1 %cmp346, label %if.then.348, label %if.else.350

if.then.348:                                      ; preds = %for.body.342
  %call349 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.361

if.else.350:                                      ; preds = %for.body.342
  %82 = load i32, i32* %j, align 4
  %idxprom351 = sext i32 %82 to i64
  %arrayidx352 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9), i32 0, i64 %idxprom351
  %83 = load i8, i8* %arrayidx352, align 1
  %conv353 = zext i8 %83 to i32
  %cmp354 = icmp eq i32 %conv353, 1
  br i1 %cmp354, label %if.then.356, label %if.else.358

if.then.356:                                      ; preds = %if.else.350
  %call357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.360

if.else.358:                                      ; preds = %if.else.350
  %call359 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.360

if.end.360:                                       ; preds = %if.else.358, %if.then.356
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.then.348
  br label %for.inc.362

for.inc.362:                                      ; preds = %if.end.361
  %84 = load i32, i32* %j, align 4
  %inc363 = add nsw i32 %84, 1
  store i32 %inc363, i32* %j, align 4
  br label %for.cond.339

for.end.364:                                      ; preds = %for.cond.339
  %85 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 15), align 1
  %conv365 = zext i8 %85 to i32
  %cmp366 = icmp eq i32 %conv365, 0
  br i1 %cmp366, label %if.then.368, label %if.else.370

if.then.368:                                      ; preds = %for.end.364
  %call369 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.379

if.else.370:                                      ; preds = %for.end.364
  %86 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9, i64 15), align 1
  %conv371 = zext i8 %86 to i32
  %cmp372 = icmp eq i32 %conv371, 1
  br i1 %cmp372, label %if.then.374, label %if.else.376

if.then.374:                                      ; preds = %if.else.370
  %call375 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.378

if.else.376:                                      ; preds = %if.else.370
  %call377 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.376, %if.then.374
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.368
  store i32 16, i32* %j, align 4
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.403, %if.end.379
  %87 = load i32, i32* %j, align 4
  %cmp381 = icmp slt i32 %87, 19
  br i1 %cmp381, label %for.body.383, label %for.end.405

for.body.383:                                     ; preds = %for.cond.380
  %88 = load i32, i32* %j, align 4
  %idxprom384 = sext i32 %88 to i64
  %arrayidx385 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9), i32 0, i64 %idxprom384
  %89 = load i8, i8* %arrayidx385, align 1
  %conv386 = zext i8 %89 to i32
  %cmp387 = icmp eq i32 %conv386, 0
  br i1 %cmp387, label %if.then.389, label %if.else.391

if.then.389:                                      ; preds = %for.body.383
  %call390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.402

if.else.391:                                      ; preds = %for.body.383
  %90 = load i32, i32* %j, align 4
  %idxprom392 = sext i32 %90 to i64
  %arrayidx393 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 9), i32 0, i64 %idxprom392
  %91 = load i8, i8* %arrayidx393, align 1
  %conv394 = zext i8 %91 to i32
  %cmp395 = icmp eq i32 %conv394, 1
  br i1 %cmp395, label %if.then.397, label %if.else.399

if.then.397:                                      ; preds = %if.else.391
  %call398 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.401

if.else.399:                                      ; preds = %if.else.391
  %call400 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.401

if.end.401:                                       ; preds = %if.else.399, %if.then.397
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.401, %if.then.389
  br label %for.inc.403

for.inc.403:                                      ; preds = %if.end.402
  %92 = load i32, i32* %j, align 4
  %inc404 = add nsw i32 %92, 1
  store i32 %inc404, i32* %j, align 4
  br label %for.cond.380

for.end.405:                                      ; preds = %for.cond.380
  %call406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  %93 = load i32, i32* @uk, align 4
  %call407 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i32 %93)
  store i32 10, i32* %i, align 4
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.446, %for.end.405
  %94 = load i32, i32* %i, align 4
  %cmp409 = icmp slt i32 %94, 15
  br i1 %cmp409, label %for.body.411, label %for.end.448

for.body.411:                                     ; preds = %for.cond.408
  %95 = load i32, i32* %i, align 4
  %sub412 = sub nsw i32 19, %95
  store i32 %sub412, i32* %ii, align 4
  %96 = load i32, i32* %ii, align 4
  %call413 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %96)
  store i32 0, i32* %j, align 4
  br label %for.cond.414

for.cond.414:                                     ; preds = %for.inc.441, %for.body.411
  %97 = load i32, i32* %j, align 4
  %cmp415 = icmp slt i32 %97, 19
  br i1 %cmp415, label %for.body.417, label %for.end.443

for.body.417:                                     ; preds = %for.cond.414
  %98 = load i32, i32* %j, align 4
  %idxprom418 = sext i32 %98 to i64
  %99 = load i32, i32* %i, align 4
  %idxprom419 = sext i32 %99 to i64
  %arrayidx420 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom419
  %arrayidx421 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx420, i32 0, i64 %idxprom418
  %100 = load i8, i8* %arrayidx421, align 1
  %conv422 = zext i8 %100 to i32
  %cmp423 = icmp eq i32 %conv422, 0
  br i1 %cmp423, label %if.then.425, label %if.else.427

if.then.425:                                      ; preds = %for.body.417
  %call426 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.440

if.else.427:                                      ; preds = %for.body.417
  %101 = load i32, i32* %j, align 4
  %idxprom428 = sext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom429 = sext i32 %102 to i64
  %arrayidx430 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom429
  %arrayidx431 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx430, i32 0, i64 %idxprom428
  %103 = load i8, i8* %arrayidx431, align 1
  %conv432 = zext i8 %103 to i32
  %cmp433 = icmp eq i32 %conv432, 1
  br i1 %cmp433, label %if.then.435, label %if.else.437

if.then.435:                                      ; preds = %if.else.427
  %call436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.439

if.else.437:                                      ; preds = %if.else.427
  %call438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.439

if.end.439:                                       ; preds = %if.else.437, %if.then.435
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %if.then.425
  br label %for.inc.441

for.inc.441:                                      ; preds = %if.end.440
  %104 = load i32, i32* %j, align 4
  %inc442 = add nsw i32 %104, 1
  store i32 %inc442, i32* %j, align 4
  br label %for.cond.414

for.end.443:                                      ; preds = %for.cond.414
  %105 = load i32, i32* %ii, align 4
  %call444 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %105)
  %call445 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.446

for.inc.446:                                      ; preds = %for.end.443
  %106 = load i32, i32* %i, align 4
  %inc447 = add nsw i32 %106, 1
  store i32 %inc447, i32* %i, align 4
  br label %for.cond.408

for.end.448:                                      ; preds = %for.cond.408
  %call449 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.450

for.cond.450:                                     ; preds = %for.inc.473, %for.end.448
  %107 = load i32, i32* %j, align 4
  %cmp451 = icmp slt i32 %107, 3
  br i1 %cmp451, label %for.body.453, label %for.end.475

for.body.453:                                     ; preds = %for.cond.450
  %108 = load i32, i32* %j, align 4
  %idxprom454 = sext i32 %108 to i64
  %arrayidx455 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15), i32 0, i64 %idxprom454
  %109 = load i8, i8* %arrayidx455, align 1
  %conv456 = zext i8 %109 to i32
  %cmp457 = icmp eq i32 %conv456, 0
  br i1 %cmp457, label %if.then.459, label %if.else.461

if.then.459:                                      ; preds = %for.body.453
  %call460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.472

if.else.461:                                      ; preds = %for.body.453
  %110 = load i32, i32* %j, align 4
  %idxprom462 = sext i32 %110 to i64
  %arrayidx463 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15), i32 0, i64 %idxprom462
  %111 = load i8, i8* %arrayidx463, align 1
  %conv464 = zext i8 %111 to i32
  %cmp465 = icmp eq i32 %conv464, 1
  br i1 %cmp465, label %if.then.467, label %if.else.469

if.then.467:                                      ; preds = %if.else.461
  %call468 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.471

if.else.469:                                      ; preds = %if.else.461
  %call470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.471

if.end.471:                                       ; preds = %if.else.469, %if.then.467
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.471, %if.then.459
  br label %for.inc.473

for.inc.473:                                      ; preds = %if.end.472
  %112 = load i32, i32* %j, align 4
  %inc474 = add nsw i32 %112, 1
  store i32 %inc474, i32* %j, align 4
  br label %for.cond.450

for.end.475:                                      ; preds = %for.cond.450
  %113 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15, i64 3), align 1
  %conv476 = zext i8 %113 to i32
  %cmp477 = icmp eq i32 %conv476, 0
  br i1 %cmp477, label %if.then.479, label %if.else.481

if.then.479:                                      ; preds = %for.end.475
  %call480 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.490

if.else.481:                                      ; preds = %for.end.475
  %114 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15, i64 3), align 1
  %conv482 = zext i8 %114 to i32
  %cmp483 = icmp eq i32 %conv482, 1
  br i1 %cmp483, label %if.then.485, label %if.else.487

if.then.485:                                      ; preds = %if.else.481
  %call486 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.489

if.else.487:                                      ; preds = %if.else.481
  %call488 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.489

if.end.489:                                       ; preds = %if.else.487, %if.then.485
  br label %if.end.490

if.end.490:                                       ; preds = %if.end.489, %if.then.479
  store i32 4, i32* %j, align 4
  br label %for.cond.491

for.cond.491:                                     ; preds = %for.inc.514, %if.end.490
  %115 = load i32, i32* %j, align 4
  %cmp492 = icmp slt i32 %115, 9
  br i1 %cmp492, label %for.body.494, label %for.end.516

for.body.494:                                     ; preds = %for.cond.491
  %116 = load i32, i32* %j, align 4
  %idxprom495 = sext i32 %116 to i64
  %arrayidx496 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15), i32 0, i64 %idxprom495
  %117 = load i8, i8* %arrayidx496, align 1
  %conv497 = zext i8 %117 to i32
  %cmp498 = icmp eq i32 %conv497, 0
  br i1 %cmp498, label %if.then.500, label %if.else.502

if.then.500:                                      ; preds = %for.body.494
  %call501 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.513

if.else.502:                                      ; preds = %for.body.494
  %118 = load i32, i32* %j, align 4
  %idxprom503 = sext i32 %118 to i64
  %arrayidx504 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15), i32 0, i64 %idxprom503
  %119 = load i8, i8* %arrayidx504, align 1
  %conv505 = zext i8 %119 to i32
  %cmp506 = icmp eq i32 %conv505, 1
  br i1 %cmp506, label %if.then.508, label %if.else.510

if.then.508:                                      ; preds = %if.else.502
  %call509 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.512

if.else.510:                                      ; preds = %if.else.502
  %call511 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.512

if.end.512:                                       ; preds = %if.else.510, %if.then.508
  br label %if.end.513

if.end.513:                                       ; preds = %if.end.512, %if.then.500
  br label %for.inc.514

for.inc.514:                                      ; preds = %if.end.513
  %120 = load i32, i32* %j, align 4
  %inc515 = add nsw i32 %120, 1
  store i32 %inc515, i32* %j, align 4
  br label %for.cond.491

for.end.516:                                      ; preds = %for.cond.491
  %121 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15, i64 9), align 1
  %conv517 = zext i8 %121 to i32
  %cmp518 = icmp eq i32 %conv517, 0
  br i1 %cmp518, label %if.then.520, label %if.else.522

if.then.520:                                      ; preds = %for.end.516
  %call521 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.531

if.else.522:                                      ; preds = %for.end.516
  %122 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15, i64 9), align 1
  %conv523 = zext i8 %122 to i32
  %cmp524 = icmp eq i32 %conv523, 1
  br i1 %cmp524, label %if.then.526, label %if.else.528

if.then.526:                                      ; preds = %if.else.522
  %call527 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.530

if.else.528:                                      ; preds = %if.else.522
  %call529 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.530

if.end.530:                                       ; preds = %if.else.528, %if.then.526
  br label %if.end.531

if.end.531:                                       ; preds = %if.end.530, %if.then.520
  store i32 10, i32* %j, align 4
  br label %for.cond.532

for.cond.532:                                     ; preds = %for.inc.555, %if.end.531
  %123 = load i32, i32* %j, align 4
  %cmp533 = icmp slt i32 %123, 15
  br i1 %cmp533, label %for.body.535, label %for.end.557

for.body.535:                                     ; preds = %for.cond.532
  %124 = load i32, i32* %j, align 4
  %idxprom536 = sext i32 %124 to i64
  %arrayidx537 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15), i32 0, i64 %idxprom536
  %125 = load i8, i8* %arrayidx537, align 1
  %conv538 = zext i8 %125 to i32
  %cmp539 = icmp eq i32 %conv538, 0
  br i1 %cmp539, label %if.then.541, label %if.else.543

if.then.541:                                      ; preds = %for.body.535
  %call542 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.554

if.else.543:                                      ; preds = %for.body.535
  %126 = load i32, i32* %j, align 4
  %idxprom544 = sext i32 %126 to i64
  %arrayidx545 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15), i32 0, i64 %idxprom544
  %127 = load i8, i8* %arrayidx545, align 1
  %conv546 = zext i8 %127 to i32
  %cmp547 = icmp eq i32 %conv546, 1
  br i1 %cmp547, label %if.then.549, label %if.else.551

if.then.549:                                      ; preds = %if.else.543
  %call550 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.553

if.else.551:                                      ; preds = %if.else.543
  %call552 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.553

if.end.553:                                       ; preds = %if.else.551, %if.then.549
  br label %if.end.554

if.end.554:                                       ; preds = %if.end.553, %if.then.541
  br label %for.inc.555

for.inc.555:                                      ; preds = %if.end.554
  %128 = load i32, i32* %j, align 4
  %inc556 = add nsw i32 %128, 1
  store i32 %inc556, i32* %j, align 4
  br label %for.cond.532

for.end.557:                                      ; preds = %for.cond.532
  %129 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15, i64 15), align 1
  %conv558 = zext i8 %129 to i32
  %cmp559 = icmp eq i32 %conv558, 0
  br i1 %cmp559, label %if.then.561, label %if.else.563

if.then.561:                                      ; preds = %for.end.557
  %call562 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.572

if.else.563:                                      ; preds = %for.end.557
  %130 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15, i64 15), align 1
  %conv564 = zext i8 %130 to i32
  %cmp565 = icmp eq i32 %conv564, 1
  br i1 %cmp565, label %if.then.567, label %if.else.569

if.then.567:                                      ; preds = %if.else.563
  %call568 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.571

if.else.569:                                      ; preds = %if.else.563
  %call570 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.571

if.end.571:                                       ; preds = %if.else.569, %if.then.567
  br label %if.end.572

if.end.572:                                       ; preds = %if.end.571, %if.then.561
  store i32 16, i32* %j, align 4
  br label %for.cond.573

for.cond.573:                                     ; preds = %for.inc.596, %if.end.572
  %131 = load i32, i32* %j, align 4
  %cmp574 = icmp slt i32 %131, 19
  br i1 %cmp574, label %for.body.576, label %for.end.598

for.body.576:                                     ; preds = %for.cond.573
  %132 = load i32, i32* %j, align 4
  %idxprom577 = sext i32 %132 to i64
  %arrayidx578 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15), i32 0, i64 %idxprom577
  %133 = load i8, i8* %arrayidx578, align 1
  %conv579 = zext i8 %133 to i32
  %cmp580 = icmp eq i32 %conv579, 0
  br i1 %cmp580, label %if.then.582, label %if.else.584

if.then.582:                                      ; preds = %for.body.576
  %call583 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.595

if.else.584:                                      ; preds = %for.body.576
  %134 = load i32, i32* %j, align 4
  %idxprom585 = sext i32 %134 to i64
  %arrayidx586 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 15), i32 0, i64 %idxprom585
  %135 = load i8, i8* %arrayidx586, align 1
  %conv587 = zext i8 %135 to i32
  %cmp588 = icmp eq i32 %conv587, 1
  br i1 %cmp588, label %if.then.590, label %if.else.592

if.then.590:                                      ; preds = %if.else.584
  %call591 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.594

if.else.592:                                      ; preds = %if.else.584
  %call593 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.594

if.end.594:                                       ; preds = %if.else.592, %if.then.590
  br label %if.end.595

if.end.595:                                       ; preds = %if.end.594, %if.then.582
  br label %for.inc.596

for.inc.596:                                      ; preds = %if.end.595
  %136 = load i32, i32* %j, align 4
  %inc597 = add nsw i32 %136, 1
  store i32 %inc597, i32* %j, align 4
  br label %for.cond.573

for.end.598:                                      ; preds = %for.cond.573
  %call599 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  %call600 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store i32 16, i32* %i, align 4
  br label %for.cond.601

for.cond.601:                                     ; preds = %for.inc.639, %for.end.598
  %137 = load i32, i32* %i, align 4
  %cmp602 = icmp slt i32 %137, 19
  br i1 %cmp602, label %for.body.604, label %for.end.641

for.body.604:                                     ; preds = %for.cond.601
  %138 = load i32, i32* %i, align 4
  %sub605 = sub nsw i32 19, %138
  store i32 %sub605, i32* %ii, align 4
  %139 = load i32, i32* %ii, align 4
  %call606 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %139)
  store i32 0, i32* %j, align 4
  br label %for.cond.607

for.cond.607:                                     ; preds = %for.inc.634, %for.body.604
  %140 = load i32, i32* %j, align 4
  %cmp608 = icmp slt i32 %140, 19
  br i1 %cmp608, label %for.body.610, label %for.end.636

for.body.610:                                     ; preds = %for.cond.607
  %141 = load i32, i32* %j, align 4
  %idxprom611 = sext i32 %141 to i64
  %142 = load i32, i32* %i, align 4
  %idxprom612 = sext i32 %142 to i64
  %arrayidx613 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom612
  %arrayidx614 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx613, i32 0, i64 %idxprom611
  %143 = load i8, i8* %arrayidx614, align 1
  %conv615 = zext i8 %143 to i32
  %cmp616 = icmp eq i32 %conv615, 0
  br i1 %cmp616, label %if.then.618, label %if.else.620

if.then.618:                                      ; preds = %for.body.610
  %call619 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.633

if.else.620:                                      ; preds = %for.body.610
  %144 = load i32, i32* %j, align 4
  %idxprom621 = sext i32 %144 to i64
  %145 = load i32, i32* %i, align 4
  %idxprom622 = sext i32 %145 to i64
  %arrayidx623 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom622
  %arrayidx624 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx623, i32 0, i64 %idxprom621
  %146 = load i8, i8* %arrayidx624, align 1
  %conv625 = zext i8 %146 to i32
  %cmp626 = icmp eq i32 %conv625, 1
  br i1 %cmp626, label %if.then.628, label %if.else.630

if.then.628:                                      ; preds = %if.else.620
  %call629 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.632

if.else.630:                                      ; preds = %if.else.620
  %call631 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.632

if.end.632:                                       ; preds = %if.else.630, %if.then.628
  br label %if.end.633

if.end.633:                                       ; preds = %if.end.632, %if.then.618
  br label %for.inc.634

for.inc.634:                                      ; preds = %if.end.633
  %147 = load i32, i32* %j, align 4
  %inc635 = add nsw i32 %147, 1
  store i32 %inc635, i32* %j, align 4
  br label %for.cond.607

for.end.636:                                      ; preds = %for.cond.607
  %148 = load i32, i32* %ii, align 4
  %call637 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %148)
  %call638 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.639

for.inc.639:                                      ; preds = %for.end.636
  %149 = load i32, i32* %i, align 4
  %inc640 = add nsw i32 %149, 1
  store i32 %inc640, i32* %i, align 4
  br label %for.cond.601

for.end.641:                                      ; preds = %for.cond.601
  %call642 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
