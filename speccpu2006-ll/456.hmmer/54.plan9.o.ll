; ModuleID = 'plan9.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan9_s = type { i32, %struct.basic_state*, %struct.basic_state*, %struct.basic_state*, [20 x float], i8*, i8*, i8*, float*, i32 }
%struct.basic_state = type { [3 x float], [20 x float] }

@.str = private unnamed_addr constant [8 x i8] c"plan9.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unnamed\00", align 1
@Alphabet_size = external global i32, align 4
@Alphabet_type = external global i32, align 4
@aafq = external global [0 x float], align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"No support for non-protein, non-nucleic acid alphabets.\00", align 1

; Function Attrs: nounwind uwtable
define %struct.plan9_s* @P9AllocHMM(i32 %M) #0 {
entry:
  %M.addr = alloca i32, align 4
  %hmm = alloca %struct.plan9_s*, align 8
  store i32 %M, i32* %M.addr, align 4
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 35, i64 152)
  %0 = bitcast i8* %call to %struct.plan9_s*
  store %struct.plan9_s* %0, %struct.plan9_s** %hmm, align 8
  %1 = load i32, i32* %M.addr, align 4
  %add = add nsw i32 %1, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 92, %conv
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 36, i64 %mul)
  %2 = bitcast i8* %call1 to %struct.basic_state*
  %3 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ins = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %3, i32 0, i32 1
  store %struct.basic_state* %2, %struct.basic_state** %ins, align 8
  %4 = load i32, i32* %M.addr, align 4
  %add2 = add nsw i32 %4, 2
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 92, %conv3
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 37, i64 %mul4)
  %5 = bitcast i8* %call5 to %struct.basic_state*
  %6 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %del = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %6, i32 0, i32 3
  store %struct.basic_state* %5, %struct.basic_state** %del, align 8
  %7 = load i32, i32* %M.addr, align 4
  %add6 = add nsw i32 %7, 2
  %conv7 = sext i32 %add6 to i64
  %mul8 = mul i64 92, %conv7
  %call9 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 38, i64 %mul8)
  %8 = bitcast i8* %call9 to %struct.basic_state*
  %9 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %mat = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %9, i32 0, i32 2
  store %struct.basic_state* %8, %struct.basic_state** %mat, align 8
  %10 = load i32, i32* %M.addr, align 4
  %add10 = add nsw i32 %10, 2
  %conv11 = sext i32 %add10 to i64
  %mul12 = mul i64 %conv11, 1
  %call13 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 39, i64 %mul12)
  %11 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %ref = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %11, i32 0, i32 6
  store i8* %call13, i8** %ref, align 8
  %12 = load i32, i32* %M.addr, align 4
  %add14 = add nsw i32 %12, 2
  %conv15 = sext i32 %add14 to i64
  %mul16 = mul i64 %conv15, 1
  %call17 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 40, i64 %mul16)
  %13 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %cs = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %13, i32 0, i32 7
  store i8* %call17, i8** %cs, align 8
  %14 = load i32, i32* %M.addr, align 4
  %add18 = add nsw i32 %14, 2
  %conv19 = sext i32 %add18 to i64
  %mul20 = mul i64 %conv19, 4
  %mul21 = mul i64 %mul20, 4
  %call22 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 41, i64 %mul21)
  %15 = bitcast i8* %call22 to float*
  %16 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %xray = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %16, i32 0, i32 8
  store float* %15, float** %xray, align 8
  %17 = load i32, i32* %M.addr, align 4
  %18 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %M23 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %18, i32 0, i32 0
  store i32 %17, i32* %M23, align 4
  %call24 = call i8* @Strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %19 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %name = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %19, i32 0, i32 5
  store i8* %call24, i8** %name, align 8
  %20 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  %flags = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %20, i32 0, i32 9
  store i32 0, i32* %flags, align 4
  %21 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  call void @P9ZeroHMM(%struct.plan9_s* %21)
  %22 = load %struct.plan9_s*, %struct.plan9_s** %hmm, align 8
  ret %struct.plan9_s* %22
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare i8* @Strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @P9ZeroHMM(%struct.plan9_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan9_s*, align 8
  %k = alloca i32, align 4
  %ts = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.plan9_s* %hmm, %struct.plan9_s** %hmm.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %1, i32 0, i32 0
  %2 = load i32, i32* %M, align 4
  %add = add nsw i32 %2, 1
  %cmp = icmp sle i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ts, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %ts, align 4
  %cmp2 = icmp slt i32 %3, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %ts, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %6, i32 0, i32 2
  %7 = load %struct.basic_state*, %struct.basic_state** %mat, align 8
  %arrayidx = getelementptr inbounds %struct.basic_state, %struct.basic_state* %7, i64 %idxprom4
  %t = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x float], [3 x float]* %t, i32 0, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx5, align 4
  %8 = load i32, i32* %ts, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %10, i32 0, i32 1
  %11 = load %struct.basic_state*, %struct.basic_state** %ins, align 8
  %arrayidx8 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %11, i64 %idxprom7
  %t9 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x float], [3 x float]* %t9, i32 0, i64 %idxprom6
  store float 0.000000e+00, float* %arrayidx10, align 4
  %12 = load i32, i32* %ts, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %del = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %14, i32 0, i32 3
  %15 = load %struct.basic_state*, %struct.basic_state** %del, align 8
  %arrayidx13 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %15, i64 %idxprom12
  %t14 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x float], [3 x float]* %t14, i32 0, i64 %idxprom11
  store float 0.000000e+00, float* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %16 = load i32, i32* %ts, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %ts, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %idx, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.36, %for.end
  %17 = load i32, i32* %idx, align 4
  %18 = load i32, i32* @Alphabet_size, align 4
  %cmp17 = icmp slt i32 %17, %18
  br i1 %cmp17, label %for.body.18, label %for.end.38

for.body.18:                                      ; preds = %for.cond.16
  %19 = load i32, i32* %idx, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat21 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %21, i32 0, i32 2
  %22 = load %struct.basic_state*, %struct.basic_state** %mat21, align 8
  %arrayidx22 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %22, i64 %idxprom20
  %p = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx22, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i64 %idxprom19
  store float 0.000000e+00, float* %arrayidx23, align 4
  %23 = load i32, i32* %idx, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins26 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %25, i32 0, i32 1
  %26 = load %struct.basic_state*, %struct.basic_state** %ins26, align 8
  %arrayidx27 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %26, i64 %idxprom25
  %p28 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx27, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %p28, i32 0, i64 %idxprom24
  store float 0.000000e+00, float* %arrayidx29, align 4
  %27 = load i32, i32* %idx, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %del32 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %29, i32 0, i32 3
  %30 = load %struct.basic_state*, %struct.basic_state** %del32, align 8
  %arrayidx33 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %30, i64 %idxprom31
  %p34 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %p34, i32 0, i64 %idxprom30
  store float 0.000000e+00, float* %arrayidx35, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.18
  %31 = load i32, i32* %idx, align 4
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, i32* %idx, align 4
  br label %for.cond.16

for.end.38:                                       ; preds = %for.cond.16
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %32 = load i32, i32* %k, align 4
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, i32* %k, align 4
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @P9FreeHMM(%struct.plan9_s* %hmm) #0 {
entry:
  %retval = alloca i32, align 4
  %hmm.addr = alloca %struct.plan9_s*, align 8
  store %struct.plan9_s* %hmm, %struct.plan9_s** %hmm.addr, align 8
  %0 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %cmp = icmp eq %struct.plan9_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ref = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %1, i32 0, i32 6
  %2 = load i8*, i8** %ref, align 8
  call void @free(i8* %2) #3
  %3 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %cs = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %3, i32 0, i32 7
  %4 = load i8*, i8** %cs, align 8
  call void @free(i8* %4) #3
  %5 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %xray = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %5, i32 0, i32 8
  %6 = load float*, float** %xray, align 8
  %7 = bitcast float* %6 to i8*
  call void @free(i8* %7) #3
  %8 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %name = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %8, i32 0, i32 5
  %9 = load i8*, i8** %name, align 8
  call void @free(i8* %9) #3
  %10 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %10, i32 0, i32 2
  %11 = load %struct.basic_state*, %struct.basic_state** %mat, align 8
  %cmp1 = icmp ne %struct.basic_state* %11, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %12 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat3 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %12, i32 0, i32 2
  %13 = load %struct.basic_state*, %struct.basic_state** %mat3, align 8
  %14 = bitcast %struct.basic_state* %13 to i8*
  call void @free(i8* %14) #3
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %15 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %15, i32 0, i32 1
  %16 = load %struct.basic_state*, %struct.basic_state** %ins, align 8
  %cmp5 = icmp ne %struct.basic_state* %16, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %17 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins7 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %17, i32 0, i32 1
  %18 = load %struct.basic_state*, %struct.basic_state** %ins7, align 8
  %19 = bitcast %struct.basic_state* %18 to i8*
  call void @free(i8* %19) #3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %20 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %del = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %20, i32 0, i32 3
  %21 = load %struct.basic_state*, %struct.basic_state** %del, align 8
  %cmp9 = icmp ne %struct.basic_state* %21, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %22 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %del11 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %22, i32 0, i32 3
  %23 = load %struct.basic_state*, %struct.basic_state** %del11, align 8
  %24 = bitcast %struct.basic_state* %23 to i8*
  call void @free(i8* %24) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %25 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %26 = bitcast %struct.plan9_s* %25 to i8*
  call void @free(i8* %26) #3
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @P9Renormalize(%struct.plan9_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan9_s*, align 8
  %k = alloca i32, align 4
  store %struct.plan9_s* %hmm, %struct.plan9_s** %hmm.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %1, i32 0, i32 0
  %2 = load i32, i32* %M, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %4, i32 0, i32 2
  %5 = load %struct.basic_state*, %struct.basic_state** %mat, align 8
  %arrayidx = getelementptr inbounds %struct.basic_state, %struct.basic_state* %5, i64 %idxprom
  %t = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %t, i32 0, i32 0
  call void @FNorm(float* %arraydecay, i32 3)
  %6 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %7, i32 0, i32 1
  %8 = load %struct.basic_state*, %struct.basic_state** %ins, align 8
  %arrayidx2 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %8, i64 %idxprom1
  %t3 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx2, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [3 x float], [3 x float]* %t3, i32 0, i32 0
  call void @FNorm(float* %arraydecay4, i32 3)
  %9 = load i32, i32* %k, align 4
  %cmp5 = icmp sgt i32 %9, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %del = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %11, i32 0, i32 3
  %12 = load %struct.basic_state*, %struct.basic_state** %del, align 8
  %arrayidx7 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %12, i64 %idxprom6
  %t8 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx7, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [3 x float], [3 x float]* %t8, i32 0, i32 0
  call void @FNorm(float* %arraydecay9, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32, i32* %k, align 4
  %cmp10 = icmp sgt i32 %13, 0
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end
  %14 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat13 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %15, i32 0, i32 2
  %16 = load %struct.basic_state*, %struct.basic_state** %mat13, align 8
  %arrayidx14 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %16, i64 %idxprom12
  %p = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx14, i32 0, i32 1
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0
  %17 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %arraydecay15, i32 %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.end
  %18 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins18 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %19, i32 0, i32 1
  %20 = load %struct.basic_state*, %struct.basic_state** %ins18, align 8
  %arrayidx19 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %20, i64 %idxprom17
  %p20 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx19, i32 0, i32 1
  %arraydecay21 = getelementptr inbounds [20 x float], [20 x float]* %p20, i32 0, i32 0
  %21 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %arraydecay21, i32 %21)
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @FNorm(float*, i32) #1

; Function Attrs: nounwind uwtable
define void @P9DefaultNullModel(float* %null) #0 {
entry:
  %null.addr = alloca float*, align 8
  %x = alloca i32, align 4
  store float* %null, float** %null.addr, align 8
  %0 = load i32, i32* @Alphabet_type, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* @Alphabet_size, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x float], [0 x float]* @aafq, i32 0, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load float*, float** %null.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %6, i64 %idxprom2
  store float %4, float* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.else:                                          ; preds = %entry
  %8 = load i32, i32* @Alphabet_type, align 4
  %cmp4 = icmp eq i32 %8, 2
  br i1 %cmp4, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %x, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.11, %if.then.5
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* @Alphabet_size, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body.8, label %for.end.13

for.body.8:                                       ; preds = %for.cond.6
  %11 = load i32, i32* %x, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load float*, float** %null.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %12, i64 %idxprom9
  store float 2.500000e-01, float* %arrayidx10, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.8
  %13 = load i32, i32* %x, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %x, align 4
  br label %for.cond.6

for.end.13:                                       ; preds = %for.cond.6
  br label %if.end

if.else.14:                                       ; preds = %if.else
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.14, %for.end.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %for.end
  ret void
}

declare void @Die(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
