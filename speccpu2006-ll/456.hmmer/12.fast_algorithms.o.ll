; ModuleID = 'fast_algorithms.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

; Function Attrs: nounwind uwtable
define float @P7Viterbi(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
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
  %mc = alloca i32*, align 8
  %dc = alloca i32*, align 8
  %ic = alloca i32*, align 8
  %ms = alloca i32*, align 8
  %is = alloca i32*, align 8
  %mpp = alloca i32*, align 8
  %mpc = alloca i32*, align 8
  %ip = alloca i32*, align 8
  %bp = alloca i32*, align 8
  %ep = alloca i32*, align 8
  %xmb = alloca i32, align 4
  %xme = alloca i32, align 4
  %dpp = alloca i32*, align 8
  %tpmm = alloca i32*, align 8
  %tpmi = alloca i32*, align 8
  %tpmd = alloca i32*, align 8
  %tpim = alloca i32*, align 8
  %tpii = alloca i32*, align 8
  %tpdm = alloca i32*, align 8
  %tpdd = alloca i32*, align 8
  %M = alloca i32, align 4
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.dpmatrix_s* %mx, %struct.dpmatrix_s** %mx.addr, align 8
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  %0 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %1 = load i32, i32* %L.addr, align 4
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 20
  %3 = load i32, i32* %M1, align 4
  call void @ResizePlan7Matrix(%struct.dpmatrix_s* %0, i32 %1, i32 %3, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx)
  %4 = load i32**, i32*** %xmx, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %4, i64 0
  %5 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 4
  store i32 0, i32* %arrayidx2, align 4
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 33
  %arrayidx3 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 0
  %7 = load i32, i32* %arrayidx4, align 4
  %8 = load i32**, i32*** %xmx, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %8, i64 0
  %9 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %7, i32* %arrayidx6, align 4
  %10 = load i32**, i32*** %xmx, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %10, i64 0
  %11 = load i32*, i32** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 -987654321, i32* %arrayidx8, align 4
  %12 = load i32**, i32*** %xmx, align 8
  %arrayidx9 = getelementptr inbounds i32*, i32** %12, i64 0
  %13 = load i32*, i32** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 -987654321, i32* %arrayidx10, align 4
  %14 = load i32**, i32*** %xmx, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %14, i64 0
  %15 = load i32*, i32** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 -987654321, i32* %arrayidx12, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %k, align 4
  %17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 20
  %18 = load i32, i32* %M13, align 4
  %cmp = icmp sle i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %k, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32**, i32*** %dmx, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %20, i64 0
  %21 = load i32*, i32** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 %idxprom
  store i32 -987654321, i32* %arrayidx15, align 4
  %22 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load i32**, i32*** %imx, align 8
  %arrayidx17 = getelementptr inbounds i32*, i32** %23, i64 0
  %24 = load i32*, i32** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  store i32 -987654321, i32* %arrayidx18, align 4
  %25 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i32**, i32*** %mmx, align 8
  %arrayidx20 = getelementptr inbounds i32*, i32** %26, i64 0
  %27 = load i32*, i32** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %27, i64 %idxprom19
  store i32 -987654321, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %k, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M22 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 20
  %30 = load i32, i32* %M22, align 4
  store i32 %30, i32* %M, align 4
  %31 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %31, i32 0, i32 30
  %32 = load i32**, i32*** %tsc, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %32, i64 0
  %33 = load i32*, i32** %arrayidx23, align 8
  store i32* %33, i32** %tpmm, align 8
  %34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 30
  %35 = load i32**, i32*** %tsc24, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %35, i64 3
  %36 = load i32*, i32** %arrayidx25, align 8
  store i32* %36, i32** %tpim, align 8
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc26 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 30
  %38 = load i32**, i32*** %tsc26, align 8
  %arrayidx27 = getelementptr inbounds i32*, i32** %38, i64 5
  %39 = load i32*, i32** %arrayidx27, align 8
  store i32* %39, i32** %tpdm, align 8
  %40 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 30
  %41 = load i32**, i32*** %tsc28, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %41, i64 2
  %42 = load i32*, i32** %arrayidx29, align 8
  store i32* %42, i32** %tpmd, align 8
  %43 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 30
  %44 = load i32**, i32*** %tsc30, align 8
  %arrayidx31 = getelementptr inbounds i32*, i32** %44, i64 6
  %45 = load i32*, i32** %arrayidx31, align 8
  store i32* %45, i32** %tpdd, align 8
  %46 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %46, i32 0, i32 30
  %47 = load i32**, i32*** %tsc32, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %47, i64 1
  %48 = load i32*, i32** %arrayidx33, align 8
  store i32* %48, i32** %tpmi, align 8
  %49 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %49, i32 0, i32 30
  %50 = load i32**, i32*** %tsc34, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %50, i64 4
  %51 = load i32*, i32** %arrayidx35, align 8
  store i32* %51, i32** %tpii, align 8
  %52 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %52, i32 0, i32 34
  %53 = load i32*, i32** %bsc, align 8
  store i32* %53, i32** %bp, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.349, %for.end
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %L.addr, align 4
  %cmp37 = icmp sle i32 %54, %55
  br i1 %cmp37, label %for.body.38, label %for.end.351

for.body.38:                                      ; preds = %for.cond.36
  %56 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %56 to i64
  %57 = load i32**, i32*** %mmx, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %57, i64 %idxprom39
  %58 = load i32*, i32** %arrayidx40, align 8
  store i32* %58, i32** %mc, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %59 to i64
  %60 = load i32**, i32*** %dmx, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %60, i64 %idxprom41
  %61 = load i32*, i32** %arrayidx42, align 8
  store i32* %61, i32** %dc, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %62 to i64
  %63 = load i32**, i32*** %imx, align 8
  %arrayidx44 = getelementptr inbounds i32*, i32** %63, i64 %idxprom43
  %64 = load i32*, i32** %arrayidx44, align 8
  store i32* %64, i32** %ic, align 8
  %65 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %65, 1
  %idxprom45 = sext i32 %sub to i64
  %66 = load i32**, i32*** %mmx, align 8
  %arrayidx46 = getelementptr inbounds i32*, i32** %66, i64 %idxprom45
  %67 = load i32*, i32** %arrayidx46, align 8
  store i32* %67, i32** %mpp, align 8
  %68 = load i32, i32* %i, align 4
  %sub47 = sub nsw i32 %68, 1
  %idxprom48 = sext i32 %sub47 to i64
  %69 = load i32**, i32*** %dmx, align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %69, i64 %idxprom48
  %70 = load i32*, i32** %arrayidx49, align 8
  store i32* %70, i32** %dpp, align 8
  %71 = load i32, i32* %i, align 4
  %sub50 = sub nsw i32 %71, 1
  %idxprom51 = sext i32 %sub50 to i64
  %72 = load i32**, i32*** %imx, align 8
  %arrayidx52 = getelementptr inbounds i32*, i32** %72, i64 %idxprom51
  %73 = load i32*, i32** %arrayidx52, align 8
  store i32* %73, i32** %ip, align 8
  %74 = load i32, i32* %i, align 4
  %sub53 = sub nsw i32 %74, 1
  %idxprom54 = sext i32 %sub53 to i64
  %75 = load i32**, i32*** %xmx, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %75, i64 %idxprom54
  %76 = load i32*, i32** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx56, align 4
  store i32 %77, i32* %xmb, align 4
  %78 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %78 to i64
  %79 = load i8*, i8** %dsq.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %79, i64 %idxprom57
  %80 = load i8, i8* %arrayidx58, align 1
  %conv = sext i8 %80 to i32
  %idxprom59 = sext i32 %conv to i64
  %81 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %81, i32 0, i32 31
  %82 = load i32**, i32*** %msc, align 8
  %arrayidx60 = getelementptr inbounds i32*, i32** %82, i64 %idxprom59
  %83 = load i32*, i32** %arrayidx60, align 8
  store i32* %83, i32** %ms, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %84 to i64
  %85 = load i8*, i8** %dsq.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %85, i64 %idxprom61
  %86 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %86 to i32
  %idxprom64 = sext i32 %conv63 to i64
  %87 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %87, i32 0, i32 32
  %88 = load i32**, i32*** %isc, align 8
  %arrayidx65 = getelementptr inbounds i32*, i32** %88, i64 %idxprom64
  %89 = load i32*, i32** %arrayidx65, align 8
  store i32* %89, i32** %is, align 8
  %90 = load i32*, i32** %mc, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 -987654321, i32* %arrayidx66, align 4
  %91 = load i32*, i32** %dc, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 -987654321, i32* %arrayidx67, align 4
  %92 = load i32*, i32** %ic, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 -987654321, i32* %arrayidx68, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.202, %for.body.38
  %93 = load i32, i32* %k, align 4
  %94 = load i32, i32* %M, align 4
  %cmp70 = icmp sle i32 %93, %94
  br i1 %cmp70, label %for.body.72, label %for.end.204

for.body.72:                                      ; preds = %for.cond.69
  %95 = load i32, i32* %k, align 4
  %sub73 = sub nsw i32 %95, 1
  %idxprom74 = sext i32 %sub73 to i64
  %96 = load i32*, i32** %mpp, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %96, i64 %idxprom74
  %97 = load i32, i32* %arrayidx75, align 4
  %98 = load i32, i32* %k, align 4
  %sub76 = sub nsw i32 %98, 1
  %idxprom77 = sext i32 %sub76 to i64
  %99 = load i32*, i32** %tpmm, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %99, i64 %idxprom77
  %100 = load i32, i32* %arrayidx78, align 4
  %add = add nsw i32 %97, %100
  %101 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %101 to i64
  %102 = load i32*, i32** %mc, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %102, i64 %idxprom79
  store i32 %add, i32* %arrayidx80, align 4
  %103 = load i32, i32* %k, align 4
  %sub81 = sub nsw i32 %103, 1
  %idxprom82 = sext i32 %sub81 to i64
  %104 = load i32*, i32** %ip, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %104, i64 %idxprom82
  %105 = load i32, i32* %arrayidx83, align 4
  %106 = load i32, i32* %k, align 4
  %sub84 = sub nsw i32 %106, 1
  %idxprom85 = sext i32 %sub84 to i64
  %107 = load i32*, i32** %tpim, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %107, i64 %idxprom85
  %108 = load i32, i32* %arrayidx86, align 4
  %add87 = add nsw i32 %105, %108
  store i32 %add87, i32* %sc, align 4
  %109 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %109 to i64
  %110 = load i32*, i32** %mc, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %110, i64 %idxprom88
  %111 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp sgt i32 %add87, %111
  br i1 %cmp90, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.72
  %112 = load i32, i32* %sc, align 4
  %113 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %113 to i64
  %114 = load i32*, i32** %mc, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %114, i64 %idxprom92
  store i32 %112, i32* %arrayidx93, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.72
  %115 = load i32, i32* %k, align 4
  %sub94 = sub nsw i32 %115, 1
  %idxprom95 = sext i32 %sub94 to i64
  %116 = load i32*, i32** %dpp, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %116, i64 %idxprom95
  %117 = load i32, i32* %arrayidx96, align 4
  %118 = load i32, i32* %k, align 4
  %sub97 = sub nsw i32 %118, 1
  %idxprom98 = sext i32 %sub97 to i64
  %119 = load i32*, i32** %tpdm, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %119, i64 %idxprom98
  %120 = load i32, i32* %arrayidx99, align 4
  %add100 = add nsw i32 %117, %120
  store i32 %add100, i32* %sc, align 4
  %121 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %121 to i64
  %122 = load i32*, i32** %mc, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %122, i64 %idxprom101
  %123 = load i32, i32* %arrayidx102, align 4
  %cmp103 = icmp sgt i32 %add100, %123
  br i1 %cmp103, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.end
  %124 = load i32, i32* %sc, align 4
  %125 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %125 to i64
  %126 = load i32*, i32** %mc, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %126, i64 %idxprom106
  store i32 %124, i32* %arrayidx107, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %if.end
  %127 = load i32, i32* %xmb, align 4
  %128 = load i32, i32* %k, align 4
  %idxprom109 = sext i32 %128 to i64
  %129 = load i32*, i32** %bp, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %129, i64 %idxprom109
  %130 = load i32, i32* %arrayidx110, align 4
  %add111 = add nsw i32 %127, %130
  store i32 %add111, i32* %sc, align 4
  %131 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %131 to i64
  %132 = load i32*, i32** %mc, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %132, i64 %idxprom112
  %133 = load i32, i32* %arrayidx113, align 4
  %cmp114 = icmp sgt i32 %add111, %133
  br i1 %cmp114, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %if.end.108
  %134 = load i32, i32* %sc, align 4
  %135 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %135 to i64
  %136 = load i32*, i32** %mc, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %136, i64 %idxprom117
  store i32 %134, i32* %arrayidx118, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %if.end.108
  %137 = load i32, i32* %k, align 4
  %idxprom120 = sext i32 %137 to i64
  %138 = load i32*, i32** %ms, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %138, i64 %idxprom120
  %139 = load i32, i32* %arrayidx121, align 4
  %140 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %140 to i64
  %141 = load i32*, i32** %mc, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %141, i64 %idxprom122
  %142 = load i32, i32* %arrayidx123, align 4
  %add124 = add nsw i32 %142, %139
  store i32 %add124, i32* %arrayidx123, align 4
  %143 = load i32, i32* %k, align 4
  %idxprom125 = sext i32 %143 to i64
  %144 = load i32*, i32** %mc, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %144, i64 %idxprom125
  %145 = load i32, i32* %arrayidx126, align 4
  %cmp127 = icmp slt i32 %145, -987654321
  br i1 %cmp127, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %if.end.119
  %146 = load i32, i32* %k, align 4
  %idxprom130 = sext i32 %146 to i64
  %147 = load i32*, i32** %mc, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %147, i64 %idxprom130
  store i32 -987654321, i32* %arrayidx131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %if.end.119
  %148 = load i32, i32* %k, align 4
  %sub133 = sub nsw i32 %148, 1
  %idxprom134 = sext i32 %sub133 to i64
  %149 = load i32*, i32** %dc, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %149, i64 %idxprom134
  %150 = load i32, i32* %arrayidx135, align 4
  %151 = load i32, i32* %k, align 4
  %sub136 = sub nsw i32 %151, 1
  %idxprom137 = sext i32 %sub136 to i64
  %152 = load i32*, i32** %tpdd, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %152, i64 %idxprom137
  %153 = load i32, i32* %arrayidx138, align 4
  %add139 = add nsw i32 %150, %153
  %154 = load i32, i32* %k, align 4
  %idxprom140 = sext i32 %154 to i64
  %155 = load i32*, i32** %dc, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %155, i64 %idxprom140
  store i32 %add139, i32* %arrayidx141, align 4
  %156 = load i32, i32* %k, align 4
  %sub142 = sub nsw i32 %156, 1
  %idxprom143 = sext i32 %sub142 to i64
  %157 = load i32*, i32** %mc, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %157, i64 %idxprom143
  %158 = load i32, i32* %arrayidx144, align 4
  %159 = load i32, i32* %k, align 4
  %sub145 = sub nsw i32 %159, 1
  %idxprom146 = sext i32 %sub145 to i64
  %160 = load i32*, i32** %tpmd, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %160, i64 %idxprom146
  %161 = load i32, i32* %arrayidx147, align 4
  %add148 = add nsw i32 %158, %161
  store i32 %add148, i32* %sc, align 4
  %162 = load i32, i32* %k, align 4
  %idxprom149 = sext i32 %162 to i64
  %163 = load i32*, i32** %dc, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %163, i64 %idxprom149
  %164 = load i32, i32* %arrayidx150, align 4
  %cmp151 = icmp sgt i32 %add148, %164
  br i1 %cmp151, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.end.132
  %165 = load i32, i32* %sc, align 4
  %166 = load i32, i32* %k, align 4
  %idxprom154 = sext i32 %166 to i64
  %167 = load i32*, i32** %dc, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %167, i64 %idxprom154
  store i32 %165, i32* %arrayidx155, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.end.132
  %168 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %168 to i64
  %169 = load i32*, i32** %dc, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %169, i64 %idxprom157
  %170 = load i32, i32* %arrayidx158, align 4
  %cmp159 = icmp slt i32 %170, -987654321
  br i1 %cmp159, label %if.then.161, label %if.end.164

if.then.161:                                      ; preds = %if.end.156
  %171 = load i32, i32* %k, align 4
  %idxprom162 = sext i32 %171 to i64
  %172 = load i32*, i32** %dc, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %172, i64 %idxprom162
  store i32 -987654321, i32* %arrayidx163, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.161, %if.end.156
  %173 = load i32, i32* %k, align 4
  %174 = load i32, i32* %M, align 4
  %cmp165 = icmp slt i32 %173, %174
  br i1 %cmp165, label %if.then.167, label %if.end.201

if.then.167:                                      ; preds = %if.end.164
  %175 = load i32, i32* %k, align 4
  %idxprom168 = sext i32 %175 to i64
  %176 = load i32*, i32** %mpp, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %176, i64 %idxprom168
  %177 = load i32, i32* %arrayidx169, align 4
  %178 = load i32, i32* %k, align 4
  %idxprom170 = sext i32 %178 to i64
  %179 = load i32*, i32** %tpmi, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %179, i64 %idxprom170
  %180 = load i32, i32* %arrayidx171, align 4
  %add172 = add nsw i32 %177, %180
  %181 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %181 to i64
  %182 = load i32*, i32** %ic, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %182, i64 %idxprom173
  store i32 %add172, i32* %arrayidx174, align 4
  %183 = load i32, i32* %k, align 4
  %idxprom175 = sext i32 %183 to i64
  %184 = load i32*, i32** %ip, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %184, i64 %idxprom175
  %185 = load i32, i32* %arrayidx176, align 4
  %186 = load i32, i32* %k, align 4
  %idxprom177 = sext i32 %186 to i64
  %187 = load i32*, i32** %tpii, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %187, i64 %idxprom177
  %188 = load i32, i32* %arrayidx178, align 4
  %add179 = add nsw i32 %185, %188
  store i32 %add179, i32* %sc, align 4
  %189 = load i32, i32* %k, align 4
  %idxprom180 = sext i32 %189 to i64
  %190 = load i32*, i32** %ic, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %190, i64 %idxprom180
  %191 = load i32, i32* %arrayidx181, align 4
  %cmp182 = icmp sgt i32 %add179, %191
  br i1 %cmp182, label %if.then.184, label %if.end.187

if.then.184:                                      ; preds = %if.then.167
  %192 = load i32, i32* %sc, align 4
  %193 = load i32, i32* %k, align 4
  %idxprom185 = sext i32 %193 to i64
  %194 = load i32*, i32** %ic, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %194, i64 %idxprom185
  store i32 %192, i32* %arrayidx186, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.184, %if.then.167
  %195 = load i32, i32* %k, align 4
  %idxprom188 = sext i32 %195 to i64
  %196 = load i32*, i32** %is, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %196, i64 %idxprom188
  %197 = load i32, i32* %arrayidx189, align 4
  %198 = load i32, i32* %k, align 4
  %idxprom190 = sext i32 %198 to i64
  %199 = load i32*, i32** %ic, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %199, i64 %idxprom190
  %200 = load i32, i32* %arrayidx191, align 4
  %add192 = add nsw i32 %200, %197
  store i32 %add192, i32* %arrayidx191, align 4
  %201 = load i32, i32* %k, align 4
  %idxprom193 = sext i32 %201 to i64
  %202 = load i32*, i32** %ic, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %202, i64 %idxprom193
  %203 = load i32, i32* %arrayidx194, align 4
  %cmp195 = icmp slt i32 %203, -987654321
  br i1 %cmp195, label %if.then.197, label %if.end.200

if.then.197:                                      ; preds = %if.end.187
  %204 = load i32, i32* %k, align 4
  %idxprom198 = sext i32 %204 to i64
  %205 = load i32*, i32** %ic, align 8
  %arrayidx199 = getelementptr inbounds i32, i32* %205, i64 %idxprom198
  store i32 -987654321, i32* %arrayidx199, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.197, %if.end.187
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.164
  br label %for.inc.202

for.inc.202:                                      ; preds = %if.end.201
  %206 = load i32, i32* %k, align 4
  %inc203 = add nsw i32 %206, 1
  store i32 %inc203, i32* %k, align 4
  br label %for.cond.69

for.end.204:                                      ; preds = %for.cond.69
  %207 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %207 to i64
  %208 = load i32**, i32*** %xmx, align 8
  %arrayidx206 = getelementptr inbounds i32*, i32** %208, i64 %idxprom205
  %209 = load i32*, i32** %arrayidx206, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %209, i64 4
  store i32 -987654321, i32* %arrayidx207, align 4
  %210 = load i32, i32* %i, align 4
  %sub208 = sub nsw i32 %210, 1
  %idxprom209 = sext i32 %sub208 to i64
  %211 = load i32**, i32*** %xmx, align 8
  %arrayidx210 = getelementptr inbounds i32*, i32** %211, i64 %idxprom209
  %212 = load i32*, i32** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %212, i64 4
  %213 = load i32, i32* %arrayidx211, align 4
  %214 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc212 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %214, i32 0, i32 33
  %arrayidx213 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc212, i32 0, i64 0
  %arrayidx214 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx213, i32 0, i64 1
  %215 = load i32, i32* %arrayidx214, align 4
  %add215 = add nsw i32 %213, %215
  store i32 %add215, i32* %sc, align 4
  %cmp216 = icmp sgt i32 %add215, -987654321
  br i1 %cmp216, label %if.then.218, label %if.end.222

if.then.218:                                      ; preds = %for.end.204
  %216 = load i32, i32* %sc, align 4
  %217 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %217 to i64
  %218 = load i32**, i32*** %xmx, align 8
  %arrayidx220 = getelementptr inbounds i32*, i32** %218, i64 %idxprom219
  %219 = load i32*, i32** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %219, i64 4
  store i32 %216, i32* %arrayidx221, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.218, %for.end.204
  store i32 -987654321, i32* %xme, align 4
  %220 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %220 to i64
  %221 = load i32**, i32*** %mmx, align 8
  %arrayidx224 = getelementptr inbounds i32*, i32** %221, i64 %idxprom223
  %222 = load i32*, i32** %arrayidx224, align 8
  store i32* %222, i32** %mpc, align 8
  %223 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %223, i32 0, i32 35
  %224 = load i32*, i32** %esc, align 8
  store i32* %224, i32** %ep, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.239, %if.end.222
  %225 = load i32, i32* %k, align 4
  %226 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M226 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %226, i32 0, i32 20
  %227 = load i32, i32* %M226, align 4
  %cmp227 = icmp sle i32 %225, %227
  br i1 %cmp227, label %for.body.229, label %for.end.241

for.body.229:                                     ; preds = %for.cond.225
  %228 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %228 to i64
  %229 = load i32*, i32** %mpc, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %229, i64 %idxprom230
  %230 = load i32, i32* %arrayidx231, align 4
  %231 = load i32, i32* %k, align 4
  %idxprom232 = sext i32 %231 to i64
  %232 = load i32*, i32** %ep, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %232, i64 %idxprom232
  %233 = load i32, i32* %arrayidx233, align 4
  %add234 = add nsw i32 %230, %233
  store i32 %add234, i32* %sc, align 4
  %234 = load i32, i32* %xme, align 4
  %cmp235 = icmp sgt i32 %add234, %234
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %for.body.229
  %235 = load i32, i32* %sc, align 4
  store i32 %235, i32* %xme, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.237, %for.body.229
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238
  %236 = load i32, i32* %k, align 4
  %inc240 = add nsw i32 %236, 1
  store i32 %inc240, i32* %k, align 4
  br label %for.cond.225

for.end.241:                                      ; preds = %for.cond.225
  %237 = load i32, i32* %xme, align 4
  %238 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %238 to i64
  %239 = load i32**, i32*** %xmx, align 8
  %arrayidx243 = getelementptr inbounds i32*, i32** %239, i64 %idxprom242
  %240 = load i32*, i32** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %240, i64 1
  store i32 %237, i32* %arrayidx244, align 4
  %241 = load i32, i32* %i, align 4
  %idxprom245 = sext i32 %241 to i64
  %242 = load i32**, i32*** %xmx, align 8
  %arrayidx246 = getelementptr inbounds i32*, i32** %242, i64 %idxprom245
  %243 = load i32*, i32** %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i32, i32* %243, i64 3
  store i32 -987654321, i32* %arrayidx247, align 4
  %244 = load i32, i32* %i, align 4
  %sub248 = sub nsw i32 %244, 1
  %idxprom249 = sext i32 %sub248 to i64
  %245 = load i32**, i32*** %xmx, align 8
  %arrayidx250 = getelementptr inbounds i32*, i32** %245, i64 %idxprom249
  %246 = load i32*, i32** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %246, i64 3
  %247 = load i32, i32* %arrayidx251, align 4
  %248 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc252 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %248, i32 0, i32 33
  %arrayidx253 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc252, i32 0, i64 3
  %arrayidx254 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx253, i32 0, i64 1
  %249 = load i32, i32* %arrayidx254, align 4
  %add255 = add nsw i32 %247, %249
  store i32 %add255, i32* %sc, align 4
  %cmp256 = icmp sgt i32 %add255, -987654321
  br i1 %cmp256, label %if.then.258, label %if.end.262

if.then.258:                                      ; preds = %for.end.241
  %250 = load i32, i32* %sc, align 4
  %251 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %251 to i64
  %252 = load i32**, i32*** %xmx, align 8
  %arrayidx260 = getelementptr inbounds i32*, i32** %252, i64 %idxprom259
  %253 = load i32*, i32** %arrayidx260, align 8
  %arrayidx261 = getelementptr inbounds i32, i32* %253, i64 3
  store i32 %250, i32* %arrayidx261, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.258, %for.end.241
  %254 = load i32, i32* %i, align 4
  %idxprom263 = sext i32 %254 to i64
  %255 = load i32**, i32*** %xmx, align 8
  %arrayidx264 = getelementptr inbounds i32*, i32** %255, i64 %idxprom263
  %256 = load i32*, i32** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %256, i64 1
  %257 = load i32, i32* %arrayidx265, align 4
  %258 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc266 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %258, i32 0, i32 33
  %arrayidx267 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc266, i32 0, i64 1
  %arrayidx268 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx267, i32 0, i64 1
  %259 = load i32, i32* %arrayidx268, align 4
  %add269 = add nsw i32 %257, %259
  store i32 %add269, i32* %sc, align 4
  %260 = load i32, i32* %i, align 4
  %idxprom270 = sext i32 %260 to i64
  %261 = load i32**, i32*** %xmx, align 8
  %arrayidx271 = getelementptr inbounds i32*, i32** %261, i64 %idxprom270
  %262 = load i32*, i32** %arrayidx271, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %262, i64 3
  %263 = load i32, i32* %arrayidx272, align 4
  %cmp273 = icmp sgt i32 %add269, %263
  br i1 %cmp273, label %if.then.275, label %if.end.279

if.then.275:                                      ; preds = %if.end.262
  %264 = load i32, i32* %sc, align 4
  %265 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %265 to i64
  %266 = load i32**, i32*** %xmx, align 8
  %arrayidx277 = getelementptr inbounds i32*, i32** %266, i64 %idxprom276
  %267 = load i32*, i32** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %267, i64 3
  store i32 %264, i32* %arrayidx278, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.275, %if.end.262
  %268 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %268 to i64
  %269 = load i32**, i32*** %xmx, align 8
  %arrayidx281 = getelementptr inbounds i32*, i32** %269, i64 %idxprom280
  %270 = load i32*, i32** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %270, i64 0
  store i32 -987654321, i32* %arrayidx282, align 4
  %271 = load i32, i32* %i, align 4
  %idxprom283 = sext i32 %271 to i64
  %272 = load i32**, i32*** %xmx, align 8
  %arrayidx284 = getelementptr inbounds i32*, i32** %272, i64 %idxprom283
  %273 = load i32*, i32** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i32, i32* %273, i64 4
  %274 = load i32, i32* %arrayidx285, align 4
  %275 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc286 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %275, i32 0, i32 33
  %arrayidx287 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc286, i32 0, i64 0
  %arrayidx288 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx287, i32 0, i64 0
  %276 = load i32, i32* %arrayidx288, align 4
  %add289 = add nsw i32 %274, %276
  store i32 %add289, i32* %sc, align 4
  %cmp290 = icmp sgt i32 %add289, -987654321
  br i1 %cmp290, label %if.then.292, label %if.end.296

if.then.292:                                      ; preds = %if.end.279
  %277 = load i32, i32* %sc, align 4
  %278 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %278 to i64
  %279 = load i32**, i32*** %xmx, align 8
  %arrayidx294 = getelementptr inbounds i32*, i32** %279, i64 %idxprom293
  %280 = load i32*, i32** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i32, i32* %280, i64 0
  store i32 %277, i32* %arrayidx295, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.292, %if.end.279
  %281 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %281 to i64
  %282 = load i32**, i32*** %xmx, align 8
  %arrayidx298 = getelementptr inbounds i32*, i32** %282, i64 %idxprom297
  %283 = load i32*, i32** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds i32, i32* %283, i64 3
  %284 = load i32, i32* %arrayidx299, align 4
  %285 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc300 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %285, i32 0, i32 33
  %arrayidx301 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc300, i32 0, i64 3
  %arrayidx302 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx301, i32 0, i64 0
  %286 = load i32, i32* %arrayidx302, align 4
  %add303 = add nsw i32 %284, %286
  store i32 %add303, i32* %sc, align 4
  %287 = load i32, i32* %i, align 4
  %idxprom304 = sext i32 %287 to i64
  %288 = load i32**, i32*** %xmx, align 8
  %arrayidx305 = getelementptr inbounds i32*, i32** %288, i64 %idxprom304
  %289 = load i32*, i32** %arrayidx305, align 8
  %arrayidx306 = getelementptr inbounds i32, i32* %289, i64 0
  %290 = load i32, i32* %arrayidx306, align 4
  %cmp307 = icmp sgt i32 %add303, %290
  br i1 %cmp307, label %if.then.309, label %if.end.313

if.then.309:                                      ; preds = %if.end.296
  %291 = load i32, i32* %sc, align 4
  %292 = load i32, i32* %i, align 4
  %idxprom310 = sext i32 %292 to i64
  %293 = load i32**, i32*** %xmx, align 8
  %arrayidx311 = getelementptr inbounds i32*, i32** %293, i64 %idxprom310
  %294 = load i32*, i32** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds i32, i32* %294, i64 0
  store i32 %291, i32* %arrayidx312, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.309, %if.end.296
  %295 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %295 to i64
  %296 = load i32**, i32*** %xmx, align 8
  %arrayidx315 = getelementptr inbounds i32*, i32** %296, i64 %idxprom314
  %297 = load i32*, i32** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %297, i64 2
  store i32 -987654321, i32* %arrayidx316, align 4
  %298 = load i32, i32* %i, align 4
  %sub317 = sub nsw i32 %298, 1
  %idxprom318 = sext i32 %sub317 to i64
  %299 = load i32**, i32*** %xmx, align 8
  %arrayidx319 = getelementptr inbounds i32*, i32** %299, i64 %idxprom318
  %300 = load i32*, i32** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %300, i64 2
  %301 = load i32, i32* %arrayidx320, align 4
  %302 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc321 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %302, i32 0, i32 33
  %arrayidx322 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc321, i32 0, i64 2
  %arrayidx323 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx322, i32 0, i64 1
  %303 = load i32, i32* %arrayidx323, align 4
  %add324 = add nsw i32 %301, %303
  store i32 %add324, i32* %sc, align 4
  %cmp325 = icmp sgt i32 %add324, -987654321
  br i1 %cmp325, label %if.then.327, label %if.end.331

if.then.327:                                      ; preds = %if.end.313
  %304 = load i32, i32* %sc, align 4
  %305 = load i32, i32* %i, align 4
  %idxprom328 = sext i32 %305 to i64
  %306 = load i32**, i32*** %xmx, align 8
  %arrayidx329 = getelementptr inbounds i32*, i32** %306, i64 %idxprom328
  %307 = load i32*, i32** %arrayidx329, align 8
  %arrayidx330 = getelementptr inbounds i32, i32* %307, i64 2
  store i32 %304, i32* %arrayidx330, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.327, %if.end.313
  %308 = load i32, i32* %i, align 4
  %idxprom332 = sext i32 %308 to i64
  %309 = load i32**, i32*** %xmx, align 8
  %arrayidx333 = getelementptr inbounds i32*, i32** %309, i64 %idxprom332
  %310 = load i32*, i32** %arrayidx333, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %310, i64 1
  %311 = load i32, i32* %arrayidx334, align 4
  %312 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc335 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %312, i32 0, i32 33
  %arrayidx336 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc335, i32 0, i64 1
  %arrayidx337 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx336, i32 0, i64 0
  %313 = load i32, i32* %arrayidx337, align 4
  %add338 = add nsw i32 %311, %313
  store i32 %add338, i32* %sc, align 4
  %314 = load i32, i32* %i, align 4
  %idxprom339 = sext i32 %314 to i64
  %315 = load i32**, i32*** %xmx, align 8
  %arrayidx340 = getelementptr inbounds i32*, i32** %315, i64 %idxprom339
  %316 = load i32*, i32** %arrayidx340, align 8
  %arrayidx341 = getelementptr inbounds i32, i32* %316, i64 2
  %317 = load i32, i32* %arrayidx341, align 4
  %cmp342 = icmp sgt i32 %add338, %317
  br i1 %cmp342, label %if.then.344, label %if.end.348

if.then.344:                                      ; preds = %if.end.331
  %318 = load i32, i32* %sc, align 4
  %319 = load i32, i32* %i, align 4
  %idxprom345 = sext i32 %319 to i64
  %320 = load i32**, i32*** %xmx, align 8
  %arrayidx346 = getelementptr inbounds i32*, i32** %320, i64 %idxprom345
  %321 = load i32*, i32** %arrayidx346, align 8
  %arrayidx347 = getelementptr inbounds i32, i32* %321, i64 2
  store i32 %318, i32* %arrayidx347, align 4
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.344, %if.end.331
  br label %for.inc.349

for.inc.349:                                      ; preds = %if.end.348
  %322 = load i32, i32* %i, align 4
  %inc350 = add nsw i32 %322, 1
  store i32 %inc350, i32* %i, align 4
  br label %for.cond.36

for.end.351:                                      ; preds = %for.cond.36
  %323 = load i32, i32* %L.addr, align 4
  %idxprom352 = sext i32 %323 to i64
  %324 = load i32**, i32*** %xmx, align 8
  %arrayidx353 = getelementptr inbounds i32*, i32** %324, i64 %idxprom352
  %325 = load i32*, i32** %arrayidx353, align 8
  %arrayidx354 = getelementptr inbounds i32, i32* %325, i64 2
  %326 = load i32, i32* %arrayidx354, align 4
  %327 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc355 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %327, i32 0, i32 33
  %arrayidx356 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc355, i32 0, i64 2
  %arrayidx357 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx356, i32 0, i64 0
  %328 = load i32, i32* %arrayidx357, align 4
  %add358 = add nsw i32 %326, %328
  store i32 %add358, i32* %sc, align 4
  %329 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  %cmp359 = icmp ne %struct.p7trace_s** %329, null
  br i1 %cmp359, label %if.then.361, label %if.end.362

if.then.361:                                      ; preds = %for.end.351
  %330 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %331 = load i8*, i8** %dsq.addr, align 8
  %332 = load i32, i32* %L.addr, align 4
  %333 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  call void @P7ViterbiTrace(%struct.plan7_s* %330, i8* %331, i32 %332, %struct.dpmatrix_s* %333, %struct.p7trace_s** %tr)
  %334 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %335 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* %334, %struct.p7trace_s** %335, align 8
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.361, %for.end.351
  %336 = load i32, i32* %sc, align 4
  %call = call float @Scorify(i32 %336)
  ret float %call
}

declare void @ResizePlan7Matrix(%struct.dpmatrix_s*, i32, i32, i32***, i32***, i32***, i32***) #1

declare void @P7ViterbiTrace(%struct.plan7_s*, i8*, i32, %struct.dpmatrix_s*, %struct.p7trace_s**) #1

declare float @Scorify(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
