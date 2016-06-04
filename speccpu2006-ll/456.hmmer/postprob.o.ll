; ModuleID = 'postprob.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"traceback failed\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Traceback failed.\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"postprob.c\00", align 1

; Function Attrs: nounwind uwtable
define float @P7OptimalAccuracy(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s**, align 8
  %sc = alloca double, align 8
  %forward = alloca %struct.dpmatrix_s*, align 8
  %backward = alloca %struct.dpmatrix_s*, align 8
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  %0 = load i8*, i8** %dsq.addr, align 8
  %1 = load i32, i32* %L.addr, align 4
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %call = call float @P7Forward(i8* %0, i32 %1, %struct.plan7_s* %2, %struct.dpmatrix_s** %forward)
  %3 = load i8*, i8** %dsq.addr, align 8
  %4 = load i32, i32* %L.addr, align 4
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %call1 = call float @P7Backward(i8* %3, i32 %4, %struct.plan7_s* %5, %struct.dpmatrix_s** %backward)
  %6 = load i32, i32* %L.addr, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %8 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward, align 8
  %9 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward, align 8
  %10 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward, align 8
  call void @P7EmitterPosterior(i32 %6, %struct.plan7_s* %7, %struct.dpmatrix_s* %8, %struct.dpmatrix_s* %9, %struct.dpmatrix_s* %10)
  %11 = load i32, i32* %L.addr, align 4
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 20
  %13 = load i32, i32* %M, align 4
  %14 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward, align 8
  %15 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward, align 8
  %16 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  %call2 = call float @P7FillOptimalAccuracy(i32 %11, i32 %13, %struct.dpmatrix_s* %14, %struct.dpmatrix_s* %15, %struct.p7trace_s** %16)
  %conv = fpext float %call2 to double
  store double %conv, double* %sc, align 8
  %17 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %17)
  %18 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %18)
  %19 = load double, double* %sc, align 8
  %conv3 = fptrunc double %19 to float
  ret float %conv3
}

declare float @P7Forward(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**) #1

; Function Attrs: nounwind uwtable
define float @P7Backward(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s** %ret_mx) #0 {
entry:
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %ret_mx.addr = alloca %struct.dpmatrix_s**, align 8
  %mx = alloca %struct.dpmatrix_s*, align 8
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %sc = alloca i32, align 4
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.dpmatrix_s** %ret_mx, %struct.dpmatrix_s*** %ret_mx.addr, align 8
  %0 = load i32, i32* %L.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 20
  %2 = load i32, i32* %M, align 4
  %call = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 %add, i32 %2, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx)
  store %struct.dpmatrix_s* %call, %struct.dpmatrix_s** %mx, align 8
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %3, i32 0, i32 33
  %arrayidx = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 2
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i32, i32* %L.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32**, i32*** %xmx, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %6, i64 %idxprom
  %7 = load i32*, i32** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 2
  store i32 %4, i32* %arrayidx3, align 4
  %8 = load i32, i32* %L.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i32**, i32*** %xmx, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %9, i64 %idxprom4
  %10 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 2
  %11 = load i32, i32* %arrayidx6, align 4
  %12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc7 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %12, i32 0, i32 33
  %arrayidx8 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc7, i32 0, i64 1
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx8, i32 0, i64 0
  %13 = load i32, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %11, %13
  %14 = load i32, i32* %L.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32**, i32*** %xmx, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %15, i64 %idxprom11
  %16 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %add10, i32* %arrayidx13, align 4
  %17 = load i32, i32* %L.addr, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load i32**, i32*** %xmx, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %18, i64 %idxprom14
  %19 = load i32*, i32** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %19, i64 4
  store i32 -987654321, i32* %arrayidx16, align 4
  %20 = load i32, i32* %L.addr, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i32**, i32*** %xmx, align 8
  %arrayidx18 = getelementptr inbounds i32*, i32** %21, i64 %idxprom17
  %22 = load i32*, i32** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 -987654321, i32* %arrayidx19, align 4
  %23 = load i32, i32* %L.addr, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load i32**, i32*** %xmx, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %24, i64 %idxprom20
  %25 = load i32*, i32** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %25, i64 3
  store i32 -987654321, i32* %arrayidx22, align 4
  %26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M23 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %26, i32 0, i32 20
  %27 = load i32, i32* %M23, align 4
  store i32 %27, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %28 = load i32, i32* %k, align 4
  %cmp = icmp sge i32 %28, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %L.addr, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load i32**, i32*** %xmx, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %30, i64 %idxprom24
  %31 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %31, i64 1
  %32 = load i32, i32* %arrayidx26, align 4
  %33 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 35
  %35 = load i32*, i32** %esc, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %35, i64 %idxprom27
  %36 = load i32, i32* %arrayidx28, align 4
  %add29 = add nsw i32 %32, %36
  %37 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %37 to i64
  %38 = load i32, i32* %L.addr, align 4
  %idxprom31 = sext i32 %38 to i64
  %39 = load i32**, i32*** %mmx, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %39, i64 %idxprom31
  %40 = load i32*, i32** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %40, i64 %idxprom30
  store i32 %add29, i32* %arrayidx33, align 4
  %41 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %41 to i64
  %42 = load i32, i32* %L.addr, align 4
  %idxprom35 = sext i32 %42 to i64
  %43 = load i8*, i8** %dsq.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %43, i64 %idxprom35
  %44 = load i8, i8* %arrayidx36, align 1
  %conv = sext i8 %44 to i32
  %idxprom37 = sext i32 %conv to i64
  %45 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %45, i32 0, i32 31
  %46 = load i32**, i32*** %msc, align 8
  %arrayidx38 = getelementptr inbounds i32*, i32** %46, i64 %idxprom37
  %47 = load i32*, i32** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %47, i64 %idxprom34
  %48 = load i32, i32* %arrayidx39, align 4
  %49 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %49 to i64
  %50 = load i32, i32* %L.addr, align 4
  %idxprom41 = sext i32 %50 to i64
  %51 = load i32**, i32*** %mmx, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %51, i64 %idxprom41
  %52 = load i32*, i32** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %52, i64 %idxprom40
  %53 = load i32, i32* %arrayidx43, align 4
  %add44 = add nsw i32 %53, %48
  store i32 %add44, i32* %arrayidx43, align 4
  %54 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %54 to i64
  %55 = load i32, i32* %L.addr, align 4
  %idxprom46 = sext i32 %55 to i64
  %56 = load i32**, i32*** %dmx, align 8
  %arrayidx47 = getelementptr inbounds i32*, i32** %56, i64 %idxprom46
  %57 = load i32*, i32** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %57, i64 %idxprom45
  store i32 -987654321, i32* %arrayidx48, align 4
  %58 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %58 to i64
  %59 = load i32, i32* %L.addr, align 4
  %idxprom50 = sext i32 %59 to i64
  %60 = load i32**, i32*** %imx, align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %60, i64 %idxprom50
  %61 = load i32*, i32** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %61, i64 %idxprom49
  store i32 -987654321, i32* %arrayidx52, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %k, align 4
  %dec = add nsw i32 %62, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M53 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %63, i32 0, i32 20
  %64 = load i32, i32* %M53, align 4
  %sub = sub nsw i32 %64, 1
  %idxprom54 = sext i32 %sub to i64
  %65 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %65, i32 0, i32 30
  %66 = load i32**, i32*** %tsc, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %66, i64 2
  %67 = load i32*, i32** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %67, i64 %idxprom54
  store i32 -987654321, i32* %arrayidx56, align 4
  %68 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M57 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %68, i32 0, i32 20
  %69 = load i32, i32* %M57, align 4
  %sub58 = sub nsw i32 %69, 1
  %idxprom59 = sext i32 %sub58 to i64
  %70 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc60 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %70, i32 0, i32 30
  %71 = load i32**, i32*** %tsc60, align 8
  %arrayidx61 = getelementptr inbounds i32*, i32** %71, i64 6
  %72 = load i32*, i32** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %72, i64 %idxprom59
  store i32 -987654321, i32* %arrayidx62, align 4
  %73 = load i32, i32* %L.addr, align 4
  %sub63 = sub nsw i32 %73, 1
  store i32 %sub63, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.342, %for.end
  %74 = load i32, i32* %i, align 4
  %cmp65 = icmp sge i32 %74, 0
  br i1 %cmp65, label %for.body.67, label %for.end.344

for.body.67:                                      ; preds = %for.cond.64
  %75 = load i32, i32* %i, align 4
  %add68 = add nsw i32 %75, 1
  %idxprom69 = sext i32 %add68 to i64
  %76 = load i32**, i32*** %xmx, align 8
  %arrayidx70 = getelementptr inbounds i32*, i32** %76, i64 %idxprom69
  %77 = load i32*, i32** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %77, i64 2
  %78 = load i32, i32* %arrayidx71, align 4
  %79 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc72 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 33
  %arrayidx73 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc72, i32 0, i64 2
  %arrayidx74 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx73, i32 0, i64 1
  %80 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %78, %80
  %81 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %81 to i64
  %82 = load i32**, i32*** %xmx, align 8
  %arrayidx77 = getelementptr inbounds i32*, i32** %82, i64 %idxprom76
  %83 = load i32*, i32** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %83, i64 2
  store i32 %add75, i32* %arrayidx78, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %84 to i64
  %85 = load i32**, i32*** %xmx, align 8
  %arrayidx80 = getelementptr inbounds i32*, i32** %85, i64 %idxprom79
  %86 = load i32*, i32** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 -987654321, i32* %arrayidx81, align 4
  %87 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %87 to i64
  %88 = load i32**, i32*** %xmx, align 8
  %arrayidx83 = getelementptr inbounds i32*, i32** %88, i64 %idxprom82
  %89 = load i32*, i32** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %89, i64 0
  %90 = load i32, i32* %arrayidx84, align 4
  %91 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M85 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %91, i32 0, i32 20
  %92 = load i32, i32* %M85, align 4
  %idxprom86 = sext i32 %92 to i64
  %93 = load i32, i32* %i, align 4
  %add87 = add nsw i32 %93, 1
  %idxprom88 = sext i32 %add87 to i64
  %94 = load i32**, i32*** %mmx, align 8
  %arrayidx89 = getelementptr inbounds i32*, i32** %94, i64 %idxprom88
  %95 = load i32*, i32** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %95, i64 %idxprom86
  %96 = load i32, i32* %arrayidx90, align 4
  %97 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M91 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %97, i32 0, i32 20
  %98 = load i32, i32* %M91, align 4
  %sub92 = sub nsw i32 %98, 1
  %idxprom93 = sext i32 %sub92 to i64
  %99 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %99, i32 0, i32 34
  %100 = load i32*, i32** %bsc, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %100, i64 %idxprom93
  %101 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %96, %101
  %call96 = call i32 @ILogsum(i32 %90, i32 %add95)
  %102 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %102 to i64
  %103 = load i32**, i32*** %xmx, align 8
  %arrayidx98 = getelementptr inbounds i32*, i32** %103, i64 %idxprom97
  %104 = load i32*, i32** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %call96, i32* %arrayidx99, align 4
  %105 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M100 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %105, i32 0, i32 20
  %106 = load i32, i32* %M100, align 4
  %sub101 = sub nsw i32 %106, 1
  store i32 %sub101, i32* %k, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.122, %for.body.67
  %107 = load i32, i32* %k, align 4
  %cmp103 = icmp sge i32 %107, 1
  br i1 %cmp103, label %for.body.105, label %for.end.124

for.body.105:                                     ; preds = %for.cond.102
  %108 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %108 to i64
  %109 = load i32**, i32*** %xmx, align 8
  %arrayidx107 = getelementptr inbounds i32*, i32** %109, i64 %idxprom106
  %110 = load i32*, i32** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %110, i64 0
  %111 = load i32, i32* %arrayidx108, align 4
  %112 = load i32, i32* %k, align 4
  %idxprom109 = sext i32 %112 to i64
  %113 = load i32, i32* %i, align 4
  %add110 = add nsw i32 %113, 1
  %idxprom111 = sext i32 %add110 to i64
  %114 = load i32**, i32*** %mmx, align 8
  %arrayidx112 = getelementptr inbounds i32*, i32** %114, i64 %idxprom111
  %115 = load i32*, i32** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %115, i64 %idxprom109
  %116 = load i32, i32* %arrayidx113, align 4
  %117 = load i32, i32* %k, align 4
  %idxprom114 = sext i32 %117 to i64
  %118 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc115 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %118, i32 0, i32 34
  %119 = load i32*, i32** %bsc115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %119, i64 %idxprom114
  %120 = load i32, i32* %arrayidx116, align 4
  %add117 = add nsw i32 %116, %120
  %call118 = call i32 @ILogsum(i32 %111, i32 %add117)
  %121 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %121 to i64
  %122 = load i32**, i32*** %xmx, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %122, i64 %idxprom119
  %123 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %call118, i32* %arrayidx121, align 4
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.105
  %124 = load i32, i32* %k, align 4
  %dec123 = add nsw i32 %124, -1
  store i32 %dec123, i32* %k, align 4
  br label %for.cond.102

for.end.124:                                      ; preds = %for.cond.102
  %125 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %125 to i64
  %126 = load i32**, i32*** %xmx, align 8
  %arrayidx126 = getelementptr inbounds i32*, i32** %126, i64 %idxprom125
  %127 = load i32*, i32** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %127, i64 0
  %128 = load i32, i32* %arrayidx127, align 4
  %129 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc128 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %129, i32 0, i32 33
  %arrayidx129 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc128, i32 0, i64 3
  %arrayidx130 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx129, i32 0, i64 0
  %130 = load i32, i32* %arrayidx130, align 4
  %add131 = add nsw i32 %128, %130
  %131 = load i32, i32* %i, align 4
  %add132 = add nsw i32 %131, 1
  %idxprom133 = sext i32 %add132 to i64
  %132 = load i32**, i32*** %xmx, align 8
  %arrayidx134 = getelementptr inbounds i32*, i32** %132, i64 %idxprom133
  %133 = load i32*, i32** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %133, i64 3
  %134 = load i32, i32* %arrayidx135, align 4
  %135 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc136 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %135, i32 0, i32 33
  %arrayidx137 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc136, i32 0, i64 3
  %arrayidx138 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx137, i32 0, i64 1
  %136 = load i32, i32* %arrayidx138, align 4
  %add139 = add nsw i32 %134, %136
  %call140 = call i32 @ILogsum(i32 %add131, i32 %add139)
  %137 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %137 to i64
  %138 = load i32**, i32*** %xmx, align 8
  %arrayidx142 = getelementptr inbounds i32*, i32** %138, i64 %idxprom141
  %139 = load i32*, i32** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %139, i64 3
  store i32 %call140, i32* %arrayidx143, align 4
  %140 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %140 to i64
  %141 = load i32**, i32*** %xmx, align 8
  %arrayidx145 = getelementptr inbounds i32*, i32** %141, i64 %idxprom144
  %142 = load i32*, i32** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %142, i64 2
  %143 = load i32, i32* %arrayidx146, align 4
  %144 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc147 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %144, i32 0, i32 33
  %arrayidx148 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc147, i32 0, i64 1
  %arrayidx149 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx148, i32 0, i64 0
  %145 = load i32, i32* %arrayidx149, align 4
  %add150 = add nsw i32 %143, %145
  %146 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %146 to i64
  %147 = load i32**, i32*** %xmx, align 8
  %arrayidx152 = getelementptr inbounds i32*, i32** %147, i64 %idxprom151
  %148 = load i32*, i32** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %148, i64 3
  %149 = load i32, i32* %arrayidx153, align 4
  %150 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc154 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %150, i32 0, i32 33
  %arrayidx155 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc154, i32 0, i64 1
  %arrayidx156 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx155, i32 0, i64 1
  %151 = load i32, i32* %arrayidx156, align 4
  %add157 = add nsw i32 %149, %151
  %call158 = call i32 @ILogsum(i32 %add150, i32 %add157)
  %152 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %152 to i64
  %153 = load i32**, i32*** %xmx, align 8
  %arrayidx160 = getelementptr inbounds i32*, i32** %153, i64 %idxprom159
  %154 = load i32*, i32** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %call158, i32* %arrayidx161, align 4
  %155 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %155 to i64
  %156 = load i32**, i32*** %xmx, align 8
  %arrayidx163 = getelementptr inbounds i32*, i32** %156, i64 %idxprom162
  %157 = load i32*, i32** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %157, i64 0
  %158 = load i32, i32* %arrayidx164, align 4
  %159 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc165 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %159, i32 0, i32 33
  %arrayidx166 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc165, i32 0, i64 0
  %arrayidx167 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx166, i32 0, i64 0
  %160 = load i32, i32* %arrayidx167, align 4
  %add168 = add nsw i32 %158, %160
  %161 = load i32, i32* %i, align 4
  %add169 = add nsw i32 %161, 1
  %idxprom170 = sext i32 %add169 to i64
  %162 = load i32**, i32*** %xmx, align 8
  %arrayidx171 = getelementptr inbounds i32*, i32** %162, i64 %idxprom170
  %163 = load i32*, i32** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %163, i64 4
  %164 = load i32, i32* %arrayidx172, align 4
  %165 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc173 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %165, i32 0, i32 33
  %arrayidx174 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc173, i32 0, i64 0
  %arrayidx175 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx174, i32 0, i64 1
  %166 = load i32, i32* %arrayidx175, align 4
  %add176 = add nsw i32 %164, %166
  %call177 = call i32 @ILogsum(i32 %add168, i32 %add176)
  %167 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %167 to i64
  %168 = load i32**, i32*** %xmx, align 8
  %arrayidx179 = getelementptr inbounds i32*, i32** %168, i64 %idxprom178
  %169 = load i32*, i32** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %169, i64 4
  store i32 %call177, i32* %arrayidx180, align 4
  %170 = load i32, i32* %i, align 4
  %cmp181 = icmp sgt i32 %170, 0
  br i1 %cmp181, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.124
  %171 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %171 to i64
  %172 = load i32**, i32*** %xmx, align 8
  %arrayidx184 = getelementptr inbounds i32*, i32** %172, i64 %idxprom183
  %173 = load i32*, i32** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %173, i64 1
  %174 = load i32, i32* %arrayidx185, align 4
  %175 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M186 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %175, i32 0, i32 20
  %176 = load i32, i32* %M186, align 4
  %idxprom187 = sext i32 %176 to i64
  %177 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc188 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %177, i32 0, i32 35
  %178 = load i32*, i32** %esc188, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %178, i64 %idxprom187
  %179 = load i32, i32* %arrayidx189, align 4
  %add190 = add nsw i32 %174, %179
  %180 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M191 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %180, i32 0, i32 20
  %181 = load i32, i32* %M191, align 4
  %idxprom192 = sext i32 %181 to i64
  %182 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %182 to i64
  %183 = load i8*, i8** %dsq.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %183, i64 %idxprom193
  %184 = load i8, i8* %arrayidx194, align 1
  %conv195 = sext i8 %184 to i32
  %idxprom196 = sext i32 %conv195 to i64
  %185 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc197 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %185, i32 0, i32 31
  %186 = load i32**, i32*** %msc197, align 8
  %arrayidx198 = getelementptr inbounds i32*, i32** %186, i64 %idxprom196
  %187 = load i32*, i32** %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds i32, i32* %187, i64 %idxprom192
  %188 = load i32, i32* %arrayidx199, align 4
  %add200 = add nsw i32 %add190, %188
  %189 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M201 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %189, i32 0, i32 20
  %190 = load i32, i32* %M201, align 4
  %idxprom202 = sext i32 %190 to i64
  %191 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %191 to i64
  %192 = load i32**, i32*** %mmx, align 8
  %arrayidx204 = getelementptr inbounds i32*, i32** %192, i64 %idxprom203
  %193 = load i32*, i32** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %193, i64 %idxprom202
  store i32 %add200, i32* %arrayidx205, align 4
  %194 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M206 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %194, i32 0, i32 20
  %195 = load i32, i32* %M206, align 4
  %idxprom207 = sext i32 %195 to i64
  %196 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %196 to i64
  %197 = load i32**, i32*** %dmx, align 8
  %arrayidx209 = getelementptr inbounds i32*, i32** %197, i64 %idxprom208
  %198 = load i32*, i32** %arrayidx209, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %198, i64 %idxprom207
  store i32 -987654321, i32* %arrayidx210, align 4
  %199 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M211 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %199, i32 0, i32 20
  %200 = load i32, i32* %M211, align 4
  %sub212 = sub nsw i32 %200, 1
  store i32 %sub212, i32* %k, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.339, %if.then
  %201 = load i32, i32* %k, align 4
  %cmp214 = icmp sge i32 %201, 1
  br i1 %cmp214, label %for.body.216, label %for.end.341

for.body.216:                                     ; preds = %for.cond.213
  %202 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %202 to i64
  %203 = load i32**, i32*** %xmx, align 8
  %arrayidx218 = getelementptr inbounds i32*, i32** %203, i64 %idxprom217
  %204 = load i32*, i32** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i32, i32* %204, i64 1
  %205 = load i32, i32* %arrayidx219, align 4
  %206 = load i32, i32* %k, align 4
  %idxprom220 = sext i32 %206 to i64
  %207 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc221 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %207, i32 0, i32 35
  %208 = load i32*, i32** %esc221, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %208, i64 %idxprom220
  %209 = load i32, i32* %arrayidx222, align 4
  %add223 = add nsw i32 %205, %209
  %210 = load i32, i32* %k, align 4
  %add224 = add nsw i32 %210, 1
  %idxprom225 = sext i32 %add224 to i64
  %211 = load i32, i32* %i, align 4
  %add226 = add nsw i32 %211, 1
  %idxprom227 = sext i32 %add226 to i64
  %212 = load i32**, i32*** %mmx, align 8
  %arrayidx228 = getelementptr inbounds i32*, i32** %212, i64 %idxprom227
  %213 = load i32*, i32** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds i32, i32* %213, i64 %idxprom225
  %214 = load i32, i32* %arrayidx229, align 4
  %215 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %215 to i64
  %216 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc231 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %216, i32 0, i32 30
  %217 = load i32**, i32*** %tsc231, align 8
  %arrayidx232 = getelementptr inbounds i32*, i32** %217, i64 0
  %218 = load i32*, i32** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %218, i64 %idxprom230
  %219 = load i32, i32* %arrayidx233, align 4
  %add234 = add nsw i32 %214, %219
  %call235 = call i32 @ILogsum(i32 %add223, i32 %add234)
  %220 = load i32, i32* %k, align 4
  %idxprom236 = sext i32 %220 to i64
  %221 = load i32, i32* %i, align 4
  %add237 = add nsw i32 %221, 1
  %idxprom238 = sext i32 %add237 to i64
  %222 = load i32**, i32*** %imx, align 8
  %arrayidx239 = getelementptr inbounds i32*, i32** %222, i64 %idxprom238
  %223 = load i32*, i32** %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %223, i64 %idxprom236
  %224 = load i32, i32* %arrayidx240, align 4
  %225 = load i32, i32* %k, align 4
  %idxprom241 = sext i32 %225 to i64
  %226 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc242 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %226, i32 0, i32 30
  %227 = load i32**, i32*** %tsc242, align 8
  %arrayidx243 = getelementptr inbounds i32*, i32** %227, i64 1
  %228 = load i32*, i32** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %228, i64 %idxprom241
  %229 = load i32, i32* %arrayidx244, align 4
  %add245 = add nsw i32 %224, %229
  %230 = load i32, i32* %k, align 4
  %add246 = add nsw i32 %230, 1
  %idxprom247 = sext i32 %add246 to i64
  %231 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %231 to i64
  %232 = load i32**, i32*** %dmx, align 8
  %arrayidx249 = getelementptr inbounds i32*, i32** %232, i64 %idxprom248
  %233 = load i32*, i32** %arrayidx249, align 8
  %arrayidx250 = getelementptr inbounds i32, i32* %233, i64 %idxprom247
  %234 = load i32, i32* %arrayidx250, align 4
  %235 = load i32, i32* %k, align 4
  %idxprom251 = sext i32 %235 to i64
  %236 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc252 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %236, i32 0, i32 30
  %237 = load i32**, i32*** %tsc252, align 8
  %arrayidx253 = getelementptr inbounds i32*, i32** %237, i64 2
  %238 = load i32*, i32** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %238, i64 %idxprom251
  %239 = load i32, i32* %arrayidx254, align 4
  %add255 = add nsw i32 %234, %239
  %call256 = call i32 @ILogsum(i32 %add245, i32 %add255)
  %call257 = call i32 @ILogsum(i32 %call235, i32 %call256)
  %240 = load i32, i32* %k, align 4
  %idxprom258 = sext i32 %240 to i64
  %241 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %241 to i64
  %242 = load i32**, i32*** %mmx, align 8
  %arrayidx260 = getelementptr inbounds i32*, i32** %242, i64 %idxprom259
  %243 = load i32*, i32** %arrayidx260, align 8
  %arrayidx261 = getelementptr inbounds i32, i32* %243, i64 %idxprom258
  store i32 %call257, i32* %arrayidx261, align 4
  %244 = load i32, i32* %k, align 4
  %idxprom262 = sext i32 %244 to i64
  %245 = load i32, i32* %i, align 4
  %idxprom263 = sext i32 %245 to i64
  %246 = load i8*, i8** %dsq.addr, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %246, i64 %idxprom263
  %247 = load i8, i8* %arrayidx264, align 1
  %conv265 = sext i8 %247 to i32
  %idxprom266 = sext i32 %conv265 to i64
  %248 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc267 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %248, i32 0, i32 31
  %249 = load i32**, i32*** %msc267, align 8
  %arrayidx268 = getelementptr inbounds i32*, i32** %249, i64 %idxprom266
  %250 = load i32*, i32** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %250, i64 %idxprom262
  %251 = load i32, i32* %arrayidx269, align 4
  %252 = load i32, i32* %k, align 4
  %idxprom270 = sext i32 %252 to i64
  %253 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %253 to i64
  %254 = load i32**, i32*** %mmx, align 8
  %arrayidx272 = getelementptr inbounds i32*, i32** %254, i64 %idxprom271
  %255 = load i32*, i32** %arrayidx272, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %255, i64 %idxprom270
  %256 = load i32, i32* %arrayidx273, align 4
  %add274 = add nsw i32 %256, %251
  store i32 %add274, i32* %arrayidx273, align 4
  %257 = load i32, i32* %k, align 4
  %idxprom275 = sext i32 %257 to i64
  %258 = load i32, i32* %i, align 4
  %add276 = add nsw i32 %258, 1
  %idxprom277 = sext i32 %add276 to i64
  %259 = load i32**, i32*** %imx, align 8
  %arrayidx278 = getelementptr inbounds i32*, i32** %259, i64 %idxprom277
  %260 = load i32*, i32** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i32, i32* %260, i64 %idxprom275
  %261 = load i32, i32* %arrayidx279, align 4
  %262 = load i32, i32* %k, align 4
  %idxprom280 = sext i32 %262 to i64
  %263 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc281 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %263, i32 0, i32 30
  %264 = load i32**, i32*** %tsc281, align 8
  %arrayidx282 = getelementptr inbounds i32*, i32** %264, i64 4
  %265 = load i32*, i32** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %265, i64 %idxprom280
  %266 = load i32, i32* %arrayidx283, align 4
  %add284 = add nsw i32 %261, %266
  %267 = load i32, i32* %k, align 4
  %add285 = add nsw i32 %267, 1
  %idxprom286 = sext i32 %add285 to i64
  %268 = load i32, i32* %i, align 4
  %add287 = add nsw i32 %268, 1
  %idxprom288 = sext i32 %add287 to i64
  %269 = load i32**, i32*** %mmx, align 8
  %arrayidx289 = getelementptr inbounds i32*, i32** %269, i64 %idxprom288
  %270 = load i32*, i32** %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds i32, i32* %270, i64 %idxprom286
  %271 = load i32, i32* %arrayidx290, align 4
  %272 = load i32, i32* %k, align 4
  %idxprom291 = sext i32 %272 to i64
  %273 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc292 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %273, i32 0, i32 30
  %274 = load i32**, i32*** %tsc292, align 8
  %arrayidx293 = getelementptr inbounds i32*, i32** %274, i64 3
  %275 = load i32*, i32** %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds i32, i32* %275, i64 %idxprom291
  %276 = load i32, i32* %arrayidx294, align 4
  %add295 = add nsw i32 %271, %276
  %call296 = call i32 @ILogsum(i32 %add284, i32 %add295)
  %277 = load i32, i32* %k, align 4
  %idxprom297 = sext i32 %277 to i64
  %278 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %278 to i64
  %279 = load i32**, i32*** %imx, align 8
  %arrayidx299 = getelementptr inbounds i32*, i32** %279, i64 %idxprom298
  %280 = load i32*, i32** %arrayidx299, align 8
  %arrayidx300 = getelementptr inbounds i32, i32* %280, i64 %idxprom297
  store i32 %call296, i32* %arrayidx300, align 4
  %281 = load i32, i32* %k, align 4
  %idxprom301 = sext i32 %281 to i64
  %282 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %282 to i64
  %283 = load i8*, i8** %dsq.addr, align 8
  %arrayidx303 = getelementptr inbounds i8, i8* %283, i64 %idxprom302
  %284 = load i8, i8* %arrayidx303, align 1
  %conv304 = sext i8 %284 to i32
  %idxprom305 = sext i32 %conv304 to i64
  %285 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %285, i32 0, i32 32
  %286 = load i32**, i32*** %isc, align 8
  %arrayidx306 = getelementptr inbounds i32*, i32** %286, i64 %idxprom305
  %287 = load i32*, i32** %arrayidx306, align 8
  %arrayidx307 = getelementptr inbounds i32, i32* %287, i64 %idxprom301
  %288 = load i32, i32* %arrayidx307, align 4
  %289 = load i32, i32* %k, align 4
  %idxprom308 = sext i32 %289 to i64
  %290 = load i32, i32* %i, align 4
  %idxprom309 = sext i32 %290 to i64
  %291 = load i32**, i32*** %imx, align 8
  %arrayidx310 = getelementptr inbounds i32*, i32** %291, i64 %idxprom309
  %292 = load i32*, i32** %arrayidx310, align 8
  %arrayidx311 = getelementptr inbounds i32, i32* %292, i64 %idxprom308
  %293 = load i32, i32* %arrayidx311, align 4
  %add312 = add nsw i32 %293, %288
  store i32 %add312, i32* %arrayidx311, align 4
  %294 = load i32, i32* %k, align 4
  %add313 = add nsw i32 %294, 1
  %idxprom314 = sext i32 %add313 to i64
  %295 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %295 to i64
  %296 = load i32**, i32*** %dmx, align 8
  %arrayidx316 = getelementptr inbounds i32*, i32** %296, i64 %idxprom315
  %297 = load i32*, i32** %arrayidx316, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %297, i64 %idxprom314
  %298 = load i32, i32* %arrayidx317, align 4
  %299 = load i32, i32* %k, align 4
  %idxprom318 = sext i32 %299 to i64
  %300 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc319 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %300, i32 0, i32 30
  %301 = load i32**, i32*** %tsc319, align 8
  %arrayidx320 = getelementptr inbounds i32*, i32** %301, i64 6
  %302 = load i32*, i32** %arrayidx320, align 8
  %arrayidx321 = getelementptr inbounds i32, i32* %302, i64 %idxprom318
  %303 = load i32, i32* %arrayidx321, align 4
  %add322 = add nsw i32 %298, %303
  %304 = load i32, i32* %k, align 4
  %add323 = add nsw i32 %304, 1
  %idxprom324 = sext i32 %add323 to i64
  %305 = load i32, i32* %i, align 4
  %add325 = add nsw i32 %305, 1
  %idxprom326 = sext i32 %add325 to i64
  %306 = load i32**, i32*** %mmx, align 8
  %arrayidx327 = getelementptr inbounds i32*, i32** %306, i64 %idxprom326
  %307 = load i32*, i32** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds i32, i32* %307, i64 %idxprom324
  %308 = load i32, i32* %arrayidx328, align 4
  %309 = load i32, i32* %k, align 4
  %idxprom329 = sext i32 %309 to i64
  %310 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc330 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %310, i32 0, i32 30
  %311 = load i32**, i32*** %tsc330, align 8
  %arrayidx331 = getelementptr inbounds i32*, i32** %311, i64 5
  %312 = load i32*, i32** %arrayidx331, align 8
  %arrayidx332 = getelementptr inbounds i32, i32* %312, i64 %idxprom329
  %313 = load i32, i32* %arrayidx332, align 4
  %add333 = add nsw i32 %308, %313
  %call334 = call i32 @ILogsum(i32 %add322, i32 %add333)
  %314 = load i32, i32* %k, align 4
  %idxprom335 = sext i32 %314 to i64
  %315 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %315 to i64
  %316 = load i32**, i32*** %dmx, align 8
  %arrayidx337 = getelementptr inbounds i32*, i32** %316, i64 %idxprom336
  %317 = load i32*, i32** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %317, i64 %idxprom335
  store i32 %call334, i32* %arrayidx338, align 4
  br label %for.inc.339

for.inc.339:                                      ; preds = %for.body.216
  %318 = load i32, i32* %k, align 4
  %dec340 = add nsw i32 %318, -1
  store i32 %dec340, i32* %k, align 4
  br label %for.cond.213

for.end.341:                                      ; preds = %for.cond.213
  br label %if.end

if.end:                                           ; preds = %for.end.341, %for.end.124
  br label %for.inc.342

for.inc.342:                                      ; preds = %if.end
  %319 = load i32, i32* %i, align 4
  %dec343 = add nsw i32 %319, -1
  store i32 %dec343, i32* %i, align 4
  br label %for.cond.64

for.end.344:                                      ; preds = %for.cond.64
  %320 = load i32**, i32*** %xmx, align 8
  %arrayidx345 = getelementptr inbounds i32*, i32** %320, i64 0
  %321 = load i32*, i32** %arrayidx345, align 8
  %arrayidx346 = getelementptr inbounds i32, i32* %321, i64 4
  %322 = load i32, i32* %arrayidx346, align 4
  store i32 %322, i32* %sc, align 4
  %323 = load %struct.dpmatrix_s**, %struct.dpmatrix_s*** %ret_mx.addr, align 8
  %cmp347 = icmp ne %struct.dpmatrix_s** %323, null
  br i1 %cmp347, label %if.then.349, label %if.else

if.then.349:                                      ; preds = %for.end.344
  %324 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %325 = load %struct.dpmatrix_s**, %struct.dpmatrix_s*** %ret_mx.addr, align 8
  store %struct.dpmatrix_s* %324, %struct.dpmatrix_s** %325, align 8
  br label %if.end.350

if.else:                                          ; preds = %for.end.344
  %326 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %326)
  br label %if.end.350

if.end.350:                                       ; preds = %if.else, %if.then.349
  %327 = load i32, i32* %sc, align 4
  %call351 = call float @Scorify(i32 %327)
  ret float %call351
}

; Function Attrs: nounwind uwtable
define void @P7EmitterPosterior(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %forward, %struct.dpmatrix_s* %backward, %struct.dpmatrix_s* %mx) #0 {
entry:
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %forward.addr = alloca %struct.dpmatrix_s*, align 8
  %backward.addr = alloca %struct.dpmatrix_s*, align 8
  %mx.addr = alloca %struct.dpmatrix_s*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %sc = alloca i32, align 4
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.dpmatrix_s* %forward, %struct.dpmatrix_s** %forward.addr, align 8
  store %struct.dpmatrix_s* %backward, %struct.dpmatrix_s** %backward.addr, align 8
  store %struct.dpmatrix_s* %mx, %struct.dpmatrix_s** %mx.addr, align 8
  %0 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %0, i32 0, i32 0
  %1 = load i32**, i32*** %xmx, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 4
  %3 = load i32, i32* %arrayidx1, align 4
  store i32 %3, i32* %sc, align 4
  %4 = load i32, i32* %L.addr, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.283, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %5, 1
  br i1 %cmp, label %for.body, label %for.end.284

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx2 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %7, i32 0, i32 0
  %8 = load i32**, i32*** %xmx2, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %8, i64 %idxprom
  %9 = load i32*, i32** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 2
  %10 = load i32, i32* %arrayidx4, align 4
  %11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %11, i32 0, i32 33
  %arrayidx5 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 2
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx5, i32 0, i64 1
  %12 = load i32, i32* %arrayidx6, align 4
  %add = add nsw i32 %10, %12
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx8 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %14, i32 0, i32 0
  %15 = load i32**, i32*** %xmx8, align 8
  %arrayidx9 = getelementptr inbounds i32*, i32** %15, i64 %idxprom7
  %16 = load i32*, i32** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 2
  %17 = load i32, i32* %arrayidx10, align 4
  %add11 = add nsw i32 %add, %17
  %18 = load i32, i32* %sc, align 4
  %sub12 = sub nsw i32 %add11, %18
  %19 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx14 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %20, i32 0, i32 0
  %21 = load i32**, i32*** %xmx14, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %21, i64 %idxprom13
  %22 = load i32*, i32** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %sub12, i32* %arrayidx16, align 4
  %23 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 %23, 1
  %idxprom18 = sext i32 %sub17 to i64
  %24 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx19 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %24, i32 0, i32 0
  %25 = load i32**, i32*** %xmx19, align 8
  %arrayidx20 = getelementptr inbounds i32*, i32** %25, i64 %idxprom18
  %26 = load i32*, i32** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %26, i64 3
  %27 = load i32, i32* %arrayidx21, align 4
  %28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc22 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 33
  %arrayidx23 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc22, i32 0, i64 3
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx23, i32 0, i64 1
  %29 = load i32, i32* %arrayidx24, align 4
  %add25 = add nsw i32 %27, %29
  %30 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx27 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %31, i32 0, i32 0
  %32 = load i32**, i32*** %xmx27, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %32, i64 %idxprom26
  %33 = load i32*, i32** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %33, i64 3
  %34 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %add25, %34
  %35 = load i32, i32* %sc, align 4
  %sub31 = sub nsw i32 %add30, %35
  %36 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx33 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %37, i32 0, i32 0
  %38 = load i32**, i32*** %xmx33, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %38, i64 %idxprom32
  %39 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %sub31, i32* %arrayidx35, align 4
  %40 = load i32, i32* %i, align 4
  %sub36 = sub nsw i32 %40, 1
  %idxprom37 = sext i32 %sub36 to i64
  %41 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx38 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %41, i32 0, i32 0
  %42 = load i32**, i32*** %xmx38, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %42, i64 %idxprom37
  %43 = load i32*, i32** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %43, i64 4
  %44 = load i32, i32* %arrayidx40, align 4
  %45 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %45, i32 0, i32 33
  %arrayidx42 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc41, i32 0, i64 0
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx42, i32 0, i64 1
  %46 = load i32, i32* %arrayidx43, align 4
  %add44 = add nsw i32 %44, %46
  %47 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %47 to i64
  %48 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx46 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %48, i32 0, i32 0
  %49 = load i32**, i32*** %xmx46, align 8
  %arrayidx47 = getelementptr inbounds i32*, i32** %49, i64 %idxprom45
  %50 = load i32*, i32** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %50, i64 4
  %51 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %add44, %51
  %52 = load i32, i32* %sc, align 4
  %sub50 = sub nsw i32 %add49, %52
  %53 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %53 to i64
  %54 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx52 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %54, i32 0, i32 0
  %55 = load i32**, i32*** %xmx52, align 8
  %arrayidx53 = getelementptr inbounds i32*, i32** %55, i64 %idxprom51
  %56 = load i32*, i32** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %sub50, i32* %arrayidx54, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %57 to i64
  %58 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx56 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %58, i32 0, i32 0
  %59 = load i32**, i32*** %xmx56, align 8
  %arrayidx57 = getelementptr inbounds i32*, i32** %59, i64 %idxprom55
  %60 = load i32*, i32** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 -987654321, i32* %arrayidx58, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %61 to i64
  %62 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx60 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %62, i32 0, i32 0
  %63 = load i32**, i32*** %xmx60, align 8
  %arrayidx61 = getelementptr inbounds i32*, i32** %63, i64 %idxprom59
  %64 = load i32*, i32** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 -987654321, i32* %arrayidx62, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc, %for.body
  %65 = load i32, i32* %k, align 4
  %66 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 20
  %67 = load i32, i32* %M, align 4
  %cmp64 = icmp slt i32 %65, %67
  br i1 %cmp64, label %for.body.65, label %for.end

for.body.65:                                      ; preds = %for.cond.63
  %68 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %69 to i64
  %70 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %mmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %70, i32 0, i32 1
  %71 = load i32**, i32*** %mmx, align 8
  %arrayidx68 = getelementptr inbounds i32*, i32** %71, i64 %idxprom67
  %72 = load i32*, i32** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %72, i64 %idxprom66
  %73 = load i32, i32* %arrayidx69, align 4
  %74 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %75 to i64
  %76 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx72 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %76, i32 0, i32 1
  %77 = load i32**, i32*** %mmx72, align 8
  %arrayidx73 = getelementptr inbounds i32*, i32** %77, i64 %idxprom71
  %78 = load i32*, i32** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %78, i64 %idxprom70
  store i32 %73, i32* %arrayidx74, align 4
  %79 = load i32, i32* %k, align 4
  %sub75 = sub nsw i32 %79, 1
  %idxprom76 = sext i32 %sub75 to i64
  %80 = load i32, i32* %i, align 4
  %sub77 = sub nsw i32 %80, 1
  %idxprom78 = sext i32 %sub77 to i64
  %81 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %mmx79 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %81, i32 0, i32 1
  %82 = load i32**, i32*** %mmx79, align 8
  %arrayidx80 = getelementptr inbounds i32*, i32** %82, i64 %idxprom78
  %83 = load i32*, i32** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %83, i64 %idxprom76
  %84 = load i32, i32* %arrayidx81, align 4
  %85 = load i32, i32* %k, align 4
  %sub82 = sub nsw i32 %85, 1
  %idxprom83 = sext i32 %sub82 to i64
  %86 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %86, i32 0, i32 30
  %87 = load i32**, i32*** %tsc, align 8
  %arrayidx84 = getelementptr inbounds i32*, i32** %87, i64 0
  %88 = load i32*, i32** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %88, i64 %idxprom83
  %89 = load i32, i32* %arrayidx85, align 4
  %add86 = add nsw i32 %84, %89
  %90 = load i32, i32* %k, align 4
  %sub87 = sub nsw i32 %90, 1
  %idxprom88 = sext i32 %sub87 to i64
  %91 = load i32, i32* %i, align 4
  %sub89 = sub nsw i32 %91, 1
  %idxprom90 = sext i32 %sub89 to i64
  %92 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %imx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %92, i32 0, i32 2
  %93 = load i32**, i32*** %imx, align 8
  %arrayidx91 = getelementptr inbounds i32*, i32** %93, i64 %idxprom90
  %94 = load i32*, i32** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %94, i64 %idxprom88
  %95 = load i32, i32* %arrayidx92, align 4
  %96 = load i32, i32* %k, align 4
  %sub93 = sub nsw i32 %96, 1
  %idxprom94 = sext i32 %sub93 to i64
  %97 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc95 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %97, i32 0, i32 30
  %98 = load i32**, i32*** %tsc95, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %98, i64 3
  %99 = load i32*, i32** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %99, i64 %idxprom94
  %100 = load i32, i32* %arrayidx97, align 4
  %add98 = add nsw i32 %95, %100
  %call = call i32 @ILogsum(i32 %add86, i32 %add98)
  %101 = load i32, i32* %i, align 4
  %sub99 = sub nsw i32 %101, 1
  %idxprom100 = sext i32 %sub99 to i64
  %102 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx101 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %102, i32 0, i32 0
  %103 = load i32**, i32*** %xmx101, align 8
  %arrayidx102 = getelementptr inbounds i32*, i32** %103, i64 %idxprom100
  %104 = load i32*, i32** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %104, i64 0
  %105 = load i32, i32* %arrayidx103, align 4
  %106 = load i32, i32* %k, align 4
  %idxprom104 = sext i32 %106 to i64
  %107 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %107, i32 0, i32 34
  %108 = load i32*, i32** %bsc, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %108, i64 %idxprom104
  %109 = load i32, i32* %arrayidx105, align 4
  %add106 = add nsw i32 %105, %109
  %110 = load i32, i32* %k, align 4
  %sub107 = sub nsw i32 %110, 1
  %idxprom108 = sext i32 %sub107 to i64
  %111 = load i32, i32* %i, align 4
  %sub109 = sub nsw i32 %111, 1
  %idxprom110 = sext i32 %sub109 to i64
  %112 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %dmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %112, i32 0, i32 3
  %113 = load i32**, i32*** %dmx, align 8
  %arrayidx111 = getelementptr inbounds i32*, i32** %113, i64 %idxprom110
  %114 = load i32*, i32** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %114, i64 %idxprom108
  %115 = load i32, i32* %arrayidx112, align 4
  %116 = load i32, i32* %k, align 4
  %sub113 = sub nsw i32 %116, 1
  %idxprom114 = sext i32 %sub113 to i64
  %117 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc115 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %117, i32 0, i32 30
  %118 = load i32**, i32*** %tsc115, align 8
  %arrayidx116 = getelementptr inbounds i32*, i32** %118, i64 5
  %119 = load i32*, i32** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %119, i64 %idxprom114
  %120 = load i32, i32* %arrayidx117, align 4
  %add118 = add nsw i32 %115, %120
  %call119 = call i32 @ILogsum(i32 %add106, i32 %add118)
  %call120 = call i32 @ILogsum(i32 %call, i32 %call119)
  %121 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %121 to i64
  %122 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %122 to i64
  %123 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx123 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %123, i32 0, i32 1
  %124 = load i32**, i32*** %mmx123, align 8
  %arrayidx124 = getelementptr inbounds i32*, i32** %124, i64 %idxprom122
  %125 = load i32*, i32** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %125, i64 %idxprom121
  %126 = load i32, i32* %arrayidx125, align 4
  %add126 = add nsw i32 %126, %call120
  store i32 %add126, i32* %arrayidx125, align 4
  %127 = load i32, i32* %sc, align 4
  %128 = load i32, i32* %k, align 4
  %idxprom127 = sext i32 %128 to i64
  %129 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %129 to i64
  %130 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx129 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %130, i32 0, i32 1
  %131 = load i32**, i32*** %mmx129, align 8
  %arrayidx130 = getelementptr inbounds i32*, i32** %131, i64 %idxprom128
  %132 = load i32*, i32** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %132, i64 %idxprom127
  %133 = load i32, i32* %arrayidx131, align 4
  %sub132 = sub nsw i32 %133, %127
  store i32 %sub132, i32* %arrayidx131, align 4
  %134 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %134 to i64
  %135 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %135 to i64
  %136 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %imx135 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %136, i32 0, i32 2
  %137 = load i32**, i32*** %imx135, align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %137, i64 %idxprom134
  %138 = load i32*, i32** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %138, i64 %idxprom133
  %139 = load i32, i32* %arrayidx137, align 4
  %140 = load i32, i32* %k, align 4
  %idxprom138 = sext i32 %140 to i64
  %141 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %141 to i64
  %142 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx140 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %142, i32 0, i32 2
  %143 = load i32**, i32*** %imx140, align 8
  %arrayidx141 = getelementptr inbounds i32*, i32** %143, i64 %idxprom139
  %144 = load i32*, i32** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %144, i64 %idxprom138
  store i32 %139, i32* %arrayidx142, align 4
  %145 = load i32, i32* %k, align 4
  %idxprom143 = sext i32 %145 to i64
  %146 = load i32, i32* %i, align 4
  %sub144 = sub nsw i32 %146, 1
  %idxprom145 = sext i32 %sub144 to i64
  %147 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %mmx146 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %147, i32 0, i32 1
  %148 = load i32**, i32*** %mmx146, align 8
  %arrayidx147 = getelementptr inbounds i32*, i32** %148, i64 %idxprom145
  %149 = load i32*, i32** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %149, i64 %idxprom143
  %150 = load i32, i32* %arrayidx148, align 4
  %151 = load i32, i32* %k, align 4
  %idxprom149 = sext i32 %151 to i64
  %152 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc150 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %152, i32 0, i32 30
  %153 = load i32**, i32*** %tsc150, align 8
  %arrayidx151 = getelementptr inbounds i32*, i32** %153, i64 1
  %154 = load i32*, i32** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %154, i64 %idxprom149
  %155 = load i32, i32* %arrayidx152, align 4
  %add153 = add nsw i32 %150, %155
  %156 = load i32, i32* %k, align 4
  %idxprom154 = sext i32 %156 to i64
  %157 = load i32, i32* %i, align 4
  %sub155 = sub nsw i32 %157, 1
  %idxprom156 = sext i32 %sub155 to i64
  %158 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %imx157 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %158, i32 0, i32 2
  %159 = load i32**, i32*** %imx157, align 8
  %arrayidx158 = getelementptr inbounds i32*, i32** %159, i64 %idxprom156
  %160 = load i32*, i32** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %160, i64 %idxprom154
  %161 = load i32, i32* %arrayidx159, align 4
  %162 = load i32, i32* %k, align 4
  %idxprom160 = sext i32 %162 to i64
  %163 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc161 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %163, i32 0, i32 30
  %164 = load i32**, i32*** %tsc161, align 8
  %arrayidx162 = getelementptr inbounds i32*, i32** %164, i64 4
  %165 = load i32*, i32** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %165, i64 %idxprom160
  %166 = load i32, i32* %arrayidx163, align 4
  %add164 = add nsw i32 %161, %166
  %call165 = call i32 @ILogsum(i32 %add153, i32 %add164)
  %167 = load i32, i32* %k, align 4
  %idxprom166 = sext i32 %167 to i64
  %168 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %168 to i64
  %169 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx168 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %169, i32 0, i32 2
  %170 = load i32**, i32*** %imx168, align 8
  %arrayidx169 = getelementptr inbounds i32*, i32** %170, i64 %idxprom167
  %171 = load i32*, i32** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %171, i64 %idxprom166
  %172 = load i32, i32* %arrayidx170, align 4
  %add171 = add nsw i32 %172, %call165
  store i32 %add171, i32* %arrayidx170, align 4
  %173 = load i32, i32* %sc, align 4
  %174 = load i32, i32* %k, align 4
  %idxprom172 = sext i32 %174 to i64
  %175 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %175 to i64
  %176 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx174 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %176, i32 0, i32 2
  %177 = load i32**, i32*** %imx174, align 8
  %arrayidx175 = getelementptr inbounds i32*, i32** %177, i64 %idxprom173
  %178 = load i32*, i32** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %178, i64 %idxprom172
  %179 = load i32, i32* %arrayidx176, align 4
  %sub177 = sub nsw i32 %179, %173
  store i32 %sub177, i32* %arrayidx176, align 4
  %180 = load i32, i32* %k, align 4
  %idxprom178 = sext i32 %180 to i64
  %181 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %181 to i64
  %182 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx180 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %182, i32 0, i32 3
  %183 = load i32**, i32*** %dmx180, align 8
  %arrayidx181 = getelementptr inbounds i32*, i32** %183, i64 %idxprom179
  %184 = load i32*, i32** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %184, i64 %idxprom178
  store i32 -987654321, i32* %arrayidx182, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.65
  %185 = load i32, i32* %k, align 4
  %inc = add nsw i32 %185, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.63

for.end:                                          ; preds = %for.cond.63
  %186 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M183 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %186, i32 0, i32 20
  %187 = load i32, i32* %M183, align 4
  %idxprom184 = sext i32 %187 to i64
  %188 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %188 to i64
  %189 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %mmx186 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %189, i32 0, i32 1
  %190 = load i32**, i32*** %mmx186, align 8
  %arrayidx187 = getelementptr inbounds i32*, i32** %190, i64 %idxprom185
  %191 = load i32*, i32** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %191, i64 %idxprom184
  %192 = load i32, i32* %arrayidx188, align 4
  %193 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M189 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %193, i32 0, i32 20
  %194 = load i32, i32* %M189, align 4
  %idxprom190 = sext i32 %194 to i64
  %195 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %195 to i64
  %196 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx192 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %196, i32 0, i32 1
  %197 = load i32**, i32*** %mmx192, align 8
  %arrayidx193 = getelementptr inbounds i32*, i32** %197, i64 %idxprom191
  %198 = load i32*, i32** %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %198, i64 %idxprom190
  store i32 %192, i32* %arrayidx194, align 4
  %199 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M195 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %199, i32 0, i32 20
  %200 = load i32, i32* %M195, align 4
  %sub196 = sub nsw i32 %200, 1
  %idxprom197 = sext i32 %sub196 to i64
  %201 = load i32, i32* %i, align 4
  %sub198 = sub nsw i32 %201, 1
  %idxprom199 = sext i32 %sub198 to i64
  %202 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %mmx200 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %202, i32 0, i32 1
  %203 = load i32**, i32*** %mmx200, align 8
  %arrayidx201 = getelementptr inbounds i32*, i32** %203, i64 %idxprom199
  %204 = load i32*, i32** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %204, i64 %idxprom197
  %205 = load i32, i32* %arrayidx202, align 4
  %206 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M203 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %206, i32 0, i32 20
  %207 = load i32, i32* %M203, align 4
  %sub204 = sub nsw i32 %207, 1
  %idxprom205 = sext i32 %sub204 to i64
  %208 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc206 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %208, i32 0, i32 30
  %209 = load i32**, i32*** %tsc206, align 8
  %arrayidx207 = getelementptr inbounds i32*, i32** %209, i64 0
  %210 = load i32*, i32** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %210, i64 %idxprom205
  %211 = load i32, i32* %arrayidx208, align 4
  %add209 = add nsw i32 %205, %211
  %212 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M210 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %212, i32 0, i32 20
  %213 = load i32, i32* %M210, align 4
  %sub211 = sub nsw i32 %213, 1
  %idxprom212 = sext i32 %sub211 to i64
  %214 = load i32, i32* %i, align 4
  %sub213 = sub nsw i32 %214, 1
  %idxprom214 = sext i32 %sub213 to i64
  %215 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %imx215 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %215, i32 0, i32 2
  %216 = load i32**, i32*** %imx215, align 8
  %arrayidx216 = getelementptr inbounds i32*, i32** %216, i64 %idxprom214
  %217 = load i32*, i32** %arrayidx216, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %217, i64 %idxprom212
  %218 = load i32, i32* %arrayidx217, align 4
  %219 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M218 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %219, i32 0, i32 20
  %220 = load i32, i32* %M218, align 4
  %sub219 = sub nsw i32 %220, 1
  %idxprom220 = sext i32 %sub219 to i64
  %221 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc221 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %221, i32 0, i32 30
  %222 = load i32**, i32*** %tsc221, align 8
  %arrayidx222 = getelementptr inbounds i32*, i32** %222, i64 3
  %223 = load i32*, i32** %arrayidx222, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %223, i64 %idxprom220
  %224 = load i32, i32* %arrayidx223, align 4
  %add224 = add nsw i32 %218, %224
  %call225 = call i32 @ILogsum(i32 %add209, i32 %add224)
  %225 = load i32, i32* %i, align 4
  %sub226 = sub nsw i32 %225, 1
  %idxprom227 = sext i32 %sub226 to i64
  %226 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx228 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %226, i32 0, i32 0
  %227 = load i32**, i32*** %xmx228, align 8
  %arrayidx229 = getelementptr inbounds i32*, i32** %227, i64 %idxprom227
  %228 = load i32*, i32** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds i32, i32* %228, i64 0
  %229 = load i32, i32* %arrayidx230, align 4
  %230 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M231 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %230, i32 0, i32 20
  %231 = load i32, i32* %M231, align 4
  %idxprom232 = sext i32 %231 to i64
  %232 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc233 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %232, i32 0, i32 34
  %233 = load i32*, i32** %bsc233, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %233, i64 %idxprom232
  %234 = load i32, i32* %arrayidx234, align 4
  %add235 = add nsw i32 %229, %234
  %235 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M236 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %235, i32 0, i32 20
  %236 = load i32, i32* %M236, align 4
  %sub237 = sub nsw i32 %236, 1
  %idxprom238 = sext i32 %sub237 to i64
  %237 = load i32, i32* %i, align 4
  %sub239 = sub nsw i32 %237, 1
  %idxprom240 = sext i32 %sub239 to i64
  %238 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %dmx241 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %238, i32 0, i32 3
  %239 = load i32**, i32*** %dmx241, align 8
  %arrayidx242 = getelementptr inbounds i32*, i32** %239, i64 %idxprom240
  %240 = load i32*, i32** %arrayidx242, align 8
  %arrayidx243 = getelementptr inbounds i32, i32* %240, i64 %idxprom238
  %241 = load i32, i32* %arrayidx243, align 4
  %242 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M244 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %242, i32 0, i32 20
  %243 = load i32, i32* %M244, align 4
  %sub245 = sub nsw i32 %243, 1
  %idxprom246 = sext i32 %sub245 to i64
  %244 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc247 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %244, i32 0, i32 30
  %245 = load i32**, i32*** %tsc247, align 8
  %arrayidx248 = getelementptr inbounds i32*, i32** %245, i64 5
  %246 = load i32*, i32** %arrayidx248, align 8
  %arrayidx249 = getelementptr inbounds i32, i32* %246, i64 %idxprom246
  %247 = load i32, i32* %arrayidx249, align 4
  %add250 = add nsw i32 %241, %247
  %call251 = call i32 @ILogsum(i32 %add235, i32 %add250)
  %call252 = call i32 @ILogsum(i32 %call225, i32 %call251)
  %248 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M253 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %248, i32 0, i32 20
  %249 = load i32, i32* %M253, align 4
  %idxprom254 = sext i32 %249 to i64
  %250 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %250 to i64
  %251 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx256 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %251, i32 0, i32 1
  %252 = load i32**, i32*** %mmx256, align 8
  %arrayidx257 = getelementptr inbounds i32*, i32** %252, i64 %idxprom255
  %253 = load i32*, i32** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %253, i64 %idxprom254
  %254 = load i32, i32* %arrayidx258, align 4
  %add259 = add nsw i32 %254, %call252
  store i32 %add259, i32* %arrayidx258, align 4
  %255 = load i32, i32* %sc, align 4
  %256 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M260 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %256, i32 0, i32 20
  %257 = load i32, i32* %M260, align 4
  %idxprom261 = sext i32 %257 to i64
  %258 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %258 to i64
  %259 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx263 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %259, i32 0, i32 1
  %260 = load i32**, i32*** %mmx263, align 8
  %arrayidx264 = getelementptr inbounds i32*, i32** %260, i64 %idxprom262
  %261 = load i32*, i32** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %261, i64 %idxprom261
  %262 = load i32, i32* %arrayidx265, align 4
  %sub266 = sub nsw i32 %262, %255
  store i32 %sub266, i32* %arrayidx265, align 4
  %263 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %263 to i64
  %264 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx268 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %264, i32 0, i32 3
  %265 = load i32**, i32*** %dmx268, align 8
  %arrayidx269 = getelementptr inbounds i32*, i32** %265, i64 %idxprom267
  %266 = load i32*, i32** %arrayidx269, align 8
  %arrayidx270 = getelementptr inbounds i32, i32* %266, i64 0
  store i32 -987654321, i32* %arrayidx270, align 4
  %267 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M271 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %267, i32 0, i32 20
  %268 = load i32, i32* %M271, align 4
  %idxprom272 = sext i32 %268 to i64
  %269 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %269 to i64
  %270 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx274 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %270, i32 0, i32 3
  %271 = load i32**, i32*** %dmx274, align 8
  %arrayidx275 = getelementptr inbounds i32*, i32** %271, i64 %idxprom273
  %272 = load i32*, i32** %arrayidx275, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %272, i64 %idxprom272
  store i32 -987654321, i32* %arrayidx276, align 4
  %273 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M277 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %273, i32 0, i32 20
  %274 = load i32, i32* %M277, align 4
  %idxprom278 = sext i32 %274 to i64
  %275 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %275 to i64
  %276 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx280 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %276, i32 0, i32 2
  %277 = load i32**, i32*** %imx280, align 8
  %arrayidx281 = getelementptr inbounds i32*, i32** %277, i64 %idxprom279
  %278 = load i32*, i32** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %278, i64 %idxprom278
  store i32 -987654321, i32* %arrayidx282, align 4
  br label %for.inc.283

for.inc.283:                                      ; preds = %for.end
  %279 = load i32, i32* %i, align 4
  %dec = add nsw i32 %279, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.284:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define float @P7FillOptimalAccuracy(i32 %L, i32 %M, %struct.dpmatrix_s* %posterior, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %L.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %posterior.addr = alloca %struct.dpmatrix_s*, align 8
  %mx.addr = alloca %struct.dpmatrix_s*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s**, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %sc = alloca i32, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store %struct.dpmatrix_s* %posterior, %struct.dpmatrix_s** %posterior.addr, align 8
  store %struct.dpmatrix_s* %mx, %struct.dpmatrix_s** %mx.addr, align 8
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  %0 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %0, i32 0, i32 0
  %1 = load i32**, i32*** %xmx1, align 8
  store i32** %1, i32*** %xmx, align 8
  %2 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx2 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %2, i32 0, i32 1
  %3 = load i32**, i32*** %mmx2, align 8
  store i32** %3, i32*** %mmx, align 8
  %4 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx3 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %4, i32 0, i32 2
  %5 = load i32**, i32*** %imx3, align 8
  store i32** %5, i32*** %imx, align 8
  %6 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx4 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %6, i32 0, i32 3
  %7 = load i32**, i32*** %dmx4, align 8
  store i32** %7, i32*** %dmx, align 8
  %8 = load i32**, i32*** %xmx, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 0
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 3
  store i32 -987654321, i32* %arrayidx5, align 4
  %10 = load i32**, i32*** %xmx, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %10, i64 0
  %11 = load i32*, i32** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 -987654321, i32* %arrayidx7, align 4
  %12 = load i32**, i32*** %xmx, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %12, i64 0
  %13 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 -987654321, i32* %arrayidx9, align 4
  %14 = load i32**, i32*** %xmx, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %14, i64 0
  %15 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 -987654321, i32* %arrayidx11, align 4
  %16 = load i32**, i32*** %xmx, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %16, i64 0
  %17 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 4
  store i32 -987654321, i32* %arrayidx13, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %M.addr, align 4
  %cmp = icmp sle i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %k, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i32**, i32*** %dmx, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %21, i64 0
  %22 = load i32*, i32** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 %idxprom
  store i32 -987654321, i32* %arrayidx15, align 4
  %23 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i32**, i32*** %imx, align 8
  %arrayidx17 = getelementptr inbounds i32*, i32** %24, i64 0
  %25 = load i32*, i32** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %25, i64 %idxprom16
  store i32 -987654321, i32* %arrayidx18, align 4
  %26 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load i32**, i32*** %mmx, align 8
  %arrayidx20 = getelementptr inbounds i32*, i32** %27, i64 0
  %28 = load i32*, i32** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %28, i64 %idxprom19
  store i32 -987654321, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %k, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.330, %for.end
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %L.addr, align 4
  %cmp23 = icmp sle i32 %30, %31
  br i1 %cmp23, label %for.body.24, label %for.end.332

for.body.24:                                      ; preds = %for.cond.22
  %32 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %32 to i64
  %33 = load i32**, i32*** %dmx, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %33, i64 %idxprom25
  %34 = load i32*, i32** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 -987654321, i32* %arrayidx27, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load i32**, i32*** %imx, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %36, i64 %idxprom28
  %37 = load i32*, i32** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 -987654321, i32* %arrayidx30, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %38 to i64
  %39 = load i32**, i32*** %mmx, align 8
  %arrayidx32 = getelementptr inbounds i32*, i32** %39, i64 %idxprom31
  %40 = load i32*, i32** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 -987654321, i32* %arrayidx33, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.203, %for.body.24
  %41 = load i32, i32* %k, align 4
  %42 = load i32, i32* %M.addr, align 4
  %cmp35 = icmp sle i32 %41, %42
  br i1 %cmp35, label %for.body.36, label %for.end.205

for.body.36:                                      ; preds = %for.cond.34
  %43 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %44 to i64
  %45 = load i32**, i32*** %mmx, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %45, i64 %idxprom38
  %46 = load i32*, i32** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %46, i64 %idxprom37
  store i32 -987654321, i32* %arrayidx40, align 4
  %47 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %47, 1
  %idxprom41 = sext i32 %sub to i64
  %48 = load i32, i32* %i, align 4
  %sub42 = sub nsw i32 %48, 1
  %idxprom43 = sext i32 %sub42 to i64
  %49 = load i32**, i32*** %mmx, align 8
  %arrayidx44 = getelementptr inbounds i32*, i32** %49, i64 %idxprom43
  %50 = load i32*, i32** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %50, i64 %idxprom41
  %51 = load i32, i32* %arrayidx45, align 4
  store i32 %51, i32* %sc, align 4
  %52 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %52 to i64
  %53 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %53 to i64
  %54 = load i32**, i32*** %mmx, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %54, i64 %idxprom47
  %55 = load i32*, i32** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %55, i64 %idxprom46
  %56 = load i32, i32* %arrayidx49, align 4
  %cmp50 = icmp sgt i32 %51, %56
  br i1 %cmp50, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.36
  %57 = load i32, i32* %sc, align 4
  %58 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %58 to i64
  %59 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %59 to i64
  %60 = load i32**, i32*** %mmx, align 8
  %arrayidx53 = getelementptr inbounds i32*, i32** %60, i64 %idxprom52
  %61 = load i32*, i32** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %61, i64 %idxprom51
  store i32 %57, i32* %arrayidx54, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.36
  %62 = load i32, i32* %k, align 4
  %sub55 = sub nsw i32 %62, 1
  %idxprom56 = sext i32 %sub55 to i64
  %63 = load i32, i32* %i, align 4
  %sub57 = sub nsw i32 %63, 1
  %idxprom58 = sext i32 %sub57 to i64
  %64 = load i32**, i32*** %imx, align 8
  %arrayidx59 = getelementptr inbounds i32*, i32** %64, i64 %idxprom58
  %65 = load i32*, i32** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %65, i64 %idxprom56
  %66 = load i32, i32* %arrayidx60, align 4
  store i32 %66, i32* %sc, align 4
  %67 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %67 to i64
  %68 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %68 to i64
  %69 = load i32**, i32*** %mmx, align 8
  %arrayidx63 = getelementptr inbounds i32*, i32** %69, i64 %idxprom62
  %70 = load i32*, i32** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %70, i64 %idxprom61
  %71 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp sgt i32 %66, %71
  br i1 %cmp65, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %if.end
  %72 = load i32, i32* %sc, align 4
  %73 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %73 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %74 to i64
  %75 = load i32**, i32*** %mmx, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %75, i64 %idxprom68
  %76 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %76, i64 %idxprom67
  store i32 %72, i32* %arrayidx70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %if.end
  %77 = load i32, i32* %k, align 4
  %sub72 = sub nsw i32 %77, 1
  %idxprom73 = sext i32 %sub72 to i64
  %78 = load i32, i32* %i, align 4
  %sub74 = sub nsw i32 %78, 1
  %idxprom75 = sext i32 %sub74 to i64
  %79 = load i32**, i32*** %dmx, align 8
  %arrayidx76 = getelementptr inbounds i32*, i32** %79, i64 %idxprom75
  %80 = load i32*, i32** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %80, i64 %idxprom73
  %81 = load i32, i32* %arrayidx77, align 4
  store i32 %81, i32* %sc, align 4
  %82 = load i32, i32* %k, align 4
  %idxprom78 = sext i32 %82 to i64
  %83 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %83 to i64
  %84 = load i32**, i32*** %mmx, align 8
  %arrayidx80 = getelementptr inbounds i32*, i32** %84, i64 %idxprom79
  %85 = load i32*, i32** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %85, i64 %idxprom78
  %86 = load i32, i32* %arrayidx81, align 4
  %cmp82 = icmp sgt i32 %81, %86
  br i1 %cmp82, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %if.end.71
  %87 = load i32, i32* %sc, align 4
  %88 = load i32, i32* %k, align 4
  %idxprom84 = sext i32 %88 to i64
  %89 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %89 to i64
  %90 = load i32**, i32*** %mmx, align 8
  %arrayidx86 = getelementptr inbounds i32*, i32** %90, i64 %idxprom85
  %91 = load i32*, i32** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %91, i64 %idxprom84
  store i32 %87, i32* %arrayidx87, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %if.end.71
  %92 = load i32, i32* %i, align 4
  %sub89 = sub nsw i32 %92, 1
  %idxprom90 = sext i32 %sub89 to i64
  %93 = load i32**, i32*** %xmx, align 8
  %arrayidx91 = getelementptr inbounds i32*, i32** %93, i64 %idxprom90
  %94 = load i32*, i32** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %94, i64 0
  %95 = load i32, i32* %arrayidx92, align 4
  store i32 %95, i32* %sc, align 4
  %96 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %96 to i64
  %97 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %97 to i64
  %98 = load i32**, i32*** %mmx, align 8
  %arrayidx95 = getelementptr inbounds i32*, i32** %98, i64 %idxprom94
  %99 = load i32*, i32** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %99, i64 %idxprom93
  %100 = load i32, i32* %arrayidx96, align 4
  %cmp97 = icmp sgt i32 %95, %100
  br i1 %cmp97, label %if.then.98, label %if.end.103

if.then.98:                                       ; preds = %if.end.88
  %101 = load i32, i32* %sc, align 4
  %102 = load i32, i32* %k, align 4
  %idxprom99 = sext i32 %102 to i64
  %103 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %103 to i64
  %104 = load i32**, i32*** %mmx, align 8
  %arrayidx101 = getelementptr inbounds i32*, i32** %104, i64 %idxprom100
  %105 = load i32*, i32** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %105, i64 %idxprom99
  store i32 %101, i32* %arrayidx102, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.98, %if.end.88
  %106 = load i32, i32* %k, align 4
  %idxprom104 = sext i32 %106 to i64
  %107 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %107 to i64
  %108 = load i32**, i32*** %mmx, align 8
  %arrayidx106 = getelementptr inbounds i32*, i32** %108, i64 %idxprom105
  %109 = load i32*, i32** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %109, i64 %idxprom104
  %110 = load i32, i32* %arrayidx107, align 4
  %111 = load i32, i32* %k, align 4
  %idxprom108 = sext i32 %111 to i64
  %112 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %112 to i64
  %113 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %mmx110 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %113, i32 0, i32 1
  %114 = load i32**, i32*** %mmx110, align 8
  %arrayidx111 = getelementptr inbounds i32*, i32** %114, i64 %idxprom109
  %115 = load i32*, i32** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %115, i64 %idxprom108
  %116 = load i32, i32* %arrayidx112, align 4
  %call = call i32 @ILogsum(i32 %110, i32 %116)
  %117 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %117 to i64
  %118 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %118 to i64
  %119 = load i32**, i32*** %mmx, align 8
  %arrayidx115 = getelementptr inbounds i32*, i32** %119, i64 %idxprom114
  %120 = load i32*, i32** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %120, i64 %idxprom113
  store i32 %call, i32* %arrayidx116, align 4
  %121 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %121 to i64
  %122 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %122 to i64
  %123 = load i32**, i32*** %dmx, align 8
  %arrayidx119 = getelementptr inbounds i32*, i32** %123, i64 %idxprom118
  %124 = load i32*, i32** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %124, i64 %idxprom117
  store i32 -987654321, i32* %arrayidx120, align 4
  %125 = load i32, i32* %k, align 4
  %sub121 = sub nsw i32 %125, 1
  %idxprom122 = sext i32 %sub121 to i64
  %126 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %126 to i64
  %127 = load i32**, i32*** %mmx, align 8
  %arrayidx124 = getelementptr inbounds i32*, i32** %127, i64 %idxprom123
  %128 = load i32*, i32** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %128, i64 %idxprom122
  %129 = load i32, i32* %arrayidx125, align 4
  store i32 %129, i32* %sc, align 4
  %130 = load i32, i32* %k, align 4
  %idxprom126 = sext i32 %130 to i64
  %131 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %131 to i64
  %132 = load i32**, i32*** %dmx, align 8
  %arrayidx128 = getelementptr inbounds i32*, i32** %132, i64 %idxprom127
  %133 = load i32*, i32** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %133, i64 %idxprom126
  %134 = load i32, i32* %arrayidx129, align 4
  %cmp130 = icmp sgt i32 %129, %134
  br i1 %cmp130, label %if.then.131, label %if.end.136

if.then.131:                                      ; preds = %if.end.103
  %135 = load i32, i32* %sc, align 4
  %136 = load i32, i32* %k, align 4
  %idxprom132 = sext i32 %136 to i64
  %137 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %137 to i64
  %138 = load i32**, i32*** %dmx, align 8
  %arrayidx134 = getelementptr inbounds i32*, i32** %138, i64 %idxprom133
  %139 = load i32*, i32** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %139, i64 %idxprom132
  store i32 %135, i32* %arrayidx135, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.131, %if.end.103
  %140 = load i32, i32* %k, align 4
  %sub137 = sub nsw i32 %140, 1
  %idxprom138 = sext i32 %sub137 to i64
  %141 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %141 to i64
  %142 = load i32**, i32*** %dmx, align 8
  %arrayidx140 = getelementptr inbounds i32*, i32** %142, i64 %idxprom139
  %143 = load i32*, i32** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %143, i64 %idxprom138
  %144 = load i32, i32* %arrayidx141, align 4
  store i32 %144, i32* %sc, align 4
  %145 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %145 to i64
  %146 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %146 to i64
  %147 = load i32**, i32*** %dmx, align 8
  %arrayidx144 = getelementptr inbounds i32*, i32** %147, i64 %idxprom143
  %148 = load i32*, i32** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %148, i64 %idxprom142
  %149 = load i32, i32* %arrayidx145, align 4
  %cmp146 = icmp sgt i32 %144, %149
  br i1 %cmp146, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %if.end.136
  %150 = load i32, i32* %sc, align 4
  %151 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %151 to i64
  %152 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %152 to i64
  %153 = load i32**, i32*** %dmx, align 8
  %arrayidx150 = getelementptr inbounds i32*, i32** %153, i64 %idxprom149
  %154 = load i32*, i32** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %154, i64 %idxprom148
  store i32 %150, i32* %arrayidx151, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.147, %if.end.136
  %155 = load i32, i32* %k, align 4
  %idxprom153 = sext i32 %155 to i64
  %156 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %156 to i64
  %157 = load i32**, i32*** %imx, align 8
  %arrayidx155 = getelementptr inbounds i32*, i32** %157, i64 %idxprom154
  %158 = load i32*, i32** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %158, i64 %idxprom153
  store i32 -987654321, i32* %arrayidx156, align 4
  %159 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %159 to i64
  %160 = load i32, i32* %i, align 4
  %sub158 = sub nsw i32 %160, 1
  %idxprom159 = sext i32 %sub158 to i64
  %161 = load i32**, i32*** %mmx, align 8
  %arrayidx160 = getelementptr inbounds i32*, i32** %161, i64 %idxprom159
  %162 = load i32*, i32** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %162, i64 %idxprom157
  %163 = load i32, i32* %arrayidx161, align 4
  store i32 %163, i32* %sc, align 4
  %164 = load i32, i32* %k, align 4
  %idxprom162 = sext i32 %164 to i64
  %165 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %165 to i64
  %166 = load i32**, i32*** %imx, align 8
  %arrayidx164 = getelementptr inbounds i32*, i32** %166, i64 %idxprom163
  %167 = load i32*, i32** %arrayidx164, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %167, i64 %idxprom162
  %168 = load i32, i32* %arrayidx165, align 4
  %cmp166 = icmp sgt i32 %163, %168
  br i1 %cmp166, label %if.then.167, label %if.end.172

if.then.167:                                      ; preds = %if.end.152
  %169 = load i32, i32* %sc, align 4
  %170 = load i32, i32* %k, align 4
  %idxprom168 = sext i32 %170 to i64
  %171 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %171 to i64
  %172 = load i32**, i32*** %imx, align 8
  %arrayidx170 = getelementptr inbounds i32*, i32** %172, i64 %idxprom169
  %173 = load i32*, i32** %arrayidx170, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %173, i64 %idxprom168
  store i32 %169, i32* %arrayidx171, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.167, %if.end.152
  %174 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %174 to i64
  %175 = load i32, i32* %i, align 4
  %sub174 = sub nsw i32 %175, 1
  %idxprom175 = sext i32 %sub174 to i64
  %176 = load i32**, i32*** %imx, align 8
  %arrayidx176 = getelementptr inbounds i32*, i32** %176, i64 %idxprom175
  %177 = load i32*, i32** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %177, i64 %idxprom173
  %178 = load i32, i32* %arrayidx177, align 4
  store i32 %178, i32* %sc, align 4
  %179 = load i32, i32* %k, align 4
  %idxprom178 = sext i32 %179 to i64
  %180 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %180 to i64
  %181 = load i32**, i32*** %imx, align 8
  %arrayidx180 = getelementptr inbounds i32*, i32** %181, i64 %idxprom179
  %182 = load i32*, i32** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %182, i64 %idxprom178
  %183 = load i32, i32* %arrayidx181, align 4
  %cmp182 = icmp sgt i32 %178, %183
  br i1 %cmp182, label %if.then.183, label %if.end.188

if.then.183:                                      ; preds = %if.end.172
  %184 = load i32, i32* %sc, align 4
  %185 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %185 to i64
  %186 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %186 to i64
  %187 = load i32**, i32*** %imx, align 8
  %arrayidx186 = getelementptr inbounds i32*, i32** %187, i64 %idxprom185
  %188 = load i32*, i32** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %188, i64 %idxprom184
  store i32 %184, i32* %arrayidx187, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.183, %if.end.172
  %189 = load i32, i32* %k, align 4
  %idxprom189 = sext i32 %189 to i64
  %190 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %190 to i64
  %191 = load i32**, i32*** %imx, align 8
  %arrayidx191 = getelementptr inbounds i32*, i32** %191, i64 %idxprom190
  %192 = load i32*, i32** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %192, i64 %idxprom189
  %193 = load i32, i32* %arrayidx192, align 4
  %194 = load i32, i32* %k, align 4
  %idxprom193 = sext i32 %194 to i64
  %195 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %195 to i64
  %196 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %imx195 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %196, i32 0, i32 2
  %197 = load i32**, i32*** %imx195, align 8
  %arrayidx196 = getelementptr inbounds i32*, i32** %197, i64 %idxprom194
  %198 = load i32*, i32** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %198, i64 %idxprom193
  %199 = load i32, i32* %arrayidx197, align 4
  %call198 = call i32 @ILogsum(i32 %193, i32 %199)
  %200 = load i32, i32* %k, align 4
  %idxprom199 = sext i32 %200 to i64
  %201 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %201 to i64
  %202 = load i32**, i32*** %imx, align 8
  %arrayidx201 = getelementptr inbounds i32*, i32** %202, i64 %idxprom200
  %203 = load i32*, i32** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %203, i64 %idxprom199
  store i32 %call198, i32* %arrayidx202, align 4
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.188
  %204 = load i32, i32* %k, align 4
  %inc204 = add nsw i32 %204, 1
  store i32 %inc204, i32* %k, align 4
  br label %for.cond.34

for.end.205:                                      ; preds = %for.cond.34
  %205 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %205 to i64
  %206 = load i32**, i32*** %xmx, align 8
  %arrayidx207 = getelementptr inbounds i32*, i32** %206, i64 %idxprom206
  %207 = load i32*, i32** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %207, i64 4
  store i32 -987654321, i32* %arrayidx208, align 4
  %208 = load i32, i32* %i, align 4
  %sub209 = sub nsw i32 %208, 1
  %idxprom210 = sext i32 %sub209 to i64
  %209 = load i32**, i32*** %xmx, align 8
  %arrayidx211 = getelementptr inbounds i32*, i32** %209, i64 %idxprom210
  %210 = load i32*, i32** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %210, i64 4
  %211 = load i32, i32* %arrayidx212, align 4
  %212 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %212 to i64
  %213 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %xmx214 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %213, i32 0, i32 0
  %214 = load i32**, i32*** %xmx214, align 8
  %arrayidx215 = getelementptr inbounds i32*, i32** %214, i64 %idxprom213
  %215 = load i32*, i32** %arrayidx215, align 8
  %arrayidx216 = getelementptr inbounds i32, i32* %215, i64 4
  %216 = load i32, i32* %arrayidx216, align 4
  %call217 = call i32 @ILogsum(i32 %211, i32 %216)
  store i32 %call217, i32* %sc, align 4
  %cmp218 = icmp sgt i32 %call217, -987654321
  br i1 %cmp218, label %if.then.219, label %if.end.223

if.then.219:                                      ; preds = %for.end.205
  %217 = load i32, i32* %sc, align 4
  %218 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %218 to i64
  %219 = load i32**, i32*** %xmx, align 8
  %arrayidx221 = getelementptr inbounds i32*, i32** %219, i64 %idxprom220
  %220 = load i32*, i32** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %220, i64 4
  store i32 %217, i32* %arrayidx222, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.219, %for.end.205
  %221 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %221 to i64
  %222 = load i32**, i32*** %xmx, align 8
  %arrayidx225 = getelementptr inbounds i32*, i32** %222, i64 %idxprom224
  %223 = load i32*, i32** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %223, i64 1
  store i32 -987654321, i32* %arrayidx226, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.243, %if.end.223
  %224 = load i32, i32* %k, align 4
  %225 = load i32, i32* %M.addr, align 4
  %cmp228 = icmp sle i32 %224, %225
  br i1 %cmp228, label %for.body.229, label %for.end.245

for.body.229:                                     ; preds = %for.cond.227
  %226 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %226 to i64
  %227 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %227 to i64
  %228 = load i32**, i32*** %mmx, align 8
  %arrayidx232 = getelementptr inbounds i32*, i32** %228, i64 %idxprom231
  %229 = load i32*, i32** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %229, i64 %idxprom230
  %230 = load i32, i32* %arrayidx233, align 4
  store i32 %230, i32* %sc, align 4
  %231 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %231 to i64
  %232 = load i32**, i32*** %xmx, align 8
  %arrayidx235 = getelementptr inbounds i32*, i32** %232, i64 %idxprom234
  %233 = load i32*, i32** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds i32, i32* %233, i64 1
  %234 = load i32, i32* %arrayidx236, align 4
  %cmp237 = icmp sgt i32 %230, %234
  br i1 %cmp237, label %if.then.238, label %if.end.242

if.then.238:                                      ; preds = %for.body.229
  %235 = load i32, i32* %sc, align 4
  %236 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %236 to i64
  %237 = load i32**, i32*** %xmx, align 8
  %arrayidx240 = getelementptr inbounds i32*, i32** %237, i64 %idxprom239
  %238 = load i32*, i32** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %238, i64 1
  store i32 %235, i32* %arrayidx241, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.238, %for.body.229
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242
  %239 = load i32, i32* %k, align 4
  %inc244 = add nsw i32 %239, 1
  store i32 %inc244, i32* %k, align 4
  br label %for.cond.227

for.end.245:                                      ; preds = %for.cond.227
  %240 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %240 to i64
  %241 = load i32**, i32*** %xmx, align 8
  %arrayidx247 = getelementptr inbounds i32*, i32** %241, i64 %idxprom246
  %242 = load i32*, i32** %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds i32, i32* %242, i64 3
  store i32 -987654321, i32* %arrayidx248, align 4
  %243 = load i32, i32* %i, align 4
  %sub249 = sub nsw i32 %243, 1
  %idxprom250 = sext i32 %sub249 to i64
  %244 = load i32**, i32*** %xmx, align 8
  %arrayidx251 = getelementptr inbounds i32*, i32** %244, i64 %idxprom250
  %245 = load i32*, i32** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %245, i64 3
  %246 = load i32, i32* %arrayidx252, align 4
  %247 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %247 to i64
  %248 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %xmx254 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %248, i32 0, i32 0
  %249 = load i32**, i32*** %xmx254, align 8
  %arrayidx255 = getelementptr inbounds i32*, i32** %249, i64 %idxprom253
  %250 = load i32*, i32** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds i32, i32* %250, i64 3
  %251 = load i32, i32* %arrayidx256, align 4
  %call257 = call i32 @ILogsum(i32 %246, i32 %251)
  store i32 %call257, i32* %sc, align 4
  %cmp258 = icmp sgt i32 %call257, -987654321
  br i1 %cmp258, label %if.then.259, label %if.end.263

if.then.259:                                      ; preds = %for.end.245
  %252 = load i32, i32* %sc, align 4
  %253 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %253 to i64
  %254 = load i32**, i32*** %xmx, align 8
  %arrayidx261 = getelementptr inbounds i32*, i32** %254, i64 %idxprom260
  %255 = load i32*, i32** %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %255, i64 3
  store i32 %252, i32* %arrayidx262, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.259, %for.end.245
  %256 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %256 to i64
  %257 = load i32**, i32*** %xmx, align 8
  %arrayidx265 = getelementptr inbounds i32*, i32** %257, i64 %idxprom264
  %258 = load i32*, i32** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %258, i64 1
  %259 = load i32, i32* %arrayidx266, align 4
  store i32 %259, i32* %sc, align 4
  %260 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %260 to i64
  %261 = load i32**, i32*** %xmx, align 8
  %arrayidx268 = getelementptr inbounds i32*, i32** %261, i64 %idxprom267
  %262 = load i32*, i32** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %262, i64 3
  %263 = load i32, i32* %arrayidx269, align 4
  %cmp270 = icmp sgt i32 %259, %263
  br i1 %cmp270, label %if.then.271, label %if.end.275

if.then.271:                                      ; preds = %if.end.263
  %264 = load i32, i32* %sc, align 4
  %265 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %265 to i64
  %266 = load i32**, i32*** %xmx, align 8
  %arrayidx273 = getelementptr inbounds i32*, i32** %266, i64 %idxprom272
  %267 = load i32*, i32** %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %267, i64 3
  store i32 %264, i32* %arrayidx274, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.271, %if.end.263
  %268 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %268 to i64
  %269 = load i32**, i32*** %xmx, align 8
  %arrayidx277 = getelementptr inbounds i32*, i32** %269, i64 %idxprom276
  %270 = load i32*, i32** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %270, i64 0
  store i32 -987654321, i32* %arrayidx278, align 4
  %271 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %271 to i64
  %272 = load i32**, i32*** %xmx, align 8
  %arrayidx280 = getelementptr inbounds i32*, i32** %272, i64 %idxprom279
  %273 = load i32*, i32** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %273, i64 4
  %274 = load i32, i32* %arrayidx281, align 4
  store i32 %274, i32* %sc, align 4
  %cmp282 = icmp sgt i32 %274, -987654321
  br i1 %cmp282, label %if.then.283, label %if.end.287

if.then.283:                                      ; preds = %if.end.275
  %275 = load i32, i32* %sc, align 4
  %276 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %276 to i64
  %277 = load i32**, i32*** %xmx, align 8
  %arrayidx285 = getelementptr inbounds i32*, i32** %277, i64 %idxprom284
  %278 = load i32*, i32** %arrayidx285, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %278, i64 0
  store i32 %275, i32* %arrayidx286, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.283, %if.end.275
  %279 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %279 to i64
  %280 = load i32**, i32*** %xmx, align 8
  %arrayidx289 = getelementptr inbounds i32*, i32** %280, i64 %idxprom288
  %281 = load i32*, i32** %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds i32, i32* %281, i64 3
  %282 = load i32, i32* %arrayidx290, align 4
  store i32 %282, i32* %sc, align 4
  %283 = load i32, i32* %i, align 4
  %idxprom291 = sext i32 %283 to i64
  %284 = load i32**, i32*** %xmx, align 8
  %arrayidx292 = getelementptr inbounds i32*, i32** %284, i64 %idxprom291
  %285 = load i32*, i32** %arrayidx292, align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %285, i64 0
  %286 = load i32, i32* %arrayidx293, align 4
  %cmp294 = icmp sgt i32 %282, %286
  br i1 %cmp294, label %if.then.295, label %if.end.299

if.then.295:                                      ; preds = %if.end.287
  %287 = load i32, i32* %sc, align 4
  %288 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %288 to i64
  %289 = load i32**, i32*** %xmx, align 8
  %arrayidx297 = getelementptr inbounds i32*, i32** %289, i64 %idxprom296
  %290 = load i32*, i32** %arrayidx297, align 8
  %arrayidx298 = getelementptr inbounds i32, i32* %290, i64 0
  store i32 %287, i32* %arrayidx298, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.295, %if.end.287
  %291 = load i32, i32* %i, align 4
  %idxprom300 = sext i32 %291 to i64
  %292 = load i32**, i32*** %xmx, align 8
  %arrayidx301 = getelementptr inbounds i32*, i32** %292, i64 %idxprom300
  %293 = load i32*, i32** %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %293, i64 2
  store i32 -987654321, i32* %arrayidx302, align 4
  %294 = load i32, i32* %i, align 4
  %sub303 = sub nsw i32 %294, 1
  %idxprom304 = sext i32 %sub303 to i64
  %295 = load i32**, i32*** %xmx, align 8
  %arrayidx305 = getelementptr inbounds i32*, i32** %295, i64 %idxprom304
  %296 = load i32*, i32** %arrayidx305, align 8
  %arrayidx306 = getelementptr inbounds i32, i32* %296, i64 2
  %297 = load i32, i32* %arrayidx306, align 4
  %298 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %298 to i64
  %299 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %xmx308 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %299, i32 0, i32 0
  %300 = load i32**, i32*** %xmx308, align 8
  %arrayidx309 = getelementptr inbounds i32*, i32** %300, i64 %idxprom307
  %301 = load i32*, i32** %arrayidx309, align 8
  %arrayidx310 = getelementptr inbounds i32, i32* %301, i64 2
  %302 = load i32, i32* %arrayidx310, align 4
  %call311 = call i32 @ILogsum(i32 %297, i32 %302)
  store i32 %call311, i32* %sc, align 4
  %cmp312 = icmp sgt i32 %call311, -987654321
  br i1 %cmp312, label %if.then.313, label %if.end.317

if.then.313:                                      ; preds = %if.end.299
  %303 = load i32, i32* %sc, align 4
  %304 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %304 to i64
  %305 = load i32**, i32*** %xmx, align 8
  %arrayidx315 = getelementptr inbounds i32*, i32** %305, i64 %idxprom314
  %306 = load i32*, i32** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %306, i64 2
  store i32 %303, i32* %arrayidx316, align 4
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.313, %if.end.299
  %307 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %307 to i64
  %308 = load i32**, i32*** %xmx, align 8
  %arrayidx319 = getelementptr inbounds i32*, i32** %308, i64 %idxprom318
  %309 = load i32*, i32** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %309, i64 1
  %310 = load i32, i32* %arrayidx320, align 4
  store i32 %310, i32* %sc, align 4
  %311 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %311 to i64
  %312 = load i32**, i32*** %xmx, align 8
  %arrayidx322 = getelementptr inbounds i32*, i32** %312, i64 %idxprom321
  %313 = load i32*, i32** %arrayidx322, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %313, i64 2
  %314 = load i32, i32* %arrayidx323, align 4
  %cmp324 = icmp sgt i32 %310, %314
  br i1 %cmp324, label %if.then.325, label %if.end.329

if.then.325:                                      ; preds = %if.end.317
  %315 = load i32, i32* %sc, align 4
  %316 = load i32, i32* %i, align 4
  %idxprom326 = sext i32 %316 to i64
  %317 = load i32**, i32*** %xmx, align 8
  %arrayidx327 = getelementptr inbounds i32*, i32** %317, i64 %idxprom326
  %318 = load i32*, i32** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds i32, i32* %318, i64 2
  store i32 %315, i32* %arrayidx328, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.325, %if.end.317
  br label %for.inc.330

for.inc.330:                                      ; preds = %if.end.329
  %319 = load i32, i32* %i, align 4
  %inc331 = add nsw i32 %319, 1
  store i32 %inc331, i32* %i, align 4
  br label %for.cond.22

for.end.332:                                      ; preds = %for.cond.22
  %320 = load i32, i32* %L.addr, align 4
  %idxprom333 = sext i32 %320 to i64
  %321 = load i32**, i32*** %xmx, align 8
  %arrayidx334 = getelementptr inbounds i32*, i32** %321, i64 %idxprom333
  %322 = load i32*, i32** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds i32, i32* %322, i64 2
  %323 = load i32, i32* %arrayidx335, align 4
  store i32 %323, i32* %sc, align 4
  %324 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  %cmp336 = icmp ne %struct.p7trace_s** %324, null
  br i1 %cmp336, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %for.end.332
  %325 = load i32, i32* %L.addr, align 4
  %326 = load i32, i32* %M.addr, align 4
  %327 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %328 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  call void @P7OptimalAccuracyTrace(i32 %325, i32 %326, %struct.dpmatrix_s* %327, %struct.dpmatrix_s* %328, %struct.p7trace_s** %tr)
  %329 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %330 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* %329, %struct.p7trace_s** %330, align 8
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.337, %for.end.332
  %331 = load i32, i32* %sc, align 4
  %call339 = call float @Score2Prob(i32 %331, float 1.000000e+00)
  ret float %call339
}

declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #1

declare %struct.dpmatrix_s* @AllocPlan7Matrix(i32, i32, i32***, i32***, i32***, i32***) #1

declare i32 @ILogsum(i32, i32) #1

declare float @Scorify(i32) #1

; Function Attrs: nounwind uwtable
define void @P7OptimalAccuracyTrace(i32 %L, i32 %M, %struct.dpmatrix_s* %posterior, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %L.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %posterior.addr = alloca %struct.dpmatrix_s*, align 8
  %mx.addr = alloca %struct.dpmatrix_s*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s**, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %curralloc = alloca i32, align 4
  %tpos = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  %sc = alloca i32, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store %struct.dpmatrix_s* %posterior, %struct.dpmatrix_s** %posterior.addr, align 8
  store %struct.dpmatrix_s* %mx, %struct.dpmatrix_s** %mx.addr, align 8
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  %0 = load i32, i32* %L.addr, align 4
  %mul = mul nsw i32 %0, 2
  %add = add nsw i32 %mul, 6
  store i32 %add, i32* %curralloc, align 4
  %1 = load i32, i32* %curralloc, align 4
  call void @P7AllocTrace(i32 %1, %struct.p7trace_s** %tr)
  %2 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %2, i32 0, i32 0
  %3 = load i32**, i32*** %xmx1, align 8
  store i32** %3, i32*** %xmx, align 8
  %4 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx2 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %4, i32 0, i32 1
  %5 = load i32**, i32*** %mmx2, align 8
  store i32** %5, i32*** %mmx, align 8
  %6 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx3 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %6, i32 0, i32 2
  %7 = load i32**, i32*** %imx3, align 8
  store i32** %7, i32*** %imx, align 8
  %8 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx4 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %8, i32 0, i32 3
  %9 = load i32**, i32*** %dmx4, align 8
  store i32** %9, i32*** %dmx, align 8
  %10 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  store i8 9, i8* %arrayidx, align 1
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 2
  %13 = load i32*, i32** %nodeidx, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %arrayidx5, align 4
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %14, i32 0, i32 3
  %15 = load i32*, i32** %pos, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 0, i32* %arrayidx6, align 4
  %16 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype7 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %16, i32 0, i32 1
  %17 = load i8*, i8** %statetype7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 8, i8* %arrayidx8, align 1
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx9 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %18, i32 0, i32 2
  %19 = load i32*, i32** %nodeidx9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %arrayidx10, align 4
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos11 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %20, i32 0, i32 3
  %21 = load i32*, i32** %pos11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 0, i32* %arrayidx12, align 4
  store i32 2, i32* %tpos, align 4
  %22 = load i32, i32* %L.addr, align 4
  store i32 %22, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.523, %entry
  %23 = load i32, i32* %tpos, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom = sext i32 %sub to i64
  %24 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %statetype13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx14, align 1
  %conv = sext i8 %26 to i32
  %cmp = icmp ne i32 %conv, 4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* %tpos, align 4
  %sub16 = sub nsw i32 %27, 1
  %idxprom17 = sext i32 %sub16 to i64
  %28 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype18 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %28, i32 0, i32 1
  %29 = load i8*, i8** %statetype18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %29, i64 %idxprom17
  %30 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %30 to i32
  switch i32 %conv20, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.146
    i32 3, label %sw.bb.205
    i32 5, label %sw.bb.276
    i32 6, label %sw.bb.335
    i32 7, label %sw.bb.376
    i32 8, label %sw.bb.409
    i32 10, label %sw.bb.464
  ]

sw.bb:                                            ; preds = %while.body
  %31 = load i32, i32* %k, align 4
  %add21 = add nsw i32 %31, 1
  %idxprom22 = sext i32 %add21 to i64
  %32 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %32, 1
  %idxprom24 = sext i32 %add23 to i64
  %33 = load i32**, i32*** %mmx, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %33, i64 %idxprom24
  %34 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %34, i64 %idxprom22
  %35 = load i32, i32* %arrayidx26, align 4
  store i32 %35, i32* %sc, align 4
  %36 = load i32, i32* %sc, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %38 to i64
  %39 = load i32**, i32*** %mmx, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %39, i64 %idxprom28
  %40 = load i32*, i32** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %40, i64 %idxprom27
  %41 = load i32, i32* %arrayidx30, align 4
  %42 = load i32, i32* %k, align 4
  %add31 = add nsw i32 %42, 1
  %idxprom32 = sext i32 %add31 to i64
  %43 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %43, 1
  %idxprom34 = sext i32 %add33 to i64
  %44 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %mmx35 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %44, i32 0, i32 1
  %45 = load i32**, i32*** %mmx35, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %45, i64 %idxprom34
  %46 = load i32*, i32** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %46, i64 %idxprom32
  %47 = load i32, i32* %arrayidx37, align 4
  %call = call i32 @ILogsum(i32 %41, i32 %47)
  %cmp38 = icmp eq i32 %36, %call
  br i1 %cmp38, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %48 = load i32, i32* %i, align 4
  %cmp40 = icmp sgt i32 %48, 0
  br i1 %cmp40, label %land.lhs.true.42, label %if.else

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %49 = load i32, i32* %k, align 4
  %cmp43 = icmp sgt i32 %49, 0
  br i1 %cmp43, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.42
  %50 = load i32, i32* %tpos, align 4
  %idxprom45 = sext i32 %50 to i64
  %51 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype46 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %51, i32 0, i32 1
  %52 = load i8*, i8** %statetype46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %52, i64 %idxprom45
  store i8 1, i8* %arrayidx47, align 1
  %53 = load i32, i32* %k, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %k, align 4
  %54 = load i32, i32* %tpos, align 4
  %idxprom48 = sext i32 %54 to i64
  %55 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx49 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %55, i32 0, i32 2
  %56 = load i32*, i32** %nodeidx49, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %56, i64 %idxprom48
  store i32 %53, i32* %arrayidx50, align 4
  %57 = load i32, i32* %i, align 4
  %dec51 = add nsw i32 %57, -1
  store i32 %dec51, i32* %i, align 4
  %58 = load i32, i32* %tpos, align 4
  %idxprom52 = sext i32 %58 to i64
  %59 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos53 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %59, i32 0, i32 3
  %60 = load i32*, i32** %pos53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %60, i64 %idxprom52
  store i32 %57, i32* %arrayidx54, align 4
  br label %if.end.145

if.else:                                          ; preds = %land.lhs.true.42, %land.lhs.true, %sw.bb
  %61 = load i32, i32* %sc, align 4
  %62 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %62 to i64
  %63 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %63 to i64
  %64 = load i32**, i32*** %imx, align 8
  %arrayidx57 = getelementptr inbounds i32*, i32** %64, i64 %idxprom56
  %65 = load i32*, i32** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %65, i64 %idxprom55
  %66 = load i32, i32* %arrayidx58, align 4
  %67 = load i32, i32* %k, align 4
  %add59 = add nsw i32 %67, 1
  %idxprom60 = sext i32 %add59 to i64
  %68 = load i32, i32* %i, align 4
  %add61 = add nsw i32 %68, 1
  %idxprom62 = sext i32 %add61 to i64
  %69 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %mmx63 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %69, i32 0, i32 1
  %70 = load i32**, i32*** %mmx63, align 8
  %arrayidx64 = getelementptr inbounds i32*, i32** %70, i64 %idxprom62
  %71 = load i32*, i32** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %71, i64 %idxprom60
  %72 = load i32, i32* %arrayidx65, align 4
  %call66 = call i32 @ILogsum(i32 %66, i32 %72)
  %cmp67 = icmp eq i32 %61, %call66
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.86

land.lhs.true.69:                                 ; preds = %if.else
  %73 = load i32, i32* %i, align 4
  %cmp70 = icmp sgt i32 %73, 0
  br i1 %cmp70, label %land.lhs.true.72, label %if.else.86

land.lhs.true.72:                                 ; preds = %land.lhs.true.69
  %74 = load i32, i32* %k, align 4
  %cmp73 = icmp sgt i32 %74, 0
  br i1 %cmp73, label %if.then.75, label %if.else.86

if.then.75:                                       ; preds = %land.lhs.true.72
  %75 = load i32, i32* %tpos, align 4
  %idxprom76 = sext i32 %75 to i64
  %76 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype77 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %76, i32 0, i32 1
  %77 = load i8*, i8** %statetype77, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %77, i64 %idxprom76
  store i8 3, i8* %arrayidx78, align 1
  %78 = load i32, i32* %k, align 4
  %79 = load i32, i32* %tpos, align 4
  %idxprom79 = sext i32 %79 to i64
  %80 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx80 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %80, i32 0, i32 2
  %81 = load i32*, i32** %nodeidx80, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %81, i64 %idxprom79
  store i32 %78, i32* %arrayidx81, align 4
  %82 = load i32, i32* %i, align 4
  %dec82 = add nsw i32 %82, -1
  store i32 %dec82, i32* %i, align 4
  %83 = load i32, i32* %tpos, align 4
  %idxprom83 = sext i32 %83 to i64
  %84 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos84 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %84, i32 0, i32 3
  %85 = load i32*, i32** %pos84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %85, i64 %idxprom83
  store i32 %82, i32* %arrayidx85, align 4
  br label %if.end.144

if.else.86:                                       ; preds = %land.lhs.true.72, %land.lhs.true.69, %if.else
  %86 = load i32, i32* %sc, align 4
  %87 = load i32, i32* %k, align 4
  %idxprom87 = sext i32 %87 to i64
  %88 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %88 to i64
  %89 = load i32**, i32*** %dmx, align 8
  %arrayidx89 = getelementptr inbounds i32*, i32** %89, i64 %idxprom88
  %90 = load i32*, i32** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %90, i64 %idxprom87
  %91 = load i32, i32* %arrayidx90, align 4
  %92 = load i32, i32* %k, align 4
  %add91 = add nsw i32 %92, 1
  %idxprom92 = sext i32 %add91 to i64
  %93 = load i32, i32* %i, align 4
  %add93 = add nsw i32 %93, 1
  %idxprom94 = sext i32 %add93 to i64
  %94 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %mmx95 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %94, i32 0, i32 1
  %95 = load i32**, i32*** %mmx95, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %95, i64 %idxprom94
  %96 = load i32*, i32** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %96, i64 %idxprom92
  %97 = load i32, i32* %arrayidx97, align 4
  %call98 = call i32 @ILogsum(i32 %91, i32 %97)
  %cmp99 = icmp eq i32 %86, %call98
  br i1 %cmp99, label %land.lhs.true.101, label %if.else.118

land.lhs.true.101:                                ; preds = %if.else.86
  %98 = load i32, i32* %i, align 4
  %cmp102 = icmp sgt i32 %98, 0
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.118

land.lhs.true.104:                                ; preds = %land.lhs.true.101
  %99 = load i32, i32* %k, align 4
  %cmp105 = icmp sgt i32 %99, 1
  br i1 %cmp105, label %if.then.107, label %if.else.118

if.then.107:                                      ; preds = %land.lhs.true.104
  %100 = load i32, i32* %tpos, align 4
  %idxprom108 = sext i32 %100 to i64
  %101 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype109 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %101, i32 0, i32 1
  %102 = load i8*, i8** %statetype109, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %102, i64 %idxprom108
  store i8 2, i8* %arrayidx110, align 1
  %103 = load i32, i32* %k, align 4
  %dec111 = add nsw i32 %103, -1
  store i32 %dec111, i32* %k, align 4
  %104 = load i32, i32* %tpos, align 4
  %idxprom112 = sext i32 %104 to i64
  %105 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx113 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %105, i32 0, i32 2
  %106 = load i32*, i32** %nodeidx113, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %106, i64 %idxprom112
  store i32 %103, i32* %arrayidx114, align 4
  %107 = load i32, i32* %tpos, align 4
  %idxprom115 = sext i32 %107 to i64
  %108 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos116 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %108, i32 0, i32 3
  %109 = load i32*, i32** %pos116, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %109, i64 %idxprom115
  store i32 0, i32* %arrayidx117, align 4
  br label %if.end.143

if.else.118:                                      ; preds = %land.lhs.true.104, %land.lhs.true.101, %if.else.86
  %110 = load i32, i32* %sc, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %111 to i64
  %112 = load i32**, i32*** %xmx, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %112, i64 %idxprom119
  %113 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %113, i64 0
  %114 = load i32, i32* %arrayidx121, align 4
  %115 = load i32, i32* %k, align 4
  %add122 = add nsw i32 %115, 1
  %idxprom123 = sext i32 %add122 to i64
  %116 = load i32, i32* %i, align 4
  %add124 = add nsw i32 %116, 1
  %idxprom125 = sext i32 %add124 to i64
  %117 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %mmx126 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %117, i32 0, i32 1
  %118 = load i32**, i32*** %mmx126, align 8
  %arrayidx127 = getelementptr inbounds i32*, i32** %118, i64 %idxprom125
  %119 = load i32*, i32** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %119, i64 %idxprom123
  %120 = load i32, i32* %arrayidx128, align 4
  %call129 = call i32 @ILogsum(i32 %114, i32 %120)
  %cmp130 = icmp eq i32 %110, %call129
  br i1 %cmp130, label %if.then.132, label %if.else.142

if.then.132:                                      ; preds = %if.else.118
  %121 = load i32, i32* %tpos, align 4
  %idxprom133 = sext i32 %121 to i64
  %122 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype134 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %122, i32 0, i32 1
  %123 = load i8*, i8** %statetype134, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %123, i64 %idxprom133
  store i8 6, i8* %arrayidx135, align 1
  %124 = load i32, i32* %tpos, align 4
  %idxprom136 = sext i32 %124 to i64
  %125 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx137 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %125, i32 0, i32 2
  %126 = load i32*, i32** %nodeidx137, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %126, i64 %idxprom136
  store i32 0, i32* %arrayidx138, align 4
  %127 = load i32, i32* %tpos, align 4
  %idxprom139 = sext i32 %127 to i64
  %128 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos140 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %128, i32 0, i32 3
  %129 = load i32*, i32** %pos140, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %129, i64 %idxprom139
  store i32 0, i32* %arrayidx141, align 4
  br label %if.end

if.else.142:                                      ; preds = %if.else.118
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.142, %if.then.132
  br label %if.end.143

if.end.143:                                       ; preds = %if.end, %if.then.107
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.75
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then
  br label %sw.epilog

sw.bb.146:                                        ; preds = %while.body
  %130 = load i32, i32* %k, align 4
  %add147 = add nsw i32 %130, 1
  %idxprom148 = sext i32 %add147 to i64
  %131 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %131 to i64
  %132 = load i32**, i32*** %dmx, align 8
  %arrayidx150 = getelementptr inbounds i32*, i32** %132, i64 %idxprom149
  %133 = load i32*, i32** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %133, i64 %idxprom148
  %134 = load i32, i32* %arrayidx151, align 4
  %135 = load i32, i32* %k, align 4
  %idxprom152 = sext i32 %135 to i64
  %136 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %136 to i64
  %137 = load i32**, i32*** %mmx, align 8
  %arrayidx154 = getelementptr inbounds i32*, i32** %137, i64 %idxprom153
  %138 = load i32*, i32** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %138, i64 %idxprom152
  %139 = load i32, i32* %arrayidx155, align 4
  %cmp156 = icmp eq i32 %134, %139
  br i1 %cmp156, label %land.lhs.true.158, label %if.else.176

land.lhs.true.158:                                ; preds = %sw.bb.146
  %140 = load i32, i32* %i, align 4
  %cmp159 = icmp sgt i32 %140, 0
  br i1 %cmp159, label %land.lhs.true.161, label %if.else.176

land.lhs.true.161:                                ; preds = %land.lhs.true.158
  %141 = load i32, i32* %k, align 4
  %cmp162 = icmp sgt i32 %141, 0
  br i1 %cmp162, label %if.then.164, label %if.else.176

if.then.164:                                      ; preds = %land.lhs.true.161
  %142 = load i32, i32* %tpos, align 4
  %idxprom165 = sext i32 %142 to i64
  %143 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype166 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %143, i32 0, i32 1
  %144 = load i8*, i8** %statetype166, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %144, i64 %idxprom165
  store i8 1, i8* %arrayidx167, align 1
  %145 = load i32, i32* %k, align 4
  %dec168 = add nsw i32 %145, -1
  store i32 %dec168, i32* %k, align 4
  %146 = load i32, i32* %tpos, align 4
  %idxprom169 = sext i32 %146 to i64
  %147 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx170 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %147, i32 0, i32 2
  %148 = load i32*, i32** %nodeidx170, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %148, i64 %idxprom169
  store i32 %145, i32* %arrayidx171, align 4
  %149 = load i32, i32* %i, align 4
  %dec172 = add nsw i32 %149, -1
  store i32 %dec172, i32* %i, align 4
  %150 = load i32, i32* %tpos, align 4
  %idxprom173 = sext i32 %150 to i64
  %151 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos174 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %151, i32 0, i32 3
  %152 = load i32*, i32** %pos174, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %152, i64 %idxprom173
  store i32 %149, i32* %arrayidx175, align 4
  br label %if.end.204

if.else.176:                                      ; preds = %land.lhs.true.161, %land.lhs.true.158, %sw.bb.146
  %153 = load i32, i32* %k, align 4
  %add177 = add nsw i32 %153, 1
  %idxprom178 = sext i32 %add177 to i64
  %154 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %154 to i64
  %155 = load i32**, i32*** %dmx, align 8
  %arrayidx180 = getelementptr inbounds i32*, i32** %155, i64 %idxprom179
  %156 = load i32*, i32** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %156, i64 %idxprom178
  %157 = load i32, i32* %arrayidx181, align 4
  %158 = load i32, i32* %k, align 4
  %idxprom182 = sext i32 %158 to i64
  %159 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %159 to i64
  %160 = load i32**, i32*** %dmx, align 8
  %arrayidx184 = getelementptr inbounds i32*, i32** %160, i64 %idxprom183
  %161 = load i32*, i32** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %161, i64 %idxprom182
  %162 = load i32, i32* %arrayidx185, align 4
  %cmp186 = icmp eq i32 %157, %162
  br i1 %cmp186, label %land.lhs.true.188, label %if.else.202

land.lhs.true.188:                                ; preds = %if.else.176
  %163 = load i32, i32* %k, align 4
  %cmp189 = icmp sgt i32 %163, 1
  br i1 %cmp189, label %if.then.191, label %if.else.202

if.then.191:                                      ; preds = %land.lhs.true.188
  %164 = load i32, i32* %tpos, align 4
  %idxprom192 = sext i32 %164 to i64
  %165 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype193 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %165, i32 0, i32 1
  %166 = load i8*, i8** %statetype193, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %166, i64 %idxprom192
  store i8 2, i8* %arrayidx194, align 1
  %167 = load i32, i32* %k, align 4
  %dec195 = add nsw i32 %167, -1
  store i32 %dec195, i32* %k, align 4
  %168 = load i32, i32* %tpos, align 4
  %idxprom196 = sext i32 %168 to i64
  %169 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx197 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %169, i32 0, i32 2
  %170 = load i32*, i32** %nodeidx197, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %170, i64 %idxprom196
  store i32 %167, i32* %arrayidx198, align 4
  %171 = load i32, i32* %tpos, align 4
  %idxprom199 = sext i32 %171 to i64
  %172 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos200 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %172, i32 0, i32 3
  %173 = load i32*, i32** %pos200, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %173, i64 %idxprom199
  store i32 0, i32* %arrayidx201, align 4
  br label %if.end.203

if.else.202:                                      ; preds = %land.lhs.true.188, %if.else.176
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.202, %if.then.191
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.164
  br label %sw.epilog

sw.bb.205:                                        ; preds = %while.body
  %174 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %174 to i64
  %175 = load i32, i32* %i, align 4
  %add207 = add nsw i32 %175, 1
  %idxprom208 = sext i32 %add207 to i64
  %176 = load i32**, i32*** %imx, align 8
  %arrayidx209 = getelementptr inbounds i32*, i32** %176, i64 %idxprom208
  %177 = load i32*, i32** %arrayidx209, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %177, i64 %idxprom206
  %178 = load i32, i32* %arrayidx210, align 4
  store i32 %178, i32* %sc, align 4
  %179 = load i32, i32* %sc, align 4
  %180 = load i32, i32* %k, align 4
  %idxprom211 = sext i32 %180 to i64
  %181 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %181 to i64
  %182 = load i32**, i32*** %mmx, align 8
  %arrayidx213 = getelementptr inbounds i32*, i32** %182, i64 %idxprom212
  %183 = load i32*, i32** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %183, i64 %idxprom211
  %184 = load i32, i32* %arrayidx214, align 4
  %185 = load i32, i32* %k, align 4
  %idxprom215 = sext i32 %185 to i64
  %186 = load i32, i32* %i, align 4
  %add216 = add nsw i32 %186, 1
  %idxprom217 = sext i32 %add216 to i64
  %187 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %imx218 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %187, i32 0, i32 2
  %188 = load i32**, i32*** %imx218, align 8
  %arrayidx219 = getelementptr inbounds i32*, i32** %188, i64 %idxprom217
  %189 = load i32*, i32** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %189, i64 %idxprom215
  %190 = load i32, i32* %arrayidx220, align 4
  %call221 = call i32 @ILogsum(i32 %184, i32 %190)
  %cmp222 = icmp eq i32 %179, %call221
  br i1 %cmp222, label %land.lhs.true.224, label %if.else.242

land.lhs.true.224:                                ; preds = %sw.bb.205
  %191 = load i32, i32* %i, align 4
  %cmp225 = icmp sgt i32 %191, 0
  br i1 %cmp225, label %land.lhs.true.227, label %if.else.242

land.lhs.true.227:                                ; preds = %land.lhs.true.224
  %192 = load i32, i32* %k, align 4
  %cmp228 = icmp sgt i32 %192, 0
  br i1 %cmp228, label %if.then.230, label %if.else.242

if.then.230:                                      ; preds = %land.lhs.true.227
  %193 = load i32, i32* %tpos, align 4
  %idxprom231 = sext i32 %193 to i64
  %194 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype232 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %194, i32 0, i32 1
  %195 = load i8*, i8** %statetype232, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %195, i64 %idxprom231
  store i8 1, i8* %arrayidx233, align 1
  %196 = load i32, i32* %k, align 4
  %dec234 = add nsw i32 %196, -1
  store i32 %dec234, i32* %k, align 4
  %197 = load i32, i32* %tpos, align 4
  %idxprom235 = sext i32 %197 to i64
  %198 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx236 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %198, i32 0, i32 2
  %199 = load i32*, i32** %nodeidx236, align 8
  %arrayidx237 = getelementptr inbounds i32, i32* %199, i64 %idxprom235
  store i32 %196, i32* %arrayidx237, align 4
  %200 = load i32, i32* %i, align 4
  %dec238 = add nsw i32 %200, -1
  store i32 %dec238, i32* %i, align 4
  %201 = load i32, i32* %tpos, align 4
  %idxprom239 = sext i32 %201 to i64
  %202 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos240 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %202, i32 0, i32 3
  %203 = load i32*, i32** %pos240, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %203, i64 %idxprom239
  store i32 %200, i32* %arrayidx241, align 4
  br label %if.end.275

if.else.242:                                      ; preds = %land.lhs.true.227, %land.lhs.true.224, %sw.bb.205
  %204 = load i32, i32* %sc, align 4
  %205 = load i32, i32* %k, align 4
  %idxprom243 = sext i32 %205 to i64
  %206 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %206 to i64
  %207 = load i32**, i32*** %imx, align 8
  %arrayidx245 = getelementptr inbounds i32*, i32** %207, i64 %idxprom244
  %208 = load i32*, i32** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds i32, i32* %208, i64 %idxprom243
  %209 = load i32, i32* %arrayidx246, align 4
  %210 = load i32, i32* %k, align 4
  %idxprom247 = sext i32 %210 to i64
  %211 = load i32, i32* %i, align 4
  %add248 = add nsw i32 %211, 1
  %idxprom249 = sext i32 %add248 to i64
  %212 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %imx250 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %212, i32 0, i32 2
  %213 = load i32**, i32*** %imx250, align 8
  %arrayidx251 = getelementptr inbounds i32*, i32** %213, i64 %idxprom249
  %214 = load i32*, i32** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %214, i64 %idxprom247
  %215 = load i32, i32* %arrayidx252, align 4
  %call253 = call i32 @ILogsum(i32 %209, i32 %215)
  %cmp254 = icmp eq i32 %204, %call253
  br i1 %cmp254, label %land.lhs.true.256, label %if.else.273

land.lhs.true.256:                                ; preds = %if.else.242
  %216 = load i32, i32* %i, align 4
  %cmp257 = icmp sgt i32 %216, 0
  br i1 %cmp257, label %land.lhs.true.259, label %if.else.273

land.lhs.true.259:                                ; preds = %land.lhs.true.256
  %217 = load i32, i32* %k, align 4
  %cmp260 = icmp sgt i32 %217, 0
  br i1 %cmp260, label %if.then.262, label %if.else.273

if.then.262:                                      ; preds = %land.lhs.true.259
  %218 = load i32, i32* %tpos, align 4
  %idxprom263 = sext i32 %218 to i64
  %219 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype264 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %219, i32 0, i32 1
  %220 = load i8*, i8** %statetype264, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %220, i64 %idxprom263
  store i8 3, i8* %arrayidx265, align 1
  %221 = load i32, i32* %k, align 4
  %222 = load i32, i32* %tpos, align 4
  %idxprom266 = sext i32 %222 to i64
  %223 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx267 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %223, i32 0, i32 2
  %224 = load i32*, i32** %nodeidx267, align 8
  %arrayidx268 = getelementptr inbounds i32, i32* %224, i64 %idxprom266
  store i32 %221, i32* %arrayidx268, align 4
  %225 = load i32, i32* %i, align 4
  %dec269 = add nsw i32 %225, -1
  store i32 %dec269, i32* %i, align 4
  %226 = load i32, i32* %tpos, align 4
  %idxprom270 = sext i32 %226 to i64
  %227 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos271 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %227, i32 0, i32 3
  %228 = load i32*, i32** %pos271, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %228, i64 %idxprom270
  store i32 %225, i32* %arrayidx272, align 4
  br label %if.end.274

if.else.273:                                      ; preds = %land.lhs.true.259, %land.lhs.true.256, %if.else.242
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.273, %if.then.262
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.then.230
  br label %sw.epilog

sw.bb.276:                                        ; preds = %while.body
  %229 = load i32, i32* %i, align 4
  %cmp277 = icmp eq i32 %229, 0
  br i1 %cmp277, label %land.lhs.true.279, label %if.else.295

land.lhs.true.279:                                ; preds = %sw.bb.276
  %230 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %230 to i64
  %231 = load i32**, i32*** %xmx, align 8
  %arrayidx281 = getelementptr inbounds i32*, i32** %231, i64 %idxprom280
  %232 = load i32*, i32** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %232, i64 4
  %233 = load i32, i32* %arrayidx282, align 4
  %cmp283 = icmp eq i32 %233, -987654321
  br i1 %cmp283, label %if.then.285, label %if.else.295

if.then.285:                                      ; preds = %land.lhs.true.279
  %234 = load i32, i32* %tpos, align 4
  %idxprom286 = sext i32 %234 to i64
  %235 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype287 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %235, i32 0, i32 1
  %236 = load i8*, i8** %statetype287, align 8
  %arrayidx288 = getelementptr inbounds i8, i8* %236, i64 %idxprom286
  store i8 4, i8* %arrayidx288, align 1
  %237 = load i32, i32* %tpos, align 4
  %idxprom289 = sext i32 %237 to i64
  %238 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx290 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %238, i32 0, i32 2
  %239 = load i32*, i32** %nodeidx290, align 8
  %arrayidx291 = getelementptr inbounds i32, i32* %239, i64 %idxprom289
  store i32 0, i32* %arrayidx291, align 4
  %240 = load i32, i32* %tpos, align 4
  %idxprom292 = sext i32 %240 to i64
  %241 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos293 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %241, i32 0, i32 3
  %242 = load i32*, i32** %pos293, align 8
  %arrayidx294 = getelementptr inbounds i32, i32* %242, i64 %idxprom292
  store i32 0, i32* %arrayidx294, align 4
  br label %if.end.334

if.else.295:                                      ; preds = %land.lhs.true.279, %sw.bb.276
  %243 = load i32, i32* %i, align 4
  %cmp296 = icmp sgt i32 %243, 0
  br i1 %cmp296, label %land.lhs.true.298, label %if.else.332

land.lhs.true.298:                                ; preds = %if.else.295
  %244 = load i32, i32* %i, align 4
  %add299 = add nsw i32 %244, 1
  %idxprom300 = sext i32 %add299 to i64
  %245 = load i32**, i32*** %xmx, align 8
  %arrayidx301 = getelementptr inbounds i32*, i32** %245, i64 %idxprom300
  %246 = load i32*, i32** %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %246, i64 4
  %247 = load i32, i32* %arrayidx302, align 4
  %248 = load i32, i32* %i, align 4
  %idxprom303 = sext i32 %248 to i64
  %249 = load i32**, i32*** %xmx, align 8
  %arrayidx304 = getelementptr inbounds i32*, i32** %249, i64 %idxprom303
  %250 = load i32*, i32** %arrayidx304, align 8
  %arrayidx305 = getelementptr inbounds i32, i32* %250, i64 4
  %251 = load i32, i32* %arrayidx305, align 4
  %252 = load i32, i32* %i, align 4
  %add306 = add nsw i32 %252, 1
  %idxprom307 = sext i32 %add306 to i64
  %253 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %xmx308 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %253, i32 0, i32 0
  %254 = load i32**, i32*** %xmx308, align 8
  %arrayidx309 = getelementptr inbounds i32*, i32** %254, i64 %idxprom307
  %255 = load i32*, i32** %arrayidx309, align 8
  %arrayidx310 = getelementptr inbounds i32, i32* %255, i64 4
  %256 = load i32, i32* %arrayidx310, align 4
  %call311 = call i32 @ILogsum(i32 %251, i32 %256)
  %cmp312 = icmp eq i32 %247, %call311
  br i1 %cmp312, label %land.lhs.true.314, label %if.else.332

land.lhs.true.314:                                ; preds = %land.lhs.true.298
  %257 = load i32, i32* %i, align 4
  %cmp315 = icmp sgt i32 %257, 0
  br i1 %cmp315, label %if.then.317, label %if.else.332

if.then.317:                                      ; preds = %land.lhs.true.314
  %258 = load i32, i32* %tpos, align 4
  %idxprom318 = sext i32 %258 to i64
  %259 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype319 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %259, i32 0, i32 1
  %260 = load i8*, i8** %statetype319, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %260, i64 %idxprom318
  store i8 5, i8* %arrayidx320, align 1
  %261 = load i32, i32* %tpos, align 4
  %idxprom321 = sext i32 %261 to i64
  %262 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx322 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %262, i32 0, i32 2
  %263 = load i32*, i32** %nodeidx322, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %263, i64 %idxprom321
  store i32 0, i32* %arrayidx323, align 4
  %264 = load i32, i32* %tpos, align 4
  %idxprom324 = sext i32 %264 to i64
  %265 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos325 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %265, i32 0, i32 3
  %266 = load i32*, i32** %pos325, align 8
  %arrayidx326 = getelementptr inbounds i32, i32* %266, i64 %idxprom324
  store i32 0, i32* %arrayidx326, align 4
  %267 = load i32, i32* %i, align 4
  %dec327 = add nsw i32 %267, -1
  store i32 %dec327, i32* %i, align 4
  %268 = load i32, i32* %tpos, align 4
  %sub328 = sub nsw i32 %268, 1
  %idxprom329 = sext i32 %sub328 to i64
  %269 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos330 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %269, i32 0, i32 3
  %270 = load i32*, i32** %pos330, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %270, i64 %idxprom329
  store i32 %267, i32* %arrayidx331, align 4
  br label %if.end.333

if.else.332:                                      ; preds = %land.lhs.true.314, %land.lhs.true.298, %if.else.295
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.332, %if.then.317
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.then.285
  br label %sw.epilog

sw.bb.335:                                        ; preds = %while.body
  %271 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %271 to i64
  %272 = load i32**, i32*** %xmx, align 8
  %arrayidx337 = getelementptr inbounds i32*, i32** %272, i64 %idxprom336
  %273 = load i32*, i32** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %273, i64 0
  %274 = load i32, i32* %arrayidx338, align 4
  %275 = load i32, i32* %i, align 4
  %idxprom339 = sext i32 %275 to i64
  %276 = load i32**, i32*** %xmx, align 8
  %arrayidx340 = getelementptr inbounds i32*, i32** %276, i64 %idxprom339
  %277 = load i32*, i32** %arrayidx340, align 8
  %arrayidx341 = getelementptr inbounds i32, i32* %277, i64 4
  %278 = load i32, i32* %arrayidx341, align 4
  %cmp342 = icmp eq i32 %274, %278
  br i1 %cmp342, label %if.then.344, label %if.else.354

if.then.344:                                      ; preds = %sw.bb.335
  %279 = load i32, i32* %tpos, align 4
  %idxprom345 = sext i32 %279 to i64
  %280 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype346 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %280, i32 0, i32 1
  %281 = load i8*, i8** %statetype346, align 8
  %arrayidx347 = getelementptr inbounds i8, i8* %281, i64 %idxprom345
  store i8 5, i8* %arrayidx347, align 1
  %282 = load i32, i32* %tpos, align 4
  %idxprom348 = sext i32 %282 to i64
  %283 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx349 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %283, i32 0, i32 2
  %284 = load i32*, i32** %nodeidx349, align 8
  %arrayidx350 = getelementptr inbounds i32, i32* %284, i64 %idxprom348
  store i32 0, i32* %arrayidx350, align 4
  %285 = load i32, i32* %tpos, align 4
  %idxprom351 = sext i32 %285 to i64
  %286 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos352 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %286, i32 0, i32 3
  %287 = load i32*, i32** %pos352, align 8
  %arrayidx353 = getelementptr inbounds i32, i32* %287, i64 %idxprom351
  store i32 0, i32* %arrayidx353, align 4
  br label %if.end.375

if.else.354:                                      ; preds = %sw.bb.335
  %288 = load i32, i32* %i, align 4
  %idxprom355 = sext i32 %288 to i64
  %289 = load i32**, i32*** %xmx, align 8
  %arrayidx356 = getelementptr inbounds i32*, i32** %289, i64 %idxprom355
  %290 = load i32*, i32** %arrayidx356, align 8
  %arrayidx357 = getelementptr inbounds i32, i32* %290, i64 0
  %291 = load i32, i32* %arrayidx357, align 4
  %292 = load i32, i32* %i, align 4
  %idxprom358 = sext i32 %292 to i64
  %293 = load i32**, i32*** %xmx, align 8
  %arrayidx359 = getelementptr inbounds i32*, i32** %293, i64 %idxprom358
  %294 = load i32*, i32** %arrayidx359, align 8
  %arrayidx360 = getelementptr inbounds i32, i32* %294, i64 3
  %295 = load i32, i32* %arrayidx360, align 4
  %cmp361 = icmp eq i32 %291, %295
  br i1 %cmp361, label %if.then.363, label %if.else.373

if.then.363:                                      ; preds = %if.else.354
  %296 = load i32, i32* %tpos, align 4
  %idxprom364 = sext i32 %296 to i64
  %297 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype365 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %297, i32 0, i32 1
  %298 = load i8*, i8** %statetype365, align 8
  %arrayidx366 = getelementptr inbounds i8, i8* %298, i64 %idxprom364
  store i8 10, i8* %arrayidx366, align 1
  %299 = load i32, i32* %tpos, align 4
  %idxprom367 = sext i32 %299 to i64
  %300 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx368 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %300, i32 0, i32 2
  %301 = load i32*, i32** %nodeidx368, align 8
  %arrayidx369 = getelementptr inbounds i32, i32* %301, i64 %idxprom367
  store i32 0, i32* %arrayidx369, align 4
  %302 = load i32, i32* %tpos, align 4
  %idxprom370 = sext i32 %302 to i64
  %303 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos371 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %303, i32 0, i32 3
  %304 = load i32*, i32** %pos371, align 8
  %arrayidx372 = getelementptr inbounds i32, i32* %304, i64 %idxprom370
  store i32 0, i32* %arrayidx372, align 4
  br label %if.end.374

if.else.373:                                      ; preds = %if.else.354
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %if.end.374

if.end.374:                                       ; preds = %if.else.373, %if.then.363
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %if.then.344
  br label %sw.epilog

sw.bb.376:                                        ; preds = %while.body
  %305 = load i32, i32* %M.addr, align 4
  store i32 %305, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.376
  %306 = load i32, i32* %k, align 4
  %cmp377 = icmp sge i32 %306, 1
  br i1 %cmp377, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %307 = load i32, i32* %i, align 4
  %idxprom379 = sext i32 %307 to i64
  %308 = load i32**, i32*** %xmx, align 8
  %arrayidx380 = getelementptr inbounds i32*, i32** %308, i64 %idxprom379
  %309 = load i32*, i32** %arrayidx380, align 8
  %arrayidx381 = getelementptr inbounds i32, i32* %309, i64 1
  %310 = load i32, i32* %arrayidx381, align 4
  %311 = load i32, i32* %k, align 4
  %idxprom382 = sext i32 %311 to i64
  %312 = load i32, i32* %i, align 4
  %idxprom383 = sext i32 %312 to i64
  %313 = load i32**, i32*** %mmx, align 8
  %arrayidx384 = getelementptr inbounds i32*, i32** %313, i64 %idxprom383
  %314 = load i32*, i32** %arrayidx384, align 8
  %arrayidx385 = getelementptr inbounds i32, i32* %314, i64 %idxprom382
  %315 = load i32, i32* %arrayidx385, align 4
  %cmp386 = icmp eq i32 %310, %315
  br i1 %cmp386, label %land.lhs.true.388, label %if.end.403

land.lhs.true.388:                                ; preds = %for.body
  %316 = load i32, i32* %i, align 4
  %cmp389 = icmp sgt i32 %316, 0
  br i1 %cmp389, label %if.then.391, label %if.end.403

if.then.391:                                      ; preds = %land.lhs.true.388
  %317 = load i32, i32* %tpos, align 4
  %idxprom392 = sext i32 %317 to i64
  %318 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype393 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %318, i32 0, i32 1
  %319 = load i8*, i8** %statetype393, align 8
  %arrayidx394 = getelementptr inbounds i8, i8* %319, i64 %idxprom392
  store i8 1, i8* %arrayidx394, align 1
  %320 = load i32, i32* %k, align 4
  %dec395 = add nsw i32 %320, -1
  store i32 %dec395, i32* %k, align 4
  %321 = load i32, i32* %tpos, align 4
  %idxprom396 = sext i32 %321 to i64
  %322 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx397 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %322, i32 0, i32 2
  %323 = load i32*, i32** %nodeidx397, align 8
  %arrayidx398 = getelementptr inbounds i32, i32* %323, i64 %idxprom396
  store i32 %320, i32* %arrayidx398, align 4
  %324 = load i32, i32* %i, align 4
  %dec399 = add nsw i32 %324, -1
  store i32 %dec399, i32* %i, align 4
  %325 = load i32, i32* %tpos, align 4
  %idxprom400 = sext i32 %325 to i64
  %326 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos401 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %326, i32 0, i32 3
  %327 = load i32*, i32** %pos401, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %327, i64 %idxprom400
  store i32 %324, i32* %arrayidx402, align 4
  br label %for.end

if.end.403:                                       ; preds = %land.lhs.true.388, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.403
  %328 = load i32, i32* %k, align 4
  %dec404 = add nsw i32 %328, -1
  store i32 %dec404, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.391, %for.cond
  %329 = load i32, i32* %k, align 4
  %cmp405 = icmp sle i32 %329, 0
  br i1 %cmp405, label %if.then.407, label %if.end.408

if.then.407:                                      ; preds = %for.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.407, %for.end
  br label %sw.epilog

sw.bb.409:                                        ; preds = %while.body
  %330 = load i32, i32* %i, align 4
  %idxprom410 = sext i32 %330 to i64
  %331 = load i32**, i32*** %xmx, align 8
  %arrayidx411 = getelementptr inbounds i32*, i32** %331, i64 %idxprom410
  %332 = load i32*, i32** %arrayidx411, align 8
  %arrayidx412 = getelementptr inbounds i32, i32* %332, i64 2
  %333 = load i32, i32* %arrayidx412, align 4
  %334 = load i32, i32* %i, align 4
  %sub413 = sub nsw i32 %334, 1
  %idxprom414 = sext i32 %sub413 to i64
  %335 = load i32**, i32*** %xmx, align 8
  %arrayidx415 = getelementptr inbounds i32*, i32** %335, i64 %idxprom414
  %336 = load i32*, i32** %arrayidx415, align 8
  %arrayidx416 = getelementptr inbounds i32, i32* %336, i64 2
  %337 = load i32, i32* %arrayidx416, align 4
  %338 = load i32, i32* %i, align 4
  %idxprom417 = sext i32 %338 to i64
  %339 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %xmx418 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %339, i32 0, i32 0
  %340 = load i32**, i32*** %xmx418, align 8
  %arrayidx419 = getelementptr inbounds i32*, i32** %340, i64 %idxprom417
  %341 = load i32*, i32** %arrayidx419, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %341, i64 2
  %342 = load i32, i32* %arrayidx420, align 4
  %call421 = call i32 @ILogsum(i32 %337, i32 %342)
  %cmp422 = icmp eq i32 %333, %call421
  br i1 %cmp422, label %land.lhs.true.424, label %if.else.442

land.lhs.true.424:                                ; preds = %sw.bb.409
  %343 = load i32, i32* %i, align 4
  %cmp425 = icmp sgt i32 %343, 0
  br i1 %cmp425, label %if.then.427, label %if.else.442

if.then.427:                                      ; preds = %land.lhs.true.424
  %344 = load i32, i32* %tpos, align 4
  %idxprom428 = sext i32 %344 to i64
  %345 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype429 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %345, i32 0, i32 1
  %346 = load i8*, i8** %statetype429, align 8
  %arrayidx430 = getelementptr inbounds i8, i8* %346, i64 %idxprom428
  store i8 8, i8* %arrayidx430, align 1
  %347 = load i32, i32* %tpos, align 4
  %idxprom431 = sext i32 %347 to i64
  %348 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx432 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %348, i32 0, i32 2
  %349 = load i32*, i32** %nodeidx432, align 8
  %arrayidx433 = getelementptr inbounds i32, i32* %349, i64 %idxprom431
  store i32 0, i32* %arrayidx433, align 4
  %350 = load i32, i32* %tpos, align 4
  %idxprom434 = sext i32 %350 to i64
  %351 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos435 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %351, i32 0, i32 3
  %352 = load i32*, i32** %pos435, align 8
  %arrayidx436 = getelementptr inbounds i32, i32* %352, i64 %idxprom434
  store i32 0, i32* %arrayidx436, align 4
  %353 = load i32, i32* %i, align 4
  %dec437 = add nsw i32 %353, -1
  store i32 %dec437, i32* %i, align 4
  %354 = load i32, i32* %tpos, align 4
  %sub438 = sub nsw i32 %354, 1
  %idxprom439 = sext i32 %sub438 to i64
  %355 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos440 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %355, i32 0, i32 3
  %356 = load i32*, i32** %pos440, align 8
  %arrayidx441 = getelementptr inbounds i32, i32* %356, i64 %idxprom439
  store i32 %353, i32* %arrayidx441, align 4
  br label %if.end.463

if.else.442:                                      ; preds = %land.lhs.true.424, %sw.bb.409
  %357 = load i32, i32* %i, align 4
  %idxprom443 = sext i32 %357 to i64
  %358 = load i32**, i32*** %xmx, align 8
  %arrayidx444 = getelementptr inbounds i32*, i32** %358, i64 %idxprom443
  %359 = load i32*, i32** %arrayidx444, align 8
  %arrayidx445 = getelementptr inbounds i32, i32* %359, i64 2
  %360 = load i32, i32* %arrayidx445, align 4
  %361 = load i32, i32* %i, align 4
  %idxprom446 = sext i32 %361 to i64
  %362 = load i32**, i32*** %xmx, align 8
  %arrayidx447 = getelementptr inbounds i32*, i32** %362, i64 %idxprom446
  %363 = load i32*, i32** %arrayidx447, align 8
  %arrayidx448 = getelementptr inbounds i32, i32* %363, i64 1
  %364 = load i32, i32* %arrayidx448, align 4
  %cmp449 = icmp eq i32 %360, %364
  br i1 %cmp449, label %if.then.451, label %if.else.461

if.then.451:                                      ; preds = %if.else.442
  %365 = load i32, i32* %tpos, align 4
  %idxprom452 = sext i32 %365 to i64
  %366 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype453 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %366, i32 0, i32 1
  %367 = load i8*, i8** %statetype453, align 8
  %arrayidx454 = getelementptr inbounds i8, i8* %367, i64 %idxprom452
  store i8 7, i8* %arrayidx454, align 1
  %368 = load i32, i32* %tpos, align 4
  %idxprom455 = sext i32 %368 to i64
  %369 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx456 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %369, i32 0, i32 2
  %370 = load i32*, i32** %nodeidx456, align 8
  %arrayidx457 = getelementptr inbounds i32, i32* %370, i64 %idxprom455
  store i32 0, i32* %arrayidx457, align 4
  %371 = load i32, i32* %tpos, align 4
  %idxprom458 = sext i32 %371 to i64
  %372 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos459 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %372, i32 0, i32 3
  %373 = load i32*, i32** %pos459, align 8
  %arrayidx460 = getelementptr inbounds i32, i32* %373, i64 %idxprom458
  store i32 0, i32* %arrayidx460, align 4
  br label %if.end.462

if.else.461:                                      ; preds = %if.else.442
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.462

if.end.462:                                       ; preds = %if.else.461, %if.then.451
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462, %if.then.427
  br label %sw.epilog

sw.bb.464:                                        ; preds = %while.body
  %374 = load i32, i32* %i, align 4
  %idxprom465 = sext i32 %374 to i64
  %375 = load i32**, i32*** %xmx, align 8
  %arrayidx466 = getelementptr inbounds i32*, i32** %375, i64 %idxprom465
  %376 = load i32*, i32** %arrayidx466, align 8
  %arrayidx467 = getelementptr inbounds i32, i32* %376, i64 3
  %377 = load i32, i32* %arrayidx467, align 4
  %378 = load i32, i32* %i, align 4
  %sub468 = sub nsw i32 %378, 1
  %idxprom469 = sext i32 %sub468 to i64
  %379 = load i32**, i32*** %xmx, align 8
  %arrayidx470 = getelementptr inbounds i32*, i32** %379, i64 %idxprom469
  %380 = load i32*, i32** %arrayidx470, align 8
  %arrayidx471 = getelementptr inbounds i32, i32* %380, i64 3
  %381 = load i32, i32* %arrayidx471, align 4
  %382 = load i32, i32* %i, align 4
  %idxprom472 = sext i32 %382 to i64
  %383 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %posterior.addr, align 8
  %xmx473 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %383, i32 0, i32 0
  %384 = load i32**, i32*** %xmx473, align 8
  %arrayidx474 = getelementptr inbounds i32*, i32** %384, i64 %idxprom472
  %385 = load i32*, i32** %arrayidx474, align 8
  %arrayidx475 = getelementptr inbounds i32, i32* %385, i64 3
  %386 = load i32, i32* %arrayidx475, align 4
  %call476 = call i32 @ILogsum(i32 %381, i32 %386)
  %cmp477 = icmp eq i32 %377, %call476
  br i1 %cmp477, label %land.lhs.true.479, label %if.else.497

land.lhs.true.479:                                ; preds = %sw.bb.464
  %387 = load i32, i32* %i, align 4
  %cmp480 = icmp sgt i32 %387, 0
  br i1 %cmp480, label %if.then.482, label %if.else.497

if.then.482:                                      ; preds = %land.lhs.true.479
  %388 = load i32, i32* %tpos, align 4
  %idxprom483 = sext i32 %388 to i64
  %389 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype484 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %389, i32 0, i32 1
  %390 = load i8*, i8** %statetype484, align 8
  %arrayidx485 = getelementptr inbounds i8, i8* %390, i64 %idxprom483
  store i8 10, i8* %arrayidx485, align 1
  %391 = load i32, i32* %tpos, align 4
  %idxprom486 = sext i32 %391 to i64
  %392 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx487 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %392, i32 0, i32 2
  %393 = load i32*, i32** %nodeidx487, align 8
  %arrayidx488 = getelementptr inbounds i32, i32* %393, i64 %idxprom486
  store i32 0, i32* %arrayidx488, align 4
  %394 = load i32, i32* %tpos, align 4
  %idxprom489 = sext i32 %394 to i64
  %395 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos490 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %395, i32 0, i32 3
  %396 = load i32*, i32** %pos490, align 8
  %arrayidx491 = getelementptr inbounds i32, i32* %396, i64 %idxprom489
  store i32 0, i32* %arrayidx491, align 4
  %397 = load i32, i32* %i, align 4
  %dec492 = add nsw i32 %397, -1
  store i32 %dec492, i32* %i, align 4
  %398 = load i32, i32* %tpos, align 4
  %sub493 = sub nsw i32 %398, 1
  %idxprom494 = sext i32 %sub493 to i64
  %399 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos495 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %399, i32 0, i32 3
  %400 = load i32*, i32** %pos495, align 8
  %arrayidx496 = getelementptr inbounds i32, i32* %400, i64 %idxprom494
  store i32 %397, i32* %arrayidx496, align 4
  br label %if.end.518

if.else.497:                                      ; preds = %land.lhs.true.479, %sw.bb.464
  %401 = load i32, i32* %i, align 4
  %idxprom498 = sext i32 %401 to i64
  %402 = load i32**, i32*** %xmx, align 8
  %arrayidx499 = getelementptr inbounds i32*, i32** %402, i64 %idxprom498
  %403 = load i32*, i32** %arrayidx499, align 8
  %arrayidx500 = getelementptr inbounds i32, i32* %403, i64 3
  %404 = load i32, i32* %arrayidx500, align 4
  %405 = load i32, i32* %i, align 4
  %idxprom501 = sext i32 %405 to i64
  %406 = load i32**, i32*** %xmx, align 8
  %arrayidx502 = getelementptr inbounds i32*, i32** %406, i64 %idxprom501
  %407 = load i32*, i32** %arrayidx502, align 8
  %arrayidx503 = getelementptr inbounds i32, i32* %407, i64 1
  %408 = load i32, i32* %arrayidx503, align 4
  %cmp504 = icmp eq i32 %404, %408
  br i1 %cmp504, label %if.then.506, label %if.else.516

if.then.506:                                      ; preds = %if.else.497
  %409 = load i32, i32* %tpos, align 4
  %idxprom507 = sext i32 %409 to i64
  %410 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype508 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %410, i32 0, i32 1
  %411 = load i8*, i8** %statetype508, align 8
  %arrayidx509 = getelementptr inbounds i8, i8* %411, i64 %idxprom507
  store i8 7, i8* %arrayidx509, align 1
  %412 = load i32, i32* %tpos, align 4
  %idxprom510 = sext i32 %412 to i64
  %413 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx511 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %413, i32 0, i32 2
  %414 = load i32*, i32** %nodeidx511, align 8
  %arrayidx512 = getelementptr inbounds i32, i32* %414, i64 %idxprom510
  store i32 0, i32* %arrayidx512, align 4
  %415 = load i32, i32* %tpos, align 4
  %idxprom513 = sext i32 %415 to i64
  %416 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos514 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %416, i32 0, i32 3
  %417 = load i32*, i32** %pos514, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %417, i64 %idxprom513
  store i32 0, i32* %arrayidx515, align 4
  br label %if.end.517

if.else.516:                                      ; preds = %if.else.497
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.517

if.end.517:                                       ; preds = %if.else.516, %if.then.506
  br label %if.end.518

if.end.518:                                       ; preds = %if.end.517, %if.then.482
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.518, %if.end.463, %if.end.408, %if.end.375, %if.end.334, %if.end.275, %if.end.204, %if.end.145
  %418 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %418, 1
  store i32 %inc, i32* %tpos, align 4
  %419 = load i32, i32* %tpos, align 4
  %420 = load i32, i32* %curralloc, align 4
  %cmp519 = icmp eq i32 %419, %420
  br i1 %cmp519, label %if.then.521, label %if.end.523

if.then.521:                                      ; preds = %sw.epilog
  %421 = load i32, i32* %L.addr, align 4
  %422 = load i32, i32* %curralloc, align 4
  %add522 = add nsw i32 %422, %421
  store i32 %add522, i32* %curralloc, align 4
  %423 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %424 = load i32, i32* %curralloc, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %423, i32 %424)
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.521, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %425 = load i32, i32* %tpos, align 4
  %426 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %426, i32 0, i32 0
  store i32 %425, i32* %tlen, align 4
  %427 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7ReverseTrace(%struct.p7trace_s* %427)
  %428 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %429 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* %428, %struct.p7trace_s** %429, align 8
  ret void
}

declare float @Score2Prob(i32, float) #1

declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

declare void @Die(i8*, ...) #1

declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #1

declare void @P7ReverseTrace(%struct.p7trace_s*) #1

; Function Attrs: nounwind uwtable
define i8* @PostalCode(i32 %L, %struct.dpmatrix_s* %mx, %struct.p7trace_s* %tr) #0 {
entry:
  %L.addr = alloca i32, align 4
  %mx.addr = alloca %struct.dpmatrix_s*, align 8
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %tpos = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %postcode = alloca i8*, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.dpmatrix_s* %mx, %struct.dpmatrix_s** %mx.addr, align 8
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  %0 = load i32, i32* %L.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 692, i64 %mul)
  store i8* %call, i8** %postcode, align 8
  store i32 0, i32* %tpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %tpos, align 4
  %2 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %2, i32 0, i32 0
  %3 = load i32, i32* %tlen, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %tpos, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %5, i32 0, i32 3
  %6 = load i32*, i32** %pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %i, align 4
  %8 = load i32, i32* %tpos, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %9, i32 0, i32 2
  %10 = load i32*, i32** %nodeidx, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 %idxprom2
  %11 = load i32, i32* %arrayidx3, align 4
  store i32 %11, i32* %k, align 4
  %12 = load i32, i32* %i, align 4
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %13 = load i32, i32* %tpos, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %14, i32 0, i32 1
  %15 = load i8*, i8** %statetype, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %16 to i32
  switch i32 %conv8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.16
    i32 5, label %sw.bb.25
    i32 8, label %sw.bb.33
    i32 10, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.end
  %17 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %19, i32 0, i32 1
  %20 = load i32**, i32*** %mmx, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %20, i64 %idxprom10
  %21 = load i32*, i32** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 %idxprom9
  %22 = load i32, i32* %arrayidx12, align 4
  %call13 = call signext i8 @score2postcode(i32 %22)
  %23 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom14 = sext i32 %sub to i64
  %24 = load i8*, i8** %postcode, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %24, i64 %idxprom14
  store i8 %call13, i8* %arrayidx15, align 1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %25 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %27, i32 0, i32 2
  %28 = load i32**, i32*** %imx, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %28, i64 %idxprom18
  %29 = load i32*, i32** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 %idxprom17
  %30 = load i32, i32* %arrayidx20, align 4
  %call21 = call signext i8 @score2postcode(i32 %30)
  %31 = load i32, i32* %i, align 4
  %sub22 = sub nsw i32 %31, 1
  %idxprom23 = sext i32 %sub22 to i64
  %32 = load i8*, i8** %postcode, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %32, i64 %idxprom23
  store i8 %call21, i8* %arrayidx24, align 1
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %34, i32 0, i32 0
  %35 = load i32**, i32*** %xmx, align 8
  %arrayidx27 = getelementptr inbounds i32*, i32** %35, i64 %idxprom26
  %36 = load i32*, i32** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %36, i64 4
  %37 = load i32, i32* %arrayidx28, align 4
  %call29 = call signext i8 @score2postcode(i32 %37)
  %38 = load i32, i32* %i, align 4
  %sub30 = sub nsw i32 %38, 1
  %idxprom31 = sext i32 %sub30 to i64
  %39 = load i8*, i8** %postcode, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %39, i64 %idxprom31
  store i8 %call29, i8* %arrayidx32, align 1
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end
  %40 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %40 to i64
  %41 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx35 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %41, i32 0, i32 0
  %42 = load i32**, i32*** %xmx35, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %42, i64 %idxprom34
  %43 = load i32*, i32** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %43, i64 2
  %44 = load i32, i32* %arrayidx37, align 4
  %call38 = call signext i8 @score2postcode(i32 %44)
  %45 = load i32, i32* %i, align 4
  %sub39 = sub nsw i32 %45, 1
  %idxprom40 = sext i32 %sub39 to i64
  %46 = load i8*, i8** %postcode, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %46, i64 %idxprom40
  store i8 %call38, i8* %arrayidx41, align 1
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end
  %47 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %47 to i64
  %48 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx44 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %48, i32 0, i32 0
  %49 = load i32**, i32*** %xmx44, align 8
  %arrayidx45 = getelementptr inbounds i32*, i32** %49, i64 %idxprom43
  %50 = load i32*, i32** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %50, i64 3
  %51 = load i32, i32* %arrayidx46, align 4
  %call47 = call signext i8 @score2postcode(i32 %51)
  %52 = load i32, i32* %i, align 4
  %sub48 = sub nsw i32 %52, 1
  %idxprom49 = sext i32 %sub48 to i64
  %53 = load i8*, i8** %postcode, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %53, i64 %idxprom49
  store i8 %call47, i8* %arrayidx50, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.42, %sw.bb.33, %sw.bb.25, %sw.bb.16, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then
  %54 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %tpos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load i32, i32* %L.addr, align 4
  %idxprom51 = sext i32 %55 to i64
  %56 = load i8*, i8** %postcode, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %56, i64 %idxprom51
  store i8 0, i8* %arrayidx52, align 1
  %57 = load i8*, i8** %postcode, align 8
  ret i8* %57
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @score2postcode(i32 %sc) #0 {
entry:
  %sc.addr = alloca i32, align 4
  %i = alloca i8, align 1
  store i32 %sc, i32* %sc.addr, align 4
  %0 = load i32, i32* %sc.addr, align 4
  %call = call float @Score2Prob(i32 %0, float 1.000000e+00)
  %conv = fpext float %call to double
  %mul = fmul double %conv, 1.000000e+01
  %conv1 = fptosi double %mul to i8
  store i8 %conv1, i8* %i, align 1
  %1 = load i8, i8* %i, align 1
  %conv2 = sext i8 %1 to i32
  %cmp = icmp sgt i32 %conv2, 9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i8, i8* %i, align 1
  %conv4 = sext i8 %2 to i32
  %add = add nsw i32 48, %conv4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 42, %cond.true ], [ %add, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  ret i8 %conv5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
