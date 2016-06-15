; ModuleID = 'histogram.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histogram_s = type { i32*, i32, i32, i32, i32, i32, i32, float*, i32, [3 x float], float, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"histogram.c\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"AddToHistogram(): Can't add to a fitted histogram\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%5s %6s %6s  (one = represents %d sequences)\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"obs\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%5s %6s %6s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"<%4d %6d %6s|\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"oops\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c">%4d %6d %6s|\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%5d %6d %6d|\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%5d %6d %6s|\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"\0A\0A%% No statistical fit available\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"\0A\0A%% Statistical details of theoretical EVD fit:\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"              mu = %10.4f\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"          lambda = %10.4f\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"chi-sq statistic = %10.4f\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"  P(chi-square)  = %10.4g\0A\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"\0A\0A%% Statistical details of theoretical Gaussian fit:\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"            mean = %10.4f\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"              sd = %10.4f\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%-6d %f\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"&\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.histogram_s* @AllocHistogram(i32 %min, i32 %max, i32 %lumpsize) #0 {
entry:
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %lumpsize.addr = alloca i32, align 4
  %h = alloca %struct.histogram_s*, align 8
  %newsize = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store i32 %lumpsize, i32* %lumpsize.addr, align 4
  %0 = load i32, i32* %max.addr, align 4
  %1 = load i32, i32* %min.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %newsize, align 4
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 68, i64 64)
  %2 = bitcast i8* %call to %struct.histogram_s*
  store %struct.histogram_s* %2, %struct.histogram_s** %h, align 8
  %3 = load i32, i32* %min.addr, align 4
  %4 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  %min1 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %4, i32 0, i32 1
  store i32 %3, i32* %min1, align 4
  %5 = load i32, i32* %max.addr, align 4
  %6 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  %max2 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %6, i32 0, i32 2
  store i32 %5, i32* %max2, align 4
  %7 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  %total = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %7, i32 0, i32 6
  store i32 0, i32* %total, align 4
  %8 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %8, i32 0, i32 4
  store i32 2147483647, i32* %lowscore, align 4
  %9 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %9, i32 0, i32 3
  store i32 -2147483648, i32* %highscore, align 4
  %10 = load i32, i32* %lumpsize.addr, align 4
  %11 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  %lumpsize3 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %11, i32 0, i32 5
  store i32 %10, i32* %lumpsize3, align 4
  %12 = load i32, i32* %newsize, align 4
  %conv = sext i32 %12 to i64
  %mul = mul i64 4, %conv
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 75, i64 %mul)
  %13 = bitcast i8* %call4 to i32*
  %14 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %14, i32 0, i32 0
  store i32* %13, i32** %histogram, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %newsize, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  %histogram6 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %18, i32 0, i32 0
  %19 = load i32*, i32** %histogram6, align 8
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  %expect = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %21, i32 0, i32 7
  store float* null, float** %expect, align 8
  %22 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  %fit_type = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %22, i32 0, i32 8
  store i32 0, i32* %fit_type, align 4
  %23 = load %struct.histogram_s*, %struct.histogram_s** %h, align 8
  ret %struct.histogram_s* %23
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define void @FreeHistogram(%struct.histogram_s* %h) #0 {
entry:
  %h.addr = alloca %struct.histogram_s*, align 8
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %0, i32 0, i32 0
  %1 = load i32*, i32** %histogram, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #4
  %3 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %3, i32 0, i32 7
  %4 = load float*, float** %expect, align 8
  %cmp = icmp ne float* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect1 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %5, i32 0, i32 7
  %6 = load float*, float** %expect1, align 8
  %7 = bitcast float* %6 to i8*
  call void @free(i8* %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %9 = bitcast %struct.histogram_s* %8 to i8*
  call void @free(i8* %9) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @UnfitHistogram(%struct.histogram_s* %h) #0 {
entry:
  %h.addr = alloca %struct.histogram_s*, align 8
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %0, i32 0, i32 7
  %1 = load float*, float** %expect, align 8
  %cmp = icmp ne float* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect1 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %2, i32 0, i32 7
  %3 = load float*, float** %expect1, align 8
  %4 = bitcast float* %3 to i8*
  call void @free(i8* %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect2 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %5, i32 0, i32 7
  store float* null, float** %expect2, align 8
  %6 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %6, i32 0, i32 8
  store i32 0, i32* %fit_type, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @AddToHistogram(%struct.histogram_s* %h, float %sc) #0 {
entry:
  %h.addr = alloca %struct.histogram_s*, align 8
  %sc.addr = alloca float, align 4
  %score = alloca i32, align 4
  %moveby = alloca i32, align 4
  %prevsize = alloca i32, align 4
  %newsize = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  store float %sc, float* %sc.addr, align 4
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %0, i32 0, i32 8
  %1 = load i32, i32* %fit_type, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load float, float* %sc.addr, align 4
  %conv = fpext float %2 to double
  %call = call double @floor(double %conv) #5
  %conv1 = fptosi double %call to i32
  store i32 %conv1, i32* %score, align 4
  %3 = load i32, i32* %score, align 4
  %4 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %4, i32 0, i32 1
  %5 = load i32, i32* %min, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %6, i32 0, i32 2
  %7 = load i32, i32* %max, align 4
  %8 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min5 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %8, i32 0, i32 1
  %9 = load i32, i32* %min5, align 4
  %sub = sub nsw i32 %7, %9
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %prevsize, align 4
  %10 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min6 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %10, i32 0, i32 1
  %11 = load i32, i32* %min6, align 4
  %12 = load i32, i32* %score, align 4
  %sub7 = sub nsw i32 %11, %12
  %13 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lumpsize = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %13, i32 0, i32 5
  %14 = load i32, i32* %lumpsize, align 4
  %add8 = add nsw i32 %sub7, %14
  store i32 %add8, i32* %moveby, align 4
  %15 = load i32, i32* %prevsize, align 4
  %16 = load i32, i32* %moveby, align 4
  %add9 = add nsw i32 %15, %16
  store i32 %add9, i32* %newsize, align 4
  %17 = load i32, i32* %moveby, align 4
  %18 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min10 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %18, i32 0, i32 1
  %19 = load i32, i32* %min10, align 4
  %sub11 = sub nsw i32 %19, %17
  store i32 %sub11, i32* %min10, align 4
  %20 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %20, i32 0, i32 0
  %21 = load i32*, i32** %histogram, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i32, i32* %newsize, align 4
  %conv12 = sext i32 %23 to i64
  %mul = mul i64 4, %conv12
  %call13 = call i8* @sre_realloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 148, i8* %22, i64 %mul)
  %24 = bitcast i8* %call13 to i32*
  %25 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram14 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %25, i32 0, i32 0
  store i32* %24, i32** %histogram14, align 8
  %26 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram15 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %26, i32 0, i32 0
  %27 = load i32*, i32** %histogram15, align 8
  %28 = load i32, i32* %moveby, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i32, i32* %27, i64 %idx.ext
  %29 = bitcast i32* %add.ptr to i8*
  %30 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram16 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %30, i32 0, i32 0
  %31 = load i32*, i32** %histogram16, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i32, i32* %prevsize, align 4
  %conv17 = sext i32 %33 to i64
  %mul18 = mul i64 4, %conv17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %29, i8* %32, i64 %mul18, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %moveby, align 4
  %cmp19 = icmp slt i32 %34, %35
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram21 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %37, i32 0, i32 0
  %38 = load i32*, i32** %histogram21, align 8
  %arrayidx = getelementptr inbounds i32, i32* %38, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.53

if.else:                                          ; preds = %if.end
  %40 = load i32, i32* %score, align 4
  %41 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max22 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %41, i32 0, i32 2
  %42 = load i32, i32* %max22, align 4
  %cmp23 = icmp sgt i32 %40, %42
  br i1 %cmp23, label %if.then.25, label %if.end.52

if.then.25:                                       ; preds = %if.else
  %43 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max26 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %43, i32 0, i32 2
  %44 = load i32, i32* %max26, align 4
  %45 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min27 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %45, i32 0, i32 1
  %46 = load i32, i32* %min27, align 4
  %sub28 = sub nsw i32 %44, %46
  %add29 = add nsw i32 %sub28, 1
  store i32 %add29, i32* %prevsize, align 4
  %47 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lumpsize30 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %47, i32 0, i32 5
  %48 = load i32, i32* %lumpsize30, align 4
  %49 = load i32, i32* %score, align 4
  %add31 = add nsw i32 %48, %49
  %50 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max32 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %50, i32 0, i32 2
  store i32 %add31, i32* %max32, align 4
  %51 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max33 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %51, i32 0, i32 2
  %52 = load i32, i32* %max33, align 4
  %53 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min34 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %53, i32 0, i32 1
  %54 = load i32, i32* %min34, align 4
  %sub35 = sub nsw i32 %52, %54
  %add36 = add nsw i32 %sub35, 1
  store i32 %add36, i32* %newsize, align 4
  %55 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram37 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %55, i32 0, i32 0
  %56 = load i32*, i32** %histogram37, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load i32, i32* %newsize, align 4
  %conv38 = sext i32 %58 to i64
  %mul39 = mul i64 4, %conv38
  %call40 = call i8* @sre_realloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 159, i8* %57, i64 %mul39)
  %59 = bitcast i8* %call40 to i32*
  %60 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram41 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %60, i32 0, i32 0
  store i32* %59, i32** %histogram41, align 8
  %61 = load i32, i32* %prevsize, align 4
  store i32 %61, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.49, %if.then.25
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %newsize, align 4
  %cmp43 = icmp slt i32 %62, %63
  br i1 %cmp43, label %for.body.45, label %for.end.51

for.body.45:                                      ; preds = %for.cond.42
  %64 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %64 to i64
  %65 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram47 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %65, i32 0, i32 0
  %66 = load i32*, i32** %histogram47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %66, i64 %idxprom46
  store i32 0, i32* %arrayidx48, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.45
  %67 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %67, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.42

for.end.51:                                       ; preds = %for.cond.42
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %if.else
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %for.end
  %68 = load i32, i32* %score, align 4
  %69 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min54 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %69, i32 0, i32 1
  %70 = load i32, i32* %min54, align 4
  %sub55 = sub nsw i32 %68, %70
  %idxprom56 = sext i32 %sub55 to i64
  %71 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram57 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %71, i32 0, i32 0
  %72 = load i32*, i32** %histogram57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %72, i64 %idxprom56
  %73 = load i32, i32* %arrayidx58, align 4
  %inc59 = add nsw i32 %73, 1
  store i32 %inc59, i32* %arrayidx58, align 4
  %74 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %74, i32 0, i32 6
  %75 = load i32, i32* %total, align 4
  %inc60 = add nsw i32 %75, 1
  store i32 %inc60, i32* %total, align 4
  %76 = load i32, i32* %score, align 4
  %77 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %77, i32 0, i32 4
  %78 = load i32, i32* %lowscore, align 4
  %cmp61 = icmp slt i32 %76, %78
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.53
  %79 = load i32, i32* %score, align 4
  %80 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore64 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %80, i32 0, i32 4
  store i32 %79, i32* %lowscore64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.53
  %81 = load i32, i32* %score, align 4
  %82 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %82, i32 0, i32 3
  %83 = load i32, i32* %highscore, align 4
  %cmp66 = icmp sgt i32 %81, %83
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.65
  %84 = load i32, i32* %score, align 4
  %85 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore69 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %85, i32 0, i32 3
  store i32 %84, i32* %highscore69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.65
  ret void
}

declare void @Die(i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @PrintASCIIHistogram(%struct._IO_FILE* %fp, %struct.histogram_s* %h) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %h.addr = alloca %struct.histogram_s*, align 8
  %units = alloca i32, align 4
  %maxbar = alloca i32, align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %idx = alloca i32, align 4
  %buffer = alloca [81 x i8], align 16
  %pos = alloca i32, align 4
  %lowbound = alloca i32, align 4
  %lowcount = alloca i32, align 4
  %highbound = alloca i32, align 4
  %highcount = alloca i32, align 4
  %emptybins = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  store i32 3, i32* %emptybins, align 4
  store i32 0, i32* %maxbar, align 4
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %0, i32 0, i32 4
  %1 = load i32, i32* %lowscore, align 4
  %2 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %2, i32 0, i32 1
  %3 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %5, i32 0, i32 3
  %6 = load i32, i32* %highscore, align 4
  %7 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min1 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %7, i32 0, i32 1
  %8 = load i32, i32* %min1, align 4
  %sub2 = sub nsw i32 %6, %8
  %cmp = icmp sle i32 %4, %sub2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %10, i32 0, i32 0
  %11 = load i32*, i32** %histogram, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %13 = load i32, i32* %maxbar, align 4
  %cmp3 = icmp sgt i32 %12, %13
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram5 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %15, i32 0, i32 0
  %16 = load i32*, i32** %histogram5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %16, i64 %idxprom4
  %17 = load i32, i32* %arrayidx6, align 4
  store i32 %17, i32* %maxbar, align 4
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min7 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %19, i32 0, i32 1
  %20 = load i32, i32* %min7, align 4
  %add = add nsw i32 %18, %20
  store i32 %add, i32* %lowbound, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %lowbound, align 4
  store i32 %22, i32* %highbound, align 4
  store i32 0, i32* %num, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.25, %for.end
  %23 = load i32, i32* %lowbound, align 4
  %24 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore9 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %24, i32 0, i32 4
  %25 = load i32, i32* %lowscore9, align 4
  %cmp10 = icmp sgt i32 %23, %25
  br i1 %cmp10, label %for.body.11, label %for.end.26

for.body.11:                                      ; preds = %for.cond.8
  %26 = load i32, i32* %lowbound, align 4
  %27 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min12 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %27, i32 0, i32 1
  %28 = load i32, i32* %min12, align 4
  %sub13 = sub nsw i32 %26, %28
  store i32 %sub13, i32* %i, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %29 to i64
  %30 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram15 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %30, i32 0, i32 0
  %31 = load i32*, i32** %histogram15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %31, i64 %idxprom14
  %32 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp sgt i32 %32, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.11
  store i32 0, i32* %num, align 4
  br label %for.inc.25

if.end.19:                                        ; preds = %for.body.11
  %33 = load i32, i32* %num, align 4
  %inc20 = add nsw i32 %33, 1
  store i32 %inc20, i32* %num, align 4
  %34 = load i32, i32* %emptybins, align 4
  %cmp21 = icmp eq i32 %inc20, %34
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %35 = load i32, i32* %emptybins, align 4
  %36 = load i32, i32* %lowbound, align 4
  %add23 = add nsw i32 %36, %35
  store i32 %add23, i32* %lowbound, align 4
  br label %for.end.26

if.end.24:                                        ; preds = %if.end.19
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24, %if.then.18
  %37 = load i32, i32* %lowbound, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %lowbound, align 4
  br label %for.cond.8

for.end.26:                                       ; preds = %if.then.22, %for.cond.8
  store i32 0, i32* %num, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.44, %for.end.26
  %38 = load i32, i32* %highbound, align 4
  %39 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore28 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %39, i32 0, i32 3
  %40 = load i32, i32* %highscore28, align 4
  %cmp29 = icmp slt i32 %38, %40
  br i1 %cmp29, label %for.body.30, label %for.end.46

for.body.30:                                      ; preds = %for.cond.27
  %41 = load i32, i32* %highbound, align 4
  %42 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min31 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %42, i32 0, i32 1
  %43 = load i32, i32* %min31, align 4
  %sub32 = sub nsw i32 %41, %43
  store i32 %sub32, i32* %i, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram34 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %45, i32 0, i32 0
  %46 = load i32*, i32** %histogram34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %46, i64 %idxprom33
  %47 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp sgt i32 %47, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.30
  store i32 0, i32* %num, align 4
  br label %for.inc.44

if.end.38:                                        ; preds = %for.body.30
  %48 = load i32, i32* %num, align 4
  %inc39 = add nsw i32 %48, 1
  store i32 %inc39, i32* %num, align 4
  %49 = load i32, i32* %emptybins, align 4
  %cmp40 = icmp eq i32 %inc39, %49
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.38
  %50 = load i32, i32* %emptybins, align 4
  %51 = load i32, i32* %highbound, align 4
  %sub42 = sub nsw i32 %51, %50
  store i32 %sub42, i32* %highbound, align 4
  br label %for.end.46

if.end.43:                                        ; preds = %if.end.38
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43, %if.then.37
  %52 = load i32, i32* %highbound, align 4
  %inc45 = add nsw i32 %52, 1
  store i32 %inc45, i32* %highbound, align 4
  br label %for.cond.27

for.end.46:                                       ; preds = %if.then.41, %for.cond.27
  store i32 0, i32* %lowcount, align 4
  %53 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore47 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %53, i32 0, i32 4
  %54 = load i32, i32* %lowscore47, align 4
  %55 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min48 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %55, i32 0, i32 1
  %56 = load i32, i32* %min48, align 4
  %sub49 = sub nsw i32 %54, %56
  store i32 %sub49, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.59, %for.end.46
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %lowbound, align 4
  %59 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min51 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %59, i32 0, i32 1
  %60 = load i32, i32* %min51, align 4
  %sub52 = sub nsw i32 %58, %60
  %cmp53 = icmp sle i32 %57, %sub52
  br i1 %cmp53, label %for.body.54, label %for.end.61

for.body.54:                                      ; preds = %for.cond.50
  %61 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %61 to i64
  %62 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram56 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %62, i32 0, i32 0
  %63 = load i32*, i32** %histogram56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %63, i64 %idxprom55
  %64 = load i32, i32* %arrayidx57, align 4
  %65 = load i32, i32* %lowcount, align 4
  %add58 = add nsw i32 %65, %64
  store i32 %add58, i32* %lowcount, align 4
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.54
  %66 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %66, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.50

for.end.61:                                       ; preds = %for.cond.50
  store i32 0, i32* %highcount, align 4
  %67 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore62 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %67, i32 0, i32 3
  %68 = load i32, i32* %highscore62, align 4
  %69 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min63 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %69, i32 0, i32 1
  %70 = load i32, i32* %min63, align 4
  %sub64 = sub nsw i32 %68, %70
  store i32 %sub64, i32* %i, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.74, %for.end.61
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %highbound, align 4
  %73 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min66 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %73, i32 0, i32 1
  %74 = load i32, i32* %min66, align 4
  %sub67 = sub nsw i32 %72, %74
  %cmp68 = icmp sge i32 %71, %sub67
  br i1 %cmp68, label %for.body.69, label %for.end.76

for.body.69:                                      ; preds = %for.cond.65
  %75 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %75 to i64
  %76 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram71 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %76, i32 0, i32 0
  %77 = load i32*, i32** %histogram71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %77, i64 %idxprom70
  %78 = load i32, i32* %arrayidx72, align 4
  %79 = load i32, i32* %highcount, align 4
  %add73 = add nsw i32 %79, %78
  store i32 %add73, i32* %highcount, align 4
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.69
  %80 = load i32, i32* %i, align 4
  %dec75 = add nsw i32 %80, -1
  store i32 %dec75, i32* %i, align 4
  br label %for.cond.65

for.end.76:                                       ; preds = %for.cond.65
  %81 = load i32, i32* %lowcount, align 4
  %82 = load i32, i32* %maxbar, align 4
  %cmp77 = icmp sgt i32 %81, %82
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %for.end.76
  %83 = load i32, i32* %lowcount, align 4
  store i32 %83, i32* %maxbar, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %for.end.76
  %84 = load i32, i32* %highcount, align 4
  %85 = load i32, i32* %maxbar, align 4
  %cmp80 = icmp sgt i32 %84, %85
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.79
  %86 = load i32, i32* %highcount, align 4
  store i32 %86, i32* %maxbar, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.end.79
  %87 = load i32, i32* %maxbar, align 4
  %sub83 = sub nsw i32 %87, 1
  %div = sdiv i32 %sub83, 59
  %add84 = add nsw i32 %div, 1
  store i32 %add84, i32* %units, align 4
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %89 = load i32, i32* %units, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %89)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  %arrayidx86 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i64 80
  store i8 0, i8* %arrayidx86, align 1
  %arrayidx87 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i64 79
  store i8 10, i8* %arrayidx87, align 1
  %91 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore88 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %91, i32 0, i32 4
  %92 = load i32, i32* %lowscore88, align 4
  store i32 %92, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.222, %if.end.82
  %93 = load i32, i32* %i, align 4
  %94 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore90 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %94, i32 0, i32 3
  %95 = load i32, i32* %highscore90, align 4
  %cmp91 = icmp sle i32 %93, %95
  br i1 %cmp91, label %for.body.92, label %for.end.224

for.body.92:                                      ; preds = %for.cond.89
  %96 = bitcast [81 x i8]* %buffer to i8*
  call void @llvm.memset.p0i8.i64(i8* %96, i8 32, i64 79, i32 16, i1 false)
  %97 = load i32, i32* %i, align 4
  %98 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min93 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %98, i32 0, i32 1
  %99 = load i32, i32* %min93, align 4
  %sub94 = sub nsw i32 %97, %99
  store i32 %sub94, i32* %idx, align 4
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %lowbound, align 4
  %cmp95 = icmp slt i32 %100, %101
  br i1 %cmp95, label %if.then.96, label %if.else

if.then.96:                                       ; preds = %for.body.92
  br label %for.inc.222

if.else:                                          ; preds = %for.body.92
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %highbound, align 4
  %cmp97 = icmp sgt i32 %102, %103
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.else
  br label %for.inc.222

if.else.99:                                       ; preds = %if.else
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %lowbound, align 4
  %cmp100 = icmp eq i32 %104, %105
  br i1 %cmp100, label %land.lhs.true, label %if.else.126

land.lhs.true:                                    ; preds = %if.else.99
  %106 = load i32, i32* %i, align 4
  %107 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore101 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %107, i32 0, i32 4
  %108 = load i32, i32* %lowscore101, align 4
  %cmp102 = icmp ne i32 %106, %108
  br i1 %cmp102, label %if.then.103, label %if.else.126

if.then.103:                                      ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i32 0
  %109 = load i32, i32* %i, align 4
  %add104 = add nsw i32 %109, 1
  %110 = load i32, i32* %lowcount, align 4
  %call105 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %add104, i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #4
  %111 = load i32, i32* %lowcount, align 4
  %cmp106 = icmp sgt i32 %111, 0
  br i1 %cmp106, label %if.then.107, label %if.end.123

if.then.107:                                      ; preds = %if.then.103
  %112 = load i32, i32* %lowcount, align 4
  %sub108 = sub nsw i32 %112, 1
  %113 = load i32, i32* %units, align 4
  %div109 = sdiv i32 %sub108, %113
  %add110 = add nsw i32 1, %div109
  store i32 %add110, i32* %num, align 4
  %114 = load i32, i32* %num, align 4
  %cmp111 = icmp sgt i32 %114, 60
  br i1 %cmp111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.then.107
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.then.107
  store i32 20, i32* %pos, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.120, %if.end.113
  %115 = load i32, i32* %num, align 4
  %cmp115 = icmp sgt i32 %115, 0
  br i1 %cmp115, label %for.body.116, label %for.end.122

for.body.116:                                     ; preds = %for.cond.114
  %116 = load i32, i32* %pos, align 4
  %inc117 = add nsw i32 %116, 1
  store i32 %inc117, i32* %pos, align 4
  %idxprom118 = sext i32 %116 to i64
  %arrayidx119 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i64 %idxprom118
  store i8 61, i8* %arrayidx119, align 1
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.116
  %117 = load i32, i32* %num, align 4
  %dec121 = add nsw i32 %117, -1
  store i32 %dec121, i32* %num, align 4
  br label %for.cond.114

for.end.122:                                      ; preds = %for.cond.114
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.122, %if.then.103
  %arraydecay124 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i32 0
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call125 = call i32 @fputs(i8* %arraydecay124, %struct._IO_FILE* %118)
  br label %for.inc.222

if.else.126:                                      ; preds = %land.lhs.true, %if.else.99
  %119 = load i32, i32* %i, align 4
  %120 = load i32, i32* %highbound, align 4
  %cmp127 = icmp eq i32 %119, %120
  br i1 %cmp127, label %land.lhs.true.128, label %if.end.151

land.lhs.true.128:                                ; preds = %if.else.126
  %121 = load i32, i32* %i, align 4
  %122 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore129 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %122, i32 0, i32 3
  %123 = load i32, i32* %highscore129, align 4
  %cmp130 = icmp ne i32 %121, %123
  br i1 %cmp130, label %if.then.131, label %if.end.151

if.then.131:                                      ; preds = %land.lhs.true.128
  %arraydecay132 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i32 0
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %highcount, align 4
  %call133 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %124, i32 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #4
  %126 = load i32, i32* %highcount, align 4
  %cmp134 = icmp sgt i32 %126, 0
  br i1 %cmp134, label %if.then.135, label %if.end.148

if.then.135:                                      ; preds = %if.then.131
  %127 = load i32, i32* %highcount, align 4
  %sub136 = sub nsw i32 %127, 1
  %128 = load i32, i32* %units, align 4
  %div137 = sdiv i32 %sub136, %128
  %add138 = add nsw i32 1, %div137
  store i32 %add138, i32* %num, align 4
  store i32 20, i32* %pos, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.145, %if.then.135
  %129 = load i32, i32* %num, align 4
  %cmp140 = icmp sgt i32 %129, 0
  br i1 %cmp140, label %for.body.141, label %for.end.147

for.body.141:                                     ; preds = %for.cond.139
  %130 = load i32, i32* %pos, align 4
  %inc142 = add nsw i32 %130, 1
  store i32 %inc142, i32* %pos, align 4
  %idxprom143 = sext i32 %130 to i64
  %arrayidx144 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i64 %idxprom143
  store i8 61, i8* %arrayidx144, align 1
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.body.141
  %131 = load i32, i32* %num, align 4
  %dec146 = add nsw i32 %131, -1
  store i32 %dec146, i32* %num, align 4
  br label %for.cond.139

for.end.147:                                      ; preds = %for.cond.139
  br label %if.end.148

if.end.148:                                       ; preds = %for.end.147, %if.then.131
  %arraydecay149 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i32 0
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call150 = call i32 @fputs(i8* %arraydecay149, %struct._IO_FILE* %132)
  br label %for.inc.222

if.end.151:                                       ; preds = %land.lhs.true.128, %if.else.126
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153
  %133 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %133, i32 0, i32 8
  %134 = load i32, i32* %fit_type, align 4
  %cmp155 = icmp ne i32 %134, 0
  br i1 %cmp155, label %if.then.156, label %if.else.164

if.then.156:                                      ; preds = %if.end.154
  %arraydecay157 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i32 0
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* %idx, align 4
  %idxprom158 = sext i32 %136 to i64
  %137 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram159 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %137, i32 0, i32 0
  %138 = load i32*, i32** %histogram159, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %138, i64 %idxprom158
  %139 = load i32, i32* %arrayidx160, align 4
  %140 = load i32, i32* %idx, align 4
  %idxprom161 = sext i32 %140 to i64
  %141 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %141, i32 0, i32 7
  %142 = load float*, float** %expect, align 8
  %arrayidx162 = getelementptr inbounds float, float* %142, i64 %idxprom161
  %143 = load float, float* %arrayidx162, align 4
  %conv = fptosi float %143 to i32
  %call163 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 %135, i32 %139, i32 %conv) #4
  br label %if.end.170

if.else.164:                                      ; preds = %if.end.154
  %arraydecay165 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i32 0
  %144 = load i32, i32* %i, align 4
  %145 = load i32, i32* %idx, align 4
  %idxprom166 = sext i32 %145 to i64
  %146 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram167 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %146, i32 0, i32 0
  %147 = load i32*, i32** %histogram167, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %147, i64 %idxprom166
  %148 = load i32, i32* %arrayidx168, align 4
  %call169 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %144, i32 %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.164, %if.then.156
  %arrayidx171 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i64 20
  store i8 32, i8* %arrayidx171, align 1
  %149 = load i32, i32* %idx, align 4
  %idxprom172 = sext i32 %149 to i64
  %150 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram173 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %150, i32 0, i32 0
  %151 = load i32*, i32** %histogram173, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %151, i64 %idxprom172
  %152 = load i32, i32* %arrayidx174, align 4
  %cmp175 = icmp sgt i32 %152, 0
  br i1 %cmp175, label %if.then.177, label %if.end.194

if.then.177:                                      ; preds = %if.end.170
  %153 = load i32, i32* %idx, align 4
  %idxprom178 = sext i32 %153 to i64
  %154 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram179 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %154, i32 0, i32 0
  %155 = load i32*, i32** %histogram179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %155, i64 %idxprom178
  %156 = load i32, i32* %arrayidx180, align 4
  %sub181 = sub nsw i32 %156, 1
  %157 = load i32, i32* %units, align 4
  %div182 = sdiv i32 %sub181, %157
  %add183 = add nsw i32 1, %div182
  store i32 %add183, i32* %num, align 4
  store i32 20, i32* %pos, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.191, %if.then.177
  %158 = load i32, i32* %num, align 4
  %cmp185 = icmp sgt i32 %158, 0
  br i1 %cmp185, label %for.body.187, label %for.end.193

for.body.187:                                     ; preds = %for.cond.184
  %159 = load i32, i32* %pos, align 4
  %inc188 = add nsw i32 %159, 1
  store i32 %inc188, i32* %pos, align 4
  %idxprom189 = sext i32 %159 to i64
  %arrayidx190 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i64 %idxprom189
  store i8 61, i8* %arrayidx190, align 1
  br label %for.inc.191

for.inc.191:                                      ; preds = %for.body.187
  %160 = load i32, i32* %num, align 4
  %dec192 = add nsw i32 %160, -1
  store i32 %dec192, i32* %num, align 4
  br label %for.cond.184

for.end.193:                                      ; preds = %for.cond.184
  br label %if.end.194

if.end.194:                                       ; preds = %for.end.193, %if.end.170
  %161 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type195 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %161, i32 0, i32 8
  %162 = load i32, i32* %fit_type195, align 4
  %cmp196 = icmp ne i32 %162, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.219

land.lhs.true.198:                                ; preds = %if.end.194
  %163 = load i32, i32* %idx, align 4
  %idxprom199 = sext i32 %163 to i64
  %164 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect200 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %164, i32 0, i32 7
  %165 = load float*, float** %expect200, align 8
  %arrayidx201 = getelementptr inbounds float, float* %165, i64 %idxprom199
  %166 = load float, float* %arrayidx201, align 4
  %conv202 = fptosi float %166 to i32
  %cmp203 = icmp sgt i32 %conv202, 0
  br i1 %cmp203, label %if.then.205, label %if.end.219

if.then.205:                                      ; preds = %land.lhs.true.198
  %167 = load i32, i32* %idx, align 4
  %idxprom206 = sext i32 %167 to i64
  %168 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect207 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %168, i32 0, i32 7
  %169 = load float*, float** %expect207, align 8
  %arrayidx208 = getelementptr inbounds float, float* %169, i64 %idxprom206
  %170 = load float, float* %arrayidx208, align 4
  %sub209 = fsub float %170, 1.000000e+00
  %conv210 = fptosi float %sub209 to i32
  %171 = load i32, i32* %units, align 4
  %div211 = sdiv i32 %conv210, %171
  %add212 = add nsw i32 20, %div211
  store i32 %add212, i32* %pos, align 4
  %172 = load i32, i32* %pos, align 4
  %cmp213 = icmp sge i32 %172, 78
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.then.205
  store i32 78, i32* %pos, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %if.then.205
  %173 = load i32, i32* %pos, align 4
  %idxprom217 = sext i32 %173 to i64
  %arrayidx218 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i64 %idxprom217
  store i8 42, i8* %arrayidx218, align 1
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.216, %land.lhs.true.198, %if.end.194
  %arraydecay220 = getelementptr inbounds [81 x i8], [81 x i8]* %buffer, i32 0, i32 0
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call221 = call i32 @fputs(i8* %arraydecay220, %struct._IO_FILE* %174)
  br label %for.inc.222

for.inc.222:                                      ; preds = %if.end.219, %if.end.148, %if.end.123, %if.then.98, %if.then.96
  %175 = load i32, i32* %i, align 4
  %inc223 = add nsw i32 %175, 1
  store i32 %inc223, i32* %i, align 4
  br label %for.cond.89

for.end.224:                                      ; preds = %for.cond.89
  %176 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type225 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %176, i32 0, i32 8
  %177 = load i32, i32* %fit_type225, align 4
  switch i32 %177, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.227
    i32 2, label %sw.bb.240
  ]

sw.bb:                                            ; preds = %for.end.224
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog

sw.bb.227:                                        ; preds = %for.end.224
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0))
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %181 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %181, i32 0, i32 9
  %arrayidx229 = getelementptr inbounds [3 x float], [3 x float]* %param, i32 0, i64 0
  %182 = load float, float* %arrayidx229, align 4
  %conv230 = fpext float %182 to double
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), double %conv230)
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %184 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param232 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %184, i32 0, i32 9
  %arrayidx233 = getelementptr inbounds [3 x float], [3 x float]* %param232, i32 0, i64 1
  %185 = load float, float* %arrayidx233, align 4
  %conv234 = fpext float %185 to double
  %call235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), double %conv234)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %187 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %187, i32 0, i32 10
  %188 = load float, float* %chisq, align 4
  %conv236 = fpext float %188 to double
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), double %conv236)
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %190 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chip = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %190, i32 0, i32 11
  %191 = load float, float* %chip, align 4
  %conv238 = fpext float %191 to double
  %call239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), double %conv238)
  br label %sw.epilog

sw.bb.240:                                        ; preds = %for.end.224
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i32 0, i32 0))
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %194 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param242 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %194, i32 0, i32 9
  %arrayidx243 = getelementptr inbounds [3 x float], [3 x float]* %param242, i32 0, i64 0
  %195 = load float, float* %arrayidx243, align 4
  %conv244 = fpext float %195 to double
  %call245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), double %conv244)
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %197 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param246 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %197, i32 0, i32 9
  %arrayidx247 = getelementptr inbounds [3 x float], [3 x float]* %param246, i32 0, i64 1
  %198 = load float, float* %arrayidx247, align 4
  %conv248 = fpext float %198 to double
  %call249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), double %conv248)
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %200 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq250 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %200, i32 0, i32 10
  %201 = load float, float* %chisq250, align 4
  %conv251 = fpext float %201 to double
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), double %conv251)
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %203 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chip253 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %203, i32 0, i32 11
  %204 = load float, float* %chip253, align 4
  %conv254 = fpext float %204 to double
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), double %conv254)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.224, %sw.bb.240, %sw.bb.227, %sw.bb
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @PrintXMGRHistogram(%struct._IO_FILE* %fp, %struct.histogram_s* %h) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %h.addr = alloca %struct.histogram_s*, align 8
  %sc = alloca i32, align 4
  %val = alloca double, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %0, i32 0, i32 4
  %1 = load i32, i32* %lowscore, align 4
  store i32 %1, i32* %sc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %sc, align 4
  %3 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %3, i32 0, i32 3
  %4 = load i32, i32* %highscore, align 4
  %cmp = icmp sle i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %sc, align 4
  %6 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %6, i32 0, i32 1
  %7 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %5, %7
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %8, i32 0, i32 0
  %9 = load i32*, i32** %histogram, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %10, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %12 = load i32, i32* %sc, align 4
  %13 = load i32, i32* %sc, align 4
  %14 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min2 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %14, i32 0, i32 1
  %15 = load i32, i32* %min2, align 4
  %sub3 = sub nsw i32 %13, %15
  %idxprom4 = sext i32 %sub3 to i64
  %16 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram5 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %16, i32 0, i32 0
  %17 = load i32*, i32** %histogram5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %17, i64 %idxprom4
  %18 = load i32, i32* %arrayidx6, align 4
  %conv = sitofp i32 %18 to float
  %19 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %19, i32 0, i32 6
  %20 = load i32, i32* %total, align 4
  %conv7 = sitofp i32 %20 to float
  %div = fdiv float %conv, %conv7
  %conv8 = fpext float %div to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %12, double %conv8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %sc, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %sc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  %23 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %23, i32 0, i32 8
  %24 = load i32, i32* %fit_type, align 4
  %cmp10 = icmp ne i32 %24, 0
  br i1 %cmp10, label %if.then.12, label %if.end.38

if.then.12:                                       ; preds = %for.end
  %25 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore13 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %25, i32 0, i32 4
  %26 = load i32, i32* %lowscore13, align 4
  store i32 %26, i32* %sc, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.34, %if.then.12
  %27 = load i32, i32* %sc, align 4
  %28 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore15 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %28, i32 0, i32 3
  %29 = load i32, i32* %highscore15, align 4
  %cmp16 = icmp sle i32 %27, %29
  br i1 %cmp16, label %for.body.18, label %for.end.36

for.body.18:                                      ; preds = %for.cond.14
  %30 = load i32, i32* %sc, align 4
  %conv19 = sitofp i32 %30 to float
  %add = fadd float %conv19, 1.000000e+00
  %31 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %31, i32 0, i32 9
  %arrayidx20 = getelementptr inbounds [3 x float], [3 x float]* %param, i32 0, i64 0
  %32 = load float, float* %arrayidx20, align 4
  %33 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param21 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %33, i32 0, i32 9
  %arrayidx22 = getelementptr inbounds [3 x float], [3 x float]* %param21, i32 0, i64 1
  %34 = load float, float* %arrayidx22, align 4
  %call23 = call double @ExtremeValueP(float %add, float %32, float %34)
  %sub24 = fsub double 1.000000e+00, %call23
  %35 = load i32, i32* %sc, align 4
  %conv25 = sitofp i32 %35 to float
  %36 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param26 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %36, i32 0, i32 9
  %arrayidx27 = getelementptr inbounds [3 x float], [3 x float]* %param26, i32 0, i64 0
  %37 = load float, float* %arrayidx27, align 4
  %38 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param28 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %38, i32 0, i32 9
  %arrayidx29 = getelementptr inbounds [3 x float], [3 x float]* %param28, i32 0, i64 1
  %39 = load float, float* %arrayidx29, align 4
  %call30 = call double @ExtremeValueP(float %conv25, float %37, float %39)
  %sub31 = fsub double 1.000000e+00, %call30
  %sub32 = fsub double %sub24, %sub31
  store double %sub32, double* %val, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %41 = load i32, i32* %sc, align 4
  %42 = load double, double* %val, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %41, double %42)
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.18
  %43 = load i32, i32* %sc, align 4
  %inc35 = add nsw i32 %43, 1
  store i32 %inc35, i32* %sc, align 4
  br label %for.cond.14

for.end.36:                                       ; preds = %for.cond.14
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.36, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define double @ExtremeValueP(float %x, float %mu, float %lambda) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca float, align 4
  %mu.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %y = alloca double, align 8
  store float %x, float* %x.addr, align 4
  store float %mu, float* %mu.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  %0 = load float, float* %lambda.addr, align 4
  %1 = load float, float* %x.addr, align 4
  %2 = load float, float* %mu.addr, align 4
  %sub = fsub float %1, %2
  %mul = fmul float %0, %sub
  %conv = fpext float %mul to double
  %call = call double @log(double 0x3CB0000000000000) #4
  %mul1 = fmul double -1.000000e+00, %call
  %call2 = call double @log(double %mul1) #4
  %mul3 = fmul double -1.000000e+00, %call2
  %cmp = fcmp ole double %conv, %mul3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float, float* %lambda.addr, align 4
  %4 = load float, float* %x.addr, align 4
  %5 = load float, float* %mu.addr, align 4
  %sub5 = fsub float %4, %5
  %mul6 = fmul float %3, %sub5
  %conv7 = fpext float %mul6 to double
  %cmp8 = fcmp oge double %conv7, 7.084000e+02
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store double 0.000000e+00, double* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %6 = load float, float* %lambda.addr, align 4
  %conv12 = fpext float %6 to double
  %mul13 = fmul double -1.000000e+00, %conv12
  %7 = load float, float* %x.addr, align 4
  %8 = load float, float* %mu.addr, align 4
  %sub14 = fsub float %7, %8
  %conv15 = fpext float %sub14 to double
  %mul16 = fmul double %mul13, %conv15
  %call17 = call double @exp(double %mul16) #4
  store double %call17, double* %y, align 8
  %9 = load double, double* %y, align 8
  %cmp18 = fcmp olt double %9, 1.000000e-07
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.11
  %10 = load double, double* %y, align 8
  store double %10, double* %retval
  br label %return

if.else:                                          ; preds = %if.end.11
  %11 = load double, double* %y, align 8
  %mul21 = fmul double -1.000000e+00, %11
  %call22 = call double @exp(double %mul21) #4
  %sub23 = fsub double 1.000000e+00, %call22
  store double %sub23, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.20, %if.then.10, %if.then
  %12 = load double, double* %retval
  ret double %12
}

; Function Attrs: nounwind uwtable
define void @PrintXMGRDistribution(%struct._IO_FILE* %fp, %struct.histogram_s* %h) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %h.addr = alloca %struct.histogram_s*, align 8
  %sc = alloca i32, align 4
  %cum = alloca i32, align 4
  %val = alloca double, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  store i32 0, i32* %cum, align 4
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %0, i32 0, i32 4
  %1 = load i32, i32* %lowscore, align 4
  store i32 %1, i32* %sc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %sc, align 4
  %3 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %3, i32 0, i32 3
  %4 = load i32, i32* %highscore, align 4
  %cmp = icmp sle i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %sc, align 4
  %6 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %6, i32 0, i32 1
  %7 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %5, %7
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %8, i32 0, i32 0
  %9 = load i32*, i32** %histogram, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %cum, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %cum, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %13 = load i32, i32* %sc, align 4
  %add1 = add nsw i32 %13, 1
  %14 = load i32, i32* %cum, align 4
  %conv = sitofp i32 %14 to float
  %15 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %15, i32 0, i32 6
  %16 = load i32, i32* %total, align 4
  %conv2 = sitofp i32 %16 to float
  %div = fdiv float %conv, %conv2
  %conv3 = fpext float %div to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %add1, double %conv3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %sc, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %sc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  %19 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %19, i32 0, i32 8
  %20 = load i32, i32* %fit_type, align 4
  %cmp5 = icmp ne i32 %20, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %21 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore7 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %21, i32 0, i32 4
  %22 = load i32, i32* %lowscore7, align 4
  store i32 %22, i32* %sc, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.20, %if.then
  %23 = load i32, i32* %sc, align 4
  %24 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore9 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %24, i32 0, i32 3
  %25 = load i32, i32* %highscore9, align 4
  %cmp10 = icmp sle i32 %23, %25
  br i1 %cmp10, label %for.body.12, label %for.end.22

for.body.12:                                      ; preds = %for.cond.8
  %26 = load i32, i32* %sc, align 4
  %conv13 = sitofp i32 %26 to float
  %27 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %27, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [3 x float], [3 x float]* %param, i32 0, i64 0
  %28 = load float, float* %arrayidx14, align 4
  %29 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param15 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %29, i32 0, i32 9
  %arrayidx16 = getelementptr inbounds [3 x float], [3 x float]* %param15, i32 0, i64 1
  %30 = load float, float* %arrayidx16, align 4
  %call17 = call double @ExtremeValueP(float %conv13, float %28, float %30)
  %sub18 = fsub double 1.000000e+00, %call17
  store double %sub18, double* %val, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %32 = load i32, i32* %sc, align 4
  %33 = load double, double* %val, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %32, double %33)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.12
  %34 = load i32, i32* %sc, align 4
  %inc21 = add nsw i32 %34, 1
  store i32 %inc21, i32* %sc, align 4
  br label %for.cond.8

for.end.22:                                       ; preds = %for.cond.8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end.22, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @PrintXMGRRegressionLine(%struct._IO_FILE* %fp, %struct.histogram_s* %h) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %h.addr = alloca %struct.histogram_s*, align 8
  %sc = alloca i32, align 4
  %cum = alloca i32, align 4
  %val = alloca double, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  store i32 0, i32* %cum, align 4
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %0, i32 0, i32 4
  %1 = load i32, i32* %lowscore, align 4
  store i32 %1, i32* %sc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %sc, align 4
  %3 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %3, i32 0, i32 3
  %4 = load i32, i32* %highscore, align 4
  %cmp = icmp sle i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %sc, align 4
  %6 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %6, i32 0, i32 1
  %7 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %5, %7
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %8, i32 0, i32 0
  %9 = load i32*, i32** %histogram, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %cum, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %cum, align 4
  %12 = load i32, i32* %cum, align 4
  %conv = sitofp i32 %12 to double
  %13 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %13, i32 0, i32 6
  %14 = load i32, i32* %total, align 4
  %conv1 = sitofp i32 %14 to double
  %div = fdiv double %conv, %conv1
  %call = call double @log(double %div) #4
  %mul = fmul double -1.000000e+00, %call
  %call2 = call double @log(double %mul) #4
  store double %call2, double* %val, align 8
  %15 = load i32, i32* %cum, align 4
  %16 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total3 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %16, i32 0, i32 6
  %17 = load i32, i32* %total3, align 4
  %cmp4 = icmp slt i32 %15, %17
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %19 = load i32, i32* %sc, align 4
  %add6 = add nsw i32 %19, 1
  %20 = load double, double* %val, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %add6, double %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %sc, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %sc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  %23 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %23, i32 0, i32 8
  %24 = load i32, i32* %fit_type, align 4
  %cmp9 = icmp ne i32 %24, 0
  br i1 %cmp9, label %if.then.11, label %if.end.32

if.then.11:                                       ; preds = %for.end
  %25 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore12 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %25, i32 0, i32 4
  %26 = load i32, i32* %lowscore12, align 4
  store i32 %26, i32* %sc, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.28, %if.then.11
  %27 = load i32, i32* %sc, align 4
  %28 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore14 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %28, i32 0, i32 3
  %29 = load i32, i32* %highscore14, align 4
  %cmp15 = icmp sle i32 %27, %29
  br i1 %cmp15, label %for.body.17, label %for.end.30

for.body.17:                                      ; preds = %for.cond.13
  %30 = load i32, i32* %sc, align 4
  %conv18 = sitofp i32 %30 to float
  %31 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %31, i32 0, i32 9
  %arrayidx19 = getelementptr inbounds [3 x float], [3 x float]* %param, i32 0, i64 0
  %32 = load float, float* %arrayidx19, align 4
  %33 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param20 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %33, i32 0, i32 9
  %arrayidx21 = getelementptr inbounds [3 x float], [3 x float]* %param20, i32 0, i64 1
  %34 = load float, float* %arrayidx21, align 4
  %call22 = call double @ExtremeValueP(float %conv18, float %32, float %34)
  %sub23 = fsub double 1.000000e+00, %call22
  %call24 = call double @log(double %sub23) #4
  %mul25 = fmul double -1.000000e+00, %call24
  %call26 = call double @log(double %mul25) #4
  store double %call26, double* %val, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %36 = load i32, i32* %sc, align 4
  %37 = load double, double* %val, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %36, double %37)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.17
  %38 = load i32, i32* %sc, align 4
  %inc29 = add nsw i32 %38, 1
  store i32 %inc29, i32* %sc, align 4
  br label %for.cond.13

for.end.30:                                       ; preds = %for.cond.13
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.30, %for.end
  ret void
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define void @EVDBasicFit(%struct.histogram_s* %h) #0 {
entry:
  %h.addr = alloca %struct.histogram_s*, align 8
  %d = alloca float*, align 8
  %x = alloca float*, align 8
  %hsize = alloca i32, align 4
  %sum = alloca i32, align 4
  %sc = alloca i32, align 4
  %idx = alloca i32, align 4
  %slope = alloca float, align 4
  %intercept = alloca float, align 4
  %corr = alloca float, align 4
  %lambda = alloca float, align 4
  %mu = alloca float, align 4
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %0, i32 0, i32 3
  %1 = load i32, i32* %highscore, align 4
  %2 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %2, i32 0, i32 4
  %3 = load i32, i32* %lowscore, align 4
  %sub = sub nsw i32 %1, %3
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %hsize, align 4
  %4 = load i32, i32* %hsize, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 492, i64 %mul)
  %5 = bitcast i8* %call to float*
  store float* %5, float** %d, align 8
  %6 = load i32, i32* %hsize, align 4
  %conv1 = sext i32 %6 to i64
  %mul2 = mul i64 4, %conv1
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 493, i64 %mul2)
  %7 = bitcast i8* %call3 to float*
  store float* %7, float** %x, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %idx, align 4
  %9 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load float*, float** %x, align 8
  %arrayidx = getelementptr inbounds float, float* %11, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %12 = load i32, i32* %idx, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load float*, float** %d, align 8
  %arrayidx6 = getelementptr inbounds float, float* %13, i64 %idxprom5
  store float 0.000000e+00, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %sum, align 4
  %15 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore7 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %15, i32 0, i32 4
  %16 = load i32, i32* %lowscore7, align 4
  store i32 %16, i32* %sc, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.29, %for.end
  %17 = load i32, i32* %sc, align 4
  %18 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore9 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %18, i32 0, i32 3
  %19 = load i32, i32* %highscore9, align 4
  %cmp10 = icmp sle i32 %17, %19
  br i1 %cmp10, label %for.body.12, label %for.end.31

for.body.12:                                      ; preds = %for.cond.8
  %20 = load i32, i32* %sc, align 4
  %21 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %21, i32 0, i32 1
  %22 = load i32, i32* %min, align 4
  %sub13 = sub nsw i32 %20, %22
  %idxprom14 = sext i32 %sub13 to i64
  %23 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %23, i32 0, i32 0
  %24 = load i32*, i32** %histogram, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %24, i64 %idxprom14
  %25 = load i32, i32* %arrayidx15, align 4
  %26 = load i32, i32* %sum, align 4
  %add16 = add nsw i32 %26, %25
  store i32 %add16, i32* %sum, align 4
  %27 = load i32, i32* %sum, align 4
  %conv17 = sitofp i32 %27 to float
  %28 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %28, i32 0, i32 6
  %29 = load i32, i32* %total, align 4
  %conv18 = sitofp i32 %29 to float
  %div = fdiv float %conv17, %conv18
  %30 = load i32, i32* %sc, align 4
  %31 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore19 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %31, i32 0, i32 4
  %32 = load i32, i32* %lowscore19, align 4
  %sub20 = sub nsw i32 %30, %32
  %idxprom21 = sext i32 %sub20 to i64
  %33 = load float*, float** %d, align 8
  %arrayidx22 = getelementptr inbounds float, float* %33, i64 %idxprom21
  store float %div, float* %arrayidx22, align 4
  %34 = load i32, i32* %sc, align 4
  %add23 = add nsw i32 %34, 1
  %conv24 = sitofp i32 %add23 to float
  %35 = load i32, i32* %sc, align 4
  %36 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore25 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %36, i32 0, i32 4
  %37 = load i32, i32* %lowscore25, align 4
  %sub26 = sub nsw i32 %35, %37
  %idxprom27 = sext i32 %sub26 to i64
  %38 = load float*, float** %x, align 8
  %arrayidx28 = getelementptr inbounds float, float* %38, i64 %idxprom27
  store float %conv24, float* %arrayidx28, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.12
  %39 = load i32, i32* %sc, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, i32* %sc, align 4
  br label %for.cond.8

for.end.31:                                       ; preds = %for.cond.8
  %40 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore32 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %40, i32 0, i32 4
  %41 = load i32, i32* %lowscore32, align 4
  store i32 %41, i32* %sc, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.51, %for.end.31
  %42 = load i32, i32* %sc, align 4
  %43 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore34 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %43, i32 0, i32 3
  %44 = load i32, i32* %highscore34, align 4
  %cmp35 = icmp slt i32 %42, %44
  br i1 %cmp35, label %for.body.37, label %for.end.53

for.body.37:                                      ; preds = %for.cond.33
  %45 = load i32, i32* %sc, align 4
  %46 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore38 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %46, i32 0, i32 4
  %47 = load i32, i32* %lowscore38, align 4
  %sub39 = sub nsw i32 %45, %47
  %idxprom40 = sext i32 %sub39 to i64
  %48 = load float*, float** %d, align 8
  %arrayidx41 = getelementptr inbounds float, float* %48, i64 %idxprom40
  %49 = load float, float* %arrayidx41, align 4
  %conv42 = fpext float %49 to double
  %call43 = call double @log(double %conv42) #4
  %mul44 = fmul double -1.000000e+00, %call43
  %call45 = call double @log(double %mul44) #4
  %conv46 = fptrunc double %call45 to float
  %50 = load i32, i32* %sc, align 4
  %51 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore47 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %51, i32 0, i32 4
  %52 = load i32, i32* %lowscore47, align 4
  %sub48 = sub nsw i32 %50, %52
  %idxprom49 = sext i32 %sub48 to i64
  %53 = load float*, float** %d, align 8
  %arrayidx50 = getelementptr inbounds float, float* %53, i64 %idxprom49
  store float %conv46, float* %arrayidx50, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.37
  %54 = load i32, i32* %sc, align 4
  %inc52 = add nsw i32 %54, 1
  store i32 %inc52, i32* %sc, align 4
  br label %for.cond.33

for.end.53:                                       ; preds = %for.cond.33
  %55 = load float*, float** %x, align 8
  %56 = load float*, float** %d, align 8
  %57 = load i32, i32* %hsize, align 4
  %sub54 = sub nsw i32 %57, 1
  %call55 = call i32 @Linefit(float* %55, float* %56, i32 %sub54, float* %intercept, float* %slope, float* %corr)
  %58 = load float, float* %slope, align 4
  %conv56 = fpext float %58 to double
  %mul57 = fmul double -1.000000e+00, %conv56
  %conv58 = fptrunc double %mul57 to float
  store float %conv58, float* %lambda, align 4
  %59 = load float, float* %intercept, align 4
  %60 = load float, float* %lambda, align 4
  %div59 = fdiv float %59, %60
  store float %div59, float* %mu, align 4
  %61 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %62 = load float, float* %mu, align 4
  %63 = load float, float* %lambda, align 4
  %64 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore60 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %64, i32 0, i32 4
  %65 = load i32, i32* %lowscore60, align 4
  %conv61 = sitofp i32 %65 to float
  %66 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore62 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %66, i32 0, i32 3
  %67 = load i32, i32* %highscore62, align 4
  %conv63 = sitofp i32 %67 to float
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %61, float %62, float %63, float %conv61, float %conv63, i32 2)
  %68 = load float*, float** %x, align 8
  %69 = bitcast float* %68 to i8*
  call void @free(i8* %69) #4
  %70 = load float*, float** %d, align 8
  %71 = bitcast float* %70 to i8*
  call void @free(i8* %71) #4
  ret void
}

declare i32 @Linefit(float*, float*, i32, float*, float*, float*) #1

; Function Attrs: nounwind uwtable
define void @ExtremeValueSetHistogram(%struct.histogram_s* %h, float %mu, float %lambda, float %lowbound, float %highbound, i32 %ndegrees) #0 {
entry:
  %h.addr = alloca %struct.histogram_s*, align 8
  %mu.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %lowbound.addr = alloca float, align 4
  %highbound.addr = alloca float, align 4
  %ndegrees.addr = alloca i32, align 4
  %sc = alloca i32, align 4
  %hsize = alloca i32, align 4
  %idx = alloca i32, align 4
  %nbins = alloca i32, align 4
  %delta = alloca float, align 4
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  store float %mu, float* %mu.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  store float %lowbound, float* %lowbound.addr, align 4
  store float %highbound, float* %highbound.addr, align 4
  store i32 %ndegrees, i32* %ndegrees.addr, align 4
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  call void @UnfitHistogram(%struct.histogram_s* %0)
  %1 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %1, i32 0, i32 8
  store i32 1, i32* %fit_type, align 4
  %2 = load float, float* %lambda.addr, align 4
  %3 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %3, i32 0, i32 9
  %arrayidx = getelementptr inbounds [3 x float], [3 x float]* %param, i32 0, i64 1
  store float %2, float* %arrayidx, align 4
  %4 = load float, float* %mu.addr, align 4
  %5 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param1 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %5, i32 0, i32 9
  %arrayidx2 = getelementptr inbounds [3 x float], [3 x float]* %param1, i32 0, i64 0
  store float %4, float* %arrayidx2, align 4
  %6 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %6, i32 0, i32 2
  %7 = load i32, i32* %max, align 4
  %8 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %8, i32 0, i32 1
  %9 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %7, %9
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %hsize, align 4
  %10 = load i32, i32* %hsize, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 696, i64 %mul)
  %11 = bitcast i8* %call to float*
  %12 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %12, i32 0, i32 7
  store float* %11, float** %expect, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %idx, align 4
  %14 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect4 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %16, i32 0, i32 7
  %17 = load float*, float** %expect4, align 8
  %arrayidx5 = getelementptr inbounds float, float* %17, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min6 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %19, i32 0, i32 1
  %20 = load i32, i32* %min6, align 4
  store i32 %20, i32* %sc, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.33, %for.end
  %21 = load i32, i32* %sc, align 4
  %22 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max8 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %22, i32 0, i32 2
  %23 = load i32, i32* %max8, align 4
  %cmp9 = icmp sle i32 %21, %23
  br i1 %cmp9, label %for.body.11, label %for.end.35

for.body.11:                                      ; preds = %for.cond.7
  %24 = load i32, i32* %sc, align 4
  %conv12 = sitofp i32 %24 to float
  %25 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param13 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %25, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [3 x float], [3 x float]* %param13, i32 0, i64 0
  %26 = load float, float* %arrayidx14, align 4
  %27 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param15 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %27, i32 0, i32 9
  %arrayidx16 = getelementptr inbounds [3 x float], [3 x float]* %param15, i32 0, i64 1
  %28 = load float, float* %arrayidx16, align 4
  %29 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %29, i32 0, i32 6
  %30 = load i32, i32* %total, align 4
  %call17 = call double @ExtremeValueE(float %conv12, float %26, float %28, i32 %30)
  %31 = load i32, i32* %sc, align 4
  %add18 = add nsw i32 %31, 1
  %conv19 = sitofp i32 %add18 to float
  %32 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param20 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %32, i32 0, i32 9
  %arrayidx21 = getelementptr inbounds [3 x float], [3 x float]* %param20, i32 0, i64 0
  %33 = load float, float* %arrayidx21, align 4
  %34 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param22 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %34, i32 0, i32 9
  %arrayidx23 = getelementptr inbounds [3 x float], [3 x float]* %param22, i32 0, i64 1
  %35 = load float, float* %arrayidx23, align 4
  %36 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total24 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %36, i32 0, i32 6
  %37 = load i32, i32* %total24, align 4
  %call25 = call double @ExtremeValueE(float %conv19, float %33, float %35, i32 %37)
  %sub26 = fsub double %call17, %call25
  %conv27 = fptrunc double %sub26 to float
  %38 = load i32, i32* %sc, align 4
  %39 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min28 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %39, i32 0, i32 1
  %40 = load i32, i32* %min28, align 4
  %sub29 = sub nsw i32 %38, %40
  %idxprom30 = sext i32 %sub29 to i64
  %41 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect31 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %41, i32 0, i32 7
  %42 = load float*, float** %expect31, align 8
  %arrayidx32 = getelementptr inbounds float, float* %42, i64 %idxprom30
  store float %conv27, float* %arrayidx32, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.11
  %43 = load i32, i32* %sc, align 4
  %inc34 = add nsw i32 %43, 1
  store i32 %inc34, i32* %sc, align 4
  br label %for.cond.7

for.end.35:                                       ; preds = %for.cond.7
  %44 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %44, i32 0, i32 10
  store float 0.000000e+00, float* %chisq, align 4
  store i32 0, i32* %nbins, align 4
  %45 = load float, float* %lowbound.addr, align 4
  %conv36 = fptosi float %45 to i32
  store i32 %conv36, i32* %sc, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.77, %for.end.35
  %46 = load i32, i32* %sc, align 4
  %conv38 = sitofp i32 %46 to float
  %47 = load float, float* %highbound.addr, align 4
  %cmp39 = fcmp ole float %conv38, %47
  br i1 %cmp39, label %for.body.41, label %for.end.79

for.body.41:                                      ; preds = %for.cond.37
  %48 = load i32, i32* %sc, align 4
  %49 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min42 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %49, i32 0, i32 1
  %50 = load i32, i32* %min42, align 4
  %sub43 = sub nsw i32 %48, %50
  %idxprom44 = sext i32 %sub43 to i64
  %51 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect45 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %51, i32 0, i32 7
  %52 = load float*, float** %expect45, align 8
  %arrayidx46 = getelementptr inbounds float, float* %52, i64 %idxprom44
  %53 = load float, float* %arrayidx46, align 4
  %conv47 = fpext float %53 to double
  %cmp48 = fcmp oge double %conv47, 5.000000e+00
  br i1 %cmp48, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.41
  %54 = load i32, i32* %sc, align 4
  %55 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min50 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %55, i32 0, i32 1
  %56 = load i32, i32* %min50, align 4
  %sub51 = sub nsw i32 %54, %56
  %idxprom52 = sext i32 %sub51 to i64
  %57 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %57, i32 0, i32 0
  %58 = load i32*, i32** %histogram, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %58, i64 %idxprom52
  %59 = load i32, i32* %arrayidx53, align 4
  %cmp54 = icmp sge i32 %59, 5
  br i1 %cmp54, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %60 = load i32, i32* %sc, align 4
  %61 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min56 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %61, i32 0, i32 1
  %62 = load i32, i32* %min56, align 4
  %sub57 = sub nsw i32 %60, %62
  %idxprom58 = sext i32 %sub57 to i64
  %63 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram59 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %63, i32 0, i32 0
  %64 = load i32*, i32** %histogram59, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %64, i64 %idxprom58
  %65 = load i32, i32* %arrayidx60, align 4
  %conv61 = sitofp i32 %65 to float
  %66 = load i32, i32* %sc, align 4
  %67 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min62 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %67, i32 0, i32 1
  %68 = load i32, i32* %min62, align 4
  %sub63 = sub nsw i32 %66, %68
  %idxprom64 = sext i32 %sub63 to i64
  %69 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect65 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %69, i32 0, i32 7
  %70 = load float*, float** %expect65, align 8
  %arrayidx66 = getelementptr inbounds float, float* %70, i64 %idxprom64
  %71 = load float, float* %arrayidx66, align 4
  %sub67 = fsub float %conv61, %71
  store float %sub67, float* %delta, align 4
  %72 = load float, float* %delta, align 4
  %73 = load float, float* %delta, align 4
  %mul68 = fmul float %72, %73
  %74 = load i32, i32* %sc, align 4
  %75 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min69 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %75, i32 0, i32 1
  %76 = load i32, i32* %min69, align 4
  %sub70 = sub nsw i32 %74, %76
  %idxprom71 = sext i32 %sub70 to i64
  %77 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect72 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %77, i32 0, i32 7
  %78 = load float*, float** %expect72, align 8
  %arrayidx73 = getelementptr inbounds float, float* %78, i64 %idxprom71
  %79 = load float, float* %arrayidx73, align 4
  %div = fdiv float %mul68, %79
  %80 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq74 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %80, i32 0, i32 10
  %81 = load float, float* %chisq74, align 4
  %add75 = fadd float %81, %div
  store float %add75, float* %chisq74, align 4
  %82 = load i32, i32* %nbins, align 4
  %inc76 = add nsw i32 %82, 1
  store i32 %inc76, i32* %nbins, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.41
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end
  %83 = load i32, i32* %sc, align 4
  %inc78 = add nsw i32 %83, 1
  store i32 %inc78, i32* %sc, align 4
  br label %for.cond.37

for.end.79:                                       ; preds = %for.cond.37
  %84 = load i32, i32* %nbins, align 4
  %85 = load i32, i32* %ndegrees.addr, align 4
  %add80 = add nsw i32 1, %85
  %cmp81 = icmp sgt i32 %84, %add80
  br i1 %cmp81, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %for.end.79
  %86 = load i32, i32* %nbins, align 4
  %sub84 = sub nsw i32 %86, 1
  %87 = load i32, i32* %ndegrees.addr, align 4
  %sub85 = sub nsw i32 %sub84, %87
  %conv86 = sitofp i32 %sub85 to double
  %div87 = fdiv double %conv86, 2.000000e+00
  %88 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq88 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %88, i32 0, i32 10
  %89 = load float, float* %chisq88, align 4
  %conv89 = fpext float %89 to double
  %div90 = fdiv double %conv89, 2.000000e+00
  %call91 = call double @IncompleteGamma(double %div87, double %div90)
  %conv92 = fptrunc double %call91 to float
  %90 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chip = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %90, i32 0, i32 11
  store float %conv92, float* %chip, align 4
  br label %if.end.94

if.else:                                          ; preds = %for.end.79
  %91 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chip93 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %91, i32 0, i32 11
  store float 0.000000e+00, float* %chip93, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else, %if.then.83
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ExtremeValueFitHistogram(%struct.histogram_s* %h, i32 %censor, float %high_hint) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.histogram_s*, align 8
  %censor.addr = alloca i32, align 4
  %high_hint.addr = alloca float, align 4
  %x = alloca float*, align 8
  %y = alloca i32*, align 8
  %n = alloca i32, align 4
  %z = alloca i32, align 4
  %hsize = alloca i32, align 4
  %lambda = alloca float, align 4
  %mu = alloca float, align 4
  %sc = alloca i32, align 4
  %lowbound = alloca i32, align 4
  %highbound = alloca i32, align 4
  %new_highbound = alloca i32, align 4
  %iteration = alloca i32, align 4
  %max = alloca i32, align 4
  %psx = alloca double, align 8
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  store i32 %censor, i32* %censor.addr, align 4
  store float %high_hint, float* %high_hint.addr, align 4
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %0, i32 0, i32 4
  %1 = load i32, i32* %lowscore, align 4
  store i32 %1, i32* %lowbound, align 4
  %2 = load i32, i32* %censor.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  store i32 -1, i32* %max, align 4
  %3 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore1 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %3, i32 0, i32 4
  %4 = load i32, i32* %lowscore1, align 4
  store i32 %4, i32* %sc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %sc, align 4
  %6 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %6, i32 0, i32 3
  %7 = load i32, i32* %highscore, align 4
  %cmp = icmp sle i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %sc, align 4
  %9 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %9, i32 0, i32 1
  %10 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %8, %10
  %idxprom = sext i32 %sub to i64
  %11 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %11, i32 0, i32 0
  %12 = load i32*, i32** %histogram, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %14 = load i32, i32* %max, align 4
  %cmp2 = icmp sgt i32 %13, %14
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %15 = load i32, i32* %sc, align 4
  %16 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min4 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %16, i32 0, i32 1
  %17 = load i32, i32* %min4, align 4
  %sub5 = sub nsw i32 %15, %17
  %idxprom6 = sext i32 %sub5 to i64
  %18 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram7 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %18, i32 0, i32 0
  %19 = load i32*, i32** %histogram7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %19, i64 %idxprom6
  %20 = load i32, i32* %arrayidx8, align 4
  store i32 %20, i32* %max, align 4
  %21 = load i32, i32* %sc, align 4
  store i32 %21, i32* %lowbound, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %sc, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %sc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %entry
  %23 = load float, float* %high_hint.addr, align 4
  %24 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore10 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %24, i32 0, i32 3
  %25 = load i32, i32* %highscore10, align 4
  %conv = sitofp i32 %25 to float
  %cmp11 = fcmp olt float %23, %conv
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %26 = load float, float* %high_hint.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %27 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore13 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %27, i32 0, i32 3
  %28 = load i32, i32* %highscore13, align 4
  %conv14 = sitofp i32 %28 to float
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %26, %cond.true ], [ %conv14, %cond.false ]
  %conv15 = fptosi float %cond to i32
  store i32 %conv15, i32* %highbound, align 4
  store i32 0, i32* %iteration, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.137, %cond.end
  %29 = load i32, i32* %iteration, align 4
  %cmp17 = icmp slt i32 %29, 100
  br i1 %cmp17, label %for.body.19, label %for.end.139

for.body.19:                                      ; preds = %for.cond.16
  store float* null, float** %x, align 8
  store i32* null, i32** %y, align 8
  %30 = load i32, i32* %highbound, align 4
  %31 = load i32, i32* %lowbound, align 4
  %sub20 = sub nsw i32 %30, %31
  %add = add nsw i32 %sub20, 1
  store i32 %add, i32* %hsize, align 4
  %32 = load i32, i32* %hsize, align 4
  %cmp21 = icmp slt i32 %32, 5
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body.19
  br label %FITFAILED

if.end.24:                                        ; preds = %for.body.19
  %33 = load i32, i32* %hsize, align 4
  %conv25 = sext i32 %33 to i64
  %mul = mul i64 4, %conv25
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 600, i64 %mul)
  %34 = bitcast i8* %call to float*
  store float* %34, float** %x, align 8
  %35 = load i32, i32* %hsize, align 4
  %conv26 = sext i32 %35 to i64
  %mul27 = mul i64 4, %conv26
  %call28 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 601, i64 %mul27)
  %36 = bitcast i8* %call28 to i32*
  store i32* %36, i32** %y, align 8
  store i32 0, i32* %n, align 4
  %37 = load i32, i32* %lowbound, align 4
  store i32 %37, i32* %sc, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.54, %if.end.24
  %38 = load i32, i32* %sc, align 4
  %39 = load i32, i32* %highbound, align 4
  %cmp30 = icmp sle i32 %38, %39
  br i1 %cmp30, label %for.body.32, label %for.end.56

for.body.32:                                      ; preds = %for.cond.29
  %40 = load i32, i32* %sc, align 4
  %conv33 = sitofp i32 %40 to float
  %conv34 = fpext float %conv33 to double
  %add35 = fadd double %conv34, 5.000000e-01
  %conv36 = fptrunc double %add35 to float
  %41 = load i32, i32* %sc, align 4
  %42 = load i32, i32* %lowbound, align 4
  %sub37 = sub nsw i32 %41, %42
  %idxprom38 = sext i32 %sub37 to i64
  %43 = load float*, float** %x, align 8
  %arrayidx39 = getelementptr inbounds float, float* %43, i64 %idxprom38
  store float %conv36, float* %arrayidx39, align 4
  %44 = load i32, i32* %sc, align 4
  %45 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min40 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %45, i32 0, i32 1
  %46 = load i32, i32* %min40, align 4
  %sub41 = sub nsw i32 %44, %46
  %idxprom42 = sext i32 %sub41 to i64
  %47 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram43 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %47, i32 0, i32 0
  %48 = load i32*, i32** %histogram43, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %48, i64 %idxprom42
  %49 = load i32, i32* %arrayidx44, align 4
  %50 = load i32, i32* %sc, align 4
  %51 = load i32, i32* %lowbound, align 4
  %sub45 = sub nsw i32 %50, %51
  %idxprom46 = sext i32 %sub45 to i64
  %52 = load i32*, i32** %y, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %52, i64 %idxprom46
  store i32 %49, i32* %arrayidx47, align 4
  %53 = load i32, i32* %sc, align 4
  %54 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min48 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %54, i32 0, i32 1
  %55 = load i32, i32* %min48, align 4
  %sub49 = sub nsw i32 %53, %55
  %idxprom50 = sext i32 %sub49 to i64
  %56 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram51 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %56, i32 0, i32 0
  %57 = load i32*, i32** %histogram51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %57, i64 %idxprom50
  %58 = load i32, i32* %arrayidx52, align 4
  %59 = load i32, i32* %n, align 4
  %add53 = add nsw i32 %59, %58
  store i32 %add53, i32* %n, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.32
  %60 = load i32, i32* %sc, align 4
  %inc55 = add nsw i32 %60, 1
  store i32 %inc55, i32* %sc, align 4
  br label %for.cond.29

for.end.56:                                       ; preds = %for.cond.29
  %61 = load i32, i32* %n, align 4
  %cmp57 = icmp slt i32 %61, 100
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.end.56
  br label %FITFAILED

if.end.60:                                        ; preds = %for.end.56
  %62 = load i32, i32* %censor.addr, align 4
  %tobool61 = icmp ne i32 %62, 0
  br i1 %tobool61, label %if.then.62, label %if.end.105

if.then.62:                                       ; preds = %if.end.60
  %63 = load i32, i32* %iteration, align 4
  %cmp63 = icmp eq i32 %63, 0
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %if.then.62
  %64 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %64, i32 0, i32 6
  %65 = load i32, i32* %total, align 4
  %66 = load i32, i32* %n, align 4
  %sub66 = sub nsw i32 %65, %66
  %67 = load i32, i32* %n, align 4
  %conv67 = sitofp i32 %67 to float
  %conv68 = fpext float %conv67 to double
  %mul69 = fmul double 5.819800e-01, %conv68
  %conv70 = fptosi double %mul69 to i32
  %cmp71 = icmp slt i32 %sub66, %conv70
  br i1 %cmp71, label %cond.true.73, label %cond.false.76

cond.true.73:                                     ; preds = %if.then.65
  %68 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total74 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %68, i32 0, i32 6
  %69 = load i32, i32* %total74, align 4
  %70 = load i32, i32* %n, align 4
  %sub75 = sub nsw i32 %69, %70
  br label %cond.end.81

cond.false.76:                                    ; preds = %if.then.65
  %71 = load i32, i32* %n, align 4
  %conv77 = sitofp i32 %71 to float
  %conv78 = fpext float %conv77 to double
  %mul79 = fmul double 5.819800e-01, %conv78
  %conv80 = fptosi double %mul79 to i32
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.76, %cond.true.73
  %cond82 = phi i32 [ %sub75, %cond.true.73 ], [ %conv80, %cond.false.76 ]
  store i32 %cond82, i32* %z, align 4
  br label %if.end.104

if.else:                                          ; preds = %if.then.62
  %72 = load i32, i32* %lowbound, align 4
  %conv83 = sitofp i32 %72 to float
  %73 = load float, float* %mu, align 4
  %74 = load float, float* %lambda, align 4
  %call84 = call double @EVDDistribution(float %conv83, float %73, float %74)
  store double %call84, double* %psx, align 8
  %75 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total85 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %75, i32 0, i32 6
  %76 = load i32, i32* %total85, align 4
  %77 = load i32, i32* %n, align 4
  %sub86 = sub nsw i32 %76, %77
  %78 = load i32, i32* %n, align 4
  %conv87 = sitofp i32 %78 to double
  %79 = load double, double* %psx, align 8
  %mul88 = fmul double %conv87, %79
  %80 = load double, double* %psx, align 8
  %sub89 = fsub double 1.000000e+00, %80
  %div = fdiv double %mul88, %sub89
  %conv90 = fptosi double %div to i32
  %cmp91 = icmp slt i32 %sub86, %conv90
  br i1 %cmp91, label %cond.true.93, label %cond.false.96

cond.true.93:                                     ; preds = %if.else
  %81 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total94 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %81, i32 0, i32 6
  %82 = load i32, i32* %total94, align 4
  %83 = load i32, i32* %n, align 4
  %sub95 = sub nsw i32 %82, %83
  br label %cond.end.102

cond.false.96:                                    ; preds = %if.else
  %84 = load i32, i32* %n, align 4
  %conv97 = sitofp i32 %84 to double
  %85 = load double, double* %psx, align 8
  %mul98 = fmul double %conv97, %85
  %86 = load double, double* %psx, align 8
  %sub99 = fsub double 1.000000e+00, %86
  %div100 = fdiv double %mul98, %sub99
  %conv101 = fptosi double %div100 to i32
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.96, %cond.true.93
  %cond103 = phi i32 [ %sub95, %cond.true.93 ], [ %conv101, %cond.false.96 ]
  store i32 %cond103, i32* %z, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %cond.end.102, %cond.end.81
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.60
  %87 = load i32, i32* %censor.addr, align 4
  %tobool106 = icmp ne i32 %87, 0
  br i1 %tobool106, label %if.then.107, label %if.else.113

if.then.107:                                      ; preds = %if.end.105
  %88 = load float*, float** %x, align 8
  %89 = load i32*, i32** %y, align 8
  %90 = load i32, i32* %hsize, align 4
  %91 = load i32, i32* %z, align 4
  %92 = load i32, i32* %lowbound, align 4
  %conv108 = sitofp i32 %92 to float
  %call109 = call i32 @EVDCensoredFit(float* %88, i32* %89, i32 %90, i32 %91, float %conv108, float* %mu, float* %lambda)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %if.then.107
  br label %FITFAILED

if.end.112:                                       ; preds = %if.then.107
  br label %if.end.118

if.else.113:                                      ; preds = %if.end.105
  %93 = load float*, float** %x, align 8
  %94 = load i32*, i32** %y, align 8
  %95 = load i32, i32* %hsize, align 4
  %call114 = call i32 @EVDMaxLikelyFit(float* %93, i32* %94, i32 %95, float* %mu, float* %lambda)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %if.else.113
  br label %FITFAILED

if.end.117:                                       ; preds = %if.else.113
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.112
  %96 = load float, float* %mu, align 4
  %conv119 = fpext float %96 to double
  %97 = load i32, i32* %n, align 4
  %98 = load i32, i32* %z, align 4
  %add120 = add nsw i32 %97, %98
  %sub121 = sub nsw i32 %add120, 1
  %conv122 = sitofp i32 %sub121 to double
  %99 = load i32, i32* %n, align 4
  %100 = load i32, i32* %z, align 4
  %add123 = add nsw i32 %99, %100
  %conv124 = sitofp i32 %add123 to double
  %div125 = fdiv double %conv122, %conv124
  %call126 = call double @log(double %div125) #4
  %mul127 = fmul double -1.000000e+00, %call126
  %call128 = call double @log(double %mul127) #4
  %101 = load float, float* %lambda, align 4
  %conv129 = fpext float %101 to double
  %div130 = fdiv double %call128, %conv129
  %sub131 = fsub double %conv119, %div130
  %conv132 = fptosi double %sub131 to i32
  store i32 %conv132, i32* %new_highbound, align 4
  %102 = load float*, float** %x, align 8
  %103 = bitcast float* %102 to i8*
  call void @free(i8* %103) #4
  %104 = load i32*, i32** %y, align 8
  %105 = bitcast i32* %104 to i8*
  call void @free(i8* %105) #4
  %106 = load i32, i32* %new_highbound, align 4
  %107 = load i32, i32* %highbound, align 4
  %cmp133 = icmp sge i32 %106, %107
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.118
  br label %for.end.139

if.end.136:                                       ; preds = %if.end.118
  %108 = load i32, i32* %new_highbound, align 4
  store i32 %108, i32* %highbound, align 4
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %109 = load i32, i32* %iteration, align 4
  %inc138 = add nsw i32 %109, 1
  store i32 %inc138, i32* %iteration, align 4
  br label %for.cond.16

for.end.139:                                      ; preds = %if.then.135, %for.cond.16
  %110 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %111 = load float, float* %mu, align 4
  %112 = load float, float* %lambda, align 4
  %113 = load i32, i32* %lowbound, align 4
  %conv140 = sitofp i32 %113 to float
  %114 = load i32, i32* %highbound, align 4
  %conv141 = sitofp i32 %114 to float
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %110, float %111, float %112, float %conv140, float %conv141, i32 1)
  store i32 1, i32* %retval
  br label %return

FITFAILED:                                        ; preds = %if.then.116, %if.then.111, %if.then.59, %if.then.23
  %115 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  call void @UnfitHistogram(%struct.histogram_s* %115)
  %116 = load float*, float** %x, align 8
  %cmp142 = icmp ne float* %116, null
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %FITFAILED
  %117 = load float*, float** %x, align 8
  %118 = bitcast float* %117 to i8*
  call void @free(i8* %118) #4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %FITFAILED
  %119 = load i32*, i32** %y, align 8
  %cmp146 = icmp ne i32* %119, null
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.end.145
  %120 = load i32*, i32** %y, align 8
  %121 = bitcast i32* %120 to i8*
  call void @free(i8* %121) #4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %if.end.145
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.149, %for.end.139
  %122 = load i32, i32* %retval
  ret i32 %122
}

; Function Attrs: nounwind uwtable
define double @EVDDistribution(float %x, float %mu, float %lambda) #0 {
entry:
  %x.addr = alloca float, align 4
  %mu.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %mu, float* %mu.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  %0 = load float, float* %lambda.addr, align 4
  %conv = fpext float %0 to double
  %mul = fmul double -1.000000e+00, %conv
  %1 = load float, float* %x.addr, align 4
  %2 = load float, float* %mu.addr, align 4
  %sub = fsub float %1, %2
  %conv1 = fpext float %sub to double
  %mul2 = fmul double %mul, %conv1
  %call = call double @exp(double %mul2) #4
  %mul3 = fmul double -1.000000e+00, %call
  %call4 = call double @exp(double %mul3) #4
  ret double %call4
}

; Function Attrs: nounwind uwtable
define i32 @EVDCensoredFit(float* %x, i32* %y, i32 %n, i32 %z, float %c, float* %ret_mu, float* %ret_lambda) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca float*, align 8
  %y.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %c.addr = alloca float, align 4
  %ret_mu.addr = alloca float*, align 8
  %ret_lambda.addr = alloca float*, align 8
  %lambda = alloca float, align 4
  %mu = alloca float, align 4
  %fx = alloca float, align 4
  %dfx = alloca float, align 4
  %esum = alloca double, align 8
  %mult = alloca double, align 8
  %total = alloca double, align 8
  %tol = alloca float, align 4
  %i = alloca i32, align 4
  %left = alloca float, align 4
  %right = alloca float, align 4
  %mid = alloca float, align 4
  store float* %x, float** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store float %c, float* %c.addr, align 4
  store float* %ret_mu, float** %ret_mu.addr, align 8
  store float* %ret_lambda, float** %ret_lambda.addr, align 8
  store float 0x3EE4F8B580000000, float* %tol, align 4
  store float 0x3FC99999A0000000, float* %lambda, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float*, float** %x.addr, align 8
  %2 = load i32*, i32** %y.addr, align 8
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i32, i32* %z.addr, align 4
  %5 = load float, float* %c.addr, align 4
  %6 = load float, float* %lambda, align 4
  call void @Lawless422(float* %1, i32* %2, i32 %3, i32 %4, float %5, float %6, float* %fx, float* %dfx)
  %7 = load float, float* %fx, align 4
  %conv = fpext float %7 to double
  %call = call double @fabs(double %conv) #5
  %8 = load float, float* %tol, align 4
  %conv1 = fpext float %8 to double
  %cmp2 = fcmp olt double %call, %conv1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = load float, float* %lambda, align 4
  %10 = load float, float* %fx, align 4
  %11 = load float, float* %dfx, align 4
  %div = fdiv float %10, %11
  %sub = fsub float %9, %div
  store float %sub, float* %lambda, align 4
  %12 = load float, float* %lambda, align 4
  %conv4 = fpext float %12 to double
  %cmp5 = fcmp ole double %conv4, 0.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store float 0x3F50624DE0000000, float* %lambda, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load i32, i32* %i, align 4
  %cmp9 = icmp eq i32 %14, 100
  br i1 %cmp9, label %if.then.11, label %if.end.69

if.then.11:                                       ; preds = %for.end
  store float 0x3FC99999A0000000, float* %left, align 4
  store float 0x3FC99999A0000000, float* %right, align 4
  store float 0x3FC99999A0000000, float* %lambda, align 4
  %15 = load float*, float** %x.addr, align 8
  %16 = load i32*, i32** %y.addr, align 8
  %17 = load i32, i32* %n.addr, align 4
  %18 = load i32, i32* %z.addr, align 4
  %19 = load float, float* %c.addr, align 4
  %20 = load float, float* %lambda, align 4
  call void @Lawless422(float* %15, i32* %16, i32 %17, i32 %18, float %19, float %20, float* %fx, float* %dfx)
  %21 = load float, float* %fx, align 4
  %conv12 = fpext float %21 to double
  %cmp13 = fcmp olt double %conv12, 0.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.11
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.15
  %22 = load float, float* %left, align 4
  %conv16 = fpext float %22 to double
  %sub17 = fsub double %conv16, 3.000000e-02
  %conv18 = fptrunc double %sub17 to float
  store float %conv18, float* %left, align 4
  %23 = load float, float* %left, align 4
  %conv19 = fpext float %23 to double
  %cmp20 = fcmp olt double %conv19, 0.000000e+00
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %do.body
  %24 = load float*, float** %x.addr, align 8
  %25 = load i32*, i32** %y.addr, align 8
  %26 = load i32, i32* %n.addr, align 4
  %27 = load i32, i32* %z.addr, align 4
  %28 = load float, float* %c.addr, align 4
  %29 = load float, float* %left, align 4
  call void @Lawless422(float* %24, i32* %25, i32 %26, i32 %27, float %28, float %29, float* %fx, float* %dfx)
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  %30 = load float, float* %fx, align 4
  %conv24 = fpext float %30 to double
  %cmp25 = fcmp olt double %conv24, 0.000000e+00
  br i1 %cmp25, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.40

if.else:                                          ; preds = %if.then.11
  br label %do.body.27

do.body.27:                                       ; preds = %do.cond.35, %if.else
  %31 = load float, float* %right, align 4
  %conv28 = fpext float %31 to double
  %add = fadd double %conv28, 1.000000e-01
  %conv29 = fptrunc double %add to float
  store float %conv29, float* %right, align 4
  %32 = load float*, float** %x.addr, align 8
  %33 = load i32*, i32** %y.addr, align 8
  %34 = load i32, i32* %n.addr, align 4
  %35 = load i32, i32* %z.addr, align 4
  %36 = load float, float* %c.addr, align 4
  %37 = load float, float* %left, align 4
  call void @Lawless422(float* %32, i32* %33, i32 %34, i32 %35, float %36, float %37, float* %fx, float* %dfx)
  %38 = load float, float* %right, align 4
  %conv30 = fpext float %38 to double
  %cmp31 = fcmp ogt double %conv30, 1.000000e+02
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.body.27
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %do.body.27
  br label %do.cond.35

do.cond.35:                                       ; preds = %if.end.34
  %39 = load float, float* %fx, align 4
  %conv36 = fpext float %39 to double
  %cmp37 = fcmp ogt double %conv36, 0.000000e+00
  br i1 %cmp37, label %do.body.27, label %do.end.39

do.end.39:                                        ; preds = %do.cond.35
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.62, %if.end.40
  %40 = load i32, i32* %i, align 4
  %cmp42 = icmp slt i32 %40, 100
  br i1 %cmp42, label %for.body.44, label %for.end.64

for.body.44:                                      ; preds = %for.cond.41
  %41 = load float, float* %left, align 4
  %42 = load float, float* %right, align 4
  %add45 = fadd float %41, %42
  %conv46 = fpext float %add45 to double
  %div47 = fdiv double %conv46, 2.000000e+00
  %conv48 = fptrunc double %div47 to float
  store float %conv48, float* %mid, align 4
  %43 = load float*, float** %x.addr, align 8
  %44 = load i32*, i32** %y.addr, align 8
  %45 = load i32, i32* %n.addr, align 4
  %46 = load i32, i32* %z.addr, align 4
  %47 = load float, float* %c.addr, align 4
  %48 = load float, float* %left, align 4
  call void @Lawless422(float* %43, i32* %44, i32 %45, i32 %46, float %47, float %48, float* %fx, float* %dfx)
  %49 = load float, float* %fx, align 4
  %conv49 = fpext float %49 to double
  %call50 = call double @fabs(double %conv49) #5
  %50 = load float, float* %tol, align 4
  %conv51 = fpext float %50 to double
  %cmp52 = fcmp olt double %call50, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.body.44
  br label %for.end.64

if.end.55:                                        ; preds = %for.body.44
  %51 = load float, float* %fx, align 4
  %conv56 = fpext float %51 to double
  %cmp57 = fcmp ogt double %conv56, 0.000000e+00
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.end.55
  %52 = load float, float* %mid, align 4
  store float %52, float* %left, align 4
  br label %if.end.61

if.else.60:                                       ; preds = %if.end.55
  %53 = load float, float* %mid, align 4
  store float %53, float* %right, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.then.59
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %54 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %54, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.41

for.end.64:                                       ; preds = %if.then.54, %for.cond.41
  %55 = load i32, i32* %i, align 4
  %cmp65 = icmp eq i32 %55, 100
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.end.64
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %for.end.64
  %56 = load float, float* %mid, align 4
  store float %56, float* %lambda, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %for.end
  store double 0.000000e+00, double* %total, align 8
  store double 0.000000e+00, double* %esum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.86, %if.end.69
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp71 = icmp slt i32 %57, %58
  br i1 %cmp71, label %for.body.73, label %for.end.88

for.body.73:                                      ; preds = %for.cond.70
  %59 = load i32*, i32** %y.addr, align 8
  %cmp74 = icmp eq i32* %59, null
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.73
  br label %cond.end

cond.false:                                       ; preds = %for.body.73
  %60 = load i32, i32* %i, align 4
  %idxprom = sext i32 %60 to i64
  %61 = load i32*, i32** %y.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %61, i64 %idxprom
  %62 = load i32, i32* %arrayidx, align 4
  %conv76 = sitofp i32 %62 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %conv76, %cond.false ]
  store double %cond, double* %mult, align 8
  %63 = load double, double* %mult, align 8
  %64 = load float, float* %lambda, align 4
  %conv77 = fpext float %64 to double
  %mul = fmul double -1.000000e+00, %conv77
  %65 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %65 to i64
  %66 = load float*, float** %x.addr, align 8
  %arrayidx79 = getelementptr inbounds float, float* %66, i64 %idxprom78
  %67 = load float, float* %arrayidx79, align 4
  %conv80 = fpext float %67 to double
  %mul81 = fmul double %mul, %conv80
  %call82 = call double @exp(double %mul81) #4
  %mul83 = fmul double %63, %call82
  %68 = load double, double* %esum, align 8
  %add84 = fadd double %68, %mul83
  store double %add84, double* %esum, align 8
  %69 = load double, double* %mult, align 8
  %70 = load double, double* %total, align 8
  %add85 = fadd double %70, %69
  store double %add85, double* %total, align 8
  br label %for.inc.86

for.inc.86:                                       ; preds = %cond.end
  %71 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %71, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.70

for.end.88:                                       ; preds = %for.cond.70
  %72 = load i32, i32* %z.addr, align 4
  %conv89 = sitofp i32 %72 to double
  %73 = load float, float* %lambda, align 4
  %conv90 = fpext float %73 to double
  %mul91 = fmul double -1.000000e+00, %conv90
  %74 = load float, float* %c.addr, align 4
  %conv92 = fpext float %74 to double
  %mul93 = fmul double %mul91, %conv92
  %call94 = call double @exp(double %mul93) #4
  %mul95 = fmul double %conv89, %call94
  %75 = load double, double* %esum, align 8
  %add96 = fadd double %75, %mul95
  store double %add96, double* %esum, align 8
  %76 = load double, double* %esum, align 8
  %77 = load double, double* %total, align 8
  %div97 = fdiv double %76, %77
  %call98 = call double @log(double %div97) #4
  %mul99 = fmul double -1.000000e+00, %call98
  %78 = load float, float* %lambda, align 4
  %conv100 = fpext float %78 to double
  %div101 = fdiv double %mul99, %conv100
  %conv102 = fptrunc double %div101 to float
  store float %conv102, float* %mu, align 4
  %79 = load float, float* %lambda, align 4
  %80 = load float*, float** %ret_lambda.addr, align 8
  store float %79, float* %80, align 4
  %81 = load float, float* %mu, align 4
  %82 = load float*, float** %ret_mu.addr, align 8
  store float %81, float* %82, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.88, %if.then.67, %if.then.33, %if.then.22
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define i32 @EVDMaxLikelyFit(float* %x, i32* %c, i32 %n, float* %ret_mu, float* %ret_lambda) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca float*, align 8
  %c.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %ret_mu.addr = alloca float*, align 8
  %ret_lambda.addr = alloca float*, align 8
  %lambda = alloca float, align 4
  %mu = alloca float, align 4
  %fx = alloca float, align 4
  %dfx = alloca float, align 4
  %esum = alloca double, align 8
  %mult = alloca double, align 8
  %total = alloca double, align 8
  %tol = alloca float, align 4
  %i = alloca i32, align 4
  %left = alloca float, align 4
  %right = alloca float, align 4
  %mid = alloca float, align 4
  store float* %x, float** %x.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store float* %ret_mu, float** %ret_mu.addr, align 8
  store float* %ret_lambda, float** %ret_lambda.addr, align 8
  store float 0x3EE4F8B580000000, float* %tol, align 4
  store float 0x3FC99999A0000000, float* %lambda, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float*, float** %x.addr, align 8
  %2 = load i32*, i32** %c.addr, align 8
  %3 = load i32, i32* %n.addr, align 4
  %4 = load float, float* %lambda, align 4
  call void @Lawless416(float* %1, i32* %2, i32 %3, float %4, float* %fx, float* %dfx)
  %5 = load float, float* %fx, align 4
  %conv = fpext float %5 to double
  %call = call double @fabs(double %conv) #5
  %6 = load float, float* %tol, align 4
  %conv1 = fpext float %6 to double
  %cmp2 = fcmp olt double %call, %conv1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %7 = load float, float* %lambda, align 4
  %8 = load float, float* %fx, align 4
  %9 = load float, float* %dfx, align 4
  %div = fdiv float %8, %9
  %sub = fsub float %7, %div
  store float %sub, float* %lambda, align 4
  %10 = load float, float* %lambda, align 4
  %conv4 = fpext float %10 to double
  %cmp5 = fcmp ole double %conv4, 0.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store float 0x3F50624DE0000000, float* %lambda, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32, i32* %i, align 4
  %cmp9 = icmp eq i32 %12, 100
  br i1 %cmp9, label %if.then.11, label %if.end.69

if.then.11:                                       ; preds = %for.end
  store float 0x3FC99999A0000000, float* %left, align 4
  store float 0x3FC99999A0000000, float* %right, align 4
  store float 0x3FC99999A0000000, float* %lambda, align 4
  %13 = load float*, float** %x.addr, align 8
  %14 = load i32*, i32** %c.addr, align 8
  %15 = load i32, i32* %n.addr, align 4
  %16 = load float, float* %lambda, align 4
  call void @Lawless416(float* %13, i32* %14, i32 %15, float %16, float* %fx, float* %dfx)
  %17 = load float, float* %fx, align 4
  %conv12 = fpext float %17 to double
  %cmp13 = fcmp olt double %conv12, 0.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.11
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.15
  %18 = load float, float* %left, align 4
  %conv16 = fpext float %18 to double
  %sub17 = fsub double %conv16, 1.000000e-01
  %conv18 = fptrunc double %sub17 to float
  store float %conv18, float* %left, align 4
  %19 = load float, float* %left, align 4
  %conv19 = fpext float %19 to double
  %cmp20 = fcmp olt double %conv19, 0.000000e+00
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %do.body
  %20 = load float*, float** %x.addr, align 8
  %21 = load i32*, i32** %c.addr, align 8
  %22 = load i32, i32* %n.addr, align 4
  %23 = load float, float* %left, align 4
  call void @Lawless416(float* %20, i32* %21, i32 %22, float %23, float* %fx, float* %dfx)
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  %24 = load float, float* %fx, align 4
  %conv24 = fpext float %24 to double
  %cmp25 = fcmp olt double %conv24, 0.000000e+00
  br i1 %cmp25, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.40

if.else:                                          ; preds = %if.then.11
  br label %do.body.27

do.body.27:                                       ; preds = %do.cond.35, %if.else
  %25 = load float, float* %right, align 4
  %conv28 = fpext float %25 to double
  %add = fadd double %conv28, 1.000000e-01
  %conv29 = fptrunc double %add to float
  store float %conv29, float* %right, align 4
  %26 = load float*, float** %x.addr, align 8
  %27 = load i32*, i32** %c.addr, align 8
  %28 = load i32, i32* %n.addr, align 4
  %29 = load float, float* %right, align 4
  call void @Lawless416(float* %26, i32* %27, i32 %28, float %29, float* %fx, float* %dfx)
  %30 = load float, float* %right, align 4
  %conv30 = fpext float %30 to double
  %cmp31 = fcmp ogt double %conv30, 1.000000e+02
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.body.27
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %do.body.27
  br label %do.cond.35

do.cond.35:                                       ; preds = %if.end.34
  %31 = load float, float* %fx, align 4
  %conv36 = fpext float %31 to double
  %cmp37 = fcmp ogt double %conv36, 0.000000e+00
  br i1 %cmp37, label %do.body.27, label %do.end.39

do.end.39:                                        ; preds = %do.cond.35
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.62, %if.end.40
  %32 = load i32, i32* %i, align 4
  %cmp42 = icmp slt i32 %32, 100
  br i1 %cmp42, label %for.body.44, label %for.end.64

for.body.44:                                      ; preds = %for.cond.41
  %33 = load float, float* %left, align 4
  %34 = load float, float* %right, align 4
  %add45 = fadd float %33, %34
  %conv46 = fpext float %add45 to double
  %div47 = fdiv double %conv46, 2.000000e+00
  %conv48 = fptrunc double %div47 to float
  store float %conv48, float* %mid, align 4
  %35 = load float*, float** %x.addr, align 8
  %36 = load i32*, i32** %c.addr, align 8
  %37 = load i32, i32* %n.addr, align 4
  %38 = load float, float* %mid, align 4
  call void @Lawless416(float* %35, i32* %36, i32 %37, float %38, float* %fx, float* %dfx)
  %39 = load float, float* %fx, align 4
  %conv49 = fpext float %39 to double
  %call50 = call double @fabs(double %conv49) #5
  %40 = load float, float* %tol, align 4
  %conv51 = fpext float %40 to double
  %cmp52 = fcmp olt double %call50, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.body.44
  br label %for.end.64

if.end.55:                                        ; preds = %for.body.44
  %41 = load float, float* %fx, align 4
  %conv56 = fpext float %41 to double
  %cmp57 = fcmp ogt double %conv56, 0.000000e+00
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.end.55
  %42 = load float, float* %mid, align 4
  store float %42, float* %left, align 4
  br label %if.end.61

if.else.60:                                       ; preds = %if.end.55
  %43 = load float, float* %mid, align 4
  store float %43, float* %right, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.then.59
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %44 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %44, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.41

for.end.64:                                       ; preds = %if.then.54, %for.cond.41
  %45 = load i32, i32* %i, align 4
  %cmp65 = icmp eq i32 %45, 100
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.end.64
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %for.end.64
  %46 = load float, float* %mid, align 4
  store float %46, float* %lambda, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %for.end
  store double 0.000000e+00, double* %esum, align 8
  store double 0.000000e+00, double* %total, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.85, %if.end.69
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %n.addr, align 4
  %cmp71 = icmp slt i32 %47, %48
  br i1 %cmp71, label %for.body.73, label %for.end.87

for.body.73:                                      ; preds = %for.cond.70
  %49 = load i32*, i32** %c.addr, align 8
  %cmp74 = icmp eq i32* %49, null
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.73
  br label %cond.end

cond.false:                                       ; preds = %for.body.73
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load i32*, i32** %c.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %51, i64 %idxprom
  %52 = load i32, i32* %arrayidx, align 4
  %conv76 = sitofp i32 %52 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %conv76, %cond.false ]
  store double %cond, double* %mult, align 8
  %53 = load double, double* %mult, align 8
  %54 = load float, float* %lambda, align 4
  %mul = fmul float -1.000000e+00, %54
  %55 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %55 to i64
  %56 = load float*, float** %x.addr, align 8
  %arrayidx78 = getelementptr inbounds float, float* %56, i64 %idxprom77
  %57 = load float, float* %arrayidx78, align 4
  %mul79 = fmul float %mul, %57
  %conv80 = fpext float %mul79 to double
  %call81 = call double @exp(double %conv80) #4
  %mul82 = fmul double %53, %call81
  %58 = load double, double* %esum, align 8
  %add83 = fadd double %58, %mul82
  store double %add83, double* %esum, align 8
  %59 = load double, double* %mult, align 8
  %60 = load double, double* %total, align 8
  %add84 = fadd double %60, %59
  store double %add84, double* %total, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %cond.end
  %61 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %61, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond.70

for.end.87:                                       ; preds = %for.cond.70
  %62 = load double, double* %esum, align 8
  %63 = load double, double* %total, align 8
  %div88 = fdiv double %62, %63
  %call89 = call double @log(double %div88) #4
  %mul90 = fmul double -1.000000e+00, %call89
  %64 = load float, float* %lambda, align 4
  %conv91 = fpext float %64 to double
  %div92 = fdiv double %mul90, %conv91
  %conv93 = fptrunc double %div92 to float
  store float %conv93, float* %mu, align 4
  %65 = load float, float* %lambda, align 4
  %66 = load float*, float** %ret_lambda.addr, align 8
  store float %65, float* %66, align 4
  %67 = load float, float* %mu, align 4
  %68 = load float*, float** %ret_mu.addr, align 8
  store float %67, float* %68, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.87, %if.then.67, %if.then.33, %if.then.22
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define double @ExtremeValueE(float %x, float %mu, float %lambda, i32 %N) #0 {
entry:
  %x.addr = alloca float, align 4
  %mu.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %N.addr = alloca i32, align 4
  store float %x, float* %x.addr, align 4
  store float %mu, float* %mu.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load float, float* %x.addr, align 4
  %2 = load float, float* %mu.addr, align 4
  %3 = load float, float* %lambda.addr, align 4
  %call = call double @ExtremeValueP(float %1, float %2, float %3)
  %mul = fmul double %conv, %call
  ret double %mul
}

declare double @IncompleteGamma(double, double) #1

; Function Attrs: nounwind uwtable
define i32 @GaussianFitHistogram(%struct.histogram_s* %h, float %high_hint) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.histogram_s*, align 8
  %high_hint.addr = alloca float, align 4
  %sum = alloca float, align 4
  %sqsum = alloca float, align 4
  %delta = alloca float, align 4
  %sc = alloca i32, align 4
  %nbins = alloca i32, align 4
  %hsize = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  store float %high_hint, float* %high_hint.addr, align 4
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  call void @UnfitHistogram(%struct.histogram_s* %0)
  %1 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %1, i32 0, i32 6
  %2 = load i32, i32* %total, align 4
  %cmp = icmp slt i32 %2, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %3, i32 0, i32 8
  store i32 0, i32* %fit_type, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store float 0.000000e+00, float* %sqsum, align 4
  store float 0.000000e+00, float* %sum, align 4
  %4 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %4, i32 0, i32 4
  %5 = load i32, i32* %lowscore, align 4
  store i32 %5, i32* %sc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %sc, align 4
  %7 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %7, i32 0, i32 3
  %8 = load i32, i32* %highscore, align 4
  %cmp1 = icmp sle i32 %6, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %sc, align 4
  %conv = sitofp i32 %9 to float
  %conv2 = fpext float %conv to double
  %add = fadd double %conv2, 5.000000e-01
  %conv3 = fptrunc double %add to float
  store float %conv3, float* %delta, align 4
  %10 = load i32, i32* %sc, align 4
  %11 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %11, i32 0, i32 1
  %12 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %10, %12
  %idxprom = sext i32 %sub to i64
  %13 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %13, i32 0, i32 0
  %14 = load i32*, i32** %histogram, align 8
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %conv4 = sitofp i32 %15 to float
  %16 = load float, float* %delta, align 4
  %mul = fmul float %conv4, %16
  %17 = load float, float* %sum, align 4
  %add5 = fadd float %17, %mul
  store float %add5, float* %sum, align 4
  %18 = load i32, i32* %sc, align 4
  %19 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min6 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %19, i32 0, i32 1
  %20 = load i32, i32* %min6, align 4
  %sub7 = sub nsw i32 %18, %20
  %idxprom8 = sext i32 %sub7 to i64
  %21 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram9 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %21, i32 0, i32 0
  %22 = load i32*, i32** %histogram9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %22, i64 %idxprom8
  %23 = load i32, i32* %arrayidx10, align 4
  %conv11 = sitofp i32 %23 to float
  %24 = load float, float* %delta, align 4
  %mul12 = fmul float %conv11, %24
  %25 = load float, float* %delta, align 4
  %mul13 = fmul float %mul12, %25
  %26 = load float, float* %sqsum, align 4
  %add14 = fadd float %26, %mul13
  store float %add14, float* %sqsum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %sc, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %sc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type15 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %28, i32 0, i32 8
  store i32 2, i32* %fit_type15, align 4
  %29 = load float, float* %sum, align 4
  %30 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total16 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %30, i32 0, i32 6
  %31 = load i32, i32* %total16, align 4
  %conv17 = sitofp i32 %31 to float
  %div = fdiv float %29, %conv17
  %32 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %32, i32 0, i32 9
  %arrayidx18 = getelementptr inbounds [3 x float], [3 x float]* %param, i32 0, i64 0
  store float %div, float* %arrayidx18, align 4
  %33 = load float, float* %sqsum, align 4
  %34 = load float, float* %sum, align 4
  %35 = load float, float* %sum, align 4
  %mul19 = fmul float %34, %35
  %36 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total20 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %36, i32 0, i32 6
  %37 = load i32, i32* %total20, align 4
  %conv21 = sitofp i32 %37 to float
  %div22 = fdiv float %mul19, %conv21
  %sub23 = fsub float %33, %div22
  %38 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total24 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %38, i32 0, i32 6
  %39 = load i32, i32* %total24, align 4
  %sub25 = sub nsw i32 %39, 1
  %conv26 = sitofp i32 %sub25 to float
  %div27 = fdiv float %sub23, %conv26
  %conv28 = fpext float %div27 to double
  %call = call double @sqrt(double %conv28) #4
  %conv29 = fptrunc double %call to float
  %40 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param30 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %40, i32 0, i32 9
  %arrayidx31 = getelementptr inbounds [3 x float], [3 x float]* %param30, i32 0, i64 1
  store float %conv29, float* %arrayidx31, align 4
  %41 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %41, i32 0, i32 2
  %42 = load i32, i32* %max, align 4
  %43 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min32 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %43, i32 0, i32 1
  %44 = load i32, i32* %min32, align 4
  %sub33 = sub nsw i32 %42, %44
  %add34 = add nsw i32 %sub33, 1
  store i32 %add34, i32* %hsize, align 4
  %45 = load i32, i32* %hsize, align 4
  %conv35 = sext i32 %45 to i64
  %mul36 = mul i64 4, %conv35
  %call37 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 790, i64 %mul36)
  %46 = bitcast i8* %call37 to float*
  %47 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %47, i32 0, i32 7
  store float* %46, float** %expect, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.45, %for.end
  %48 = load i32, i32* %idx, align 4
  %49 = load i32, i32* %hsize, align 4
  %cmp39 = icmp slt i32 %48, %49
  br i1 %cmp39, label %for.body.41, label %for.end.47

for.body.41:                                      ; preds = %for.cond.38
  %50 = load i32, i32* %idx, align 4
  %idxprom42 = sext i32 %50 to i64
  %51 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect43 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %51, i32 0, i32 7
  %52 = load float*, float** %expect43, align 8
  %arrayidx44 = getelementptr inbounds float, float* %52, i64 %idxprom42
  store float 0.000000e+00, float* %arrayidx44, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.41
  %53 = load i32, i32* %idx, align 4
  %inc46 = add nsw i32 %53, 1
  store i32 %inc46, i32* %idx, align 4
  br label %for.cond.38

for.end.47:                                       ; preds = %for.cond.38
  %54 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min48 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %54, i32 0, i32 1
  %55 = load i32, i32* %min48, align 4
  store i32 %55, i32* %sc, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.93, %for.end.47
  %56 = load i32, i32* %sc, align 4
  %57 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max50 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %57, i32 0, i32 2
  %58 = load i32, i32* %max50, align 4
  %cmp51 = icmp sle i32 %56, %58
  br i1 %cmp51, label %for.body.53, label %for.end.95

for.body.53:                                      ; preds = %for.cond.49
  %59 = load i32, i32* %sc, align 4
  %conv54 = sitofp i32 %59 to float
  %conv55 = fpext float %conv54 to double
  %add56 = fadd double %conv55, 5.000000e-01
  %60 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param57 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %60, i32 0, i32 9
  %arrayidx58 = getelementptr inbounds [3 x float], [3 x float]* %param57, i32 0, i64 0
  %61 = load float, float* %arrayidx58, align 4
  %conv59 = fpext float %61 to double
  %sub60 = fsub double %add56, %conv59
  %conv61 = fptrunc double %sub60 to float
  store float %conv61, float* %delta, align 4
  %62 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total62 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %62, i32 0, i32 6
  %63 = load i32, i32* %total62, align 4
  %conv63 = sitofp i32 %63 to float
  %conv64 = fpext float %conv63 to double
  %64 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param65 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %64, i32 0, i32 9
  %arrayidx66 = getelementptr inbounds [3 x float], [3 x float]* %param65, i32 0, i64 1
  %65 = load float, float* %arrayidx66, align 4
  %conv67 = fpext float %65 to double
  %call68 = call double @sqrt(double 6.283180e+00) #4
  %mul69 = fmul double %conv67, %call68
  %div70 = fdiv double 1.000000e+00, %mul69
  %66 = load float, float* %delta, align 4
  %conv71 = fpext float %66 to double
  %mul72 = fmul double -1.000000e+00, %conv71
  %67 = load float, float* %delta, align 4
  %conv73 = fpext float %67 to double
  %mul74 = fmul double %mul72, %conv73
  %68 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param75 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %68, i32 0, i32 9
  %arrayidx76 = getelementptr inbounds [3 x float], [3 x float]* %param75, i32 0, i64 1
  %69 = load float, float* %arrayidx76, align 4
  %conv77 = fpext float %69 to double
  %mul78 = fmul double 2.000000e+00, %conv77
  %70 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param79 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %70, i32 0, i32 9
  %arrayidx80 = getelementptr inbounds [3 x float], [3 x float]* %param79, i32 0, i64 1
  %71 = load float, float* %arrayidx80, align 4
  %conv81 = fpext float %71 to double
  %mul82 = fmul double %mul78, %conv81
  %div83 = fdiv double %mul74, %mul82
  %call84 = call double @exp(double %div83) #4
  %mul85 = fmul double %div70, %call84
  %mul86 = fmul double %conv64, %mul85
  %conv87 = fptrunc double %mul86 to float
  %72 = load i32, i32* %sc, align 4
  %73 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min88 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %73, i32 0, i32 1
  %74 = load i32, i32* %min88, align 4
  %sub89 = sub nsw i32 %72, %74
  %idxprom90 = sext i32 %sub89 to i64
  %75 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect91 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %75, i32 0, i32 7
  %76 = load float*, float** %expect91, align 8
  %arrayidx92 = getelementptr inbounds float, float* %76, i64 %idxprom90
  store float %conv87, float* %arrayidx92, align 4
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.53
  %77 = load i32, i32* %sc, align 4
  %inc94 = add nsw i32 %77, 1
  store i32 %inc94, i32* %sc, align 4
  br label %for.cond.49

for.end.95:                                       ; preds = %for.cond.49
  %78 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %78, i32 0, i32 10
  store float 0.000000e+00, float* %chisq, align 4
  store i32 0, i32* %nbins, align 4
  %79 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore96 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %79, i32 0, i32 4
  %80 = load i32, i32* %lowscore96, align 4
  store i32 %80, i32* %sc, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.141, %for.end.95
  %81 = load i32, i32* %sc, align 4
  %82 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore98 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %82, i32 0, i32 3
  %83 = load i32, i32* %highscore98, align 4
  %cmp99 = icmp sle i32 %81, %83
  br i1 %cmp99, label %for.body.101, label %for.end.143

for.body.101:                                     ; preds = %for.cond.97
  %84 = load i32, i32* %sc, align 4
  %85 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min102 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %85, i32 0, i32 1
  %86 = load i32, i32* %min102, align 4
  %sub103 = sub nsw i32 %84, %86
  %idxprom104 = sext i32 %sub103 to i64
  %87 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect105 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %87, i32 0, i32 7
  %88 = load float*, float** %expect105, align 8
  %arrayidx106 = getelementptr inbounds float, float* %88, i64 %idxprom104
  %89 = load float, float* %arrayidx106, align 4
  %conv107 = fpext float %89 to double
  %cmp108 = fcmp oge double %conv107, 5.000000e+00
  br i1 %cmp108, label %land.lhs.true, label %if.end.140

land.lhs.true:                                    ; preds = %for.body.101
  %90 = load i32, i32* %sc, align 4
  %91 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min110 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %91, i32 0, i32 1
  %92 = load i32, i32* %min110, align 4
  %sub111 = sub nsw i32 %90, %92
  %idxprom112 = sext i32 %sub111 to i64
  %93 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram113 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %93, i32 0, i32 0
  %94 = load i32*, i32** %histogram113, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %94, i64 %idxprom112
  %95 = load i32, i32* %arrayidx114, align 4
  %cmp115 = icmp sge i32 %95, 5
  br i1 %cmp115, label %if.then.117, label %if.end.140

if.then.117:                                      ; preds = %land.lhs.true
  %96 = load i32, i32* %sc, align 4
  %97 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min118 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %97, i32 0, i32 1
  %98 = load i32, i32* %min118, align 4
  %sub119 = sub nsw i32 %96, %98
  %idxprom120 = sext i32 %sub119 to i64
  %99 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram121 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %99, i32 0, i32 0
  %100 = load i32*, i32** %histogram121, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %100, i64 %idxprom120
  %101 = load i32, i32* %arrayidx122, align 4
  %conv123 = sitofp i32 %101 to float
  %102 = load i32, i32* %sc, align 4
  %103 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min124 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %103, i32 0, i32 1
  %104 = load i32, i32* %min124, align 4
  %sub125 = sub nsw i32 %102, %104
  %idxprom126 = sext i32 %sub125 to i64
  %105 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect127 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %105, i32 0, i32 7
  %106 = load float*, float** %expect127, align 8
  %arrayidx128 = getelementptr inbounds float, float* %106, i64 %idxprom126
  %107 = load float, float* %arrayidx128, align 4
  %sub129 = fsub float %conv123, %107
  store float %sub129, float* %delta, align 4
  %108 = load float, float* %delta, align 4
  %109 = load float, float* %delta, align 4
  %mul130 = fmul float %108, %109
  %110 = load i32, i32* %sc, align 4
  %111 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min131 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %111, i32 0, i32 1
  %112 = load i32, i32* %min131, align 4
  %sub132 = sub nsw i32 %110, %112
  %idxprom133 = sext i32 %sub132 to i64
  %113 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect134 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %113, i32 0, i32 7
  %114 = load float*, float** %expect134, align 8
  %arrayidx135 = getelementptr inbounds float, float* %114, i64 %idxprom133
  %115 = load float, float* %arrayidx135, align 4
  %div136 = fdiv float %mul130, %115
  %116 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq137 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %116, i32 0, i32 10
  %117 = load float, float* %chisq137, align 4
  %add138 = fadd float %117, %div136
  store float %add138, float* %chisq137, align 4
  %118 = load i32, i32* %nbins, align 4
  %inc139 = add nsw i32 %118, 1
  store i32 %inc139, i32* %nbins, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.117, %land.lhs.true, %for.body.101
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %119 = load i32, i32* %sc, align 4
  %inc142 = add nsw i32 %119, 1
  store i32 %inc142, i32* %sc, align 4
  br label %for.cond.97

for.end.143:                                      ; preds = %for.cond.97
  %120 = load i32, i32* %nbins, align 4
  %cmp144 = icmp sgt i32 %120, 3
  br i1 %cmp144, label %if.then.146, label %if.else

if.then.146:                                      ; preds = %for.end.143
  %121 = load i32, i32* %nbins, align 4
  %sub147 = sub nsw i32 %121, 3
  %conv148 = sitofp i32 %sub147 to double
  %div149 = fdiv double %conv148, 2.000000e+00
  %122 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq150 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %122, i32 0, i32 10
  %123 = load float, float* %chisq150, align 4
  %conv151 = fpext float %123 to double
  %div152 = fdiv double %conv151, 2.000000e+00
  %call153 = call double @IncompleteGamma(double %div149, double %div152)
  %conv154 = fptrunc double %call153 to float
  %124 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chip = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %124, i32 0, i32 11
  store float %conv154, float* %chip, align 4
  br label %if.end.156

if.else:                                          ; preds = %for.end.143
  %125 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chip155 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %125, i32 0, i32 11
  store float 0.000000e+00, float* %chip155, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.else, %if.then.146
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.156, %if.then
  %126 = load i32, i32* %retval
  ret i32 %126
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind uwtable
define void @GaussianSetHistogram(%struct.histogram_s* %h, float %mean, float %sd) #0 {
entry:
  %h.addr = alloca %struct.histogram_s*, align 8
  %mean.addr = alloca float, align 4
  %sd.addr = alloca float, align 4
  %sc = alloca i32, align 4
  %hsize = alloca i32, align 4
  %idx = alloca i32, align 4
  %nbins = alloca i32, align 4
  %delta = alloca float, align 4
  store %struct.histogram_s* %h, %struct.histogram_s** %h.addr, align 8
  store float %mean, float* %mean.addr, align 4
  store float %sd, float* %sd.addr, align 4
  %0 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  call void @UnfitHistogram(%struct.histogram_s* %0)
  %1 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %fit_type = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %1, i32 0, i32 8
  store i32 2, i32* %fit_type, align 4
  %2 = load float, float* %mean.addr, align 4
  %3 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %3, i32 0, i32 9
  %arrayidx = getelementptr inbounds [3 x float], [3 x float]* %param, i32 0, i64 0
  store float %2, float* %arrayidx, align 4
  %4 = load float, float* %sd.addr, align 4
  %5 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param1 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %5, i32 0, i32 9
  %arrayidx2 = getelementptr inbounds [3 x float], [3 x float]* %param1, i32 0, i64 1
  store float %4, float* %arrayidx2, align 4
  %6 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %6, i32 0, i32 2
  %7 = load i32, i32* %max, align 4
  %8 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %8, i32 0, i32 1
  %9 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %7, %9
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %hsize, align 4
  %10 = load i32, i32* %hsize, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 845, i64 %mul)
  %11 = bitcast i8* %call to float*
  %12 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %12, i32 0, i32 7
  store float* %11, float** %expect, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %idx, align 4
  %14 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect4 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %16, i32 0, i32 7
  %17 = load float*, float** %expect4, align 8
  %arrayidx5 = getelementptr inbounds float, float* %17, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min6 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %19, i32 0, i32 1
  %20 = load i32, i32* %min6, align 4
  store i32 %20, i32* %sc, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.49, %for.end
  %21 = load i32, i32* %sc, align 4
  %22 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %max8 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %22, i32 0, i32 2
  %23 = load i32, i32* %max8, align 4
  %cmp9 = icmp sle i32 %21, %23
  br i1 %cmp9, label %for.body.11, label %for.end.51

for.body.11:                                      ; preds = %for.cond.7
  %24 = load i32, i32* %sc, align 4
  %conv12 = sitofp i32 %24 to float
  %conv13 = fpext float %conv12 to double
  %add14 = fadd double %conv13, 5.000000e-01
  %25 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param15 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %25, i32 0, i32 9
  %arrayidx16 = getelementptr inbounds [3 x float], [3 x float]* %param15, i32 0, i64 0
  %26 = load float, float* %arrayidx16, align 4
  %conv17 = fpext float %26 to double
  %sub18 = fsub double %add14, %conv17
  %conv19 = fptrunc double %sub18 to float
  store float %conv19, float* %delta, align 4
  %27 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %total = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %27, i32 0, i32 6
  %28 = load i32, i32* %total, align 4
  %conv20 = sitofp i32 %28 to float
  %conv21 = fpext float %conv20 to double
  %29 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param22 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %29, i32 0, i32 9
  %arrayidx23 = getelementptr inbounds [3 x float], [3 x float]* %param22, i32 0, i64 1
  %30 = load float, float* %arrayidx23, align 4
  %conv24 = fpext float %30 to double
  %call25 = call double @sqrt(double 6.283180e+00) #4
  %mul26 = fmul double %conv24, %call25
  %div = fdiv double 1.000000e+00, %mul26
  %31 = load float, float* %delta, align 4
  %conv27 = fpext float %31 to double
  %mul28 = fmul double -1.000000e+00, %conv27
  %32 = load float, float* %delta, align 4
  %conv29 = fpext float %32 to double
  %mul30 = fmul double %mul28, %conv29
  %33 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param31 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %33, i32 0, i32 9
  %arrayidx32 = getelementptr inbounds [3 x float], [3 x float]* %param31, i32 0, i64 1
  %34 = load float, float* %arrayidx32, align 4
  %conv33 = fpext float %34 to double
  %mul34 = fmul double 2.000000e+00, %conv33
  %35 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %param35 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %35, i32 0, i32 9
  %arrayidx36 = getelementptr inbounds [3 x float], [3 x float]* %param35, i32 0, i64 1
  %36 = load float, float* %arrayidx36, align 4
  %conv37 = fpext float %36 to double
  %mul38 = fmul double %mul34, %conv37
  %div39 = fdiv double %mul30, %mul38
  %call40 = call double @exp(double %div39) #4
  %mul41 = fmul double %div, %call40
  %mul42 = fmul double %conv21, %mul41
  %conv43 = fptrunc double %mul42 to float
  %37 = load i32, i32* %sc, align 4
  %38 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min44 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %38, i32 0, i32 1
  %39 = load i32, i32* %min44, align 4
  %sub45 = sub nsw i32 %37, %39
  %idxprom46 = sext i32 %sub45 to i64
  %40 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect47 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %40, i32 0, i32 7
  %41 = load float*, float** %expect47, align 8
  %arrayidx48 = getelementptr inbounds float, float* %41, i64 %idxprom46
  store float %conv43, float* %arrayidx48, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.11
  %42 = load i32, i32* %sc, align 4
  %inc50 = add nsw i32 %42, 1
  store i32 %inc50, i32* %sc, align 4
  br label %for.cond.7

for.end.51:                                       ; preds = %for.cond.7
  %43 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %43, i32 0, i32 10
  store float 0.000000e+00, float* %chisq, align 4
  store i32 0, i32* %nbins, align 4
  %44 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %lowscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %44, i32 0, i32 4
  %45 = load i32, i32* %lowscore, align 4
  store i32 %45, i32* %sc, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.92, %for.end.51
  %46 = load i32, i32* %sc, align 4
  %47 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %highscore = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %47, i32 0, i32 3
  %48 = load i32, i32* %highscore, align 4
  %cmp53 = icmp sle i32 %46, %48
  br i1 %cmp53, label %for.body.55, label %for.end.94

for.body.55:                                      ; preds = %for.cond.52
  %49 = load i32, i32* %sc, align 4
  %50 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min56 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %50, i32 0, i32 1
  %51 = load i32, i32* %min56, align 4
  %sub57 = sub nsw i32 %49, %51
  %idxprom58 = sext i32 %sub57 to i64
  %52 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect59 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %52, i32 0, i32 7
  %53 = load float*, float** %expect59, align 8
  %arrayidx60 = getelementptr inbounds float, float* %53, i64 %idxprom58
  %54 = load float, float* %arrayidx60, align 4
  %conv61 = fpext float %54 to double
  %cmp62 = fcmp oge double %conv61, 5.000000e+00
  br i1 %cmp62, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.55
  %55 = load i32, i32* %sc, align 4
  %56 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min64 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %56, i32 0, i32 1
  %57 = load i32, i32* %min64, align 4
  %sub65 = sub nsw i32 %55, %57
  %idxprom66 = sext i32 %sub65 to i64
  %58 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %58, i32 0, i32 0
  %59 = load i32*, i32** %histogram, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %59, i64 %idxprom66
  %60 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp sge i32 %60, 5
  br i1 %cmp68, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %61 = load i32, i32* %sc, align 4
  %62 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min70 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %62, i32 0, i32 1
  %63 = load i32, i32* %min70, align 4
  %sub71 = sub nsw i32 %61, %63
  %idxprom72 = sext i32 %sub71 to i64
  %64 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %histogram73 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %64, i32 0, i32 0
  %65 = load i32*, i32** %histogram73, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %65, i64 %idxprom72
  %66 = load i32, i32* %arrayidx74, align 4
  %conv75 = sitofp i32 %66 to float
  %67 = load i32, i32* %sc, align 4
  %68 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min76 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %68, i32 0, i32 1
  %69 = load i32, i32* %min76, align 4
  %sub77 = sub nsw i32 %67, %69
  %idxprom78 = sext i32 %sub77 to i64
  %70 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect79 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %70, i32 0, i32 7
  %71 = load float*, float** %expect79, align 8
  %arrayidx80 = getelementptr inbounds float, float* %71, i64 %idxprom78
  %72 = load float, float* %arrayidx80, align 4
  %sub81 = fsub float %conv75, %72
  store float %sub81, float* %delta, align 4
  %73 = load float, float* %delta, align 4
  %74 = load float, float* %delta, align 4
  %mul82 = fmul float %73, %74
  %75 = load i32, i32* %sc, align 4
  %76 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %min83 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %76, i32 0, i32 1
  %77 = load i32, i32* %min83, align 4
  %sub84 = sub nsw i32 %75, %77
  %idxprom85 = sext i32 %sub84 to i64
  %78 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %expect86 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %78, i32 0, i32 7
  %79 = load float*, float** %expect86, align 8
  %arrayidx87 = getelementptr inbounds float, float* %79, i64 %idxprom85
  %80 = load float, float* %arrayidx87, align 4
  %div88 = fdiv float %mul82, %80
  %81 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq89 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %81, i32 0, i32 10
  %82 = load float, float* %chisq89, align 4
  %add90 = fadd float %82, %div88
  store float %add90, float* %chisq89, align 4
  %83 = load i32, i32* %nbins, align 4
  %inc91 = add nsw i32 %83, 1
  store i32 %inc91, i32* %nbins, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.55
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end
  %84 = load i32, i32* %sc, align 4
  %inc93 = add nsw i32 %84, 1
  store i32 %inc93, i32* %sc, align 4
  br label %for.cond.52

for.end.94:                                       ; preds = %for.cond.52
  %85 = load i32, i32* %nbins, align 4
  %cmp95 = icmp sgt i32 %85, 1
  br i1 %cmp95, label %if.then.97, label %if.else

if.then.97:                                       ; preds = %for.end.94
  %86 = load i32, i32* %nbins, align 4
  %sub98 = sub nsw i32 %86, 1
  %conv99 = sitofp i32 %sub98 to double
  %div100 = fdiv double %conv99, 2.000000e+00
  %87 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chisq101 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %87, i32 0, i32 10
  %88 = load float, float* %chisq101, align 4
  %conv102 = fpext float %88 to double
  %div103 = fdiv double %conv102, 2.000000e+00
  %call104 = call double @IncompleteGamma(double %div100, double %div103)
  %conv105 = fptrunc double %call104 to float
  %89 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chip = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %89, i32 0, i32 11
  store float %conv105, float* %chip, align 4
  br label %if.end.107

if.else:                                          ; preds = %for.end.94
  %90 = load %struct.histogram_s*, %struct.histogram_s** %h.addr, align 8
  %chip106 = getelementptr inbounds %struct.histogram_s, %struct.histogram_s* %90, i32 0, i32 11
  store float 0.000000e+00, float* %chip106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.97
  ret void
}

; Function Attrs: nounwind uwtable
define double @EVDDensity(float %x, float %mu, float %lambda) #0 {
entry:
  %x.addr = alloca float, align 4
  %mu.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %mu, float* %mu.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  %0 = load float, float* %lambda.addr, align 4
  %conv = fpext float %0 to double
  %1 = load float, float* %lambda.addr, align 4
  %conv1 = fpext float %1 to double
  %mul = fmul double -1.000000e+00, %conv1
  %2 = load float, float* %x.addr, align 4
  %3 = load float, float* %mu.addr, align 4
  %sub = fsub float %2, %3
  %conv2 = fpext float %sub to double
  %mul3 = fmul double %mul, %conv2
  %4 = load float, float* %lambda.addr, align 4
  %conv4 = fpext float %4 to double
  %mul5 = fmul double -1.000000e+00, %conv4
  %5 = load float, float* %x.addr, align 4
  %6 = load float, float* %mu.addr, align 4
  %sub6 = fsub float %5, %6
  %conv7 = fpext float %sub6 to double
  %mul8 = fmul double %mul5, %conv7
  %call = call double @exp(double %mul8) #4
  %sub9 = fsub double %mul3, %call
  %call10 = call double @exp(double %sub9) #4
  %mul11 = fmul double %conv, %call10
  ret double %mul11
}

; Function Attrs: nounwind uwtable
define double @ExtremeValueP2(float %x, float %mu, float %lambda, i32 %N) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca float, align 4
  %mu.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %N.addr = alloca i32, align 4
  %y = alloca double, align 8
  store float %x, float* %x.addr, align 4
  store float %mu, float* %mu.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load float, float* %x.addr, align 4
  %2 = load float, float* %mu.addr, align 4
  %3 = load float, float* %lambda.addr, align 4
  %call = call double @ExtremeValueP(float %1, float %2, float %3)
  %mul = fmul double %conv, %call
  store double %mul, double* %y, align 8
  %4 = load double, double* %y, align 8
  %cmp = fcmp olt double %4, 1.000000e-07
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load double, double* %y, align 8
  store double %5, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load double, double* %y, align 8
  %mul2 = fmul double -1.000000e+00, %6
  %call3 = call double @exp(double %mul2) #4
  %sub = fsub double 1.000000e+00, %call3
  store double %sub, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load double, double* %retval
  ret double %7
}

; Function Attrs: nounwind uwtable
define float @EVDrandom(float %mu, float %lambda) #0 {
entry:
  %mu.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %p = alloca float, align 4
  store float %mu, float* %mu.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  store float 0.000000e+00, float* %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load float, float* %p, align 4
  %conv = fpext float %0 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load float, float* %p, align 4
  %conv2 = fpext float %1 to double
  %cmp3 = fcmp oeq double %conv2, 1.000000e+00
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %call = call double @sre_random()
  %conv5 = fptrunc double %call to float
  store float %conv5, float* %p, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %3 = load float, float* %mu.addr, align 4
  %conv6 = fpext float %3 to double
  %4 = load float, float* %p, align 4
  %conv7 = fpext float %4 to double
  %call8 = call double @log(double %conv7) #4
  %mul = fmul double -1.000000e+00, %call8
  %call9 = call double @log(double %mul) #4
  %5 = load float, float* %lambda.addr, align 4
  %conv10 = fpext float %5 to double
  %div = fdiv double %call9, %conv10
  %sub = fsub double %conv6, %div
  %conv11 = fptrunc double %sub to float
  ret float %conv11
}

declare double @sre_random() #1

; Function Attrs: nounwind uwtable
define void @Lawless416(float* %x, i32* %y, i32 %n, float %lambda, float* %ret_f, float* %ret_df) #0 {
entry:
  %x.addr = alloca float*, align 8
  %y.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %lambda.addr = alloca float, align 4
  %ret_f.addr = alloca float*, align 8
  %ret_df.addr = alloca float*, align 8
  %esum = alloca double, align 8
  %xesum = alloca double, align 8
  %xxesum = alloca double, align 8
  %xsum = alloca double, align 8
  %mult = alloca double, align 8
  %total = alloca double, align 8
  %i = alloca i32, align 4
  store float* %x, float** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  store float* %ret_f, float** %ret_f.addr, align 8
  store float* %ret_df, float** %ret_df.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  store double 0.000000e+00, double* %xxesum, align 8
  store double 0.000000e+00, double* %xsum, align 8
  store double 0.000000e+00, double* %xesum, align 8
  store double 0.000000e+00, double* %esum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %y.addr, align 8
  %cmp1 = icmp eq i32* %2, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %y.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %conv = sitofp i32 %5 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %conv, %cond.false ]
  store double %cond, double* %mult, align 8
  %6 = load double, double* %mult, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load float*, float** %x.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %8, i64 %idxprom2
  %9 = load float, float* %arrayidx3, align 4
  %conv4 = fpext float %9 to double
  %mul = fmul double %6, %conv4
  %10 = load double, double* %xsum, align 8
  %add = fadd double %10, %mul
  store double %add, double* %xsum, align 8
  %11 = load double, double* %mult, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load float*, float** %x.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %13, i64 %idxprom5
  %14 = load float, float* %arrayidx6, align 4
  %conv7 = fpext float %14 to double
  %mul8 = fmul double %11, %conv7
  %15 = load float, float* %lambda.addr, align 4
  %conv9 = fpext float %15 to double
  %mul10 = fmul double -1.000000e+00, %conv9
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load float*, float** %x.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %17, i64 %idxprom11
  %18 = load float, float* %arrayidx12, align 4
  %conv13 = fpext float %18 to double
  %mul14 = fmul double %mul10, %conv13
  %call = call double @exp(double %mul14) #4
  %mul15 = fmul double %mul8, %call
  %19 = load double, double* %xesum, align 8
  %add16 = fadd double %19, %mul15
  store double %add16, double* %xesum, align 8
  %20 = load double, double* %mult, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load float*, float** %x.addr, align 8
  %arrayidx18 = getelementptr inbounds float, float* %22, i64 %idxprom17
  %23 = load float, float* %arrayidx18, align 4
  %conv19 = fpext float %23 to double
  %mul20 = fmul double %20, %conv19
  %24 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load float*, float** %x.addr, align 8
  %arrayidx22 = getelementptr inbounds float, float* %25, i64 %idxprom21
  %26 = load float, float* %arrayidx22, align 4
  %conv23 = fpext float %26 to double
  %mul24 = fmul double %mul20, %conv23
  %27 = load float, float* %lambda.addr, align 4
  %conv25 = fpext float %27 to double
  %mul26 = fmul double -1.000000e+00, %conv25
  %28 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %28 to i64
  %29 = load float*, float** %x.addr, align 8
  %arrayidx28 = getelementptr inbounds float, float* %29, i64 %idxprom27
  %30 = load float, float* %arrayidx28, align 4
  %conv29 = fpext float %30 to double
  %mul30 = fmul double %mul26, %conv29
  %call31 = call double @exp(double %mul30) #4
  %mul32 = fmul double %mul24, %call31
  %31 = load double, double* %xxesum, align 8
  %add33 = fadd double %31, %mul32
  store double %add33, double* %xxesum, align 8
  %32 = load double, double* %mult, align 8
  %33 = load float, float* %lambda.addr, align 4
  %conv34 = fpext float %33 to double
  %mul35 = fmul double -1.000000e+00, %conv34
  %34 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %34 to i64
  %35 = load float*, float** %x.addr, align 8
  %arrayidx37 = getelementptr inbounds float, float* %35, i64 %idxprom36
  %36 = load float, float* %arrayidx37, align 4
  %conv38 = fpext float %36 to double
  %mul39 = fmul double %mul35, %conv38
  %call40 = call double @exp(double %mul39) #4
  %mul41 = fmul double %32, %call40
  %37 = load double, double* %esum, align 8
  %add42 = fadd double %37, %mul41
  store double %add42, double* %esum, align 8
  %38 = load double, double* %mult, align 8
  %39 = load double, double* %total, align 8
  %add43 = fadd double %39, %38
  store double %add43, double* %total, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load float, float* %lambda.addr, align 4
  %conv44 = fpext float %41 to double
  %div = fdiv double 1.000000e+00, %conv44
  %42 = load double, double* %xsum, align 8
  %43 = load double, double* %total, align 8
  %div45 = fdiv double %42, %43
  %sub = fsub double %div, %div45
  %44 = load double, double* %xesum, align 8
  %45 = load double, double* %esum, align 8
  %div46 = fdiv double %44, %45
  %add47 = fadd double %sub, %div46
  %conv48 = fptrunc double %add47 to float
  %46 = load float*, float** %ret_f.addr, align 8
  store float %conv48, float* %46, align 4
  %47 = load double, double* %xesum, align 8
  %48 = load double, double* %esum, align 8
  %div49 = fdiv double %47, %48
  %49 = load double, double* %xesum, align 8
  %50 = load double, double* %esum, align 8
  %div50 = fdiv double %49, %50
  %mul51 = fmul double %div49, %div50
  %51 = load double, double* %xxesum, align 8
  %52 = load double, double* %esum, align 8
  %div52 = fdiv double %51, %52
  %sub53 = fsub double %mul51, %div52
  %53 = load float, float* %lambda.addr, align 4
  %54 = load float, float* %lambda.addr, align 4
  %mul54 = fmul float %53, %54
  %conv55 = fpext float %mul54 to double
  %div56 = fdiv double 1.000000e+00, %conv55
  %sub57 = fsub double %sub53, %div56
  %conv58 = fptrunc double %sub57 to float
  %55 = load float*, float** %ret_df.addr, align 8
  store float %conv58, float* %55, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float %lambda, float* %ret_f, float* %ret_df) #0 {
entry:
  %x.addr = alloca float*, align 8
  %y.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %c.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %ret_f.addr = alloca float*, align 8
  %ret_df.addr = alloca float*, align 8
  %esum = alloca double, align 8
  %xesum = alloca double, align 8
  %xxesum = alloca double, align 8
  %xsum = alloca double, align 8
  %mult = alloca double, align 8
  %total = alloca double, align 8
  %i = alloca i32, align 4
  store float* %x, float** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store float %c, float* %c.addr, align 4
  store float %lambda, float* %lambda.addr, align 4
  store float* %ret_f, float** %ret_f.addr, align 8
  store float* %ret_df, float** %ret_df.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  store double 0.000000e+00, double* %xxesum, align 8
  store double 0.000000e+00, double* %xsum, align 8
  store double 0.000000e+00, double* %xesum, align 8
  store double 0.000000e+00, double* %esum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %y.addr, align 8
  %cmp1 = icmp eq i32* %2, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %y.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %conv = sitofp i32 %5 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %conv, %cond.false ]
  store double %cond, double* %mult, align 8
  %6 = load double, double* %mult, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load float*, float** %x.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %8, i64 %idxprom2
  %9 = load float, float* %arrayidx3, align 4
  %conv4 = fpext float %9 to double
  %mul = fmul double %6, %conv4
  %10 = load double, double* %xsum, align 8
  %add = fadd double %10, %mul
  store double %add, double* %xsum, align 8
  %11 = load double, double* %mult, align 8
  %12 = load float, float* %lambda.addr, align 4
  %conv5 = fpext float %12 to double
  %mul6 = fmul double -1.000000e+00, %conv5
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load float*, float** %x.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %14, i64 %idxprom7
  %15 = load float, float* %arrayidx8, align 4
  %conv9 = fpext float %15 to double
  %mul10 = fmul double %mul6, %conv9
  %call = call double @exp(double %mul10) #4
  %mul11 = fmul double %11, %call
  %16 = load double, double* %esum, align 8
  %add12 = fadd double %16, %mul11
  store double %add12, double* %esum, align 8
  %17 = load double, double* %mult, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load float*, float** %x.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %19, i64 %idxprom13
  %20 = load float, float* %arrayidx14, align 4
  %conv15 = fpext float %20 to double
  %mul16 = fmul double %17, %conv15
  %21 = load float, float* %lambda.addr, align 4
  %conv17 = fpext float %21 to double
  %mul18 = fmul double -1.000000e+00, %conv17
  %22 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %22 to i64
  %23 = load float*, float** %x.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %23, i64 %idxprom19
  %24 = load float, float* %arrayidx20, align 4
  %conv21 = fpext float %24 to double
  %mul22 = fmul double %mul18, %conv21
  %call23 = call double @exp(double %mul22) #4
  %mul24 = fmul double %mul16, %call23
  %25 = load double, double* %xesum, align 8
  %add25 = fadd double %25, %mul24
  store double %add25, double* %xesum, align 8
  %26 = load double, double* %mult, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load float*, float** %x.addr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %28, i64 %idxprom26
  %29 = load float, float* %arrayidx27, align 4
  %conv28 = fpext float %29 to double
  %mul29 = fmul double %26, %conv28
  %30 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load float*, float** %x.addr, align 8
  %arrayidx31 = getelementptr inbounds float, float* %31, i64 %idxprom30
  %32 = load float, float* %arrayidx31, align 4
  %conv32 = fpext float %32 to double
  %mul33 = fmul double %mul29, %conv32
  %33 = load float, float* %lambda.addr, align 4
  %conv34 = fpext float %33 to double
  %mul35 = fmul double -1.000000e+00, %conv34
  %34 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %34 to i64
  %35 = load float*, float** %x.addr, align 8
  %arrayidx37 = getelementptr inbounds float, float* %35, i64 %idxprom36
  %36 = load float, float* %arrayidx37, align 4
  %conv38 = fpext float %36 to double
  %mul39 = fmul double %mul35, %conv38
  %call40 = call double @exp(double %mul39) #4
  %mul41 = fmul double %mul33, %call40
  %37 = load double, double* %xxesum, align 8
  %add42 = fadd double %37, %mul41
  store double %add42, double* %xxesum, align 8
  %38 = load double, double* %mult, align 8
  %39 = load double, double* %total, align 8
  %add43 = fadd double %39, %38
  store double %add43, double* %total, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %z.addr, align 4
  %conv44 = sitofp i32 %41 to double
  %42 = load float, float* %lambda.addr, align 4
  %conv45 = fpext float %42 to double
  %mul46 = fmul double -1.000000e+00, %conv45
  %43 = load float, float* %c.addr, align 4
  %conv47 = fpext float %43 to double
  %mul48 = fmul double %mul46, %conv47
  %call49 = call double @exp(double %mul48) #4
  %mul50 = fmul double %conv44, %call49
  %44 = load double, double* %esum, align 8
  %add51 = fadd double %44, %mul50
  store double %add51, double* %esum, align 8
  %45 = load i32, i32* %z.addr, align 4
  %conv52 = sitofp i32 %45 to double
  %46 = load float, float* %c.addr, align 4
  %conv53 = fpext float %46 to double
  %mul54 = fmul double %conv52, %conv53
  %47 = load float, float* %lambda.addr, align 4
  %conv55 = fpext float %47 to double
  %mul56 = fmul double -1.000000e+00, %conv55
  %48 = load float, float* %c.addr, align 4
  %conv57 = fpext float %48 to double
  %mul58 = fmul double %mul56, %conv57
  %call59 = call double @exp(double %mul58) #4
  %mul60 = fmul double %mul54, %call59
  %49 = load double, double* %xesum, align 8
  %add61 = fadd double %49, %mul60
  store double %add61, double* %xesum, align 8
  %50 = load i32, i32* %z.addr, align 4
  %conv62 = sitofp i32 %50 to double
  %51 = load float, float* %c.addr, align 4
  %conv63 = fpext float %51 to double
  %mul64 = fmul double %conv62, %conv63
  %52 = load float, float* %c.addr, align 4
  %conv65 = fpext float %52 to double
  %mul66 = fmul double %mul64, %conv65
  %53 = load float, float* %lambda.addr, align 4
  %conv67 = fpext float %53 to double
  %mul68 = fmul double -1.000000e+00, %conv67
  %54 = load float, float* %c.addr, align 4
  %conv69 = fpext float %54 to double
  %mul70 = fmul double %mul68, %conv69
  %call71 = call double @exp(double %mul70) #4
  %mul72 = fmul double %mul66, %call71
  %55 = load double, double* %xxesum, align 8
  %add73 = fadd double %55, %mul72
  store double %add73, double* %xxesum, align 8
  %56 = load float, float* %lambda.addr, align 4
  %conv74 = fpext float %56 to double
  %div = fdiv double 1.000000e+00, %conv74
  %57 = load double, double* %xsum, align 8
  %58 = load double, double* %total, align 8
  %div75 = fdiv double %57, %58
  %sub = fsub double %div, %div75
  %59 = load double, double* %xesum, align 8
  %60 = load double, double* %esum, align 8
  %div76 = fdiv double %59, %60
  %add77 = fadd double %sub, %div76
  %conv78 = fptrunc double %add77 to float
  %61 = load float*, float** %ret_f.addr, align 8
  store float %conv78, float* %61, align 4
  %62 = load double, double* %xesum, align 8
  %63 = load double, double* %esum, align 8
  %div79 = fdiv double %62, %63
  %64 = load double, double* %xesum, align 8
  %65 = load double, double* %esum, align 8
  %div80 = fdiv double %64, %65
  %mul81 = fmul double %div79, %div80
  %66 = load double, double* %xxesum, align 8
  %67 = load double, double* %esum, align 8
  %div82 = fdiv double %66, %67
  %sub83 = fsub double %mul81, %div82
  %68 = load float, float* %lambda.addr, align 4
  %69 = load float, float* %lambda.addr, align 4
  %mul84 = fmul float %68, %69
  %conv85 = fpext float %mul84 to double
  %div86 = fdiv double 1.000000e+00, %conv85
  %sub87 = fsub double %sub83, %div86
  %conv88 = fptrunc double %sub87 to float
  %70 = load float*, float** %ret_df.addr, align 8
  store float %conv88, float* %70, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
