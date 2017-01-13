; ModuleID = './MultiSource.Benchmarks.Prolangs-C/97.simulator.format.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGISTER = external global [10 x i32], align 16
@MEMORY = external global i8*, align 8

; Function Attrs: nounwind uwtable
define void @FORMAT2(i32* %REG1, i32* %REG2) #0 {
entry:
  %REG1.addr = alloca i32*, align 8
  %REG2.addr = alloca i32*, align 8
  store i32* %REG1, i32** %REG1.addr, align 8
  store i32* %REG2, i32** %REG2.addr, align 8
  %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add = add nsw i32 %0, 1
  %idxprom = sext i32 %add to i64
  %1 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv)
  %div = sdiv i32 %call, 16
  %3 = load i32*, i32** %REG1.addr, align 8
  store i32 %div, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add1 = add nsw i32 %4, 1
  %idxprom2 = sext i32 %add1 to i64
  %5 = load i8*, i8** @MEMORY, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %call5 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv4)
  %7 = load i32*, i32** %REG1.addr, align 8
  %8 = load i32, i32* %7, align 4
  %mul = mul nsw i32 %8, 16
  %sub = sub nsw i32 %call5, %mul
  %9 = load i32*, i32** %REG2.addr, align 8
  store i32 %sub, i32* %9, align 4
  %10 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add6 = add nsw i32 %10, 2
  store i32 %add6, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  ret void
}

declare i32 @INT(...) #1

; Function Attrs: nounwind uwtable
define i32 @FORMAT3_4(i32 %DEMAND, i32 %BYTES) #0 {
entry:
  %retval = alloca i32, align 4
  %DEMAND.addr = alloca i32, align 4
  %BYTES.addr = alloca i32, align 4
  %INSTR = alloca [32 x i32], align 16
  %RANGE_ERROR = alloca i32, align 4
  %FORMAT = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %I = alloca i32, align 4
  %I180 = alloca i32, align 4
  store i32 %DEMAND, i32* %DEMAND.addr, align 4
  store i32 %BYTES, i32* %BYTES.addr, align 4
  store i32 0, i32* %RANGE_ERROR, align 4
  store i32 3, i32* %FORMAT, align 4
  %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add = add nsw i32 %0, 2
  %cmp = icmp sge i32 %add, 1048576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %RANGE_ERROR, align 4
  br label %if.end.36

if.else:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv)
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i32 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 %call, i32 1, i32* %arraydecay)
  %4 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add1 = add nsw i32 %4, 1
  %idxprom2 = sext i32 %add1 to i64
  %5 = load i8*, i8** @MEMORY, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %call5 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv4)
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 8
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 %call5, i32 1, i32* %arrayidx6)
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add7 = add nsw i32 %7, 2
  %idxprom8 = sext i32 %add7 to i64
  %8 = load i8*, i8** @MEMORY, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 %idxprom8
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %9 to i32
  %call11 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv10)
  %arrayidx12 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 16
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 %call11, i32 1, i32* %arrayidx12)
  %arrayidx13 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 11
  %10 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %10, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.else
  %arrayidx16 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 6
  %11 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %11, 0
  br i1 %cmp17, label %land.lhs.true.19, label %if.then.23

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %arrayidx20 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 7
  %12 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %12, 0
  br i1 %cmp21, label %if.end.35, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.19, %land.lhs.true
  %13 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add24 = add nsw i32 %13, 3
  %cmp25 = icmp sge i32 %add24, 1048576
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.then.23
  store i32 1, i32* %RANGE_ERROR, align 4
  br label %if.end

if.else.28:                                       ; preds = %if.then.23
  %14 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add29 = add nsw i32 %14, 3
  %idxprom30 = sext i32 %add29 to i64
  %15 = load i8*, i8** @MEMORY, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %15, i64 %idxprom30
  %16 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %16 to i32
  %call33 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv32)
  %arrayidx34 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 24
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 %call33, i32 1, i32* %arrayidx34)
  store i32 4, i32* %FORMAT, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.28, %if.then.27
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %land.lhs.true.19, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then
  %17 = load i32, i32* %RANGE_ERROR, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.36
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.36
  %18 = load i32, i32* %FORMAT, align 4
  %19 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add39 = add nsw i32 %19, %18
  store i32 %add39, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %arrayidx40 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 6
  %20 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp eq i32 %20, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.else.50

land.lhs.true.43:                                 ; preds = %if.end.38
  %arrayidx44 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 7
  %21 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp eq i32 %21, 0
  br i1 %cmp45, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %land.lhs.true.43
  %arrayidx48 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 12
  %call49 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* %arrayidx48, i32 12)
  store i32 %call49, i32* %ADDRESS, align 4
  br label %if.end.107

if.else.50:                                       ; preds = %land.lhs.true.43, %if.end.38
  %22 = load i32, i32* %FORMAT, align 4
  %cmp51 = icmp eq i32 %22, 3
  br i1 %cmp51, label %if.then.53, label %if.else.89

if.then.53:                                       ; preds = %if.else.50
  %arrayidx54 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 12
  %call55 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* %arrayidx54, i32 12)
  store i32 %call55, i32* %ADDRESS, align 4
  %arrayidx56 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 9
  %23 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp eq i32 %23, 1
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.64

land.lhs.true.59:                                 ; preds = %if.then.53
  %arrayidx60 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 10
  %24 = load i32, i32* %arrayidx60, align 4
  %cmp61 = icmp eq i32 %24, 1
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true.59
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %land.lhs.true.59, %if.then.53
  %arrayidx65 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 8
  %25 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp eq i32 %25, 1
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.64
  %26 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %27 = load i32, i32* %ADDRESS, align 4
  %add69 = add nsw i32 %27, %26
  store i32 %add69, i32* %ADDRESS, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.64
  %arrayidx71 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 9
  %28 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp eq i32 %28, 1
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.70
  %29 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 3), align 4
  %30 = load i32, i32* %ADDRESS, align 4
  %add75 = add nsw i32 %30, %29
  store i32 %add75, i32* %ADDRESS, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.end.70
  %arrayidx77 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 10
  %31 = load i32, i32* %arrayidx77, align 4
  %cmp78 = icmp eq i32 %31, 1
  br i1 %cmp78, label %if.then.80, label %if.end.88

if.then.80:                                       ; preds = %if.end.76
  %32 = load i32, i32* %ADDRESS, align 4
  %cmp81 = icmp sge i32 %32, 2048
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %if.then.80
  %33 = load i32, i32* %ADDRESS, align 4
  %sub = sub nsw i32 %33, 4096
  %34 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add84 = add nsw i32 %sub, %34
  store i32 %add84, i32* %ADDRESS, align 4
  br label %if.end.87

if.else.85:                                       ; preds = %if.then.80
  %35 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %36 = load i32, i32* %ADDRESS, align 4
  %add86 = add nsw i32 %36, %35
  store i32 %add86, i32* %ADDRESS, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.83
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.76
  br label %if.end.106

if.else.89:                                       ; preds = %if.else.50
  %arrayidx90 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 9
  %37 = load i32, i32* %arrayidx90, align 4
  %cmp91 = icmp eq i32 %37, 1
  br i1 %cmp91, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.89
  %arrayidx93 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 10
  %38 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp eq i32 %38, 1
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %lor.lhs.false, %if.else.89
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end.97:                                        ; preds = %lor.lhs.false
  %arrayidx98 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 12
  %call99 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* %arrayidx98, i32 20)
  store i32 %call99, i32* %ADDRESS, align 4
  %arrayidx100 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 8
  %39 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp eq i32 %39, 1
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.end.97
  %40 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 1), align 4
  %41 = load i32, i32* %ADDRESS, align 4
  %add104 = add nsw i32 %41, %40
  store i32 %add104, i32* %ADDRESS, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.end.97
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.88
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.47
  %arrayidx108 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 6
  %42 = load i32, i32* %arrayidx108, align 4
  %cmp109 = icmp eq i32 %42, 1
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.142

land.lhs.true.111:                                ; preds = %if.end.107
  %arrayidx112 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 7
  %43 = load i32, i32* %arrayidx112, align 4
  %cmp113 = icmp eq i32 %43, 1
  br i1 %cmp113, label %if.then.115, label %if.end.142

if.then.115:                                      ; preds = %land.lhs.true.111
  %44 = load i32, i32* %DEMAND.addr, align 4
  %cmp116 = icmp eq i32 %44, 1
  br i1 %cmp116, label %if.then.118, label %if.else.141

if.then.118:                                      ; preds = %if.then.115
  %45 = load i32, i32* %ADDRESS, align 4
  %cmp119 = icmp slt i32 %45, 0
  br i1 %cmp119, label %if.then.125, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.then.118
  %46 = load i32, i32* %ADDRESS, align 4
  %add122 = add nsw i32 %46, 2
  %cmp123 = icmp sge i32 %add122, 1048576
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %lor.lhs.false.121, %if.then.118
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end.126:                                       ; preds = %lor.lhs.false.121
  store i32 0, i32* %VALUE, align 4
  store i32 0, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.126
  %47 = load i32, i32* %I, align 4
  %48 = load i32, i32* %BYTES.addr, align 4
  %cmp127 = icmp slt i32 %47, %48
  br i1 %cmp127, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %VALUE, align 4
  %mul = mul nsw i32 %49, 256
  %50 = load i32, i32* %ADDRESS, align 4
  %51 = load i32, i32* %I, align 4
  %add129 = add nsw i32 %50, %51
  %idxprom130 = sext i32 %add129 to i64
  %52 = load i8*, i8** @MEMORY, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %52, i64 %idxprom130
  %53 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %53 to i32
  %call133 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv132)
  %add134 = add nsw i32 %mul, %call133
  store i32 %add134, i32* %VALUE, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %I, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load i32, i32* %VALUE, align 4
  %call135 = call double @pow(double 2.000000e+00, double 2.400000e+01) #3
  %conv136 = fptosi double %call135 to i32
  %cmp137 = icmp sge i32 %55, %conv136
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %for.end
  store i32 0, i32* %VALUE, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %for.end
  %56 = load i32, i32* %VALUE, align 4
  store i32 %56, i32* %retval
  br label %return

if.else.141:                                      ; preds = %if.then.115
  %57 = load i32, i32* %ADDRESS, align 4
  store i32 %57, i32* %retval
  br label %return

if.end.142:                                       ; preds = %land.lhs.true.111, %if.end.107
  %arrayidx143 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 6
  %58 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp eq i32 %58, 1
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.206

land.lhs.true.146:                                ; preds = %if.end.142
  %arrayidx147 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 7
  %59 = load i32, i32* %arrayidx147, align 4
  %cmp148 = icmp eq i32 %59, 0
  br i1 %cmp148, label %if.then.150, label %if.end.206

if.then.150:                                      ; preds = %land.lhs.true.146
  %60 = load i32, i32* %ADDRESS, align 4
  %cmp151 = icmp slt i32 %60, 0
  br i1 %cmp151, label %if.then.157, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %if.then.150
  %61 = load i32, i32* %ADDRESS, align 4
  %add154 = add nsw i32 %61, 2
  %cmp155 = icmp sge i32 %add154, 1048576
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %lor.lhs.false.153, %if.then.150
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end.158:                                       ; preds = %lor.lhs.false.153
  %62 = load i32, i32* %ADDRESS, align 4
  %idxprom159 = sext i32 %62 to i64
  %63 = load i8*, i8** @MEMORY, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %63, i64 %idxprom159
  %64 = load i8, i8* %arrayidx160, align 1
  %conv161 = sext i8 %64 to i32
  %call162 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv161)
  %mul163 = mul nsw i32 %call162, 256
  %65 = load i32, i32* %ADDRESS, align 4
  %add164 = add nsw i32 %65, 1
  %idxprom165 = sext i32 %add164 to i64
  %66 = load i8*, i8** @MEMORY, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %66, i64 %idxprom165
  %67 = load i8, i8* %arrayidx166, align 1
  %conv167 = sext i8 %67 to i32
  %call168 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv167)
  %add169 = add nsw i32 %mul163, %call168
  %mul170 = mul nsw i32 %add169, 256
  %68 = load i32, i32* %ADDRESS, align 4
  %add171 = add nsw i32 %68, 2
  %idxprom172 = sext i32 %add171 to i64
  %69 = load i8*, i8** @MEMORY, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %69, i64 %idxprom172
  %70 = load i8, i8* %arrayidx173, align 1
  %conv174 = sext i8 %70 to i32
  %call175 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv174)
  %add176 = add nsw i32 %mul170, %call175
  store i32 %add176, i32* %ADDRESS, align 4
  %71 = load i32, i32* %DEMAND.addr, align 4
  %cmp177 = icmp eq i32 %71, 1
  br i1 %cmp177, label %if.then.179, label %if.else.205

if.then.179:                                      ; preds = %if.end.158
  %72 = load i32, i32* %ADDRESS, align 4
  %cmp181 = icmp sgt i32 %72, 1048576
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.then.179
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 2)
  store i32 0, i32* %retval
  br label %return

if.end.184:                                       ; preds = %if.then.179
  store i32 0, i32* %VALUE, align 4
  store i32 0, i32* %I180, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.196, %if.end.184
  %73 = load i32, i32* %I180, align 4
  %74 = load i32, i32* %BYTES.addr, align 4
  %cmp186 = icmp slt i32 %73, %74
  br i1 %cmp186, label %for.body.188, label %for.end.198

for.body.188:                                     ; preds = %for.cond.185
  %75 = load i32, i32* %VALUE, align 4
  %mul189 = mul nsw i32 %75, 256
  %76 = load i32, i32* %ADDRESS, align 4
  %77 = load i32, i32* %I180, align 4
  %add190 = add nsw i32 %76, %77
  %idxprom191 = sext i32 %add190 to i64
  %78 = load i8*, i8** @MEMORY, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %78, i64 %idxprom191
  %79 = load i8, i8* %arrayidx192, align 1
  %conv193 = sext i8 %79 to i32
  %call194 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv193)
  %add195 = add nsw i32 %mul189, %call194
  store i32 %add195, i32* %VALUE, align 4
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.188
  %80 = load i32, i32* %I180, align 4
  %inc197 = add nsw i32 %80, 1
  store i32 %inc197, i32* %I180, align 4
  br label %for.cond.185

for.end.198:                                      ; preds = %for.cond.185
  %81 = load i32, i32* %VALUE, align 4
  %call199 = call double @pow(double 2.000000e+00, double 2.400000e+01) #3
  %conv200 = fptosi double %call199 to i32
  %cmp201 = icmp sge i32 %81, %conv200
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %for.end.198
  store i32 0, i32* %VALUE, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.203, %for.end.198
  %82 = load i32, i32* %VALUE, align 4
  store i32 %82, i32* %retval
  br label %return

if.else.205:                                      ; preds = %if.end.158
  %83 = load i32, i32* %ADDRESS, align 4
  store i32 %83, i32* %retval
  br label %return

if.end.206:                                       ; preds = %land.lhs.true.146, %if.end.142
  %arrayidx207 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 6
  %84 = load i32, i32* %arrayidx207, align 4
  %cmp208 = icmp eq i32 %84, 0
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.221

land.lhs.true.210:                                ; preds = %if.end.206
  %arrayidx211 = getelementptr inbounds [32 x i32], [32 x i32]* %INSTR, i32 0, i64 7
  %85 = load i32, i32* %arrayidx211, align 4
  %cmp212 = icmp eq i32 %85, 1
  br i1 %cmp212, label %if.then.214, label %if.end.221

if.then.214:                                      ; preds = %land.lhs.true.210
  %86 = load i32, i32* %ADDRESS, align 4
  %call215 = call double @pow(double 2.000000e+00, double 2.400000e+01) #3
  %conv216 = fptosi double %call215 to i32
  %cmp217 = icmp sge i32 %86, %conv216
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.then.214
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 2, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end.220:                                       ; preds = %if.then.214
  %87 = load i32, i32* %ADDRESS, align 4
  store i32 %87, i32* %retval
  br label %return

if.end.221:                                       ; preds = %land.lhs.true.210, %if.end.206
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.221, %if.end.220, %if.then.219, %if.else.205, %if.end.204, %if.then.183, %if.then.157, %if.else.141, %if.end.140, %if.then.125, %if.then.96, %if.then.63, %if.then.37
  %88 = load i32, i32* %retval
  ret i32 %88
}

declare void @BYTES_TO_BITS(...) #1

declare void @SIGNAL_INTERUPT(...) #1

declare i32 @BITS_TO_BYTE(...) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
