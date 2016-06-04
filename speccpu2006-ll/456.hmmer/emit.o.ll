; ModuleID = 'emit.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"emit.c\00", align 1
@Alphabet_iupac = external global i32, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"never happens\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"can't happen.\00", align 1
@Alphabet_size = external global i32, align 4
@Alphabet_type = external global i32, align 4
@Alphabet = external global [25 x i8], align 16

; Function Attrs: nounwind uwtable
define void @EmitSequence(%struct.plan7_s* %hmm, i8** %ret_dsq, i32* %ret_L, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %ret_dsq.addr = alloca i8**, align 8
  %ret_L.addr = alloca i32*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s**, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %type = alloca i8, align 1
  %k = alloca i32, align 4
  %dsq = alloca i8*, align 8
  %L = alloca i32, align 4
  %alloc_tlen = alloca i32, align 4
  %alloc_L = alloca i32, align 4
  %tpos = alloca i32, align 4
  %sym = alloca i32, align 4
  %t = alloca [4 x float], align 16
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8** %ret_dsq, i8*** %ret_dsq.addr, align 8
  store i32* %ret_L, i32** %ret_L.addr, align 8
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  call void @P7AllocTrace(i32 64, %struct.p7trace_s** %tr)
  store i32 64, i32* %alloc_tlen, align 4
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 59, i64 64)
  store i8* %call, i8** %dsq, align 8
  store i32 64, i32* %alloc_L, align 4
  %0 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @TraceSet(%struct.p7trace_s* %0, i32 0, i8 signext 4, i32 0, i32 0)
  %1 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @TraceSet(%struct.p7trace_s* %1, i32 1, i8 signext 5, i32 0, i32 0)
  %2 = load i32, i32* @Alphabet_iupac, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i8*, i8** %dsq, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  store i32 1, i32* %L, align 4
  store i32 0, i32* %k, align 4
  store i8 5, i8* %type, align 1
  store i32 2, i32* %tpos, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.174, %entry
  %4 = load i8, i8* %type, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv1, 9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8, i8* %type, align 1
  %conv3 = sext i8 %5 to i32
  switch i32 %conv3, label %sw.default.95 [
    i32 6, label %sw.bb
    i32 3, label %sw.bb.9
    i32 5, label %sw.bb.21
    i32 7, label %sw.bb.28
    i32 8, label %sw.bb.37
    i32 10, label %sw.bb.46
    i32 2, label %sw.bb.55
    i32 1, label %sw.bb.72
    i32 9, label %sw.bb.94
    i32 0, label %sw.bb.94
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 24
  %7 = load float, float* %tbd1, align 4
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 26
  %9 = load float*, float** %begin, align 8
  %arrayidx4 = getelementptr inbounds float, float* %9, i64 0
  store float %7, float* %arrayidx4, align 4
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 26
  %11 = load float*, float** %begin5, align 8
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 20
  %13 = load i32, i32* %M, align 4
  %add = add nsw i32 %13, 1
  %call6 = call i32 @FChoose(float* %11, i32 %add)
  store i32 %call6, i32* %k, align 4
  %14 = load i32, i32* %k, align 4
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i8 2, i8* %type, align 1
  store i32 1, i32* %k, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  store i8 1, i8* %type, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog.96

sw.bb.9:                                          ; preds = %while.body
  %15 = load i32, i32* %k, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 21
  %17 = load float**, float*** %t10, align 8
  %arrayidx11 = getelementptr inbounds float*, float** %17, i64 %idxprom
  %18 = load float*, float** %arrayidx11, align 8
  %add.ptr = getelementptr inbounds float, float* %18, i64 3
  %call12 = call i32 @FChoose(float* %add.ptr, i32 2)
  %cmp13 = icmp eq i32 %call12, 0
  %cond = select i1 %cmp13, i32 1, i32 3
  %conv15 = trunc i32 %cond to i8
  store i8 %conv15, i8* %type, align 1
  %19 = load i8, i8* %type, align 1
  %conv16 = sext i8 %19 to i32
  %cmp17 = icmp eq i32 %conv16, 1
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.bb.9
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %sw.bb.9
  br label %sw.epilog.96

sw.bb.21:                                         ; preds = %while.body
  %21 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 25
  %arrayidx22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %arrayidx22, i32 0, i32 0
  %call23 = call i32 @FChoose(float* %arraydecay, i32 2)
  %cmp24 = icmp eq i32 %call23, 1
  %cond26 = select i1 %cmp24, i32 5, i32 6
  %conv27 = trunc i32 %cond26 to i8
  store i8 %conv27, i8* %type, align 1
  store i32 0, i32* %k, align 4
  br label %sw.epilog.96

sw.bb.28:                                         ; preds = %while.body
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 25
  %arrayidx30 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt29, i32 0, i64 1
  %arraydecay31 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx30, i32 0, i32 0
  %call32 = call i32 @FChoose(float* %arraydecay31, i32 2)
  %cmp33 = icmp eq i32 %call32, 1
  %cond35 = select i1 %cmp33, i32 10, i32 8
  %conv36 = trunc i32 %cond35 to i8
  store i8 %conv36, i8* %type, align 1
  store i32 0, i32* %k, align 4
  br label %sw.epilog.96

sw.bb.37:                                         ; preds = %while.body
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt38 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 25
  %arrayidx39 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt38, i32 0, i64 2
  %arraydecay40 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx39, i32 0, i32 0
  %call41 = call i32 @FChoose(float* %arraydecay40, i32 2)
  %cmp42 = icmp eq i32 %call41, 1
  %cond44 = select i1 %cmp42, i32 8, i32 9
  %conv45 = trunc i32 %cond44 to i8
  store i8 %conv45, i8* %type, align 1
  store i32 0, i32* %k, align 4
  br label %sw.epilog.96

sw.bb.46:                                         ; preds = %while.body
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt47 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 25
  %arrayidx48 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt47, i32 0, i64 3
  %arraydecay49 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx48, i32 0, i32 0
  %call50 = call i32 @FChoose(float* %arraydecay49, i32 2)
  %cmp51 = icmp eq i32 %call50, 1
  %cond53 = select i1 %cmp51, i32 10, i32 6
  %conv54 = trunc i32 %cond53 to i8
  store i8 %conv54, i8* %type, align 1
  store i32 0, i32* %k, align 4
  br label %sw.epilog.96

sw.bb.55:                                         ; preds = %while.body
  %25 = load i32, i32* %k, align 4
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M56 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 20
  %27 = load i32, i32* %M56, align 4
  %cmp57 = icmp slt i32 %25, %27
  br i1 %cmp57, label %if.then.59, label %if.else.70

if.then.59:                                       ; preds = %sw.bb.55
  %28 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %28 to i64
  %29 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 21
  %30 = load float**, float*** %t61, align 8
  %arrayidx62 = getelementptr inbounds float*, float** %30, i64 %idxprom60
  %31 = load float*, float** %arrayidx62, align 8
  %add.ptr63 = getelementptr inbounds float, float* %31, i64 5
  %call64 = call i32 @FChoose(float* %add.ptr63, i32 2)
  %cmp65 = icmp eq i32 %call64, 0
  %cond67 = select i1 %cmp65, i32 1, i32 2
  %conv68 = trunc i32 %cond67 to i8
  store i8 %conv68, i8* %type, align 1
  %32 = load i32, i32* %k, align 4
  %inc69 = add nsw i32 %32, 1
  store i32 %inc69, i32* %k, align 4
  br label %if.end.71

if.else.70:                                       ; preds = %sw.bb.55
  store i8 7, i8* %type, align 1
  store i32 0, i32* %k, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.then.59
  br label %sw.epilog.96

sw.bb.72:                                         ; preds = %while.body
  %33 = load i32, i32* %k, align 4
  %34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M73 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 20
  %35 = load i32, i32* %M73, align 4
  %cmp74 = icmp slt i32 %33, %35
  br i1 %cmp74, label %if.then.76, label %if.else.92

if.then.76:                                       ; preds = %sw.bb.72
  %arraydecay77 = getelementptr inbounds [4 x float], [4 x float]* %t, i32 0, i32 0
  %36 = load i32, i32* %k, align 4
  %idxprom78 = sext i32 %36 to i64
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t79 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 21
  %38 = load float**, float*** %t79, align 8
  %arrayidx80 = getelementptr inbounds float*, float** %38, i64 %idxprom78
  %39 = load float*, float** %arrayidx80, align 8
  call void @FCopy(float* %arraydecay77, float* %39, i32 3)
  %40 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %40 to i64
  %41 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 27
  %42 = load float*, float** %end, align 8
  %arrayidx82 = getelementptr inbounds float, float* %42, i64 %idxprom81
  %43 = load float, float* %arrayidx82, align 4
  %arrayidx83 = getelementptr inbounds [4 x float], [4 x float]* %t, i32 0, i64 3
  store float %43, float* %arrayidx83, align 4
  %arraydecay84 = getelementptr inbounds [4 x float], [4 x float]* %t, i32 0, i32 0
  %call85 = call i32 @FChoose(float* %arraydecay84, i32 4)
  switch i32 %call85, label %sw.default [
    i32 0, label %sw.bb.86
    i32 1, label %sw.bb.88
    i32 2, label %sw.bb.89
    i32 3, label %sw.bb.91
  ]

sw.bb.86:                                         ; preds = %if.then.76
  %44 = load i32, i32* %k, align 4
  %inc87 = add nsw i32 %44, 1
  store i32 %inc87, i32* %k, align 4
  store i8 1, i8* %type, align 1
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.then.76
  store i8 3, i8* %type, align 1
  br label %sw.epilog

sw.bb.89:                                         ; preds = %if.then.76
  %45 = load i32, i32* %k, align 4
  %inc90 = add nsw i32 %45, 1
  store i32 %inc90, i32* %k, align 4
  store i8 2, i8* %type, align 1
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.then.76
  store i32 0, i32* %k, align 4
  store i8 7, i8* %type, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.76
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.91, %sw.bb.89, %sw.bb.88, %sw.bb.86
  br label %if.end.93

if.else.92:                                       ; preds = %sw.bb.72
  store i32 0, i32* %k, align 4
  store i8 7, i8* %type, align 1
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.92, %sw.epilog
  br label %sw.epilog.96

sw.bb.94:                                         ; preds = %while.body, %while.body
  br label %sw.default.95

sw.default.95:                                    ; preds = %while.body, %sw.bb.94
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog.96

sw.epilog.96:                                     ; preds = %sw.default.95, %if.end.93, %if.end.71, %sw.bb.46, %sw.bb.37, %sw.bb.28, %sw.bb.21, %if.end.20, %if.end
  store i32 -1, i32* %sym, align 4
  %46 = load i8, i8* %type, align 1
  %conv97 = sext i8 %46 to i32
  %cmp98 = icmp eq i32 %conv97, 1
  br i1 %cmp98, label %if.then.100, label %if.else.104

if.then.100:                                      ; preds = %sw.epilog.96
  %47 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %47 to i64
  %48 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %48, i32 0, i32 22
  %49 = load float**, float*** %mat, align 8
  %arrayidx102 = getelementptr inbounds float*, float** %49, i64 %idxprom101
  %50 = load float*, float** %arrayidx102, align 8
  %51 = load i32, i32* @Alphabet_size, align 4
  %call103 = call i32 @FChoose(float* %50, i32 %51)
  store i32 %call103, i32* %sym, align 4
  br label %if.end.149

if.else.104:                                      ; preds = %sw.epilog.96
  %52 = load i8, i8* %type, align 1
  %conv105 = sext i8 %52 to i32
  %cmp106 = icmp eq i32 %conv105, 3
  br i1 %cmp106, label %if.then.108, label %if.else.112

if.then.108:                                      ; preds = %if.else.104
  %53 = load i32, i32* %k, align 4
  %idxprom109 = sext i32 %53 to i64
  %54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 23
  %55 = load float**, float*** %ins, align 8
  %arrayidx110 = getelementptr inbounds float*, float** %55, i64 %idxprom109
  %56 = load float*, float** %arrayidx110, align 8
  %57 = load i32, i32* @Alphabet_size, align 4
  %call111 = call i32 @FChoose(float* %56, i32 %57)
  store i32 %call111, i32* %sym, align 4
  br label %if.end.148

if.else.112:                                      ; preds = %if.else.104
  %58 = load i8, i8* %type, align 1
  %conv113 = sext i8 %58 to i32
  %cmp114 = icmp eq i32 %conv113, 5
  br i1 %cmp114, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else.112
  %59 = load i32, i32* %tpos, align 4
  %sub = sub nsw i32 %59, 1
  %idxprom116 = sext i32 %sub to i64
  %60 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %60, i32 0, i32 1
  %61 = load i8*, i8** %statetype, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %61, i64 %idxprom116
  %62 = load i8, i8* %arrayidx117, align 1
  %conv118 = sext i8 %62 to i32
  %cmp119 = icmp eq i32 %conv118, 5
  br i1 %cmp119, label %if.then.144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else.112
  %63 = load i8, i8* %type, align 1
  %conv121 = sext i8 %63 to i32
  %cmp122 = icmp eq i32 %conv121, 8
  br i1 %cmp122, label %land.lhs.true.124, label %lor.lhs.false.132

land.lhs.true.124:                                ; preds = %lor.lhs.false
  %64 = load i32, i32* %tpos, align 4
  %sub125 = sub nsw i32 %64, 1
  %idxprom126 = sext i32 %sub125 to i64
  %65 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype127 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %65, i32 0, i32 1
  %66 = load i8*, i8** %statetype127, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %66, i64 %idxprom126
  %67 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %67 to i32
  %cmp130 = icmp eq i32 %conv129, 8
  br i1 %cmp130, label %if.then.144, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %land.lhs.true.124, %lor.lhs.false
  %68 = load i8, i8* %type, align 1
  %conv133 = sext i8 %68 to i32
  %cmp134 = icmp eq i32 %conv133, 10
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.147

land.lhs.true.136:                                ; preds = %lor.lhs.false.132
  %69 = load i32, i32* %tpos, align 4
  %sub137 = sub nsw i32 %69, 1
  %idxprom138 = sext i32 %sub137 to i64
  %70 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype139 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %70, i32 0, i32 1
  %71 = load i8*, i8** %statetype139, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %71, i64 %idxprom138
  %72 = load i8, i8* %arrayidx140, align 1
  %conv141 = sext i8 %72 to i32
  %cmp142 = icmp eq i32 %conv141, 10
  br i1 %cmp142, label %if.then.144, label %if.end.147

if.then.144:                                      ; preds = %land.lhs.true.136, %land.lhs.true.124, %land.lhs.true
  %73 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %73, i32 0, i32 28
  %arraydecay145 = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i32 0
  %74 = load i32, i32* @Alphabet_size, align 4
  %call146 = call i32 @FChoose(float* %arraydecay145, i32 %74)
  store i32 %call146, i32* %sym, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.144, %land.lhs.true.136, %lor.lhs.false.132
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.108
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.100
  %75 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %76 = load i32, i32* %tpos, align 4
  %77 = load i8, i8* %type, align 1
  %78 = load i32, i32* %k, align 4
  %79 = load i32, i32* %sym, align 4
  %cmp150 = icmp ne i32 %79, -1
  br i1 %cmp150, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.149
  %80 = load i32, i32* %L, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.149
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond152 = phi i32 [ %80, %cond.true ], [ 0, %cond.false ]
  call void @TraceSet(%struct.p7trace_s* %75, i32 %76, i8 signext %77, i32 %78, i32 %cond152)
  %81 = load i32, i32* %tpos, align 4
  %inc153 = add nsw i32 %81, 1
  store i32 %inc153, i32* %tpos, align 4
  %82 = load i32, i32* %tpos, align 4
  %83 = load i32, i32* %alloc_tlen, align 4
  %cmp154 = icmp eq i32 %82, %83
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %cond.end
  %84 = load i32, i32* %alloc_tlen, align 4
  %add157 = add nsw i32 %84, 64
  store i32 %add157, i32* %alloc_tlen, align 4
  %85 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %86 = load i32, i32* %alloc_tlen, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %85, i32 %86)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %cond.end
  %87 = load i32, i32* %sym, align 4
  %cmp159 = icmp ne i32 %87, -1
  br i1 %cmp159, label %if.then.161, label %if.end.174

if.then.161:                                      ; preds = %if.end.158
  %88 = load i32, i32* %sym, align 4
  %conv162 = trunc i32 %88 to i8
  %89 = load i32, i32* %L, align 4
  %idxprom163 = sext i32 %89 to i64
  %90 = load i8*, i8** %dsq, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %90, i64 %idxprom163
  store i8 %conv162, i8* %arrayidx164, align 1
  %91 = load i32, i32* %L, align 4
  %inc165 = add nsw i32 %91, 1
  store i32 %inc165, i32* %L, align 4
  %92 = load i32, i32* %L, align 4
  %add166 = add nsw i32 %92, 1
  %93 = load i32, i32* %alloc_L, align 4
  %cmp167 = icmp eq i32 %add166, %93
  br i1 %cmp167, label %if.then.169, label %if.end.173

if.then.169:                                      ; preds = %if.then.161
  %94 = load i32, i32* %alloc_L, align 4
  %add170 = add nsw i32 %94, 64
  store i32 %add170, i32* %alloc_L, align 4
  %95 = load i8*, i8** %dsq, align 8
  %96 = load i32, i32* %alloc_L, align 4
  %conv171 = sext i32 %96 to i64
  %mul = mul i64 1, %conv171
  %call172 = call i8* @sre_realloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 146, i8* %95, i64 %mul)
  store i8* %call172, i8** %dsq, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.169, %if.then.161
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.158
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %97 = load i32, i32* %tpos, align 4
  %98 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %98, i32 0, i32 0
  store i32 %97, i32* %tlen, align 4
  %99 = load i32, i32* @Alphabet_iupac, align 4
  %conv175 = trunc i32 %99 to i8
  %100 = load i32, i32* %L, align 4
  %idxprom176 = sext i32 %100 to i64
  %101 = load i8*, i8** %dsq, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %101, i64 %idxprom176
  store i8 %conv175, i8* %arrayidx177, align 1
  %102 = load i32, i32* %L, align 4
  %add178 = add nsw i32 %102, 1
  %idxprom179 = sext i32 %add178 to i64
  %103 = load i8*, i8** %dsq, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %103, i64 %idxprom179
  store i8 0, i8* %arrayidx180, align 1
  %104 = load i32, i32* %L, align 4
  %dec = add nsw i32 %104, -1
  store i32 %dec, i32* %L, align 4
  %105 = load i8**, i8*** %ret_dsq.addr, align 8
  %cmp181 = icmp ne i8** %105, null
  br i1 %cmp181, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %while.end
  %106 = load i8*, i8** %dsq, align 8
  %107 = load i8**, i8*** %ret_dsq.addr, align 8
  store i8* %106, i8** %107, align 8
  br label %if.end.185

if.else.184:                                      ; preds = %while.end
  %108 = load i8*, i8** %dsq, align 8
  call void @free(i8* %108) #3
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.184, %if.then.183
  %109 = load i32*, i32** %ret_L.addr, align 8
  %cmp186 = icmp ne i32* %109, null
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.end.185
  %110 = load i32, i32* %L, align 4
  %111 = load i32*, i32** %ret_L.addr, align 8
  store i32 %110, i32* %111, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %if.end.185
  %112 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  %cmp190 = icmp ne %struct.p7trace_s** %112, null
  br i1 %cmp190, label %if.then.192, label %if.else.193

if.then.192:                                      ; preds = %if.end.189
  %113 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %114 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* %113, %struct.p7trace_s** %114, align 8
  br label %if.end.194

if.else.193:                                      ; preds = %if.end.189
  %115 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %115)
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.193, %if.then.192
  ret void
}

declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

declare i8* @sre_malloc(i8*, i32, i64) #1

declare void @TraceSet(%struct.p7trace_s*, i32, i8 signext, i32, i32) #1

declare i32 @FChoose(float*, i32) #1

declare void @FCopy(float*, float*, i32) #1

declare void @Die(i8*, ...) #1

declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #1

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @P7FreeTrace(%struct.p7trace_s*) #1

; Function Attrs: nounwind uwtable
define void @EmitConsensusSequence(%struct.plan7_s* %hmm, i8** %ret_seq, i8** %ret_dsq, i32* %ret_L, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %ret_seq.addr = alloca i8**, align 8
  %ret_dsq.addr = alloca i8**, align 8
  %ret_L.addr = alloca i32*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s**, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %dsq = alloca i8*, align 8
  %seq = alloca i8*, align 8
  %mp = alloca float*, align 8
  %ip = alloca float*, align 8
  %dp = alloca float*, align 8
  %nmat = alloca i32, align 4
  %ndel = alloca i32, align 4
  %nins = alloca i32, align 4
  %k = alloca i32, align 4
  %tpos = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %mthresh = alloca float, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8** %ret_seq, i8*** %ret_seq.addr, align 8
  store i8** %ret_dsq, i8*** %ret_dsq.addr, align 8
  store i32* %ret_L, i32** %ret_L.addr, align 8
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  %0 = load i32, i32* @Alphabet_type, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store float 5.000000e-01, float* %mthresh, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store float 0x3FECCCCCC0000000, float* %mthresh, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @StateOccupancy(%struct.plan7_s* %1, float** %mp, float** %ip, float** %dp)
  store i32 0, i32* %nins, align 4
  store i32 0, i32* %ndel, align 4
  store i32 0, i32* %nmat, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %k, align 4
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 20
  %4 = load i32, i32* %M, align 4
  %cmp1 = icmp sle i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load float*, float** %mp, align 8
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  %7 = load float, float* %arrayidx, align 4
  %conv = fpext float %7 to double
  %cmp2 = fcmp oge double %conv, 5.000000e-01
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %for.body
  %8 = load i32, i32* %nmat, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %nmat, align 4
  br label %if.end.7

if.else.5:                                        ; preds = %for.body
  %9 = load i32, i32* %ndel, align 4
  %inc6 = add nsw i32 %9, 1
  store i32 %inc6, i32* %ndel, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.5, %if.then.4
  %10 = load i32, i32* %k, align 4
  %11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M8 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %11, i32 0, i32 20
  %12 = load i32, i32* %M8, align 4
  %cmp9 = icmp slt i32 %10, %12
  br i1 %cmp9, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.7
  %13 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load float*, float** %ip, align 8
  %arrayidx12 = getelementptr inbounds float, float* %14, i64 %idxprom11
  %15 = load float, float* %arrayidx12, align 4
  %conv13 = fpext float %15 to double
  %cmp14 = fcmp oge double %conv13, 5.000000e-01
  br i1 %cmp14, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 21
  %18 = load float**, float*** %t, align 8
  %arrayidx18 = getelementptr inbounds float*, float** %18, i64 %idxprom17
  %19 = load float*, float** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds float, float* %19, i64 4
  %20 = load float, float* %arrayidx19, align 4
  %sub = fsub float 1.000000e+00, %20
  %div = fdiv float 1.000000e+00, %sub
  %conv20 = fptosi float %div to i32
  %21 = load i32, i32* %nins, align 4
  %add = add nsw i32 %21, %conv20
  store i32 %add, i32* %nins, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %land.lhs.true, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %22 = load i32, i32* %k, align 4
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %nmat, align 4
  %add23 = add nsw i32 6, %23
  %24 = load i32, i32* %ndel, align 4
  %add24 = add nsw i32 %add23, %24
  %25 = load i32, i32* %nins, align 4
  %add25 = add nsw i32 %add24, %25
  call void @P7AllocTrace(i32 %add25, %struct.p7trace_s** %tr)
  %26 = load i32, i32* %nmat, align 4
  %27 = load i32, i32* %nins, align 4
  %add26 = add nsw i32 %26, %27
  %add27 = add nsw i32 %add26, 3
  %conv28 = sext i32 %add27 to i64
  %mul = mul i64 1, %conv28
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 327, i64 %mul)
  store i8* %call, i8** %dsq, align 8
  %28 = load i32, i32* %nmat, align 4
  %29 = load i32, i32* %nins, align 4
  %add29 = add nsw i32 %28, %29
  %add30 = add nsw i32 %add29, 1
  %conv31 = sext i32 %add30 to i64
  %mul32 = mul i64 1, %conv31
  %call33 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 328, i64 %mul32)
  store i8* %call33, i8** %seq, align 8
  %30 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @TraceSet(%struct.p7trace_s* %30, i32 0, i8 signext 4, i32 0, i32 0)
  %31 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @TraceSet(%struct.p7trace_s* %31, i32 1, i8 signext 5, i32 0, i32 0)
  %32 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @TraceSet(%struct.p7trace_s* %32, i32 2, i8 signext 6, i32 0, i32 0)
  %33 = load i32, i32* @Alphabet_iupac, align 4
  %conv34 = trunc i32 %33 to i8
  %34 = load i8*, i8** %dsq, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %conv34, i8* %arrayidx35, align 1
  store i32 3, i32* %tpos, align 4
  store i32 0, i32* %i, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.108, %for.end
  %35 = load i32, i32* %k, align 4
  %36 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 20
  %37 = load i32, i32* %M37, align 4
  %cmp38 = icmp sle i32 %35, %37
  br i1 %cmp38, label %for.body.40, label %for.end.110

for.body.40:                                      ; preds = %for.cond.36
  %38 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load float*, float** %mp, align 8
  %arrayidx42 = getelementptr inbounds float, float* %39, i64 %idxprom41
  %40 = load float, float* %arrayidx42, align 4
  %conv43 = fpext float %40 to double
  %cmp44 = fcmp oge double %conv43, 5.000000e-01
  br i1 %cmp44, label %if.then.46, label %if.else.77

if.then.46:                                       ; preds = %for.body.40
  %41 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %42, i32 0, i32 22
  %43 = load float**, float*** %mat, align 8
  %arrayidx48 = getelementptr inbounds float*, float** %43, i64 %idxprom47
  %44 = load float*, float** %arrayidx48, align 8
  %45 = load i32, i32* @Alphabet_size, align 4
  %call49 = call i32 @FArgMax(float* %44, i32 %45)
  store i32 %call49, i32* %x, align 4
  %46 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %47 = load i32, i32* %tpos, align 4
  %48 = load i32, i32* %k, align 4
  %49 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %49, 1
  call void @TraceSet(%struct.p7trace_s* %46, i32 %47, i8 signext 1, i32 %48, i32 %add50)
  %50 = load i32, i32* %x, align 4
  %idxprom51 = sext i32 %50 to i64
  %arrayidx52 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom51
  %51 = load i8, i8* %arrayidx52, align 1
  %52 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %52 to i64
  %53 = load i8*, i8** %seq, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %53, i64 %idxprom53
  store i8 %51, i8* %arrayidx54, align 1
  %54 = load i32, i32* %x, align 4
  %conv55 = trunc i32 %54 to i8
  %55 = load i32, i32* %i, align 4
  %add56 = add nsw i32 %55, 1
  %idxprom57 = sext i32 %add56 to i64
  %56 = load i8*, i8** %dsq, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %56, i64 %idxprom57
  store i8 %conv55, i8* %arrayidx58, align 1
  %57 = load i32, i32* %x, align 4
  %idxprom59 = sext i32 %57 to i64
  %58 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %58 to i64
  %59 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %59, i32 0, i32 22
  %60 = load float**, float*** %mat61, align 8
  %arrayidx62 = getelementptr inbounds float*, float** %60, i64 %idxprom60
  %61 = load float*, float** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds float, float* %61, i64 %idxprom59
  %62 = load float, float* %arrayidx63, align 4
  %63 = load float, float* %mthresh, align 4
  %cmp64 = fcmp olt float %62, %63
  br i1 %cmp64, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %if.then.46
  %64 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %64 to i64
  %65 = load i8*, i8** %seq, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %65, i64 %idxprom67
  %66 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %66 to i32
  %call70 = call i32 @tolower(i32 %conv69) #3
  %conv71 = trunc i32 %call70 to i8
  %67 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %67 to i64
  %68 = load i8*, i8** %seq, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %68, i64 %idxprom72
  store i8 %conv71, i8* %arrayidx73, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.66, %if.then.46
  %69 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %69, 1
  store i32 %inc75, i32* %i, align 4
  %70 = load i32, i32* %tpos, align 4
  %inc76 = add nsw i32 %70, 1
  store i32 %inc76, i32* %tpos, align 4
  br label %if.end.79

if.else.77:                                       ; preds = %for.body.40
  %71 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %72 = load i32, i32* %tpos, align 4
  %73 = load i32, i32* %k, align 4
  call void @TraceSet(%struct.p7trace_s* %71, i32 %72, i8 signext 2, i32 %73, i32 0)
  %74 = load i32, i32* %tpos, align 4
  %inc78 = add nsw i32 %74, 1
  store i32 %inc78, i32* %tpos, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.end.74
  %75 = load i32, i32* %k, align 4
  %76 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M80 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 20
  %77 = load i32, i32* %M80, align 4
  %cmp81 = icmp slt i32 %75, %77
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.107

land.lhs.true.83:                                 ; preds = %if.end.79
  %78 = load i32, i32* %k, align 4
  %idxprom84 = sext i32 %78 to i64
  %79 = load float*, float** %ip, align 8
  %arrayidx85 = getelementptr inbounds float, float* %79, i64 %idxprom84
  %80 = load float, float* %arrayidx85, align 4
  %conv86 = fpext float %80 to double
  %cmp87 = fcmp oge double %conv86, 5.000000e-01
  br i1 %cmp87, label %if.then.89, label %if.end.107

if.then.89:                                       ; preds = %land.lhs.true.83
  %81 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %81 to i64
  %82 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t91 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 21
  %83 = load float**, float*** %t91, align 8
  %arrayidx92 = getelementptr inbounds float*, float** %83, i64 %idxprom90
  %84 = load float*, float** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds float, float* %84, i64 4
  %85 = load float, float* %arrayidx93, align 4
  %sub94 = fsub float 1.000000e+00, %85
  %div95 = fdiv float 1.000000e+00, %sub94
  %conv96 = fptosi float %div95 to i32
  store i32 %conv96, i32* %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.89
  %86 = load i32, i32* %x, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %x, align 4
  %tobool = icmp ne i32 %86, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %87 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %88 = load i32, i32* %tpos, align 4
  %89 = load i32, i32* %k, align 4
  %90 = load i32, i32* %i, align 4
  %add97 = add nsw i32 %90, 1
  call void @TraceSet(%struct.p7trace_s* %87, i32 %88, i8 signext 3, i32 %89, i32 %add97)
  %91 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %91 to i64
  %92 = load i8*, i8** %seq, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %92, i64 %idxprom98
  store i8 120, i8* %arrayidx99, align 1
  %93 = load i32, i32* @Alphabet_iupac, align 4
  %sub100 = sub nsw i32 %93, 1
  %conv101 = trunc i32 %sub100 to i8
  %94 = load i32, i32* %i, align 4
  %add102 = add nsw i32 %94, 1
  %idxprom103 = sext i32 %add102 to i64
  %95 = load i8*, i8** %dsq, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %95, i64 %idxprom103
  store i8 %conv101, i8* %arrayidx104, align 1
  %96 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %96, 1
  store i32 %inc105, i32* %i, align 4
  %97 = load i32, i32* %tpos, align 4
  %inc106 = add nsw i32 %97, 1
  store i32 %inc106, i32* %tpos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.107

if.end.107:                                       ; preds = %while.end, %land.lhs.true.83, %if.end.79
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %98 = load i32, i32* %k, align 4
  %inc109 = add nsw i32 %98, 1
  store i32 %inc109, i32* %k, align 4
  br label %for.cond.36

for.end.110:                                      ; preds = %for.cond.36
  %99 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %100 = load i32, i32* %tpos, align 4
  call void @TraceSet(%struct.p7trace_s* %99, i32 %100, i8 signext 7, i32 0, i32 0)
  %101 = load i32, i32* %tpos, align 4
  %inc111 = add nsw i32 %101, 1
  store i32 %inc111, i32* %tpos, align 4
  %102 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %103 = load i32, i32* %tpos, align 4
  call void @TraceSet(%struct.p7trace_s* %102, i32 %103, i8 signext 8, i32 0, i32 0)
  %104 = load i32, i32* %tpos, align 4
  %inc112 = add nsw i32 %104, 1
  store i32 %inc112, i32* %tpos, align 4
  %105 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %106 = load i32, i32* %tpos, align 4
  call void @TraceSet(%struct.p7trace_s* %105, i32 %106, i8 signext 9, i32 0, i32 0)
  %107 = load i32, i32* %tpos, align 4
  %inc113 = add nsw i32 %107, 1
  store i32 %inc113, i32* %tpos, align 4
  %108 = load i32, i32* @Alphabet_iupac, align 4
  %conv114 = trunc i32 %108 to i8
  %109 = load i32, i32* %i, align 4
  %add115 = add nsw i32 %109, 1
  %idxprom116 = sext i32 %add115 to i64
  %110 = load i8*, i8** %dsq, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %110, i64 %idxprom116
  store i8 %conv114, i8* %arrayidx117, align 1
  %111 = load float*, float** %mp, align 8
  %112 = bitcast float* %111 to i8*
  call void @free(i8* %112) #3
  %113 = load float*, float** %ip, align 8
  %114 = bitcast float* %113 to i8*
  call void @free(i8* %114) #3
  %115 = load float*, float** %dp, align 8
  %116 = bitcast float* %115 to i8*
  call void @free(i8* %116) #3
  %117 = load i8**, i8*** %ret_seq.addr, align 8
  %cmp118 = icmp ne i8** %117, null
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %for.end.110
  %118 = load i8*, i8** %seq, align 8
  %119 = load i8**, i8*** %ret_seq.addr, align 8
  store i8* %118, i8** %119, align 8
  br label %if.end.122

if.else.121:                                      ; preds = %for.end.110
  %120 = load i8*, i8** %seq, align 8
  call void @free(i8* %120) #3
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.120
  %121 = load i8**, i8*** %ret_dsq.addr, align 8
  %cmp123 = icmp ne i8** %121, null
  br i1 %cmp123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %if.end.122
  %122 = load i8*, i8** %dsq, align 8
  %123 = load i8**, i8*** %ret_dsq.addr, align 8
  store i8* %122, i8** %123, align 8
  br label %if.end.127

if.else.126:                                      ; preds = %if.end.122
  %124 = load i8*, i8** %dsq, align 8
  call void @free(i8* %124) #3
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.126, %if.then.125
  %125 = load i32*, i32** %ret_L.addr, align 8
  %cmp128 = icmp ne i32* %125, null
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.127
  %126 = load i32, i32* %i, align 4
  %127 = load i32*, i32** %ret_L.addr, align 8
  store i32 %126, i32* %127, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.end.127
  %128 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  %cmp132 = icmp ne %struct.p7trace_s** %128, null
  br i1 %cmp132, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %if.end.131
  %129 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %130 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* %129, %struct.p7trace_s** %130, align 8
  br label %if.end.136

if.else.135:                                      ; preds = %if.end.131
  %131 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %131)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.135, %if.then.134
  ret void
}

; Function Attrs: nounwind uwtable
define void @StateOccupancy(%struct.plan7_s* %hmm, float** %ret_mp, float** %ret_ip, float** %ret_dp) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %ret_mp.addr = alloca float**, align 8
  %ret_ip.addr = alloca float**, align 8
  %ret_dp.addr = alloca float**, align 8
  %fmp = alloca float*, align 8
  %fip = alloca float*, align 8
  %fdp = alloca float*, align 8
  %k = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store float** %ret_mp, float*** %ret_mp.addr, align 8
  store float** %ret_ip, float*** %ret_ip.addr, align 8
  store float** %ret_dp, float*** %ret_dp.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 20
  %1 = load i32, i32* %M, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 414, i64 %mul)
  %2 = bitcast i8* %call to float*
  store float* %2, float** %fmp, align 8
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 20
  %4 = load i32, i32* %M1, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 415, i64 %mul3)
  %5 = bitcast i8* %call4 to float*
  store float* %5, float** %fip, align 8
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 20
  %7 = load i32, i32* %M5, align 4
  %add6 = add nsw i32 %7, 1
  %conv7 = sext i32 %add6 to i64
  %mul8 = mul i64 4, %conv7
  %call9 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 416, i64 %mul8)
  %8 = bitcast i8* %call9 to float*
  store float* %8, float** %fdp, align 8
  %9 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 24
  %10 = load float, float* %tbd1, align 4
  %11 = load float*, float** %fdp, align 8
  %arrayidx = getelementptr inbounds float, float* %11, i64 1
  store float %10, float* %arrayidx, align 4
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 26
  %13 = load float*, float** %begin, align 8
  %arrayidx10 = getelementptr inbounds float, float* %13, i64 1
  %14 = load float, float* %arrayidx10, align 4
  %15 = load float*, float** %fmp, align 8
  %arrayidx11 = getelementptr inbounds float, float* %15, i64 1
  store float %14, float* %arrayidx11, align 4
  %16 = load float*, float** %fmp, align 8
  %arrayidx12 = getelementptr inbounds float, float* %16, i64 1
  %17 = load float, float* %arrayidx12, align 4
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 21
  %19 = load float**, float*** %t, align 8
  %arrayidx13 = getelementptr inbounds float*, float** %19, i64 1
  %20 = load float*, float** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx14, align 4
  %mul15 = fmul float %17, %21
  %22 = load float*, float** %fip, align 8
  %arrayidx16 = getelementptr inbounds float, float* %22, i64 1
  store float %mul15, float* %arrayidx16, align 4
  store i32 2, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %23 = load i32, i32* %k, align 4
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 20
  %25 = load i32, i32* %M17, align 4
  %cmp = icmp sle i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %26, 1
  %idxprom = sext i32 %sub to i64
  %27 = load float*, float** %fmp, align 8
  %arrayidx19 = getelementptr inbounds float, float* %27, i64 %idxprom
  %28 = load float, float* %arrayidx19, align 4
  %29 = load i32, i32* %k, align 4
  %sub20 = sub nsw i32 %29, 1
  %idxprom21 = sext i32 %sub20 to i64
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t22 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 21
  %31 = load float**, float*** %t22, align 8
  %arrayidx23 = getelementptr inbounds float*, float** %31, i64 %idxprom21
  %32 = load float*, float** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds float, float* %32, i64 0
  %33 = load float, float* %arrayidx24, align 4
  %mul25 = fmul float %28, %33
  %34 = load i32, i32* %k, align 4
  %sub26 = sub nsw i32 %34, 1
  %idxprom27 = sext i32 %sub26 to i64
  %35 = load float*, float** %fip, align 8
  %arrayidx28 = getelementptr inbounds float, float* %35, i64 %idxprom27
  %36 = load float, float* %arrayidx28, align 4
  %add29 = fadd float %mul25, %36
  %37 = load i32, i32* %k, align 4
  %sub30 = sub nsw i32 %37, 1
  %idxprom31 = sext i32 %sub30 to i64
  %38 = load float*, float** %fdp, align 8
  %arrayidx32 = getelementptr inbounds float, float* %38, i64 %idxprom31
  %39 = load float, float* %arrayidx32, align 4
  %40 = load i32, i32* %k, align 4
  %sub33 = sub nsw i32 %40, 1
  %idxprom34 = sext i32 %sub33 to i64
  %41 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t35 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 21
  %42 = load float**, float*** %t35, align 8
  %arrayidx36 = getelementptr inbounds float*, float** %42, i64 %idxprom34
  %43 = load float*, float** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds float, float* %43, i64 5
  %44 = load float, float* %arrayidx37, align 4
  %mul38 = fmul float %39, %44
  %add39 = fadd float %add29, %mul38
  %45 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %45 to i64
  %46 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %46, i32 0, i32 26
  %47 = load float*, float** %begin41, align 8
  %arrayidx42 = getelementptr inbounds float, float* %47, i64 %idxprom40
  %48 = load float, float* %arrayidx42, align 4
  %add43 = fadd float %add39, %48
  %49 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %49 to i64
  %50 = load float*, float** %fmp, align 8
  %arrayidx45 = getelementptr inbounds float, float* %50, i64 %idxprom44
  store float %add43, float* %arrayidx45, align 4
  %51 = load i32, i32* %k, align 4
  %sub46 = sub nsw i32 %51, 1
  %idxprom47 = sext i32 %sub46 to i64
  %52 = load float*, float** %fmp, align 8
  %arrayidx48 = getelementptr inbounds float, float* %52, i64 %idxprom47
  %53 = load float, float* %arrayidx48, align 4
  %54 = load i32, i32* %k, align 4
  %sub49 = sub nsw i32 %54, 1
  %idxprom50 = sext i32 %sub49 to i64
  %55 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t51 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %55, i32 0, i32 21
  %56 = load float**, float*** %t51, align 8
  %arrayidx52 = getelementptr inbounds float*, float** %56, i64 %idxprom50
  %57 = load float*, float** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds float, float* %57, i64 2
  %58 = load float, float* %arrayidx53, align 4
  %mul54 = fmul float %53, %58
  %59 = load i32, i32* %k, align 4
  %sub55 = sub nsw i32 %59, 1
  %idxprom56 = sext i32 %sub55 to i64
  %60 = load float*, float** %fdp, align 8
  %arrayidx57 = getelementptr inbounds float, float* %60, i64 %idxprom56
  %61 = load float, float* %arrayidx57, align 4
  %62 = load i32, i32* %k, align 4
  %sub58 = sub nsw i32 %62, 1
  %idxprom59 = sext i32 %sub58 to i64
  %63 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t60 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %63, i32 0, i32 21
  %64 = load float**, float*** %t60, align 8
  %arrayidx61 = getelementptr inbounds float*, float** %64, i64 %idxprom59
  %65 = load float*, float** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds float, float* %65, i64 6
  %66 = load float, float* %arrayidx62, align 4
  %mul63 = fmul float %61, %66
  %add64 = fadd float %mul54, %mul63
  %67 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %67 to i64
  %68 = load float*, float** %fdp, align 8
  %arrayidx66 = getelementptr inbounds float, float* %68, i64 %idxprom65
  store float %add64, float* %arrayidx66, align 4
  %69 = load i32, i32* %k, align 4
  %70 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M67 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 20
  %71 = load i32, i32* %M67, align 4
  %cmp68 = icmp slt i32 %69, %71
  br i1 %cmp68, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %72 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %72 to i64
  %73 = load float*, float** %fmp, align 8
  %arrayidx71 = getelementptr inbounds float, float* %73, i64 %idxprom70
  %74 = load float, float* %arrayidx71, align 4
  %75 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %75 to i64
  %76 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t73 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 21
  %77 = load float**, float*** %t73, align 8
  %arrayidx74 = getelementptr inbounds float*, float** %77, i64 %idxprom72
  %78 = load float*, float** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds float, float* %78, i64 1
  %79 = load float, float* %arrayidx75, align 4
  %mul76 = fmul float %74, %79
  %80 = load i32, i32* %k, align 4
  %idxprom77 = sext i32 %80 to i64
  %81 = load float*, float** %fip, align 8
  %arrayidx78 = getelementptr inbounds float, float* %81, i64 %idxprom77
  store float %mul76, float* %arrayidx78, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %82 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %82 to i64
  %83 = load float*, float** %fmp, align 8
  %arrayidx80 = getelementptr inbounds float, float* %83, i64 %idxprom79
  %84 = load float, float* %arrayidx80, align 4
  %85 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %85 to i64
  %86 = load float*, float** %fdp, align 8
  %arrayidx82 = getelementptr inbounds float, float* %86, i64 %idxprom81
  %87 = load float, float* %arrayidx82, align 4
  %add83 = fadd float %84, %87
  %88 = load i32, i32* %k, align 4
  %idxprom84 = sext i32 %88 to i64
  %89 = load float*, float** %fmp, align 8
  %arrayidx85 = getelementptr inbounds float, float* %89, i64 %idxprom84
  %90 = load float, float* %arrayidx85, align 4
  %div = fdiv float %90, %add83
  store float %div, float* %arrayidx85, align 4
  %91 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %91 to i64
  %92 = load float*, float** %fmp, align 8
  %arrayidx87 = getelementptr inbounds float, float* %92, i64 %idxprom86
  %93 = load float, float* %arrayidx87, align 4
  %94 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %94 to i64
  %95 = load float*, float** %fdp, align 8
  %arrayidx89 = getelementptr inbounds float, float* %95, i64 %idxprom88
  %96 = load float, float* %arrayidx89, align 4
  %add90 = fadd float %93, %96
  %97 = load i32, i32* %k, align 4
  %idxprom91 = sext i32 %97 to i64
  %98 = load float*, float** %fdp, align 8
  %arrayidx92 = getelementptr inbounds float, float* %98, i64 %idxprom91
  %99 = load float, float* %arrayidx92, align 4
  %div93 = fdiv float %99, %add90
  store float %div93, float* %arrayidx92, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %100 = load i32, i32* %k, align 4
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %101 = load float*, float** %fmp, align 8
  %102 = load float**, float*** %ret_mp.addr, align 8
  store float* %101, float** %102, align 8
  %103 = load float*, float** %fdp, align 8
  %104 = load float**, float*** %ret_dp.addr, align 8
  store float* %103, float** %104, align 8
  %105 = load float*, float** %fip, align 8
  %106 = load float**, float*** %ret_ip.addr, align 8
  store float* %105, float** %106, align 8
  ret void
}

declare i32 @FArgMax(float*, i32) #1

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
