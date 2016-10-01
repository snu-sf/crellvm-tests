; ModuleID = './MultiSource.Benchmarks.Prolangs-C/78.agrep.preprocess.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@REGEX = external global i32, align 4
@WHOLELINE = external global i32, align 4
@WORDBOUND = external global i32, align 4
@D_length = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s: delimiter pattern too long\0A\00", align 1
@Progname = external global [0 x i8], align 1
@HEAD = external global i32, align 4
@RE_ERR = external global i32, align 4
@TAIL = external global i32, align 4
@DELIMITER = external global i32, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: -d or -w option is not supported for this pattern\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: illegal regular expression\0A\00", align 1
@table = external global [32 x [32 x i32]], align 16
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: regular expression too long\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @preprocess(i8* %D_pattern, i8* %Pattern) #0 {
entry:
  %D_pattern.addr = alloca i8*, align 8
  %Pattern.addr = alloca i8*, align 8
  %temp = alloca [1024 x i8], align 16
  %r_pat = alloca i8*, align 8
  %old_pat = alloca i8*, align 8
  %old_D_pat = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %rp = alloca i32, align 4
  %m = alloca i32, align 4
  %t = alloca i32, align 4
  %num_pos = alloca i32, align 4
  %ANDON = alloca i32, align 4
  %d_end = alloca i32, align 4
  %IN_RANGE = alloca i32, align 4
  store i8* %D_pattern, i8** %D_pattern.addr, align 8
  store i8* %Pattern, i8** %Pattern.addr, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %rp, align 4
  store i32 0, i32* %t, align 4
  store i32 0, i32* %ANDON, align 4
  store i32 0, i32* %IN_RANGE, align 4
  %0 = load i8*, i8** %Pattern.addr, align 8
  store i8* %0, i8** %old_pat, align 8
  %1 = load i8*, i8** %Pattern.addr, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %m, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end.16

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %idxprom5
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 124
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %idxprom10
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv12, 42
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* @REGEX, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %lor.lhs.false
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %14 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i8*, i8** %Pattern.addr, align 8
  %call18 = call i64 @strlen(i8* %15) #5
  %16 = load i8*, i8** %D_pattern.addr, align 8
  %call19 = call i64 @strlen(i8* %16) #5
  %mul = mul i64 2, %call19
  %add = add i64 %call18, %mul
  %call20 = call noalias i8* @malloc(i64 %add) #6
  store i8* %call20, i8** %r_pat, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i32 0
  %17 = load i8*, i8** %D_pattern.addr, align 8
  %call21 = call i8* @strcpy(i8* %arraydecay, i8* %17) #6
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i32 0
  %call23 = call i64 @strlen(i8* %arraydecay22) #5
  %conv24 = trunc i64 %call23 to i32
  store i32 %conv24, i32* %t, align 4
  store i32 %conv24, i32* %d_end, align 4
  %18 = load i32, i32* @WHOLELINE, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.25, label %if.else.53

if.then.25:                                       ; preds = %for.end
  %19 = load i32, i32* %t, align 4
  %inc26 = add nsw i32 %19, 1
  store i32 %inc26, i32* %t, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom27
  store i8 -10, i8* %arrayidx28, align 1
  %20 = load i32, i32* %t, align 4
  %inc29 = add nsw i32 %20, 1
  store i32 %inc29, i32* %t, align 4
  %idxprom30 = sext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom30
  store i8 -17, i8* %arrayidx31, align 1
  %21 = load i32, i32* %t, align 4
  %inc32 = add nsw i32 %21, 1
  store i32 %inc32, i32* %t, align 4
  %idxprom33 = sext i32 %21 to i64
  %arrayidx34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom33
  store i8 -9, i8* %arrayidx34, align 1
  %22 = load i32, i32* %t, align 4
  %idxprom35 = sext i32 %22 to i64
  %arrayidx36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom35
  store i8 0, i8* %arrayidx36, align 1
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i32 0
  %23 = load i8*, i8** %Pattern.addr, align 8
  %call38 = call i8* @strcat(i8* %arraydecay37, i8* %23) #6
  %arraydecay39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i32 0
  %call40 = call i64 @strlen(i8* %arraydecay39) #5
  %conv41 = trunc i64 %call40 to i32
  store i32 %conv41, i32* %m, align 4
  %24 = load i32, i32* %m, align 4
  %inc42 = add nsw i32 %24, 1
  store i32 %inc42, i32* %m, align 4
  %idxprom43 = sext i32 %24 to i64
  %arrayidx44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom43
  store i8 -10, i8* %arrayidx44, align 1
  %25 = load i32, i32* %m, align 4
  %inc45 = add nsw i32 %25, 1
  store i32 %inc45, i32* %m, align 4
  %idxprom46 = sext i32 %25 to i64
  %arrayidx47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom46
  store i8 10, i8* %arrayidx47, align 1
  %26 = load i32, i32* %m, align 4
  %inc48 = add nsw i32 %26, 1
  store i32 %inc48, i32* %m, align 4
  %idxprom49 = sext i32 %26 to i64
  %arrayidx50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom49
  store i8 -9, i8* %arrayidx50, align 1
  %27 = load i32, i32* %m, align 4
  %idxprom51 = sext i32 %27 to i64
  %arrayidx52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom51
  store i8 0, i8* %arrayidx52, align 1
  br label %if.end.87

if.else.53:                                       ; preds = %for.end
  %28 = load i32, i32* @WORDBOUND, align 4
  %tobool54 = icmp ne i32 %28, 0
  br i1 %tobool54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %if.else.53
  %29 = load i32, i32* %t, align 4
  %inc56 = add nsw i32 %29, 1
  store i32 %inc56, i32* %t, align 4
  %idxprom57 = sext i32 %29 to i64
  %arrayidx58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom57
  store i8 -10, i8* %arrayidx58, align 1
  %30 = load i32, i32* %t, align 4
  %inc59 = add nsw i32 %30, 1
  store i32 %inc59, i32* %t, align 4
  %idxprom60 = sext i32 %30 to i64
  %arrayidx61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom60
  store i8 -15, i8* %arrayidx61, align 1
  %31 = load i32, i32* %t, align 4
  %inc62 = add nsw i32 %31, 1
  store i32 %inc62, i32* %t, align 4
  %idxprom63 = sext i32 %31 to i64
  %arrayidx64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom63
  store i8 -9, i8* %arrayidx64, align 1
  %32 = load i32, i32* %t, align 4
  %idxprom65 = sext i32 %32 to i64
  %arrayidx66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom65
  store i8 0, i8* %arrayidx66, align 1
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.55, %if.else.53
  %arraydecay68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i32 0
  %33 = load i8*, i8** %Pattern.addr, align 8
  %call69 = call i8* @strcat(i8* %arraydecay68, i8* %33) #6
  %arraydecay70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i32 0
  %call71 = call i64 @strlen(i8* %arraydecay70) #5
  %conv72 = trunc i64 %call71 to i32
  store i32 %conv72, i32* %m, align 4
  %34 = load i32, i32* @WORDBOUND, align 4
  %tobool73 = icmp ne i32 %34, 0
  br i1 %tobool73, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %if.end.67
  %35 = load i32, i32* %m, align 4
  %inc75 = add nsw i32 %35, 1
  store i32 %inc75, i32* %m, align 4
  %idxprom76 = sext i32 %35 to i64
  %arrayidx77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom76
  store i8 -10, i8* %arrayidx77, align 1
  %36 = load i32, i32* %m, align 4
  %inc78 = add nsw i32 %36, 1
  store i32 %inc78, i32* %m, align 4
  %idxprom79 = sext i32 %36 to i64
  %arrayidx80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom79
  store i8 -15, i8* %arrayidx80, align 1
  %37 = load i32, i32* %m, align 4
  %inc81 = add nsw i32 %37, 1
  store i32 %inc81, i32* %m, align 4
  %idxprom82 = sext i32 %37 to i64
  %arrayidx83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom82
  store i8 -9, i8* %arrayidx83, align 1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.74, %if.end.67
  %38 = load i32, i32* %m, align 4
  %idxprom85 = sext i32 %38 to i64
  %arrayidx86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom85
  store i8 0, i8* %arrayidx86, align 1
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.84, %if.then.25
  store i32 0, i32* @D_length, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.142, %if.end.87
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %d_end, align 4
  %sub = sub nsw i32 %40, 2
  %cmp89 = icmp slt i32 %39, %sub
  br i1 %cmp89, label %for.body.91, label %for.end.144

for.body.91:                                      ; preds = %for.cond.88
  %41 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %41 to i64
  %arrayidx93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom92
  %42 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %42 to i32
  switch i32 %conv94, label %sw.default [
    i32 92, label %sw.bb
    i32 60, label %sw.bb.106
    i32 62, label %sw.bb.110
    i32 94, label %sw.bb.114
    i32 36, label %sw.bb.123
  ]

sw.bb:                                            ; preds = %for.body.91
  %43 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %43, 1
  store i32 %inc95, i32* %i, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %44 to i64
  %arrayidx97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom96
  %45 = load i8, i8* %arrayidx97, align 1
  %46 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %46, 1
  store i32 %inc98, i32* %j, align 4
  %idxprom99 = sext i32 %46 to i64
  %47 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %47, i64 %idxprom99
  store i8 %45, i8* %arrayidx100, align 1
  %48 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %48 to i64
  %arrayidx102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom101
  %49 = load i8, i8* %arrayidx102, align 1
  %50 = load i32, i32* @D_length, align 4
  %inc103 = add nsw i32 %50, 1
  store i32 %inc103, i32* @D_length, align 4
  %idxprom104 = sext i32 %50 to i64
  %arrayidx105 = getelementptr inbounds [16 x i8], [16 x i8]* %old_D_pat, i32 0, i64 %idxprom104
  store i8 %49, i8* %arrayidx105, align 1
  br label %sw.epilog

sw.bb.106:                                        ; preds = %for.body.91
  %51 = load i32, i32* %j, align 4
  %inc107 = add nsw i32 %51, 1
  store i32 %inc107, i32* %j, align 4
  %idxprom108 = sext i32 %51 to i64
  %52 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %52, i64 %idxprom108
  store i8 -10, i8* %arrayidx109, align 1
  br label %sw.epilog

sw.bb.110:                                        ; preds = %for.body.91
  %53 = load i32, i32* %j, align 4
  %inc111 = add nsw i32 %53, 1
  store i32 %inc111, i32* %j, align 4
  %idxprom112 = sext i32 %53 to i64
  %54 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %54, i64 %idxprom112
  store i8 -9, i8* %arrayidx113, align 1
  br label %sw.epilog

sw.bb.114:                                        ; preds = %for.body.91
  %55 = load i32, i32* %j, align 4
  %inc115 = add nsw i32 %55, 1
  store i32 %inc115, i32* %j, align 4
  %idxprom116 = sext i32 %55 to i64
  %56 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %56, i64 %idxprom116
  store i8 10, i8* %arrayidx117, align 1
  %57 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %57 to i64
  %arrayidx119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom118
  %58 = load i8, i8* %arrayidx119, align 1
  %59 = load i32, i32* @D_length, align 4
  %inc120 = add nsw i32 %59, 1
  store i32 %inc120, i32* @D_length, align 4
  %idxprom121 = sext i32 %59 to i64
  %arrayidx122 = getelementptr inbounds [16 x i8], [16 x i8]* %old_D_pat, i32 0, i64 %idxprom121
  store i8 %58, i8* %arrayidx122, align 1
  br label %sw.epilog

sw.bb.123:                                        ; preds = %for.body.91
  %60 = load i32, i32* %j, align 4
  %inc124 = add nsw i32 %60, 1
  store i32 %inc124, i32* %j, align 4
  %idxprom125 = sext i32 %60 to i64
  %61 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %61, i64 %idxprom125
  store i8 10, i8* %arrayidx126, align 1
  %62 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %62 to i64
  %arrayidx128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom127
  %63 = load i8, i8* %arrayidx128, align 1
  %64 = load i32, i32* @D_length, align 4
  %inc129 = add nsw i32 %64, 1
  store i32 %inc129, i32* @D_length, align 4
  %idxprom130 = sext i32 %64 to i64
  %arrayidx131 = getelementptr inbounds [16 x i8], [16 x i8]* %old_D_pat, i32 0, i64 %idxprom130
  store i8 %63, i8* %arrayidx131, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.91
  %65 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %65 to i64
  %arrayidx133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom132
  %66 = load i8, i8* %arrayidx133, align 1
  %67 = load i32, i32* %j, align 4
  %inc134 = add nsw i32 %67, 1
  store i32 %inc134, i32* %j, align 4
  %idxprom135 = sext i32 %67 to i64
  %68 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %68, i64 %idxprom135
  store i8 %66, i8* %arrayidx136, align 1
  %69 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %69 to i64
  %arrayidx138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom137
  %70 = load i8, i8* %arrayidx138, align 1
  %71 = load i32, i32* @D_length, align 4
  %inc139 = add nsw i32 %71, 1
  store i32 %inc139, i32* @D_length, align 4
  %idxprom140 = sext i32 %71 to i64
  %arrayidx141 = getelementptr inbounds [16 x i8], [16 x i8]* %old_D_pat, i32 0, i64 %idxprom140
  store i8 %70, i8* %arrayidx141, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.123, %sw.bb.114, %sw.bb.110, %sw.bb.106, %sw.bb
  br label %for.inc.142

for.inc.142:                                      ; preds = %sw.epilog
  %72 = load i32, i32* %i, align 4
  %inc143 = add nsw i32 %72, 1
  store i32 %inc143, i32* %i, align 4
  br label %for.cond.88

for.end.144:                                      ; preds = %for.cond.88
  %73 = load i32, i32* @D_length, align 4
  %cmp145 = icmp sgt i32 %73, 8
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %for.end.144
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.149:                                       ; preds = %for.end.144
  %75 = load i32, i32* %j, align 4
  %inc150 = add nsw i32 %75, 1
  store i32 %inc150, i32* %j, align 4
  %idxprom151 = sext i32 %75 to i64
  %76 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %76, i64 %idxprom151
  store i8 -4, i8* %arrayidx152, align 1
  %77 = load i32, i32* @D_length, align 4
  %idxprom153 = sext i32 %77 to i64
  %arrayidx154 = getelementptr inbounds [16 x i8], [16 x i8]* %old_D_pat, i32 0, i64 %idxprom153
  store i8 0, i8* %arrayidx154, align 1
  %78 = load i8*, i8** %D_pattern.addr, align 8
  %arraydecay155 = getelementptr inbounds [16 x i8], [16 x i8]* %old_D_pat, i32 0, i32 0
  %call156 = call i8* @strcpy(i8* %78, i8* %arraydecay155) #6
  %79 = load i32, i32* @D_length, align 4
  %inc157 = add nsw i32 %79, 1
  store i32 %inc157, i32* @D_length, align 4
  %80 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %80 to i64
  %81 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %81, i64 %idxprom158
  store i8 0, i8* %arrayidx159, align 1
  store i32 0, i32* %rp, align 4
  %82 = load i32, i32* @REGEX, align 4
  %tobool160 = icmp ne i32 %82, 0
  br i1 %tobool160, label %if.then.161, label %if.end.171

if.then.161:                                      ; preds = %if.end.149
  %83 = load i32, i32* %rp, align 4
  %inc162 = add nsw i32 %83, 1
  store i32 %inc162, i32* %rp, align 4
  %idxprom163 = sext i32 %83 to i64
  %84 = load i8*, i8** %r_pat, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %84, i64 %idxprom163
  store i8 46, i8* %arrayidx164, align 1
  %85 = load i32, i32* %rp, align 4
  %inc165 = add nsw i32 %85, 1
  store i32 %inc165, i32* %rp, align 4
  %idxprom166 = sext i32 %85 to i64
  %86 = load i8*, i8** %r_pat, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %86, i64 %idxprom166
  store i8 40, i8* %arrayidx167, align 1
  %87 = load i32, i32* %j, align 4
  %inc168 = add nsw i32 %87, 1
  store i32 %inc168, i32* %j, align 4
  %idxprom169 = sext i32 %87 to i64
  %88 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %88, i64 %idxprom169
  store i8 -18, i8* %arrayidx170, align 1
  store i32 1, i32* @HEAD, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.161, %if.end.149
  %89 = load i32, i32* %d_end, align 4
  store i32 %89, i32* %i, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.341, %if.end.171
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %m, align 4
  %cmp173 = icmp slt i32 %90, %91
  br i1 %cmp173, label %for.body.175, label %for.end.343

for.body.175:                                     ; preds = %for.cond.172
  %92 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %92 to i64
  %arrayidx177 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom176
  %93 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %93 to i32
  switch i32 %conv178, label %sw.default.329 [
    i32 92, label %sw.bb.179
    i32 35, label %sw.bb.189
    i32 40, label %sw.bb.205
    i32 41, label %sw.bb.212
    i32 91, label %sw.bb.219
    i32 93, label %sw.bb.226
    i32 60, label %sw.bb.233
    i32 62, label %sw.bb.237
    i32 94, label %sw.bb.241
    i32 36, label %sw.bb.260
    i32 46, label %sw.bb.267
    i32 42, label %sw.bb.274
    i32 124, label %sw.bb.281
    i32 44, label %sw.bb.288
    i32 59, label %sw.bb.292
    i32 45, label %sw.bb.299
    i32 239, label %sw.bb.320
  ]

sw.bb.179:                                        ; preds = %for.body.175
  %94 = load i32, i32* %i, align 4
  %inc180 = add nsw i32 %94, 1
  store i32 %inc180, i32* %i, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %95 to i64
  %arrayidx182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom181
  %96 = load i8, i8* %arrayidx182, align 1
  %97 = load i32, i32* %j, align 4
  %inc183 = add nsw i32 %97, 1
  store i32 %inc183, i32* %j, align 4
  %idxprom184 = sext i32 %97 to i64
  %98 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %98, i64 %idxprom184
  store i8 %96, i8* %arrayidx185, align 1
  %99 = load i32, i32* %rp, align 4
  %inc186 = add nsw i32 %99, 1
  store i32 %inc186, i32* %rp, align 4
  %idxprom187 = sext i32 %99 to i64
  %100 = load i8*, i8** %r_pat, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %100, i64 %idxprom187
  store i8 111, i8* %arrayidx188, align 1
  br label %sw.epilog.340

sw.bb.189:                                        ; preds = %for.body.175
  %101 = load i32, i32* @REGEX, align 4
  %tobool190 = icmp ne i32 %101, 0
  br i1 %tobool190, label %if.then.191, label %if.end.201

if.then.191:                                      ; preds = %sw.bb.189
  %102 = load i32, i32* %j, align 4
  %inc192 = add nsw i32 %102, 1
  store i32 %inc192, i32* %j, align 4
  %idxprom193 = sext i32 %102 to i64
  %103 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %103, i64 %idxprom193
  store i8 -18, i8* %arrayidx194, align 1
  %104 = load i32, i32* %rp, align 4
  %inc195 = add nsw i32 %104, 1
  store i32 %inc195, i32* %rp, align 4
  %idxprom196 = sext i32 %104 to i64
  %105 = load i8*, i8** %r_pat, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %105, i64 %idxprom196
  store i8 46, i8* %arrayidx197, align 1
  %106 = load i32, i32* %rp, align 4
  %inc198 = add nsw i32 %106, 1
  store i32 %inc198, i32* %rp, align 4
  %idxprom199 = sext i32 %106 to i64
  %107 = load i8*, i8** %r_pat, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %107, i64 %idxprom199
  store i8 42, i8* %arrayidx200, align 1
  br label %sw.epilog.340

if.end.201:                                       ; preds = %sw.bb.189
  %108 = load i32, i32* %j, align 4
  %inc202 = add nsw i32 %108, 1
  store i32 %inc202, i32* %j, align 4
  %idxprom203 = sext i32 %108 to i64
  %109 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %109, i64 %idxprom203
  store i8 -7, i8* %arrayidx204, align 1
  br label %sw.epilog.340

sw.bb.205:                                        ; preds = %for.body.175
  %110 = load i32, i32* %j, align 4
  %inc206 = add nsw i32 %110, 1
  store i32 %inc206, i32* %j, align 4
  %idxprom207 = sext i32 %110 to i64
  %111 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %111, i64 %idxprom207
  store i8 -14, i8* %arrayidx208, align 1
  %112 = load i32, i32* %rp, align 4
  %inc209 = add nsw i32 %112, 1
  store i32 %inc209, i32* %rp, align 4
  %idxprom210 = sext i32 %112 to i64
  %113 = load i8*, i8** %r_pat, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %113, i64 %idxprom210
  store i8 40, i8* %arrayidx211, align 1
  br label %sw.epilog.340

sw.bb.212:                                        ; preds = %for.body.175
  %114 = load i32, i32* %j, align 4
  %inc213 = add nsw i32 %114, 1
  store i32 %inc213, i32* %j, align 4
  %idxprom214 = sext i32 %114 to i64
  %115 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %115, i64 %idxprom214
  store i8 -13, i8* %arrayidx215, align 1
  %116 = load i32, i32* %rp, align 4
  %inc216 = add nsw i32 %116, 1
  store i32 %inc216, i32* %rp, align 4
  %idxprom217 = sext i32 %116 to i64
  %117 = load i8*, i8** %r_pat, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %117, i64 %idxprom217
  store i8 41, i8* %arrayidx218, align 1
  br label %sw.epilog.340

sw.bb.219:                                        ; preds = %for.body.175
  %118 = load i32, i32* %j, align 4
  %inc220 = add nsw i32 %118, 1
  store i32 %inc220, i32* %j, align 4
  %idxprom221 = sext i32 %118 to i64
  %119 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %119, i64 %idxprom221
  store i8 -12, i8* %arrayidx222, align 1
  %120 = load i32, i32* %rp, align 4
  %inc223 = add nsw i32 %120, 1
  store i32 %inc223, i32* %rp, align 4
  %idxprom224 = sext i32 %120 to i64
  %121 = load i8*, i8** %r_pat, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %121, i64 %idxprom224
  store i8 91, i8* %arrayidx225, align 1
  store i32 1, i32* %IN_RANGE, align 4
  br label %sw.epilog.340

sw.bb.226:                                        ; preds = %for.body.175
  %122 = load i32, i32* %j, align 4
  %inc227 = add nsw i32 %122, 1
  store i32 %inc227, i32* %j, align 4
  %idxprom228 = sext i32 %122 to i64
  %123 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %123, i64 %idxprom228
  store i8 -11, i8* %arrayidx229, align 1
  %124 = load i32, i32* %rp, align 4
  %inc230 = add nsw i32 %124, 1
  store i32 %inc230, i32* %rp, align 4
  %idxprom231 = sext i32 %124 to i64
  %125 = load i8*, i8** %r_pat, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %125, i64 %idxprom231
  store i8 93, i8* %arrayidx232, align 1
  store i32 0, i32* %IN_RANGE, align 4
  br label %sw.epilog.340

sw.bb.233:                                        ; preds = %for.body.175
  %126 = load i32, i32* %j, align 4
  %inc234 = add nsw i32 %126, 1
  store i32 %inc234, i32* %j, align 4
  %idxprom235 = sext i32 %126 to i64
  %127 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %127, i64 %idxprom235
  store i8 -10, i8* %arrayidx236, align 1
  br label %sw.epilog.340

sw.bb.237:                                        ; preds = %for.body.175
  %128 = load i32, i32* %j, align 4
  %inc238 = add nsw i32 %128, 1
  store i32 %inc238, i32* %j, align 4
  %idxprom239 = sext i32 %128 to i64
  %129 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %129, i64 %idxprom239
  store i8 -9, i8* %arrayidx240, align 1
  br label %sw.epilog.340

sw.bb.241:                                        ; preds = %for.body.175
  %130 = load i32, i32* %i, align 4
  %sub242 = sub nsw i32 %130, 1
  %idxprom243 = sext i32 %sub242 to i64
  %arrayidx244 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom243
  %131 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %131 to i32
  %cmp246 = icmp eq i32 %conv245, 91
  br i1 %cmp246, label %if.then.248, label %if.else.252

if.then.248:                                      ; preds = %sw.bb.241
  %132 = load i32, i32* %j, align 4
  %inc249 = add nsw i32 %132, 1
  store i32 %inc249, i32* %j, align 4
  %idxprom250 = sext i32 %132 to i64
  %133 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %133, i64 %idxprom250
  store i8 -8, i8* %arrayidx251, align 1
  br label %if.end.256

if.else.252:                                      ; preds = %sw.bb.241
  %134 = load i32, i32* %j, align 4
  %inc253 = add nsw i32 %134, 1
  store i32 %inc253, i32* %j, align 4
  %idxprom254 = sext i32 %134 to i64
  %135 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %135, i64 %idxprom254
  store i8 10, i8* %arrayidx255, align 1
  br label %if.end.256

if.end.256:                                       ; preds = %if.else.252, %if.then.248
  %136 = load i32, i32* %rp, align 4
  %inc257 = add nsw i32 %136, 1
  store i32 %inc257, i32* %rp, align 4
  %idxprom258 = sext i32 %136 to i64
  %137 = load i8*, i8** %r_pat, align 8
  %arrayidx259 = getelementptr inbounds i8, i8* %137, i64 %idxprom258
  store i8 94, i8* %arrayidx259, align 1
  br label %sw.epilog.340

sw.bb.260:                                        ; preds = %for.body.175
  %138 = load i32, i32* %j, align 4
  %inc261 = add nsw i32 %138, 1
  store i32 %inc261, i32* %j, align 4
  %idxprom262 = sext i32 %138 to i64
  %139 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %139, i64 %idxprom262
  store i8 10, i8* %arrayidx263, align 1
  %140 = load i32, i32* %rp, align 4
  %inc264 = add nsw i32 %140, 1
  store i32 %inc264, i32* %rp, align 4
  %idxprom265 = sext i32 %140 to i64
  %141 = load i8*, i8** %r_pat, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %141, i64 %idxprom265
  store i8 36, i8* %arrayidx266, align 1
  br label %sw.epilog.340

sw.bb.267:                                        ; preds = %for.body.175
  %142 = load i32, i32* %j, align 4
  %inc268 = add nsw i32 %142, 1
  store i32 %inc268, i32* %j, align 4
  %idxprom269 = sext i32 %142 to i64
  %143 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %143, i64 %idxprom269
  store i8 -18, i8* %arrayidx270, align 1
  %144 = load i32, i32* %rp, align 4
  %inc271 = add nsw i32 %144, 1
  store i32 %inc271, i32* %rp, align 4
  %idxprom272 = sext i32 %144 to i64
  %145 = load i8*, i8** %r_pat, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %145, i64 %idxprom272
  store i8 46, i8* %arrayidx273, align 1
  br label %sw.epilog.340

sw.bb.274:                                        ; preds = %for.body.175
  %146 = load i32, i32* %j, align 4
  %inc275 = add nsw i32 %146, 1
  store i32 %inc275, i32* %j, align 4
  %idxprom276 = sext i32 %146 to i64
  %147 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %147, i64 %idxprom276
  store i8 -3, i8* %arrayidx277, align 1
  %148 = load i32, i32* %rp, align 4
  %inc278 = add nsw i32 %148, 1
  store i32 %inc278, i32* %rp, align 4
  %idxprom279 = sext i32 %148 to i64
  %149 = load i8*, i8** %r_pat, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %149, i64 %idxprom279
  store i8 42, i8* %arrayidx280, align 1
  br label %sw.epilog.340

sw.bb.281:                                        ; preds = %for.body.175
  %150 = load i32, i32* %j, align 4
  %inc282 = add nsw i32 %150, 1
  store i32 %inc282, i32* %j, align 4
  %idxprom283 = sext i32 %150 to i64
  %151 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx284 = getelementptr inbounds i8, i8* %151, i64 %idxprom283
  store i8 -6, i8* %arrayidx284, align 1
  %152 = load i32, i32* %rp, align 4
  %inc285 = add nsw i32 %152, 1
  store i32 %inc285, i32* %rp, align 4
  %idxprom286 = sext i32 %152 to i64
  %153 = load i8*, i8** %r_pat, align 8
  %arrayidx287 = getelementptr inbounds i8, i8* %153, i64 %idxprom286
  store i8 124, i8* %arrayidx287, align 1
  br label %sw.epilog.340

sw.bb.288:                                        ; preds = %for.body.175
  %154 = load i32, i32* %j, align 4
  %inc289 = add nsw i32 %154, 1
  store i32 %inc289, i32* %j, align 4
  %idxprom290 = sext i32 %154 to i64
  %155 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %155, i64 %idxprom290
  store i8 -5, i8* %arrayidx291, align 1
  store i32 1, i32* @RE_ERR, align 4
  br label %sw.epilog.340

sw.bb.292:                                        ; preds = %for.body.175
  %156 = load i32, i32* %ANDON, align 4
  %tobool293 = icmp ne i32 %156, 0
  br i1 %tobool293, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %sw.bb.292
  store i32 1, i32* @RE_ERR, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.294, %sw.bb.292
  %157 = load i32, i32* %j, align 4
  %inc296 = add nsw i32 %157, 1
  store i32 %inc296, i32* %j, align 4
  %idxprom297 = sext i32 %157 to i64
  %158 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %158, i64 %idxprom297
  store i8 -4, i8* %arrayidx298, align 1
  store i32 1, i32* %ANDON, align 4
  br label %sw.epilog.340

sw.bb.299:                                        ; preds = %for.body.175
  %159 = load i32, i32* %IN_RANGE, align 4
  %tobool300 = icmp ne i32 %159, 0
  br i1 %tobool300, label %if.then.301, label %if.else.308

if.then.301:                                      ; preds = %sw.bb.299
  %160 = load i32, i32* %j, align 4
  %inc302 = add nsw i32 %160, 1
  store i32 %inc302, i32* %j, align 4
  %idxprom303 = sext i32 %160 to i64
  %161 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx304 = getelementptr inbounds i8, i8* %161, i64 %idxprom303
  store i8 -19, i8* %arrayidx304, align 1
  %162 = load i32, i32* %rp, align 4
  %inc305 = add nsw i32 %162, 1
  store i32 %inc305, i32* %rp, align 4
  %idxprom306 = sext i32 %162 to i64
  %163 = load i8*, i8** %r_pat, align 8
  %arrayidx307 = getelementptr inbounds i8, i8* %163, i64 %idxprom306
  store i8 45, i8* %arrayidx307, align 1
  br label %if.end.319

if.else.308:                                      ; preds = %sw.bb.299
  %164 = load i32, i32* %i, align 4
  %idxprom309 = sext i32 %164 to i64
  %arrayidx310 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom309
  %165 = load i8, i8* %arrayidx310, align 1
  %166 = load i32, i32* %j, align 4
  %inc311 = add nsw i32 %166, 1
  store i32 %inc311, i32* %j, align 4
  %idxprom312 = sext i32 %166 to i64
  %167 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %167, i64 %idxprom312
  store i8 %165, i8* %arrayidx313, align 1
  %168 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %168 to i64
  %arrayidx315 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom314
  %169 = load i8, i8* %arrayidx315, align 1
  %170 = load i32, i32* %rp, align 4
  %inc316 = add nsw i32 %170, 1
  store i32 %inc316, i32* %rp, align 4
  %idxprom317 = sext i32 %170 to i64
  %171 = load i8*, i8** %r_pat, align 8
  %arrayidx318 = getelementptr inbounds i8, i8* %171, i64 %idxprom317
  store i8 %169, i8* %arrayidx318, align 1
  br label %if.end.319

if.end.319:                                       ; preds = %if.else.308, %if.then.301
  br label %sw.epilog.340

sw.bb.320:                                        ; preds = %for.body.175
  %172 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %172 to i64
  %arrayidx322 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom321
  %173 = load i8, i8* %arrayidx322, align 1
  %174 = load i32, i32* %j, align 4
  %inc323 = add nsw i32 %174, 1
  store i32 %inc323, i32* %j, align 4
  %idxprom324 = sext i32 %174 to i64
  %175 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx325 = getelementptr inbounds i8, i8* %175, i64 %idxprom324
  store i8 %173, i8* %arrayidx325, align 1
  %176 = load i32, i32* %rp, align 4
  %inc326 = add nsw i32 %176, 1
  store i32 %inc326, i32* %rp, align 4
  %idxprom327 = sext i32 %176 to i64
  %177 = load i8*, i8** %r_pat, align 8
  %arrayidx328 = getelementptr inbounds i8, i8* %177, i64 %idxprom327
  store i8 78, i8* %arrayidx328, align 1
  br label %sw.epilog.340

sw.default.329:                                   ; preds = %for.body.175
  %178 = load i32, i32* %i, align 4
  %idxprom330 = sext i32 %178 to i64
  %arrayidx331 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom330
  %179 = load i8, i8* %arrayidx331, align 1
  %180 = load i32, i32* %j, align 4
  %inc332 = add nsw i32 %180, 1
  store i32 %inc332, i32* %j, align 4
  %idxprom333 = sext i32 %180 to i64
  %181 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx334 = getelementptr inbounds i8, i8* %181, i64 %idxprom333
  store i8 %179, i8* %arrayidx334, align 1
  %182 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %182 to i64
  %arrayidx336 = getelementptr inbounds [1024 x i8], [1024 x i8]* %temp, i32 0, i64 %idxprom335
  %183 = load i8, i8* %arrayidx336, align 1
  %184 = load i32, i32* %rp, align 4
  %inc337 = add nsw i32 %184, 1
  store i32 %inc337, i32* %rp, align 4
  %idxprom338 = sext i32 %184 to i64
  %185 = load i8*, i8** %r_pat, align 8
  %arrayidx339 = getelementptr inbounds i8, i8* %185, i64 %idxprom338
  store i8 %183, i8* %arrayidx339, align 1
  br label %sw.epilog.340

sw.epilog.340:                                    ; preds = %sw.default.329, %sw.bb.320, %if.end.319, %if.end.295, %sw.bb.288, %sw.bb.281, %sw.bb.274, %sw.bb.267, %sw.bb.260, %if.end.256, %sw.bb.237, %sw.bb.233, %sw.bb.226, %sw.bb.219, %sw.bb.212, %sw.bb.205, %if.end.201, %if.then.191, %sw.bb.179
  br label %for.inc.341

for.inc.341:                                      ; preds = %sw.epilog.340
  %186 = load i32, i32* %i, align 4
  %inc342 = add nsw i32 %186, 1
  store i32 %inc342, i32* %i, align 4
  br label %for.cond.172

for.end.343:                                      ; preds = %for.cond.172
  %187 = load i32, i32* @REGEX, align 4
  %tobool344 = icmp ne i32 %187, 0
  br i1 %tobool344, label %if.then.345, label %if.end.355

if.then.345:                                      ; preds = %for.end.343
  %188 = load i32, i32* %rp, align 4
  %inc346 = add nsw i32 %188, 1
  store i32 %inc346, i32* %rp, align 4
  %idxprom347 = sext i32 %188 to i64
  %189 = load i8*, i8** %r_pat, align 8
  %arrayidx348 = getelementptr inbounds i8, i8* %189, i64 %idxprom347
  store i8 41, i8* %arrayidx348, align 1
  %190 = load i32, i32* %rp, align 4
  %inc349 = add nsw i32 %190, 1
  store i32 %inc349, i32* %rp, align 4
  %idxprom350 = sext i32 %190 to i64
  %191 = load i8*, i8** %r_pat, align 8
  %arrayidx351 = getelementptr inbounds i8, i8* %191, i64 %idxprom350
  store i8 46, i8* %arrayidx351, align 1
  %192 = load i32, i32* %j, align 4
  %inc352 = add nsw i32 %192, 1
  store i32 %inc352, i32* %j, align 4
  %idxprom353 = sext i32 %192 to i64
  %193 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx354 = getelementptr inbounds i8, i8* %193, i64 %idxprom353
  store i8 -18, i8* %arrayidx354, align 1
  store i32 1, i32* @TAIL, align 4
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.345, %for.end.343
  %194 = load i32, i32* %j, align 4
  %idxprom356 = sext i32 %194 to i64
  %195 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx357 = getelementptr inbounds i8, i8* %195, i64 %idxprom356
  store i8 0, i8* %arrayidx357, align 1
  %196 = load i32, i32* %j, align 4
  store i32 %196, i32* %m, align 4
  %197 = load i32, i32* %rp, align 4
  %idxprom358 = sext i32 %197 to i64
  %198 = load i8*, i8** %r_pat, align 8
  %arrayidx359 = getelementptr inbounds i8, i8* %198, i64 %idxprom358
  store i8 0, i8* %arrayidx359, align 1
  %199 = load i32, i32* @REGEX, align 4
  %tobool360 = icmp ne i32 %199, 0
  br i1 %tobool360, label %if.then.361, label %if.end.389

if.then.361:                                      ; preds = %if.end.355
  %200 = load i32, i32* @DELIMITER, align 4
  %tobool362 = icmp ne i32 %200, 0
  br i1 %tobool362, label %if.then.365, label %lor.lhs.false.363

lor.lhs.false.363:                                ; preds = %if.then.361
  %201 = load i32, i32* @WORDBOUND, align 4
  %tobool364 = icmp ne i32 %201, 0
  br i1 %tobool364, label %if.then.365, label %if.end.367

if.then.365:                                      ; preds = %lor.lhs.false.363, %if.then.361
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call366 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.367:                                       ; preds = %lor.lhs.false.363
  %203 = load i32, i32* @RE_ERR, align 4
  %tobool368 = icmp ne i32 %203, 0
  br i1 %tobool368, label %if.then.369, label %if.end.371

if.then.369:                                      ; preds = %if.end.367
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call370 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.371:                                       ; preds = %if.end.367
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.371
  %205 = load i8*, i8** %Pattern.addr, align 8
  %206 = load i8, i8* %205, align 1
  %conv372 = zext i8 %206 to i32
  %cmp373 = icmp ne i32 %conv372, 238
  br i1 %cmp373, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %207 = load i32, i32* %m, align 4
  %dec = add nsw i32 %207, -1
  store i32 %dec, i32* %m, align 4
  %cmp375 = icmp sgt i32 %207, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %208 = phi i1 [ false, %while.cond ], [ %cmp375, %land.rhs ]
  br i1 %208, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %209 = load i8*, i8** %Pattern.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %incdec.ptr, i8** %Pattern.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %210 = load i8*, i8** %r_pat, align 8
  %call377 = call i32 @init(i8* %210, [32 x i32]* getelementptr inbounds ([32 x [32 x i32]], [32 x [32 x i32]]* @table, i32 0, i32 0))
  store i32 %call377, i32* %num_pos, align 4
  %211 = load i32, i32* %num_pos, align 4
  %cmp378 = icmp sle i32 %211, 0
  br i1 %cmp378, label %if.then.380, label %if.end.382

if.then.380:                                      ; preds = %while.end
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.382:                                       ; preds = %while.end
  %213 = load i32, i32* %num_pos, align 4
  %cmp383 = icmp sgt i32 %213, 30
  br i1 %cmp383, label %if.then.385, label %if.end.387

if.then.385:                                      ; preds = %if.end.382
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call386 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.387:                                       ; preds = %if.end.382
  %215 = load i8*, i8** %old_pat, align 8
  %216 = load i8*, i8** %Pattern.addr, align 8
  %call388 = call i8* @strcpy(i8* %215, i8* %216) #6
  br label %return

if.end.389:                                       ; preds = %if.end.355
  br label %return

return:                                           ; preds = %if.end.389, %if.end.387
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @init(i8*, [32 x i32]*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
