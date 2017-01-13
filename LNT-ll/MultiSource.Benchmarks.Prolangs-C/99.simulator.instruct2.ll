; ModuleID = './MultiSource.Benchmarks.Prolangs-C/99.simulator.instruct2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGISTER = external global [10 x i32], align 16
@.str = private unnamed_addr constant [5 x i8] c"Set \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Set CC to =.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Set CC to <.\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Set CC to >.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Attempted division by zero.\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Generated SVC interupt %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"X has overflowed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Set X to \00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c" and set CC to =.\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c" and set CC to <.\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c" and set CC to >.\0A\00", align 1
@TYPE_OUT_MODE = common global [6 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @MOD(i32 %N, i32 %M) #0 {
entry:
  %N.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* %N.addr, align 4
  %2 = load i32, i32* %M.addr, align 4
  %div = sdiv i32 %1, %2
  %3 = load i32, i32* %M.addr, align 4
  %mul = mul nsw i32 %div, %3
  %sub = sub nsw i32 %0, %mul
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define void @ADDR_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %OVERFLOW1 = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  %REG1_SIGN = alloca i32, align 4
  %REG2_SIGN = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  store i32 0, i32* %OVERFLOW1, align 4
  store i32 1, i32* %REG1_SIGN, align 4
  store i32 1, i32* %REG2_SIGN, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %REG1, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %REG2, align 4
  %cmp2 = icmp sge i32 %2, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.then

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %REG2, align 4
  %cmp4 = icmp slt i32 %3, 10
  br i1 %cmp4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  br label %if.end.100

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  %4 = load i32, i32* %REG1, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp5 = icmp sge i32 %5, 8388608
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  store i32 -1, i32* %REG1_SIGN, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  %6 = load i32, i32* %REG2, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom7
  %7 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp sge i32 %7, 8388608
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -1, i32* %REG2_SIGN, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %8 = load i32, i32* %REG2_SIGN, align 4
  %cmp12 = icmp eq i32 %8, 1
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.27

land.lhs.true.13:                                 ; preds = %if.end.11
  %9 = load i32, i32* %REG1_SIGN, align 4
  %cmp14 = icmp eq i32 %9, 1
  br i1 %cmp14, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %land.lhs.true.13
  %10 = load i32, i32* %REG2, align 4
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom16
  %11 = load i32, i32* %arrayidx17, align 4
  %12 = load i32, i32* %REG1, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom18
  %13 = load i32, i32* %arrayidx19, align 4
  %add = add nsw i32 %11, %13
  %14 = load i32, i32* %REG2, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom20
  store i32 %add, i32* %arrayidx21, align 4
  %15 = load i32, i32* %REG2, align 4
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom22
  %16 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp sge i32 %16, 8388608
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.15
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.15
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true.13, %if.end.11
  %17 = load i32, i32* %REG2_SIGN, align 4
  %cmp28 = icmp eq i32 %17, -1
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.45

land.lhs.true.29:                                 ; preds = %if.end.27
  %18 = load i32, i32* %REG1_SIGN, align 4
  %cmp30 = icmp eq i32 %18, 1
  br i1 %cmp30, label %if.then.31, label %if.end.45

if.then.31:                                       ; preds = %land.lhs.true.29
  %19 = load i32, i32* %REG2, align 4
  %idxprom32 = sext i32 %19 to i64
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom32
  %20 = load i32, i32* %arrayidx33, align 4
  %21 = load i32, i32* %REG1, align 4
  %idxprom34 = sext i32 %21 to i64
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom34
  %22 = load i32, i32* %arrayidx35, align 4
  %add36 = add nsw i32 %20, %22
  %23 = load i32, i32* %REG2, align 4
  %idxprom37 = sext i32 %23 to i64
  %arrayidx38 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom37
  store i32 %add36, i32* %arrayidx38, align 4
  %24 = load i32, i32* %REG2, align 4
  %idxprom39 = sext i32 %24 to i64
  %arrayidx40 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom39
  %25 = load i32, i32* %arrayidx40, align 4
  %26 = load i32, i32* %REG2, align 4
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom41
  %27 = load i32, i32* %arrayidx42, align 4
  %div = sdiv i32 %27, 16777216
  %mul = mul nsw i32 %div, 16777216
  %sub = sub nsw i32 %25, %mul
  %28 = load i32, i32* %REG2, align 4
  %idxprom43 = sext i32 %28 to i64
  %arrayidx44 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom43
  store i32 %sub, i32* %arrayidx44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.31, %land.lhs.true.29, %if.end.27
  %29 = load i32, i32* %REG2_SIGN, align 4
  %cmp46 = icmp eq i32 %29, 1
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.66

land.lhs.true.47:                                 ; preds = %if.end.45
  %30 = load i32, i32* %REG1_SIGN, align 4
  %cmp48 = icmp eq i32 %30, -1
  br i1 %cmp48, label %if.then.49, label %if.end.66

if.then.49:                                       ; preds = %land.lhs.true.47
  %31 = load i32, i32* %REG2, align 4
  %idxprom50 = sext i32 %31 to i64
  %arrayidx51 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom50
  %32 = load i32, i32* %arrayidx51, align 4
  %33 = load i32, i32* %REG1, align 4
  %idxprom52 = sext i32 %33 to i64
  %arrayidx53 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom52
  %34 = load i32, i32* %arrayidx53, align 4
  %add54 = add nsw i32 %32, %34
  %35 = load i32, i32* %REG2, align 4
  %idxprom55 = sext i32 %35 to i64
  %arrayidx56 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom55
  store i32 %add54, i32* %arrayidx56, align 4
  %36 = load i32, i32* %REG2, align 4
  %idxprom57 = sext i32 %36 to i64
  %arrayidx58 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom57
  %37 = load i32, i32* %arrayidx58, align 4
  %38 = load i32, i32* %REG2, align 4
  %idxprom59 = sext i32 %38 to i64
  %arrayidx60 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom59
  %39 = load i32, i32* %arrayidx60, align 4
  %div61 = sdiv i32 %39, 16777216
  %mul62 = mul nsw i32 %div61, 16777216
  %sub63 = sub nsw i32 %37, %mul62
  %40 = load i32, i32* %REG2, align 4
  %idxprom64 = sext i32 %40 to i64
  %arrayidx65 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom64
  store i32 %sub63, i32* %arrayidx65, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.49, %land.lhs.true.47, %if.end.45
  %41 = load i32, i32* %REG2_SIGN, align 4
  %cmp67 = icmp eq i32 %41, -1
  br i1 %cmp67, label %land.lhs.true.68, label %if.end.92

land.lhs.true.68:                                 ; preds = %if.end.66
  %42 = load i32, i32* %REG1_SIGN, align 4
  %cmp69 = icmp eq i32 %42, -1
  br i1 %cmp69, label %if.then.70, label %if.end.92

if.then.70:                                       ; preds = %land.lhs.true.68
  %43 = load i32, i32* %REG2, align 4
  %idxprom71 = sext i32 %43 to i64
  %arrayidx72 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom71
  %44 = load i32, i32* %arrayidx72, align 4
  %45 = load i32, i32* %REG1, align 4
  %idxprom73 = sext i32 %45 to i64
  %arrayidx74 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom73
  %46 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %44, %46
  %47 = load i32, i32* %REG2, align 4
  %idxprom76 = sext i32 %47 to i64
  %arrayidx77 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom76
  store i32 %add75, i32* %arrayidx77, align 4
  %48 = load i32, i32* %REG2, align 4
  %idxprom78 = sext i32 %48 to i64
  %arrayidx79 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom78
  %49 = load i32, i32* %arrayidx79, align 4
  %50 = load i32, i32* %REG2, align 4
  %idxprom80 = sext i32 %50 to i64
  %arrayidx81 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom80
  %51 = load i32, i32* %arrayidx81, align 4
  %div82 = sdiv i32 %51, 16777216
  %mul83 = mul nsw i32 %div82, 16777216
  %sub84 = sub nsw i32 %49, %mul83
  %52 = load i32, i32* %REG2, align 4
  %idxprom85 = sext i32 %52 to i64
  %arrayidx86 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom85
  store i32 %sub84, i32* %arrayidx86, align 4
  %53 = load i32, i32* %REG2, align 4
  %idxprom87 = sext i32 %53 to i64
  %arrayidx88 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom87
  %54 = load i32, i32* %arrayidx88, align 4
  %cmp89 = icmp slt i32 %54, 8388608
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.then.70
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.then.70
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %land.lhs.true.68, %if.end.66
  %55 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.92
  %56 = load i32, i32* %REG2, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %57 = load i32, i32* %REG2, align 4
  %idxprom94 = sext i32 %57 to i64
  %arrayidx95 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom94
  %58 = load i32, i32* %arrayidx95, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.end.92
  %59 = load i32, i32* %OVERFLOW1, align 4
  %tobool97 = icmp ne i32 %59, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.96
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 4)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.96
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then
  ret void
}

declare i32 @FORMAT2(...) #1

declare void @SIGNAL_INTERUPT(...) #1

declare void @PRINT_REG_NAME(...) #1

declare void @PRINT_CONSTANT(...) #1

; Function Attrs: nounwind uwtable
define void @CLEAR_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %REG1, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  br label %if.end.5

if.else:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %REG1, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %3 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %4 = load i32, i32* %REG1, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %5 = load i32, i32* %REG1, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @COMPR_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  %REG1_VAL = alloca i32, align 4
  %REG2_VAL = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sge i32 %1, 8388608
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %REG1, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %3, 16777216
  store i32 %sub, i32* %REG1_VAL, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %REG1, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  store i32 %5, i32* %REG1_VAL, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %REG1, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp sge i32 %7, 8388608
  br i1 %cmp7, label %if.then.8, label %if.else.12

if.then.8:                                        ; preds = %if.end
  %8 = load i32, i32* %REG2, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom9
  %9 = load i32, i32* %arrayidx10, align 4
  %sub11 = sub nsw i32 %9, 16777216
  store i32 %sub11, i32* %REG2_VAL, align 4
  br label %if.end.15

if.else.12:                                       ; preds = %if.end
  %10 = load i32, i32* %REG2, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom13
  %11 = load i32, i32* %arrayidx14, align 4
  store i32 %11, i32* %REG2_VAL, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %if.then.8
  %12 = load i32, i32* %REG1_VAL, align 4
  %13 = load i32, i32* %REG2_VAL, align 4
  %cmp16 = icmp eq i32 %12, %13
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.15
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 0)
  %14 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.17
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.15
  %15 = load i32, i32* %REG1_VAL, align 4
  %16 = load i32, i32* %REG2_VAL, align 4
  %cmp22 = icmp slt i32 %15, %16
  br i1 %cmp22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %if.end.21
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 1)
  %17 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool24 = icmp ne i32 %17, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.23
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.21
  %18 = load i32, i32* %REG1_VAL, align 4
  %19 = load i32, i32* %REG2_VAL, align 4
  %cmp29 = icmp sgt i32 %18, %19
  br i1 %cmp29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.28
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 2)
  %20 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool31 = icmp ne i32 %20, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.30
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.28
  ret void
}

declare void @SET_CC(...) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @DIVR_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  %REG1_SIGN = alloca i32, align 4
  %REG2_SIGN = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  store i32 1, i32* %REG1_SIGN, align 4
  store i32 1, i32* %REG2_SIGN, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %REG1, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %REG2, align 4
  %cmp2 = icmp sge i32 %2, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.then

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %REG2, align 4
  %cmp4 = icmp slt i32 %3, 10
  br i1 %cmp4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  br label %if.end.73

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  %4 = load i32, i32* %REG1, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.else
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 4)
  %6 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.6
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.6
  br label %if.end.72

if.else.9:                                        ; preds = %if.else
  %7 = load i32, i32* %REG1, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom10
  %8 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp sge i32 %8, 8388608
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else.9
  store i32 -1, i32* %REG1_SIGN, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else.9
  %9 = load i32, i32* %REG2, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom15
  %10 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp sge i32 %10, 8388608
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  store i32 -1, i32* %REG2_SIGN, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.14
  %11 = load i32, i32* %REG2_SIGN, align 4
  %cmp20 = icmp eq i32 %11, 1
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.30

land.lhs.true.21:                                 ; preds = %if.end.19
  %12 = load i32, i32* %REG1_SIGN, align 4
  %cmp22 = icmp eq i32 %12, 1
  br i1 %cmp22, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %land.lhs.true.21
  %13 = load i32, i32* %REG2, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom24
  %14 = load i32, i32* %arrayidx25, align 4
  %15 = load i32, i32* %REG1, align 4
  %idxprom26 = sext i32 %15 to i64
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom26
  %16 = load i32, i32* %arrayidx27, align 4
  %div = sdiv i32 %14, %16
  %17 = load i32, i32* %REG2, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom28
  store i32 %div, i32* %arrayidx29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.23, %land.lhs.true.21, %if.end.19
  %18 = load i32, i32* %REG2_SIGN, align 4
  %cmp31 = icmp eq i32 %18, -1
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.43

land.lhs.true.32:                                 ; preds = %if.end.30
  %19 = load i32, i32* %REG1_SIGN, align 4
  %cmp33 = icmp eq i32 %19, 1
  br i1 %cmp33, label %if.then.34, label %if.end.43

if.then.34:                                       ; preds = %land.lhs.true.32
  %20 = load i32, i32* %REG2, align 4
  %idxprom35 = sext i32 %20 to i64
  %arrayidx36 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom35
  %21 = load i32, i32* %arrayidx36, align 4
  %sub = sub nsw i32 16777216, %21
  %22 = load i32, i32* %REG1, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom37
  %23 = load i32, i32* %arrayidx38, align 4
  %div39 = sdiv i32 %sub, %23
  %sub40 = sub nsw i32 16777216, %div39
  %24 = load i32, i32* %REG2, align 4
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom41
  store i32 %sub40, i32* %arrayidx42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.34, %land.lhs.true.32, %if.end.30
  %25 = load i32, i32* %REG2_SIGN, align 4
  %cmp44 = icmp eq i32 %25, 1
  br i1 %cmp44, label %land.lhs.true.45, label %if.end.57

land.lhs.true.45:                                 ; preds = %if.end.43
  %26 = load i32, i32* %REG1_SIGN, align 4
  %cmp46 = icmp eq i32 %26, -1
  br i1 %cmp46, label %if.then.47, label %if.end.57

if.then.47:                                       ; preds = %land.lhs.true.45
  %27 = load i32, i32* %REG2, align 4
  %idxprom48 = sext i32 %27 to i64
  %arrayidx49 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom48
  %28 = load i32, i32* %arrayidx49, align 4
  %29 = load i32, i32* %REG1, align 4
  %idxprom50 = sext i32 %29 to i64
  %arrayidx51 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom50
  %30 = load i32, i32* %arrayidx51, align 4
  %sub52 = sub nsw i32 16777216, %30
  %div53 = sdiv i32 %28, %sub52
  %sub54 = sub nsw i32 16777216, %div53
  %31 = load i32, i32* %REG2, align 4
  %idxprom55 = sext i32 %31 to i64
  %arrayidx56 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom55
  store i32 %sub54, i32* %arrayidx56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.47, %land.lhs.true.45, %if.end.43
  %32 = load i32, i32* %REG2_SIGN, align 4
  %cmp58 = icmp eq i32 %32, -1
  br i1 %cmp58, label %land.lhs.true.59, label %if.end.71

land.lhs.true.59:                                 ; preds = %if.end.57
  %33 = load i32, i32* %REG1_SIGN, align 4
  %cmp60 = icmp eq i32 %33, -1
  br i1 %cmp60, label %if.then.61, label %if.end.71

if.then.61:                                       ; preds = %land.lhs.true.59
  %34 = load i32, i32* %REG2, align 4
  %idxprom62 = sext i32 %34 to i64
  %arrayidx63 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom62
  %35 = load i32, i32* %arrayidx63, align 4
  %sub64 = sub nsw i32 16777216, %35
  %36 = load i32, i32* %REG1, align 4
  %idxprom65 = sext i32 %36 to i64
  %arrayidx66 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom65
  %37 = load i32, i32* %arrayidx66, align 4
  %sub67 = sub nsw i32 16777216, %37
  %div68 = sdiv i32 %sub64, %sub67
  %38 = load i32, i32* %REG2, align 4
  %idxprom69 = sext i32 %38 to i64
  %arrayidx70 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom69
  store i32 %div68, i32* %arrayidx70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.61, %land.lhs.true.59, %if.end.57
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then
  %39 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool74 = icmp ne i32 %39, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.73
  %40 = load i32, i32* %REG2, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %41 = load i32, i32* %REG2, align 4
  %idxprom76 = sext i32 %41 to i64
  %arrayidx77 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom76
  %42 = load i32, i32* %arrayidx77, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.end.73
  ret void
}

; Function Attrs: nounwind uwtable
define void @MULR_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %OVERFLOW1 = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  %REG1_SIGN = alloca i32, align 4
  %REG2_SIGN = alloca i32, align 4
  %STORE_VALUE = alloca double, align 8
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  store i32 0, i32* %OVERFLOW1, align 4
  store i32 1, i32* %REG1_SIGN, align 4
  store i32 1, i32* %REG2_SIGN, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %REG1, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %REG2, align 4
  %cmp2 = icmp sge i32 %2, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.then

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %REG2, align 4
  %cmp4 = icmp slt i32 %3, 10
  br i1 %cmp4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  br label %if.end.121

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  %4 = load i32, i32* %REG1, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp5 = icmp sge i32 %5, 8388608
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  store i32 -1, i32* %REG1_SIGN, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  %6 = load i32, i32* %REG2, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom7
  %7 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp sge i32 %7, 8388608
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -1, i32* %REG2_SIGN, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %8 = load i32, i32* %REG2_SIGN, align 4
  %cmp12 = icmp eq i32 %8, 1
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.30

land.lhs.true.13:                                 ; preds = %if.end.11
  %9 = load i32, i32* %REG1_SIGN, align 4
  %cmp14 = icmp eq i32 %9, 1
  br i1 %cmp14, label %if.then.15, label %if.end.30

if.then.15:                                       ; preds = %land.lhs.true.13
  %10 = load i32, i32* %REG2, align 4
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom16
  %11 = load i32, i32* %arrayidx17, align 4
  %conv = sitofp i32 %11 to double
  %mul = fmul double 1.000000e+00, %conv
  %12 = load i32, i32* %REG1, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom18
  %13 = load i32, i32* %arrayidx19, align 4
  %conv20 = sitofp i32 %13 to double
  %mul21 = fmul double %mul, %conv20
  store double %mul21, double* %STORE_VALUE, align 8
  %14 = load double, double* %STORE_VALUE, align 8
  %cmp22 = fcmp oge double %14, 8.388608e+06
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.then.15
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.29

if.else.25:                                       ; preds = %if.then.15
  %15 = load double, double* %STORE_VALUE, align 8
  %conv26 = fptosi double %15 to i32
  %16 = load i32, i32* %REG2, align 4
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom27
  store i32 %conv26, i32* %arrayidx28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true.13, %if.end.11
  %17 = load i32, i32* %REG2_SIGN, align 4
  %cmp31 = icmp eq i32 %17, -1
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.58

land.lhs.true.33:                                 ; preds = %if.end.30
  %18 = load i32, i32* %REG1_SIGN, align 4
  %cmp34 = icmp eq i32 %18, 1
  br i1 %cmp34, label %if.then.36, label %if.end.58

if.then.36:                                       ; preds = %land.lhs.true.33
  %19 = load i32, i32* %REG2, align 4
  %idxprom37 = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom37
  %20 = load i32, i32* %arrayidx38, align 4
  %sub = sub nsw i32 16777216, %20
  %conv39 = sitofp i32 %sub to double
  %mul40 = fmul double 1.000000e+00, %conv39
  %21 = load i32, i32* %REG1, align 4
  %idxprom41 = sext i32 %21 to i64
  %arrayidx42 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom41
  %22 = load i32, i32* %arrayidx42, align 4
  %conv43 = sitofp i32 %22 to double
  %mul44 = fmul double %mul40, %conv43
  store double %mul44, double* %STORE_VALUE, align 8
  %23 = load double, double* %STORE_VALUE, align 8
  %24 = load double, double* %STORE_VALUE, align 8
  %div = fdiv double %24, 0x4170000000000000
  %conv45 = fptosi double %div to i32
  %mul46 = mul nsw i32 %conv45, 16777216
  %conv47 = sitofp i32 %mul46 to double
  %sub48 = fsub double %23, %conv47
  store double %sub48, double* %STORE_VALUE, align 8
  %25 = load double, double* %STORE_VALUE, align 8
  %cmp49 = fcmp oge double %25, 8.388608e+06
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.then.36
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.57

if.else.52:                                       ; preds = %if.then.36
  %26 = load double, double* %STORE_VALUE, align 8
  %conv53 = fptosi double %26 to i32
  %sub54 = sub nsw i32 16777216, %conv53
  %27 = load i32, i32* %REG2, align 4
  %idxprom55 = sext i32 %27 to i64
  %arrayidx56 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom55
  store i32 %sub54, i32* %arrayidx56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.52, %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true.33, %if.end.30
  %28 = load i32, i32* %REG2_SIGN, align 4
  %cmp59 = icmp eq i32 %28, 1
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.88

land.lhs.true.61:                                 ; preds = %if.end.58
  %29 = load i32, i32* %REG1_SIGN, align 4
  %cmp62 = icmp eq i32 %29, -1
  br i1 %cmp62, label %if.then.64, label %if.end.88

if.then.64:                                       ; preds = %land.lhs.true.61
  %30 = load i32, i32* %REG2, align 4
  %idxprom65 = sext i32 %30 to i64
  %arrayidx66 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom65
  %31 = load i32, i32* %arrayidx66, align 4
  %conv67 = sitofp i32 %31 to double
  %mul68 = fmul double 1.000000e+00, %conv67
  %32 = load i32, i32* %REG1, align 4
  %idxprom69 = sext i32 %32 to i64
  %arrayidx70 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom69
  %33 = load i32, i32* %arrayidx70, align 4
  %sub71 = sub nsw i32 16777216, %33
  %conv72 = sitofp i32 %sub71 to double
  %mul73 = fmul double %mul68, %conv72
  store double %mul73, double* %STORE_VALUE, align 8
  %34 = load double, double* %STORE_VALUE, align 8
  %35 = load double, double* %STORE_VALUE, align 8
  %div74 = fdiv double %35, 0x4170000000000000
  %conv75 = fptosi double %div74 to i32
  %mul76 = mul nsw i32 %conv75, 16777216
  %conv77 = sitofp i32 %mul76 to double
  %sub78 = fsub double %34, %conv77
  store double %sub78, double* %STORE_VALUE, align 8
  %36 = load double, double* %STORE_VALUE, align 8
  %cmp79 = fcmp oge double %36, 8.388608e+06
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %if.then.64
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.87

if.else.82:                                       ; preds = %if.then.64
  %37 = load double, double* %STORE_VALUE, align 8
  %conv83 = fptosi double %37 to i32
  %sub84 = sub nsw i32 16777216, %conv83
  %38 = load i32, i32* %REG2, align 4
  %idxprom85 = sext i32 %38 to i64
  %arrayidx86 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom85
  store i32 %sub84, i32* %arrayidx86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.82, %if.then.81
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %land.lhs.true.61, %if.end.58
  %39 = load i32, i32* %REG2_SIGN, align 4
  %cmp89 = icmp eq i32 %39, -1
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.113

land.lhs.true.91:                                 ; preds = %if.end.88
  %40 = load i32, i32* %REG1_SIGN, align 4
  %cmp92 = icmp eq i32 %40, -1
  br i1 %cmp92, label %if.then.94, label %if.end.113

if.then.94:                                       ; preds = %land.lhs.true.91
  %41 = load i32, i32* %REG2, align 4
  %idxprom95 = sext i32 %41 to i64
  %arrayidx96 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom95
  %42 = load i32, i32* %arrayidx96, align 4
  %sub97 = sub nsw i32 16777216, %42
  %conv98 = sitofp i32 %sub97 to double
  %mul99 = fmul double 1.000000e+00, %conv98
  %43 = load i32, i32* %REG1, align 4
  %idxprom100 = sext i32 %43 to i64
  %arrayidx101 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom100
  %44 = load i32, i32* %arrayidx101, align 4
  %sub102 = sub nsw i32 16777216, %44
  %conv103 = sitofp i32 %sub102 to double
  %mul104 = fmul double %mul99, %conv103
  store double %mul104, double* %STORE_VALUE, align 8
  %45 = load double, double* %STORE_VALUE, align 8
  %cmp105 = fcmp oge double %45, 8.388608e+06
  br i1 %cmp105, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %if.then.94
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.112

if.else.108:                                      ; preds = %if.then.94
  %46 = load double, double* %STORE_VALUE, align 8
  %conv109 = fptosi double %46 to i32
  %47 = load i32, i32* %REG2, align 4
  %idxprom110 = sext i32 %47 to i64
  %arrayidx111 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom110
  store i32 %conv109, i32* %arrayidx111, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.108, %if.then.107
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %land.lhs.true.91, %if.end.88
  %48 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %if.end.113
  %49 = load i32, i32* %REG2, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %50 = load i32, i32* %REG2, align 4
  %idxprom115 = sext i32 %50 to i64
  %arrayidx116 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom115
  %51 = load i32, i32* %arrayidx116, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %if.end.113
  %52 = load i32, i32* %OVERFLOW1, align 4
  %tobool118 = icmp ne i32 %52, 0
  br i1 %tobool118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.117
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 4)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.117
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @RMO_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %REG1, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %REG2, align 4
  %cmp2 = icmp sge i32 %2, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.then

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %REG2, align 4
  %cmp4 = icmp slt i32 %3, 10
  br i1 %cmp4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  %4 = load i32, i32* %REG1, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %REG2, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom5
  store i32 %5, i32* %arrayidx6, align 4
  %7 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %8 = load i32, i32* %REG2, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %9 = load i32, i32* %REG2, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom8
  %10 = load i32, i32* %arrayidx9, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @SHIFTL_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  %LOOP = alloca i32, align 4
  %REG_BITS = alloca [24 x i32], align 16
  %SHIFTED_BITS = alloca [24 x i32], align 16
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %REG1, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %REG1, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %REG_BITS, i32 0, i32 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 %3, i32 3, i32* %arraydecay)
  store i32 0, i32* %LOOP, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, i32* %LOOP, align 4
  %cmp2 = icmp slt i32 %4, 24
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %LOOP, align 4
  %6 = load i32, i32* %REG2, align 4
  %add = add nsw i32 %5, %6
  %add3 = add nsw i32 %add, 1
  %call4 = call i32 @MOD(i32 %add3, i32 24)
  %idxprom5 = sext i32 %call4 to i64
  %arrayidx6 = getelementptr inbounds [24 x i32], [24 x i32]* %REG_BITS, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load i32, i32* %LOOP, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [24 x i32], [24 x i32]* %SHIFTED_BITS, i32 0, i64 %idxprom7
  store i32 %7, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %LOOP, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %LOOP, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay9 = getelementptr inbounds [24 x i32], [24 x i32]* %SHIFTED_BITS, i32 0, i32 0
  %call10 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* %arraydecay9, i32 24)
  %10 = load i32, i32* %REG1, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom11
  store i32 %call10, i32* %arrayidx12, align 4
  %11 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.end
  %12 = load i32, i32* %REG1, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %13 = load i32, i32* %REG1, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom14
  %14 = load i32, i32* %arrayidx15, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.13, %for.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  ret void
}

declare void @BYTES_TO_BITS(...) #1

declare i32 @BITS_TO_BYTE(...) #1

; Function Attrs: nounwind uwtable
define void @SHIFTR_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  %LOOP = alloca i32, align 4
  %REG_BITS = alloca [24 x i32], align 16
  %SHIFTED_BITS = alloca [24 x i32], align 16
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %REG1, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %REG1, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %REG_BITS, i32 0, i32 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 %3, i32 3, i32* %arraydecay)
  store i32 0, i32* %LOOP, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, i32* %LOOP, align 4
  %cmp2 = icmp slt i32 %4, 24
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %LOOP, align 4
  %6 = load i32, i32* %REG2, align 4
  %cmp3 = icmp sle i32 %5, %6
  br i1 %cmp3, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [24 x i32], [24 x i32]* %REG_BITS, i32 0, i64 0
  %7 = load i32, i32* %arrayidx5, align 4
  %8 = load i32, i32* %LOOP, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [24 x i32], [24 x i32]* %SHIFTED_BITS, i32 0, i64 %idxprom6
  store i32 %7, i32* %arrayidx7, align 4
  br label %if.end

if.else.8:                                        ; preds = %for.body
  %9 = load i32, i32* %LOOP, align 4
  %10 = load i32, i32* %REG2, align 4
  %sub = sub nsw i32 %9, %10
  %sub9 = sub nsw i32 %sub, 1
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds [24 x i32], [24 x i32]* %REG_BITS, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load i32, i32* %LOOP, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [24 x i32], [24 x i32]* %SHIFTED_BITS, i32 0, i64 %idxprom12
  store i32 %11, i32* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %LOOP, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %LOOP, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay14 = getelementptr inbounds [24 x i32], [24 x i32]* %SHIFTED_BITS, i32 0, i32 0
  %call15 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* %arraydecay14, i32 24)
  %14 = load i32, i32* %REG1, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom16
  store i32 %call15, i32* %arrayidx17, align 4
  %15 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %for.end
  %16 = load i32, i32* %REG1, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %17 = load i32, i32* %REG1, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom19
  %18 = load i32, i32* %arrayidx20, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %for.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @SUBR_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %OVERFLOW1 = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  %REG1_SIGN = alloca i32, align 4
  %REG2_SIGN = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  store i32 0, i32* %OVERFLOW1, align 4
  store i32 1, i32* %REG1_SIGN, align 4
  store i32 1, i32* %REG2_SIGN, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %REG1, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %REG2, align 4
  %cmp2 = icmp sge i32 %2, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.then

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %REG2, align 4
  %cmp4 = icmp slt i32 %3, 10
  br i1 %cmp4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  br label %if.end.104

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  %4 = load i32, i32* %REG1, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp5 = icmp sge i32 %5, 8388608
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  store i32 -1, i32* %REG1_SIGN, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  %6 = load i32, i32* %REG2, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom7
  %7 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp sge i32 %7, 8388608
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -1, i32* %REG2_SIGN, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %8 = load i32, i32* %REG2_SIGN, align 4
  %cmp12 = icmp eq i32 %8, 1
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.29

land.lhs.true.13:                                 ; preds = %if.end.11
  %9 = load i32, i32* %REG1_SIGN, align 4
  %cmp14 = icmp eq i32 %9, 1
  br i1 %cmp14, label %if.then.15, label %if.end.29

if.then.15:                                       ; preds = %land.lhs.true.13
  %10 = load i32, i32* %REG2, align 4
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom16
  %11 = load i32, i32* %arrayidx17, align 4
  %12 = load i32, i32* %REG1, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom18
  %13 = load i32, i32* %arrayidx19, align 4
  %sub = sub nsw i32 16777216, %13
  %add = add nsw i32 %11, %sub
  %14 = load i32, i32* %REG2, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom20
  store i32 %add, i32* %arrayidx21, align 4
  %15 = load i32, i32* %REG2, align 4
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom22
  %16 = load i32, i32* %arrayidx23, align 4
  %17 = load i32, i32* %REG2, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom24
  %18 = load i32, i32* %arrayidx25, align 4
  %div = sdiv i32 %18, 16777216
  %mul = mul nsw i32 %div, 16777216
  %sub26 = sub nsw i32 %16, %mul
  %19 = load i32, i32* %REG2, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom27
  store i32 %sub26, i32* %arrayidx28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.15, %land.lhs.true.13, %if.end.11
  %20 = load i32, i32* %REG2_SIGN, align 4
  %cmp30 = icmp eq i32 %20, -1
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.56

land.lhs.true.31:                                 ; preds = %if.end.29
  %21 = load i32, i32* %REG1_SIGN, align 4
  %cmp32 = icmp eq i32 %21, 1
  br i1 %cmp32, label %if.then.33, label %if.end.56

if.then.33:                                       ; preds = %land.lhs.true.31
  %22 = load i32, i32* %REG2, align 4
  %idxprom34 = sext i32 %22 to i64
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom34
  %23 = load i32, i32* %arrayidx35, align 4
  %24 = load i32, i32* %REG1, align 4
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom36
  %25 = load i32, i32* %arrayidx37, align 4
  %sub38 = sub nsw i32 16777216, %25
  %add39 = add nsw i32 %23, %sub38
  %26 = load i32, i32* %REG2, align 4
  %idxprom40 = sext i32 %26 to i64
  %arrayidx41 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom40
  store i32 %add39, i32* %arrayidx41, align 4
  %27 = load i32, i32* %REG2, align 4
  %idxprom42 = sext i32 %27 to i64
  %arrayidx43 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom42
  %28 = load i32, i32* %arrayidx43, align 4
  %29 = load i32, i32* %REG2, align 4
  %idxprom44 = sext i32 %29 to i64
  %arrayidx45 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom44
  %30 = load i32, i32* %arrayidx45, align 4
  %div46 = sdiv i32 %30, 16777216
  %mul47 = mul nsw i32 %div46, 16777216
  %sub48 = sub nsw i32 %28, %mul47
  %31 = load i32, i32* %REG2, align 4
  %idxprom49 = sext i32 %31 to i64
  %arrayidx50 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom49
  store i32 %sub48, i32* %arrayidx50, align 4
  %32 = load i32, i32* %REG2, align 4
  %idxprom51 = sext i32 %32 to i64
  %arrayidx52 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom51
  %33 = load i32, i32* %arrayidx52, align 4
  %cmp53 = icmp slt i32 %33, 8388608
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.33
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.33
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.31, %if.end.29
  %34 = load i32, i32* %REG2_SIGN, align 4
  %cmp57 = icmp eq i32 %34, 1
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.74

land.lhs.true.58:                                 ; preds = %if.end.56
  %35 = load i32, i32* %REG1_SIGN, align 4
  %cmp59 = icmp eq i32 %35, -1
  br i1 %cmp59, label %if.then.60, label %if.end.74

if.then.60:                                       ; preds = %land.lhs.true.58
  %36 = load i32, i32* %REG2, align 4
  %idxprom61 = sext i32 %36 to i64
  %arrayidx62 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom61
  %37 = load i32, i32* %arrayidx62, align 4
  %38 = load i32, i32* %REG1, align 4
  %idxprom63 = sext i32 %38 to i64
  %arrayidx64 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom63
  %39 = load i32, i32* %arrayidx64, align 4
  %sub65 = sub nsw i32 16777216, %39
  %add66 = add nsw i32 %37, %sub65
  %40 = load i32, i32* %REG2, align 4
  %idxprom67 = sext i32 %40 to i64
  %arrayidx68 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom67
  store i32 %add66, i32* %arrayidx68, align 4
  %41 = load i32, i32* %REG2, align 4
  %idxprom69 = sext i32 %41 to i64
  %arrayidx70 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom69
  %42 = load i32, i32* %arrayidx70, align 4
  %cmp71 = icmp sge i32 %42, 8388608
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.60
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.then.60
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true.58, %if.end.56
  %43 = load i32, i32* %REG2_SIGN, align 4
  %cmp75 = icmp eq i32 %43, -1
  br i1 %cmp75, label %land.lhs.true.76, label %if.end.96

land.lhs.true.76:                                 ; preds = %if.end.74
  %44 = load i32, i32* %REG1_SIGN, align 4
  %cmp77 = icmp eq i32 %44, -1
  br i1 %cmp77, label %if.then.78, label %if.end.96

if.then.78:                                       ; preds = %land.lhs.true.76
  %45 = load i32, i32* %REG2, align 4
  %idxprom79 = sext i32 %45 to i64
  %arrayidx80 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom79
  %46 = load i32, i32* %arrayidx80, align 4
  %47 = load i32, i32* %REG1, align 4
  %idxprom81 = sext i32 %47 to i64
  %arrayidx82 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom81
  %48 = load i32, i32* %arrayidx82, align 4
  %sub83 = sub nsw i32 16777216, %48
  %add84 = add nsw i32 %46, %sub83
  %49 = load i32, i32* %REG2, align 4
  %idxprom85 = sext i32 %49 to i64
  %arrayidx86 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom85
  store i32 %add84, i32* %arrayidx86, align 4
  %50 = load i32, i32* %REG2, align 4
  %idxprom87 = sext i32 %50 to i64
  %arrayidx88 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom87
  %51 = load i32, i32* %arrayidx88, align 4
  %52 = load i32, i32* %REG2, align 4
  %idxprom89 = sext i32 %52 to i64
  %arrayidx90 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom89
  %53 = load i32, i32* %arrayidx90, align 4
  %div91 = sdiv i32 %53, 16777216
  %mul92 = mul nsw i32 %div91, 16777216
  %sub93 = sub nsw i32 %51, %mul92
  %54 = load i32, i32* %REG2, align 4
  %idxprom94 = sext i32 %54 to i64
  %arrayidx95 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom94
  store i32 %sub93, i32* %arrayidx95, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.78, %land.lhs.true.76, %if.end.74
  %55 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %if.end.96
  %56 = load i32, i32* %REG2, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %57 = load i32, i32* %REG2, align 4
  %idxprom98 = sext i32 %57 to i64
  %arrayidx99 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom98
  %58 = load i32, i32* %arrayidx99, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %if.end.96
  %59 = load i32, i32* %OVERFLOW1, align 4
  %tobool101 = icmp ne i32 %59, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.100
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 4)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.100
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @SVC_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %REG1, align 4
  %cmp1 = icmp sgt i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  br label %if.end.4

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %REG1, align 4
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 1, i32 %2)
  %3 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %4 = load i32, i32* %REG1, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @TIXR_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  %X_VAL = alloca i32, align 4
  %REG_VAL = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* %REG1, i32* %REG2)
  %0 = load i32, i32* %REG1, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %REG1, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %3 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %4 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %div = sdiv i32 %4, 16777216
  %mul = mul nsw i32 %div, 16777216
  %sub = sub nsw i32 %3, %mul
  store i32 %sub, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %cmp2 = icmp eq i32 %5, 8388608
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.else
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 4)
  %6 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.3
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.3
  br label %if.end.34

if.end.6:                                         ; preds = %if.else
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %cmp7 = icmp sge i32 %7, 8388608
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end.6
  %8 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %sub9 = sub nsw i32 %8, 16777216
  store i32 %sub9, i32* %X_VAL, align 4
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.6
  %9 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  store i32 %9, i32* %X_VAL, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.8
  %10 = load i32, i32* %REG1, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  store i32 %11, i32* %REG_VAL, align 4
  %12 = load i32, i32* %REG_VAL, align 4
  %cmp12 = icmp sge i32 %12, 8388608
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %13 = load i32, i32* %REG_VAL, align 4
  %sub14 = sub nsw i32 %13, 16777216
  store i32 %sub14, i32* %REG_VAL, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  %14 = load i32, i32* %X_VAL, align 4
  %15 = load i32, i32* %REG_VAL, align 4
  %cmp16 = icmp eq i32 %14, %15
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.15
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 0)
  %16 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %17 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.15
  %18 = load i32, i32* %X_VAL, align 4
  %19 = load i32, i32* %REG_VAL, align 4
  %cmp22 = icmp slt i32 %18, %19
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.21
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 1)
  %20 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool24 = icmp ne i32 %20, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  %21 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.21
  %22 = load i32, i32* %X_VAL, align 4
  %23 = load i32, i32* %REG_VAL, align 4
  %cmp28 = icmp sgt i32 %22, %23
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.end.27
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 2)
  %24 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool30 = icmp ne i32 %24, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.29
  %25 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.27
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.end.33, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
