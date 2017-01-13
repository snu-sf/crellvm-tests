; ModuleID = './MultiSource.Benchmarks.Fhourstones/2.c4.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@history = global [2 x [56 x i32]] [[56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0], [56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0]], align 16
@nodes = common global i64 0, align 8
@plycnt = external global i32, align 4
@height = external global [0 x i32], align 4
@columns = external global [0 x i32], align 4
@colthr = external global [0 x i32], align 4
@posed = external global i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"##-<=>+#\00", align 1
@msecs = common global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Fhourstones 2.0\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Using %d transposition table entries with %d probes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Solving %d-ply position after \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%lu pos / %lu msec = %.1f Kpos/sec\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @c4_init() #0 {
entry:
  %call = call i32 (...) @trans_init()
  ret void
}

declare i32 @trans_init(...) #1

; Function Attrs: nounwind uwtable
define i32 @ab(i32 %alpha, i32 %beta) #0 {
entry:
  %retval = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %besti = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %val = alloca i32, align 4
  %score = alloca i32, align 4
  %x = alloca i32, align 4
  %v = alloca i32, align 4
  %work = alloca i32, align 4
  %nav = alloca i32, align 4
  %av = alloca [8 x i32], align 16
  %poscnt = alloca i64, align 8
  %side = alloca i32, align 4
  %otherside = alloca i32, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  %0 = load i64, i64* @nodes, align 8
  %inc = add nsw i64 %0, 1
  store i64 %inc, i64* @nodes, align 8
  %1 = load i32, i32* @plycnt, align 4
  %cmp = icmp eq i32 %1, 41
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @plycnt, align 4
  %and = and i32 %2, 1
  store i32 %and, i32* %otherside, align 4
  %xor = xor i32 %and, 1
  store i32 %xor, i32* %side, align 4
  store i32 0, i32* %nav, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.47, %if.end
  %3 = load i32, i32* %i, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* %i, align 4
  %cmp2 = icmp sle i32 %inc1, 7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @height, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %h, align 4
  %cmp3 = icmp sle i32 %5, 6
  br i1 %cmp3, label %if.then.4, label %if.end.47

if.then.4:                                        ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %h, align 4
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 %6, i32 %7, i32 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx6, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i32 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %10, 0
  br i1 %cmp9, label %if.then.10, label %if.end.34

if.then.10:                                       ; preds = %lor.lhs.false, %if.then.4
  %11 = load i32, i32* %h, align 4
  %add = add nsw i32 %11, 1
  %cmp11 = icmp sle i32 %add, 6
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.10
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %h, align 4
  %add12 = add nsw i32 %13, 1
  %14 = load i32, i32* %otherside, align 4
  %shl = shl i32 1, %14
  %call13 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 %12, i32 %add12, i32 %shl)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  store i32 -2, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.then.10
  %15 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 0
  store i32 %15, i32* %arrayidx17, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %if.end.16
  %16 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, i32* %i, align 4
  %cmp19 = icmp sle i32 %inc18, 7
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i32 0, i64 %idxprom20
  %18 = load i32, i32* %arrayidx21, align 4
  store i32 %18, i32* %h, align 4
  %cmp22 = icmp sle i32 %18, 6
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.33

land.lhs.true.23:                                 ; preds = %while.body
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %h, align 4
  %call24 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 %19, i32 %20, i32 3)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.32, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true.23
  %21 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i32 0, i64 %idxprom27
  %22 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i32 0, i64 %idxprom29
  %23 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp ne i32 %23, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false.26, %land.lhs.true.23
  store i32 -2, i32* %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false.26, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %nav, align 4
  br label %for.end

if.end.34:                                        ; preds = %lor.lhs.false
  %24 = load i32, i32* %h, align 4
  %add35 = add nsw i32 %24, 1
  %cmp36 = icmp sle i32 %add35, 6
  br i1 %cmp36, label %land.lhs.true.37, label %if.then.42

land.lhs.true.37:                                 ; preds = %if.end.34
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %h, align 4
  %add38 = add nsw i32 %26, 1
  %27 = load i32, i32* %otherside, align 4
  %shl39 = shl i32 1, %27
  %call40 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 %25, i32 %add38, i32 %shl39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.46, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.37, %if.end.34
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %nav, align 4
  %inc43 = add nsw i32 %29, 1
  store i32 %inc43, i32* %nav, align 4
  %idxprom44 = sext i32 %29 to i64
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 %idxprom44
  store i32 %28, i32* %arrayidx45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %land.lhs.true.37
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %for.body
  br label %for.cond

for.end:                                          ; preds = %while.end, %for.cond
  %30 = load i32, i32* %nav, align 4
  %cmp48 = icmp eq i32 %30, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end
  store i32 -2, i32* %retval
  br label %return

if.end.50:                                        ; preds = %for.end
  %31 = load i32, i32* %nav, align 4
  %cmp51 = icmp eq i32 %31, 1
  br i1 %cmp51, label %if.then.52, label %if.end.59

if.then.52:                                       ; preds = %if.end.50
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 0
  %32 = load i32, i32* %arrayidx53, align 4
  %call54 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 %32)
  %33 = load i32, i32* %beta.addr, align 4
  %sub = sub nsw i32 0, %33
  %34 = load i32, i32* %alpha.addr, align 4
  %sub55 = sub nsw i32 0, %34
  %call56 = call i32 @ab(i32 %sub, i32 %sub55)
  %sub57 = sub nsw i32 0, %call56
  store i32 %sub57, i32* %score, align 4
  %call58 = call i32 (...) @backmove()
  %35 = load i32, i32* %score, align 4
  store i32 %35, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.50
  %call60 = call i32 (...) @transpose()
  store i32 %call60, i32* %x, align 4
  %cmp61 = icmp ne i32 %call60, -128
  br i1 %cmp61, label %if.then.62, label %if.end.76

if.then.62:                                       ; preds = %if.end.59
  %36 = load i32, i32* %x, align 4
  %shr = ashr i32 %36, 5
  store i32 %shr, i32* %score, align 4
  %37 = load i32, i32* %score, align 4
  %cmp63 = icmp eq i32 %37, -1
  br i1 %cmp63, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %if.then.62
  store i32 0, i32* %beta.addr, align 4
  %38 = load i32, i32* %alpha.addr, align 4
  %cmp65 = icmp sle i32 0, %38
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.64
  %39 = load i32, i32* %score, align 4
  store i32 %39, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.then.64
  br label %if.end.75

if.else:                                          ; preds = %if.then.62
  %40 = load i32, i32* %score, align 4
  %cmp68 = icmp eq i32 %40, 1
  br i1 %cmp68, label %if.then.69, label %if.else.73

if.then.69:                                       ; preds = %if.else
  store i32 0, i32* %alpha.addr, align 4
  %41 = load i32, i32* %beta.addr, align 4
  %cmp70 = icmp sge i32 0, %41
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.69
  %42 = load i32, i32* %score, align 4
  store i32 %42, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.69
  br label %if.end.74

if.else.73:                                       ; preds = %if.else
  %43 = load i32, i32* %score, align 4
  store i32 %43, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.72
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.67
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.59
  %44 = load i64, i64* @posed, align 8
  store i64 %44, i64* %poscnt, align 8
  store i32 0, i32* %besti, align 4
  store i32 0, i32* %l, align 4
  store i32 -999999, i32* %score, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.128, %if.end.76
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %nav, align 4
  %cmp78 = icmp slt i32 %45, %46
  br i1 %cmp78, label %for.body.79, label %for.end.130

for.body.79:                                      ; preds = %for.cond.77
  %47 = load i32, i32* %i, align 4
  store i32 %47, i32* %j, align 4
  store i32 -999999, i32* %val, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc, %for.body.79
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* %nav, align 4
  %cmp81 = icmp slt i32 %48, %49
  br i1 %cmp81, label %for.body.82, label %for.end.96

for.body.82:                                      ; preds = %for.cond.80
  %50 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %50 to i64
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 %idxprom83
  %51 = load i32, i32* %arrayidx84, align 4
  store i32 %51, i32* %k, align 4
  %52 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %52 to i64
  %arrayidx86 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i32 0, i64 %idxprom85
  %53 = load i32, i32* %arrayidx86, align 4
  %shl87 = shl i32 %53, 3
  %54 = load i32, i32* %k, align 4
  %or = or i32 %shl87, %54
  %idxprom88 = sext i32 %or to i64
  %55 = load i32, i32* %side, align 4
  %idxprom89 = sext i32 %55 to i64
  %arrayidx90 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i32 0, i64 %idxprom89
  %arrayidx91 = getelementptr inbounds [56 x i32], [56 x i32]* %arrayidx90, i32 0, i64 %idxprom88
  %56 = load i32, i32* %arrayidx91, align 4
  store i32 %56, i32* %v, align 4
  %57 = load i32, i32* %v, align 4
  %58 = load i32, i32* %val, align 4
  %cmp92 = icmp sgt i32 %57, %58
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %for.body.82
  %59 = load i32, i32* %v, align 4
  store i32 %59, i32* %val, align 4
  %60 = load i32, i32* %j, align 4
  store i32 %60, i32* %l, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %for.body.82
  br label %for.inc

for.inc:                                          ; preds = %if.end.94
  %61 = load i32, i32* %j, align 4
  %inc95 = add nsw i32 %61, 1
  store i32 %inc95, i32* %j, align 4
  br label %for.cond.80

for.end.96:                                       ; preds = %for.cond.80
  %62 = load i32, i32* %l, align 4
  %idxprom97 = sext i32 %62 to i64
  %arrayidx98 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 %idxprom97
  %63 = load i32, i32* %arrayidx98, align 4
  store i32 %63, i32* %j, align 4
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %l, align 4
  %cmp99 = icmp ne i32 %64, %65
  br i1 %cmp99, label %if.then.100, label %if.end.107

if.then.100:                                      ; preds = %for.end.96
  %66 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %66 to i64
  %arrayidx102 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 %idxprom101
  %67 = load i32, i32* %arrayidx102, align 4
  %68 = load i32, i32* %l, align 4
  %idxprom103 = sext i32 %68 to i64
  %arrayidx104 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 %idxprom103
  store i32 %67, i32* %arrayidx104, align 4
  %69 = load i32, i32* %j, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %70 to i64
  %arrayidx106 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 %idxprom105
  store i32 %69, i32* %arrayidx106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.100, %for.end.96
  %71 = load i32, i32* %j, align 4
  %call108 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 %71)
  %72 = load i32, i32* %beta.addr, align 4
  %sub109 = sub nsw i32 0, %72
  %73 = load i32, i32* %alpha.addr, align 4
  %sub110 = sub nsw i32 0, %73
  %call111 = call i32 @ab(i32 %sub109, i32 %sub110)
  %sub112 = sub nsw i32 0, %call111
  store i32 %sub112, i32* %val, align 4
  %call113 = call i32 (...) @backmove()
  %74 = load i32, i32* %val, align 4
  %75 = load i32, i32* %score, align 4
  %cmp114 = icmp sgt i32 %74, %75
  br i1 %cmp114, label %if.then.115, label %if.end.127

if.then.115:                                      ; preds = %if.end.107
  %76 = load i32, i32* %i, align 4
  store i32 %76, i32* %besti, align 4
  %77 = load i32, i32* %val, align 4
  store i32 %77, i32* %score, align 4
  %78 = load i32, i32* %alpha.addr, align 4
  %cmp116 = icmp sgt i32 %77, %78
  br i1 %cmp116, label %land.lhs.true.117, label %if.end.126

land.lhs.true.117:                                ; preds = %if.then.115
  %79 = load i32, i32* %val, align 4
  store i32 %79, i32* %alpha.addr, align 4
  %80 = load i32, i32* %beta.addr, align 4
  %cmp118 = icmp sge i32 %79, %80
  br i1 %cmp118, label %if.then.119, label %if.end.126

if.then.119:                                      ; preds = %land.lhs.true.117
  %81 = load i32, i32* %score, align 4
  %cmp120 = icmp eq i32 %81, 0
  br i1 %cmp120, label %land.lhs.true.121, label %if.end.125

land.lhs.true.121:                                ; preds = %if.then.119
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %nav, align 4
  %sub122 = sub nsw i32 %83, 1
  %cmp123 = icmp slt i32 %82, %sub122
  br i1 %cmp123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %land.lhs.true.121
  store i32 1, i32* %score, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %land.lhs.true.121, %if.then.119
  br label %for.end.130

if.end.126:                                       ; preds = %land.lhs.true.117, %if.then.115
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.107
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %84 = load i32, i32* %i, align 4
  %inc129 = add nsw i32 %84, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond.77

for.end.130:                                      ; preds = %if.end.125, %for.cond.77
  %85 = load i32, i32* %besti, align 4
  %cmp131 = icmp sgt i32 %85, 0
  br i1 %cmp131, label %if.then.132, label %if.end.164

if.then.132:                                      ; preds = %for.end.130
  store i32 0, i32* %i, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.148, %if.then.132
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %besti, align 4
  %cmp134 = icmp slt i32 %86, %87
  br i1 %cmp134, label %for.body.135, label %for.end.150

for.body.135:                                     ; preds = %for.cond.133
  %88 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %88 to i64
  %arrayidx137 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 %idxprom136
  %89 = load i32, i32* %arrayidx137, align 4
  %idxprom138 = sext i32 %89 to i64
  %arrayidx139 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i32 0, i64 %idxprom138
  %90 = load i32, i32* %arrayidx139, align 4
  %shl140 = shl i32 %90, 3
  %91 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %91 to i64
  %arrayidx142 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 %idxprom141
  %92 = load i32, i32* %arrayidx142, align 4
  %or143 = or i32 %shl140, %92
  %idxprom144 = sext i32 %or143 to i64
  %93 = load i32, i32* %side, align 4
  %idxprom145 = sext i32 %93 to i64
  %arrayidx146 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i32 0, i64 %idxprom145
  %arrayidx147 = getelementptr inbounds [56 x i32], [56 x i32]* %arrayidx146, i32 0, i64 %idxprom144
  %94 = load i32, i32* %arrayidx147, align 4
  %dec = add nsw i32 %94, -1
  store i32 %dec, i32* %arrayidx147, align 4
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.135
  %95 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %95, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond.133

for.end.150:                                      ; preds = %for.cond.133
  %96 = load i32, i32* %besti, align 4
  %97 = load i32, i32* %besti, align 4
  %idxprom151 = sext i32 %97 to i64
  %arrayidx152 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 %idxprom151
  %98 = load i32, i32* %arrayidx152, align 4
  %idxprom153 = sext i32 %98 to i64
  %arrayidx154 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i32 0, i64 %idxprom153
  %99 = load i32, i32* %arrayidx154, align 4
  %shl155 = shl i32 %99, 3
  %100 = load i32, i32* %besti, align 4
  %idxprom156 = sext i32 %100 to i64
  %arrayidx157 = getelementptr inbounds [8 x i32], [8 x i32]* %av, i32 0, i64 %idxprom156
  %101 = load i32, i32* %arrayidx157, align 4
  %or158 = or i32 %shl155, %101
  %idxprom159 = sext i32 %or158 to i64
  %102 = load i32, i32* %side, align 4
  %idxprom160 = sext i32 %102 to i64
  %arrayidx161 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i32 0, i64 %idxprom160
  %arrayidx162 = getelementptr inbounds [56 x i32], [56 x i32]* %arrayidx161, i32 0, i64 %idxprom159
  %103 = load i32, i32* %arrayidx162, align 4
  %add163 = add nsw i32 %103, %96
  store i32 %add163, i32* %arrayidx162, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %for.end.150, %for.end.130
  %104 = load i64, i64* @posed, align 8
  %105 = load i64, i64* %poscnt, align 8
  %sub165 = sub nsw i64 %104, %105
  store i64 %sub165, i64* %poscnt, align 8
  store i32 1, i32* %work, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.170, %if.end.164
  %106 = load i64, i64* %poscnt, align 8
  %shr167 = ashr i64 %106, 1
  store i64 %shr167, i64* %poscnt, align 8
  %cmp168 = icmp ne i64 %shr167, 0
  br i1 %cmp168, label %for.body.169, label %for.end.172

for.body.169:                                     ; preds = %for.cond.166
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.169
  %107 = load i32, i32* %work, align 4
  %inc171 = add nsw i32 %107, 1
  store i32 %inc171, i32* %work, align 4
  br label %for.cond.166

for.end.172:                                      ; preds = %for.cond.166
  %108 = load i32, i32* %x, align 4
  %cmp173 = icmp ne i32 %108, -128
  br i1 %cmp173, label %if.then.174, label %if.else.181

if.then.174:                                      ; preds = %for.end.172
  %109 = load i32, i32* %score, align 4
  %110 = load i32, i32* %x, align 4
  %shr175 = ashr i32 %110, 5
  %sub176 = sub nsw i32 0, %shr175
  %cmp177 = icmp eq i32 %109, %sub176
  br i1 %cmp177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.then.174
  store i32 0, i32* %score, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.then.174
  %111 = load i32, i32* %score, align 4
  %112 = load i32, i32* %work, align 4
  %call180 = call i32 (i32, i32, ...) bitcast (i32 (...)* @transrestore to i32 (i32, i32, ...)*)(i32 %111, i32 %112)
  br label %if.end.183

if.else.181:                                      ; preds = %for.end.172
  %113 = load i32, i32* %score, align 4
  %114 = load i32, i32* %work, align 4
  %call182 = call i32 (i32, i32, ...) bitcast (i32 (...)* @transtore to i32 (i32, i32, ...)*)(i32 %113, i32 %114)
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.181, %if.end.179
  %115 = load i32, i32* @plycnt, align 4
  %cmp184 = icmp eq i32 %115, 8
  br i1 %cmp184, label %if.then.185, label %if.end.191

if.then.185:                                      ; preds = %if.end.183
  %call186 = call i32 (...) @printMoves()
  %116 = load i32, i32* %score, align 4
  %add187 = add nsw i32 4, %116
  %idxprom188 = sext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i32 0, i64 %idxprom188
  %117 = load i8, i8* %arrayidx189, align 1
  %conv = sext i8 %117 to i32
  %118 = load i32, i32* %work, align 4
  %call190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %conv, i32 %118)
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.185, %if.end.183
  %119 = load i32, i32* %score, align 4
  store i32 %119, i32* %retval
  br label %return

return:                                           ; preds = %if.end.191, %if.else.73, %if.then.71, %if.then.66, %if.then.52, %if.then.49, %if.then.32, %if.then.15, %if.then
  %120 = load i32, i32* %retval
  ret i32 %120
}

declare i32 @wins(...) #1

declare i32 @makemove(...) #1

declare i32 @backmove(...) #1

declare i32 @transpose(...) #1

declare i32 @transrestore(...) #1

declare i32 @transtore(...) #1

declare i32 @printMoves(...) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @solve() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %side = alloca i32, align 4
  %x = alloca i32, align 4
  %work = alloca i32, align 4
  %score = alloca i32, align 4
  %poscnt = alloca i64, align 8
  store i64 0, i64* @nodes, align 8
  store i64 1, i64* @msecs, align 8
  %0 = load i32, i32* @plycnt, align 4
  %add = add nsw i32 %0, 1
  %and = and i32 %add, 1
  store i32 %and, i32* %side, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.13, %entry
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  %cmp = icmp sle i32 %inc, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @height, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sle i32 %3, 6
  br i1 %cmp1, label %if.then, label %if.end.13

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32, i32* %side, align 4
  %shl = shl i32 1, %7
  %call = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 %4, i32 %6, i32 %shl)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i32 0, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %11 = load i32, i32* %side, align 4
  %shl8 = shl i32 1, %11
  %cmp9 = icmp eq i32 %10, %shl8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %lor.lhs.false, %if.then
  %12 = load i32, i32* %side, align 4
  %cmp11 = icmp ne i32 %12, 0
  %cond = select i1 %cmp11, i32 2, i32 -2
  %shl12 = shl i32 %cond, 5
  store i32 %shl12, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call14 = call i32 (...) @transpose()
  store i32 %call14, i32* %x, align 4
  %cmp15 = icmp ne i32 %call14, -128
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %for.end
  %13 = load i32, i32* %x, align 4
  %and17 = and i32 %13, 32
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  %14 = load i32, i32* %x, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.end
  %call22 = call i64 (...) @millisecs()
  %sub = sub nsw i64 %call22, 1
  store i64 %sub, i64* @msecs, align 8
  %call23 = call i32 @ab(i32 -2, i32 2)
  store i32 %call23, i32* %score, align 4
  %15 = load i64, i64* @posed, align 8
  store i64 %15, i64* %poscnt, align 8
  store i32 1, i32* %work, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.end.21
  %16 = load i64, i64* %poscnt, align 8
  %shr = ashr i64 %16, 1
  store i64 %shr, i64* %poscnt, align 8
  %cmp25 = icmp ne i64 %shr, 0
  br i1 %cmp25, label %for.body.26, label %for.end.28

for.body.26:                                      ; preds = %for.cond.24
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %17 = load i32, i32* %work, align 4
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, i32* %work, align 4
  br label %for.cond.24

for.end.28:                                       ; preds = %for.cond.24
  %call29 = call i64 (...) @millisecs()
  %18 = load i64, i64* @msecs, align 8
  %sub30 = sub nsw i64 %call29, %18
  store i64 %sub30, i64* @msecs, align 8
  %19 = load i32, i32* %score, align 4
  %shl31 = shl i32 %19, 5
  %20 = load i32, i32* %work, align 4
  %or = or i32 %shl31, %20
  store i32 %or, i32* %retval
  br label %return

return:                                           ; preds = %for.end.28, %if.then.19, %if.then.10
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i64 @millisecs(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, i32* %retval
  call void @c4_init()
  %call = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i32 1050011, i32 8)
  br label %for.cond

for.cond:                                         ; preds = %if.end.29, %entry
  %call2 = call i32 (...) @reset()
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %for.cond
  %call3 = call i32 @getchar()
  store i32 %call3, i32* %c, align 4
  %cmp = icmp ne i32 %call3, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  %cmp4 = icmp sge i32 %0, 49
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %1 = load i32, i32* %c, align 4
  %cmp5 = icmp sle i32 %1, 55
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %2, 48
  %call6 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 %sub)
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true, %while.body
  %3 = load i32, i32* %c, align 4
  %cmp7 = icmp sge i32 %3, 65
  br i1 %cmp7, label %land.lhs.true.8, label %if.else.13

land.lhs.true.8:                                  ; preds = %if.else
  %4 = load i32, i32* %c, align 4
  %cmp9 = icmp sle i32 %4, 71
  br i1 %cmp9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %land.lhs.true.8
  %5 = load i32, i32* %c, align 4
  %sub11 = sub nsw i32 %5, 65
  %add = add nsw i32 %sub11, 1
  %call12 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 %add)
  br label %if.end.25

if.else.13:                                       ; preds = %land.lhs.true.8, %if.else
  %6 = load i32, i32* %c, align 4
  %cmp14 = icmp sge i32 %6, 97
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.21

land.lhs.true.15:                                 ; preds = %if.else.13
  %7 = load i32, i32* %c, align 4
  %cmp16 = icmp sle i32 %7, 103
  br i1 %cmp16, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %land.lhs.true.15
  %8 = load i32, i32* %c, align 4
  %sub18 = sub nsw i32 %8, 97
  %add19 = add nsw i32 %sub18, 1
  %call20 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 %add19)
  br label %if.end.24

if.else.21:                                       ; preds = %land.lhs.true.15, %if.else.13
  %9 = load i32, i32* %c, align 4
  %cmp22 = icmp eq i32 %9, 10
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.else.21
  br label %while.end

if.end:                                           ; preds = %if.else.21
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.10
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.then.23, %while.cond
  %10 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %10, -1
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %while.end
  br label %for.end

if.end.29:                                        ; preds = %while.end
  %11 = load i32, i32* @plycnt, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i32 %11)
  %call31 = call i32 (...) @printMoves()
  %call32 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  %call33 = call i32 (...) @emptyTT()
  %call34 = call i32 @solve()
  store i32 %call34, i32* %result, align 4
  %12 = load i32, i32* %result, align 4
  %shr = ashr i32 %12, 5
  %13 = load i32, i32* %result, align 4
  %shr35 = ashr i32 %13, 5
  %add36 = add nsw i32 4, %shr35
  %idxprom = sext i32 %add36 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %15 = load i32, i32* %result, align 4
  %and = and i32 %15, 31
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32 %shr, i32 %conv, i32 %and)
  %16 = load i64, i64* @nodes, align 8
  %17 = load i64, i64* @msecs, align 8
  %18 = load i64, i64* @nodes, align 8
  %conv38 = sitofp i64 %18 to double
  %19 = load i64, i64* @msecs, align 8
  %conv39 = sitofp i64 %19 to double
  %div = fdiv double %conv38, %conv39
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i64 %16, i64 %17, double %div)
  %call41 = call i32 (...) @htstat()
  br label %for.cond

for.end:                                          ; preds = %if.then.28
  ret i32 0
}

declare i32 @puts(i8*) #1

declare i32 @reset(...) #1

declare i32 @getchar() #1

declare i32 @emptyTT(...) #1

declare i32 @htstat(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
