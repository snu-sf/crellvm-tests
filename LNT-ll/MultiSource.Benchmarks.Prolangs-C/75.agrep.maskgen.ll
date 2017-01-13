; ModuleID = './MultiSource.Benchmarks.Prolangs-C/75.agrep.maskgen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.term = type { i32, [32 x i8] }

@endposition = external global i32, align 4
@NO_ERR_MASK = external global i32, align 4
@wildmask = external global i32, align 4
@NOUPPER = external global i32, align 4
@REGEX = external global i32, align 4
@Bit = external global [0 x i32], align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '<', '>'\0A\00", align 1
@Progname = external global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '[', ']'\0A\00", align 1
@AND = external global i32, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"illegal pattern \0A\00", align 1
@D_length = external global i32, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: pattern too long\0A\00", align 1
@Init = external global [0 x i32], align 4
@Init1 = external global i32, align 4
@D_endpos = external global i32, align 4
@Mask = external global [0 x i32], align 4

; Function Attrs: nounwind uwtable
define i32 @maskgen(i8* %Pattern, i32 %D) #0 {
entry:
  %Pattern.addr = alloca i8*, align 8
  %D.addr = alloca i32, align 4
  %position = alloca [42 x %struct.term], align 16
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %M = alloca i32, align 4
  %OR = alloca i32, align 4
  %EVEN = alloca i32, align 4
  %base = alloca i32, align 4
  %No_error = alloca i32, align 4
  store i8* %Pattern, i8** %Pattern.addr, align 8
  store i32 %D, i32* %D.addr, align 4
  store i32 0, i32* %OR, align 4
  store i32 0, i32* %EVEN, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom
  %class1 = getelementptr inbounds %struct.term, %struct.term* %arrayidx, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [32 x i8], [32 x i8]* %class1, i32 0, i64 0
  store i8 0, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.7, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 32
  br i1 %cmp3, label %for.body.4, label %for.end.9

for.body.4:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom5
  %flag = getelementptr inbounds %struct.term, %struct.term* %arrayidx6, i32 0, i32 0
  store i32 0, i32* %flag, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.4
  %5 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %5, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond.2

for.end.9:                                        ; preds = %for.cond.2
  store i32 0, i32* @endposition, align 4
  store i32 0, i32* @NO_ERR_MASK, align 4
  store i32 0, i32* @wildmask, align 4
  store i32 0, i32* %No_error, align 4
  %6 = load i8*, i8** %Pattern.addr, align 8
  %call = call i64 @strlen(i8* %6) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %M, align 4
  %7 = load i32, i32* @NOUPPER, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.44

if.then:                                          ; preds = %for.end.9
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.41, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %M, align 4
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body.13, label %for.end.43

for.body.13:                                      ; preds = %for.cond.10
  %10 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %10 to i64
  %11 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %idxprom14
  %12 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %12 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %call18 = call i16** @__ctype_b_loc() #7
  %13 = load i16*, i16** %call18, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %13, i64 %idxprom17
  %14 = load i16, i16* %arrayidx19, align 2
  %conv20 = zext i16 %14 to i32
  %and = and i32 %conv20, 1024
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.then.22, label %if.end.40

if.then.22:                                       ; preds = %for.body.13
  %15 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %15 to i64
  %16 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %16, i64 %idxprom23
  %17 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %17 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %call27 = call i16** @__ctype_b_loc() #7
  %18 = load i16*, i16** %call27, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %18, i64 %idxprom26
  %19 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %19 to i32
  %and30 = and i32 %conv29, 256
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then.22
  %20 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %20 to i64
  %21 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %21, i64 %idxprom33
  %22 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %22 to i32
  %call36 = call i32 @tolower(i32 %conv35) #8
  %conv37 = trunc i32 %call36 to i8
  %23 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %23 to i64
  %24 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %24, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then.22
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %for.body.13
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %25 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %25, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.10

for.end.43:                                       ; preds = %for.cond.10
  br label %if.end.44

if.end.44:                                        ; preds = %for.end.43, %for.end.9
  store i32 0, i32* %i, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.310, %if.end.44
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %M, align 4
  %cmp46 = icmp slt i32 %26, %27
  br i1 %cmp46, label %for.body.48, label %for.end.312

for.body.48:                                      ; preds = %for.cond.45
  %28 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %28 to i64
  %29 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %29, i64 %idxprom49
  %30 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %30 to i32
  switch i32 %conv51, label %sw.default [
    i32 249, label %sw.bb
    i32 253, label %sw.bb.70
    i32 250, label %sw.bb.71
    i32 242, label %sw.bb.72
    i32 243, label %sw.bb.73
    i32 246, label %sw.bb.74
    i32 247, label %sw.bb.76
    i32 244, label %sw.bb.82
    i32 245, label %sw.bb.151
    i32 251, label %sw.bb.153
    i32 252, label %sw.bb.172
    i32 10, label %sw.bb.197
    i32 241, label %sw.bb.214
    i32 239, label %sw.bb.255
  ]

sw.bb:                                            ; preds = %for.body.48
  %31 = load i32, i32* @REGEX, align 4
  %tobool52 = icmp ne i32 %31, 0
  br i1 %tobool52, label %if.then.53, label %if.end.67

if.then.53:                                       ; preds = %sw.bb
  %32 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %32 to i64
  %arrayidx55 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom54
  %class156 = getelementptr inbounds %struct.term, %struct.term* %arrayidx55, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [32 x i8], [32 x i8]* %class156, i32 0, i64 0
  store i8 46, i8* %arrayidx57, align 1
  %33 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %33 to i64
  %arrayidx59 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom58
  %class160 = getelementptr inbounds %struct.term, %struct.term* %arrayidx59, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [32 x i8], [32 x i8]* %class160, i32 0, i64 1
  store i8 46, i8* %arrayidx61, align 1
  %34 = load i32, i32* %j, align 4
  %inc62 = add nsw i32 %34, 1
  store i32 %inc62, i32* %j, align 4
  %idxprom63 = sext i32 %34 to i64
  %arrayidx64 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom63
  %class165 = getelementptr inbounds %struct.term, %struct.term* %arrayidx64, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [32 x i8], [32 x i8]* %class165, i32 0, i64 2
  store i8 0, i8* %arrayidx66, align 1
  br label %sw.epilog

if.end.67:                                        ; preds = %sw.bb
  %35 = load i32, i32* @wildmask, align 4
  %36 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %36, 1
  %idxprom68 = sext i32 %sub to i64
  %arrayidx69 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom68
  %37 = load i32, i32* %arrayidx69, align 4
  %or = or i32 %35, %37
  store i32 %or, i32* @wildmask, align 4
  br label %sw.epilog

sw.bb.70:                                         ; preds = %for.body.48
  br label %sw.epilog

sw.bb.71:                                         ; preds = %for.body.48
  br label %sw.epilog

sw.bb.72:                                         ; preds = %for.body.48
  br label %sw.epilog

sw.bb.73:                                         ; preds = %for.body.48
  br label %sw.epilog

sw.bb.74:                                         ; preds = %for.body.48
  store i32 1, i32* %No_error, align 4
  %38 = load i32, i32* %EVEN, align 4
  %inc75 = add nsw i32 %38, 1
  store i32 %inc75, i32* %EVEN, align 4
  br label %sw.epilog

sw.bb.76:                                         ; preds = %for.body.48
  store i32 0, i32* %No_error, align 4
  %39 = load i32, i32* %EVEN, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %EVEN, align 4
  %40 = load i32, i32* %EVEN, align 4
  %cmp77 = icmp slt i32 %40, 0
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %sw.bb.76
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end.81:                                        ; preds = %sw.bb.76
  br label %sw.epilog

sw.bb.82:                                         ; preds = %for.body.48
  %42 = load i32, i32* %No_error, align 4
  %cmp83 = icmp eq i32 %42, 1
  br i1 %cmp83, label %if.then.85, label %if.end.89

if.then.85:                                       ; preds = %sw.bb.82
  %43 = load i32, i32* @NO_ERR_MASK, align 4
  %44 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %44 to i64
  %arrayidx87 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom86
  %45 = load i32, i32* %arrayidx87, align 4
  %or88 = or i32 %43, %45
  store i32 %or88, i32* @NO_ERR_MASK, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.85, %sw.bb.82
  %46 = load i32, i32* %i, align 4
  %add = add nsw i32 %46, 1
  store i32 %add, i32* %i, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %47 to i64
  %48 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %48, i64 %idxprom90
  %49 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %49 to i32
  %cmp93 = icmp eq i32 %conv92, 248
  br i1 %cmp93, label %if.then.95, label %if.end.100

if.then.95:                                       ; preds = %if.end.89
  %50 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %50 to i64
  %arrayidx97 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom96
  %flag98 = getelementptr inbounds %struct.term, %struct.term* %arrayidx97, i32 0, i32 0
  store i32 1, i32* %flag98, align 4
  %51 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %51, 1
  store i32 %inc99, i32* %i, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %if.end.89
  store i32 0, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.139, %if.end.100
  %52 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %52 to i64
  %53 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %53, i64 %idxprom101
  %54 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %54 to i32
  %cmp104 = icmp ne i32 %conv103, 245
  br i1 %cmp104, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %M, align 4
  %cmp106 = icmp slt i32 %55, %56
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %57 = phi i1 [ false, %while.cond ], [ %cmp106, %land.rhs ]
  br i1 %57, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %58 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %58 to i64
  %59 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %59, i64 %idxprom108
  %60 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %60 to i32
  %cmp111 = icmp eq i32 %conv110, 237
  br i1 %cmp111, label %if.then.113, label %if.else

if.then.113:                                      ; preds = %while.body
  %61 = load i32, i32* %i, align 4
  %add114 = add nsw i32 %61, 1
  %idxprom115 = sext i32 %add114 to i64
  %62 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %62, i64 %idxprom115
  %63 = load i8, i8* %arrayidx116, align 1
  %64 = load i32, i32* %k, align 4
  %sub117 = sub nsw i32 %64, 1
  %idxprom118 = sext i32 %sub117 to i64
  %65 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %65 to i64
  %arrayidx120 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom119
  %class1121 = getelementptr inbounds %struct.term, %struct.term* %arrayidx120, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [32 x i8], [32 x i8]* %class1121, i32 0, i64 %idxprom118
  store i8 %63, i8* %arrayidx122, align 1
  %66 = load i32, i32* %i, align 4
  %add123 = add nsw i32 %66, 2
  store i32 %add123, i32* %i, align 4
  br label %if.end.139

if.else:                                          ; preds = %while.body
  %67 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %67 to i64
  %68 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %68, i64 %idxprom124
  %69 = load i8, i8* %arrayidx125, align 1
  %70 = load i32, i32* %k, align 4
  %add126 = add nsw i32 %70, 1
  %idxprom127 = sext i32 %add126 to i64
  %71 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %71 to i64
  %arrayidx129 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom128
  %class1130 = getelementptr inbounds %struct.term, %struct.term* %arrayidx129, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [32 x i8], [32 x i8]* %class1130, i32 0, i64 %idxprom127
  store i8 %69, i8* %arrayidx131, align 1
  %72 = load i32, i32* %k, align 4
  %idxprom132 = sext i32 %72 to i64
  %73 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %73 to i64
  %arrayidx134 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom133
  %class1135 = getelementptr inbounds %struct.term, %struct.term* %arrayidx134, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [32 x i8], [32 x i8]* %class1135, i32 0, i64 %idxprom132
  store i8 %69, i8* %arrayidx136, align 1
  %74 = load i32, i32* %k, align 4
  %add137 = add nsw i32 %74, 2
  store i32 %add137, i32* %k, align 4
  %75 = load i32, i32* %i, align 4
  %inc138 = add nsw i32 %75, 1
  store i32 %inc138, i32* %i, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.else, %if.then.113
  br label %while.cond

while.end:                                        ; preds = %land.end
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %M, align 4
  %cmp140 = icmp eq i32 %76, %77
  br i1 %cmp140, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %while.end
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end.144:                                       ; preds = %while.end
  %79 = load i32, i32* %k, align 4
  %idxprom145 = sext i32 %79 to i64
  %80 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %80 to i64
  %arrayidx147 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom146
  %class1148 = getelementptr inbounds %struct.term, %struct.term* %arrayidx147, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [32 x i8], [32 x i8]* %class1148, i32 0, i64 %idxprom145
  store i8 0, i8* %arrayidx149, align 1
  %81 = load i32, i32* %j, align 4
  %inc150 = add nsw i32 %81, 1
  store i32 %inc150, i32* %j, align 4
  br label %sw.epilog

sw.bb.151:                                        ; preds = %for.body.48
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

sw.bb.153:                                        ; preds = %for.body.48
  %83 = load i32, i32* @REGEX, align 4
  %cmp154 = icmp eq i32 %83, 1
  br i1 %cmp154, label %if.then.158, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.153
  %84 = load i32, i32* @AND, align 4
  %cmp156 = icmp eq i32 %84, 1
  br i1 %cmp156, label %if.then.158, label %if.end.160

if.then.158:                                      ; preds = %lor.lhs.false, %sw.bb.153
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end.160:                                       ; preds = %lor.lhs.false
  store i32 1, i32* %OR, align 4
  %86 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %86 to i64
  %arrayidx162 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom161
  %flag163 = getelementptr inbounds %struct.term, %struct.term* %arrayidx162, i32 0, i32 0
  store i32 2, i32* %flag163, align 4
  %87 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %87 to i64
  %arrayidx165 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom164
  %class1166 = getelementptr inbounds %struct.term, %struct.term* %arrayidx165, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [32 x i8], [32 x i8]* %class1166, i32 0, i64 0
  store i8 0, i8* %arrayidx167, align 1
  %88 = load i32, i32* @endposition, align 4
  %89 = load i32, i32* %j, align 4
  %inc168 = add nsw i32 %89, 1
  store i32 %inc168, i32* %j, align 4
  %idxprom169 = sext i32 %89 to i64
  %arrayidx170 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom169
  %90 = load i32, i32* %arrayidx170, align 4
  %or171 = or i32 %88, %90
  store i32 %or171, i32* @endposition, align 4
  br label %sw.epilog

sw.bb.172:                                        ; preds = %for.body.48
  %91 = load i32, i32* %j, align 4
  %idxprom173 = sext i32 %91 to i64
  %arrayidx174 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom173
  %flag175 = getelementptr inbounds %struct.term, %struct.term* %arrayidx174, i32 0, i32 0
  store i32 2, i32* %flag175, align 4
  %92 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %92 to i64
  %arrayidx177 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom176
  %class1178 = getelementptr inbounds %struct.term, %struct.term* %arrayidx177, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [32 x i8], [32 x i8]* %class1178, i32 0, i64 0
  store i8 0, i8* %arrayidx179, align 1
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* @D_length, align 4
  %cmp180 = icmp sgt i32 %93, %94
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %sw.bb.172
  store i32 1, i32* @AND, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %sw.bb.172
  %95 = load i32, i32* %OR, align 4
  %tobool184 = icmp ne i32 %95, 0
  br i1 %tobool184, label %if.then.190, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %if.end.183
  %96 = load i32, i32* @REGEX, align 4
  %cmp186 = icmp eq i32 %96, 1
  br i1 %cmp186, label %land.lhs.true, label %if.end.192

land.lhs.true:                                    ; preds = %lor.lhs.false.185
  %97 = load i32, i32* %j, align 4
  %98 = load i32, i32* @D_length, align 4
  %cmp188 = icmp sgt i32 %97, %98
  br i1 %cmp188, label %if.then.190, label %if.end.192

if.then.190:                                      ; preds = %land.lhs.true, %if.end.183
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end.192:                                       ; preds = %land.lhs.true, %lor.lhs.false.185
  %100 = load i32, i32* @endposition, align 4
  %101 = load i32, i32* %j, align 4
  %inc193 = add nsw i32 %101, 1
  store i32 %inc193, i32* %j, align 4
  %idxprom194 = sext i32 %101 to i64
  %arrayidx195 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom194
  %102 = load i32, i32* %arrayidx195, align 4
  %or196 = or i32 %100, %102
  store i32 %or196, i32* @endposition, align 4
  br label %sw.epilog

sw.bb.197:                                        ; preds = %for.body.48
  %103 = load i32, i32* @NO_ERR_MASK, align 4
  %104 = load i32, i32* %j, align 4
  %idxprom198 = sext i32 %104 to i64
  %arrayidx199 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom198
  %105 = load i32, i32* %arrayidx199, align 4
  %or200 = or i32 %103, %105
  store i32 %or200, i32* @NO_ERR_MASK, align 4
  %106 = load i32, i32* %j, align 4
  %idxprom201 = sext i32 %106 to i64
  %arrayidx202 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom201
  %class1203 = getelementptr inbounds %struct.term, %struct.term* %arrayidx202, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [32 x i8], [32 x i8]* %class1203, i32 0, i64 1
  store i8 10, i8* %arrayidx204, align 1
  %107 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %107 to i64
  %arrayidx206 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom205
  %class1207 = getelementptr inbounds %struct.term, %struct.term* %arrayidx206, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [32 x i8], [32 x i8]* %class1207, i32 0, i64 0
  store i8 10, i8* %arrayidx208, align 1
  %108 = load i32, i32* %j, align 4
  %inc209 = add nsw i32 %108, 1
  store i32 %inc209, i32* %j, align 4
  %idxprom210 = sext i32 %108 to i64
  %arrayidx211 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom210
  %class1212 = getelementptr inbounds %struct.term, %struct.term* %arrayidx211, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [32 x i8], [32 x i8]* %class1212, i32 0, i64 2
  store i8 0, i8* %arrayidx213, align 1
  br label %sw.epilog

sw.bb.214:                                        ; preds = %for.body.48
  %109 = load i32, i32* @NO_ERR_MASK, align 4
  %110 = load i32, i32* %j, align 4
  %idxprom215 = sext i32 %110 to i64
  %arrayidx216 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom215
  %111 = load i32, i32* %arrayidx216, align 4
  %or217 = or i32 %109, %111
  store i32 %or217, i32* @NO_ERR_MASK, align 4
  %112 = load i32, i32* %j, align 4
  %idxprom218 = sext i32 %112 to i64
  %arrayidx219 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom218
  %class1220 = getelementptr inbounds %struct.term, %struct.term* %arrayidx219, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [32 x i8], [32 x i8]* %class1220, i32 0, i64 0
  store i8 1, i8* %arrayidx221, align 1
  %113 = load i32, i32* %j, align 4
  %idxprom222 = sext i32 %113 to i64
  %arrayidx223 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom222
  %class1224 = getelementptr inbounds %struct.term, %struct.term* %arrayidx223, i32 0, i32 1
  %arrayidx225 = getelementptr inbounds [32 x i8], [32 x i8]* %class1224, i32 0, i64 1
  store i8 47, i8* %arrayidx225, align 1
  %114 = load i32, i32* %j, align 4
  %idxprom226 = sext i32 %114 to i64
  %arrayidx227 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom226
  %class1228 = getelementptr inbounds %struct.term, %struct.term* %arrayidx227, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [32 x i8], [32 x i8]* %class1228, i32 0, i64 2
  store i8 58, i8* %arrayidx229, align 1
  %115 = load i32, i32* %j, align 4
  %idxprom230 = sext i32 %115 to i64
  %arrayidx231 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom230
  %class1232 = getelementptr inbounds %struct.term, %struct.term* %arrayidx231, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [32 x i8], [32 x i8]* %class1232, i32 0, i64 3
  store i8 64, i8* %arrayidx233, align 1
  %116 = load i32, i32* %j, align 4
  %idxprom234 = sext i32 %116 to i64
  %arrayidx235 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom234
  %class1236 = getelementptr inbounds %struct.term, %struct.term* %arrayidx235, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [32 x i8], [32 x i8]* %class1236, i32 0, i64 4
  store i8 91, i8* %arrayidx237, align 1
  %117 = load i32, i32* %j, align 4
  %idxprom238 = sext i32 %117 to i64
  %arrayidx239 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom238
  %class1240 = getelementptr inbounds %struct.term, %struct.term* %arrayidx239, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [32 x i8], [32 x i8]* %class1240, i32 0, i64 5
  store i8 96, i8* %arrayidx241, align 1
  %118 = load i32, i32* %j, align 4
  %idxprom242 = sext i32 %118 to i64
  %arrayidx243 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom242
  %class1244 = getelementptr inbounds %struct.term, %struct.term* %arrayidx243, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [32 x i8], [32 x i8]* %class1244, i32 0, i64 6
  store i8 123, i8* %arrayidx245, align 1
  %119 = load i32, i32* %j, align 4
  %idxprom246 = sext i32 %119 to i64
  %arrayidx247 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom246
  %class1248 = getelementptr inbounds %struct.term, %struct.term* %arrayidx247, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [32 x i8], [32 x i8]* %class1248, i32 0, i64 7
  store i8 127, i8* %arrayidx249, align 1
  %120 = load i32, i32* %j, align 4
  %inc250 = add nsw i32 %120, 1
  store i32 %inc250, i32* %j, align 4
  %idxprom251 = sext i32 %120 to i64
  %arrayidx252 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom251
  %class1253 = getelementptr inbounds %struct.term, %struct.term* %arrayidx252, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [32 x i8], [32 x i8]* %class1253, i32 0, i64 8
  store i8 0, i8* %arrayidx254, align 1
  br label %sw.epilog

sw.bb.255:                                        ; preds = %for.body.48
  %121 = load i32, i32* %j, align 4
  %idxprom256 = sext i32 %121 to i64
  %arrayidx257 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom256
  %122 = load i32, i32* %arrayidx257, align 4
  %123 = load i32, i32* @NO_ERR_MASK, align 4
  %or258 = or i32 %123, %122
  store i32 %or258, i32* @NO_ERR_MASK, align 4
  %124 = load i32, i32* %j, align 4
  %idxprom259 = sext i32 %124 to i64
  %arrayidx260 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom259
  %class1261 = getelementptr inbounds %struct.term, %struct.term* %arrayidx260, i32 0, i32 1
  %arrayidx262 = getelementptr inbounds [32 x i8], [32 x i8]* %class1261, i32 0, i64 1
  store i8 10, i8* %arrayidx262, align 1
  %125 = load i32, i32* %j, align 4
  %idxprom263 = sext i32 %125 to i64
  %arrayidx264 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom263
  %class1265 = getelementptr inbounds %struct.term, %struct.term* %arrayidx264, i32 0, i32 1
  %arrayidx266 = getelementptr inbounds [32 x i8], [32 x i8]* %class1265, i32 0, i64 0
  store i8 10, i8* %arrayidx266, align 1
  %126 = load i32, i32* %j, align 4
  %idxprom267 = sext i32 %126 to i64
  %arrayidx268 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom267
  %class1269 = getelementptr inbounds %struct.term, %struct.term* %arrayidx268, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [32 x i8], [32 x i8]* %class1269, i32 0, i64 3
  store i8 -17, i8* %arrayidx270, align 1
  %127 = load i32, i32* %j, align 4
  %idxprom271 = sext i32 %127 to i64
  %arrayidx272 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom271
  %class1273 = getelementptr inbounds %struct.term, %struct.term* %arrayidx272, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [32 x i8], [32 x i8]* %class1273, i32 0, i64 2
  store i8 -17, i8* %arrayidx274, align 1
  %128 = load i32, i32* %j, align 4
  %inc275 = add nsw i32 %128, 1
  store i32 %inc275, i32* %j, align 4
  %idxprom276 = sext i32 %128 to i64
  %arrayidx277 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom276
  %class1278 = getelementptr inbounds %struct.term, %struct.term* %arrayidx277, i32 0, i32 1
  %arrayidx279 = getelementptr inbounds [32 x i8], [32 x i8]* %class1278, i32 0, i64 4
  store i8 0, i8* %arrayidx279, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.48
  %129 = load i32, i32* %No_error, align 4
  %cmp280 = icmp eq i32 %129, 1
  br i1 %cmp280, label %if.then.282, label %if.end.286

if.then.282:                                      ; preds = %sw.default
  %130 = load i32, i32* @NO_ERR_MASK, align 4
  %131 = load i32, i32* %j, align 4
  %idxprom283 = sext i32 %131 to i64
  %arrayidx284 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom283
  %132 = load i32, i32* %arrayidx284, align 4
  %or285 = or i32 %130, %132
  store i32 %or285, i32* @NO_ERR_MASK, align 4
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.282, %sw.default
  %133 = load i32, i32* %j, align 4
  %idxprom287 = sext i32 %133 to i64
  %arrayidx288 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom287
  %flag289 = getelementptr inbounds %struct.term, %struct.term* %arrayidx288, i32 0, i32 0
  store i32 0, i32* %flag289, align 4
  %134 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %134 to i64
  %135 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %135, i64 %idxprom290
  %136 = load i8, i8* %arrayidx291, align 1
  %137 = load i32, i32* %j, align 4
  %idxprom292 = sext i32 %137 to i64
  %arrayidx293 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom292
  %class1294 = getelementptr inbounds %struct.term, %struct.term* %arrayidx293, i32 0, i32 1
  %arrayidx295 = getelementptr inbounds [32 x i8], [32 x i8]* %class1294, i32 0, i64 1
  store i8 %136, i8* %arrayidx295, align 1
  %138 = load i32, i32* %j, align 4
  %idxprom296 = sext i32 %138 to i64
  %arrayidx297 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom296
  %class1298 = getelementptr inbounds %struct.term, %struct.term* %arrayidx297, i32 0, i32 1
  %arrayidx299 = getelementptr inbounds [32 x i8], [32 x i8]* %class1298, i32 0, i64 0
  store i8 %136, i8* %arrayidx299, align 1
  %139 = load i32, i32* %j, align 4
  %inc300 = add nsw i32 %139, 1
  store i32 %inc300, i32* %j, align 4
  %idxprom301 = sext i32 %139 to i64
  %arrayidx302 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom301
  %class1303 = getelementptr inbounds %struct.term, %struct.term* %arrayidx302, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [32 x i8], [32 x i8]* %class1303, i32 0, i64 2
  store i8 0, i8* %arrayidx304, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.286, %sw.bb.255, %sw.bb.214, %sw.bb.197, %if.end.192, %if.end.160, %if.end.144, %if.end.81, %sw.bb.74, %sw.bb.73, %sw.bb.72, %sw.bb.71, %sw.bb.70, %if.end.67, %if.then.53
  %140 = load i32, i32* %j, align 4
  %cmp305 = icmp sgt i32 %140, 32
  br i1 %cmp305, label %if.then.307, label %if.end.309

if.then.307:                                      ; preds = %sw.epilog
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call308 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end.309:                                       ; preds = %sw.epilog
  br label %for.inc.310

for.inc.310:                                      ; preds = %if.end.309
  %142 = load i32, i32* %i, align 4
  %inc311 = add nsw i32 %142, 1
  store i32 %inc311, i32* %i, align 4
  br label %for.cond.45

for.end.312:                                      ; preds = %for.cond.45
  %143 = load i32, i32* %EVEN, align 4
  %cmp313 = icmp ne i32 %143, 0
  br i1 %cmp313, label %if.then.315, label %if.end.317

if.then.315:                                      ; preds = %for.end.312
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call316 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end.317:                                       ; preds = %for.end.312
  %145 = load i32, i32* %j, align 4
  %sub318 = sub nsw i32 %145, 1
  store i32 %sub318, i32* %M, align 4
  %146 = load i32, i32* %M, align 4
  %sub319 = sub nsw i32 32, %146
  store i32 %sub319, i32* %base, align 4
  %147 = load i32, i32* @wildmask, align 4
  %148 = load i32, i32* %base, align 4
  %shr = lshr i32 %147, %148
  store i32 %shr, i32* @wildmask, align 4
  %149 = load i32, i32* @endposition, align 4
  %150 = load i32, i32* %base, align 4
  %shr320 = lshr i32 %149, %150
  store i32 %shr320, i32* @endposition, align 4
  %151 = load i32, i32* @NO_ERR_MASK, align 4
  %shr321 = ashr i32 %151, 1
  %152 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Bit, i32 0, i64 1), align 4
  %neg = xor i32 %152, -1
  %and322 = and i32 %shr321, %neg
  store i32 %and322, i32* @NO_ERR_MASK, align 4
  %153 = load i32, i32* @NO_ERR_MASK, align 4
  %neg323 = xor i32 %153, -1
  %154 = load i32, i32* %base, align 4
  %sub324 = sub nsw i32 %154, 1
  %shr325 = ashr i32 %neg323, %sub324
  store i32 %shr325, i32* @NO_ERR_MASK, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.326

for.cond.326:                                     ; preds = %for.inc.334, %if.end.317
  %155 = load i32, i32* %i, align 4
  %156 = load i32, i32* %M, align 4
  %sub327 = sub nsw i32 32, %156
  %cmp328 = icmp sle i32 %155, %sub327
  br i1 %cmp328, label %for.body.330, label %for.end.336

for.body.330:                                     ; preds = %for.cond.326
  %157 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %158 = load i32, i32* %i, align 4
  %idxprom331 = sext i32 %158 to i64
  %arrayidx332 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom331
  %159 = load i32, i32* %arrayidx332, align 4
  %or333 = or i32 %157, %159
  store i32 %or333, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  br label %for.inc.334

for.inc.334:                                      ; preds = %for.body.330
  %160 = load i32, i32* %i, align 4
  %inc335 = add nsw i32 %160, 1
  store i32 %inc335, i32* %i, align 4
  br label %for.cond.326

for.end.336:                                      ; preds = %for.cond.326
  %161 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %162 = load i32, i32* @endposition, align 4
  %or337 = or i32 %161, %162
  store i32 %or337, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %163 = load i32, i32* @endposition, align 4
  %shl = shl i32 %163, 1
  %add338 = add i32 %shl, 1
  store i32 %add338, i32* @endposition, align 4
  %164 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %165 = load i32, i32* @wildmask, align 4
  %or339 = or i32 %164, %165
  %166 = load i32, i32* @endposition, align 4
  %or340 = or i32 %or339, %166
  store i32 %or340, i32* @Init1, align 4
  %167 = load i32, i32* @endposition, align 4
  %168 = load i32, i32* %M, align 4
  %169 = load i32, i32* @D_length, align 4
  %sub341 = sub nsw i32 %168, %169
  %shr342 = lshr i32 %167, %sub341
  %170 = load i32, i32* %M, align 4
  %171 = load i32, i32* @D_length, align 4
  %sub343 = sub nsw i32 %170, %171
  %shl344 = shl i32 %shr342, %sub343
  store i32 %shl344, i32* @D_endpos, align 4
  %172 = load i32, i32* @endposition, align 4
  %173 = load i32, i32* @D_endpos, align 4
  %xor = xor i32 %172, %173
  store i32 %xor, i32* @endposition, align 4
  store i8 0, i8* %c, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.345

for.cond.345:                                     ; preds = %for.inc.437, %for.end.336
  %174 = load i32, i32* %i, align 4
  %cmp346 = icmp slt i32 %174, 256
  br i1 %cmp346, label %for.body.348, label %for.end.440

for.body.348:                                     ; preds = %for.cond.345
  store i32 1, i32* %k, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.349

for.cond.349:                                     ; preds = %for.inc.434, %for.body.348
  %175 = load i32, i32* %k, align 4
  %176 = load i32, i32* %M, align 4
  %cmp350 = icmp sle i32 %175, %176
  br i1 %cmp350, label %for.body.352, label %for.end.436

for.body.352:                                     ; preds = %for.cond.349
  br label %while.cond.353

while.cond.353:                                   ; preds = %if.end.416, %for.body.352
  %177 = load i32, i32* %l, align 4
  %idxprom354 = sext i32 %177 to i64
  %178 = load i32, i32* %k, align 4
  %idxprom355 = sext i32 %178 to i64
  %arrayidx356 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom355
  %class1357 = getelementptr inbounds %struct.term, %struct.term* %arrayidx356, i32 0, i32 1
  %arrayidx358 = getelementptr inbounds [32 x i8], [32 x i8]* %class1357, i32 0, i64 %idxprom354
  %179 = load i8, i8* %arrayidx358, align 1
  %conv359 = zext i8 %179 to i32
  %cmp360 = icmp ne i32 %conv359, 0
  br i1 %cmp360, label %while.body.362, label %while.end.418

while.body.362:                                   ; preds = %while.cond.353
  %180 = load i32, i32* %l, align 4
  %idxprom363 = sext i32 %180 to i64
  %181 = load i32, i32* %k, align 4
  %idxprom364 = sext i32 %181 to i64
  %arrayidx365 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom364
  %class1366 = getelementptr inbounds %struct.term, %struct.term* %arrayidx365, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [32 x i8], [32 x i8]* %class1366, i32 0, i64 %idxprom363
  %182 = load i8, i8* %arrayidx367, align 1
  %conv368 = zext i8 %182 to i32
  %cmp369 = icmp eq i32 %conv368, 238
  br i1 %cmp369, label %land.lhs.true.371, label %if.end.386

land.lhs.true.371:                                ; preds = %while.body.362
  %183 = load i8, i8* %c, align 1
  %conv372 = zext i8 %183 to i32
  %cmp373 = icmp ne i32 %conv372, 10
  br i1 %cmp373, label %if.then.377, label %lor.lhs.false.375

lor.lhs.false.375:                                ; preds = %land.lhs.true.371
  %184 = load i32, i32* @REGEX, align 4
  %tobool376 = icmp ne i32 %184, 0
  br i1 %tobool376, label %if.then.377, label %if.end.386

if.then.377:                                      ; preds = %lor.lhs.false.375, %land.lhs.true.371
  %185 = load i8, i8* %c, align 1
  %idxprom378 = zext i8 %185 to i64
  %arrayidx379 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom378
  %186 = load i32, i32* %arrayidx379, align 4
  %187 = load i32, i32* %base, align 4
  %188 = load i32, i32* %k, align 4
  %add380 = add nsw i32 %187, %188
  %idxprom381 = sext i32 %add380 to i64
  %arrayidx382 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom381
  %189 = load i32, i32* %arrayidx382, align 4
  %or383 = or i32 %186, %189
  %190 = load i8, i8* %c, align 1
  %idxprom384 = zext i8 %190 to i64
  %arrayidx385 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom384
  store i32 %or383, i32* %arrayidx385, align 4
  br label %while.end.418

if.end.386:                                       ; preds = %lor.lhs.false.375, %while.body.362
  %191 = load i8, i8* %c, align 1
  %conv387 = zext i8 %191 to i32
  %192 = load i32, i32* %l, align 4
  %idxprom388 = sext i32 %192 to i64
  %193 = load i32, i32* %k, align 4
  %idxprom389 = sext i32 %193 to i64
  %arrayidx390 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom389
  %class1391 = getelementptr inbounds %struct.term, %struct.term* %arrayidx390, i32 0, i32 1
  %arrayidx392 = getelementptr inbounds [32 x i8], [32 x i8]* %class1391, i32 0, i64 %idxprom388
  %194 = load i8, i8* %arrayidx392, align 1
  %conv393 = zext i8 %194 to i32
  %cmp394 = icmp sge i32 %conv387, %conv393
  br i1 %cmp394, label %land.lhs.true.396, label %if.end.416

land.lhs.true.396:                                ; preds = %if.end.386
  %195 = load i8, i8* %c, align 1
  %conv397 = zext i8 %195 to i32
  %196 = load i32, i32* %l, align 4
  %add398 = add nsw i32 %196, 1
  %idxprom399 = sext i32 %add398 to i64
  %197 = load i32, i32* %k, align 4
  %idxprom400 = sext i32 %197 to i64
  %arrayidx401 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom400
  %class1402 = getelementptr inbounds %struct.term, %struct.term* %arrayidx401, i32 0, i32 1
  %arrayidx403 = getelementptr inbounds [32 x i8], [32 x i8]* %class1402, i32 0, i64 %idxprom399
  %198 = load i8, i8* %arrayidx403, align 1
  %conv404 = zext i8 %198 to i32
  %cmp405 = icmp sle i32 %conv397, %conv404
  br i1 %cmp405, label %if.then.407, label %if.end.416

if.then.407:                                      ; preds = %land.lhs.true.396
  %199 = load i8, i8* %c, align 1
  %idxprom408 = zext i8 %199 to i64
  %arrayidx409 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom408
  %200 = load i32, i32* %arrayidx409, align 4
  %201 = load i32, i32* %base, align 4
  %202 = load i32, i32* %k, align 4
  %add410 = add nsw i32 %201, %202
  %idxprom411 = sext i32 %add410 to i64
  %arrayidx412 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom411
  %203 = load i32, i32* %arrayidx412, align 4
  %or413 = or i32 %200, %203
  %204 = load i8, i8* %c, align 1
  %idxprom414 = zext i8 %204 to i64
  %arrayidx415 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom414
  store i32 %or413, i32* %arrayidx415, align 4
  br label %while.end.418

if.end.416:                                       ; preds = %land.lhs.true.396, %if.end.386
  %205 = load i32, i32* %l, align 4
  %add417 = add nsw i32 %205, 2
  store i32 %add417, i32* %l, align 4
  br label %while.cond.353

while.end.418:                                    ; preds = %if.then.407, %if.then.377, %while.cond.353
  %206 = load i32, i32* %k, align 4
  %idxprom419 = sext i32 %206 to i64
  %arrayidx420 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %position, i32 0, i64 %idxprom419
  %flag421 = getelementptr inbounds %struct.term, %struct.term* %arrayidx420, i32 0, i32 0
  %207 = load i32, i32* %flag421, align 4
  %cmp422 = icmp eq i32 %207, 1
  br i1 %cmp422, label %if.then.424, label %if.end.433

if.then.424:                                      ; preds = %while.end.418
  %208 = load i8, i8* %c, align 1
  %idxprom425 = zext i8 %208 to i64
  %arrayidx426 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom425
  %209 = load i32, i32* %arrayidx426, align 4
  %210 = load i32, i32* %base, align 4
  %211 = load i32, i32* %k, align 4
  %add427 = add nsw i32 %210, %211
  %idxprom428 = sext i32 %add427 to i64
  %arrayidx429 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i32 0, i64 %idxprom428
  %212 = load i32, i32* %arrayidx429, align 4
  %xor430 = xor i32 %209, %212
  %213 = load i8, i8* %c, align 1
  %idxprom431 = zext i8 %213 to i64
  %arrayidx432 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom431
  store i32 %xor430, i32* %arrayidx432, align 4
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.424, %while.end.418
  br label %for.inc.434

for.inc.434:                                      ; preds = %if.end.433
  %214 = load i32, i32* %k, align 4
  %inc435 = add nsw i32 %214, 1
  store i32 %inc435, i32* %k, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.349

for.end.436:                                      ; preds = %for.cond.349
  br label %for.inc.437

for.inc.437:                                      ; preds = %for.end.436
  %215 = load i8, i8* %c, align 1
  %inc438 = add i8 %215, 1
  store i8 %inc438, i8* %c, align 1
  %216 = load i32, i32* %i, align 4
  %inc439 = add nsw i32 %216, 1
  store i32 %inc439, i32* %i, align 4
  br label %for.cond.345

for.end.440:                                      ; preds = %for.cond.345
  %217 = load i32, i32* @NOUPPER, align 4
  %tobool441 = icmp ne i32 %217, 0
  br i1 %tobool441, label %if.then.442, label %if.end.468

if.then.442:                                      ; preds = %for.end.440
  store i8 65, i8* %c, align 1
  br label %for.cond.443

for.cond.443:                                     ; preds = %for.inc.463, %if.then.442
  %218 = load i8, i8* %c, align 1
  %conv444 = zext i8 %218 to i32
  %cmp445 = icmp sle i32 %conv444, 90
  br i1 %cmp445, label %for.body.447, label %for.end.467

for.body.447:                                     ; preds = %for.cond.443
  %219 = load i8, i8* %c, align 1
  %conv448 = zext i8 %219 to i32
  %idxprom449 = sext i32 %conv448 to i64
  %call450 = call i16** @__ctype_b_loc() #7
  %220 = load i16*, i16** %call450, align 8
  %arrayidx451 = getelementptr inbounds i16, i16* %220, i64 %idxprom449
  %221 = load i16, i16* %arrayidx451, align 2
  %conv452 = zext i16 %221 to i32
  %and453 = and i32 %conv452, 256
  %tobool454 = icmp ne i32 %and453, 0
  br i1 %tobool454, label %if.then.455, label %if.end.462

if.then.455:                                      ; preds = %for.body.447
  %222 = load i8, i8* %c, align 1
  %conv456 = zext i8 %222 to i32
  %call457 = call i32 @tolower(i32 %conv456) #8
  %idxprom458 = sext i32 %call457 to i64
  %arrayidx459 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom458
  %223 = load i32, i32* %arrayidx459, align 4
  %224 = load i8, i8* %c, align 1
  %idxprom460 = zext i8 %224 to i64
  %arrayidx461 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom460
  store i32 %223, i32* %arrayidx461, align 4
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.455, %for.body.447
  br label %for.inc.463

for.inc.463:                                      ; preds = %if.end.462
  %225 = load i8, i8* %c, align 1
  %conv464 = zext i8 %225 to i32
  %add465 = add nsw i32 %conv464, 1
  %conv466 = trunc i32 %add465 to i8
  store i8 %conv466, i8* %c, align 1
  br label %for.cond.443

for.end.467:                                      ; preds = %for.cond.443
  br label %if.end.468

if.end.468:                                       ; preds = %for.end.467, %for.end.440
  %226 = load i32, i32* %M, align 4
  ret i32 %226
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind
declare i32 @tolower(i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
