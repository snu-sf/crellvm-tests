; ModuleID = './MultiSource.Benchmarks.MiBench/30.consumer-lame.fft.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rv_tbl = internal constant [128 x i16] [i16 0, i16 128, i16 64, i16 192, i16 32, i16 160, i16 96, i16 224, i16 16, i16 144, i16 80, i16 208, i16 48, i16 176, i16 112, i16 240, i16 8, i16 136, i16 72, i16 200, i16 40, i16 168, i16 104, i16 232, i16 24, i16 152, i16 88, i16 216, i16 56, i16 184, i16 120, i16 248, i16 4, i16 132, i16 68, i16 196, i16 36, i16 164, i16 100, i16 228, i16 20, i16 148, i16 84, i16 212, i16 52, i16 180, i16 116, i16 244, i16 12, i16 140, i16 76, i16 204, i16 44, i16 172, i16 108, i16 236, i16 28, i16 156, i16 92, i16 220, i16 60, i16 188, i16 124, i16 252, i16 2, i16 130, i16 66, i16 194, i16 34, i16 162, i16 98, i16 226, i16 18, i16 146, i16 82, i16 210, i16 50, i16 178, i16 114, i16 242, i16 10, i16 138, i16 74, i16 202, i16 42, i16 170, i16 106, i16 234, i16 26, i16 154, i16 90, i16 218, i16 58, i16 186, i16 122, i16 250, i16 6, i16 134, i16 70, i16 198, i16 38, i16 166, i16 102, i16 230, i16 22, i16 150, i16 86, i16 214, i16 54, i16 182, i16 118, i16 246, i16 14, i16 142, i16 78, i16 206, i16 46, i16 174, i16 110, i16 238, i16 30, i16 158, i16 94, i16 222, i16 62, i16 190, i16 126, i16 254], align 16
@window_s = internal global [128 x float] zeroinitializer, align 16
@window = internal global [512 x float] zeroinitializer, align 16
@costab = internal global [8 x float] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @fft_short([256 x float]* %x_real, i32 %chn, i16** %buffer) #0 {
entry:
  %x_real.addr = alloca [256 x float]*, align 8
  %chn.addr = alloca i32, align 4
  %buffer.addr = alloca i16**, align 8
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %b = alloca i16, align 2
  %x = alloca float*, align 8
  %k = alloca i16, align 2
  %f0 = alloca float, align 4
  %f1 = alloca float, align 4
  %f2 = alloca float, align 4
  %f3 = alloca float, align 4
  %w = alloca float, align 4
  %f0157 = alloca float, align 4
  %f1158 = alloca float, align 4
  %f2159 = alloca float, align 4
  %f3160 = alloca float, align 4
  %w161 = alloca float, align 4
  %f0387 = alloca float, align 4
  %f1388 = alloca float, align 4
  %f2389 = alloca float, align 4
  %f3390 = alloca float, align 4
  %w391 = alloca float, align 4
  store [256 x float]* %x_real, [256 x float]** %x_real.addr, align 8, !tbaa !1
  store i32 %chn, i32* %chn.addr, align 4, !tbaa !5
  store i16** %buffer, i16*** %buffer.addr, align 8, !tbaa !1
  %0 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %j to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  store i16 0, i16* %b, align 2, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i16, i16* %b, align 2, !tbaa !7
  %conv = sext i16 %3 to i32
  %cmp = icmp slt i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast float** %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i16, i16* %b, align 2, !tbaa !7
  %idxprom = sext i16 %5 to i64
  %6 = load [256 x float]*, [256 x float]** %x_real.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %6, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx, i32 0, i64 128
  store float* %arrayidx2, float** %x, align 8, !tbaa !1
  %7 = bitcast i16* %k to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  %8 = load i16, i16* %b, align 2, !tbaa !7
  %conv3 = sext i16 %8 to i32
  %add = add nsw i32 %conv3, 1
  %mul = mul nsw i32 192, %add
  %conv4 = trunc i32 %mul to i16
  store i16 %conv4, i16* %k, align 2, !tbaa !7
  store i16 31, i16* %j, align 2, !tbaa !7
  %9 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %9, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %10 = bitcast float* %f0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast float* %f1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast float* %f2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast float* %f3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast float* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i16, i16* %j, align 2, !tbaa !7
  %conv7 = sext i16 %15 to i32
  %shl = shl i32 %conv7, 2
  %idxprom8 = sext i32 %shl to i64
  %arrayidx9 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i64 %idxprom8
  %16 = load i16, i16* %arrayidx9, align 2, !tbaa !7
  store i16 %16, i16* %i, align 2, !tbaa !7
  %17 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom10 = sext i16 %17 to i64
  %arrayidx11 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom10
  %18 = load float, float* %arrayidx11, align 4, !tbaa !9
  %19 = load i16, i16* %i, align 2, !tbaa !7
  %conv12 = sext i16 %19 to i32
  %20 = load i16, i16* %k, align 2, !tbaa !7
  %conv13 = sext i16 %20 to i32
  %add14 = add nsw i32 %conv12, %conv13
  %idxprom15 = sext i32 %add14 to i64
  %21 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom16 = sext i32 %21 to i64
  %22 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16*, i16** %22, i64 %idxprom16
  %23 = load i16*, i16** %arrayidx17, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %23, i64 %idxprom15
  %24 = load i16, i16* %arrayidx18, align 2, !tbaa !7
  %conv19 = sext i16 %24 to i32
  %conv20 = sitofp i32 %conv19 to float
  %mul21 = fmul float %18, %conv20
  store float %mul21, float* %f0, align 4, !tbaa !9
  %25 = load i16, i16* %i, align 2, !tbaa !7
  %conv22 = sext i16 %25 to i32
  %sub = sub nsw i32 127, %conv22
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom23
  %26 = load float, float* %arrayidx24, align 4, !tbaa !9
  %27 = load i16, i16* %i, align 2, !tbaa !7
  %conv25 = sext i16 %27 to i32
  %28 = load i16, i16* %k, align 2, !tbaa !7
  %conv26 = sext i16 %28 to i32
  %add27 = add nsw i32 %conv25, %conv26
  %add28 = add nsw i32 %add27, 128
  %idxprom29 = sext i32 %add28 to i64
  %29 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom30 = sext i32 %29 to i64
  %30 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16*, i16** %30, i64 %idxprom30
  %31 = load i16*, i16** %arrayidx31, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i16, i16* %31, i64 %idxprom29
  %32 = load i16, i16* %arrayidx32, align 2, !tbaa !7
  %conv33 = sext i16 %32 to i32
  %conv34 = sitofp i32 %conv33 to float
  %mul35 = fmul float %26, %conv34
  store float %mul35, float* %w, align 4, !tbaa !9
  %33 = load float, float* %f0, align 4, !tbaa !9
  %34 = load float, float* %w, align 4, !tbaa !9
  %sub36 = fsub float %33, %34
  store float %sub36, float* %f1, align 4, !tbaa !9
  %35 = load float, float* %f0, align 4, !tbaa !9
  %36 = load float, float* %w, align 4, !tbaa !9
  %add37 = fadd float %35, %36
  store float %add37, float* %f0, align 4, !tbaa !9
  %37 = load i16, i16* %i, align 2, !tbaa !7
  %conv38 = sext i16 %37 to i32
  %add39 = add nsw i32 %conv38, 64
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom40
  %38 = load float, float* %arrayidx41, align 4, !tbaa !9
  %39 = load i16, i16* %i, align 2, !tbaa !7
  %conv42 = sext i16 %39 to i32
  %40 = load i16, i16* %k, align 2, !tbaa !7
  %conv43 = sext i16 %40 to i32
  %add44 = add nsw i32 %conv42, %conv43
  %add45 = add nsw i32 %add44, 64
  %idxprom46 = sext i32 %add45 to i64
  %41 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom47 = sext i32 %41 to i64
  %42 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i16*, i16** %42, i64 %idxprom47
  %43 = load i16*, i16** %arrayidx48, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i16, i16* %43, i64 %idxprom46
  %44 = load i16, i16* %arrayidx49, align 2, !tbaa !7
  %conv50 = sext i16 %44 to i32
  %conv51 = sitofp i32 %conv50 to float
  %mul52 = fmul float %38, %conv51
  store float %mul52, float* %f2, align 4, !tbaa !9
  %45 = load i16, i16* %i, align 2, !tbaa !7
  %conv53 = sext i16 %45 to i32
  %sub54 = sub nsw i32 63, %conv53
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom55
  %46 = load float, float* %arrayidx56, align 4, !tbaa !9
  %47 = load i16, i16* %i, align 2, !tbaa !7
  %conv57 = sext i16 %47 to i32
  %48 = load i16, i16* %k, align 2, !tbaa !7
  %conv58 = sext i16 %48 to i32
  %add59 = add nsw i32 %conv57, %conv58
  %add60 = add nsw i32 %add59, 192
  %idxprom61 = sext i32 %add60 to i64
  %49 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom62 = sext i32 %49 to i64
  %50 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i16*, i16** %50, i64 %idxprom62
  %51 = load i16*, i16** %arrayidx63, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i16, i16* %51, i64 %idxprom61
  %52 = load i16, i16* %arrayidx64, align 2, !tbaa !7
  %conv65 = sext i16 %52 to i32
  %conv66 = sitofp i32 %conv65 to float
  %mul67 = fmul float %46, %conv66
  store float %mul67, float* %w, align 4, !tbaa !9
  %53 = load float, float* %f2, align 4, !tbaa !9
  %54 = load float, float* %w, align 4, !tbaa !9
  %sub68 = fsub float %53, %54
  store float %sub68, float* %f3, align 4, !tbaa !9
  %55 = load float, float* %f2, align 4, !tbaa !9
  %56 = load float, float* %w, align 4, !tbaa !9
  %add69 = fadd float %55, %56
  store float %add69, float* %f2, align 4, !tbaa !9
  %57 = load float*, float** %x, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %57, i64 -4
  store float* %add.ptr, float** %x, align 8, !tbaa !1
  %58 = load float, float* %f0, align 4, !tbaa !9
  %59 = load float, float* %f2, align 4, !tbaa !9
  %add70 = fadd float %58, %59
  %60 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds float, float* %60, i64 0
  store float %add70, float* %arrayidx71, align 4, !tbaa !9
  %61 = load float, float* %f0, align 4, !tbaa !9
  %62 = load float, float* %f2, align 4, !tbaa !9
  %sub72 = fsub float %61, %62
  %63 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds float, float* %63, i64 2
  store float %sub72, float* %arrayidx73, align 4, !tbaa !9
  %64 = load float, float* %f1, align 4, !tbaa !9
  %65 = load float, float* %f3, align 4, !tbaa !9
  %add74 = fadd float %64, %65
  %66 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds float, float* %66, i64 1
  store float %add74, float* %arrayidx75, align 4, !tbaa !9
  %67 = load float, float* %f1, align 4, !tbaa !9
  %68 = load float, float* %f3, align 4, !tbaa !9
  %sub76 = fsub float %67, %68
  %69 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds float, float* %69, i64 3
  store float %sub76, float* %arrayidx77, align 4, !tbaa !9
  %70 = load i16, i16* %i, align 2, !tbaa !7
  %conv78 = sext i16 %70 to i32
  %add79 = add nsw i32 %conv78, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom80
  %71 = load float, float* %arrayidx81, align 4, !tbaa !9
  %72 = load i16, i16* %i, align 2, !tbaa !7
  %conv82 = sext i16 %72 to i32
  %73 = load i16, i16* %k, align 2, !tbaa !7
  %conv83 = sext i16 %73 to i32
  %add84 = add nsw i32 %conv82, %conv83
  %add85 = add nsw i32 %add84, 1
  %idxprom86 = sext i32 %add85 to i64
  %74 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom87 = sext i32 %74 to i64
  %75 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i16*, i16** %75, i64 %idxprom87
  %76 = load i16*, i16** %arrayidx88, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i16, i16* %76, i64 %idxprom86
  %77 = load i16, i16* %arrayidx89, align 2, !tbaa !7
  %conv90 = sext i16 %77 to i32
  %conv91 = sitofp i32 %conv90 to float
  %mul92 = fmul float %71, %conv91
  store float %mul92, float* %f0, align 4, !tbaa !9
  %78 = load i16, i16* %i, align 2, !tbaa !7
  %conv93 = sext i16 %78 to i32
  %sub94 = sub nsw i32 126, %conv93
  %idxprom95 = sext i32 %sub94 to i64
  %arrayidx96 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom95
  %79 = load float, float* %arrayidx96, align 4, !tbaa !9
  %80 = load i16, i16* %i, align 2, !tbaa !7
  %conv97 = sext i16 %80 to i32
  %81 = load i16, i16* %k, align 2, !tbaa !7
  %conv98 = sext i16 %81 to i32
  %add99 = add nsw i32 %conv97, %conv98
  %add100 = add nsw i32 %add99, 129
  %idxprom101 = sext i32 %add100 to i64
  %82 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom102 = sext i32 %82 to i64
  %83 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i16*, i16** %83, i64 %idxprom102
  %84 = load i16*, i16** %arrayidx103, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i16, i16* %84, i64 %idxprom101
  %85 = load i16, i16* %arrayidx104, align 2, !tbaa !7
  %conv105 = sext i16 %85 to i32
  %conv106 = sitofp i32 %conv105 to float
  %mul107 = fmul float %79, %conv106
  store float %mul107, float* %w, align 4, !tbaa !9
  %86 = load float, float* %f0, align 4, !tbaa !9
  %87 = load float, float* %w, align 4, !tbaa !9
  %sub108 = fsub float %86, %87
  store float %sub108, float* %f1, align 4, !tbaa !9
  %88 = load float, float* %f0, align 4, !tbaa !9
  %89 = load float, float* %w, align 4, !tbaa !9
  %add109 = fadd float %88, %89
  store float %add109, float* %f0, align 4, !tbaa !9
  %90 = load i16, i16* %i, align 2, !tbaa !7
  %conv110 = sext i16 %90 to i32
  %add111 = add nsw i32 %conv110, 65
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom112
  %91 = load float, float* %arrayidx113, align 4, !tbaa !9
  %92 = load i16, i16* %i, align 2, !tbaa !7
  %conv114 = sext i16 %92 to i32
  %93 = load i16, i16* %k, align 2, !tbaa !7
  %conv115 = sext i16 %93 to i32
  %add116 = add nsw i32 %conv114, %conv115
  %add117 = add nsw i32 %add116, 65
  %idxprom118 = sext i32 %add117 to i64
  %94 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom119 = sext i32 %94 to i64
  %95 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i16*, i16** %95, i64 %idxprom119
  %96 = load i16*, i16** %arrayidx120, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i16, i16* %96, i64 %idxprom118
  %97 = load i16, i16* %arrayidx121, align 2, !tbaa !7
  %conv122 = sext i16 %97 to i32
  %conv123 = sitofp i32 %conv122 to float
  %mul124 = fmul float %91, %conv123
  store float %mul124, float* %f2, align 4, !tbaa !9
  %98 = load i16, i16* %i, align 2, !tbaa !7
  %conv125 = sext i16 %98 to i32
  %sub126 = sub nsw i32 62, %conv125
  %idxprom127 = sext i32 %sub126 to i64
  %arrayidx128 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom127
  %99 = load float, float* %arrayidx128, align 4, !tbaa !9
  %100 = load i16, i16* %i, align 2, !tbaa !7
  %conv129 = sext i16 %100 to i32
  %101 = load i16, i16* %k, align 2, !tbaa !7
  %conv130 = sext i16 %101 to i32
  %add131 = add nsw i32 %conv129, %conv130
  %add132 = add nsw i32 %add131, 193
  %idxprom133 = sext i32 %add132 to i64
  %102 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom134 = sext i32 %102 to i64
  %103 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i16*, i16** %103, i64 %idxprom134
  %104 = load i16*, i16** %arrayidx135, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i16, i16* %104, i64 %idxprom133
  %105 = load i16, i16* %arrayidx136, align 2, !tbaa !7
  %conv137 = sext i16 %105 to i32
  %conv138 = sitofp i32 %conv137 to float
  %mul139 = fmul float %99, %conv138
  store float %mul139, float* %w, align 4, !tbaa !9
  %106 = load float, float* %f2, align 4, !tbaa !9
  %107 = load float, float* %w, align 4, !tbaa !9
  %sub140 = fsub float %106, %107
  store float %sub140, float* %f3, align 4, !tbaa !9
  %108 = load float, float* %f2, align 4, !tbaa !9
  %109 = load float, float* %w, align 4, !tbaa !9
  %add141 = fadd float %108, %109
  store float %add141, float* %f2, align 4, !tbaa !9
  %110 = load float, float* %f0, align 4, !tbaa !9
  %111 = load float, float* %f2, align 4, !tbaa !9
  %add142 = fadd float %110, %111
  %112 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds float, float* %112, i64 128
  store float %add142, float* %arrayidx143, align 4, !tbaa !9
  %113 = load float, float* %f0, align 4, !tbaa !9
  %114 = load float, float* %f2, align 4, !tbaa !9
  %sub144 = fsub float %113, %114
  %115 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds float, float* %115, i64 130
  store float %sub144, float* %arrayidx145, align 4, !tbaa !9
  %116 = load float, float* %f1, align 4, !tbaa !9
  %117 = load float, float* %f3, align 4, !tbaa !9
  %add146 = fadd float %116, %117
  %118 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds float, float* %118, i64 129
  store float %add146, float* %arrayidx147, align 4, !tbaa !9
  %119 = load float, float* %f1, align 4, !tbaa !9
  %120 = load float, float* %f3, align 4, !tbaa !9
  %sub148 = fsub float %119, %120
  %121 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds float, float* %121, i64 131
  store float %sub148, float* %arrayidx149, align 4, !tbaa !9
  %122 = bitcast float* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast float* %f3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast float* %f2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast float* %f1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast float* %f0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %127 = load i16, i16* %j, align 2, !tbaa !7
  %dec = add i16 %127, -1
  store i16 %dec, i16* %j, align 2, !tbaa !7
  %conv150 = sext i16 %dec to i32
  %cmp151 = icmp sge i32 %conv150, 0
  br i1 %cmp151, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.615

if.else:                                          ; preds = %for.body
  %128 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %cmp153 = icmp eq i32 %128, 2
  br i1 %cmp153, label %if.then.155, label %if.else.385

if.then.155:                                      ; preds = %if.else
  br label %do.body.156

do.body.156:                                      ; preds = %do.cond.379, %if.then.155
  %129 = bitcast float* %f0157 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %130 = bitcast float* %f1158 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  %131 = bitcast float* %f2159 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  %132 = bitcast float* %f3160 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  %133 = bitcast float* %w161 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  %134 = load i16, i16* %j, align 2, !tbaa !7
  %conv162 = sext i16 %134 to i32
  %shl163 = shl i32 %conv162, 2
  %idxprom164 = sext i32 %shl163 to i64
  %arrayidx165 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i64 %idxprom164
  %135 = load i16, i16* %arrayidx165, align 2, !tbaa !7
  store i16 %135, i16* %i, align 2, !tbaa !7
  %136 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom166 = sext i16 %136 to i64
  %arrayidx167 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom166
  %137 = load float, float* %arrayidx167, align 4, !tbaa !9
  %138 = load i16, i16* %i, align 2, !tbaa !7
  %conv168 = sext i16 %138 to i32
  %139 = load i16, i16* %k, align 2, !tbaa !7
  %conv169 = sext i16 %139 to i32
  %add170 = add nsw i32 %conv168, %conv169
  %idxprom171 = sext i32 %add170 to i64
  %140 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i16*, i16** %140, i64 0
  %141 = load i16*, i16** %arrayidx172, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i16, i16* %141, i64 %idxprom171
  %142 = load i16, i16* %arrayidx173, align 2, !tbaa !7
  %conv174 = sext i16 %142 to i32
  %143 = load i16, i16* %i, align 2, !tbaa !7
  %conv175 = sext i16 %143 to i32
  %144 = load i16, i16* %k, align 2, !tbaa !7
  %conv176 = sext i16 %144 to i32
  %add177 = add nsw i32 %conv175, %conv176
  %idxprom178 = sext i32 %add177 to i64
  %145 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i16*, i16** %145, i64 1
  %146 = load i16*, i16** %arrayidx179, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i16, i16* %146, i64 %idxprom178
  %147 = load i16, i16* %arrayidx180, align 2, !tbaa !7
  %conv181 = sext i16 %147 to i32
  %add182 = add nsw i32 %conv174, %conv181
  %conv183 = sitofp i32 %add182 to float
  %mul184 = fmul float 0x3FE6A09E60000000, %conv183
  %mul185 = fmul float %137, %mul184
  store float %mul185, float* %f0157, align 4, !tbaa !9
  %148 = load i16, i16* %i, align 2, !tbaa !7
  %conv186 = sext i16 %148 to i32
  %sub187 = sub nsw i32 127, %conv186
  %idxprom188 = sext i32 %sub187 to i64
  %arrayidx189 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom188
  %149 = load float, float* %arrayidx189, align 4, !tbaa !9
  %150 = load i16, i16* %i, align 2, !tbaa !7
  %conv190 = sext i16 %150 to i32
  %151 = load i16, i16* %k, align 2, !tbaa !7
  %conv191 = sext i16 %151 to i32
  %add192 = add nsw i32 %conv190, %conv191
  %add193 = add nsw i32 %add192, 128
  %idxprom194 = sext i32 %add193 to i64
  %152 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i16*, i16** %152, i64 0
  %153 = load i16*, i16** %arrayidx195, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i16, i16* %153, i64 %idxprom194
  %154 = load i16, i16* %arrayidx196, align 2, !tbaa !7
  %conv197 = sext i16 %154 to i32
  %155 = load i16, i16* %i, align 2, !tbaa !7
  %conv198 = sext i16 %155 to i32
  %156 = load i16, i16* %k, align 2, !tbaa !7
  %conv199 = sext i16 %156 to i32
  %add200 = add nsw i32 %conv198, %conv199
  %add201 = add nsw i32 %add200, 128
  %idxprom202 = sext i32 %add201 to i64
  %157 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i16*, i16** %157, i64 1
  %158 = load i16*, i16** %arrayidx203, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i16, i16* %158, i64 %idxprom202
  %159 = load i16, i16* %arrayidx204, align 2, !tbaa !7
  %conv205 = sext i16 %159 to i32
  %add206 = add nsw i32 %conv197, %conv205
  %conv207 = sitofp i32 %add206 to float
  %mul208 = fmul float 0x3FE6A09E60000000, %conv207
  %mul209 = fmul float %149, %mul208
  store float %mul209, float* %w161, align 4, !tbaa !9
  %160 = load float, float* %f0157, align 4, !tbaa !9
  %161 = load float, float* %w161, align 4, !tbaa !9
  %sub210 = fsub float %160, %161
  store float %sub210, float* %f1158, align 4, !tbaa !9
  %162 = load float, float* %f0157, align 4, !tbaa !9
  %163 = load float, float* %w161, align 4, !tbaa !9
  %add211 = fadd float %162, %163
  store float %add211, float* %f0157, align 4, !tbaa !9
  %164 = load i16, i16* %i, align 2, !tbaa !7
  %conv212 = sext i16 %164 to i32
  %add213 = add nsw i32 %conv212, 64
  %idxprom214 = sext i32 %add213 to i64
  %arrayidx215 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom214
  %165 = load float, float* %arrayidx215, align 4, !tbaa !9
  %166 = load i16, i16* %i, align 2, !tbaa !7
  %conv216 = sext i16 %166 to i32
  %167 = load i16, i16* %k, align 2, !tbaa !7
  %conv217 = sext i16 %167 to i32
  %add218 = add nsw i32 %conv216, %conv217
  %add219 = add nsw i32 %add218, 64
  %idxprom220 = sext i32 %add219 to i64
  %168 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i16*, i16** %168, i64 0
  %169 = load i16*, i16** %arrayidx221, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i16, i16* %169, i64 %idxprom220
  %170 = load i16, i16* %arrayidx222, align 2, !tbaa !7
  %conv223 = sext i16 %170 to i32
  %171 = load i16, i16* %i, align 2, !tbaa !7
  %conv224 = sext i16 %171 to i32
  %172 = load i16, i16* %k, align 2, !tbaa !7
  %conv225 = sext i16 %172 to i32
  %add226 = add nsw i32 %conv224, %conv225
  %add227 = add nsw i32 %add226, 64
  %idxprom228 = sext i32 %add227 to i64
  %173 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i16*, i16** %173, i64 1
  %174 = load i16*, i16** %arrayidx229, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds i16, i16* %174, i64 %idxprom228
  %175 = load i16, i16* %arrayidx230, align 2, !tbaa !7
  %conv231 = sext i16 %175 to i32
  %add232 = add nsw i32 %conv223, %conv231
  %conv233 = sitofp i32 %add232 to float
  %mul234 = fmul float 0x3FE6A09E60000000, %conv233
  %mul235 = fmul float %165, %mul234
  store float %mul235, float* %f2159, align 4, !tbaa !9
  %176 = load i16, i16* %i, align 2, !tbaa !7
  %conv236 = sext i16 %176 to i32
  %sub237 = sub nsw i32 63, %conv236
  %idxprom238 = sext i32 %sub237 to i64
  %arrayidx239 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom238
  %177 = load float, float* %arrayidx239, align 4, !tbaa !9
  %178 = load i16, i16* %i, align 2, !tbaa !7
  %conv240 = sext i16 %178 to i32
  %179 = load i16, i16* %k, align 2, !tbaa !7
  %conv241 = sext i16 %179 to i32
  %add242 = add nsw i32 %conv240, %conv241
  %add243 = add nsw i32 %add242, 192
  %idxprom244 = sext i32 %add243 to i64
  %180 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i16*, i16** %180, i64 0
  %181 = load i16*, i16** %arrayidx245, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i16, i16* %181, i64 %idxprom244
  %182 = load i16, i16* %arrayidx246, align 2, !tbaa !7
  %conv247 = sext i16 %182 to i32
  %183 = load i16, i16* %i, align 2, !tbaa !7
  %conv248 = sext i16 %183 to i32
  %184 = load i16, i16* %k, align 2, !tbaa !7
  %conv249 = sext i16 %184 to i32
  %add250 = add nsw i32 %conv248, %conv249
  %add251 = add nsw i32 %add250, 192
  %idxprom252 = sext i32 %add251 to i64
  %185 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx253 = getelementptr inbounds i16*, i16** %185, i64 1
  %186 = load i16*, i16** %arrayidx253, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i16, i16* %186, i64 %idxprom252
  %187 = load i16, i16* %arrayidx254, align 2, !tbaa !7
  %conv255 = sext i16 %187 to i32
  %add256 = add nsw i32 %conv247, %conv255
  %conv257 = sitofp i32 %add256 to float
  %mul258 = fmul float 0x3FE6A09E60000000, %conv257
  %mul259 = fmul float %177, %mul258
  store float %mul259, float* %w161, align 4, !tbaa !9
  %188 = load float, float* %f2159, align 4, !tbaa !9
  %189 = load float, float* %w161, align 4, !tbaa !9
  %sub260 = fsub float %188, %189
  store float %sub260, float* %f3160, align 4, !tbaa !9
  %190 = load float, float* %f2159, align 4, !tbaa !9
  %191 = load float, float* %w161, align 4, !tbaa !9
  %add261 = fadd float %190, %191
  store float %add261, float* %f2159, align 4, !tbaa !9
  %192 = load float*, float** %x, align 8, !tbaa !1
  %add.ptr262 = getelementptr inbounds float, float* %192, i64 -4
  store float* %add.ptr262, float** %x, align 8, !tbaa !1
  %193 = load float, float* %f0157, align 4, !tbaa !9
  %194 = load float, float* %f2159, align 4, !tbaa !9
  %add263 = fadd float %193, %194
  %195 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds float, float* %195, i64 0
  store float %add263, float* %arrayidx264, align 4, !tbaa !9
  %196 = load float, float* %f0157, align 4, !tbaa !9
  %197 = load float, float* %f2159, align 4, !tbaa !9
  %sub265 = fsub float %196, %197
  %198 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds float, float* %198, i64 2
  store float %sub265, float* %arrayidx266, align 4, !tbaa !9
  %199 = load float, float* %f1158, align 4, !tbaa !9
  %200 = load float, float* %f3160, align 4, !tbaa !9
  %add267 = fadd float %199, %200
  %201 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds float, float* %201, i64 1
  store float %add267, float* %arrayidx268, align 4, !tbaa !9
  %202 = load float, float* %f1158, align 4, !tbaa !9
  %203 = load float, float* %f3160, align 4, !tbaa !9
  %sub269 = fsub float %202, %203
  %204 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx270 = getelementptr inbounds float, float* %204, i64 3
  store float %sub269, float* %arrayidx270, align 4, !tbaa !9
  %205 = load i16, i16* %i, align 2, !tbaa !7
  %conv271 = sext i16 %205 to i32
  %add272 = add nsw i32 %conv271, 1
  %idxprom273 = sext i32 %add272 to i64
  %arrayidx274 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom273
  %206 = load float, float* %arrayidx274, align 4, !tbaa !9
  %207 = load i16, i16* %i, align 2, !tbaa !7
  %conv275 = sext i16 %207 to i32
  %208 = load i16, i16* %k, align 2, !tbaa !7
  %conv276 = sext i16 %208 to i32
  %add277 = add nsw i32 %conv275, %conv276
  %add278 = add nsw i32 %add277, 1
  %idxprom279 = sext i32 %add278 to i64
  %209 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx280 = getelementptr inbounds i16*, i16** %209, i64 0
  %210 = load i16*, i16** %arrayidx280, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i16, i16* %210, i64 %idxprom279
  %211 = load i16, i16* %arrayidx281, align 2, !tbaa !7
  %conv282 = sext i16 %211 to i32
  %212 = load i16, i16* %i, align 2, !tbaa !7
  %conv283 = sext i16 %212 to i32
  %213 = load i16, i16* %k, align 2, !tbaa !7
  %conv284 = sext i16 %213 to i32
  %add285 = add nsw i32 %conv283, %conv284
  %add286 = add nsw i32 %add285, 1
  %idxprom287 = sext i32 %add286 to i64
  %214 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds i16*, i16** %214, i64 1
  %215 = load i16*, i16** %arrayidx288, align 8, !tbaa !1
  %arrayidx289 = getelementptr inbounds i16, i16* %215, i64 %idxprom287
  %216 = load i16, i16* %arrayidx289, align 2, !tbaa !7
  %conv290 = sext i16 %216 to i32
  %add291 = add nsw i32 %conv282, %conv290
  %conv292 = sitofp i32 %add291 to float
  %mul293 = fmul float 0x3FE6A09E60000000, %conv292
  %mul294 = fmul float %206, %mul293
  store float %mul294, float* %f0157, align 4, !tbaa !9
  %217 = load i16, i16* %i, align 2, !tbaa !7
  %conv295 = sext i16 %217 to i32
  %sub296 = sub nsw i32 126, %conv295
  %idxprom297 = sext i32 %sub296 to i64
  %arrayidx298 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom297
  %218 = load float, float* %arrayidx298, align 4, !tbaa !9
  %219 = load i16, i16* %i, align 2, !tbaa !7
  %conv299 = sext i16 %219 to i32
  %220 = load i16, i16* %k, align 2, !tbaa !7
  %conv300 = sext i16 %220 to i32
  %add301 = add nsw i32 %conv299, %conv300
  %add302 = add nsw i32 %add301, 129
  %idxprom303 = sext i32 %add302 to i64
  %221 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx304 = getelementptr inbounds i16*, i16** %221, i64 0
  %222 = load i16*, i16** %arrayidx304, align 8, !tbaa !1
  %arrayidx305 = getelementptr inbounds i16, i16* %222, i64 %idxprom303
  %223 = load i16, i16* %arrayidx305, align 2, !tbaa !7
  %conv306 = sext i16 %223 to i32
  %224 = load i16, i16* %i, align 2, !tbaa !7
  %conv307 = sext i16 %224 to i32
  %225 = load i16, i16* %k, align 2, !tbaa !7
  %conv308 = sext i16 %225 to i32
  %add309 = add nsw i32 %conv307, %conv308
  %add310 = add nsw i32 %add309, 129
  %idxprom311 = sext i32 %add310 to i64
  %226 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx312 = getelementptr inbounds i16*, i16** %226, i64 1
  %227 = load i16*, i16** %arrayidx312, align 8, !tbaa !1
  %arrayidx313 = getelementptr inbounds i16, i16* %227, i64 %idxprom311
  %228 = load i16, i16* %arrayidx313, align 2, !tbaa !7
  %conv314 = sext i16 %228 to i32
  %add315 = add nsw i32 %conv306, %conv314
  %conv316 = sitofp i32 %add315 to float
  %mul317 = fmul float 0x3FE6A09E60000000, %conv316
  %mul318 = fmul float %218, %mul317
  store float %mul318, float* %w161, align 4, !tbaa !9
  %229 = load float, float* %f0157, align 4, !tbaa !9
  %230 = load float, float* %w161, align 4, !tbaa !9
  %sub319 = fsub float %229, %230
  store float %sub319, float* %f1158, align 4, !tbaa !9
  %231 = load float, float* %f0157, align 4, !tbaa !9
  %232 = load float, float* %w161, align 4, !tbaa !9
  %add320 = fadd float %231, %232
  store float %add320, float* %f0157, align 4, !tbaa !9
  %233 = load i16, i16* %i, align 2, !tbaa !7
  %conv321 = sext i16 %233 to i32
  %add322 = add nsw i32 %conv321, 65
  %idxprom323 = sext i32 %add322 to i64
  %arrayidx324 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom323
  %234 = load float, float* %arrayidx324, align 4, !tbaa !9
  %235 = load i16, i16* %i, align 2, !tbaa !7
  %conv325 = sext i16 %235 to i32
  %236 = load i16, i16* %k, align 2, !tbaa !7
  %conv326 = sext i16 %236 to i32
  %add327 = add nsw i32 %conv325, %conv326
  %add328 = add nsw i32 %add327, 65
  %idxprom329 = sext i32 %add328 to i64
  %237 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx330 = getelementptr inbounds i16*, i16** %237, i64 0
  %238 = load i16*, i16** %arrayidx330, align 8, !tbaa !1
  %arrayidx331 = getelementptr inbounds i16, i16* %238, i64 %idxprom329
  %239 = load i16, i16* %arrayidx331, align 2, !tbaa !7
  %conv332 = sext i16 %239 to i32
  %240 = load i16, i16* %i, align 2, !tbaa !7
  %conv333 = sext i16 %240 to i32
  %241 = load i16, i16* %k, align 2, !tbaa !7
  %conv334 = sext i16 %241 to i32
  %add335 = add nsw i32 %conv333, %conv334
  %add336 = add nsw i32 %add335, 65
  %idxprom337 = sext i32 %add336 to i64
  %242 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx338 = getelementptr inbounds i16*, i16** %242, i64 1
  %243 = load i16*, i16** %arrayidx338, align 8, !tbaa !1
  %arrayidx339 = getelementptr inbounds i16, i16* %243, i64 %idxprom337
  %244 = load i16, i16* %arrayidx339, align 2, !tbaa !7
  %conv340 = sext i16 %244 to i32
  %add341 = add nsw i32 %conv332, %conv340
  %conv342 = sitofp i32 %add341 to float
  %mul343 = fmul float 0x3FE6A09E60000000, %conv342
  %mul344 = fmul float %234, %mul343
  store float %mul344, float* %f2159, align 4, !tbaa !9
  %245 = load i16, i16* %i, align 2, !tbaa !7
  %conv345 = sext i16 %245 to i32
  %sub346 = sub nsw i32 62, %conv345
  %idxprom347 = sext i32 %sub346 to i64
  %arrayidx348 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom347
  %246 = load float, float* %arrayidx348, align 4, !tbaa !9
  %247 = load i16, i16* %i, align 2, !tbaa !7
  %conv349 = sext i16 %247 to i32
  %248 = load i16, i16* %k, align 2, !tbaa !7
  %conv350 = sext i16 %248 to i32
  %add351 = add nsw i32 %conv349, %conv350
  %add352 = add nsw i32 %add351, 193
  %idxprom353 = sext i32 %add352 to i64
  %249 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx354 = getelementptr inbounds i16*, i16** %249, i64 0
  %250 = load i16*, i16** %arrayidx354, align 8, !tbaa !1
  %arrayidx355 = getelementptr inbounds i16, i16* %250, i64 %idxprom353
  %251 = load i16, i16* %arrayidx355, align 2, !tbaa !7
  %conv356 = sext i16 %251 to i32
  %252 = load i16, i16* %i, align 2, !tbaa !7
  %conv357 = sext i16 %252 to i32
  %253 = load i16, i16* %k, align 2, !tbaa !7
  %conv358 = sext i16 %253 to i32
  %add359 = add nsw i32 %conv357, %conv358
  %add360 = add nsw i32 %add359, 193
  %idxprom361 = sext i32 %add360 to i64
  %254 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx362 = getelementptr inbounds i16*, i16** %254, i64 1
  %255 = load i16*, i16** %arrayidx362, align 8, !tbaa !1
  %arrayidx363 = getelementptr inbounds i16, i16* %255, i64 %idxprom361
  %256 = load i16, i16* %arrayidx363, align 2, !tbaa !7
  %conv364 = sext i16 %256 to i32
  %add365 = add nsw i32 %conv356, %conv364
  %conv366 = sitofp i32 %add365 to float
  %mul367 = fmul float 0x3FE6A09E60000000, %conv366
  %mul368 = fmul float %246, %mul367
  store float %mul368, float* %w161, align 4, !tbaa !9
  %257 = load float, float* %f2159, align 4, !tbaa !9
  %258 = load float, float* %w161, align 4, !tbaa !9
  %sub369 = fsub float %257, %258
  store float %sub369, float* %f3160, align 4, !tbaa !9
  %259 = load float, float* %f2159, align 4, !tbaa !9
  %260 = load float, float* %w161, align 4, !tbaa !9
  %add370 = fadd float %259, %260
  store float %add370, float* %f2159, align 4, !tbaa !9
  %261 = load float, float* %f0157, align 4, !tbaa !9
  %262 = load float, float* %f2159, align 4, !tbaa !9
  %add371 = fadd float %261, %262
  %263 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx372 = getelementptr inbounds float, float* %263, i64 128
  store float %add371, float* %arrayidx372, align 4, !tbaa !9
  %264 = load float, float* %f0157, align 4, !tbaa !9
  %265 = load float, float* %f2159, align 4, !tbaa !9
  %sub373 = fsub float %264, %265
  %266 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx374 = getelementptr inbounds float, float* %266, i64 130
  store float %sub373, float* %arrayidx374, align 4, !tbaa !9
  %267 = load float, float* %f1158, align 4, !tbaa !9
  %268 = load float, float* %f3160, align 4, !tbaa !9
  %add375 = fadd float %267, %268
  %269 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx376 = getelementptr inbounds float, float* %269, i64 129
  store float %add375, float* %arrayidx376, align 4, !tbaa !9
  %270 = load float, float* %f1158, align 4, !tbaa !9
  %271 = load float, float* %f3160, align 4, !tbaa !9
  %sub377 = fsub float %270, %271
  %272 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx378 = getelementptr inbounds float, float* %272, i64 131
  store float %sub377, float* %arrayidx378, align 4, !tbaa !9
  %273 = bitcast float* %w161 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = bitcast float* %f3160 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast float* %f2159 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast float* %f1158 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast float* %f0157 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  br label %do.cond.379

do.cond.379:                                      ; preds = %do.body.156
  %278 = load i16, i16* %j, align 2, !tbaa !7
  %dec380 = add i16 %278, -1
  store i16 %dec380, i16* %j, align 2, !tbaa !7
  %conv381 = sext i16 %dec380 to i32
  %cmp382 = icmp sge i32 %conv381, 0
  br i1 %cmp382, label %do.body.156, label %do.end.384

do.end.384:                                       ; preds = %do.cond.379
  br label %if.end

if.else.385:                                      ; preds = %if.else
  br label %do.body.386

do.body.386:                                      ; preds = %do.cond.609, %if.else.385
  %279 = bitcast float* %f0387 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %279) #1
  %280 = bitcast float* %f1388 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %280) #1
  %281 = bitcast float* %f2389 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %281) #1
  %282 = bitcast float* %f3390 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #1
  %283 = bitcast float* %w391 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %283) #1
  %284 = load i16, i16* %j, align 2, !tbaa !7
  %conv392 = sext i16 %284 to i32
  %shl393 = shl i32 %conv392, 2
  %idxprom394 = sext i32 %shl393 to i64
  %arrayidx395 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i64 %idxprom394
  %285 = load i16, i16* %arrayidx395, align 2, !tbaa !7
  store i16 %285, i16* %i, align 2, !tbaa !7
  %286 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom396 = sext i16 %286 to i64
  %arrayidx397 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom396
  %287 = load float, float* %arrayidx397, align 4, !tbaa !9
  %288 = load i16, i16* %i, align 2, !tbaa !7
  %conv398 = sext i16 %288 to i32
  %289 = load i16, i16* %k, align 2, !tbaa !7
  %conv399 = sext i16 %289 to i32
  %add400 = add nsw i32 %conv398, %conv399
  %idxprom401 = sext i32 %add400 to i64
  %290 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx402 = getelementptr inbounds i16*, i16** %290, i64 0
  %291 = load i16*, i16** %arrayidx402, align 8, !tbaa !1
  %arrayidx403 = getelementptr inbounds i16, i16* %291, i64 %idxprom401
  %292 = load i16, i16* %arrayidx403, align 2, !tbaa !7
  %conv404 = sext i16 %292 to i32
  %293 = load i16, i16* %i, align 2, !tbaa !7
  %conv405 = sext i16 %293 to i32
  %294 = load i16, i16* %k, align 2, !tbaa !7
  %conv406 = sext i16 %294 to i32
  %add407 = add nsw i32 %conv405, %conv406
  %idxprom408 = sext i32 %add407 to i64
  %295 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx409 = getelementptr inbounds i16*, i16** %295, i64 1
  %296 = load i16*, i16** %arrayidx409, align 8, !tbaa !1
  %arrayidx410 = getelementptr inbounds i16, i16* %296, i64 %idxprom408
  %297 = load i16, i16* %arrayidx410, align 2, !tbaa !7
  %conv411 = sext i16 %297 to i32
  %sub412 = sub nsw i32 %conv404, %conv411
  %conv413 = sitofp i32 %sub412 to float
  %mul414 = fmul float 0x3FE6A09E60000000, %conv413
  %mul415 = fmul float %287, %mul414
  store float %mul415, float* %f0387, align 4, !tbaa !9
  %298 = load i16, i16* %i, align 2, !tbaa !7
  %conv416 = sext i16 %298 to i32
  %sub417 = sub nsw i32 127, %conv416
  %idxprom418 = sext i32 %sub417 to i64
  %arrayidx419 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom418
  %299 = load float, float* %arrayidx419, align 4, !tbaa !9
  %300 = load i16, i16* %i, align 2, !tbaa !7
  %conv420 = sext i16 %300 to i32
  %301 = load i16, i16* %k, align 2, !tbaa !7
  %conv421 = sext i16 %301 to i32
  %add422 = add nsw i32 %conv420, %conv421
  %add423 = add nsw i32 %add422, 128
  %idxprom424 = sext i32 %add423 to i64
  %302 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx425 = getelementptr inbounds i16*, i16** %302, i64 0
  %303 = load i16*, i16** %arrayidx425, align 8, !tbaa !1
  %arrayidx426 = getelementptr inbounds i16, i16* %303, i64 %idxprom424
  %304 = load i16, i16* %arrayidx426, align 2, !tbaa !7
  %conv427 = sext i16 %304 to i32
  %305 = load i16, i16* %i, align 2, !tbaa !7
  %conv428 = sext i16 %305 to i32
  %306 = load i16, i16* %k, align 2, !tbaa !7
  %conv429 = sext i16 %306 to i32
  %add430 = add nsw i32 %conv428, %conv429
  %add431 = add nsw i32 %add430, 128
  %idxprom432 = sext i32 %add431 to i64
  %307 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx433 = getelementptr inbounds i16*, i16** %307, i64 1
  %308 = load i16*, i16** %arrayidx433, align 8, !tbaa !1
  %arrayidx434 = getelementptr inbounds i16, i16* %308, i64 %idxprom432
  %309 = load i16, i16* %arrayidx434, align 2, !tbaa !7
  %conv435 = sext i16 %309 to i32
  %sub436 = sub nsw i32 %conv427, %conv435
  %conv437 = sitofp i32 %sub436 to float
  %mul438 = fmul float 0x3FE6A09E60000000, %conv437
  %mul439 = fmul float %299, %mul438
  store float %mul439, float* %w391, align 4, !tbaa !9
  %310 = load float, float* %f0387, align 4, !tbaa !9
  %311 = load float, float* %w391, align 4, !tbaa !9
  %sub440 = fsub float %310, %311
  store float %sub440, float* %f1388, align 4, !tbaa !9
  %312 = load float, float* %f0387, align 4, !tbaa !9
  %313 = load float, float* %w391, align 4, !tbaa !9
  %add441 = fadd float %312, %313
  store float %add441, float* %f0387, align 4, !tbaa !9
  %314 = load i16, i16* %i, align 2, !tbaa !7
  %conv442 = sext i16 %314 to i32
  %add443 = add nsw i32 %conv442, 64
  %idxprom444 = sext i32 %add443 to i64
  %arrayidx445 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom444
  %315 = load float, float* %arrayidx445, align 4, !tbaa !9
  %316 = load i16, i16* %i, align 2, !tbaa !7
  %conv446 = sext i16 %316 to i32
  %317 = load i16, i16* %k, align 2, !tbaa !7
  %conv447 = sext i16 %317 to i32
  %add448 = add nsw i32 %conv446, %conv447
  %add449 = add nsw i32 %add448, 64
  %idxprom450 = sext i32 %add449 to i64
  %318 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx451 = getelementptr inbounds i16*, i16** %318, i64 0
  %319 = load i16*, i16** %arrayidx451, align 8, !tbaa !1
  %arrayidx452 = getelementptr inbounds i16, i16* %319, i64 %idxprom450
  %320 = load i16, i16* %arrayidx452, align 2, !tbaa !7
  %conv453 = sext i16 %320 to i32
  %321 = load i16, i16* %i, align 2, !tbaa !7
  %conv454 = sext i16 %321 to i32
  %322 = load i16, i16* %k, align 2, !tbaa !7
  %conv455 = sext i16 %322 to i32
  %add456 = add nsw i32 %conv454, %conv455
  %add457 = add nsw i32 %add456, 64
  %idxprom458 = sext i32 %add457 to i64
  %323 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx459 = getelementptr inbounds i16*, i16** %323, i64 1
  %324 = load i16*, i16** %arrayidx459, align 8, !tbaa !1
  %arrayidx460 = getelementptr inbounds i16, i16* %324, i64 %idxprom458
  %325 = load i16, i16* %arrayidx460, align 2, !tbaa !7
  %conv461 = sext i16 %325 to i32
  %sub462 = sub nsw i32 %conv453, %conv461
  %conv463 = sitofp i32 %sub462 to float
  %mul464 = fmul float 0x3FE6A09E60000000, %conv463
  %mul465 = fmul float %315, %mul464
  store float %mul465, float* %f2389, align 4, !tbaa !9
  %326 = load i16, i16* %i, align 2, !tbaa !7
  %conv466 = sext i16 %326 to i32
  %sub467 = sub nsw i32 63, %conv466
  %idxprom468 = sext i32 %sub467 to i64
  %arrayidx469 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom468
  %327 = load float, float* %arrayidx469, align 4, !tbaa !9
  %328 = load i16, i16* %i, align 2, !tbaa !7
  %conv470 = sext i16 %328 to i32
  %329 = load i16, i16* %k, align 2, !tbaa !7
  %conv471 = sext i16 %329 to i32
  %add472 = add nsw i32 %conv470, %conv471
  %add473 = add nsw i32 %add472, 192
  %idxprom474 = sext i32 %add473 to i64
  %330 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx475 = getelementptr inbounds i16*, i16** %330, i64 0
  %331 = load i16*, i16** %arrayidx475, align 8, !tbaa !1
  %arrayidx476 = getelementptr inbounds i16, i16* %331, i64 %idxprom474
  %332 = load i16, i16* %arrayidx476, align 2, !tbaa !7
  %conv477 = sext i16 %332 to i32
  %333 = load i16, i16* %i, align 2, !tbaa !7
  %conv478 = sext i16 %333 to i32
  %334 = load i16, i16* %k, align 2, !tbaa !7
  %conv479 = sext i16 %334 to i32
  %add480 = add nsw i32 %conv478, %conv479
  %add481 = add nsw i32 %add480, 192
  %idxprom482 = sext i32 %add481 to i64
  %335 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx483 = getelementptr inbounds i16*, i16** %335, i64 1
  %336 = load i16*, i16** %arrayidx483, align 8, !tbaa !1
  %arrayidx484 = getelementptr inbounds i16, i16* %336, i64 %idxprom482
  %337 = load i16, i16* %arrayidx484, align 2, !tbaa !7
  %conv485 = sext i16 %337 to i32
  %sub486 = sub nsw i32 %conv477, %conv485
  %conv487 = sitofp i32 %sub486 to float
  %mul488 = fmul float 0x3FE6A09E60000000, %conv487
  %mul489 = fmul float %327, %mul488
  store float %mul489, float* %w391, align 4, !tbaa !9
  %338 = load float, float* %f2389, align 4, !tbaa !9
  %339 = load float, float* %w391, align 4, !tbaa !9
  %sub490 = fsub float %338, %339
  store float %sub490, float* %f3390, align 4, !tbaa !9
  %340 = load float, float* %f2389, align 4, !tbaa !9
  %341 = load float, float* %w391, align 4, !tbaa !9
  %add491 = fadd float %340, %341
  store float %add491, float* %f2389, align 4, !tbaa !9
  %342 = load float*, float** %x, align 8, !tbaa !1
  %add.ptr492 = getelementptr inbounds float, float* %342, i64 -4
  store float* %add.ptr492, float** %x, align 8, !tbaa !1
  %343 = load float, float* %f0387, align 4, !tbaa !9
  %344 = load float, float* %f2389, align 4, !tbaa !9
  %add493 = fadd float %343, %344
  %345 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx494 = getelementptr inbounds float, float* %345, i64 0
  store float %add493, float* %arrayidx494, align 4, !tbaa !9
  %346 = load float, float* %f0387, align 4, !tbaa !9
  %347 = load float, float* %f2389, align 4, !tbaa !9
  %sub495 = fsub float %346, %347
  %348 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx496 = getelementptr inbounds float, float* %348, i64 2
  store float %sub495, float* %arrayidx496, align 4, !tbaa !9
  %349 = load float, float* %f1388, align 4, !tbaa !9
  %350 = load float, float* %f3390, align 4, !tbaa !9
  %add497 = fadd float %349, %350
  %351 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx498 = getelementptr inbounds float, float* %351, i64 1
  store float %add497, float* %arrayidx498, align 4, !tbaa !9
  %352 = load float, float* %f1388, align 4, !tbaa !9
  %353 = load float, float* %f3390, align 4, !tbaa !9
  %sub499 = fsub float %352, %353
  %354 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx500 = getelementptr inbounds float, float* %354, i64 3
  store float %sub499, float* %arrayidx500, align 4, !tbaa !9
  %355 = load i16, i16* %i, align 2, !tbaa !7
  %conv501 = sext i16 %355 to i32
  %add502 = add nsw i32 %conv501, 1
  %idxprom503 = sext i32 %add502 to i64
  %arrayidx504 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom503
  %356 = load float, float* %arrayidx504, align 4, !tbaa !9
  %357 = load i16, i16* %i, align 2, !tbaa !7
  %conv505 = sext i16 %357 to i32
  %358 = load i16, i16* %k, align 2, !tbaa !7
  %conv506 = sext i16 %358 to i32
  %add507 = add nsw i32 %conv505, %conv506
  %add508 = add nsw i32 %add507, 1
  %idxprom509 = sext i32 %add508 to i64
  %359 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx510 = getelementptr inbounds i16*, i16** %359, i64 0
  %360 = load i16*, i16** %arrayidx510, align 8, !tbaa !1
  %arrayidx511 = getelementptr inbounds i16, i16* %360, i64 %idxprom509
  %361 = load i16, i16* %arrayidx511, align 2, !tbaa !7
  %conv512 = sext i16 %361 to i32
  %362 = load i16, i16* %i, align 2, !tbaa !7
  %conv513 = sext i16 %362 to i32
  %363 = load i16, i16* %k, align 2, !tbaa !7
  %conv514 = sext i16 %363 to i32
  %add515 = add nsw i32 %conv513, %conv514
  %add516 = add nsw i32 %add515, 1
  %idxprom517 = sext i32 %add516 to i64
  %364 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx518 = getelementptr inbounds i16*, i16** %364, i64 1
  %365 = load i16*, i16** %arrayidx518, align 8, !tbaa !1
  %arrayidx519 = getelementptr inbounds i16, i16* %365, i64 %idxprom517
  %366 = load i16, i16* %arrayidx519, align 2, !tbaa !7
  %conv520 = sext i16 %366 to i32
  %sub521 = sub nsw i32 %conv512, %conv520
  %conv522 = sitofp i32 %sub521 to float
  %mul523 = fmul float 0x3FE6A09E60000000, %conv522
  %mul524 = fmul float %356, %mul523
  store float %mul524, float* %f0387, align 4, !tbaa !9
  %367 = load i16, i16* %i, align 2, !tbaa !7
  %conv525 = sext i16 %367 to i32
  %sub526 = sub nsw i32 126, %conv525
  %idxprom527 = sext i32 %sub526 to i64
  %arrayidx528 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom527
  %368 = load float, float* %arrayidx528, align 4, !tbaa !9
  %369 = load i16, i16* %i, align 2, !tbaa !7
  %conv529 = sext i16 %369 to i32
  %370 = load i16, i16* %k, align 2, !tbaa !7
  %conv530 = sext i16 %370 to i32
  %add531 = add nsw i32 %conv529, %conv530
  %add532 = add nsw i32 %add531, 129
  %idxprom533 = sext i32 %add532 to i64
  %371 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx534 = getelementptr inbounds i16*, i16** %371, i64 0
  %372 = load i16*, i16** %arrayidx534, align 8, !tbaa !1
  %arrayidx535 = getelementptr inbounds i16, i16* %372, i64 %idxprom533
  %373 = load i16, i16* %arrayidx535, align 2, !tbaa !7
  %conv536 = sext i16 %373 to i32
  %374 = load i16, i16* %i, align 2, !tbaa !7
  %conv537 = sext i16 %374 to i32
  %375 = load i16, i16* %k, align 2, !tbaa !7
  %conv538 = sext i16 %375 to i32
  %add539 = add nsw i32 %conv537, %conv538
  %add540 = add nsw i32 %add539, 129
  %idxprom541 = sext i32 %add540 to i64
  %376 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx542 = getelementptr inbounds i16*, i16** %376, i64 1
  %377 = load i16*, i16** %arrayidx542, align 8, !tbaa !1
  %arrayidx543 = getelementptr inbounds i16, i16* %377, i64 %idxprom541
  %378 = load i16, i16* %arrayidx543, align 2, !tbaa !7
  %conv544 = sext i16 %378 to i32
  %sub545 = sub nsw i32 %conv536, %conv544
  %conv546 = sitofp i32 %sub545 to float
  %mul547 = fmul float 0x3FE6A09E60000000, %conv546
  %mul548 = fmul float %368, %mul547
  store float %mul548, float* %w391, align 4, !tbaa !9
  %379 = load float, float* %f0387, align 4, !tbaa !9
  %380 = load float, float* %w391, align 4, !tbaa !9
  %sub549 = fsub float %379, %380
  store float %sub549, float* %f1388, align 4, !tbaa !9
  %381 = load float, float* %f0387, align 4, !tbaa !9
  %382 = load float, float* %w391, align 4, !tbaa !9
  %add550 = fadd float %381, %382
  store float %add550, float* %f0387, align 4, !tbaa !9
  %383 = load i16, i16* %i, align 2, !tbaa !7
  %conv551 = sext i16 %383 to i32
  %add552 = add nsw i32 %conv551, 65
  %idxprom553 = sext i32 %add552 to i64
  %arrayidx554 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom553
  %384 = load float, float* %arrayidx554, align 4, !tbaa !9
  %385 = load i16, i16* %i, align 2, !tbaa !7
  %conv555 = sext i16 %385 to i32
  %386 = load i16, i16* %k, align 2, !tbaa !7
  %conv556 = sext i16 %386 to i32
  %add557 = add nsw i32 %conv555, %conv556
  %add558 = add nsw i32 %add557, 65
  %idxprom559 = sext i32 %add558 to i64
  %387 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx560 = getelementptr inbounds i16*, i16** %387, i64 0
  %388 = load i16*, i16** %arrayidx560, align 8, !tbaa !1
  %arrayidx561 = getelementptr inbounds i16, i16* %388, i64 %idxprom559
  %389 = load i16, i16* %arrayidx561, align 2, !tbaa !7
  %conv562 = sext i16 %389 to i32
  %390 = load i16, i16* %i, align 2, !tbaa !7
  %conv563 = sext i16 %390 to i32
  %391 = load i16, i16* %k, align 2, !tbaa !7
  %conv564 = sext i16 %391 to i32
  %add565 = add nsw i32 %conv563, %conv564
  %add566 = add nsw i32 %add565, 65
  %idxprom567 = sext i32 %add566 to i64
  %392 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx568 = getelementptr inbounds i16*, i16** %392, i64 1
  %393 = load i16*, i16** %arrayidx568, align 8, !tbaa !1
  %arrayidx569 = getelementptr inbounds i16, i16* %393, i64 %idxprom567
  %394 = load i16, i16* %arrayidx569, align 2, !tbaa !7
  %conv570 = sext i16 %394 to i32
  %sub571 = sub nsw i32 %conv562, %conv570
  %conv572 = sitofp i32 %sub571 to float
  %mul573 = fmul float 0x3FE6A09E60000000, %conv572
  %mul574 = fmul float %384, %mul573
  store float %mul574, float* %f2389, align 4, !tbaa !9
  %395 = load i16, i16* %i, align 2, !tbaa !7
  %conv575 = sext i16 %395 to i32
  %sub576 = sub nsw i32 62, %conv575
  %idxprom577 = sext i32 %sub576 to i64
  %arrayidx578 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom577
  %396 = load float, float* %arrayidx578, align 4, !tbaa !9
  %397 = load i16, i16* %i, align 2, !tbaa !7
  %conv579 = sext i16 %397 to i32
  %398 = load i16, i16* %k, align 2, !tbaa !7
  %conv580 = sext i16 %398 to i32
  %add581 = add nsw i32 %conv579, %conv580
  %add582 = add nsw i32 %add581, 193
  %idxprom583 = sext i32 %add582 to i64
  %399 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx584 = getelementptr inbounds i16*, i16** %399, i64 0
  %400 = load i16*, i16** %arrayidx584, align 8, !tbaa !1
  %arrayidx585 = getelementptr inbounds i16, i16* %400, i64 %idxprom583
  %401 = load i16, i16* %arrayidx585, align 2, !tbaa !7
  %conv586 = sext i16 %401 to i32
  %402 = load i16, i16* %i, align 2, !tbaa !7
  %conv587 = sext i16 %402 to i32
  %403 = load i16, i16* %k, align 2, !tbaa !7
  %conv588 = sext i16 %403 to i32
  %add589 = add nsw i32 %conv587, %conv588
  %add590 = add nsw i32 %add589, 193
  %idxprom591 = sext i32 %add590 to i64
  %404 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx592 = getelementptr inbounds i16*, i16** %404, i64 1
  %405 = load i16*, i16** %arrayidx592, align 8, !tbaa !1
  %arrayidx593 = getelementptr inbounds i16, i16* %405, i64 %idxprom591
  %406 = load i16, i16* %arrayidx593, align 2, !tbaa !7
  %conv594 = sext i16 %406 to i32
  %sub595 = sub nsw i32 %conv586, %conv594
  %conv596 = sitofp i32 %sub595 to float
  %mul597 = fmul float 0x3FE6A09E60000000, %conv596
  %mul598 = fmul float %396, %mul597
  store float %mul598, float* %w391, align 4, !tbaa !9
  %407 = load float, float* %f2389, align 4, !tbaa !9
  %408 = load float, float* %w391, align 4, !tbaa !9
  %sub599 = fsub float %407, %408
  store float %sub599, float* %f3390, align 4, !tbaa !9
  %409 = load float, float* %f2389, align 4, !tbaa !9
  %410 = load float, float* %w391, align 4, !tbaa !9
  %add600 = fadd float %409, %410
  store float %add600, float* %f2389, align 4, !tbaa !9
  %411 = load float, float* %f0387, align 4, !tbaa !9
  %412 = load float, float* %f2389, align 4, !tbaa !9
  %add601 = fadd float %411, %412
  %413 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx602 = getelementptr inbounds float, float* %413, i64 128
  store float %add601, float* %arrayidx602, align 4, !tbaa !9
  %414 = load float, float* %f0387, align 4, !tbaa !9
  %415 = load float, float* %f2389, align 4, !tbaa !9
  %sub603 = fsub float %414, %415
  %416 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx604 = getelementptr inbounds float, float* %416, i64 130
  store float %sub603, float* %arrayidx604, align 4, !tbaa !9
  %417 = load float, float* %f1388, align 4, !tbaa !9
  %418 = load float, float* %f3390, align 4, !tbaa !9
  %add605 = fadd float %417, %418
  %419 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx606 = getelementptr inbounds float, float* %419, i64 129
  store float %add605, float* %arrayidx606, align 4, !tbaa !9
  %420 = load float, float* %f1388, align 4, !tbaa !9
  %421 = load float, float* %f3390, align 4, !tbaa !9
  %sub607 = fsub float %420, %421
  %422 = load float*, float** %x, align 8, !tbaa !1
  %arrayidx608 = getelementptr inbounds float, float* %422, i64 131
  store float %sub607, float* %arrayidx608, align 4, !tbaa !9
  %423 = bitcast float* %w391 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %423) #1
  %424 = bitcast float* %f3390 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %424) #1
  %425 = bitcast float* %f2389 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %425) #1
  %426 = bitcast float* %f1388 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #1
  %427 = bitcast float* %f0387 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %427) #1
  br label %do.cond.609

do.cond.609:                                      ; preds = %do.body.386
  %428 = load i16, i16* %j, align 2, !tbaa !7
  %dec610 = add i16 %428, -1
  store i16 %dec610, i16* %j, align 2, !tbaa !7
  %conv611 = sext i16 %dec610 to i32
  %cmp612 = icmp sge i32 %conv611, 0
  br i1 %cmp612, label %do.body.386, label %do.end.614

do.end.614:                                       ; preds = %do.cond.609
  br label %if.end

if.end:                                           ; preds = %do.end.614, %do.end.384
  br label %if.end.615

if.end.615:                                       ; preds = %if.end, %do.end
  %429 = load float*, float** %x, align 8, !tbaa !1
  call void @fht(float* %429, i16 signext 256)
  %430 = bitcast i16* %k to i8*
  call void @llvm.lifetime.end(i64 2, i8* %430) #1
  %431 = bitcast float** %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %431) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.615
  %432 = load i16, i16* %b, align 2, !tbaa !7
  %inc = add i16 %432, 1
  store i16 %inc, i16* %b, align 2, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %433 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %433) #1
  %434 = bitcast i16* %j to i8*
  call void @llvm.lifetime.end(i64 2, i8* %434) #1
  %435 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %435) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @fht(float* %fz, i16 signext %n) #2 {
entry:
  %fz.addr = alloca float*, align 8
  %n.addr = alloca i16, align 2
  %k4 = alloca i16, align 2
  %fi = alloca float*, align 8
  %fn = alloca float*, align 8
  %gi = alloca float*, align 8
  %tri = alloca float*, align 8
  %s1 = alloca float, align 4
  %c1 = alloca float, align 4
  %i = alloca i16, align 2
  %k1 = alloca i16, align 2
  %k2 = alloca i16, align 2
  %k3 = alloca i16, align 2
  %kx = alloca i16, align 2
  %f0 = alloca float, align 4
  %f1 = alloca float, align 4
  %f2 = alloca float, align 4
  %f3 = alloca float, align 4
  %c2 = alloca float, align 4
  %s2 = alloca float, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %g0 = alloca float, align 4
  %f097 = alloca float, align 4
  %f198 = alloca float, align 4
  %g1 = alloca float, align 4
  %f299 = alloca float, align 4
  %g2 = alloca float, align 4
  %f3100 = alloca float, align 4
  %g3 = alloca float, align 4
  store float* %fz, float** %fz.addr, align 8, !tbaa !1
  store i16 %n, i16* %n.addr, align 2, !tbaa !7
  %0 = bitcast i16* %k4 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast float** %fi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast float** %fn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast float** %gi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast float** %tri to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load float*, float** %fz.addr, align 8, !tbaa !1
  %6 = load i16, i16* %n.addr, align 2, !tbaa !7
  %conv = sext i16 %6 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds float, float* %5, i64 %idx.ext
  store float* %add.ptr, float** %fn, align 8, !tbaa !1
  store float* getelementptr inbounds ([8 x float], [8 x float]* @costab, i32 0, i64 0), float** %tri, align 8, !tbaa !1
  store i16 4, i16* %k4, align 2, !tbaa !7
  br label %do.body

do.body:                                          ; preds = %do.cond.204, %entry
  %7 = bitcast float* %s1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast float* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  %10 = bitcast i16* %k1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  %11 = bitcast i16* %k2 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  %12 = bitcast i16* %k3 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #1
  %13 = bitcast i16* %kx to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  %14 = load i16, i16* %k4, align 2, !tbaa !7
  %conv1 = sext i16 %14 to i32
  %shr = ashr i32 %conv1, 1
  %conv2 = trunc i32 %shr to i16
  store i16 %conv2, i16* %kx, align 2, !tbaa !7
  %15 = load i16, i16* %k4, align 2, !tbaa !7
  store i16 %15, i16* %k1, align 2, !tbaa !7
  %16 = load i16, i16* %k4, align 2, !tbaa !7
  %conv3 = sext i16 %16 to i32
  %shl = shl i32 %conv3, 1
  %conv4 = trunc i32 %shl to i16
  store i16 %conv4, i16* %k2, align 2, !tbaa !7
  %17 = load i16, i16* %k2, align 2, !tbaa !7
  %conv5 = sext i16 %17 to i32
  %18 = load i16, i16* %k1, align 2, !tbaa !7
  %conv6 = sext i16 %18 to i32
  %add = add nsw i32 %conv5, %conv6
  %conv7 = trunc i32 %add to i16
  store i16 %conv7, i16* %k3, align 2, !tbaa !7
  %19 = load i16, i16* %k2, align 2, !tbaa !7
  %conv8 = sext i16 %19 to i32
  %shl9 = shl i32 %conv8, 1
  %conv10 = trunc i32 %shl9 to i16
  store i16 %conv10, i16* %k4, align 2, !tbaa !7
  %20 = load float*, float** %fz.addr, align 8, !tbaa !1
  store float* %20, float** %fi, align 8, !tbaa !1
  %21 = load float*, float** %fi, align 8, !tbaa !1
  %22 = load i16, i16* %kx, align 2, !tbaa !7
  %conv11 = sext i16 %22 to i32
  %idx.ext12 = sext i32 %conv11 to i64
  %add.ptr13 = getelementptr inbounds float, float* %21, i64 %idx.ext12
  store float* %add.ptr13, float** %gi, align 8, !tbaa !1
  br label %do.body.14

do.body.14:                                       ; preds = %do.cond, %do.body
  %23 = bitcast float* %f0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast float* %f1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast float* %f2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast float* %f3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %27, i64 0
  %28 = load float, float* %arrayidx, align 4, !tbaa !9
  %29 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom = sext i16 %29 to i64
  %30 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds float, float* %30, i64 %idxprom
  %31 = load float, float* %arrayidx15, align 4, !tbaa !9
  %sub = fsub float %28, %31
  store float %sub, float* %f1, align 4, !tbaa !9
  %32 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds float, float* %32, i64 0
  %33 = load float, float* %arrayidx16, align 4, !tbaa !9
  %34 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom17 = sext i16 %34 to i64
  %35 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds float, float* %35, i64 %idxprom17
  %36 = load float, float* %arrayidx18, align 4, !tbaa !9
  %add19 = fadd float %33, %36
  store float %add19, float* %f0, align 4, !tbaa !9
  %37 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom20 = sext i16 %37 to i64
  %38 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds float, float* %38, i64 %idxprom20
  %39 = load float, float* %arrayidx21, align 4, !tbaa !9
  %40 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom22 = sext i16 %40 to i64
  %41 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds float, float* %41, i64 %idxprom22
  %42 = load float, float* %arrayidx23, align 4, !tbaa !9
  %sub24 = fsub float %39, %42
  store float %sub24, float* %f3, align 4, !tbaa !9
  %43 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom25 = sext i16 %43 to i64
  %44 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds float, float* %44, i64 %idxprom25
  %45 = load float, float* %arrayidx26, align 4, !tbaa !9
  %46 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom27 = sext i16 %46 to i64
  %47 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds float, float* %47, i64 %idxprom27
  %48 = load float, float* %arrayidx28, align 4, !tbaa !9
  %add29 = fadd float %45, %48
  store float %add29, float* %f2, align 4, !tbaa !9
  %49 = load float, float* %f0, align 4, !tbaa !9
  %50 = load float, float* %f2, align 4, !tbaa !9
  %sub30 = fsub float %49, %50
  %51 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom31 = sext i16 %51 to i64
  %52 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds float, float* %52, i64 %idxprom31
  store float %sub30, float* %arrayidx32, align 4, !tbaa !9
  %53 = load float, float* %f0, align 4, !tbaa !9
  %54 = load float, float* %f2, align 4, !tbaa !9
  %add33 = fadd float %53, %54
  %55 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds float, float* %55, i64 0
  store float %add33, float* %arrayidx34, align 4, !tbaa !9
  %56 = load float, float* %f1, align 4, !tbaa !9
  %57 = load float, float* %f3, align 4, !tbaa !9
  %sub35 = fsub float %56, %57
  %58 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom36 = sext i16 %58 to i64
  %59 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds float, float* %59, i64 %idxprom36
  store float %sub35, float* %arrayidx37, align 4, !tbaa !9
  %60 = load float, float* %f1, align 4, !tbaa !9
  %61 = load float, float* %f3, align 4, !tbaa !9
  %add38 = fadd float %60, %61
  %62 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom39 = sext i16 %62 to i64
  %63 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds float, float* %63, i64 %idxprom39
  store float %add38, float* %arrayidx40, align 4, !tbaa !9
  %64 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds float, float* %64, i64 0
  %65 = load float, float* %arrayidx41, align 4, !tbaa !9
  %66 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom42 = sext i16 %66 to i64
  %67 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds float, float* %67, i64 %idxprom42
  %68 = load float, float* %arrayidx43, align 4, !tbaa !9
  %sub44 = fsub float %65, %68
  store float %sub44, float* %f1, align 4, !tbaa !9
  %69 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds float, float* %69, i64 0
  %70 = load float, float* %arrayidx45, align 4, !tbaa !9
  %71 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom46 = sext i16 %71 to i64
  %72 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds float, float* %72, i64 %idxprom46
  %73 = load float, float* %arrayidx47, align 4, !tbaa !9
  %add48 = fadd float %70, %73
  store float %add48, float* %f0, align 4, !tbaa !9
  %74 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom49 = sext i16 %74 to i64
  %75 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds float, float* %75, i64 %idxprom49
  %76 = load float, float* %arrayidx50, align 4, !tbaa !9
  %conv51 = fpext float %76 to double
  %mul = fmul double 0x3FF6A09E667F3BCD, %conv51
  %conv52 = fptrunc double %mul to float
  store float %conv52, float* %f3, align 4, !tbaa !9
  %77 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom53 = sext i16 %77 to i64
  %78 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds float, float* %78, i64 %idxprom53
  %79 = load float, float* %arrayidx54, align 4, !tbaa !9
  %conv55 = fpext float %79 to double
  %mul56 = fmul double 0x3FF6A09E667F3BCD, %conv55
  %conv57 = fptrunc double %mul56 to float
  store float %conv57, float* %f2, align 4, !tbaa !9
  %80 = load float, float* %f0, align 4, !tbaa !9
  %81 = load float, float* %f2, align 4, !tbaa !9
  %sub58 = fsub float %80, %81
  %82 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom59 = sext i16 %82 to i64
  %83 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds float, float* %83, i64 %idxprom59
  store float %sub58, float* %arrayidx60, align 4, !tbaa !9
  %84 = load float, float* %f0, align 4, !tbaa !9
  %85 = load float, float* %f2, align 4, !tbaa !9
  %add61 = fadd float %84, %85
  %86 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds float, float* %86, i64 0
  store float %add61, float* %arrayidx62, align 4, !tbaa !9
  %87 = load float, float* %f1, align 4, !tbaa !9
  %88 = load float, float* %f3, align 4, !tbaa !9
  %sub63 = fsub float %87, %88
  %89 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom64 = sext i16 %89 to i64
  %90 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds float, float* %90, i64 %idxprom64
  store float %sub63, float* %arrayidx65, align 4, !tbaa !9
  %91 = load float, float* %f1, align 4, !tbaa !9
  %92 = load float, float* %f3, align 4, !tbaa !9
  %add66 = fadd float %91, %92
  %93 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom67 = sext i16 %93 to i64
  %94 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds float, float* %94, i64 %idxprom67
  store float %add66, float* %arrayidx68, align 4, !tbaa !9
  %95 = load i16, i16* %k4, align 2, !tbaa !7
  %conv69 = sext i16 %95 to i32
  %96 = load float*, float** %gi, align 8, !tbaa !1
  %idx.ext70 = sext i32 %conv69 to i64
  %add.ptr71 = getelementptr inbounds float, float* %96, i64 %idx.ext70
  store float* %add.ptr71, float** %gi, align 8, !tbaa !1
  %97 = load i16, i16* %k4, align 2, !tbaa !7
  %conv72 = sext i16 %97 to i32
  %98 = load float*, float** %fi, align 8, !tbaa !1
  %idx.ext73 = sext i32 %conv72 to i64
  %add.ptr74 = getelementptr inbounds float, float* %98, i64 %idx.ext73
  store float* %add.ptr74, float** %fi, align 8, !tbaa !1
  %99 = bitcast float* %f3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast float* %f2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast float* %f1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast float* %f0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body.14
  %103 = load float*, float** %fi, align 8, !tbaa !1
  %104 = load float*, float** %fn, align 8, !tbaa !1
  %cmp = icmp ult float* %103, %104
  br i1 %cmp, label %do.body.14, label %do.end

do.end:                                           ; preds = %do.cond
  %105 = load float*, float** %tri, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds float, float* %105, i64 0
  %106 = load float, float* %arrayidx76, align 4, !tbaa !9
  store float %106, float* %c1, align 4, !tbaa !9
  %107 = load float*, float** %tri, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds float, float* %107, i64 1
  %108 = load float, float* %arrayidx77, align 4, !tbaa !9
  store float %108, float* %s1, align 4, !tbaa !9
  store i16 1, i16* %i, align 2, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %109 = load i16, i16* %i, align 2, !tbaa !7
  %conv78 = sext i16 %109 to i32
  %110 = load i16, i16* %kx, align 2, !tbaa !7
  %conv79 = sext i16 %110 to i32
  %cmp80 = icmp slt i32 %conv78, %conv79
  br i1 %cmp80, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %111 = bitcast float* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = bitcast float* %s2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  %113 = load float, float* %s1, align 4, !tbaa !9
  %mul82 = fmul float 2.000000e+00, %113
  %114 = load float, float* %s1, align 4, !tbaa !9
  %mul83 = fmul float %mul82, %114
  %sub84 = fsub float 1.000000e+00, %mul83
  store float %sub84, float* %c2, align 4, !tbaa !9
  %115 = load float, float* %s1, align 4, !tbaa !9
  %mul85 = fmul float 2.000000e+00, %115
  %116 = load float, float* %c1, align 4, !tbaa !9
  %mul86 = fmul float %mul85, %116
  store float %mul86, float* %s2, align 4, !tbaa !9
  %117 = load float*, float** %fz.addr, align 8, !tbaa !1
  %118 = load i16, i16* %i, align 2, !tbaa !7
  %conv87 = sext i16 %118 to i32
  %idx.ext88 = sext i32 %conv87 to i64
  %add.ptr89 = getelementptr inbounds float, float* %117, i64 %idx.ext88
  store float* %add.ptr89, float** %fi, align 8, !tbaa !1
  %119 = load float*, float** %fz.addr, align 8, !tbaa !1
  %120 = load i16, i16* %k1, align 2, !tbaa !7
  %conv90 = sext i16 %120 to i32
  %idx.ext91 = sext i32 %conv90 to i64
  %add.ptr92 = getelementptr inbounds float, float* %119, i64 %idx.ext91
  %121 = load i16, i16* %i, align 2, !tbaa !7
  %conv93 = sext i16 %121 to i32
  %idx.ext94 = sext i32 %conv93 to i64
  %idx.neg = sub i64 0, %idx.ext94
  %add.ptr95 = getelementptr inbounds float, float* %add.ptr92, i64 %idx.neg
  store float* %add.ptr95, float** %gi, align 8, !tbaa !1
  br label %do.body.96

do.body.96:                                       ; preds = %do.cond.189, %for.body
  %122 = bitcast float* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  %123 = bitcast float* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #1
  %124 = bitcast float* %g0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = bitcast float* %f097 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  %126 = bitcast float* %f198 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #1
  %127 = bitcast float* %g1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #1
  %128 = bitcast float* %f299 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #1
  %129 = bitcast float* %g2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %130 = bitcast float* %f3100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  %131 = bitcast float* %g3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  %132 = load float, float* %s2, align 4, !tbaa !9
  %133 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom101 = sext i16 %133 to i64
  %134 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds float, float* %134, i64 %idxprom101
  %135 = load float, float* %arrayidx102, align 4, !tbaa !9
  %mul103 = fmul float %132, %135
  %136 = load float, float* %c2, align 4, !tbaa !9
  %137 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom104 = sext i16 %137 to i64
  %138 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds float, float* %138, i64 %idxprom104
  %139 = load float, float* %arrayidx105, align 4, !tbaa !9
  %mul106 = fmul float %136, %139
  %sub107 = fsub float %mul103, %mul106
  store float %sub107, float* %b, align 4, !tbaa !9
  %140 = load float, float* %c2, align 4, !tbaa !9
  %141 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom108 = sext i16 %141 to i64
  %142 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds float, float* %142, i64 %idxprom108
  %143 = load float, float* %arrayidx109, align 4, !tbaa !9
  %mul110 = fmul float %140, %143
  %144 = load float, float* %s2, align 4, !tbaa !9
  %145 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom111 = sext i16 %145 to i64
  %146 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds float, float* %146, i64 %idxprom111
  %147 = load float, float* %arrayidx112, align 4, !tbaa !9
  %mul113 = fmul float %144, %147
  %add114 = fadd float %mul110, %mul113
  store float %add114, float* %a, align 4, !tbaa !9
  %148 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds float, float* %148, i64 0
  %149 = load float, float* %arrayidx115, align 4, !tbaa !9
  %150 = load float, float* %a, align 4, !tbaa !9
  %sub116 = fsub float %149, %150
  store float %sub116, float* %f198, align 4, !tbaa !9
  %151 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds float, float* %151, i64 0
  %152 = load float, float* %arrayidx117, align 4, !tbaa !9
  %153 = load float, float* %a, align 4, !tbaa !9
  %add118 = fadd float %152, %153
  store float %add118, float* %f097, align 4, !tbaa !9
  %154 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds float, float* %154, i64 0
  %155 = load float, float* %arrayidx119, align 4, !tbaa !9
  %156 = load float, float* %b, align 4, !tbaa !9
  %sub120 = fsub float %155, %156
  store float %sub120, float* %g1, align 4, !tbaa !9
  %157 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds float, float* %157, i64 0
  %158 = load float, float* %arrayidx121, align 4, !tbaa !9
  %159 = load float, float* %b, align 4, !tbaa !9
  %add122 = fadd float %158, %159
  store float %add122, float* %g0, align 4, !tbaa !9
  %160 = load float, float* %s2, align 4, !tbaa !9
  %161 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom123 = sext i16 %161 to i64
  %162 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds float, float* %162, i64 %idxprom123
  %163 = load float, float* %arrayidx124, align 4, !tbaa !9
  %mul125 = fmul float %160, %163
  %164 = load float, float* %c2, align 4, !tbaa !9
  %165 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom126 = sext i16 %165 to i64
  %166 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds float, float* %166, i64 %idxprom126
  %167 = load float, float* %arrayidx127, align 4, !tbaa !9
  %mul128 = fmul float %164, %167
  %sub129 = fsub float %mul125, %mul128
  store float %sub129, float* %b, align 4, !tbaa !9
  %168 = load float, float* %c2, align 4, !tbaa !9
  %169 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom130 = sext i16 %169 to i64
  %170 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds float, float* %170, i64 %idxprom130
  %171 = load float, float* %arrayidx131, align 4, !tbaa !9
  %mul132 = fmul float %168, %171
  %172 = load float, float* %s2, align 4, !tbaa !9
  %173 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom133 = sext i16 %173 to i64
  %174 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds float, float* %174, i64 %idxprom133
  %175 = load float, float* %arrayidx134, align 4, !tbaa !9
  %mul135 = fmul float %172, %175
  %add136 = fadd float %mul132, %mul135
  store float %add136, float* %a, align 4, !tbaa !9
  %176 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom137 = sext i16 %176 to i64
  %177 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds float, float* %177, i64 %idxprom137
  %178 = load float, float* %arrayidx138, align 4, !tbaa !9
  %179 = load float, float* %a, align 4, !tbaa !9
  %sub139 = fsub float %178, %179
  store float %sub139, float* %f3100, align 4, !tbaa !9
  %180 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom140 = sext i16 %180 to i64
  %181 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds float, float* %181, i64 %idxprom140
  %182 = load float, float* %arrayidx141, align 4, !tbaa !9
  %183 = load float, float* %a, align 4, !tbaa !9
  %add142 = fadd float %182, %183
  store float %add142, float* %f299, align 4, !tbaa !9
  %184 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom143 = sext i16 %184 to i64
  %185 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds float, float* %185, i64 %idxprom143
  %186 = load float, float* %arrayidx144, align 4, !tbaa !9
  %187 = load float, float* %b, align 4, !tbaa !9
  %sub145 = fsub float %186, %187
  store float %sub145, float* %g3, align 4, !tbaa !9
  %188 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom146 = sext i16 %188 to i64
  %189 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds float, float* %189, i64 %idxprom146
  %190 = load float, float* %arrayidx147, align 4, !tbaa !9
  %191 = load float, float* %b, align 4, !tbaa !9
  %add148 = fadd float %190, %191
  store float %add148, float* %g2, align 4, !tbaa !9
  %192 = load float, float* %s1, align 4, !tbaa !9
  %193 = load float, float* %f299, align 4, !tbaa !9
  %mul149 = fmul float %192, %193
  %194 = load float, float* %c1, align 4, !tbaa !9
  %195 = load float, float* %g3, align 4, !tbaa !9
  %mul150 = fmul float %194, %195
  %sub151 = fsub float %mul149, %mul150
  store float %sub151, float* %b, align 4, !tbaa !9
  %196 = load float, float* %c1, align 4, !tbaa !9
  %197 = load float, float* %f299, align 4, !tbaa !9
  %mul152 = fmul float %196, %197
  %198 = load float, float* %s1, align 4, !tbaa !9
  %199 = load float, float* %g3, align 4, !tbaa !9
  %mul153 = fmul float %198, %199
  %add154 = fadd float %mul152, %mul153
  store float %add154, float* %a, align 4, !tbaa !9
  %200 = load float, float* %f097, align 4, !tbaa !9
  %201 = load float, float* %a, align 4, !tbaa !9
  %sub155 = fsub float %200, %201
  %202 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom156 = sext i16 %202 to i64
  %203 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds float, float* %203, i64 %idxprom156
  store float %sub155, float* %arrayidx157, align 4, !tbaa !9
  %204 = load float, float* %f097, align 4, !tbaa !9
  %205 = load float, float* %a, align 4, !tbaa !9
  %add158 = fadd float %204, %205
  %206 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds float, float* %206, i64 0
  store float %add158, float* %arrayidx159, align 4, !tbaa !9
  %207 = load float, float* %g1, align 4, !tbaa !9
  %208 = load float, float* %b, align 4, !tbaa !9
  %sub160 = fsub float %207, %208
  %209 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom161 = sext i16 %209 to i64
  %210 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds float, float* %210, i64 %idxprom161
  store float %sub160, float* %arrayidx162, align 4, !tbaa !9
  %211 = load float, float* %g1, align 4, !tbaa !9
  %212 = load float, float* %b, align 4, !tbaa !9
  %add163 = fadd float %211, %212
  %213 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom164 = sext i16 %213 to i64
  %214 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds float, float* %214, i64 %idxprom164
  store float %add163, float* %arrayidx165, align 4, !tbaa !9
  %215 = load float, float* %c1, align 4, !tbaa !9
  %216 = load float, float* %g2, align 4, !tbaa !9
  %mul166 = fmul float %215, %216
  %217 = load float, float* %s1, align 4, !tbaa !9
  %218 = load float, float* %f3100, align 4, !tbaa !9
  %mul167 = fmul float %217, %218
  %sub168 = fsub float %mul166, %mul167
  store float %sub168, float* %b, align 4, !tbaa !9
  %219 = load float, float* %s1, align 4, !tbaa !9
  %220 = load float, float* %g2, align 4, !tbaa !9
  %mul169 = fmul float %219, %220
  %221 = load float, float* %c1, align 4, !tbaa !9
  %222 = load float, float* %f3100, align 4, !tbaa !9
  %mul170 = fmul float %221, %222
  %add171 = fadd float %mul169, %mul170
  store float %add171, float* %a, align 4, !tbaa !9
  %223 = load float, float* %g0, align 4, !tbaa !9
  %224 = load float, float* %a, align 4, !tbaa !9
  %sub172 = fsub float %223, %224
  %225 = load i16, i16* %k2, align 2, !tbaa !7
  %idxprom173 = sext i16 %225 to i64
  %226 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds float, float* %226, i64 %idxprom173
  store float %sub172, float* %arrayidx174, align 4, !tbaa !9
  %227 = load float, float* %g0, align 4, !tbaa !9
  %228 = load float, float* %a, align 4, !tbaa !9
  %add175 = fadd float %227, %228
  %229 = load float*, float** %gi, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds float, float* %229, i64 0
  store float %add175, float* %arrayidx176, align 4, !tbaa !9
  %230 = load float, float* %f198, align 4, !tbaa !9
  %231 = load float, float* %b, align 4, !tbaa !9
  %sub177 = fsub float %230, %231
  %232 = load i16, i16* %k3, align 2, !tbaa !7
  %idxprom178 = sext i16 %232 to i64
  %233 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds float, float* %233, i64 %idxprom178
  store float %sub177, float* %arrayidx179, align 4, !tbaa !9
  %234 = load float, float* %f198, align 4, !tbaa !9
  %235 = load float, float* %b, align 4, !tbaa !9
  %add180 = fadd float %234, %235
  %236 = load i16, i16* %k1, align 2, !tbaa !7
  %idxprom181 = sext i16 %236 to i64
  %237 = load float*, float** %fi, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds float, float* %237, i64 %idxprom181
  store float %add180, float* %arrayidx182, align 4, !tbaa !9
  %238 = load i16, i16* %k4, align 2, !tbaa !7
  %conv183 = sext i16 %238 to i32
  %239 = load float*, float** %gi, align 8, !tbaa !1
  %idx.ext184 = sext i32 %conv183 to i64
  %add.ptr185 = getelementptr inbounds float, float* %239, i64 %idx.ext184
  store float* %add.ptr185, float** %gi, align 8, !tbaa !1
  %240 = load i16, i16* %k4, align 2, !tbaa !7
  %conv186 = sext i16 %240 to i32
  %241 = load float*, float** %fi, align 8, !tbaa !1
  %idx.ext187 = sext i32 %conv186 to i64
  %add.ptr188 = getelementptr inbounds float, float* %241, i64 %idx.ext187
  store float* %add.ptr188, float** %fi, align 8, !tbaa !1
  %242 = bitcast float* %g3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast float* %f3100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast float* %g2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast float* %f299 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast float* %g1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast float* %f198 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast float* %f097 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast float* %g0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast float* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  %251 = bitcast float* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #1
  br label %do.cond.189

do.cond.189:                                      ; preds = %do.body.96
  %252 = load float*, float** %fi, align 8, !tbaa !1
  %253 = load float*, float** %fn, align 8, !tbaa !1
  %cmp190 = icmp ult float* %252, %253
  br i1 %cmp190, label %do.body.96, label %do.end.192

do.end.192:                                       ; preds = %do.cond.189
  %254 = load float, float* %c1, align 4, !tbaa !9
  store float %254, float* %c2, align 4, !tbaa !9
  %255 = load float, float* %c2, align 4, !tbaa !9
  %256 = load float*, float** %tri, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds float, float* %256, i64 0
  %257 = load float, float* %arrayidx193, align 4, !tbaa !9
  %mul194 = fmul float %255, %257
  %258 = load float, float* %s1, align 4, !tbaa !9
  %259 = load float*, float** %tri, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds float, float* %259, i64 1
  %260 = load float, float* %arrayidx195, align 4, !tbaa !9
  %mul196 = fmul float %258, %260
  %sub197 = fsub float %mul194, %mul196
  store float %sub197, float* %c1, align 4, !tbaa !9
  %261 = load float, float* %c2, align 4, !tbaa !9
  %262 = load float*, float** %tri, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds float, float* %262, i64 1
  %263 = load float, float* %arrayidx198, align 4, !tbaa !9
  %mul199 = fmul float %261, %263
  %264 = load float, float* %s1, align 4, !tbaa !9
  %265 = load float*, float** %tri, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds float, float* %265, i64 0
  %266 = load float, float* %arrayidx200, align 4, !tbaa !9
  %mul201 = fmul float %264, %266
  %add202 = fadd float %mul199, %mul201
  store float %add202, float* %s1, align 4, !tbaa !9
  %267 = bitcast float* %s2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast float* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  br label %for.inc

for.inc:                                          ; preds = %do.end.192
  %269 = load i16, i16* %i, align 2, !tbaa !7
  %inc = add i16 %269, 1
  store i16 %inc, i16* %i, align 2, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %270 = load float*, float** %tri, align 8, !tbaa !1
  %add.ptr203 = getelementptr inbounds float, float* %270, i64 2
  store float* %add.ptr203, float** %tri, align 8, !tbaa !1
  %271 = bitcast i16* %kx to i8*
  call void @llvm.lifetime.end(i64 2, i8* %271) #1
  %272 = bitcast i16* %k3 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %272) #1
  %273 = bitcast i16* %k2 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %273) #1
  %274 = bitcast i16* %k1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %274) #1
  %275 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %275) #1
  %276 = bitcast float* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast float* %s1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  br label %do.cond.204

do.cond.204:                                      ; preds = %for.end
  %278 = load i16, i16* %k4, align 2, !tbaa !7
  %conv205 = sext i16 %278 to i32
  %279 = load i16, i16* %n.addr, align 2, !tbaa !7
  %conv206 = sext i16 %279 to i32
  %cmp207 = icmp slt i32 %conv205, %conv206
  br i1 %cmp207, label %do.body, label %do.end.209

do.end.209:                                       ; preds = %do.cond.204
  %280 = bitcast float** %tri to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %281 = bitcast float** %gi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast float** %fn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast float** %fi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %284 = bitcast i16* %k4 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %284) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @fft_long(float* %x, i32 %chn, i16** %buffer) #0 {
entry:
  %x.addr = alloca float*, align 8
  %chn.addr = alloca i32, align 4
  %buffer.addr = alloca i16**, align 8
  %i = alloca i16, align 2
  %jj = alloca i16, align 2
  %f0 = alloca float, align 4
  %f1 = alloca float, align 4
  %f2 = alloca float, align 4
  %f3 = alloca float, align 4
  %w = alloca float, align 4
  %f0129 = alloca float, align 4
  %f1130 = alloca float, align 4
  %f2131 = alloca float, align 4
  %f3132 = alloca float, align 4
  %w133 = alloca float, align 4
  %f0323 = alloca float, align 4
  %f1324 = alloca float, align 4
  %f2325 = alloca float, align 4
  %f3326 = alloca float, align 4
  %w327 = alloca float, align 4
  store float* %x, float** %x.addr, align 8, !tbaa !1
  store i32 %chn, i32* %chn.addr, align 4, !tbaa !5
  store i16** %buffer, i16*** %buffer.addr, align 8, !tbaa !1
  %0 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %jj to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  store i16 127, i16* %jj, align 2, !tbaa !7
  %2 = load float*, float** %x.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %2, i64 512
  store float* %add.ptr, float** %x.addr, align 8, !tbaa !1
  %3 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %4 = bitcast float* %f0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %f1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast float* %f2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast float* %f3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast float* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i16, i16* %jj, align 2, !tbaa !7
  %idxprom = sext i16 %9 to i64
  %arrayidx = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !7
  store i16 %10, i16* %i, align 2, !tbaa !7
  %11 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom1 = sext i16 %11 to i64
  %arrayidx2 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom1
  %12 = load float, float* %arrayidx2, align 4, !tbaa !9
  %13 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom3 = sext i16 %13 to i64
  %14 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom4 = sext i32 %14 to i64
  %15 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16*, i16** %15, i64 %idxprom4
  %16 = load i16*, i16** %arrayidx5, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %16, i64 %idxprom3
  %17 = load i16, i16* %arrayidx6, align 2, !tbaa !7
  %conv = sext i16 %17 to i32
  %conv7 = sitofp i32 %conv to float
  %mul = fmul float %12, %conv7
  store float %mul, float* %f0, align 4, !tbaa !9
  %18 = load i16, i16* %i, align 2, !tbaa !7
  %conv8 = sext i16 %18 to i32
  %sub = sub nsw i32 511, %conv8
  %idxprom9 = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom9
  %19 = load float, float* %arrayidx10, align 4, !tbaa !9
  %20 = load i16, i16* %i, align 2, !tbaa !7
  %conv11 = sext i16 %20 to i32
  %add = add nsw i32 %conv11, 512
  %idxprom12 = sext i32 %add to i64
  %21 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom13 = sext i32 %21 to i64
  %22 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16*, i16** %22, i64 %idxprom13
  %23 = load i16*, i16** %arrayidx14, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %23, i64 %idxprom12
  %24 = load i16, i16* %arrayidx15, align 2, !tbaa !7
  %conv16 = sext i16 %24 to i32
  %conv17 = sitofp i32 %conv16 to float
  %mul18 = fmul float %19, %conv17
  store float %mul18, float* %w, align 4, !tbaa !9
  %25 = load float, float* %f0, align 4, !tbaa !9
  %26 = load float, float* %w, align 4, !tbaa !9
  %sub19 = fsub float %25, %26
  store float %sub19, float* %f1, align 4, !tbaa !9
  %27 = load float, float* %f0, align 4, !tbaa !9
  %28 = load float, float* %w, align 4, !tbaa !9
  %add20 = fadd float %27, %28
  store float %add20, float* %f0, align 4, !tbaa !9
  %29 = load i16, i16* %i, align 2, !tbaa !7
  %conv21 = sext i16 %29 to i32
  %add22 = add nsw i32 %conv21, 256
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom23
  %30 = load float, float* %arrayidx24, align 4, !tbaa !9
  %31 = load i16, i16* %i, align 2, !tbaa !7
  %conv25 = sext i16 %31 to i32
  %add26 = add nsw i32 %conv25, 256
  %idxprom27 = sext i32 %add26 to i64
  %32 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom28 = sext i32 %32 to i64
  %33 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i16*, i16** %33, i64 %idxprom28
  %34 = load i16*, i16** %arrayidx29, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i16, i16* %34, i64 %idxprom27
  %35 = load i16, i16* %arrayidx30, align 2, !tbaa !7
  %conv31 = sext i16 %35 to i32
  %conv32 = sitofp i32 %conv31 to float
  %mul33 = fmul float %30, %conv32
  store float %mul33, float* %f2, align 4, !tbaa !9
  %36 = load i16, i16* %i, align 2, !tbaa !7
  %conv34 = sext i16 %36 to i32
  %sub35 = sub nsw i32 255, %conv34
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom36
  %37 = load float, float* %arrayidx37, align 4, !tbaa !9
  %38 = load i16, i16* %i, align 2, !tbaa !7
  %conv38 = sext i16 %38 to i32
  %add39 = add nsw i32 %conv38, 768
  %idxprom40 = sext i32 %add39 to i64
  %39 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom41 = sext i32 %39 to i64
  %40 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i16*, i16** %40, i64 %idxprom41
  %41 = load i16*, i16** %arrayidx42, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i16, i16* %41, i64 %idxprom40
  %42 = load i16, i16* %arrayidx43, align 2, !tbaa !7
  %conv44 = sext i16 %42 to i32
  %conv45 = sitofp i32 %conv44 to float
  %mul46 = fmul float %37, %conv45
  store float %mul46, float* %w, align 4, !tbaa !9
  %43 = load float, float* %f2, align 4, !tbaa !9
  %44 = load float, float* %w, align 4, !tbaa !9
  %sub47 = fsub float %43, %44
  store float %sub47, float* %f3, align 4, !tbaa !9
  %45 = load float, float* %f2, align 4, !tbaa !9
  %46 = load float, float* %w, align 4, !tbaa !9
  %add48 = fadd float %45, %46
  store float %add48, float* %f2, align 4, !tbaa !9
  %47 = load float*, float** %x.addr, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds float, float* %47, i64 -4
  store float* %add.ptr49, float** %x.addr, align 8, !tbaa !1
  %48 = load float, float* %f0, align 4, !tbaa !9
  %49 = load float, float* %f2, align 4, !tbaa !9
  %add50 = fadd float %48, %49
  %50 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds float, float* %50, i64 0
  store float %add50, float* %arrayidx51, align 4, !tbaa !9
  %51 = load float, float* %f0, align 4, !tbaa !9
  %52 = load float, float* %f2, align 4, !tbaa !9
  %sub52 = fsub float %51, %52
  %53 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds float, float* %53, i64 2
  store float %sub52, float* %arrayidx53, align 4, !tbaa !9
  %54 = load float, float* %f1, align 4, !tbaa !9
  %55 = load float, float* %f3, align 4, !tbaa !9
  %add54 = fadd float %54, %55
  %56 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds float, float* %56, i64 1
  store float %add54, float* %arrayidx55, align 4, !tbaa !9
  %57 = load float, float* %f1, align 4, !tbaa !9
  %58 = load float, float* %f3, align 4, !tbaa !9
  %sub56 = fsub float %57, %58
  %59 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds float, float* %59, i64 3
  store float %sub56, float* %arrayidx57, align 4, !tbaa !9
  %60 = load i16, i16* %i, align 2, !tbaa !7
  %conv58 = sext i16 %60 to i32
  %add59 = add nsw i32 %conv58, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom60
  %61 = load float, float* %arrayidx61, align 4, !tbaa !9
  %62 = load i16, i16* %i, align 2, !tbaa !7
  %conv62 = sext i16 %62 to i32
  %add63 = add nsw i32 %conv62, 1
  %idxprom64 = sext i32 %add63 to i64
  %63 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom65 = sext i32 %63 to i64
  %64 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i16*, i16** %64, i64 %idxprom65
  %65 = load i16*, i16** %arrayidx66, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i16, i16* %65, i64 %idxprom64
  %66 = load i16, i16* %arrayidx67, align 2, !tbaa !7
  %conv68 = sext i16 %66 to i32
  %conv69 = sitofp i32 %conv68 to float
  %mul70 = fmul float %61, %conv69
  store float %mul70, float* %f0, align 4, !tbaa !9
  %67 = load i16, i16* %i, align 2, !tbaa !7
  %conv71 = sext i16 %67 to i32
  %sub72 = sub nsw i32 510, %conv71
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom73
  %68 = load float, float* %arrayidx74, align 4, !tbaa !9
  %69 = load i16, i16* %i, align 2, !tbaa !7
  %conv75 = sext i16 %69 to i32
  %add76 = add nsw i32 %conv75, 513
  %idxprom77 = sext i32 %add76 to i64
  %70 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom78 = sext i32 %70 to i64
  %71 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i16*, i16** %71, i64 %idxprom78
  %72 = load i16*, i16** %arrayidx79, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i16, i16* %72, i64 %idxprom77
  %73 = load i16, i16* %arrayidx80, align 2, !tbaa !7
  %conv81 = sext i16 %73 to i32
  %conv82 = sitofp i32 %conv81 to float
  %mul83 = fmul float %68, %conv82
  store float %mul83, float* %w, align 4, !tbaa !9
  %74 = load float, float* %f0, align 4, !tbaa !9
  %75 = load float, float* %w, align 4, !tbaa !9
  %sub84 = fsub float %74, %75
  store float %sub84, float* %f1, align 4, !tbaa !9
  %76 = load float, float* %f0, align 4, !tbaa !9
  %77 = load float, float* %w, align 4, !tbaa !9
  %add85 = fadd float %76, %77
  store float %add85, float* %f0, align 4, !tbaa !9
  %78 = load i16, i16* %i, align 2, !tbaa !7
  %conv86 = sext i16 %78 to i32
  %add87 = add nsw i32 %conv86, 257
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom88
  %79 = load float, float* %arrayidx89, align 4, !tbaa !9
  %80 = load i16, i16* %i, align 2, !tbaa !7
  %conv90 = sext i16 %80 to i32
  %add91 = add nsw i32 %conv90, 257
  %idxprom92 = sext i32 %add91 to i64
  %81 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom93 = sext i32 %81 to i64
  %82 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i16*, i16** %82, i64 %idxprom93
  %83 = load i16*, i16** %arrayidx94, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i16, i16* %83, i64 %idxprom92
  %84 = load i16, i16* %arrayidx95, align 2, !tbaa !7
  %conv96 = sext i16 %84 to i32
  %conv97 = sitofp i32 %conv96 to float
  %mul98 = fmul float %79, %conv97
  store float %mul98, float* %f2, align 4, !tbaa !9
  %85 = load i16, i16* %i, align 2, !tbaa !7
  %conv99 = sext i16 %85 to i32
  %sub100 = sub nsw i32 254, %conv99
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom101
  %86 = load float, float* %arrayidx102, align 4, !tbaa !9
  %87 = load i16, i16* %i, align 2, !tbaa !7
  %conv103 = sext i16 %87 to i32
  %add104 = add nsw i32 %conv103, 769
  %idxprom105 = sext i32 %add104 to i64
  %88 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %idxprom106 = sext i32 %88 to i64
  %89 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i16*, i16** %89, i64 %idxprom106
  %90 = load i16*, i16** %arrayidx107, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i16, i16* %90, i64 %idxprom105
  %91 = load i16, i16* %arrayidx108, align 2, !tbaa !7
  %conv109 = sext i16 %91 to i32
  %conv110 = sitofp i32 %conv109 to float
  %mul111 = fmul float %86, %conv110
  store float %mul111, float* %w, align 4, !tbaa !9
  %92 = load float, float* %f2, align 4, !tbaa !9
  %93 = load float, float* %w, align 4, !tbaa !9
  %sub112 = fsub float %92, %93
  store float %sub112, float* %f3, align 4, !tbaa !9
  %94 = load float, float* %f2, align 4, !tbaa !9
  %95 = load float, float* %w, align 4, !tbaa !9
  %add113 = fadd float %94, %95
  store float %add113, float* %f2, align 4, !tbaa !9
  %96 = load float, float* %f0, align 4, !tbaa !9
  %97 = load float, float* %f2, align 4, !tbaa !9
  %add114 = fadd float %96, %97
  %98 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds float, float* %98, i64 512
  store float %add114, float* %arrayidx115, align 4, !tbaa !9
  %99 = load float, float* %f0, align 4, !tbaa !9
  %100 = load float, float* %f2, align 4, !tbaa !9
  %sub116 = fsub float %99, %100
  %101 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds float, float* %101, i64 514
  store float %sub116, float* %arrayidx117, align 4, !tbaa !9
  %102 = load float, float* %f1, align 4, !tbaa !9
  %103 = load float, float* %f3, align 4, !tbaa !9
  %add118 = fadd float %102, %103
  %104 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds float, float* %104, i64 513
  store float %add118, float* %arrayidx119, align 4, !tbaa !9
  %105 = load float, float* %f1, align 4, !tbaa !9
  %106 = load float, float* %f3, align 4, !tbaa !9
  %sub120 = fsub float %105, %106
  %107 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds float, float* %107, i64 515
  store float %sub120, float* %arrayidx121, align 4, !tbaa !9
  %108 = bitcast float* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast float* %f3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast float* %f2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast float* %f1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast float* %f0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %113 = load i16, i16* %jj, align 2, !tbaa !7
  %dec = add i16 %113, -1
  store i16 %dec, i16* %jj, align 2, !tbaa !7
  %conv122 = sext i16 %dec to i32
  %cmp123 = icmp sge i32 %conv122, 0
  br i1 %cmp123, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.515

if.else:                                          ; preds = %entry
  %114 = load i32, i32* %chn.addr, align 4, !tbaa !5
  %cmp125 = icmp eq i32 %114, 2
  br i1 %cmp125, label %if.then.127, label %if.else.321

if.then.127:                                      ; preds = %if.else
  br label %do.body.128

do.body.128:                                      ; preds = %do.cond.315, %if.then.127
  %115 = bitcast float* %f0129 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = bitcast float* %f1130 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #1
  %117 = bitcast float* %f2131 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = bitcast float* %f3132 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = bitcast float* %w133 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  %120 = load i16, i16* %jj, align 2, !tbaa !7
  %idxprom134 = sext i16 %120 to i64
  %arrayidx135 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i64 %idxprom134
  %121 = load i16, i16* %arrayidx135, align 2, !tbaa !7
  store i16 %121, i16* %i, align 2, !tbaa !7
  %122 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom136 = sext i16 %122 to i64
  %arrayidx137 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom136
  %123 = load float, float* %arrayidx137, align 4, !tbaa !9
  %124 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom138 = sext i16 %124 to i64
  %125 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i16*, i16** %125, i64 0
  %126 = load i16*, i16** %arrayidx139, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i16, i16* %126, i64 %idxprom138
  %127 = load i16, i16* %arrayidx140, align 2, !tbaa !7
  %conv141 = sext i16 %127 to i32
  %128 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom142 = sext i16 %128 to i64
  %129 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i16*, i16** %129, i64 1
  %130 = load i16*, i16** %arrayidx143, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i16, i16* %130, i64 %idxprom142
  %131 = load i16, i16* %arrayidx144, align 2, !tbaa !7
  %conv145 = sext i16 %131 to i32
  %add146 = add nsw i32 %conv141, %conv145
  %conv147 = sitofp i32 %add146 to float
  %mul148 = fmul float 0x3FE6A09E60000000, %conv147
  %mul149 = fmul float %123, %mul148
  store float %mul149, float* %f0129, align 4, !tbaa !9
  %132 = load i16, i16* %i, align 2, !tbaa !7
  %conv150 = sext i16 %132 to i32
  %sub151 = sub nsw i32 511, %conv150
  %idxprom152 = sext i32 %sub151 to i64
  %arrayidx153 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom152
  %133 = load float, float* %arrayidx153, align 4, !tbaa !9
  %134 = load i16, i16* %i, align 2, !tbaa !7
  %conv154 = sext i16 %134 to i32
  %add155 = add nsw i32 %conv154, 512
  %idxprom156 = sext i32 %add155 to i64
  %135 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i16*, i16** %135, i64 0
  %136 = load i16*, i16** %arrayidx157, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i16, i16* %136, i64 %idxprom156
  %137 = load i16, i16* %arrayidx158, align 2, !tbaa !7
  %conv159 = sext i16 %137 to i32
  %138 = load i16, i16* %i, align 2, !tbaa !7
  %conv160 = sext i16 %138 to i32
  %add161 = add nsw i32 %conv160, 512
  %idxprom162 = sext i32 %add161 to i64
  %139 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i16*, i16** %139, i64 1
  %140 = load i16*, i16** %arrayidx163, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i16, i16* %140, i64 %idxprom162
  %141 = load i16, i16* %arrayidx164, align 2, !tbaa !7
  %conv165 = sext i16 %141 to i32
  %add166 = add nsw i32 %conv159, %conv165
  %conv167 = sitofp i32 %add166 to float
  %mul168 = fmul float 0x3FE6A09E60000000, %conv167
  %mul169 = fmul float %133, %mul168
  store float %mul169, float* %w133, align 4, !tbaa !9
  %142 = load float, float* %f0129, align 4, !tbaa !9
  %143 = load float, float* %w133, align 4, !tbaa !9
  %sub170 = fsub float %142, %143
  store float %sub170, float* %f1130, align 4, !tbaa !9
  %144 = load float, float* %f0129, align 4, !tbaa !9
  %145 = load float, float* %w133, align 4, !tbaa !9
  %add171 = fadd float %144, %145
  store float %add171, float* %f0129, align 4, !tbaa !9
  %146 = load i16, i16* %i, align 2, !tbaa !7
  %conv172 = sext i16 %146 to i32
  %add173 = add nsw i32 %conv172, 256
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom174
  %147 = load float, float* %arrayidx175, align 4, !tbaa !9
  %148 = load i16, i16* %i, align 2, !tbaa !7
  %conv176 = sext i16 %148 to i32
  %add177 = add nsw i32 %conv176, 256
  %idxprom178 = sext i32 %add177 to i64
  %149 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i16*, i16** %149, i64 0
  %150 = load i16*, i16** %arrayidx179, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i16, i16* %150, i64 %idxprom178
  %151 = load i16, i16* %arrayidx180, align 2, !tbaa !7
  %conv181 = sext i16 %151 to i32
  %152 = load i16, i16* %i, align 2, !tbaa !7
  %conv182 = sext i16 %152 to i32
  %add183 = add nsw i32 %conv182, 256
  %idxprom184 = sext i32 %add183 to i64
  %153 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i16*, i16** %153, i64 1
  %154 = load i16*, i16** %arrayidx185, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i16, i16* %154, i64 %idxprom184
  %155 = load i16, i16* %arrayidx186, align 2, !tbaa !7
  %conv187 = sext i16 %155 to i32
  %add188 = add nsw i32 %conv181, %conv187
  %conv189 = sitofp i32 %add188 to float
  %mul190 = fmul float 0x3FE6A09E60000000, %conv189
  %mul191 = fmul float %147, %mul190
  store float %mul191, float* %f2131, align 4, !tbaa !9
  %156 = load i16, i16* %i, align 2, !tbaa !7
  %conv192 = sext i16 %156 to i32
  %sub193 = sub nsw i32 255, %conv192
  %idxprom194 = sext i32 %sub193 to i64
  %arrayidx195 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom194
  %157 = load float, float* %arrayidx195, align 4, !tbaa !9
  %158 = load i16, i16* %i, align 2, !tbaa !7
  %conv196 = sext i16 %158 to i32
  %add197 = add nsw i32 %conv196, 768
  %idxprom198 = sext i32 %add197 to i64
  %159 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i16*, i16** %159, i64 0
  %160 = load i16*, i16** %arrayidx199, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i16, i16* %160, i64 %idxprom198
  %161 = load i16, i16* %arrayidx200, align 2, !tbaa !7
  %conv201 = sext i16 %161 to i32
  %162 = load i16, i16* %i, align 2, !tbaa !7
  %conv202 = sext i16 %162 to i32
  %add203 = add nsw i32 %conv202, 768
  %idxprom204 = sext i32 %add203 to i64
  %163 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i16*, i16** %163, i64 1
  %164 = load i16*, i16** %arrayidx205, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds i16, i16* %164, i64 %idxprom204
  %165 = load i16, i16* %arrayidx206, align 2, !tbaa !7
  %conv207 = sext i16 %165 to i32
  %add208 = add nsw i32 %conv201, %conv207
  %conv209 = sitofp i32 %add208 to float
  %mul210 = fmul float 0x3FE6A09E60000000, %conv209
  %mul211 = fmul float %157, %mul210
  store float %mul211, float* %w133, align 4, !tbaa !9
  %166 = load float, float* %f2131, align 4, !tbaa !9
  %167 = load float, float* %w133, align 4, !tbaa !9
  %sub212 = fsub float %166, %167
  store float %sub212, float* %f3132, align 4, !tbaa !9
  %168 = load float, float* %f2131, align 4, !tbaa !9
  %169 = load float, float* %w133, align 4, !tbaa !9
  %add213 = fadd float %168, %169
  store float %add213, float* %f2131, align 4, !tbaa !9
  %170 = load float*, float** %x.addr, align 8, !tbaa !1
  %add.ptr214 = getelementptr inbounds float, float* %170, i64 -4
  store float* %add.ptr214, float** %x.addr, align 8, !tbaa !1
  %171 = load float, float* %f0129, align 4, !tbaa !9
  %172 = load float, float* %f2131, align 4, !tbaa !9
  %add215 = fadd float %171, %172
  %173 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds float, float* %173, i64 0
  store float %add215, float* %arrayidx216, align 4, !tbaa !9
  %174 = load float, float* %f0129, align 4, !tbaa !9
  %175 = load float, float* %f2131, align 4, !tbaa !9
  %sub217 = fsub float %174, %175
  %176 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds float, float* %176, i64 2
  store float %sub217, float* %arrayidx218, align 4, !tbaa !9
  %177 = load float, float* %f1130, align 4, !tbaa !9
  %178 = load float, float* %f3132, align 4, !tbaa !9
  %add219 = fadd float %177, %178
  %179 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds float, float* %179, i64 1
  store float %add219, float* %arrayidx220, align 4, !tbaa !9
  %180 = load float, float* %f1130, align 4, !tbaa !9
  %181 = load float, float* %f3132, align 4, !tbaa !9
  %sub221 = fsub float %180, %181
  %182 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds float, float* %182, i64 3
  store float %sub221, float* %arrayidx222, align 4, !tbaa !9
  %183 = load i16, i16* %i, align 2, !tbaa !7
  %conv223 = sext i16 %183 to i32
  %add224 = add nsw i32 %conv223, 1
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom225
  %184 = load float, float* %arrayidx226, align 4, !tbaa !9
  %185 = load i16, i16* %i, align 2, !tbaa !7
  %conv227 = sext i16 %185 to i32
  %add228 = add nsw i32 %conv227, 1
  %idxprom229 = sext i32 %add228 to i64
  %186 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds i16*, i16** %186, i64 0
  %187 = load i16*, i16** %arrayidx230, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i16, i16* %187, i64 %idxprom229
  %188 = load i16, i16* %arrayidx231, align 2, !tbaa !7
  %conv232 = sext i16 %188 to i32
  %189 = load i16, i16* %i, align 2, !tbaa !7
  %conv233 = sext i16 %189 to i32
  %add234 = add nsw i32 %conv233, 1
  %idxprom235 = sext i32 %add234 to i64
  %190 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds i16*, i16** %190, i64 1
  %191 = load i16*, i16** %arrayidx236, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds i16, i16* %191, i64 %idxprom235
  %192 = load i16, i16* %arrayidx237, align 2, !tbaa !7
  %conv238 = sext i16 %192 to i32
  %add239 = add nsw i32 %conv232, %conv238
  %conv240 = sitofp i32 %add239 to float
  %mul241 = fmul float 0x3FE6A09E60000000, %conv240
  %mul242 = fmul float %184, %mul241
  store float %mul242, float* %f0129, align 4, !tbaa !9
  %193 = load i16, i16* %i, align 2, !tbaa !7
  %conv243 = sext i16 %193 to i32
  %sub244 = sub nsw i32 510, %conv243
  %idxprom245 = sext i32 %sub244 to i64
  %arrayidx246 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom245
  %194 = load float, float* %arrayidx246, align 4, !tbaa !9
  %195 = load i16, i16* %i, align 2, !tbaa !7
  %conv247 = sext i16 %195 to i32
  %add248 = add nsw i32 %conv247, 513
  %idxprom249 = sext i32 %add248 to i64
  %196 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i16*, i16** %196, i64 0
  %197 = load i16*, i16** %arrayidx250, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i16, i16* %197, i64 %idxprom249
  %198 = load i16, i16* %arrayidx251, align 2, !tbaa !7
  %conv252 = sext i16 %198 to i32
  %199 = load i16, i16* %i, align 2, !tbaa !7
  %conv253 = sext i16 %199 to i32
  %add254 = add nsw i32 %conv253, 513
  %idxprom255 = sext i32 %add254 to i64
  %200 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx256 = getelementptr inbounds i16*, i16** %200, i64 1
  %201 = load i16*, i16** %arrayidx256, align 8, !tbaa !1
  %arrayidx257 = getelementptr inbounds i16, i16* %201, i64 %idxprom255
  %202 = load i16, i16* %arrayidx257, align 2, !tbaa !7
  %conv258 = sext i16 %202 to i32
  %add259 = add nsw i32 %conv252, %conv258
  %conv260 = sitofp i32 %add259 to float
  %mul261 = fmul float 0x3FE6A09E60000000, %conv260
  %mul262 = fmul float %194, %mul261
  store float %mul262, float* %w133, align 4, !tbaa !9
  %203 = load float, float* %f0129, align 4, !tbaa !9
  %204 = load float, float* %w133, align 4, !tbaa !9
  %sub263 = fsub float %203, %204
  store float %sub263, float* %f1130, align 4, !tbaa !9
  %205 = load float, float* %f0129, align 4, !tbaa !9
  %206 = load float, float* %w133, align 4, !tbaa !9
  %add264 = fadd float %205, %206
  store float %add264, float* %f0129, align 4, !tbaa !9
  %207 = load i16, i16* %i, align 2, !tbaa !7
  %conv265 = sext i16 %207 to i32
  %add266 = add nsw i32 %conv265, 257
  %idxprom267 = sext i32 %add266 to i64
  %arrayidx268 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom267
  %208 = load float, float* %arrayidx268, align 4, !tbaa !9
  %209 = load i16, i16* %i, align 2, !tbaa !7
  %conv269 = sext i16 %209 to i32
  %add270 = add nsw i32 %conv269, 257
  %idxprom271 = sext i32 %add270 to i64
  %210 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds i16*, i16** %210, i64 0
  %211 = load i16*, i16** %arrayidx272, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i16, i16* %211, i64 %idxprom271
  %212 = load i16, i16* %arrayidx273, align 2, !tbaa !7
  %conv274 = sext i16 %212 to i32
  %213 = load i16, i16* %i, align 2, !tbaa !7
  %conv275 = sext i16 %213 to i32
  %add276 = add nsw i32 %conv275, 257
  %idxprom277 = sext i32 %add276 to i64
  %214 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx278 = getelementptr inbounds i16*, i16** %214, i64 1
  %215 = load i16*, i16** %arrayidx278, align 8, !tbaa !1
  %arrayidx279 = getelementptr inbounds i16, i16* %215, i64 %idxprom277
  %216 = load i16, i16* %arrayidx279, align 2, !tbaa !7
  %conv280 = sext i16 %216 to i32
  %add281 = add nsw i32 %conv274, %conv280
  %conv282 = sitofp i32 %add281 to float
  %mul283 = fmul float 0x3FE6A09E60000000, %conv282
  %mul284 = fmul float %208, %mul283
  store float %mul284, float* %f2131, align 4, !tbaa !9
  %217 = load i16, i16* %i, align 2, !tbaa !7
  %conv285 = sext i16 %217 to i32
  %sub286 = sub nsw i32 254, %conv285
  %idxprom287 = sext i32 %sub286 to i64
  %arrayidx288 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom287
  %218 = load float, float* %arrayidx288, align 4, !tbaa !9
  %219 = load i16, i16* %i, align 2, !tbaa !7
  %conv289 = sext i16 %219 to i32
  %add290 = add nsw i32 %conv289, 769
  %idxprom291 = sext i32 %add290 to i64
  %220 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds i16*, i16** %220, i64 0
  %221 = load i16*, i16** %arrayidx292, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds i16, i16* %221, i64 %idxprom291
  %222 = load i16, i16* %arrayidx293, align 2, !tbaa !7
  %conv294 = sext i16 %222 to i32
  %223 = load i16, i16* %i, align 2, !tbaa !7
  %conv295 = sext i16 %223 to i32
  %add296 = add nsw i32 %conv295, 769
  %idxprom297 = sext i32 %add296 to i64
  %224 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i16*, i16** %224, i64 1
  %225 = load i16*, i16** %arrayidx298, align 8, !tbaa !1
  %arrayidx299 = getelementptr inbounds i16, i16* %225, i64 %idxprom297
  %226 = load i16, i16* %arrayidx299, align 2, !tbaa !7
  %conv300 = sext i16 %226 to i32
  %add301 = add nsw i32 %conv294, %conv300
  %conv302 = sitofp i32 %add301 to float
  %mul303 = fmul float 0x3FE6A09E60000000, %conv302
  %mul304 = fmul float %218, %mul303
  store float %mul304, float* %w133, align 4, !tbaa !9
  %227 = load float, float* %f2131, align 4, !tbaa !9
  %228 = load float, float* %w133, align 4, !tbaa !9
  %sub305 = fsub float %227, %228
  store float %sub305, float* %f3132, align 4, !tbaa !9
  %229 = load float, float* %f2131, align 4, !tbaa !9
  %230 = load float, float* %w133, align 4, !tbaa !9
  %add306 = fadd float %229, %230
  store float %add306, float* %f2131, align 4, !tbaa !9
  %231 = load float, float* %f0129, align 4, !tbaa !9
  %232 = load float, float* %f2131, align 4, !tbaa !9
  %add307 = fadd float %231, %232
  %233 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds float, float* %233, i64 512
  store float %add307, float* %arrayidx308, align 4, !tbaa !9
  %234 = load float, float* %f0129, align 4, !tbaa !9
  %235 = load float, float* %f2131, align 4, !tbaa !9
  %sub309 = fsub float %234, %235
  %236 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx310 = getelementptr inbounds float, float* %236, i64 514
  store float %sub309, float* %arrayidx310, align 4, !tbaa !9
  %237 = load float, float* %f1130, align 4, !tbaa !9
  %238 = load float, float* %f3132, align 4, !tbaa !9
  %add311 = fadd float %237, %238
  %239 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx312 = getelementptr inbounds float, float* %239, i64 513
  store float %add311, float* %arrayidx312, align 4, !tbaa !9
  %240 = load float, float* %f1130, align 4, !tbaa !9
  %241 = load float, float* %f3132, align 4, !tbaa !9
  %sub313 = fsub float %240, %241
  %242 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx314 = getelementptr inbounds float, float* %242, i64 515
  store float %sub313, float* %arrayidx314, align 4, !tbaa !9
  %243 = bitcast float* %w133 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast float* %f3132 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast float* %f2131 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast float* %f1130 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast float* %f0129 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  br label %do.cond.315

do.cond.315:                                      ; preds = %do.body.128
  %248 = load i16, i16* %jj, align 2, !tbaa !7
  %dec316 = add i16 %248, -1
  store i16 %dec316, i16* %jj, align 2, !tbaa !7
  %conv317 = sext i16 %dec316 to i32
  %cmp318 = icmp sge i32 %conv317, 0
  br i1 %cmp318, label %do.body.128, label %do.end.320

do.end.320:                                       ; preds = %do.cond.315
  br label %if.end

if.else.321:                                      ; preds = %if.else
  br label %do.body.322

do.body.322:                                      ; preds = %do.cond.509, %if.else.321
  %249 = bitcast float* %f0323 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %249) #1
  %250 = bitcast float* %f1324 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #1
  %251 = bitcast float* %f2325 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %251) #1
  %252 = bitcast float* %f3326 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %252) #1
  %253 = bitcast float* %w327 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %253) #1
  %254 = load i16, i16* %jj, align 2, !tbaa !7
  %idxprom328 = sext i16 %254 to i64
  %arrayidx329 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i64 %idxprom328
  %255 = load i16, i16* %arrayidx329, align 2, !tbaa !7
  store i16 %255, i16* %i, align 2, !tbaa !7
  %256 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom330 = sext i16 %256 to i64
  %arrayidx331 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom330
  %257 = load float, float* %arrayidx331, align 4, !tbaa !9
  %258 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom332 = sext i16 %258 to i64
  %259 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx333 = getelementptr inbounds i16*, i16** %259, i64 0
  %260 = load i16*, i16** %arrayidx333, align 8, !tbaa !1
  %arrayidx334 = getelementptr inbounds i16, i16* %260, i64 %idxprom332
  %261 = load i16, i16* %arrayidx334, align 2, !tbaa !7
  %conv335 = sext i16 %261 to i32
  %262 = load i16, i16* %i, align 2, !tbaa !7
  %idxprom336 = sext i16 %262 to i64
  %263 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx337 = getelementptr inbounds i16*, i16** %263, i64 1
  %264 = load i16*, i16** %arrayidx337, align 8, !tbaa !1
  %arrayidx338 = getelementptr inbounds i16, i16* %264, i64 %idxprom336
  %265 = load i16, i16* %arrayidx338, align 2, !tbaa !7
  %conv339 = sext i16 %265 to i32
  %sub340 = sub nsw i32 %conv335, %conv339
  %conv341 = sitofp i32 %sub340 to float
  %mul342 = fmul float 0x3FE6A09E60000000, %conv341
  %mul343 = fmul float %257, %mul342
  store float %mul343, float* %f0323, align 4, !tbaa !9
  %266 = load i16, i16* %i, align 2, !tbaa !7
  %conv344 = sext i16 %266 to i32
  %sub345 = sub nsw i32 511, %conv344
  %idxprom346 = sext i32 %sub345 to i64
  %arrayidx347 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom346
  %267 = load float, float* %arrayidx347, align 4, !tbaa !9
  %268 = load i16, i16* %i, align 2, !tbaa !7
  %conv348 = sext i16 %268 to i32
  %add349 = add nsw i32 %conv348, 512
  %idxprom350 = sext i32 %add349 to i64
  %269 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx351 = getelementptr inbounds i16*, i16** %269, i64 0
  %270 = load i16*, i16** %arrayidx351, align 8, !tbaa !1
  %arrayidx352 = getelementptr inbounds i16, i16* %270, i64 %idxprom350
  %271 = load i16, i16* %arrayidx352, align 2, !tbaa !7
  %conv353 = sext i16 %271 to i32
  %272 = load i16, i16* %i, align 2, !tbaa !7
  %conv354 = sext i16 %272 to i32
  %add355 = add nsw i32 %conv354, 512
  %idxprom356 = sext i32 %add355 to i64
  %273 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx357 = getelementptr inbounds i16*, i16** %273, i64 1
  %274 = load i16*, i16** %arrayidx357, align 8, !tbaa !1
  %arrayidx358 = getelementptr inbounds i16, i16* %274, i64 %idxprom356
  %275 = load i16, i16* %arrayidx358, align 2, !tbaa !7
  %conv359 = sext i16 %275 to i32
  %sub360 = sub nsw i32 %conv353, %conv359
  %conv361 = sitofp i32 %sub360 to float
  %mul362 = fmul float 0x3FE6A09E60000000, %conv361
  %mul363 = fmul float %267, %mul362
  store float %mul363, float* %w327, align 4, !tbaa !9
  %276 = load float, float* %f0323, align 4, !tbaa !9
  %277 = load float, float* %w327, align 4, !tbaa !9
  %sub364 = fsub float %276, %277
  store float %sub364, float* %f1324, align 4, !tbaa !9
  %278 = load float, float* %f0323, align 4, !tbaa !9
  %279 = load float, float* %w327, align 4, !tbaa !9
  %add365 = fadd float %278, %279
  store float %add365, float* %f0323, align 4, !tbaa !9
  %280 = load i16, i16* %i, align 2, !tbaa !7
  %conv366 = sext i16 %280 to i32
  %add367 = add nsw i32 %conv366, 256
  %idxprom368 = sext i32 %add367 to i64
  %arrayidx369 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom368
  %281 = load float, float* %arrayidx369, align 4, !tbaa !9
  %282 = load i16, i16* %i, align 2, !tbaa !7
  %conv370 = sext i16 %282 to i32
  %add371 = add nsw i32 %conv370, 256
  %idxprom372 = sext i32 %add371 to i64
  %283 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx373 = getelementptr inbounds i16*, i16** %283, i64 0
  %284 = load i16*, i16** %arrayidx373, align 8, !tbaa !1
  %arrayidx374 = getelementptr inbounds i16, i16* %284, i64 %idxprom372
  %285 = load i16, i16* %arrayidx374, align 2, !tbaa !7
  %conv375 = sext i16 %285 to i32
  %286 = load i16, i16* %i, align 2, !tbaa !7
  %conv376 = sext i16 %286 to i32
  %add377 = add nsw i32 %conv376, 256
  %idxprom378 = sext i32 %add377 to i64
  %287 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx379 = getelementptr inbounds i16*, i16** %287, i64 1
  %288 = load i16*, i16** %arrayidx379, align 8, !tbaa !1
  %arrayidx380 = getelementptr inbounds i16, i16* %288, i64 %idxprom378
  %289 = load i16, i16* %arrayidx380, align 2, !tbaa !7
  %conv381 = sext i16 %289 to i32
  %sub382 = sub nsw i32 %conv375, %conv381
  %conv383 = sitofp i32 %sub382 to float
  %mul384 = fmul float 0x3FE6A09E60000000, %conv383
  %mul385 = fmul float %281, %mul384
  store float %mul385, float* %f2325, align 4, !tbaa !9
  %290 = load i16, i16* %i, align 2, !tbaa !7
  %conv386 = sext i16 %290 to i32
  %sub387 = sub nsw i32 255, %conv386
  %idxprom388 = sext i32 %sub387 to i64
  %arrayidx389 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom388
  %291 = load float, float* %arrayidx389, align 4, !tbaa !9
  %292 = load i16, i16* %i, align 2, !tbaa !7
  %conv390 = sext i16 %292 to i32
  %add391 = add nsw i32 %conv390, 768
  %idxprom392 = sext i32 %add391 to i64
  %293 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx393 = getelementptr inbounds i16*, i16** %293, i64 0
  %294 = load i16*, i16** %arrayidx393, align 8, !tbaa !1
  %arrayidx394 = getelementptr inbounds i16, i16* %294, i64 %idxprom392
  %295 = load i16, i16* %arrayidx394, align 2, !tbaa !7
  %conv395 = sext i16 %295 to i32
  %296 = load i16, i16* %i, align 2, !tbaa !7
  %conv396 = sext i16 %296 to i32
  %add397 = add nsw i32 %conv396, 768
  %idxprom398 = sext i32 %add397 to i64
  %297 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx399 = getelementptr inbounds i16*, i16** %297, i64 1
  %298 = load i16*, i16** %arrayidx399, align 8, !tbaa !1
  %arrayidx400 = getelementptr inbounds i16, i16* %298, i64 %idxprom398
  %299 = load i16, i16* %arrayidx400, align 2, !tbaa !7
  %conv401 = sext i16 %299 to i32
  %sub402 = sub nsw i32 %conv395, %conv401
  %conv403 = sitofp i32 %sub402 to float
  %mul404 = fmul float 0x3FE6A09E60000000, %conv403
  %mul405 = fmul float %291, %mul404
  store float %mul405, float* %w327, align 4, !tbaa !9
  %300 = load float, float* %f2325, align 4, !tbaa !9
  %301 = load float, float* %w327, align 4, !tbaa !9
  %sub406 = fsub float %300, %301
  store float %sub406, float* %f3326, align 4, !tbaa !9
  %302 = load float, float* %f2325, align 4, !tbaa !9
  %303 = load float, float* %w327, align 4, !tbaa !9
  %add407 = fadd float %302, %303
  store float %add407, float* %f2325, align 4, !tbaa !9
  %304 = load float*, float** %x.addr, align 8, !tbaa !1
  %add.ptr408 = getelementptr inbounds float, float* %304, i64 -4
  store float* %add.ptr408, float** %x.addr, align 8, !tbaa !1
  %305 = load float, float* %f0323, align 4, !tbaa !9
  %306 = load float, float* %f2325, align 4, !tbaa !9
  %add409 = fadd float %305, %306
  %307 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx410 = getelementptr inbounds float, float* %307, i64 0
  store float %add409, float* %arrayidx410, align 4, !tbaa !9
  %308 = load float, float* %f0323, align 4, !tbaa !9
  %309 = load float, float* %f2325, align 4, !tbaa !9
  %sub411 = fsub float %308, %309
  %310 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds float, float* %310, i64 2
  store float %sub411, float* %arrayidx412, align 4, !tbaa !9
  %311 = load float, float* %f1324, align 4, !tbaa !9
  %312 = load float, float* %f3326, align 4, !tbaa !9
  %add413 = fadd float %311, %312
  %313 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx414 = getelementptr inbounds float, float* %313, i64 1
  store float %add413, float* %arrayidx414, align 4, !tbaa !9
  %314 = load float, float* %f1324, align 4, !tbaa !9
  %315 = load float, float* %f3326, align 4, !tbaa !9
  %sub415 = fsub float %314, %315
  %316 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx416 = getelementptr inbounds float, float* %316, i64 3
  store float %sub415, float* %arrayidx416, align 4, !tbaa !9
  %317 = load i16, i16* %i, align 2, !tbaa !7
  %conv417 = sext i16 %317 to i32
  %add418 = add nsw i32 %conv417, 1
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom419
  %318 = load float, float* %arrayidx420, align 4, !tbaa !9
  %319 = load i16, i16* %i, align 2, !tbaa !7
  %conv421 = sext i16 %319 to i32
  %add422 = add nsw i32 %conv421, 1
  %idxprom423 = sext i32 %add422 to i64
  %320 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx424 = getelementptr inbounds i16*, i16** %320, i64 0
  %321 = load i16*, i16** %arrayidx424, align 8, !tbaa !1
  %arrayidx425 = getelementptr inbounds i16, i16* %321, i64 %idxprom423
  %322 = load i16, i16* %arrayidx425, align 2, !tbaa !7
  %conv426 = sext i16 %322 to i32
  %323 = load i16, i16* %i, align 2, !tbaa !7
  %conv427 = sext i16 %323 to i32
  %add428 = add nsw i32 %conv427, 1
  %idxprom429 = sext i32 %add428 to i64
  %324 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx430 = getelementptr inbounds i16*, i16** %324, i64 1
  %325 = load i16*, i16** %arrayidx430, align 8, !tbaa !1
  %arrayidx431 = getelementptr inbounds i16, i16* %325, i64 %idxprom429
  %326 = load i16, i16* %arrayidx431, align 2, !tbaa !7
  %conv432 = sext i16 %326 to i32
  %sub433 = sub nsw i32 %conv426, %conv432
  %conv434 = sitofp i32 %sub433 to float
  %mul435 = fmul float 0x3FE6A09E60000000, %conv434
  %mul436 = fmul float %318, %mul435
  store float %mul436, float* %f0323, align 4, !tbaa !9
  %327 = load i16, i16* %i, align 2, !tbaa !7
  %conv437 = sext i16 %327 to i32
  %sub438 = sub nsw i32 510, %conv437
  %idxprom439 = sext i32 %sub438 to i64
  %arrayidx440 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom439
  %328 = load float, float* %arrayidx440, align 4, !tbaa !9
  %329 = load i16, i16* %i, align 2, !tbaa !7
  %conv441 = sext i16 %329 to i32
  %add442 = add nsw i32 %conv441, 513
  %idxprom443 = sext i32 %add442 to i64
  %330 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx444 = getelementptr inbounds i16*, i16** %330, i64 0
  %331 = load i16*, i16** %arrayidx444, align 8, !tbaa !1
  %arrayidx445 = getelementptr inbounds i16, i16* %331, i64 %idxprom443
  %332 = load i16, i16* %arrayidx445, align 2, !tbaa !7
  %conv446 = sext i16 %332 to i32
  %333 = load i16, i16* %i, align 2, !tbaa !7
  %conv447 = sext i16 %333 to i32
  %add448 = add nsw i32 %conv447, 513
  %idxprom449 = sext i32 %add448 to i64
  %334 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx450 = getelementptr inbounds i16*, i16** %334, i64 1
  %335 = load i16*, i16** %arrayidx450, align 8, !tbaa !1
  %arrayidx451 = getelementptr inbounds i16, i16* %335, i64 %idxprom449
  %336 = load i16, i16* %arrayidx451, align 2, !tbaa !7
  %conv452 = sext i16 %336 to i32
  %sub453 = sub nsw i32 %conv446, %conv452
  %conv454 = sitofp i32 %sub453 to float
  %mul455 = fmul float 0x3FE6A09E60000000, %conv454
  %mul456 = fmul float %328, %mul455
  store float %mul456, float* %w327, align 4, !tbaa !9
  %337 = load float, float* %f0323, align 4, !tbaa !9
  %338 = load float, float* %w327, align 4, !tbaa !9
  %sub457 = fsub float %337, %338
  store float %sub457, float* %f1324, align 4, !tbaa !9
  %339 = load float, float* %f0323, align 4, !tbaa !9
  %340 = load float, float* %w327, align 4, !tbaa !9
  %add458 = fadd float %339, %340
  store float %add458, float* %f0323, align 4, !tbaa !9
  %341 = load i16, i16* %i, align 2, !tbaa !7
  %conv459 = sext i16 %341 to i32
  %add460 = add nsw i32 %conv459, 257
  %idxprom461 = sext i32 %add460 to i64
  %arrayidx462 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom461
  %342 = load float, float* %arrayidx462, align 4, !tbaa !9
  %343 = load i16, i16* %i, align 2, !tbaa !7
  %conv463 = sext i16 %343 to i32
  %add464 = add nsw i32 %conv463, 257
  %idxprom465 = sext i32 %add464 to i64
  %344 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx466 = getelementptr inbounds i16*, i16** %344, i64 0
  %345 = load i16*, i16** %arrayidx466, align 8, !tbaa !1
  %arrayidx467 = getelementptr inbounds i16, i16* %345, i64 %idxprom465
  %346 = load i16, i16* %arrayidx467, align 2, !tbaa !7
  %conv468 = sext i16 %346 to i32
  %347 = load i16, i16* %i, align 2, !tbaa !7
  %conv469 = sext i16 %347 to i32
  %add470 = add nsw i32 %conv469, 257
  %idxprom471 = sext i32 %add470 to i64
  %348 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx472 = getelementptr inbounds i16*, i16** %348, i64 1
  %349 = load i16*, i16** %arrayidx472, align 8, !tbaa !1
  %arrayidx473 = getelementptr inbounds i16, i16* %349, i64 %idxprom471
  %350 = load i16, i16* %arrayidx473, align 2, !tbaa !7
  %conv474 = sext i16 %350 to i32
  %sub475 = sub nsw i32 %conv468, %conv474
  %conv476 = sitofp i32 %sub475 to float
  %mul477 = fmul float 0x3FE6A09E60000000, %conv476
  %mul478 = fmul float %342, %mul477
  store float %mul478, float* %f2325, align 4, !tbaa !9
  %351 = load i16, i16* %i, align 2, !tbaa !7
  %conv479 = sext i16 %351 to i32
  %sub480 = sub nsw i32 254, %conv479
  %idxprom481 = sext i32 %sub480 to i64
  %arrayidx482 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom481
  %352 = load float, float* %arrayidx482, align 4, !tbaa !9
  %353 = load i16, i16* %i, align 2, !tbaa !7
  %conv483 = sext i16 %353 to i32
  %add484 = add nsw i32 %conv483, 769
  %idxprom485 = sext i32 %add484 to i64
  %354 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx486 = getelementptr inbounds i16*, i16** %354, i64 0
  %355 = load i16*, i16** %arrayidx486, align 8, !tbaa !1
  %arrayidx487 = getelementptr inbounds i16, i16* %355, i64 %idxprom485
  %356 = load i16, i16* %arrayidx487, align 2, !tbaa !7
  %conv488 = sext i16 %356 to i32
  %357 = load i16, i16* %i, align 2, !tbaa !7
  %conv489 = sext i16 %357 to i32
  %add490 = add nsw i32 %conv489, 769
  %idxprom491 = sext i32 %add490 to i64
  %358 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  %arrayidx492 = getelementptr inbounds i16*, i16** %358, i64 1
  %359 = load i16*, i16** %arrayidx492, align 8, !tbaa !1
  %arrayidx493 = getelementptr inbounds i16, i16* %359, i64 %idxprom491
  %360 = load i16, i16* %arrayidx493, align 2, !tbaa !7
  %conv494 = sext i16 %360 to i32
  %sub495 = sub nsw i32 %conv488, %conv494
  %conv496 = sitofp i32 %sub495 to float
  %mul497 = fmul float 0x3FE6A09E60000000, %conv496
  %mul498 = fmul float %352, %mul497
  store float %mul498, float* %w327, align 4, !tbaa !9
  %361 = load float, float* %f2325, align 4, !tbaa !9
  %362 = load float, float* %w327, align 4, !tbaa !9
  %sub499 = fsub float %361, %362
  store float %sub499, float* %f3326, align 4, !tbaa !9
  %363 = load float, float* %f2325, align 4, !tbaa !9
  %364 = load float, float* %w327, align 4, !tbaa !9
  %add500 = fadd float %363, %364
  store float %add500, float* %f2325, align 4, !tbaa !9
  %365 = load float, float* %f0323, align 4, !tbaa !9
  %366 = load float, float* %f2325, align 4, !tbaa !9
  %add501 = fadd float %365, %366
  %367 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx502 = getelementptr inbounds float, float* %367, i64 512
  store float %add501, float* %arrayidx502, align 4, !tbaa !9
  %368 = load float, float* %f0323, align 4, !tbaa !9
  %369 = load float, float* %f2325, align 4, !tbaa !9
  %sub503 = fsub float %368, %369
  %370 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx504 = getelementptr inbounds float, float* %370, i64 514
  store float %sub503, float* %arrayidx504, align 4, !tbaa !9
  %371 = load float, float* %f1324, align 4, !tbaa !9
  %372 = load float, float* %f3326, align 4, !tbaa !9
  %add505 = fadd float %371, %372
  %373 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx506 = getelementptr inbounds float, float* %373, i64 513
  store float %add505, float* %arrayidx506, align 4, !tbaa !9
  %374 = load float, float* %f1324, align 4, !tbaa !9
  %375 = load float, float* %f3326, align 4, !tbaa !9
  %sub507 = fsub float %374, %375
  %376 = load float*, float** %x.addr, align 8, !tbaa !1
  %arrayidx508 = getelementptr inbounds float, float* %376, i64 515
  store float %sub507, float* %arrayidx508, align 4, !tbaa !9
  %377 = bitcast float* %w327 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast float* %f3326 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  %379 = bitcast float* %f2325 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %379) #1
  %380 = bitcast float* %f1324 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #1
  %381 = bitcast float* %f0323 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %381) #1
  br label %do.cond.509

do.cond.509:                                      ; preds = %do.body.322
  %382 = load i16, i16* %jj, align 2, !tbaa !7
  %dec510 = add i16 %382, -1
  store i16 %dec510, i16* %jj, align 2, !tbaa !7
  %conv511 = sext i16 %dec510 to i32
  %cmp512 = icmp sge i32 %conv511, 0
  br i1 %cmp512, label %do.body.322, label %do.end.514

do.end.514:                                       ; preds = %do.cond.509
  br label %if.end

if.end:                                           ; preds = %do.end.514, %do.end.320
  br label %if.end.515

if.end.515:                                       ; preds = %if.end, %do.end
  %383 = load float*, float** %x.addr, align 8, !tbaa !1
  call void @fht(float* %383, i16 signext 1024)
  %384 = bitcast i16* %jj to i8*
  call void @llvm.lifetime.end(i64 2, i8* %384) #1
  %385 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %385) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_fft() #0 {
entry:
  %i = alloca i32, align 4
  %r = alloca float, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store float 0x3FD921FB60000000, float* %r, align 4, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float, float* %r, align 4, !tbaa !9
  %conv = fpext float %3 to double
  %call = call double @cos(double %conv) #1
  %conv1 = fptrunc double %call to float
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 %4, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* @costab, i32 0, i64 %idxprom
  store float %conv1, float* %arrayidx, align 4, !tbaa !9
  %5 = load float, float* %r, align 4, !tbaa !9
  %conv2 = fpext float %5 to double
  %call3 = call double @sin(double %conv2) #1
  %conv4 = fptrunc double %call3 to float
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %mul5 = mul nsw i32 %6, 2
  %add = add nsw i32 %mul5, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [8 x float], [8 x float]* @costab, i32 0, i64 %idxprom6
  store float %conv4, float* %arrayidx7, align 4, !tbaa !9
  %7 = load float, float* %r, align 4, !tbaa !9
  %conv8 = fpext float %7 to double
  %mul9 = fmul double %conv8, 2.500000e-01
  %conv10 = fptrunc double %mul9 to float
  store float %conv10, float* %r, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.23, %for.end
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %9, 512
  br i1 %cmp12, label %for.body.14, label %for.end.25

for.body.14:                                      ; preds = %for.cond.11
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %conv15 = sitofp i32 %10 to double
  %add16 = fadd double %conv15, 5.000000e-01
  %mul17 = fmul double 0x401921FB54442D18, %add16
  %div = fdiv double %mul17, 1.024000e+03
  %call18 = call double @cos(double %div) #1
  %sub = fsub double 1.000000e+00, %call18
  %mul19 = fmul double 5.000000e-01, %sub
  %conv20 = fptrunc double %mul19 to float
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i64 %idxprom21
  store float %conv20, float* %arrayidx22, align 4, !tbaa !9
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.14
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %12, 1
  store i32 %inc24, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.end.25:                                       ; preds = %for.cond.11
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.40, %for.end.25
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %13, 128
  br i1 %cmp27, label %for.body.29, label %for.end.42

for.body.29:                                      ; preds = %for.cond.26
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %conv30 = sitofp i32 %14 to double
  %add31 = fadd double %conv30, 5.000000e-01
  %mul32 = fmul double 0x401921FB54442D18, %add31
  %div33 = fdiv double %mul32, 2.560000e+02
  %call34 = call double @cos(double %div33) #1
  %sub35 = fsub double 1.000000e+00, %call34
  %mul36 = fmul double 5.000000e-01, %sub35
  %conv37 = fptrunc double %mul36 to float
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %15 to i64
  %arrayidx39 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i64 %idxprom38
  store float %conv37, float* %arrayidx39, align 4, !tbaa !9
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.29
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc41 = add nsw i32 %16, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !5
  br label %for.cond.26

for.end.42:                                       ; preds = %for.cond.26
  %17 = bitcast float* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @sin(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !3, i64 0}
