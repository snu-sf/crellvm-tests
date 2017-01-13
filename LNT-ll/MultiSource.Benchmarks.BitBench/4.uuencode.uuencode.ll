; ModuleID = './MultiSource.Benchmarks.BitBench/4.uuencode.uuencode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c" \0Aend\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"begin 640 \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Usage: uuencode [infile]\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"uuencode.c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @encode_char(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %and = and i32 %conv, 63
  %add = add nsw i32 32, %and
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define void @encode_line(i8* %input, i32 %offset, i32 %octets, i8* %line) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %octets.addr = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %loffs = alloca i32, align 4
  %ch = alloca i8, align 1
  store i8* %input, i8** %input.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %octets, i32* %octets.addr, align 4
  store i8* %line, i8** %line.addr, align 8
  store i32 0, i32* %loffs, align 4
  %0 = load i32, i32* %octets.addr, align 4
  %conv = trunc i32 %0 to i8
  %call = call i32 @encode_char(i8 signext %conv)
  %conv1 = trunc i32 %call to i8
  %1 = load i32, i32* %loffs, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 %conv1, i8* %arrayidx, align 1
  %3 = load i32, i32* %loffs, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %loffs, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %octets.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %octets.addr, align 4
  %cmp3 = icmp sge i32 %5, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %offset.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i8*, i8** %input.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %shr = ashr i32 %conv7, 2
  %conv8 = trunc i32 %shr to i8
  %call9 = call i32 @encode_char(i8 signext %conv8)
  %conv10 = trunc i32 %call9 to i8
  store i8 %conv10, i8* %ch, align 1
  %9 = load i8, i8* %ch, align 1
  %10 = load i32, i32* %loffs, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %loffs, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load i8*, i8** %line.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 %idxprom12
  store i8 %9, i8* %arrayidx13, align 1
  %12 = load i32, i32* %offset.addr, align 4
  %idxprom14 = sext i32 %12 to i64
  %13 = load i8*, i8** %input.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 %idxprom14
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %14 to i32
  %shl = shl i32 %conv16, 4
  %15 = load i32, i32* %offset.addr, align 4
  %add = add nsw i32 %15, 1
  %idxprom17 = sext i32 %add to i64
  %16 = load i8*, i8** %input.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 %idxprom17
  %17 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %17 to i32
  %shr20 = ashr i32 %conv19, 4
  %or = or i32 %shl, %shr20
  %conv21 = trunc i32 %or to i8
  %call22 = call i32 @encode_char(i8 signext %conv21)
  %conv23 = trunc i32 %call22 to i8
  store i8 %conv23, i8* %ch, align 1
  %18 = load i8, i8* %ch, align 1
  %19 = load i32, i32* %loffs, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, i32* %loffs, align 4
  %idxprom25 = sext i32 %19 to i64
  %20 = load i8*, i8** %line.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 %idxprom25
  store i8 %18, i8* %arrayidx26, align 1
  %21 = load i32, i32* %offset.addr, align 4
  %add27 = add nsw i32 %21, 1
  %idxprom28 = sext i32 %add27 to i64
  %22 = load i8*, i8** %input.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 %idxprom28
  %23 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %23 to i32
  %shl31 = shl i32 %conv30, 2
  %24 = load i32, i32* %offset.addr, align 4
  %add32 = add nsw i32 %24, 2
  %idxprom33 = sext i32 %add32 to i64
  %25 = load i8*, i8** %input.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %25, i64 %idxprom33
  %26 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %26 to i32
  %shr36 = ashr i32 %conv35, 6
  %or37 = or i32 %shl31, %shr36
  %conv38 = trunc i32 %or37 to i8
  %call39 = call i32 @encode_char(i8 signext %conv38)
  %conv40 = trunc i32 %call39 to i8
  store i8 %conv40, i8* %ch, align 1
  %27 = load i8, i8* %ch, align 1
  %28 = load i32, i32* %loffs, align 4
  %inc41 = add nsw i32 %28, 1
  store i32 %inc41, i32* %loffs, align 4
  %idxprom42 = sext i32 %28 to i64
  %29 = load i8*, i8** %line.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %29, i64 %idxprom42
  store i8 %27, i8* %arrayidx43, align 1
  %30 = load i32, i32* %offset.addr, align 4
  %add44 = add nsw i32 %30, 2
  %idxprom45 = sext i32 %add44 to i64
  %31 = load i8*, i8** %input.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %31, i64 %idxprom45
  %32 = load i8, i8* %arrayidx46, align 1
  %call47 = call i32 @encode_char(i8 signext %32)
  %conv48 = trunc i32 %call47 to i8
  store i8 %conv48, i8* %ch, align 1
  %33 = load i8, i8* %ch, align 1
  %34 = load i32, i32* %loffs, align 4
  %inc49 = add nsw i32 %34, 1
  store i32 %inc49, i32* %loffs, align 4
  %idxprom50 = sext i32 %34 to i64
  %35 = load i8*, i8** %line.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %35, i64 %idxprom50
  store i8 %33, i8* %arrayidx51, align 1
  br label %if.end.126

if.else:                                          ; preds = %for.body
  %36 = load i32, i32* %octets.addr, align 4
  %cmp52 = icmp eq i32 %36, 1
  br i1 %cmp52, label %if.then.54, label %if.else.81

if.then.54:                                       ; preds = %if.else
  %37 = load i32, i32* %offset.addr, align 4
  %idxprom55 = sext i32 %37 to i64
  %38 = load i8*, i8** %input.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %38, i64 %idxprom55
  %39 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %39 to i32
  %shr58 = ashr i32 %conv57, 2
  %conv59 = trunc i32 %shr58 to i8
  %call60 = call i32 @encode_char(i8 signext %conv59)
  %conv61 = trunc i32 %call60 to i8
  store i8 %conv61, i8* %ch, align 1
  %40 = load i8, i8* %ch, align 1
  %41 = load i32, i32* %loffs, align 4
  %inc62 = add nsw i32 %41, 1
  store i32 %inc62, i32* %loffs, align 4
  %idxprom63 = sext i32 %41 to i64
  %42 = load i8*, i8** %line.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %42, i64 %idxprom63
  store i8 %40, i8* %arrayidx64, align 1
  %43 = load i32, i32* %offset.addr, align 4
  %idxprom65 = sext i32 %43 to i64
  %44 = load i8*, i8** %input.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %44, i64 %idxprom65
  %45 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %45 to i32
  %shl68 = shl i32 %conv67, 4
  %conv69 = trunc i32 %shl68 to i8
  %call70 = call i32 @encode_char(i8 signext %conv69)
  %conv71 = trunc i32 %call70 to i8
  store i8 %conv71, i8* %ch, align 1
  %46 = load i8, i8* %ch, align 1
  %47 = load i32, i32* %loffs, align 4
  %inc72 = add nsw i32 %47, 1
  store i32 %inc72, i32* %loffs, align 4
  %idxprom73 = sext i32 %47 to i64
  %48 = load i8*, i8** %line.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %48, i64 %idxprom73
  store i8 %46, i8* %arrayidx74, align 1
  %49 = load i32, i32* %loffs, align 4
  %inc75 = add nsw i32 %49, 1
  store i32 %inc75, i32* %loffs, align 4
  %idxprom76 = sext i32 %49 to i64
  %50 = load i8*, i8** %line.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %50, i64 %idxprom76
  store i8 61, i8* %arrayidx77, align 1
  %51 = load i32, i32* %loffs, align 4
  %inc78 = add nsw i32 %51, 1
  store i32 %inc78, i32* %loffs, align 4
  %idxprom79 = sext i32 %51 to i64
  %52 = load i8*, i8** %line.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %52, i64 %idxprom79
  store i8 61, i8* %arrayidx80, align 1
  br label %if.end.125

if.else.81:                                       ; preds = %if.else
  %53 = load i32, i32* %octets.addr, align 4
  %cmp82 = icmp eq i32 %53, 2
  br i1 %cmp82, label %if.then.84, label %if.end

if.then.84:                                       ; preds = %if.else.81
  %54 = load i32, i32* %offset.addr, align 4
  %idxprom85 = sext i32 %54 to i64
  %55 = load i8*, i8** %input.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %55, i64 %idxprom85
  %56 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %56 to i32
  %shr88 = ashr i32 %conv87, 2
  %conv89 = trunc i32 %shr88 to i8
  %call90 = call i32 @encode_char(i8 signext %conv89)
  %conv91 = trunc i32 %call90 to i8
  store i8 %conv91, i8* %ch, align 1
  %57 = load i8, i8* %ch, align 1
  %58 = load i32, i32* %loffs, align 4
  %inc92 = add nsw i32 %58, 1
  store i32 %inc92, i32* %loffs, align 4
  %idxprom93 = sext i32 %58 to i64
  %59 = load i8*, i8** %line.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %59, i64 %idxprom93
  store i8 %57, i8* %arrayidx94, align 1
  %60 = load i32, i32* %offset.addr, align 4
  %idxprom95 = sext i32 %60 to i64
  %61 = load i8*, i8** %input.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %61, i64 %idxprom95
  %62 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %62 to i32
  %shl98 = shl i32 %conv97, 4
  %63 = load i32, i32* %offset.addr, align 4
  %add99 = add nsw i32 %63, 1
  %idxprom100 = sext i32 %add99 to i64
  %64 = load i8*, i8** %input.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %64, i64 %idxprom100
  %65 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %65 to i32
  %shr103 = ashr i32 %conv102, 4
  %or104 = or i32 %shl98, %shr103
  %conv105 = trunc i32 %or104 to i8
  %call106 = call i32 @encode_char(i8 signext %conv105)
  %conv107 = trunc i32 %call106 to i8
  store i8 %conv107, i8* %ch, align 1
  %66 = load i8, i8* %ch, align 1
  %67 = load i32, i32* %loffs, align 4
  %inc108 = add nsw i32 %67, 1
  store i32 %inc108, i32* %loffs, align 4
  %idxprom109 = sext i32 %67 to i64
  %68 = load i8*, i8** %line.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %68, i64 %idxprom109
  store i8 %66, i8* %arrayidx110, align 1
  %69 = load i32, i32* %offset.addr, align 4
  %add111 = add nsw i32 %69, 1
  %idxprom112 = sext i32 %add111 to i64
  %70 = load i8*, i8** %input.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %70, i64 %idxprom112
  %71 = load i8, i8* %arrayidx113, align 1
  %conv114 = sext i8 %71 to i32
  %shl115 = shl i32 %conv114, 2
  %conv116 = trunc i32 %shl115 to i8
  %call117 = call i32 @encode_char(i8 signext %conv116)
  %conv118 = trunc i32 %call117 to i8
  store i8 %conv118, i8* %ch, align 1
  %72 = load i8, i8* %ch, align 1
  %73 = load i32, i32* %loffs, align 4
  %inc119 = add nsw i32 %73, 1
  store i32 %inc119, i32* %loffs, align 4
  %idxprom120 = sext i32 %73 to i64
  %74 = load i8*, i8** %line.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %74, i64 %idxprom120
  store i8 %72, i8* %arrayidx121, align 1
  %75 = load i32, i32* %loffs, align 4
  %inc122 = add nsw i32 %75, 1
  store i32 %inc122, i32* %loffs, align 4
  %idxprom123 = sext i32 %75 to i64
  %76 = load i8*, i8** %line.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %76, i64 %idxprom123
  store i8 61, i8* %arrayidx124, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.84, %if.else.81
  br label %if.end.125

if.end.125:                                       ; preds = %if.end, %if.then.54
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.126
  %77 = load i32, i32* %offset.addr, align 4
  %add127 = add nsw i32 %77, 3
  store i32 %add127, i32* %offset.addr, align 4
  %78 = load i32, i32* %octets.addr, align 4
  %sub = sub nsw i32 %78, 3
  store i32 %sub, i32* %octets.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i32, i32* %loffs, align 4
  %inc128 = add nsw i32 %79, 1
  store i32 %inc128, i32* %loffs, align 4
  %idxprom129 = sext i32 %79 to i64
  %80 = load i8*, i8** %line.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %80, i64 %idxprom129
  store i8 10, i8* %arrayidx130, align 1
  %81 = load i32, i32* %loffs, align 4
  %idxprom131 = sext i32 %81 to i64
  %82 = load i8*, i8** %line.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %82, i64 %idxprom131
  store i8 0, i8* %arrayidx132, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @encode(i8* %input, i32 %limit, i8* %output) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %limit.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %line = alloca [63 x i8], align 16
  %offset = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8
  store i32 %limit, i32* %limit.addr, align 4
  store i8* %output, i8** %output.addr, align 8
  store i32 0, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %offset, align 4
  %1 = load i32, i32* %limit.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %limit.addr, align 4
  %3 = load i32, i32* %offset, align 4
  %sub = sub nsw i32 %2, %3
  %cmp1 = icmp sge i32 %sub, 45
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load i32, i32* %offset, align 4
  %arraydecay = getelementptr inbounds [63 x i8], [63 x i8]* %line, i32 0, i32 0
  call void @encode_line(i8* %4, i32 %5, i32 45, i8* %arraydecay)
  %6 = load i32, i32* %offset, align 4
  %add = add nsw i32 %6, 45
  store i32 %add, i32* %offset, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %7 = load i8*, i8** %input.addr, align 8
  %8 = load i32, i32* %offset, align 4
  %9 = load i32, i32* %limit.addr, align 4
  %10 = load i32, i32* %offset, align 4
  %sub2 = sub nsw i32 %9, %10
  %arraydecay3 = getelementptr inbounds [63 x i8], [63 x i8]* %line, i32 0, i32 0
  call void @encode_line(i8* %7, i32 %8, i32 %sub2, i8* %arraydecay3)
  %11 = load i32, i32* %limit.addr, align 4
  store i32 %11, i32* %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i8*, i8** %output.addr, align 8
  %arraydecay4 = getelementptr inbounds [63 x i8], [63 x i8]* %line, i32 0, i32 0
  %call = call i8* @strcat(i8* %12, i8* %arraydecay4) #5
  %13 = load i8*, i8** %output.addr, align 8
  %14 = load i8*, i8** %output.addr, align 8
  %call5 = call i64 @strlen(i8* %14) #6
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %call5
  store i8* %add.ptr, i8** %output.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i8*, i8** %output.addr, align 8
  %call6 = call i8* @strcat(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #5
  ret void
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @do_encode(i8* %input, i8* %output, i32 %len, i8* %infilename) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %infilename.addr = alloca i8*, align 8
  %mode = alloca i32, align 4
  %namelen = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %infilename, i8** %infilename.addr, align 8
  %0 = load i8*, i8** %output.addr, align 8
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #5
  %1 = load i8*, i8** %output.addr, align 8
  %2 = load i8*, i8** %infilename.addr, align 8
  %call1 = call i8* @strcat(i8* %1, i8* %2) #5
  %3 = load i8*, i8** %output.addr, align 8
  %call2 = call i8* @strcat(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #5
  %4 = load i8*, i8** %infilename.addr, align 8
  %call3 = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %namelen, align 4
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i32, i32* %len.addr, align 4
  %7 = load i8*, i8** %output.addr, align 8
  %8 = load i8*, i8** %output.addr, align 8
  %call4 = call i64 @strlen(i8* %8) #6
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %call4
  call void @encode(i8* %5, i32 %6, i8* %add.ptr)
  %9 = load i8*, i8** %output.addr, align 8
  %call5 = call i64 @strlen(i8* %9) #6
  %conv6 = trunc i64 %call5 to i32
  ret i32 %conv6
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %size = alloca i64, align 8
  %outsize = alloca i32, align 4
  %time = alloca i32, align 4
  %inbuf = alloca i8*, align 8
  %outbuf = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %pre = alloca %struct.timeval, align 8
  %post = alloca %struct.timeval, align 8
  %infilename = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias i8* @malloc(i64 1000000) #5
  store i8* %call, i8** %inbuf, align 8
  %call1 = call noalias i8* @malloc(i64 2000000) #5
  store i8* %call1, i8** %outbuf, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %in, align 8
  %cmp3 = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx5, align 8
  call void @perror(i8* %4)
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %argc.addr, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** %in, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %out, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  %8 = load i32, i32* %argc.addr, align 4
  %cmp7 = icmp ne i32 %8, 1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.10:                                        ; preds = %if.end.6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %10 = load i8*, i8** %inbuf, align 8
  %call11 = call i64 @read_data(%struct._IO_FILE* %9, i8* %10)
  store i64 %call11, i64* %size, align 8
  %call12 = call i32 @gettimeofday(%struct.timeval* %pre, %struct.timezone* null) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %11 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %11, 1000
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8** %infilename, align 8
  %12 = load i8*, i8** %inbuf, align 8
  %13 = load i8*, i8** %outbuf, align 8
  %14 = load i64, i64* %size, align 8
  %conv = trunc i64 %14 to i32
  %15 = load i8*, i8** %infilename, align 8
  %call14 = call i32 @do_encode(i8* %12, i8* %13, i32 %conv, i8* %15)
  store i32 %call14, i32* %outsize, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call15 = call i32 @gettimeofday(%struct.timeval* %post, %struct.timezone* null) #5
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %post, i32 0, i32 0
  %17 = load i64, i64* %tv_sec, align 8
  %mul = mul nsw i64 %17, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %post, i32 0, i32 1
  %18 = load i64, i64* %tv_usec, align 8
  %add = add nsw i64 %mul, %18
  %tv_sec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %pre, i32 0, i32 0
  %19 = load i64, i64* %tv_sec16, align 8
  %mul17 = mul nsw i64 %19, 1000000
  %tv_usec18 = getelementptr inbounds %struct.timeval, %struct.timeval* %pre, i32 0, i32 1
  %20 = load i64, i64* %tv_usec18, align 8
  %add19 = add nsw i64 %mul17, %20
  %sub = sub nsw i64 %add, %add19
  %conv20 = trunc i64 %sub to i32
  store i32 %conv20, i32* %time, align 4
  %21 = load i32, i32* %outsize, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %21)
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* %in, i8* %buffer) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i64 @fread(i8* %0, i64 1, i64 1000000, %struct._IO_FILE* %1)
  ret i64 %call
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
