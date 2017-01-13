; ModuleID = './MultiSource.Benchmarks.Prolangs-C/108.simulator.instruct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DEVICE_ENTRY = type { i32, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@REGISTER = external global [10 x i32], align 16
@.str = private unnamed_addr constant [10 x i8] c"Set A to \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Set CC to =.\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Set CC to <.\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Set CC to >.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Attempted division by zero.\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"J m, m is an illegal address.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Returning to Operating System.\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Jump to \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"No action taken.\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"JEQ m, m is an illegal address.\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"JGT m, m is an illegal address.\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"JLT m, m is an illegal address.\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"JSUB m, m is an illegal address.\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Put \00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c" into L and jump to \00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Set B to \00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Set L to \00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Set S to \00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Set T to \00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Set X to \00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"RD illegal device.\0A\00", align 1
@DEVICE = external global [256 x %struct.DEVICE_ENTRY], align 16
@.str.24 = private unnamed_addr constant [27 x i8] c"RSUB to Operating System.\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"RSUB to \00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"STA m, m is an illegal address.\0A\00", align 1
@MEMORY = external global i8*, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c" into \00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"STB m, m is an illegal address.\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"STI is a privileged instruction.\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"STI m, m is an illegal address.\0A\00", align 1
@INTERVAL_TIMER = external global i32, align 4
@.str.31 = private unnamed_addr constant [33 x i8] c"STL m, m is an illegal address.\0A\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"STS m, m is an illegal address.\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"STSW is a privileged instruction.\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"STSW m, m is an illegal address.\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"STT m, m is an illegal address.\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"STX m, m is an illegal address.\0A\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"TD illegal device.\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Set CC to <. Marked Device \00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c" as in use.\0A\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"X has overflowed.\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c" and set CC to =.\0A\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c" and set CC to <.\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c" and set CC to >.\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"WD illegal device.\0A\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"Wrote ASCII char \00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" to device \00", align 1
@TYPE_OUT_MODE = common global [6 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @ADD_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %OVERFLOW1 = alloca i32, align 4
  %ASIGN = alloca i32, align 4
  %VALSIGN = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  store i32 0, i32* %OVERFLOW1, align 4
  store i32 1, i32* %ASIGN, align 4
  store i32 1, i32* %VALSIGN, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp1 = icmp sge i32 %1, 16777216
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %VALUE, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, i32* %VALUE, align 4
  %cmp2 = icmp sge i32 %2, 8388608
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %VALSIGN, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %cmp5 = icmp sge i32 %3, 8388608
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 -1, i32* %ASIGN, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %4 = load i32, i32* %ASIGN, align 4
  %cmp8 = icmp eq i32 %4, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.7
  %5 = load i32, i32* %VALSIGN, align 4
  %cmp9 = icmp eq i32 %5, 1
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %land.lhs.true
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %7 = load i32, i32* %VALUE, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %8 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %cmp11 = icmp sge i32 %8, 8388608
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true, %if.end.7
  %9 = load i32, i32* %ASIGN, align 4
  %cmp15 = icmp eq i32 %9, -1
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %if.end.14
  %10 = load i32, i32* %VALSIGN, align 4
  %cmp17 = icmp eq i32 %10, 1
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true.16
  %11 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %12 = load i32, i32* %VALUE, align 4
  %add19 = add nsw i32 %11, %12
  store i32 %add19, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %13 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %14 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %div = sdiv i32 %14, 16777216
  %mul = mul nsw i32 %div, 16777216
  %sub = sub nsw i32 %13, %mul
  store i32 %sub, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true.16, %if.end.14
  %15 = load i32, i32* %ASIGN, align 4
  %cmp21 = icmp eq i32 %15, 1
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.29

land.lhs.true.22:                                 ; preds = %if.end.20
  %16 = load i32, i32* %VALSIGN, align 4
  %cmp23 = icmp eq i32 %16, -1
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %land.lhs.true.22
  %17 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %18 = load i32, i32* %VALUE, align 4
  %add25 = add nsw i32 %17, %18
  store i32 %add25, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %19 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %20 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %div26 = sdiv i32 %20, 16777216
  %mul27 = mul nsw i32 %div26, 16777216
  %sub28 = sub nsw i32 %19, %mul27
  store i32 %sub28, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %land.lhs.true.22, %if.end.20
  %21 = load i32, i32* %ASIGN, align 4
  %cmp30 = icmp eq i32 %21, -1
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.41

land.lhs.true.31:                                 ; preds = %if.end.29
  %22 = load i32, i32* %VALSIGN, align 4
  %cmp32 = icmp eq i32 %22, -1
  br i1 %cmp32, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %land.lhs.true.31
  %23 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %24 = load i32, i32* %VALUE, align 4
  %add34 = add nsw i32 %23, %24
  store i32 %add34, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %25 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %26 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %div35 = sdiv i32 %26, 16777216
  %mul36 = mul nsw i32 %div35, 16777216
  %sub37 = sub nsw i32 %25, %mul36
  store i32 %sub37, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %27 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %cmp38 = icmp slt i32 %27, 8388608
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.33
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.33
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %land.lhs.true.31, %if.end.29
  %28 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.41
  %29 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.41
  %30 = load i32, i32* %OVERFLOW1, align 4
  %tobool44 = icmp ne i32 %30, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 4)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.43
  ret void
}

declare i32 @FORMAT3_4(...) #1

declare void @PRINT_CONSTANT(...) #1

declare void @SIGNAL_INTERUPT(...) #1

; Function Attrs: nounwind uwtable
define void @AND_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %COUNT = alloca i32, align 4
  %A_BITS = alloca [24 x i32], align 16
  %VAL_BITS = alloca [24 x i32], align 16
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp1 = icmp sge i32 %1, 16777216
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %VALUE, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %A_BITS, i32 0, i32 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 %2, i32 3, i32* %arraydecay)
  %3 = load i32, i32* %VALUE, align 4
  %arraydecay2 = getelementptr inbounds [24 x i32], [24 x i32]* %VAL_BITS, i32 0, i32 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 %3, i32 3, i32* %arraydecay2)
  store i32 0, i32* %COUNT, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %COUNT, align 4
  %cmp3 = icmp slt i32 %4, 24
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %COUNT, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [24 x i32], [24 x i32]* %A_BITS, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %7 = load i32, i32* %COUNT, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [24 x i32], [24 x i32]* %VAL_BITS, i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %tobool6 = icmp ne i32 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %9 = phi i1 [ false, %for.body ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  %10 = load i32, i32* %COUNT, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [24 x i32], [24 x i32]* %A_BITS, i32 0, i64 %idxprom7
  store i32 %land.ext, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %11 = load i32, i32* %COUNT, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %COUNT, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay9 = getelementptr inbounds [24 x i32], [24 x i32]* %A_BITS, i32 0, i32 0
  %call10 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* %arraydecay9, i32 24)
  store i32 %call10, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %12 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.end
  %13 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.end
  ret void
}

declare void @BYTES_TO_BITS(...) #1

declare i32 @BITS_TO_BYTE(...) #1

; Function Attrs: nounwind uwtable
define void @COMP_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %A_VAL = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %cmp = icmp sge i32 %0, 8388608
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %sub = sub nsw i32 %1, 16777216
  store i32 %sub, i32* %A_VAL, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  store i32 %2, i32* %A_VAL, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %VALUE, align 4
  %cmp1 = icmp sge i32 %3, 8388608
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %VALUE, align 4
  %sub3 = sub nsw i32 %4, 16777216
  store i32 %sub3, i32* %VALUE, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %A_VAL, align 4
  %6 = load i32, i32* %VALUE, align 4
  %cmp5 = icmp eq i32 %5, %6
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.4
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 0)
  %7 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.6
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.4
  %8 = load i32, i32* %A_VAL, align 4
  %9 = load i32, i32* %VALUE, align 4
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.10
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 1)
  %10 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool13 = icmp ne i32 %10, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.12
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %11 = load i32, i32* %A_VAL, align 4
  %12 = load i32, i32* %VALUE, align 4
  %cmp18 = icmp sgt i32 %11, %12
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.17
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 2)
  %13 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool20 = icmp ne i32 %13, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.19
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.17
  ret void
}

declare void @SET_CC(...) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @DIV_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %ASIGN = alloca i32, align 4
  %VALSIGN = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  store i32 1, i32* %ASIGN, align 4
  store i32 1, i32* %VALSIGN, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp1 = icmp sge i32 %1, 16777216
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %VALUE, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, i32* %VALUE, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 4)
  %3 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.3
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.3
  br label %if.end.43

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %VALUE, align 4
  %cmp7 = icmp sge i32 %4, 8388608
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  store i32 -1, i32* %VALSIGN, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.else
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %cmp10 = icmp sge i32 %5, 8388608
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 -1, i32* %ASIGN, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %6 = load i32, i32* %ASIGN, align 4
  %cmp13 = icmp eq i32 %6, 1
  br i1 %cmp13, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.12
  %7 = load i32, i32* %VALSIGN, align 4
  %cmp14 = icmp eq i32 %7, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  %8 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %9 = load i32, i32* %VALUE, align 4
  %div = sdiv i32 %8, %9
  store i32 %div, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true, %if.end.12
  %10 = load i32, i32* %ASIGN, align 4
  %cmp17 = icmp eq i32 %10, -1
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.23

land.lhs.true.18:                                 ; preds = %if.end.16
  %11 = load i32, i32* %VALSIGN, align 4
  %cmp19 = icmp eq i32 %11, 1
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %land.lhs.true.18
  %12 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %sub = sub nsw i32 16777216, %12
  %13 = load i32, i32* %VALUE, align 4
  %div21 = sdiv i32 %sub, %13
  %sub22 = sub nsw i32 16777216, %div21
  store i32 %sub22, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %land.lhs.true.18, %if.end.16
  %14 = load i32, i32* %ASIGN, align 4
  %cmp24 = icmp eq i32 %14, 1
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.31

land.lhs.true.25:                                 ; preds = %if.end.23
  %15 = load i32, i32* %VALSIGN, align 4
  %cmp26 = icmp eq i32 %15, -1
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %land.lhs.true.25
  %16 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %17 = load i32, i32* %VALUE, align 4
  %sub28 = sub nsw i32 16777216, %17
  %div29 = sdiv i32 %16, %sub28
  %sub30 = sub nsw i32 16777216, %div29
  store i32 %sub30, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %land.lhs.true.25, %if.end.23
  %18 = load i32, i32* %ASIGN, align 4
  %cmp32 = icmp eq i32 %18, -1
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.39

land.lhs.true.33:                                 ; preds = %if.end.31
  %19 = load i32, i32* %VALSIGN, align 4
  %cmp34 = icmp eq i32 %19, -1
  br i1 %cmp34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %land.lhs.true.33
  %20 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %sub36 = sub nsw i32 16777216, %20
  %21 = load i32, i32* %VALUE, align 4
  %sub37 = sub nsw i32 16777216, %21
  %div38 = sdiv i32 %sub36, %sub37
  store i32 %div38, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %land.lhs.true.33, %if.end.31
  %22 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool40 = icmp ne i32 %22, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  %23 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define void @J_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp1 = icmp sge i32 %1, 1048576
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* %VALUE, align 4
  %cmp2 = icmp ne i32 %2, 16777215
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %3 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %4 = load i32, i32* %VALUE, align 4
  store i32 %4, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %5 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.else
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %cmp7 = icmp eq i32 %6, 16777215
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.then.6
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.11

if.else.10:                                       ; preds = %if.then.6
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  ret void
}

declare void @PRINT_ADDRESS(...) #1

; Function Attrs: nounwind uwtable
define void @JEQ_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %call1 = call i32 (...) @CC()
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.22

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load i32, i32* %VALUE, align 4
  %cmp5 = icmp sge i32 %2, 1048576
  br i1 %cmp5, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, i32* %VALUE, align 4
  %cmp6 = icmp ne i32 %3, 16777215
  br i1 %cmp6, label %if.then.7, label %if.else.12

if.then.7:                                        ; preds = %land.lhs.true, %if.else
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %4 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool8 = icmp ne i32 %4, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.7
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.7
  br label %if.end.21

if.else.12:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i32, i32* %VALUE, align 4
  store i32 %5, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %6 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool13 = icmp ne i32 %6, 0
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.else.12
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %cmp15 = icmp eq i32 %7, 16777215
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.then.14
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.19

if.else.18:                                       ; preds = %if.then.14
  %8 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.else.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  ret void
}

declare i32 @CC(...) #1

; Function Attrs: nounwind uwtable
define void @JGT_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %call1 = call i32 (...) @CC()
  %cmp = icmp ne i32 %call1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.22

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load i32, i32* %VALUE, align 4
  %cmp5 = icmp sge i32 %2, 1048576
  br i1 %cmp5, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, i32* %VALUE, align 4
  %cmp6 = icmp ne i32 %3, 16777215
  br i1 %cmp6, label %if.then.7, label %if.else.12

if.then.7:                                        ; preds = %land.lhs.true, %if.else
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %4 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool8 = icmp ne i32 %4, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.7
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.7
  br label %if.end.21

if.else.12:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i32, i32* %VALUE, align 4
  store i32 %5, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %6 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool13 = icmp ne i32 %6, 0
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.else.12
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %cmp15 = icmp eq i32 %7, 16777215
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.then.14
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.19

if.else.18:                                       ; preds = %if.then.14
  %8 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.else.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @JLT_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %call1 = call i32 (...) @CC()
  %cmp = icmp ne i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.22

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load i32, i32* %VALUE, align 4
  %cmp5 = icmp sge i32 %2, 1048576
  br i1 %cmp5, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, i32* %VALUE, align 4
  %cmp6 = icmp ne i32 %3, 16777215
  br i1 %cmp6, label %if.then.7, label %if.else.12

if.then.7:                                        ; preds = %land.lhs.true, %if.else
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %4 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool8 = icmp ne i32 %4, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.7
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.7
  br label %if.end.21

if.else.12:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i32, i32* %VALUE, align 4
  store i32 %5, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %6 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool13 = icmp ne i32 %6, 0
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.else.12
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %cmp15 = icmp eq i32 %7, 16777215
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.then.14
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.19

if.else.18:                                       ; preds = %if.then.14
  %8 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.else.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @JSUB_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp1 = icmp sge i32 %1, 1048576
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %2 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  store i32 %3, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  %4 = load i32, i32* %VALUE, align 4
  store i32 %4, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %5 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.else
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0))
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @LDA_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  store i32 %0, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @LDB_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  store i32 %0, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 3), align 4
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 3), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @LDCH_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 1)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %div = sdiv i32 %0, 256
  %mul = mul nsw i32 %div, 256
  %1 = load i32, i32* %VALUE, align 4
  %add = add nsw i32 %mul, %1
  store i32 %add, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %2 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @LDL_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  store i32 %0, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @LDS_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  store i32 %0, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 4), align 4
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 4), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @LDT_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  store i32 %0, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 5), align 4
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 5), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @LDX_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  store i32 %0, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @MUL_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %OVERFLOW1 = alloca i32, align 4
  %ASIGN = alloca i32, align 4
  %VALSIGN = alloca i32, align 4
  %STORE_A = alloca double, align 8
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  store i32 0, i32* %OVERFLOW1, align 4
  store i32 1, i32* %ASIGN, align 4
  store i32 1, i32* %VALSIGN, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp1 = icmp sge i32 %1, 16777216
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %VALUE, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, i32* %VALUE, align 4
  %cmp2 = icmp sge i32 %2, 8388608
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %VALSIGN, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %cmp5 = icmp sge i32 %3, 8388608
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 -1, i32* %ASIGN, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %4 = load i32, i32* %ASIGN, align 4
  %cmp8 = icmp eq i32 %4, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.7
  %5 = load i32, i32* %VALSIGN, align 4
  %cmp9 = icmp eq i32 %5, 1
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %land.lhs.true
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %conv = sitofp i32 %6 to double
  %mul = fmul double %conv, 1.000000e+00
  %7 = load i32, i32* %VALUE, align 4
  %conv11 = sitofp i32 %7 to double
  %mul12 = fmul double %mul, %conv11
  store double %mul12, double* %STORE_A, align 8
  %8 = load double, double* %STORE_A, align 8
  %cmp13 = fcmp oge double %8, 8.388608e+06
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.10
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.then.10
  %9 = load double, double* %STORE_A, align 8
  %conv16 = fptosi double %9 to i32
  store i32 %conv16, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %land.lhs.true, %if.end.7
  %10 = load i32, i32* %ASIGN, align 4
  %cmp19 = icmp eq i32 %10, -1
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.40

land.lhs.true.21:                                 ; preds = %if.end.18
  %11 = load i32, i32* %VALSIGN, align 4
  %cmp22 = icmp eq i32 %11, 1
  br i1 %cmp22, label %if.then.24, label %if.end.40

if.then.24:                                       ; preds = %land.lhs.true.21
  %12 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %sub = sub nsw i32 16777216, %12
  %conv25 = sitofp i32 %sub to double
  %mul26 = fmul double 1.000000e+00, %conv25
  %13 = load i32, i32* %VALUE, align 4
  %conv27 = sitofp i32 %13 to double
  %mul28 = fmul double %mul26, %conv27
  store double %mul28, double* %STORE_A, align 8
  %14 = load double, double* %STORE_A, align 8
  %15 = load double, double* %STORE_A, align 8
  %div = fdiv double %15, 0x4170000000000000
  %conv29 = fptosi double %div to i32
  %mul30 = mul nsw i32 %conv29, 16777216
  %conv31 = sitofp i32 %mul30 to double
  %sub32 = fsub double %14, %conv31
  store double %sub32, double* %STORE_A, align 8
  %16 = load double, double* %STORE_A, align 8
  %cmp33 = fcmp ogt double %16, 8.388608e+06
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.then.24
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.39

if.else.36:                                       ; preds = %if.then.24
  %17 = load double, double* %STORE_A, align 8
  %conv37 = fptosi double %17 to i32
  %sub38 = sub nsw i32 16777216, %conv37
  store i32 %sub38, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.21, %if.end.18
  %18 = load i32, i32* %ASIGN, align 4
  %cmp41 = icmp eq i32 %18, 1
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.64

land.lhs.true.43:                                 ; preds = %if.end.40
  %19 = load i32, i32* %VALSIGN, align 4
  %cmp44 = icmp eq i32 %19, -1
  br i1 %cmp44, label %if.then.46, label %if.end.64

if.then.46:                                       ; preds = %land.lhs.true.43
  %20 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %conv47 = sitofp i32 %20 to double
  %mul48 = fmul double 1.000000e+00, %conv47
  %21 = load i32, i32* %VALUE, align 4
  %sub49 = sub nsw i32 16777216, %21
  %conv50 = sitofp i32 %sub49 to double
  %mul51 = fmul double %mul48, %conv50
  store double %mul51, double* %STORE_A, align 8
  %22 = load double, double* %STORE_A, align 8
  %23 = load double, double* %STORE_A, align 8
  %div52 = fdiv double %23, 0x4170000000000000
  %conv53 = fptosi double %div52 to i32
  %mul54 = mul nsw i32 %conv53, 16777216
  %conv55 = sitofp i32 %mul54 to double
  %sub56 = fsub double %22, %conv55
  store double %sub56, double* %STORE_A, align 8
  %24 = load double, double* %STORE_A, align 8
  %cmp57 = fcmp ogt double %24, 8.388608e+06
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.then.46
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.63

if.else.60:                                       ; preds = %if.then.46
  %25 = load double, double* %STORE_A, align 8
  %conv61 = fptosi double %25 to i32
  %sub62 = sub nsw i32 16777216, %conv61
  store i32 %sub62, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %land.lhs.true.43, %if.end.40
  %26 = load i32, i32* %ASIGN, align 4
  %cmp65 = icmp eq i32 %26, -1
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.83

land.lhs.true.67:                                 ; preds = %if.end.64
  %27 = load i32, i32* %VALSIGN, align 4
  %cmp68 = icmp eq i32 %27, -1
  br i1 %cmp68, label %if.then.70, label %if.end.83

if.then.70:                                       ; preds = %land.lhs.true.67
  %28 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %sub71 = sub nsw i32 16777216, %28
  %conv72 = sitofp i32 %sub71 to double
  %mul73 = fmul double 1.000000e+00, %conv72
  %29 = load i32, i32* %VALUE, align 4
  %sub74 = sub nsw i32 16777216, %29
  %conv75 = sitofp i32 %sub74 to double
  %mul76 = fmul double %mul73, %conv75
  store double %mul76, double* %STORE_A, align 8
  %30 = load double, double* %STORE_A, align 8
  %cmp77 = fcmp oge double %30, 8.388608e+06
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.then.70
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.82

if.else.80:                                       ; preds = %if.then.70
  %31 = load double, double* %STORE_A, align 8
  %conv81 = fptosi double %31 to i32
  store i32 %conv81, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.then.79
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %land.lhs.true.67, %if.end.64
  %32 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.83
  %33 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.83
  %34 = load i32, i32* %OVERFLOW1, align 4
  %tobool86 = icmp ne i32 %34, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.85
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 4)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.end.85
  ret void
}

; Function Attrs: nounwind uwtable
define void @OR_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %COUNT = alloca i32, align 4
  %A_BITS = alloca [24 x i32], align 16
  %VAL_BITS = alloca [24 x i32], align 16
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp1 = icmp sge i32 %1, 16777216
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %VALUE, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %A_BITS, i32 0, i32 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 %2, i32 3, i32* %arraydecay)
  %3 = load i32, i32* %VALUE, align 4
  %arraydecay2 = getelementptr inbounds [24 x i32], [24 x i32]* %VAL_BITS, i32 0, i32 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 %3, i32 3, i32* %arraydecay2)
  store i32 0, i32* %COUNT, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %COUNT, align 4
  %cmp3 = icmp slt i32 %4, 24
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %COUNT, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [24 x i32], [24 x i32]* %A_BITS, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %7 = load i32, i32* %COUNT, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [24 x i32], [24 x i32]* %VAL_BITS, i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %tobool6 = icmp ne i32 %8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %9 = phi i1 [ true, %for.body ], [ %tobool6, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32
  %10 = load i32, i32* %COUNT, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [24 x i32], [24 x i32]* %A_BITS, i32 0, i64 %idxprom7
  store i32 %lor.ext, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %11 = load i32, i32* %COUNT, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %COUNT, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay9 = getelementptr inbounds [24 x i32], [24 x i32]* %A_BITS, i32 0, i32 0
  %call10 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* %arraydecay9, i32 24)
  store i32 %call10, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %12 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.end
  %13 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @RD_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %DEV = alloca i32, align 4
  %INPUT = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 1)
  store i32 %call, i32* %DEV, align 4
  %0 = load i32, i32* %DEV, align 4
  %cmp = icmp sgt i32 0, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %DEV, align 4
  %cmp1 = icmp sgt i32 %1, 255
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  %2 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.31

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %DEV, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom
  %STREAM = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx, i32 0, i32 1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.else
  %5 = load i32, i32* %DEV, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom6
  %STATUS = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx7, i32 0, i32 0
  %6 = load i32, i32* %STATUS, align 4
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %7 = load i32, i32* %DEV, align 4
  %cmp10 = icmp sge i32 %7, 128
  br i1 %cmp10, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false.5, %if.else
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  %8 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.11
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.11
  br label %if.end.30

if.else.16:                                       ; preds = %lor.lhs.false.9
  %9 = load i32, i32* %DEV, align 4
  %idxprom17 = sext i32 %9 to i64
  %arrayidx18 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom17
  %STREAM19 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx18, i32 0, i32 1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM19, align 8
  %call20 = call i32 @fgetc(%struct._IO_FILE* %10)
  store i32 %call20, i32* %INPUT, align 4
  %11 = load i32, i32* %INPUT, align 4
  %cmp21 = icmp eq i32 %11, -1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else.16
  store i32 0, i32* %INPUT, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.else.16
  %12 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %div = sdiv i32 %12, 256
  %mul = mul nsw i32 %div, 256
  %13 = load i32, i32* %INPUT, align 4
  %add = add nsw i32 %mul, %13
  store i32 %add, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %14 = load i32, i32* %DEV, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom24
  %STATUS26 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx25, i32 0, i32 0
  store i32 0, i32* %STATUS26, align 4
  %15 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool27 = icmp ne i32 %15, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  %16 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.15
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end
  ret void
}

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @SUB_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %OVERFLOW1 = alloca i32, align 4
  %ASIGN = alloca i32, align 4
  %VALSIGN = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  store i32 0, i32* %OVERFLOW1, align 4
  store i32 1, i32* %ASIGN, align 4
  store i32 1, i32* %VALSIGN, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* %VALUE, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %VALUE, align 4
  %cmp1 = icmp sge i32 %1, 16777216
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %VALUE, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, i32* %VALUE, align 4
  %cmp2 = icmp sge i32 %2, 8388608
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %VALSIGN, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %cmp5 = icmp sge i32 %3, 8388608
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 -1, i32* %ASIGN, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %4 = load i32, i32* %ASIGN, align 4
  %cmp8 = icmp eq i32 %4, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.7
  %5 = load i32, i32* %VALSIGN, align 4
  %cmp9 = icmp eq i32 %5, 1
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %land.lhs.true
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %7 = load i32, i32* %VALUE, align 4
  %sub = sub nsw i32 %6, %7
  store i32 %sub, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %8 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %cmp11 = icmp slt i32 %8, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %9 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %add = add nsw i32 16777216, %9
  store i32 %add, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true, %if.end.7
  %10 = load i32, i32* %ASIGN, align 4
  %cmp15 = icmp eq i32 %10, -1
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.25

land.lhs.true.16:                                 ; preds = %if.end.14
  %11 = load i32, i32* %VALSIGN, align 4
  %cmp17 = icmp eq i32 %11, 1
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %land.lhs.true.16
  %12 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %13 = load i32, i32* %VALUE, align 4
  %sub19 = sub nsw i32 16777216, %13
  %add20 = add nsw i32 %12, %sub19
  store i32 %add20, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %14 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %15 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %div = sdiv i32 %15, 16777216
  %mul = mul nsw i32 %div, 16777216
  %sub21 = sub nsw i32 %14, %mul
  store i32 %sub21, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %16 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %cmp22 = icmp slt i32 %16, 8388608
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %land.lhs.true.16, %if.end.14
  %17 = load i32, i32* %ASIGN, align 4
  %cmp26 = icmp eq i32 %17, 1
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.35

land.lhs.true.27:                                 ; preds = %if.end.25
  %18 = load i32, i32* %VALSIGN, align 4
  %cmp28 = icmp eq i32 %18, -1
  br i1 %cmp28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %land.lhs.true.27
  %19 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %20 = load i32, i32* %VALUE, align 4
  %sub30 = sub nsw i32 16777216, %20
  %add31 = add nsw i32 %19, %sub30
  store i32 %add31, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %21 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %cmp32 = icmp sge i32 %21, 8388608
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.29
  store i32 1, i32* %OVERFLOW1, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.27, %if.end.25
  %22 = load i32, i32* %ASIGN, align 4
  %cmp36 = icmp eq i32 %22, -1
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.45

land.lhs.true.37:                                 ; preds = %if.end.35
  %23 = load i32, i32* %VALSIGN, align 4
  %cmp38 = icmp eq i32 %23, -1
  br i1 %cmp38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %land.lhs.true.37
  %24 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %25 = load i32, i32* %VALUE, align 4
  %sub40 = sub nsw i32 16777216, %25
  %add41 = add nsw i32 %24, %sub40
  store i32 %add41, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %26 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %27 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %div42 = sdiv i32 %27, 16777216
  %mul43 = mul nsw i32 %div42, 16777216
  %sub44 = sub nsw i32 %26, %mul43
  store i32 %sub44, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.39, %land.lhs.true.37, %if.end.35
  %28 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.45
  %29 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.45
  %30 = load i32, i32* %OVERFLOW1, align 4
  %tobool48 = icmp ne i32 %30, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.47
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 4)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.47
  ret void
}

; Function Attrs: nounwind uwtable
define void @RSUB_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  %cmp1 = icmp sge i32 %1, 1048576
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  %cmp2 = icmp ne i32 %2, 16777215
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %3 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %4 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  store i32 %4, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %5 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.else
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %cmp6 = icmp eq i32 %6, 16777215
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.then.5
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.10

if.else.9:                                        ; preds = %if.then.5
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @STA_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %ADDRESS, align 4
  %0 = load i32, i32* %ADDRESS, align 4
  %add = add nsw i32 %0, 2
  %cmp = icmp sge i32 %add, 1048576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.26

if.else:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %div = sdiv i32 %2, 65536
  %conv = trunc i32 %div to i8
  %3 = load i32, i32* %ADDRESS, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %6 = load i32, i32* %ADDRESS, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8*, i8** @MEMORY, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %call6 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv5)
  %mul = mul nsw i32 %call6, 65536
  %sub = sub nsw i32 %5, %mul
  %div7 = sdiv i32 %sub, 256
  %conv8 = trunc i32 %div7 to i8
  %9 = load i32, i32* %ADDRESS, align 4
  %add9 = add nsw i32 %9, 1
  %idxprom10 = sext i32 %add9 to i64
  %10 = load i8*, i8** @MEMORY, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  store i8 %conv8, i8* %arrayidx11, align 1
  %11 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %12 = load i32, i32* %ADDRESS, align 4
  %add12 = add nsw i32 %12, 1
  %idxprom13 = sext i32 %add12 to i64
  %13 = load i8*, i8** @MEMORY, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 %idxprom13
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %call16 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv15)
  %mul17 = mul nsw i32 %call16, 256
  %sub18 = sub nsw i32 %11, %mul17
  %conv19 = trunc i32 %sub18 to i8
  %15 = load i32, i32* %ADDRESS, align 4
  %add20 = add nsw i32 %15, 2
  %idxprom21 = sext i32 %add20 to i64
  %16 = load i8*, i8** @MEMORY, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 %idxprom21
  store i8 %conv19, i8* %arrayidx22, align 1
  %17 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %18 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  %19 = load i32, i32* %ADDRESS, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  ret void
}

declare i32 @INT(...) #1

; Function Attrs: nounwind uwtable
define void @STB_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %ADDRESS, align 4
  %0 = load i32, i32* %ADDRESS, align 4
  %add = add nsw i32 %0, 2
  %cmp = icmp sge i32 %add, 1048576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.26

if.else:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 3), align 4
  %div = sdiv i32 %2, 65536
  %conv = trunc i32 %div to i8
  %3 = load i32, i32* %ADDRESS, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 3), align 4
  %6 = load i32, i32* %ADDRESS, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8*, i8** @MEMORY, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %call6 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv5)
  %mul = mul nsw i32 %call6, 65536
  %sub = sub nsw i32 %5, %mul
  %div7 = sdiv i32 %sub, 256
  %conv8 = trunc i32 %div7 to i8
  %9 = load i32, i32* %ADDRESS, align 4
  %add9 = add nsw i32 %9, 1
  %idxprom10 = sext i32 %add9 to i64
  %10 = load i8*, i8** @MEMORY, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  store i8 %conv8, i8* %arrayidx11, align 1
  %11 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 3), align 4
  %12 = load i32, i32* %ADDRESS, align 4
  %add12 = add nsw i32 %12, 1
  %idxprom13 = sext i32 %add12 to i64
  %13 = load i8*, i8** @MEMORY, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 %idxprom13
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %call16 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv15)
  %mul17 = mul nsw i32 %call16, 256
  %sub18 = sub nsw i32 %11, %mul17
  %conv19 = trunc i32 %sub18 to i8
  %15 = load i32, i32* %ADDRESS, align 4
  %add20 = add nsw i32 %15, 2
  %idxprom21 = sext i32 %add20 to i64
  %16 = load i8*, i8** @MEMORY, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 %idxprom21
  store i8 %conv19, i8* %arrayidx22, align 1
  %17 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %18 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 3), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  %19 = load i32, i32* %ADDRESS, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @STCH_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 1)
  store i32 %call, i32* %ADDRESS, align 4
  %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %1 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %div = sdiv i32 %1, 256
  %mul = mul nsw i32 %div, 256
  %sub = sub nsw i32 %0, %mul
  %conv = trunc i32 %sub to i8
  %2 = load i32, i32* %ADDRESS, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %4 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  %6 = load i32, i32* %ADDRESS, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @STI_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (...) @SUPERVISOR_MODE()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 1)
  %0 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool1 = icmp ne i32 %0, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.35

if.else:                                          ; preds = %entry
  %call4 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call4, i32* %ADDRESS, align 4
  %1 = load i32, i32* %ADDRESS, align 4
  %add = add nsw i32 %1, 2
  %cmp = icmp sge i32 %add, 1048576
  br i1 %cmp, label %if.then.5, label %if.else.10

if.then.5:                                        ; preds = %if.else
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %2 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool6 = icmp ne i32 %2, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.5
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.34

if.else.10:                                       ; preds = %if.else
  %3 = load i32, i32* @INTERVAL_TIMER, align 4
  %div = sdiv i32 %3, 65536
  %conv = trunc i32 %div to i8
  %4 = load i32, i32* %ADDRESS, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %6 = load i32, i32* @INTERVAL_TIMER, align 4
  %7 = load i32, i32* %ADDRESS, align 4
  %idxprom11 = sext i32 %7 to i64
  %8 = load i8*, i8** @MEMORY, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 %idxprom11
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %9 to i32
  %call14 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv13)
  %mul = mul nsw i32 %call14, 65536
  %sub = sub nsw i32 %6, %mul
  %div15 = sdiv i32 %sub, 256
  %conv16 = trunc i32 %div15 to i8
  %10 = load i32, i32* %ADDRESS, align 4
  %add17 = add nsw i32 %10, 1
  %idxprom18 = sext i32 %add17 to i64
  %11 = load i8*, i8** @MEMORY, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %11, i64 %idxprom18
  store i8 %conv16, i8* %arrayidx19, align 1
  %12 = load i32, i32* @INTERVAL_TIMER, align 4
  %13 = load i32, i32* %ADDRESS, align 4
  %add20 = add nsw i32 %13, 1
  %idxprom21 = sext i32 %add20 to i64
  %14 = load i8*, i8** @MEMORY, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 %idxprom21
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %15 to i32
  %call24 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv23)
  %mul25 = mul nsw i32 %call24, 256
  %sub26 = sub nsw i32 %12, %mul25
  %conv27 = trunc i32 %sub26 to i8
  %16 = load i32, i32* %ADDRESS, align 4
  %add28 = add nsw i32 %16, 2
  %idxprom29 = sext i32 %add28 to i64
  %17 = load i8*, i8** @MEMORY, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %17, i64 %idxprom29
  store i8 %conv27, i8* %arrayidx30, align 1
  %18 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool31 = icmp ne i32 %18, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else.10
  %19 = load i32, i32* @INTERVAL_TIMER, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  %20 = load i32, i32* %ADDRESS, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else.10
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.9
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  ret void
}

declare i32 @SUPERVISOR_MODE(...) #1

; Function Attrs: nounwind uwtable
define void @STL_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %ADDRESS, align 4
  %0 = load i32, i32* %ADDRESS, align 4
  %add = add nsw i32 %0, 2
  %cmp = icmp sge i32 %add, 1048576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.26

if.else:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  %div = sdiv i32 %2, 65536
  %conv = trunc i32 %div to i8
  %3 = load i32, i32* %ADDRESS, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  %6 = load i32, i32* %ADDRESS, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8*, i8** @MEMORY, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %call6 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv5)
  %mul = mul nsw i32 %call6, 65536
  %sub = sub nsw i32 %5, %mul
  %div7 = sdiv i32 %sub, 256
  %conv8 = trunc i32 %div7 to i8
  %9 = load i32, i32* %ADDRESS, align 4
  %add9 = add nsw i32 %9, 1
  %idxprom10 = sext i32 %add9 to i64
  %10 = load i8*, i8** @MEMORY, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  store i8 %conv8, i8* %arrayidx11, align 1
  %11 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  %12 = load i32, i32* %ADDRESS, align 4
  %add12 = add nsw i32 %12, 1
  %idxprom13 = sext i32 %add12 to i64
  %13 = load i8*, i8** @MEMORY, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 %idxprom13
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %call16 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv15)
  %mul17 = mul nsw i32 %call16, 256
  %sub18 = sub nsw i32 %11, %mul17
  %conv19 = trunc i32 %sub18 to i8
  %15 = load i32, i32* %ADDRESS, align 4
  %add20 = add nsw i32 %15, 2
  %idxprom21 = sext i32 %add20 to i64
  %16 = load i8*, i8** @MEMORY, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 %idxprom21
  store i8 %conv19, i8* %arrayidx22, align 1
  %17 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %18 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  %19 = load i32, i32* %ADDRESS, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @STS_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %ADDRESS, align 4
  %0 = load i32, i32* %ADDRESS, align 4
  %add = add nsw i32 %0, 2
  %cmp = icmp sge i32 %add, 1048576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.26

if.else:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 4), align 4
  %div = sdiv i32 %2, 65536
  %conv = trunc i32 %div to i8
  %3 = load i32, i32* %ADDRESS, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 4), align 4
  %6 = load i32, i32* %ADDRESS, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8*, i8** @MEMORY, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %call6 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv5)
  %mul = mul nsw i32 %call6, 65536
  %sub = sub nsw i32 %5, %mul
  %div7 = sdiv i32 %sub, 256
  %conv8 = trunc i32 %div7 to i8
  %9 = load i32, i32* %ADDRESS, align 4
  %add9 = add nsw i32 %9, 1
  %idxprom10 = sext i32 %add9 to i64
  %10 = load i8*, i8** @MEMORY, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  store i8 %conv8, i8* %arrayidx11, align 1
  %11 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 4), align 4
  %12 = load i32, i32* %ADDRESS, align 4
  %add12 = add nsw i32 %12, 1
  %idxprom13 = sext i32 %add12 to i64
  %13 = load i8*, i8** @MEMORY, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 %idxprom13
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %call16 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv15)
  %mul17 = mul nsw i32 %call16, 256
  %sub18 = sub nsw i32 %11, %mul17
  %conv19 = trunc i32 %sub18 to i8
  %15 = load i32, i32* %ADDRESS, align 4
  %add20 = add nsw i32 %15, 2
  %idxprom21 = sext i32 %add20 to i64
  %16 = load i8*, i8** @MEMORY, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 %idxprom21
  store i8 %conv19, i8* %arrayidx22, align 1
  %17 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %18 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 4), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  %19 = load i32, i32* %ADDRESS, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @STSW_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (...) @SUPERVISOR_MODE()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 1)
  %0 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool1 = icmp ne i32 %0, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.35

if.else:                                          ; preds = %entry
  %call4 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call4, i32* %ADDRESS, align 4
  %1 = load i32, i32* %ADDRESS, align 4
  %add = add nsw i32 %1, 2
  %cmp = icmp sge i32 %add, 1048576
  br i1 %cmp, label %if.then.5, label %if.else.10

if.then.5:                                        ; preds = %if.else
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %2 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool6 = icmp ne i32 %2, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.5
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.34

if.else.10:                                       ; preds = %if.else
  %3 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  %div = sdiv i32 %3, 65536
  %conv = trunc i32 %div to i8
  %4 = load i32, i32* %ADDRESS, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  %7 = load i32, i32* %ADDRESS, align 4
  %idxprom11 = sext i32 %7 to i64
  %8 = load i8*, i8** @MEMORY, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 %idxprom11
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %9 to i32
  %call14 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv13)
  %mul = mul nsw i32 %call14, 65536
  %sub = sub nsw i32 %6, %mul
  %div15 = sdiv i32 %sub, 256
  %conv16 = trunc i32 %div15 to i8
  %10 = load i32, i32* %ADDRESS, align 4
  %add17 = add nsw i32 %10, 1
  %idxprom18 = sext i32 %add17 to i64
  %11 = load i8*, i8** @MEMORY, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %11, i64 %idxprom18
  store i8 %conv16, i8* %arrayidx19, align 1
  %12 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  %13 = load i32, i32* %ADDRESS, align 4
  %add20 = add nsw i32 %13, 1
  %idxprom21 = sext i32 %add20 to i64
  %14 = load i8*, i8** @MEMORY, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 %idxprom21
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %15 to i32
  %call24 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv23)
  %mul25 = mul nsw i32 %call24, 256
  %sub26 = sub nsw i32 %12, %mul25
  %conv27 = trunc i32 %sub26 to i8
  %16 = load i32, i32* %ADDRESS, align 4
  %add28 = add nsw i32 %16, 2
  %idxprom29 = sext i32 %add28 to i64
  %17 = load i8*, i8** @MEMORY, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %17, i64 %idxprom29
  store i8 %conv27, i8* %arrayidx30, align 1
  %18 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool31 = icmp ne i32 %18, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else.10
  %19 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  %20 = load i32, i32* %ADDRESS, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else.10
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.9
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @STT_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %ADDRESS, align 4
  %0 = load i32, i32* %ADDRESS, align 4
  %add = add nsw i32 %0, 2
  %cmp = icmp sge i32 %add, 1048576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.26

if.else:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 5), align 4
  %div = sdiv i32 %2, 65536
  %conv = trunc i32 %div to i8
  %3 = load i32, i32* %ADDRESS, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 5), align 4
  %6 = load i32, i32* %ADDRESS, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8*, i8** @MEMORY, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %call6 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv5)
  %mul = mul nsw i32 %call6, 65536
  %sub = sub nsw i32 %5, %mul
  %div7 = sdiv i32 %sub, 256
  %conv8 = trunc i32 %div7 to i8
  %9 = load i32, i32* %ADDRESS, align 4
  %add9 = add nsw i32 %9, 1
  %idxprom10 = sext i32 %add9 to i64
  %10 = load i8*, i8** @MEMORY, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  store i8 %conv8, i8* %arrayidx11, align 1
  %11 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 5), align 4
  %12 = load i32, i32* %ADDRESS, align 4
  %add12 = add nsw i32 %12, 1
  %idxprom13 = sext i32 %add12 to i64
  %13 = load i8*, i8** @MEMORY, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 %idxprom13
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %call16 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv15)
  %mul17 = mul nsw i32 %call16, 256
  %sub18 = sub nsw i32 %11, %mul17
  %conv19 = trunc i32 %sub18 to i8
  %15 = load i32, i32* %ADDRESS, align 4
  %add20 = add nsw i32 %15, 2
  %idxprom21 = sext i32 %add20 to i64
  %16 = load i8*, i8** @MEMORY, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 %idxprom21
  store i8 %conv19, i8* %arrayidx22, align 1
  %17 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %18 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 5), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  %19 = load i32, i32* %ADDRESS, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @STX_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 0, i32 3)
  store i32 %call, i32* %ADDRESS, align 4
  %0 = load i32, i32* %ADDRESS, align 4
  %add = add nsw i32 %0, 2
  %cmp = icmp sge i32 %add, 1048576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.26

if.else:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %div = sdiv i32 %2, 65536
  %conv = trunc i32 %div to i8
  %3 = load i32, i32* %ADDRESS, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %6 = load i32, i32* %ADDRESS, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8*, i8** @MEMORY, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %call6 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv5)
  %mul = mul nsw i32 %call6, 65536
  %sub = sub nsw i32 %5, %mul
  %div7 = sdiv i32 %sub, 256
  %conv8 = trunc i32 %div7 to i8
  %9 = load i32, i32* %ADDRESS, align 4
  %add9 = add nsw i32 %9, 1
  %idxprom10 = sext i32 %add9 to i64
  %10 = load i8*, i8** @MEMORY, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  store i8 %conv8, i8* %arrayidx11, align 1
  %11 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %12 = load i32, i32* %ADDRESS, align 4
  %add12 = add nsw i32 %12, 1
  %idxprom13 = sext i32 %add12 to i64
  %13 = load i8*, i8** @MEMORY, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 %idxprom13
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %call16 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv15)
  %mul17 = mul nsw i32 %call16, 256
  %sub18 = sub nsw i32 %11, %mul17
  %conv19 = trunc i32 %sub18 to i8
  %15 = load i32, i32* %ADDRESS, align 4
  %add20 = add nsw i32 %15, 2
  %idxprom21 = sext i32 %add20 to i64
  %16 = load i8*, i8** @MEMORY, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 %idxprom21
  store i8 %conv19, i8* %arrayidx22, align 1
  %17 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %18 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  %19 = load i32, i32* %ADDRESS, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @TD_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %DEV_NUM = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 1)
  store i32 %call, i32* %DEV_NUM, align 4
  %0 = load i32, i32* %DEV_NUM, align 4
  %cmp = icmp sgt i32 0, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %DEV_NUM, align 4
  %cmp1 = icmp sgt i32 %1, 255
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  %2 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.15

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %DEV_NUM, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom
  %STATUS = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %STATUS, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else.9

if.then.5:                                        ; preds = %if.else
  %5 = load i32, i32* %DEV_NUM, align 4
  call void (i32, ...) bitcast (void (...)* @OPEN_DEVICE to void (i32, ...)*)(i32 %5)
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 1)
  %6 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %7 = load i32, i32* %DEV_NUM, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0), i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.14

if.else.9:                                        ; preds = %if.else
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 0)
  %8 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else.9
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  ret void
}

declare void @OPEN_DEVICE(...) #1

; Function Attrs: nounwind uwtable
define void @TIX_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %X_VAL = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 3)
  store i32 %call, i32* %VALUE, align 4
  %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %1 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %div = sdiv i32 %2, 16777216
  %mul = mul nsw i32 %div, 16777216
  %sub = sub nsw i32 %1, %mul
  store i32 %sub, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %3 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %cmp = icmp eq i32 %3, 8388608
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 4)
  %4 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.29

if.end.3:                                         ; preds = %entry
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %cmp4 = icmp sge i32 %5, 8388608
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %sub6 = sub nsw i32 %6, 16777216
  store i32 %sub6, i32* %X_VAL, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.end.3
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  store i32 %7, i32* %X_VAL, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  %8 = load i32, i32* %VALUE, align 4
  %cmp8 = icmp sge i32 %8, 8388608
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %9 = load i32, i32* %VALUE, align 4
  %sub10 = sub nsw i32 %9, 16777216
  store i32 %sub10, i32* %VALUE, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %10 = load i32, i32* %X_VAL, align 4
  %11 = load i32, i32* %VALUE, align 4
  %cmp12 = icmp eq i32 %10, %11
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 0)
  %12 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool14 = icmp ne i32 %12, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %13 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.11
  %14 = load i32, i32* %X_VAL, align 4
  %15 = load i32, i32* %VALUE, align 4
  %cmp18 = icmp slt i32 %14, %15
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.17
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 1)
  %16 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.19
  %17 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.17
  %18 = load i32, i32* %X_VAL, align 4
  %19 = load i32, i32* %VALUE, align 4
  %cmp24 = icmp sgt i32 %18, %19
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.23
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 2)
  %20 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool26 = icmp ne i32 %20, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.25
  %21 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.end.28, %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define void @WD_P(i32 %PRINT_EFFECT) #0 {
entry:
  %PRINT_EFFECT.addr = alloca i32, align 4
  %DEV = alloca i32, align 4
  %VALUE = alloca i32, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @FORMAT3_4 to i32 (i32, i32, ...)*)(i32 1, i32 1)
  store i32 %call, i32* %DEV, align 4
  %0 = load i32, i32* %DEV, align 4
  %cmp = icmp sgt i32 0, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %DEV, align 4
  %cmp1 = icmp sgt i32 %1, 255
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  %2 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.28

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %DEV, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom
  %STREAM = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx, i32 0, i32 1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.else
  %5 = load i32, i32* %DEV, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom6
  %STATUS = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx7, i32 0, i32 0
  %6 = load i32, i32* %STATUS, align 4
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %7 = load i32, i32* %DEV, align 4
  %cmp10 = icmp slt i32 %7, 128
  br i1 %cmp10, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false.5, %if.else
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  %8 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.11
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.11
  br label %if.end.27

if.else.16:                                       ; preds = %lor.lhs.false.9
  %9 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %10 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 0), align 4
  %div = sdiv i32 %10, 256
  %mul = mul nsw i32 %div, 256
  %sub = sub nsw i32 %9, %mul
  store i32 %sub, i32* %VALUE, align 4
  %11 = load i32, i32* %DEV, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom17
  %STREAM19 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx18, i32 0, i32 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM19, align 8
  %13 = load i32, i32* %VALUE, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i32 %13)
  %14 = load i32, i32* %PRINT_EFFECT.addr, align 4
  %tobool21 = icmp ne i32 %14, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else.16
  %15 = load i32, i32* %VALUE, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0))
  %16 = load i32, i32* %DEV, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.else.16
  %17 = load i32, i32* %DEV, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom24
  %STATUS26 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx25, i32 0, i32 0
  store i32 0, i32* %STATUS26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.23, %if.end.15
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
