; ModuleID = './jfdctint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_islow(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %12, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %17 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %18 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %19 to i32
  %20 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %20, i64 7
  %21 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %21 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %22 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %23 to i32
  %24 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %24, i64 6
  %25 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %25 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %26, i64 2
  %27 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %27 to i32
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %28, i64 5
  %29 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %29 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %30, i64 3
  %31 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %31 to i32
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %32, i64 4
  %33 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %33 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp3, align 8, !tbaa !8
  %34 = load i64, i64* %tmp0, align 8, !tbaa !8
  %35 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add23 = add nsw i64 %34, %35
  store i64 %add23, i64* %tmp10, align 8, !tbaa !8
  %36 = load i64, i64* %tmp0, align 8, !tbaa !8
  %37 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub = sub nsw i64 %36, %37
  store i64 %sub, i64* %tmp12, align 8, !tbaa !8
  %38 = load i64, i64* %tmp1, align 8, !tbaa !8
  %39 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add24 = add nsw i64 %38, %39
  store i64 %add24, i64* %tmp11, align 8, !tbaa !8
  %40 = load i64, i64* %tmp1, align 8, !tbaa !8
  %41 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub25 = sub nsw i64 %40, %41
  store i64 %sub25, i64* %tmp13, align 8, !tbaa !8
  %42 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %43 to i32
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %44, i64 7
  %45 = load i8, i8* %arrayidx28, align 1, !tbaa !7
  %conv29 = zext i8 %45 to i32
  %sub30 = sub nsw i32 %conv27, %conv29
  %conv31 = sext i32 %sub30 to i64
  store i64 %conv31, i64* %tmp0, align 8, !tbaa !8
  %46 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %47 to i32
  %48 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %48, i64 6
  %49 = load i8, i8* %arrayidx34, align 1, !tbaa !7
  %conv35 = zext i8 %49 to i32
  %sub36 = sub nsw i32 %conv33, %conv35
  %conv37 = sext i32 %sub36 to i64
  store i64 %conv37, i64* %tmp1, align 8, !tbaa !8
  %50 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %arrayidx38, align 1, !tbaa !7
  %conv39 = zext i8 %51 to i32
  %52 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %52, i64 5
  %53 = load i8, i8* %arrayidx40, align 1, !tbaa !7
  %conv41 = zext i8 %53 to i32
  %sub42 = sub nsw i32 %conv39, %conv41
  %conv43 = sext i32 %sub42 to i64
  store i64 %conv43, i64* %tmp2, align 8, !tbaa !8
  %54 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %54, i64 3
  %55 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %conv45 = zext i8 %55 to i32
  %56 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %56, i64 4
  %57 = load i8, i8* %arrayidx46, align 1, !tbaa !7
  %conv47 = zext i8 %57 to i32
  %sub48 = sub nsw i32 %conv45, %conv47
  %conv49 = sext i32 %sub48 to i64
  store i64 %conv49, i64* %tmp3, align 8, !tbaa !8
  %58 = load i64, i64* %tmp10, align 8, !tbaa !8
  %59 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add50 = add nsw i64 %58, %59
  %sub51 = sub nsw i64 %add50, 1024
  %shl = shl i64 %sub51, 2
  %conv52 = trunc i64 %shl to i32
  %60 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %conv52, i32* %arrayidx53, align 4, !tbaa !5
  %61 = load i64, i64* %tmp10, align 8, !tbaa !8
  %62 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub54 = sub nsw i64 %61, %62
  %shl55 = shl i64 %sub54, 2
  %conv56 = trunc i64 %shl55 to i32
  %63 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %conv56, i32* %arrayidx57, align 4, !tbaa !5
  %64 = load i64, i64* %tmp12, align 8, !tbaa !8
  %65 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add58 = add nsw i64 %64, %65
  %mul = mul nsw i64 %add58, 4433
  store i64 %mul, i64* %z1, align 8, !tbaa !8
  %66 = load i64, i64* %z1, align 8, !tbaa !8
  %add59 = add nsw i64 %66, 1024
  store i64 %add59, i64* %z1, align 8, !tbaa !8
  %67 = load i64, i64* %z1, align 8, !tbaa !8
  %68 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul60 = mul nsw i64 %68, 6270
  %add61 = add nsw i64 %67, %mul60
  %shr = ashr i64 %add61, 11
  %conv62 = trunc i64 %shr to i32
  %69 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %conv62, i32* %arrayidx63, align 4, !tbaa !5
  %70 = load i64, i64* %z1, align 8, !tbaa !8
  %71 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul64 = mul nsw i64 %71, 15137
  %sub65 = sub nsw i64 %70, %mul64
  %shr66 = ashr i64 %sub65, 11
  %conv67 = trunc i64 %shr66 to i32
  %72 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %72, i64 6
  store i32 %conv67, i32* %arrayidx68, align 4, !tbaa !5
  %73 = load i64, i64* %tmp0, align 8, !tbaa !8
  %74 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add69 = add nsw i64 %73, %74
  store i64 %add69, i64* %tmp12, align 8, !tbaa !8
  %75 = load i64, i64* %tmp1, align 8, !tbaa !8
  %76 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add70 = add nsw i64 %75, %76
  store i64 %add70, i64* %tmp13, align 8, !tbaa !8
  %77 = load i64, i64* %tmp12, align 8, !tbaa !8
  %78 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add71 = add nsw i64 %77, %78
  %mul72 = mul nsw i64 %add71, 9633
  store i64 %mul72, i64* %z1, align 8, !tbaa !8
  %79 = load i64, i64* %z1, align 8, !tbaa !8
  %add73 = add nsw i64 %79, 1024
  store i64 %add73, i64* %z1, align 8, !tbaa !8
  %80 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul74 = mul nsw i64 %80, -3196
  store i64 %mul74, i64* %tmp12, align 8, !tbaa !8
  %81 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul75 = mul nsw i64 %81, -16069
  store i64 %mul75, i64* %tmp13, align 8, !tbaa !8
  %82 = load i64, i64* %z1, align 8, !tbaa !8
  %83 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add76 = add nsw i64 %83, %82
  store i64 %add76, i64* %tmp12, align 8, !tbaa !8
  %84 = load i64, i64* %z1, align 8, !tbaa !8
  %85 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add77 = add nsw i64 %85, %84
  store i64 %add77, i64* %tmp13, align 8, !tbaa !8
  %86 = load i64, i64* %tmp0, align 8, !tbaa !8
  %87 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add78 = add nsw i64 %86, %87
  %mul79 = mul nsw i64 %add78, -7373
  store i64 %mul79, i64* %z1, align 8, !tbaa !8
  %88 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul80 = mul nsw i64 %88, 12299
  store i64 %mul80, i64* %tmp0, align 8, !tbaa !8
  %89 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul81 = mul nsw i64 %89, 2446
  store i64 %mul81, i64* %tmp3, align 8, !tbaa !8
  %90 = load i64, i64* %z1, align 8, !tbaa !8
  %91 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add82 = add nsw i64 %90, %91
  %92 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add83 = add nsw i64 %92, %add82
  store i64 %add83, i64* %tmp0, align 8, !tbaa !8
  %93 = load i64, i64* %z1, align 8, !tbaa !8
  %94 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add84 = add nsw i64 %93, %94
  %95 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add85 = add nsw i64 %95, %add84
  store i64 %add85, i64* %tmp3, align 8, !tbaa !8
  %96 = load i64, i64* %tmp1, align 8, !tbaa !8
  %97 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add86 = add nsw i64 %96, %97
  %mul87 = mul nsw i64 %add86, -20995
  store i64 %mul87, i64* %z1, align 8, !tbaa !8
  %98 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul88 = mul nsw i64 %98, 25172
  store i64 %mul88, i64* %tmp1, align 8, !tbaa !8
  %99 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul89 = mul nsw i64 %99, 16819
  store i64 %mul89, i64* %tmp2, align 8, !tbaa !8
  %100 = load i64, i64* %z1, align 8, !tbaa !8
  %101 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add90 = add nsw i64 %100, %101
  %102 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add91 = add nsw i64 %102, %add90
  store i64 %add91, i64* %tmp1, align 8, !tbaa !8
  %103 = load i64, i64* %z1, align 8, !tbaa !8
  %104 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add92 = add nsw i64 %103, %104
  %105 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add93 = add nsw i64 %105, %add92
  store i64 %add93, i64* %tmp2, align 8, !tbaa !8
  %106 = load i64, i64* %tmp0, align 8, !tbaa !8
  %shr94 = ashr i64 %106, 11
  %conv95 = trunc i64 %shr94 to i32
  %107 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 %conv95, i32* %arrayidx96, align 4, !tbaa !5
  %108 = load i64, i64* %tmp1, align 8, !tbaa !8
  %shr97 = ashr i64 %108, 11
  %conv98 = trunc i64 %shr97 to i32
  %109 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i32, i32* %109, i64 3
  store i32 %conv98, i32* %arrayidx99, align 4, !tbaa !5
  %110 = load i64, i64* %tmp2, align 8, !tbaa !8
  %shr100 = ashr i64 %110, 11
  %conv101 = trunc i64 %shr100 to i32
  %111 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i32, i32* %111, i64 5
  store i32 %conv101, i32* %arrayidx102, align 4, !tbaa !5
  %112 = load i64, i64* %tmp3, align 8, !tbaa !8
  %shr103 = ashr i64 %112, 11
  %conv104 = trunc i64 %shr103 to i32
  %113 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i32, i32* %113, i64 7
  store i32 %conv104, i32* %arrayidx105, align 4, !tbaa !5
  %114 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds i32, i32* %114, i64 8
  store i32* %add.ptr106, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %115 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %116 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %116, i32** %dataptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.206, %for.end
  %117 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp108 = icmp sge i32 %117, 0
  br i1 %cmp108, label %for.body.110, label %for.end.207

for.body.110:                                     ; preds = %for.cond.107
  %118 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i32, i32* %118, i64 0
  %119 = load i32, i32* %arrayidx111, align 4, !tbaa !5
  %120 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %120, i64 56
  %121 = load i32, i32* %arrayidx112, align 4, !tbaa !5
  %add113 = add nsw i32 %119, %121
  %conv114 = sext i32 %add113 to i64
  store i64 %conv114, i64* %tmp0, align 8, !tbaa !8
  %122 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i32, i32* %122, i64 8
  %123 = load i32, i32* %arrayidx115, align 4, !tbaa !5
  %124 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i32, i32* %124, i64 48
  %125 = load i32, i32* %arrayidx116, align 4, !tbaa !5
  %add117 = add nsw i32 %123, %125
  %conv118 = sext i32 %add117 to i64
  store i64 %conv118, i64* %tmp1, align 8, !tbaa !8
  %126 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i32, i32* %126, i64 16
  %127 = load i32, i32* %arrayidx119, align 4, !tbaa !5
  %128 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i32, i32* %128, i64 40
  %129 = load i32, i32* %arrayidx120, align 4, !tbaa !5
  %add121 = add nsw i32 %127, %129
  %conv122 = sext i32 %add121 to i64
  store i64 %conv122, i64* %tmp2, align 8, !tbaa !8
  %130 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i32, i32* %130, i64 24
  %131 = load i32, i32* %arrayidx123, align 4, !tbaa !5
  %132 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i32, i32* %132, i64 32
  %133 = load i32, i32* %arrayidx124, align 4, !tbaa !5
  %add125 = add nsw i32 %131, %133
  %conv126 = sext i32 %add125 to i64
  store i64 %conv126, i64* %tmp3, align 8, !tbaa !8
  %134 = load i64, i64* %tmp0, align 8, !tbaa !8
  %135 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add127 = add nsw i64 %134, %135
  %add128 = add nsw i64 %add127, 2
  store i64 %add128, i64* %tmp10, align 8, !tbaa !8
  %136 = load i64, i64* %tmp0, align 8, !tbaa !8
  %137 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub129 = sub nsw i64 %136, %137
  store i64 %sub129, i64* %tmp12, align 8, !tbaa !8
  %138 = load i64, i64* %tmp1, align 8, !tbaa !8
  %139 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add130 = add nsw i64 %138, %139
  store i64 %add130, i64* %tmp11, align 8, !tbaa !8
  %140 = load i64, i64* %tmp1, align 8, !tbaa !8
  %141 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub131 = sub nsw i64 %140, %141
  store i64 %sub131, i64* %tmp13, align 8, !tbaa !8
  %142 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %142, i64 0
  %143 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %144 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i32, i32* %144, i64 56
  %145 = load i32, i32* %arrayidx133, align 4, !tbaa !5
  %sub134 = sub nsw i32 %143, %145
  %conv135 = sext i32 %sub134 to i64
  store i64 %conv135, i64* %tmp0, align 8, !tbaa !8
  %146 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i32, i32* %146, i64 8
  %147 = load i32, i32* %arrayidx136, align 4, !tbaa !5
  %148 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i32, i32* %148, i64 48
  %149 = load i32, i32* %arrayidx137, align 4, !tbaa !5
  %sub138 = sub nsw i32 %147, %149
  %conv139 = sext i32 %sub138 to i64
  store i64 %conv139, i64* %tmp1, align 8, !tbaa !8
  %150 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i32, i32* %150, i64 16
  %151 = load i32, i32* %arrayidx140, align 4, !tbaa !5
  %152 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i32, i32* %152, i64 40
  %153 = load i32, i32* %arrayidx141, align 4, !tbaa !5
  %sub142 = sub nsw i32 %151, %153
  %conv143 = sext i32 %sub142 to i64
  store i64 %conv143, i64* %tmp2, align 8, !tbaa !8
  %154 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i32, i32* %154, i64 24
  %155 = load i32, i32* %arrayidx144, align 4, !tbaa !5
  %156 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i32, i32* %156, i64 32
  %157 = load i32, i32* %arrayidx145, align 4, !tbaa !5
  %sub146 = sub nsw i32 %155, %157
  %conv147 = sext i32 %sub146 to i64
  store i64 %conv147, i64* %tmp3, align 8, !tbaa !8
  %158 = load i64, i64* %tmp10, align 8, !tbaa !8
  %159 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add148 = add nsw i64 %158, %159
  %shr149 = ashr i64 %add148, 2
  %conv150 = trunc i64 %shr149 to i32
  %160 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %conv150, i32* %arrayidx151, align 4, !tbaa !5
  %161 = load i64, i64* %tmp10, align 8, !tbaa !8
  %162 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub152 = sub nsw i64 %161, %162
  %shr153 = ashr i64 %sub152, 2
  %conv154 = trunc i64 %shr153 to i32
  %163 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i32, i32* %163, i64 32
  store i32 %conv154, i32* %arrayidx155, align 4, !tbaa !5
  %164 = load i64, i64* %tmp12, align 8, !tbaa !8
  %165 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add156 = add nsw i64 %164, %165
  %mul157 = mul nsw i64 %add156, 4433
  store i64 %mul157, i64* %z1, align 8, !tbaa !8
  %166 = load i64, i64* %z1, align 8, !tbaa !8
  %add158 = add nsw i64 %166, 16384
  store i64 %add158, i64* %z1, align 8, !tbaa !8
  %167 = load i64, i64* %z1, align 8, !tbaa !8
  %168 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul159 = mul nsw i64 %168, 6270
  %add160 = add nsw i64 %167, %mul159
  %shr161 = ashr i64 %add160, 15
  %conv162 = trunc i64 %shr161 to i32
  %169 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i32, i32* %169, i64 16
  store i32 %conv162, i32* %arrayidx163, align 4, !tbaa !5
  %170 = load i64, i64* %z1, align 8, !tbaa !8
  %171 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul164 = mul nsw i64 %171, 15137
  %sub165 = sub nsw i64 %170, %mul164
  %shr166 = ashr i64 %sub165, 15
  %conv167 = trunc i64 %shr166 to i32
  %172 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i32, i32* %172, i64 48
  store i32 %conv167, i32* %arrayidx168, align 4, !tbaa !5
  %173 = load i64, i64* %tmp0, align 8, !tbaa !8
  %174 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add169 = add nsw i64 %173, %174
  store i64 %add169, i64* %tmp12, align 8, !tbaa !8
  %175 = load i64, i64* %tmp1, align 8, !tbaa !8
  %176 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add170 = add nsw i64 %175, %176
  store i64 %add170, i64* %tmp13, align 8, !tbaa !8
  %177 = load i64, i64* %tmp12, align 8, !tbaa !8
  %178 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add171 = add nsw i64 %177, %178
  %mul172 = mul nsw i64 %add171, 9633
  store i64 %mul172, i64* %z1, align 8, !tbaa !8
  %179 = load i64, i64* %z1, align 8, !tbaa !8
  %add173 = add nsw i64 %179, 16384
  store i64 %add173, i64* %z1, align 8, !tbaa !8
  %180 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul174 = mul nsw i64 %180, -3196
  store i64 %mul174, i64* %tmp12, align 8, !tbaa !8
  %181 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul175 = mul nsw i64 %181, -16069
  store i64 %mul175, i64* %tmp13, align 8, !tbaa !8
  %182 = load i64, i64* %z1, align 8, !tbaa !8
  %183 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add176 = add nsw i64 %183, %182
  store i64 %add176, i64* %tmp12, align 8, !tbaa !8
  %184 = load i64, i64* %z1, align 8, !tbaa !8
  %185 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add177 = add nsw i64 %185, %184
  store i64 %add177, i64* %tmp13, align 8, !tbaa !8
  %186 = load i64, i64* %tmp0, align 8, !tbaa !8
  %187 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add178 = add nsw i64 %186, %187
  %mul179 = mul nsw i64 %add178, -7373
  store i64 %mul179, i64* %z1, align 8, !tbaa !8
  %188 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul180 = mul nsw i64 %188, 12299
  store i64 %mul180, i64* %tmp0, align 8, !tbaa !8
  %189 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul181 = mul nsw i64 %189, 2446
  store i64 %mul181, i64* %tmp3, align 8, !tbaa !8
  %190 = load i64, i64* %z1, align 8, !tbaa !8
  %191 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add182 = add nsw i64 %190, %191
  %192 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add183 = add nsw i64 %192, %add182
  store i64 %add183, i64* %tmp0, align 8, !tbaa !8
  %193 = load i64, i64* %z1, align 8, !tbaa !8
  %194 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add184 = add nsw i64 %193, %194
  %195 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add185 = add nsw i64 %195, %add184
  store i64 %add185, i64* %tmp3, align 8, !tbaa !8
  %196 = load i64, i64* %tmp1, align 8, !tbaa !8
  %197 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add186 = add nsw i64 %196, %197
  %mul187 = mul nsw i64 %add186, -20995
  store i64 %mul187, i64* %z1, align 8, !tbaa !8
  %198 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul188 = mul nsw i64 %198, 25172
  store i64 %mul188, i64* %tmp1, align 8, !tbaa !8
  %199 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul189 = mul nsw i64 %199, 16819
  store i64 %mul189, i64* %tmp2, align 8, !tbaa !8
  %200 = load i64, i64* %z1, align 8, !tbaa !8
  %201 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add190 = add nsw i64 %200, %201
  %202 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add191 = add nsw i64 %202, %add190
  store i64 %add191, i64* %tmp1, align 8, !tbaa !8
  %203 = load i64, i64* %z1, align 8, !tbaa !8
  %204 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add192 = add nsw i64 %203, %204
  %205 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add193 = add nsw i64 %205, %add192
  store i64 %add193, i64* %tmp2, align 8, !tbaa !8
  %206 = load i64, i64* %tmp0, align 8, !tbaa !8
  %shr194 = ashr i64 %206, 15
  %conv195 = trunc i64 %shr194 to i32
  %207 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i32, i32* %207, i64 8
  store i32 %conv195, i32* %arrayidx196, align 4, !tbaa !5
  %208 = load i64, i64* %tmp1, align 8, !tbaa !8
  %shr197 = ashr i64 %208, 15
  %conv198 = trunc i64 %shr197 to i32
  %209 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i32, i32* %209, i64 24
  store i32 %conv198, i32* %arrayidx199, align 4, !tbaa !5
  %210 = load i64, i64* %tmp2, align 8, !tbaa !8
  %shr200 = ashr i64 %210, 15
  %conv201 = trunc i64 %shr200 to i32
  %211 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i32, i32* %211, i64 40
  store i32 %conv201, i32* %arrayidx202, align 4, !tbaa !5
  %212 = load i64, i64* %tmp3, align 8, !tbaa !8
  %shr203 = ashr i64 %212, 15
  %conv204 = trunc i64 %shr203 to i32
  %213 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i32, i32* %213, i64 56
  store i32 %conv204, i32* %arrayidx205, align 4, !tbaa !5
  %214 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.body.110
  %215 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %215, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.107

for.end.207:                                      ; preds = %for.cond.107
  %216 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_7x7(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %14 = bitcast i32* %13 to i8*
  %call = call i8* @memset(i8* %14, i32 0, i64 256) #3
  %15 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %15, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %20 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %21 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %22 to i32
  %23 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %23, i64 6
  %24 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %24 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %26 to i32
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %27, i64 5
  %28 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %28 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %30 to i32
  %31 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %31, i64 4
  %32 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %32 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %33 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %33, i64 3
  %34 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %34 to i32
  %conv19 = sext i32 %conv18 to i64
  store i64 %conv19, i64* %tmp3, align 8, !tbaa !8
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %36 to i32
  %37 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %37, i64 6
  %38 = load i8, i8* %arrayidx22, align 1, !tbaa !7
  %conv23 = zext i8 %38 to i32
  %sub = sub nsw i32 %conv21, %conv23
  %conv24 = sext i32 %sub to i64
  store i64 %conv24, i64* %tmp10, align 8, !tbaa !8
  %39 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %40 to i32
  %41 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %41, i64 5
  %42 = load i8, i8* %arrayidx27, align 1, !tbaa !7
  %conv28 = zext i8 %42 to i32
  %sub29 = sub nsw i32 %conv26, %conv28
  %conv30 = sext i32 %sub29 to i64
  store i64 %conv30, i64* %tmp11, align 8, !tbaa !8
  %43 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %43, i64 2
  %44 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %44 to i32
  %45 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %45, i64 4
  %46 = load i8, i8* %arrayidx33, align 1, !tbaa !7
  %conv34 = zext i8 %46 to i32
  %sub35 = sub nsw i32 %conv32, %conv34
  %conv36 = sext i32 %sub35 to i64
  store i64 %conv36, i64* %tmp12, align 8, !tbaa !8
  %47 = load i64, i64* %tmp0, align 8, !tbaa !8
  %48 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add37 = add nsw i64 %47, %48
  store i64 %add37, i64* %z1, align 8, !tbaa !8
  %49 = load i64, i64* %z1, align 8, !tbaa !8
  %50 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add38 = add nsw i64 %49, %50
  %51 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add39 = add nsw i64 %add38, %51
  %sub40 = sub nsw i64 %add39, 896
  %shl = shl i64 %sub40, 2
  %conv41 = trunc i64 %shl to i32
  %52 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %conv41, i32* %arrayidx42, align 4, !tbaa !5
  %53 = load i64, i64* %tmp3, align 8, !tbaa !8
  %54 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add43 = add nsw i64 %54, %53
  store i64 %add43, i64* %tmp3, align 8, !tbaa !8
  %55 = load i64, i64* %tmp3, align 8, !tbaa !8
  %56 = load i64, i64* %z1, align 8, !tbaa !8
  %sub44 = sub nsw i64 %56, %55
  store i64 %sub44, i64* %z1, align 8, !tbaa !8
  %57 = load i64, i64* %tmp3, align 8, !tbaa !8
  %58 = load i64, i64* %z1, align 8, !tbaa !8
  %sub45 = sub nsw i64 %58, %57
  store i64 %sub45, i64* %z1, align 8, !tbaa !8
  %59 = load i64, i64* %z1, align 8, !tbaa !8
  %mul = mul nsw i64 %59, 2896
  store i64 %mul, i64* %z1, align 8, !tbaa !8
  %60 = load i64, i64* %tmp0, align 8, !tbaa !8
  %61 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub46 = sub nsw i64 %60, %61
  %mul47 = mul nsw i64 %sub46, 7542
  store i64 %mul47, i64* %z2, align 8, !tbaa !8
  %62 = load i64, i64* %tmp1, align 8, !tbaa !8
  %63 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub48 = sub nsw i64 %62, %63
  %mul49 = mul nsw i64 %sub48, 2578
  store i64 %mul49, i64* %z3, align 8, !tbaa !8
  %64 = load i64, i64* %z1, align 8, !tbaa !8
  %65 = load i64, i64* %z2, align 8, !tbaa !8
  %add50 = add nsw i64 %64, %65
  %66 = load i64, i64* %z3, align 8, !tbaa !8
  %add51 = add nsw i64 %add50, %66
  %add52 = add nsw i64 %add51, 1024
  %shr = ashr i64 %add52, 11
  %conv53 = trunc i64 %shr to i32
  %67 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %conv53, i32* %arrayidx54, align 4, !tbaa !5
  %68 = load i64, i64* %z2, align 8, !tbaa !8
  %69 = load i64, i64* %z1, align 8, !tbaa !8
  %sub55 = sub nsw i64 %69, %68
  store i64 %sub55, i64* %z1, align 8, !tbaa !8
  %70 = load i64, i64* %tmp0, align 8, !tbaa !8
  %71 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub56 = sub nsw i64 %70, %71
  %mul57 = mul nsw i64 %sub56, 7223
  store i64 %mul57, i64* %z2, align 8, !tbaa !8
  %72 = load i64, i64* %z2, align 8, !tbaa !8
  %73 = load i64, i64* %z3, align 8, !tbaa !8
  %add58 = add nsw i64 %72, %73
  %74 = load i64, i64* %tmp1, align 8, !tbaa !8
  %75 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub59 = sub nsw i64 %74, %75
  %mul60 = mul nsw i64 %sub59, 5793
  %sub61 = sub nsw i64 %add58, %mul60
  %add62 = add nsw i64 %sub61, 1024
  %shr63 = ashr i64 %add62, 11
  %conv64 = trunc i64 %shr63 to i32
  %76 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i32, i32* %76, i64 4
  store i32 %conv64, i32* %arrayidx65, align 4, !tbaa !5
  %77 = load i64, i64* %z1, align 8, !tbaa !8
  %78 = load i64, i64* %z2, align 8, !tbaa !8
  %add66 = add nsw i64 %77, %78
  %add67 = add nsw i64 %add66, 1024
  %shr68 = ashr i64 %add67, 11
  %conv69 = trunc i64 %shr68 to i32
  %79 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i32, i32* %79, i64 6
  store i32 %conv69, i32* %arrayidx70, align 4, !tbaa !5
  %80 = load i64, i64* %tmp10, align 8, !tbaa !8
  %81 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add71 = add nsw i64 %80, %81
  %mul72 = mul nsw i64 %add71, 7663
  store i64 %mul72, i64* %tmp1, align 8, !tbaa !8
  %82 = load i64, i64* %tmp10, align 8, !tbaa !8
  %83 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub73 = sub nsw i64 %82, %83
  %mul74 = mul nsw i64 %sub73, 1395
  store i64 %mul74, i64* %tmp2, align 8, !tbaa !8
  %84 = load i64, i64* %tmp1, align 8, !tbaa !8
  %85 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub75 = sub nsw i64 %84, %85
  store i64 %sub75, i64* %tmp0, align 8, !tbaa !8
  %86 = load i64, i64* %tmp2, align 8, !tbaa !8
  %87 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add76 = add nsw i64 %87, %86
  store i64 %add76, i64* %tmp1, align 8, !tbaa !8
  %88 = load i64, i64* %tmp11, align 8, !tbaa !8
  %89 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add77 = add nsw i64 %88, %89
  %mul78 = mul nsw i64 %add77, -11295
  store i64 %mul78, i64* %tmp2, align 8, !tbaa !8
  %90 = load i64, i64* %tmp2, align 8, !tbaa !8
  %91 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add79 = add nsw i64 %91, %90
  store i64 %add79, i64* %tmp1, align 8, !tbaa !8
  %92 = load i64, i64* %tmp10, align 8, !tbaa !8
  %93 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add80 = add nsw i64 %92, %93
  %mul81 = mul nsw i64 %add80, 5027
  store i64 %mul81, i64* %tmp3, align 8, !tbaa !8
  %94 = load i64, i64* %tmp3, align 8, !tbaa !8
  %95 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add82 = add nsw i64 %95, %94
  store i64 %add82, i64* %tmp0, align 8, !tbaa !8
  %96 = load i64, i64* %tmp3, align 8, !tbaa !8
  %97 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul83 = mul nsw i64 %97, 15326
  %add84 = add nsw i64 %96, %mul83
  %98 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add85 = add nsw i64 %98, %add84
  store i64 %add85, i64* %tmp2, align 8, !tbaa !8
  %99 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add86 = add nsw i64 %99, 1024
  %shr87 = ashr i64 %add86, 11
  %conv88 = trunc i64 %shr87 to i32
  %100 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %conv88, i32* %arrayidx89, align 4, !tbaa !5
  %101 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add90 = add nsw i64 %101, 1024
  %shr91 = ashr i64 %add90, 11
  %conv92 = trunc i64 %shr91 to i32
  %102 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 %conv92, i32* %arrayidx93, align 4, !tbaa !5
  %103 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add94 = add nsw i64 %103, 1024
  %shr95 = ashr i64 %add94, 11
  %conv96 = trunc i64 %shr95 to i32
  %104 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %104, i64 5
  store i32 %conv96, i32* %arrayidx97, align 4, !tbaa !5
  %105 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr98 = getelementptr inbounds i32, i32* %105, i64 8
  store i32* %add.ptr98, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %106 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %107 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %107, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.194, %for.end
  %108 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp100 = icmp slt i32 %108, 7
  br i1 %cmp100, label %for.body.102, label %for.end.196

for.body.102:                                     ; preds = %for.cond.99
  %109 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i32, i32* %109, i64 0
  %110 = load i32, i32* %arrayidx103, align 4, !tbaa !5
  %111 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i32, i32* %111, i64 48
  %112 = load i32, i32* %arrayidx104, align 4, !tbaa !5
  %add105 = add nsw i32 %110, %112
  %conv106 = sext i32 %add105 to i64
  store i64 %conv106, i64* %tmp0, align 8, !tbaa !8
  %113 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i32, i32* %113, i64 8
  %114 = load i32, i32* %arrayidx107, align 4, !tbaa !5
  %115 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i32, i32* %115, i64 40
  %116 = load i32, i32* %arrayidx108, align 4, !tbaa !5
  %add109 = add nsw i32 %114, %116
  %conv110 = sext i32 %add109 to i64
  store i64 %conv110, i64* %tmp1, align 8, !tbaa !8
  %117 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i32, i32* %117, i64 16
  %118 = load i32, i32* %arrayidx111, align 4, !tbaa !5
  %119 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %119, i64 32
  %120 = load i32, i32* %arrayidx112, align 4, !tbaa !5
  %add113 = add nsw i32 %118, %120
  %conv114 = sext i32 %add113 to i64
  store i64 %conv114, i64* %tmp2, align 8, !tbaa !8
  %121 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i32, i32* %121, i64 24
  %122 = load i32, i32* %arrayidx115, align 4, !tbaa !5
  %conv116 = sext i32 %122 to i64
  store i64 %conv116, i64* %tmp3, align 8, !tbaa !8
  %123 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %123, i64 0
  %124 = load i32, i32* %arrayidx117, align 4, !tbaa !5
  %125 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i32, i32* %125, i64 48
  %126 = load i32, i32* %arrayidx118, align 4, !tbaa !5
  %sub119 = sub nsw i32 %124, %126
  %conv120 = sext i32 %sub119 to i64
  store i64 %conv120, i64* %tmp10, align 8, !tbaa !8
  %127 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i32, i32* %127, i64 8
  %128 = load i32, i32* %arrayidx121, align 4, !tbaa !5
  %129 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i32, i32* %129, i64 40
  %130 = load i32, i32* %arrayidx122, align 4, !tbaa !5
  %sub123 = sub nsw i32 %128, %130
  %conv124 = sext i32 %sub123 to i64
  store i64 %conv124, i64* %tmp11, align 8, !tbaa !8
  %131 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i32, i32* %131, i64 16
  %132 = load i32, i32* %arrayidx125, align 4, !tbaa !5
  %133 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i32, i32* %133, i64 32
  %134 = load i32, i32* %arrayidx126, align 4, !tbaa !5
  %sub127 = sub nsw i32 %132, %134
  %conv128 = sext i32 %sub127 to i64
  store i64 %conv128, i64* %tmp12, align 8, !tbaa !8
  %135 = load i64, i64* %tmp0, align 8, !tbaa !8
  %136 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add129 = add nsw i64 %135, %136
  store i64 %add129, i64* %z1, align 8, !tbaa !8
  %137 = load i64, i64* %z1, align 8, !tbaa !8
  %138 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add130 = add nsw i64 %137, %138
  %139 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add131 = add nsw i64 %add130, %139
  %mul132 = mul nsw i64 %add131, 10700
  %add133 = add nsw i64 %mul132, 16384
  %shr134 = ashr i64 %add133, 15
  %conv135 = trunc i64 %shr134 to i32
  %140 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 %conv135, i32* %arrayidx136, align 4, !tbaa !5
  %141 = load i64, i64* %tmp3, align 8, !tbaa !8
  %142 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add137 = add nsw i64 %142, %141
  store i64 %add137, i64* %tmp3, align 8, !tbaa !8
  %143 = load i64, i64* %tmp3, align 8, !tbaa !8
  %144 = load i64, i64* %z1, align 8, !tbaa !8
  %sub138 = sub nsw i64 %144, %143
  store i64 %sub138, i64* %z1, align 8, !tbaa !8
  %145 = load i64, i64* %tmp3, align 8, !tbaa !8
  %146 = load i64, i64* %z1, align 8, !tbaa !8
  %sub139 = sub nsw i64 %146, %145
  store i64 %sub139, i64* %z1, align 8, !tbaa !8
  %147 = load i64, i64* %z1, align 8, !tbaa !8
  %mul140 = mul nsw i64 %147, 3783
  store i64 %mul140, i64* %z1, align 8, !tbaa !8
  %148 = load i64, i64* %tmp0, align 8, !tbaa !8
  %149 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub141 = sub nsw i64 %148, %149
  %mul142 = mul nsw i64 %sub141, 9850
  store i64 %mul142, i64* %z2, align 8, !tbaa !8
  %150 = load i64, i64* %tmp1, align 8, !tbaa !8
  %151 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub143 = sub nsw i64 %150, %151
  %mul144 = mul nsw i64 %sub143, 3367
  store i64 %mul144, i64* %z3, align 8, !tbaa !8
  %152 = load i64, i64* %z1, align 8, !tbaa !8
  %153 = load i64, i64* %z2, align 8, !tbaa !8
  %add145 = add nsw i64 %152, %153
  %154 = load i64, i64* %z3, align 8, !tbaa !8
  %add146 = add nsw i64 %add145, %154
  %add147 = add nsw i64 %add146, 16384
  %shr148 = ashr i64 %add147, 15
  %conv149 = trunc i64 %shr148 to i32
  %155 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i32, i32* %155, i64 16
  store i32 %conv149, i32* %arrayidx150, align 4, !tbaa !5
  %156 = load i64, i64* %z2, align 8, !tbaa !8
  %157 = load i64, i64* %z1, align 8, !tbaa !8
  %sub151 = sub nsw i64 %157, %156
  store i64 %sub151, i64* %z1, align 8, !tbaa !8
  %158 = load i64, i64* %tmp0, align 8, !tbaa !8
  %159 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub152 = sub nsw i64 %158, %159
  %mul153 = mul nsw i64 %sub152, 9434
  store i64 %mul153, i64* %z2, align 8, !tbaa !8
  %160 = load i64, i64* %z2, align 8, !tbaa !8
  %161 = load i64, i64* %z3, align 8, !tbaa !8
  %add154 = add nsw i64 %160, %161
  %162 = load i64, i64* %tmp1, align 8, !tbaa !8
  %163 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub155 = sub nsw i64 %162, %163
  %mul156 = mul nsw i64 %sub155, 7566
  %sub157 = sub nsw i64 %add154, %mul156
  %add158 = add nsw i64 %sub157, 16384
  %shr159 = ashr i64 %add158, 15
  %conv160 = trunc i64 %shr159 to i32
  %164 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i32, i32* %164, i64 32
  store i32 %conv160, i32* %arrayidx161, align 4, !tbaa !5
  %165 = load i64, i64* %z1, align 8, !tbaa !8
  %166 = load i64, i64* %z2, align 8, !tbaa !8
  %add162 = add nsw i64 %165, %166
  %add163 = add nsw i64 %add162, 16384
  %shr164 = ashr i64 %add163, 15
  %conv165 = trunc i64 %shr164 to i32
  %167 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i32, i32* %167, i64 48
  store i32 %conv165, i32* %arrayidx166, align 4, !tbaa !5
  %168 = load i64, i64* %tmp10, align 8, !tbaa !8
  %169 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add167 = add nsw i64 %168, %169
  %mul168 = mul nsw i64 %add167, 10009
  store i64 %mul168, i64* %tmp1, align 8, !tbaa !8
  %170 = load i64, i64* %tmp10, align 8, !tbaa !8
  %171 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub169 = sub nsw i64 %170, %171
  %mul170 = mul nsw i64 %sub169, 1822
  store i64 %mul170, i64* %tmp2, align 8, !tbaa !8
  %172 = load i64, i64* %tmp1, align 8, !tbaa !8
  %173 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub171 = sub nsw i64 %172, %173
  store i64 %sub171, i64* %tmp0, align 8, !tbaa !8
  %174 = load i64, i64* %tmp2, align 8, !tbaa !8
  %175 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add172 = add nsw i64 %175, %174
  store i64 %add172, i64* %tmp1, align 8, !tbaa !8
  %176 = load i64, i64* %tmp11, align 8, !tbaa !8
  %177 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add173 = add nsw i64 %176, %177
  %mul174 = mul nsw i64 %add173, -14752
  store i64 %mul174, i64* %tmp2, align 8, !tbaa !8
  %178 = load i64, i64* %tmp2, align 8, !tbaa !8
  %179 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add175 = add nsw i64 %179, %178
  store i64 %add175, i64* %tmp1, align 8, !tbaa !8
  %180 = load i64, i64* %tmp10, align 8, !tbaa !8
  %181 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add176 = add nsw i64 %180, %181
  %mul177 = mul nsw i64 %add176, 6565
  store i64 %mul177, i64* %tmp3, align 8, !tbaa !8
  %182 = load i64, i64* %tmp3, align 8, !tbaa !8
  %183 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add178 = add nsw i64 %183, %182
  store i64 %add178, i64* %tmp0, align 8, !tbaa !8
  %184 = load i64, i64* %tmp3, align 8, !tbaa !8
  %185 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul179 = mul nsw i64 %185, 20017
  %add180 = add nsw i64 %184, %mul179
  %186 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add181 = add nsw i64 %186, %add180
  store i64 %add181, i64* %tmp2, align 8, !tbaa !8
  %187 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add182 = add nsw i64 %187, 16384
  %shr183 = ashr i64 %add182, 15
  %conv184 = trunc i64 %shr183 to i32
  %188 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i32, i32* %188, i64 8
  store i32 %conv184, i32* %arrayidx185, align 4, !tbaa !5
  %189 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add186 = add nsw i64 %189, 16384
  %shr187 = ashr i64 %add186, 15
  %conv188 = trunc i64 %shr187 to i32
  %190 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i32, i32* %190, i64 24
  store i32 %conv188, i32* %arrayidx189, align 4, !tbaa !5
  %191 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add190 = add nsw i64 %191, 16384
  %shr191 = ashr i64 %add190, 15
  %conv192 = trunc i64 %shr191 to i32
  %192 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i32, i32* %192, i64 40
  store i32 %conv192, i32* %arrayidx193, align 4, !tbaa !5
  %193 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.body.102
  %194 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc195 = add nsw i32 %194, 1
  store i32 %inc195, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.99

for.end.196:                                      ; preds = %for.cond.99
  %195 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_6x6(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %10 = bitcast i32* %9 to i8*
  %call = call i8* @memset(i8* %10, i32 0, i64 256) #3
  %11 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %11, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %16 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %17 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %18 to i32
  %19 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %19, i64 5
  %20 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %20 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %21 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %22 to i32
  %23 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %23, i64 4
  %24 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %24 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp11, align 8, !tbaa !8
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %26 to i32
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %28 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %29 = load i64, i64* %tmp0, align 8, !tbaa !8
  %30 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add17 = add nsw i64 %29, %30
  store i64 %add17, i64* %tmp10, align 8, !tbaa !8
  %31 = load i64, i64* %tmp0, align 8, !tbaa !8
  %32 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub = sub nsw i64 %31, %32
  store i64 %sub, i64* %tmp12, align 8, !tbaa !8
  %33 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %34 to i32
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %35, i64 5
  %36 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %36 to i32
  %sub22 = sub nsw i32 %conv19, %conv21
  %conv23 = sext i32 %sub22 to i64
  store i64 %conv23, i64* %tmp0, align 8, !tbaa !8
  %37 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %38 to i32
  %39 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %39, i64 4
  %40 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %40 to i32
  %sub28 = sub nsw i32 %conv25, %conv27
  %conv29 = sext i32 %sub28 to i64
  store i64 %conv29, i64* %tmp1, align 8, !tbaa !8
  %41 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %41, i64 2
  %42 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = zext i8 %42 to i32
  %43 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %43, i64 3
  %44 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %44 to i32
  %sub34 = sub nsw i32 %conv31, %conv33
  %conv35 = sext i32 %sub34 to i64
  store i64 %conv35, i64* %tmp2, align 8, !tbaa !8
  %45 = load i64, i64* %tmp10, align 8, !tbaa !8
  %46 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add36 = add nsw i64 %45, %46
  %sub37 = sub nsw i64 %add36, 768
  %shl = shl i64 %sub37, 2
  %conv38 = trunc i64 %shl to i32
  %47 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %conv38, i32* %arrayidx39, align 4, !tbaa !5
  %48 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul = mul nsw i64 %48, 10033
  %add40 = add nsw i64 %mul, 1024
  %shr = ashr i64 %add40, 11
  %conv41 = trunc i64 %shr to i32
  %49 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %conv41, i32* %arrayidx42, align 4, !tbaa !5
  %50 = load i64, i64* %tmp10, align 8, !tbaa !8
  %51 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub43 = sub nsw i64 %50, %51
  %52 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub44 = sub nsw i64 %sub43, %52
  %mul45 = mul nsw i64 %sub44, 5793
  %add46 = add nsw i64 %mul45, 1024
  %shr47 = ashr i64 %add46, 11
  %conv48 = trunc i64 %shr47 to i32
  %53 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 %conv48, i32* %arrayidx49, align 4, !tbaa !5
  %54 = load i64, i64* %tmp0, align 8, !tbaa !8
  %55 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add50 = add nsw i64 %54, %55
  %mul51 = mul nsw i64 %add50, 2998
  %add52 = add nsw i64 %mul51, 1024
  %shr53 = ashr i64 %add52, 11
  store i64 %shr53, i64* %tmp10, align 8, !tbaa !8
  %56 = load i64, i64* %tmp10, align 8, !tbaa !8
  %57 = load i64, i64* %tmp0, align 8, !tbaa !8
  %58 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add54 = add nsw i64 %57, %58
  %shl55 = shl i64 %add54, 2
  %add56 = add nsw i64 %56, %shl55
  %conv57 = trunc i64 %add56 to i32
  %59 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %conv57, i32* %arrayidx58, align 4, !tbaa !5
  %60 = load i64, i64* %tmp0, align 8, !tbaa !8
  %61 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub59 = sub nsw i64 %60, %61
  %62 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub60 = sub nsw i64 %sub59, %62
  %shl61 = shl i64 %sub60, 2
  %conv62 = trunc i64 %shl61 to i32
  %63 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i32, i32* %63, i64 3
  store i32 %conv62, i32* %arrayidx63, align 4, !tbaa !5
  %64 = load i64, i64* %tmp10, align 8, !tbaa !8
  %65 = load i64, i64* %tmp2, align 8, !tbaa !8
  %66 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub64 = sub nsw i64 %65, %66
  %shl65 = shl i64 %sub64, 2
  %add66 = add nsw i64 %64, %shl65
  %conv67 = trunc i64 %add66 to i32
  %67 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %67, i64 5
  store i32 %conv67, i32* %arrayidx68, align 4, !tbaa !5
  %68 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32* %add.ptr69, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %70, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.141, %for.end
  %71 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %71, 6
  br i1 %cmp71, label %for.body.73, label %for.end.143

for.body.73:                                      ; preds = %for.cond.70
  %72 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx74, align 4, !tbaa !5
  %74 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %74, i64 40
  %75 = load i32, i32* %arrayidx75, align 4, !tbaa !5
  %add76 = add nsw i32 %73, %75
  %conv77 = sext i32 %add76 to i64
  store i64 %conv77, i64* %tmp0, align 8, !tbaa !8
  %76 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i32, i32* %76, i64 8
  %77 = load i32, i32* %arrayidx78, align 4, !tbaa !5
  %78 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i32, i32* %78, i64 32
  %79 = load i32, i32* %arrayidx79, align 4, !tbaa !5
  %add80 = add nsw i32 %77, %79
  %conv81 = sext i32 %add80 to i64
  store i64 %conv81, i64* %tmp11, align 8, !tbaa !8
  %80 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i32, i32* %80, i64 16
  %81 = load i32, i32* %arrayidx82, align 4, !tbaa !5
  %82 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i32, i32* %82, i64 24
  %83 = load i32, i32* %arrayidx83, align 4, !tbaa !5
  %add84 = add nsw i32 %81, %83
  %conv85 = sext i32 %add84 to i64
  store i64 %conv85, i64* %tmp2, align 8, !tbaa !8
  %84 = load i64, i64* %tmp0, align 8, !tbaa !8
  %85 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add86 = add nsw i64 %84, %85
  store i64 %add86, i64* %tmp10, align 8, !tbaa !8
  %86 = load i64, i64* %tmp0, align 8, !tbaa !8
  %87 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub87 = sub nsw i64 %86, %87
  store i64 %sub87, i64* %tmp12, align 8, !tbaa !8
  %88 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i32, i32* %88, i64 0
  %89 = load i32, i32* %arrayidx88, align 4, !tbaa !5
  %90 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i32, i32* %90, i64 40
  %91 = load i32, i32* %arrayidx89, align 4, !tbaa !5
  %sub90 = sub nsw i32 %89, %91
  %conv91 = sext i32 %sub90 to i64
  store i64 %conv91, i64* %tmp0, align 8, !tbaa !8
  %92 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i32, i32* %92, i64 8
  %93 = load i32, i32* %arrayidx92, align 4, !tbaa !5
  %94 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i32, i32* %94, i64 32
  %95 = load i32, i32* %arrayidx93, align 4, !tbaa !5
  %sub94 = sub nsw i32 %93, %95
  %conv95 = sext i32 %sub94 to i64
  store i64 %conv95, i64* %tmp1, align 8, !tbaa !8
  %96 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %96, i64 16
  %97 = load i32, i32* %arrayidx96, align 4, !tbaa !5
  %98 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %98, i64 24
  %99 = load i32, i32* %arrayidx97, align 4, !tbaa !5
  %sub98 = sub nsw i32 %97, %99
  %conv99 = sext i32 %sub98 to i64
  store i64 %conv99, i64* %tmp2, align 8, !tbaa !8
  %100 = load i64, i64* %tmp10, align 8, !tbaa !8
  %101 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add100 = add nsw i64 %100, %101
  %mul101 = mul nsw i64 %add100, 14564
  %add102 = add nsw i64 %mul101, 16384
  %shr103 = ashr i64 %add102, 15
  %conv104 = trunc i64 %shr103 to i32
  %102 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %conv104, i32* %arrayidx105, align 4, !tbaa !5
  %103 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul106 = mul nsw i64 %103, 17837
  %add107 = add nsw i64 %mul106, 16384
  %shr108 = ashr i64 %add107, 15
  %conv109 = trunc i64 %shr108 to i32
  %104 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i32, i32* %104, i64 16
  store i32 %conv109, i32* %arrayidx110, align 4, !tbaa !5
  %105 = load i64, i64* %tmp10, align 8, !tbaa !8
  %106 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub111 = sub nsw i64 %105, %106
  %107 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub112 = sub nsw i64 %sub111, %107
  %mul113 = mul nsw i64 %sub112, 10298
  %add114 = add nsw i64 %mul113, 16384
  %shr115 = ashr i64 %add114, 15
  %conv116 = trunc i64 %shr115 to i32
  %108 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %108, i64 32
  store i32 %conv116, i32* %arrayidx117, align 4, !tbaa !5
  %109 = load i64, i64* %tmp0, align 8, !tbaa !8
  %110 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add118 = add nsw i64 %109, %110
  %mul119 = mul nsw i64 %add118, 5331
  store i64 %mul119, i64* %tmp10, align 8, !tbaa !8
  %111 = load i64, i64* %tmp10, align 8, !tbaa !8
  %112 = load i64, i64* %tmp0, align 8, !tbaa !8
  %113 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add120 = add nsw i64 %112, %113
  %mul121 = mul nsw i64 %add120, 14564
  %add122 = add nsw i64 %111, %mul121
  %add123 = add nsw i64 %add122, 16384
  %shr124 = ashr i64 %add123, 15
  %conv125 = trunc i64 %shr124 to i32
  %114 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i32, i32* %114, i64 8
  store i32 %conv125, i32* %arrayidx126, align 4, !tbaa !5
  %115 = load i64, i64* %tmp0, align 8, !tbaa !8
  %116 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub127 = sub nsw i64 %115, %116
  %117 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub128 = sub nsw i64 %sub127, %117
  %mul129 = mul nsw i64 %sub128, 14564
  %add130 = add nsw i64 %mul129, 16384
  %shr131 = ashr i64 %add130, 15
  %conv132 = trunc i64 %shr131 to i32
  %118 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i32, i32* %118, i64 24
  store i32 %conv132, i32* %arrayidx133, align 4, !tbaa !5
  %119 = load i64, i64* %tmp10, align 8, !tbaa !8
  %120 = load i64, i64* %tmp2, align 8, !tbaa !8
  %121 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub134 = sub nsw i64 %120, %121
  %mul135 = mul nsw i64 %sub134, 14564
  %add136 = add nsw i64 %119, %mul135
  %add137 = add nsw i64 %add136, 16384
  %shr138 = ashr i64 %add137, 15
  %conv139 = trunc i64 %shr138 to i32
  %122 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i32, i32* %122, i64 40
  store i32 %conv139, i32* %arrayidx140, align 4, !tbaa !5
  %123 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.73
  %124 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc142 = add nsw i32 %124, 1
  store i32 %inc142, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.70

for.end.143:                                      ; preds = %for.cond.70
  %125 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_5x5(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %9 = bitcast i32* %8 to i8*
  %call = call i8* @memset(i8* %9, i32 0, i64 256) #3
  %10 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %10, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  %14 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %15 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %16 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %17 to i32
  %18 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %18, i64 4
  %19 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %19 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %20 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %21 to i32
  %22 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %23 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %24 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %25 to i32
  %conv13 = sext i32 %conv12 to i64
  store i64 %conv13, i64* %tmp2, align 8, !tbaa !8
  %26 = load i64, i64* %tmp0, align 8, !tbaa !8
  %27 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add14 = add nsw i64 %26, %27
  store i64 %add14, i64* %tmp10, align 8, !tbaa !8
  %28 = load i64, i64* %tmp0, align 8, !tbaa !8
  %29 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub = sub nsw i64 %28, %29
  store i64 %sub, i64* %tmp11, align 8, !tbaa !8
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx15, align 1, !tbaa !7
  %conv16 = zext i8 %31 to i32
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %32, i64 4
  %33 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %33 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %conv20 = sext i32 %sub19 to i64
  store i64 %conv20, i64* %tmp0, align 8, !tbaa !8
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %conv22 = zext i8 %35 to i32
  %36 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %36, i64 3
  %37 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %37 to i32
  %sub25 = sub nsw i32 %conv22, %conv24
  %conv26 = sext i32 %sub25 to i64
  store i64 %conv26, i64* %tmp1, align 8, !tbaa !8
  %38 = load i64, i64* %tmp10, align 8, !tbaa !8
  %39 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add27 = add nsw i64 %38, %39
  %sub28 = sub nsw i64 %add27, 640
  %shl = shl i64 %sub28, 3
  %conv29 = trunc i64 %shl to i32
  %40 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %conv29, i32* %arrayidx30, align 4, !tbaa !5
  %41 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul = mul nsw i64 %41, 6476
  store i64 %mul, i64* %tmp11, align 8, !tbaa !8
  %42 = load i64, i64* %tmp2, align 8, !tbaa !8
  %shl31 = shl i64 %42, 2
  %43 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub32 = sub nsw i64 %43, %shl31
  store i64 %sub32, i64* %tmp10, align 8, !tbaa !8
  %44 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul33 = mul nsw i64 %44, 2896
  store i64 %mul33, i64* %tmp10, align 8, !tbaa !8
  %45 = load i64, i64* %tmp11, align 8, !tbaa !8
  %46 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add34 = add nsw i64 %45, %46
  %add35 = add nsw i64 %add34, 512
  %shr = ashr i64 %add35, 10
  %conv36 = trunc i64 %shr to i32
  %47 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %conv36, i32* %arrayidx37, align 4, !tbaa !5
  %48 = load i64, i64* %tmp11, align 8, !tbaa !8
  %49 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub38 = sub nsw i64 %48, %49
  %add39 = add nsw i64 %sub38, 512
  %shr40 = ashr i64 %add39, 10
  %conv41 = trunc i64 %shr40 to i32
  %50 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %50, i64 4
  store i32 %conv41, i32* %arrayidx42, align 4, !tbaa !5
  %51 = load i64, i64* %tmp0, align 8, !tbaa !8
  %52 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add43 = add nsw i64 %51, %52
  %mul44 = mul nsw i64 %add43, 6810
  store i64 %mul44, i64* %tmp10, align 8, !tbaa !8
  %53 = load i64, i64* %tmp10, align 8, !tbaa !8
  %54 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul45 = mul nsw i64 %54, 4209
  %add46 = add nsw i64 %53, %mul45
  %add47 = add nsw i64 %add46, 512
  %shr48 = ashr i64 %add47, 10
  %conv49 = trunc i64 %shr48 to i32
  %55 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %conv49, i32* %arrayidx50, align 4, !tbaa !5
  %56 = load i64, i64* %tmp10, align 8, !tbaa !8
  %57 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul51 = mul nsw i64 %57, 17828
  %sub52 = sub nsw i64 %56, %mul51
  %add53 = add nsw i64 %sub52, 512
  %shr54 = ashr i64 %add53, 10
  %conv55 = trunc i64 %shr54 to i32
  %58 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %conv55, i32* %arrayidx56, align 4, !tbaa !5
  %59 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i32, i32* %59, i64 8
  store i32* %add.ptr57, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %61, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.116, %for.end
  %62 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %62, 5
  br i1 %cmp59, label %for.body.61, label %for.end.118

for.body.61:                                      ; preds = %for.cond.58
  %63 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx62, align 4, !tbaa !5
  %65 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i32, i32* %65, i64 32
  %66 = load i32, i32* %arrayidx63, align 4, !tbaa !5
  %add64 = add nsw i32 %64, %66
  %conv65 = sext i32 %add64 to i64
  store i64 %conv65, i64* %tmp0, align 8, !tbaa !8
  %67 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i32, i32* %67, i64 8
  %68 = load i32, i32* %arrayidx66, align 4, !tbaa !5
  %69 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i32, i32* %69, i64 24
  %70 = load i32, i32* %arrayidx67, align 4, !tbaa !5
  %add68 = add nsw i32 %68, %70
  %conv69 = sext i32 %add68 to i64
  store i64 %conv69, i64* %tmp1, align 8, !tbaa !8
  %71 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i32, i32* %71, i64 16
  %72 = load i32, i32* %arrayidx70, align 4, !tbaa !5
  %conv71 = sext i32 %72 to i64
  store i64 %conv71, i64* %tmp2, align 8, !tbaa !8
  %73 = load i64, i64* %tmp0, align 8, !tbaa !8
  %74 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add72 = add nsw i64 %73, %74
  store i64 %add72, i64* %tmp10, align 8, !tbaa !8
  %75 = load i64, i64* %tmp0, align 8, !tbaa !8
  %76 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub73 = sub nsw i64 %75, %76
  store i64 %sub73, i64* %tmp11, align 8, !tbaa !8
  %77 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i32, i32* %77, i64 0
  %78 = load i32, i32* %arrayidx74, align 4, !tbaa !5
  %79 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %79, i64 32
  %80 = load i32, i32* %arrayidx75, align 4, !tbaa !5
  %sub76 = sub nsw i32 %78, %80
  %conv77 = sext i32 %sub76 to i64
  store i64 %conv77, i64* %tmp0, align 8, !tbaa !8
  %81 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i32, i32* %81, i64 8
  %82 = load i32, i32* %arrayidx78, align 4, !tbaa !5
  %83 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i32, i32* %83, i64 24
  %84 = load i32, i32* %arrayidx79, align 4, !tbaa !5
  %sub80 = sub nsw i32 %82, %84
  %conv81 = sext i32 %sub80 to i64
  store i64 %conv81, i64* %tmp1, align 8, !tbaa !8
  %85 = load i64, i64* %tmp10, align 8, !tbaa !8
  %86 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add82 = add nsw i64 %85, %86
  %mul83 = mul nsw i64 %add82, 10486
  %add84 = add nsw i64 %mul83, 16384
  %shr85 = ashr i64 %add84, 15
  %conv86 = trunc i64 %shr85 to i32
  %87 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %conv86, i32* %arrayidx87, align 4, !tbaa !5
  %88 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul88 = mul nsw i64 %88, 8290
  store i64 %mul88, i64* %tmp11, align 8, !tbaa !8
  %89 = load i64, i64* %tmp2, align 8, !tbaa !8
  %shl89 = shl i64 %89, 2
  %90 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub90 = sub nsw i64 %90, %shl89
  store i64 %sub90, i64* %tmp10, align 8, !tbaa !8
  %91 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul91 = mul nsw i64 %91, 3707
  store i64 %mul91, i64* %tmp10, align 8, !tbaa !8
  %92 = load i64, i64* %tmp11, align 8, !tbaa !8
  %93 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add92 = add nsw i64 %92, %93
  %add93 = add nsw i64 %add92, 16384
  %shr94 = ashr i64 %add93, 15
  %conv95 = trunc i64 %shr94 to i32
  %94 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %94, i64 16
  store i32 %conv95, i32* %arrayidx96, align 4, !tbaa !5
  %95 = load i64, i64* %tmp11, align 8, !tbaa !8
  %96 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub97 = sub nsw i64 %95, %96
  %add98 = add nsw i64 %sub97, 16384
  %shr99 = ashr i64 %add98, 15
  %conv100 = trunc i64 %shr99 to i32
  %97 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i32, i32* %97, i64 32
  store i32 %conv100, i32* %arrayidx101, align 4, !tbaa !5
  %98 = load i64, i64* %tmp0, align 8, !tbaa !8
  %99 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add102 = add nsw i64 %98, %99
  %mul103 = mul nsw i64 %add102, 8716
  store i64 %mul103, i64* %tmp10, align 8, !tbaa !8
  %100 = load i64, i64* %tmp10, align 8, !tbaa !8
  %101 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul104 = mul nsw i64 %101, 5387
  %add105 = add nsw i64 %100, %mul104
  %add106 = add nsw i64 %add105, 16384
  %shr107 = ashr i64 %add106, 15
  %conv108 = trunc i64 %shr107 to i32
  %102 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i32, i32* %102, i64 8
  store i32 %conv108, i32* %arrayidx109, align 4, !tbaa !5
  %103 = load i64, i64* %tmp10, align 8, !tbaa !8
  %104 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul110 = mul nsw i64 %104, 22820
  %sub111 = sub nsw i64 %103, %mul110
  %add112 = add nsw i64 %sub111, 16384
  %shr113 = ashr i64 %add112, 15
  %conv114 = trunc i64 %shr113 to i32
  %105 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i32, i32* %105, i64 24
  store i32 %conv114, i32* %arrayidx115, align 4, !tbaa !5
  %106 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.61
  %107 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc117 = add nsw i32 %107, 1
  store i32 %inc117, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.58

for.end.118:                                      ; preds = %for.cond.58
  %108 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_4x4(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %8 = bitcast i32* %7 to i8*
  %call = call i8* @memset(i8* %8, i32 0, i64 256) #3
  %9 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %9, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %14 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %15 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %16 to i32
  %17 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %18 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %19 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %20 to i32
  %21 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %22 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %23 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %24 to i32
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %25, i64 3
  %26 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %26 to i32
  %sub = sub nsw i32 %conv12, %conv14
  %conv15 = sext i32 %sub to i64
  store i64 %conv15, i64* %tmp10, align 8, !tbaa !8
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %conv17 = zext i8 %28 to i32
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %30 to i32
  %sub20 = sub nsw i32 %conv17, %conv19
  %conv21 = sext i32 %sub20 to i64
  store i64 %conv21, i64* %tmp11, align 8, !tbaa !8
  %31 = load i64, i64* %tmp0, align 8, !tbaa !8
  %32 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add22 = add nsw i64 %31, %32
  %sub23 = sub nsw i64 %add22, 512
  %shl = shl i64 %sub23, 4
  %conv24 = trunc i64 %shl to i32
  %33 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %conv24, i32* %arrayidx25, align 4, !tbaa !5
  %34 = load i64, i64* %tmp0, align 8, !tbaa !8
  %35 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub26 = sub nsw i64 %34, %35
  %shl27 = shl i64 %sub26, 4
  %conv28 = trunc i64 %shl27 to i32
  %36 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %conv28, i32* %arrayidx29, align 4, !tbaa !5
  %37 = load i64, i64* %tmp10, align 8, !tbaa !8
  %38 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add30 = add nsw i64 %37, %38
  %mul = mul nsw i64 %add30, 4433
  store i64 %mul, i64* %tmp0, align 8, !tbaa !8
  %39 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add31 = add nsw i64 %39, 256
  store i64 %add31, i64* %tmp0, align 8, !tbaa !8
  %40 = load i64, i64* %tmp0, align 8, !tbaa !8
  %41 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul32 = mul nsw i64 %41, 6270
  %add33 = add nsw i64 %40, %mul32
  %shr = ashr i64 %add33, 9
  %conv34 = trunc i64 %shr to i32
  %42 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %conv34, i32* %arrayidx35, align 4, !tbaa !5
  %43 = load i64, i64* %tmp0, align 8, !tbaa !8
  %44 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul36 = mul nsw i64 %44, 15137
  %sub37 = sub nsw i64 %43, %mul36
  %shr38 = ashr i64 %sub37, 9
  %conv39 = trunc i64 %shr38 to i32
  %45 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 %conv39, i32* %arrayidx40, align 4, !tbaa !5
  %46 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i32, i32* %46, i64 8
  store i32* %add.ptr41, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %48, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.84, %for.end
  %49 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %49, 4
  br i1 %cmp43, label %for.body.45, label %for.end.86

for.body.45:                                      ; preds = %for.cond.42
  %50 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i32, i32* %50, i64 0
  %51 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  %52 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i32, i32* %52, i64 24
  %53 = load i32, i32* %arrayidx47, align 4, !tbaa !5
  %add48 = add nsw i32 %51, %53
  %conv49 = sext i32 %add48 to i64
  %add50 = add nsw i64 %conv49, 2
  store i64 %add50, i64* %tmp0, align 8, !tbaa !8
  %54 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i32, i32* %54, i64 8
  %55 = load i32, i32* %arrayidx51, align 4, !tbaa !5
  %56 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i32, i32* %56, i64 16
  %57 = load i32, i32* %arrayidx52, align 4, !tbaa !5
  %add53 = add nsw i32 %55, %57
  %conv54 = sext i32 %add53 to i64
  store i64 %conv54, i64* %tmp1, align 8, !tbaa !8
  %58 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %58, i64 0
  %59 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %60 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i32, i32* %60, i64 24
  %61 = load i32, i32* %arrayidx56, align 4, !tbaa !5
  %sub57 = sub nsw i32 %59, %61
  %conv58 = sext i32 %sub57 to i64
  store i64 %conv58, i64* %tmp10, align 8, !tbaa !8
  %62 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i32, i32* %62, i64 8
  %63 = load i32, i32* %arrayidx59, align 4, !tbaa !5
  %64 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i32, i32* %64, i64 16
  %65 = load i32, i32* %arrayidx60, align 4, !tbaa !5
  %sub61 = sub nsw i32 %63, %65
  %conv62 = sext i32 %sub61 to i64
  store i64 %conv62, i64* %tmp11, align 8, !tbaa !8
  %66 = load i64, i64* %tmp0, align 8, !tbaa !8
  %67 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add63 = add nsw i64 %66, %67
  %shr64 = ashr i64 %add63, 2
  %conv65 = trunc i64 %shr64 to i32
  %68 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %conv65, i32* %arrayidx66, align 4, !tbaa !5
  %69 = load i64, i64* %tmp0, align 8, !tbaa !8
  %70 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub67 = sub nsw i64 %69, %70
  %shr68 = ashr i64 %sub67, 2
  %conv69 = trunc i64 %shr68 to i32
  %71 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i32, i32* %71, i64 16
  store i32 %conv69, i32* %arrayidx70, align 4, !tbaa !5
  %72 = load i64, i64* %tmp10, align 8, !tbaa !8
  %73 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add71 = add nsw i64 %72, %73
  %mul72 = mul nsw i64 %add71, 4433
  store i64 %mul72, i64* %tmp0, align 8, !tbaa !8
  %74 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add73 = add nsw i64 %74, 16384
  store i64 %add73, i64* %tmp0, align 8, !tbaa !8
  %75 = load i64, i64* %tmp0, align 8, !tbaa !8
  %76 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul74 = mul nsw i64 %76, 6270
  %add75 = add nsw i64 %75, %mul74
  %shr76 = ashr i64 %add75, 15
  %conv77 = trunc i64 %shr76 to i32
  %77 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i32, i32* %77, i64 8
  store i32 %conv77, i32* %arrayidx78, align 4, !tbaa !5
  %78 = load i64, i64* %tmp0, align 8, !tbaa !8
  %79 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul79 = mul nsw i64 %79, 15137
  %sub80 = sub nsw i64 %78, %mul79
  %shr81 = ashr i64 %sub80, 15
  %conv82 = trunc i64 %shr81 to i32
  %80 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i32, i32* %80, i64 24
  store i32 %conv82, i32* %arrayidx83, align 4, !tbaa !5
  %81 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.45
  %82 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc85 = add nsw i32 %82, 1
  store i32 %inc85, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.42

for.end.86:                                       ; preds = %for.cond.42
  %83 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_3x3(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %7 = bitcast i32* %6 to i8*
  %call = call i8* @memset(i8* %7, i32 0, i64 256) #3
  %8 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %8, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %13 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %14 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %15 to i32
  %16 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %17 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %18 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %19 to i32
  %conv7 = sext i32 %conv6 to i64
  store i64 %conv7, i64* %tmp1, align 8, !tbaa !8
  %20 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %21 to i32
  %22 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx10, align 1, !tbaa !7
  %conv11 = zext i8 %23 to i32
  %sub = sub nsw i32 %conv9, %conv11
  %conv12 = sext i32 %sub to i64
  store i64 %conv12, i64* %tmp2, align 8, !tbaa !8
  %24 = load i64, i64* %tmp0, align 8, !tbaa !8
  %25 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add13 = add nsw i64 %24, %25
  %sub14 = sub nsw i64 %add13, 384
  %shl = shl i64 %sub14, 4
  %conv15 = trunc i64 %shl to i32
  %26 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %conv15, i32* %arrayidx16, align 4, !tbaa !5
  %27 = load i64, i64* %tmp0, align 8, !tbaa !8
  %28 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub17 = sub nsw i64 %27, %28
  %29 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub18 = sub nsw i64 %sub17, %29
  %mul = mul nsw i64 %sub18, 5793
  %add19 = add nsw i64 %mul, 256
  %shr = ashr i64 %add19, 9
  %conv20 = trunc i64 %shr to i32
  %30 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %conv20, i32* %arrayidx21, align 4, !tbaa !5
  %31 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul22 = mul nsw i64 %31, 10033
  %add23 = add nsw i64 %mul22, 256
  %shr24 = ashr i64 %add23, 9
  %conv25 = trunc i64 %shr24 to i32
  %32 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %conv25, i32* %arrayidx26, align 4, !tbaa !5
  %33 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds i32, i32* %33, i64 8
  store i32* %add.ptr27, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %35, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.60, %for.end
  %36 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %36, 3
  br i1 %cmp29, label %for.body.31, label %for.end.62

for.body.31:                                      ; preds = %for.cond.28
  %37 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx32, align 4, !tbaa !5
  %39 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i32, i32* %39, i64 16
  %40 = load i32, i32* %arrayidx33, align 4, !tbaa !5
  %add34 = add nsw i32 %38, %40
  %conv35 = sext i32 %add34 to i64
  store i64 %conv35, i64* %tmp0, align 8, !tbaa !8
  %41 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i32, i32* %41, i64 8
  %42 = load i32, i32* %arrayidx36, align 4, !tbaa !5
  %conv37 = sext i32 %42 to i64
  store i64 %conv37, i64* %tmp1, align 8, !tbaa !8
  %43 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i32, i32* %43, i64 0
  %44 = load i32, i32* %arrayidx38, align 4, !tbaa !5
  %45 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i32, i32* %45, i64 16
  %46 = load i32, i32* %arrayidx39, align 4, !tbaa !5
  %sub40 = sub nsw i32 %44, %46
  %conv41 = sext i32 %sub40 to i64
  store i64 %conv41, i64* %tmp2, align 8, !tbaa !8
  %47 = load i64, i64* %tmp0, align 8, !tbaa !8
  %48 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add42 = add nsw i64 %47, %48
  %mul43 = mul nsw i64 %add42, 14564
  %add44 = add nsw i64 %mul43, 16384
  %shr45 = ashr i64 %add44, 15
  %conv46 = trunc i64 %shr45 to i32
  %49 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %conv46, i32* %arrayidx47, align 4, !tbaa !5
  %50 = load i64, i64* %tmp0, align 8, !tbaa !8
  %51 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub48 = sub nsw i64 %50, %51
  %52 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub49 = sub nsw i64 %sub48, %52
  %mul50 = mul nsw i64 %sub49, 10298
  %add51 = add nsw i64 %mul50, 16384
  %shr52 = ashr i64 %add51, 15
  %conv53 = trunc i64 %shr52 to i32
  %53 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %53, i64 16
  store i32 %conv53, i32* %arrayidx54, align 4, !tbaa !5
  %54 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul55 = mul nsw i64 %54, 17837
  %add56 = add nsw i64 %mul55, 16384
  %shr57 = ashr i64 %add56, 15
  %conv58 = trunc i64 %shr57 to i32
  %55 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i32, i32* %55, i64 8
  store i32 %conv58, i32* %arrayidx59, align 4, !tbaa !5
  %56 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.31
  %57 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc61 = add nsw i32 %57, 1
  store i32 %inc61, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.28

for.end.62:                                       ; preds = %for.cond.28
  %58 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_2x2(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %elemptr = alloca i8*, align 8
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i32* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %6 = bitcast i32* %5 to i8*
  %call = call i8* @memset(i8* %6, i32 0, i64 256) #3
  %7 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %9 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %10 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %11 to i32
  %12 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %13 to i32
  %add = add nsw i32 %conv, %conv3
  store i32 %add, i32* %tmp0, align 4, !tbaa !5
  %14 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  %conv5 = zext i8 %15 to i32
  %16 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %conv7 = zext i8 %17 to i32
  %sub = sub nsw i32 %conv5, %conv7
  store i32 %sub, i32* %tmp1, align 4, !tbaa !5
  %18 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8*, i8** %18, i64 1
  %19 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  %20 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext9 = zext i32 %20 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %19, i64 %idx.ext9
  store i8* %add.ptr10, i8** %elemptr, align 8, !tbaa !1
  %21 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %22 to i32
  %23 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %24 to i32
  %add15 = add nsw i32 %conv12, %conv14
  store i32 %add15, i32* %tmp2, align 4, !tbaa !5
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %conv17 = zext i8 %26 to i32
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %28 to i32
  %sub20 = sub nsw i32 %conv17, %conv19
  store i32 %sub20, i32* %tmp3, align 4, !tbaa !5
  %29 = load i32, i32* %tmp0, align 4, !tbaa !5
  %30 = load i32, i32* %tmp2, align 4, !tbaa !5
  %add21 = add nsw i32 %29, %30
  %sub22 = sub nsw i32 %add21, 512
  %shl = shl i32 %sub22, 4
  %31 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %shl, i32* %arrayidx23, align 4, !tbaa !5
  %32 = load i32, i32* %tmp0, align 4, !tbaa !5
  %33 = load i32, i32* %tmp2, align 4, !tbaa !5
  %sub24 = sub nsw i32 %32, %33
  %shl25 = shl i32 %sub24, 4
  %34 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i32, i32* %34, i64 8
  store i32 %shl25, i32* %arrayidx26, align 4, !tbaa !5
  %35 = load i32, i32* %tmp1, align 4, !tbaa !5
  %36 = load i32, i32* %tmp3, align 4, !tbaa !5
  %add27 = add nsw i32 %35, %36
  %shl28 = shl i32 %add27, 4
  %37 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %shl28, i32* %arrayidx29, align 4, !tbaa !5
  %38 = load i32, i32* %tmp1, align 4, !tbaa !5
  %39 = load i32, i32* %tmp3, align 4, !tbaa !5
  %sub30 = sub nsw i32 %38, %39
  %shl31 = shl i32 %sub30, 4
  %40 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i32, i32* %40, i64 9
  store i32 %shl31, i32* %arrayidx32, align 4, !tbaa !5
  %41 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_1x1(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %dcval = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %2 = bitcast i32* %1 to i8*
  %call = call i8* @memset(i8* %2, i32 0, i64 256) #3
  %3 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idxprom = zext i32 %3 to i64
  %4 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %dcval, align 4, !tbaa !5
  %7 = load i32, i32* %dcval, align 4, !tbaa !5
  %sub = sub nsw i32 %7, 128
  %shl = shl i32 %sub, 6
  %8 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %shl, i32* %arrayidx2, align 4, !tbaa !5
  %9 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_9x9(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %workspace = alloca [8 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast [8 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 32, i8* %11) #1
  %12 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %16, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.119, %entry
  %17 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %20 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %21 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %22 to i32
  %23 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %23, i64 8
  %24 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %24 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %26 to i32
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %27, i64 7
  %28 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %28 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %30 to i32
  %31 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %31, i64 6
  %32 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %32 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %33 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %33, i64 3
  %34 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %34 to i32
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %35, i64 5
  %36 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %36 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp3, align 8, !tbaa !8
  %37 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %37, i64 4
  %38 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %38 to i32
  %conv25 = sext i32 %conv24 to i64
  store i64 %conv25, i64* %tmp4, align 8, !tbaa !8
  %39 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %40 to i32
  %41 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %41, i64 8
  %42 = load i8, i8* %arrayidx28, align 1, !tbaa !7
  %conv29 = zext i8 %42 to i32
  %sub = sub nsw i32 %conv27, %conv29
  %conv30 = sext i32 %sub to i64
  store i64 %conv30, i64* %tmp10, align 8, !tbaa !8
  %43 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %44 to i32
  %45 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %45, i64 7
  %46 = load i8, i8* %arrayidx33, align 1, !tbaa !7
  %conv34 = zext i8 %46 to i32
  %sub35 = sub nsw i32 %conv32, %conv34
  %conv36 = sext i32 %sub35 to i64
  store i64 %conv36, i64* %tmp11, align 8, !tbaa !8
  %47 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %47, i64 2
  %48 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = zext i8 %48 to i32
  %49 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %49, i64 6
  %50 = load i8, i8* %arrayidx39, align 1, !tbaa !7
  %conv40 = zext i8 %50 to i32
  %sub41 = sub nsw i32 %conv38, %conv40
  %conv42 = sext i32 %sub41 to i64
  store i64 %conv42, i64* %tmp12, align 8, !tbaa !8
  %51 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %51, i64 3
  %52 = load i8, i8* %arrayidx43, align 1, !tbaa !7
  %conv44 = zext i8 %52 to i32
  %53 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %53, i64 5
  %54 = load i8, i8* %arrayidx45, align 1, !tbaa !7
  %conv46 = zext i8 %54 to i32
  %sub47 = sub nsw i32 %conv44, %conv46
  %conv48 = sext i32 %sub47 to i64
  store i64 %conv48, i64* %tmp13, align 8, !tbaa !8
  %55 = load i64, i64* %tmp0, align 8, !tbaa !8
  %56 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add49 = add nsw i64 %55, %56
  %57 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add50 = add nsw i64 %add49, %57
  store i64 %add50, i64* %z1, align 8, !tbaa !8
  %58 = load i64, i64* %tmp1, align 8, !tbaa !8
  %59 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add51 = add nsw i64 %58, %59
  store i64 %add51, i64* %z2, align 8, !tbaa !8
  %60 = load i64, i64* %z1, align 8, !tbaa !8
  %61 = load i64, i64* %z2, align 8, !tbaa !8
  %add52 = add nsw i64 %60, %61
  %sub53 = sub nsw i64 %add52, 1152
  %shl = shl i64 %sub53, 1
  %conv54 = trunc i64 %shl to i32
  %62 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %conv54, i32* %arrayidx55, align 4, !tbaa !5
  %63 = load i64, i64* %z1, align 8, !tbaa !8
  %64 = load i64, i64* %z2, align 8, !tbaa !8
  %sub56 = sub nsw i64 %63, %64
  %65 = load i64, i64* %z2, align 8, !tbaa !8
  %sub57 = sub nsw i64 %sub56, %65
  %mul = mul nsw i64 %sub57, 5793
  %add58 = add nsw i64 %mul, 2048
  %shr = ashr i64 %add58, 12
  %conv59 = trunc i64 %shr to i32
  %66 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i32, i32* %66, i64 6
  store i32 %conv59, i32* %arrayidx60, align 4, !tbaa !5
  %67 = load i64, i64* %tmp0, align 8, !tbaa !8
  %68 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub61 = sub nsw i64 %67, %68
  %mul62 = mul nsw i64 %sub61, 10887
  store i64 %mul62, i64* %z1, align 8, !tbaa !8
  %69 = load i64, i64* %tmp1, align 8, !tbaa !8
  %70 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub63 = sub nsw i64 %69, %70
  %71 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub64 = sub nsw i64 %sub63, %71
  %mul65 = mul nsw i64 %sub64, 5793
  store i64 %mul65, i64* %z2, align 8, !tbaa !8
  %72 = load i64, i64* %tmp2, align 8, !tbaa !8
  %73 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub66 = sub nsw i64 %72, %73
  %mul67 = mul nsw i64 %sub66, 8875
  %74 = load i64, i64* %z1, align 8, !tbaa !8
  %add68 = add nsw i64 %mul67, %74
  %75 = load i64, i64* %z2, align 8, !tbaa !8
  %add69 = add nsw i64 %add68, %75
  %add70 = add nsw i64 %add69, 2048
  %shr71 = ashr i64 %add70, 12
  %conv72 = trunc i64 %shr71 to i32
  %76 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %conv72, i32* %arrayidx73, align 4, !tbaa !5
  %77 = load i64, i64* %tmp3, align 8, !tbaa !8
  %78 = load i64, i64* %tmp0, align 8, !tbaa !8
  %sub74 = sub nsw i64 %77, %78
  %mul75 = mul nsw i64 %sub74, 2012
  %79 = load i64, i64* %z1, align 8, !tbaa !8
  %add76 = add nsw i64 %mul75, %79
  %80 = load i64, i64* %z2, align 8, !tbaa !8
  %sub77 = sub nsw i64 %add76, %80
  %add78 = add nsw i64 %sub77, 2048
  %shr79 = ashr i64 %add78, 12
  %conv80 = trunc i64 %shr79 to i32
  %81 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i32, i32* %81, i64 4
  store i32 %conv80, i32* %arrayidx81, align 4, !tbaa !5
  %82 = load i64, i64* %tmp10, align 8, !tbaa !8
  %83 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub82 = sub nsw i64 %82, %83
  %84 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub83 = sub nsw i64 %sub82, %84
  %mul84 = mul nsw i64 %sub83, 10033
  %add85 = add nsw i64 %mul84, 2048
  %shr86 = ashr i64 %add85, 12
  %conv87 = trunc i64 %shr86 to i32
  %85 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i32, i32* %85, i64 3
  store i32 %conv87, i32* %arrayidx88, align 4, !tbaa !5
  %86 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul89 = mul nsw i64 %86, 10033
  store i64 %mul89, i64* %tmp11, align 8, !tbaa !8
  %87 = load i64, i64* %tmp10, align 8, !tbaa !8
  %88 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add90 = add nsw i64 %87, %88
  %mul91 = mul nsw i64 %add90, 7447
  store i64 %mul91, i64* %tmp0, align 8, !tbaa !8
  %89 = load i64, i64* %tmp10, align 8, !tbaa !8
  %90 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add92 = add nsw i64 %89, %90
  %mul93 = mul nsw i64 %add92, 3962
  store i64 %mul93, i64* %tmp1, align 8, !tbaa !8
  %91 = load i64, i64* %tmp11, align 8, !tbaa !8
  %92 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add94 = add nsw i64 %91, %92
  %93 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add95 = add nsw i64 %add94, %93
  %add96 = add nsw i64 %add95, 2048
  %shr97 = ashr i64 %add96, 12
  %conv98 = trunc i64 %shr97 to i32
  %94 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %conv98, i32* %arrayidx99, align 4, !tbaa !5
  %95 = load i64, i64* %tmp12, align 8, !tbaa !8
  %96 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub100 = sub nsw i64 %95, %96
  %mul101 = mul nsw i64 %sub100, 11409
  store i64 %mul101, i64* %tmp2, align 8, !tbaa !8
  %97 = load i64, i64* %tmp0, align 8, !tbaa !8
  %98 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub102 = sub nsw i64 %97, %98
  %99 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub103 = sub nsw i64 %sub102, %99
  %add104 = add nsw i64 %sub103, 2048
  %shr105 = ashr i64 %add104, 12
  %conv106 = trunc i64 %shr105 to i32
  %100 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i32, i32* %100, i64 5
  store i32 %conv106, i32* %arrayidx107, align 4, !tbaa !5
  %101 = load i64, i64* %tmp1, align 8, !tbaa !8
  %102 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub108 = sub nsw i64 %101, %102
  %103 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add109 = add nsw i64 %sub108, %103
  %add110 = add nsw i64 %add109, 2048
  %shr111 = ashr i64 %add110, 12
  %conv112 = trunc i64 %shr111 to i32
  %104 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i32, i32* %104, i64 7
  store i32 %conv112, i32* %arrayidx113, align 4, !tbaa !5
  %105 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %106 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %106, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %107 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp115 = icmp eq i32 %107, 9
  br i1 %cmp115, label %if.then.117, label %if.end

if.then.117:                                      ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %108 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr118 = getelementptr inbounds i32, i32* %108, i64 8
  store i32* %add.ptr118, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.119

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.119

if.end.119:                                       ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.117
  %109 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %109, i32** %dataptr, align 8, !tbaa !1
  %arraydecay120 = getelementptr inbounds [8 x i32], [8 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay120, i32** %wsptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc, %for.end
  %110 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp122 = icmp sge i32 %110, 0
  br i1 %cmp122, label %for.body, label %for.end.228

for.body:                                         ; preds = %for.cond.121
  %111 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i32, i32* %111, i64 0
  %112 = load i32, i32* %arrayidx124, align 4, !tbaa !5
  %113 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i32, i32* %113, i64 0
  %114 = load i32, i32* %arrayidx125, align 4, !tbaa !5
  %add126 = add nsw i32 %112, %114
  %conv127 = sext i32 %add126 to i64
  store i64 %conv127, i64* %tmp0, align 8, !tbaa !8
  %115 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i32, i32* %115, i64 8
  %116 = load i32, i32* %arrayidx128, align 4, !tbaa !5
  %117 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i32, i32* %117, i64 56
  %118 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %add130 = add nsw i32 %116, %118
  %conv131 = sext i32 %add130 to i64
  store i64 %conv131, i64* %tmp1, align 8, !tbaa !8
  %119 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %119, i64 16
  %120 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %121 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i32, i32* %121, i64 48
  %122 = load i32, i32* %arrayidx133, align 4, !tbaa !5
  %add134 = add nsw i32 %120, %122
  %conv135 = sext i32 %add134 to i64
  store i64 %conv135, i64* %tmp2, align 8, !tbaa !8
  %123 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i32, i32* %123, i64 24
  %124 = load i32, i32* %arrayidx136, align 4, !tbaa !5
  %125 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i32, i32* %125, i64 40
  %126 = load i32, i32* %arrayidx137, align 4, !tbaa !5
  %add138 = add nsw i32 %124, %126
  %conv139 = sext i32 %add138 to i64
  store i64 %conv139, i64* %tmp3, align 8, !tbaa !8
  %127 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i32, i32* %127, i64 32
  %128 = load i32, i32* %arrayidx140, align 4, !tbaa !5
  %conv141 = sext i32 %128 to i64
  store i64 %conv141, i64* %tmp4, align 8, !tbaa !8
  %129 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i32, i32* %129, i64 0
  %130 = load i32, i32* %arrayidx142, align 4, !tbaa !5
  %131 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i32, i32* %131, i64 0
  %132 = load i32, i32* %arrayidx143, align 4, !tbaa !5
  %sub144 = sub nsw i32 %130, %132
  %conv145 = sext i32 %sub144 to i64
  store i64 %conv145, i64* %tmp10, align 8, !tbaa !8
  %133 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i32, i32* %133, i64 8
  %134 = load i32, i32* %arrayidx146, align 4, !tbaa !5
  %135 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i32, i32* %135, i64 56
  %136 = load i32, i32* %arrayidx147, align 4, !tbaa !5
  %sub148 = sub nsw i32 %134, %136
  %conv149 = sext i32 %sub148 to i64
  store i64 %conv149, i64* %tmp11, align 8, !tbaa !8
  %137 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i32, i32* %137, i64 16
  %138 = load i32, i32* %arrayidx150, align 4, !tbaa !5
  %139 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i32, i32* %139, i64 48
  %140 = load i32, i32* %arrayidx151, align 4, !tbaa !5
  %sub152 = sub nsw i32 %138, %140
  %conv153 = sext i32 %sub152 to i64
  store i64 %conv153, i64* %tmp12, align 8, !tbaa !8
  %141 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i32, i32* %141, i64 24
  %142 = load i32, i32* %arrayidx154, align 4, !tbaa !5
  %143 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i32, i32* %143, i64 40
  %144 = load i32, i32* %arrayidx155, align 4, !tbaa !5
  %sub156 = sub nsw i32 %142, %144
  %conv157 = sext i32 %sub156 to i64
  store i64 %conv157, i64* %tmp13, align 8, !tbaa !8
  %145 = load i64, i64* %tmp0, align 8, !tbaa !8
  %146 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add158 = add nsw i64 %145, %146
  %147 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add159 = add nsw i64 %add158, %147
  store i64 %add159, i64* %z1, align 8, !tbaa !8
  %148 = load i64, i64* %tmp1, align 8, !tbaa !8
  %149 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add160 = add nsw i64 %148, %149
  store i64 %add160, i64* %z2, align 8, !tbaa !8
  %150 = load i64, i64* %z1, align 8, !tbaa !8
  %151 = load i64, i64* %z2, align 8, !tbaa !8
  %add161 = add nsw i64 %150, %151
  %mul162 = mul nsw i64 %add161, 12945
  %add163 = add nsw i64 %mul162, 16384
  %shr164 = ashr i64 %add163, 15
  %conv165 = trunc i64 %shr164 to i32
  %152 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %conv165, i32* %arrayidx166, align 4, !tbaa !5
  %153 = load i64, i64* %z1, align 8, !tbaa !8
  %154 = load i64, i64* %z2, align 8, !tbaa !8
  %sub167 = sub nsw i64 %153, %154
  %155 = load i64, i64* %z2, align 8, !tbaa !8
  %sub168 = sub nsw i64 %sub167, %155
  %mul169 = mul nsw i64 %sub168, 9154
  %add170 = add nsw i64 %mul169, 16384
  %shr171 = ashr i64 %add170, 15
  %conv172 = trunc i64 %shr171 to i32
  %156 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i32, i32* %156, i64 48
  store i32 %conv172, i32* %arrayidx173, align 4, !tbaa !5
  %157 = load i64, i64* %tmp0, align 8, !tbaa !8
  %158 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub174 = sub nsw i64 %157, %158
  %mul175 = mul nsw i64 %sub174, 17203
  store i64 %mul175, i64* %z1, align 8, !tbaa !8
  %159 = load i64, i64* %tmp1, align 8, !tbaa !8
  %160 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub176 = sub nsw i64 %159, %160
  %161 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub177 = sub nsw i64 %sub176, %161
  %mul178 = mul nsw i64 %sub177, 9154
  store i64 %mul178, i64* %z2, align 8, !tbaa !8
  %162 = load i64, i64* %tmp2, align 8, !tbaa !8
  %163 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub179 = sub nsw i64 %162, %163
  %mul180 = mul nsw i64 %sub179, 14024
  %164 = load i64, i64* %z1, align 8, !tbaa !8
  %add181 = add nsw i64 %mul180, %164
  %165 = load i64, i64* %z2, align 8, !tbaa !8
  %add182 = add nsw i64 %add181, %165
  %add183 = add nsw i64 %add182, 16384
  %shr184 = ashr i64 %add183, 15
  %conv185 = trunc i64 %shr184 to i32
  %166 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i32, i32* %166, i64 16
  store i32 %conv185, i32* %arrayidx186, align 4, !tbaa !5
  %167 = load i64, i64* %tmp3, align 8, !tbaa !8
  %168 = load i64, i64* %tmp0, align 8, !tbaa !8
  %sub187 = sub nsw i64 %167, %168
  %mul188 = mul nsw i64 %sub187, 3179
  %169 = load i64, i64* %z1, align 8, !tbaa !8
  %add189 = add nsw i64 %mul188, %169
  %170 = load i64, i64* %z2, align 8, !tbaa !8
  %sub190 = sub nsw i64 %add189, %170
  %add191 = add nsw i64 %sub190, 16384
  %shr192 = ashr i64 %add191, 15
  %conv193 = trunc i64 %shr192 to i32
  %171 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i32, i32* %171, i64 32
  store i32 %conv193, i32* %arrayidx194, align 4, !tbaa !5
  %172 = load i64, i64* %tmp10, align 8, !tbaa !8
  %173 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub195 = sub nsw i64 %172, %173
  %174 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub196 = sub nsw i64 %sub195, %174
  %mul197 = mul nsw i64 %sub196, 15855
  %add198 = add nsw i64 %mul197, 16384
  %shr199 = ashr i64 %add198, 15
  %conv200 = trunc i64 %shr199 to i32
  %175 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i32, i32* %175, i64 24
  store i32 %conv200, i32* %arrayidx201, align 4, !tbaa !5
  %176 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul202 = mul nsw i64 %176, 15855
  store i64 %mul202, i64* %tmp11, align 8, !tbaa !8
  %177 = load i64, i64* %tmp10, align 8, !tbaa !8
  %178 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add203 = add nsw i64 %177, %178
  %mul204 = mul nsw i64 %add203, 11768
  store i64 %mul204, i64* %tmp0, align 8, !tbaa !8
  %179 = load i64, i64* %tmp10, align 8, !tbaa !8
  %180 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add205 = add nsw i64 %179, %180
  %mul206 = mul nsw i64 %add205, 6262
  store i64 %mul206, i64* %tmp1, align 8, !tbaa !8
  %181 = load i64, i64* %tmp11, align 8, !tbaa !8
  %182 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add207 = add nsw i64 %181, %182
  %183 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add208 = add nsw i64 %add207, %183
  %add209 = add nsw i64 %add208, 16384
  %shr210 = ashr i64 %add209, 15
  %conv211 = trunc i64 %shr210 to i32
  %184 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i32, i32* %184, i64 8
  store i32 %conv211, i32* %arrayidx212, align 4, !tbaa !5
  %185 = load i64, i64* %tmp12, align 8, !tbaa !8
  %186 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub213 = sub nsw i64 %185, %186
  %mul214 = mul nsw i64 %sub213, 18029
  store i64 %mul214, i64* %tmp2, align 8, !tbaa !8
  %187 = load i64, i64* %tmp0, align 8, !tbaa !8
  %188 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub215 = sub nsw i64 %187, %188
  %189 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub216 = sub nsw i64 %sub215, %189
  %add217 = add nsw i64 %sub216, 16384
  %shr218 = ashr i64 %add217, 15
  %conv219 = trunc i64 %shr218 to i32
  %190 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i32, i32* %190, i64 40
  store i32 %conv219, i32* %arrayidx220, align 4, !tbaa !5
  %191 = load i64, i64* %tmp1, align 8, !tbaa !8
  %192 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub221 = sub nsw i64 %191, %192
  %193 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add222 = add nsw i64 %sub221, %193
  %add223 = add nsw i64 %add222, 16384
  %shr224 = ashr i64 %add223, 15
  %conv225 = trunc i64 %shr224 to i32
  %194 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i32, i32* %194, i64 56
  store i32 %conv225, i32* %arrayidx226, align 4, !tbaa !5
  %195 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %196 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr227 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %incdec.ptr227, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %197 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %197, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.121

for.end.228:                                      ; preds = %for.cond.121
  %198 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast [8 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 32, i8* %202) #1
  %203 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_10x10(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %workspace = alloca [16 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast [16 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 64, i8* %10) #1
  %11 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %15, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.134, %entry
  %16 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %19 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %20 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %21 to i32
  %22 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %22, i64 9
  %23 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %23 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %24 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %25 to i32
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %26, i64 8
  %27 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %27 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %29 to i32
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %30, i64 7
  %31 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %31 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp12, align 8, !tbaa !8
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %32, i64 3
  %33 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %33 to i32
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %34, i64 6
  %35 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %35 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp3, align 8, !tbaa !8
  %36 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %36, i64 4
  %37 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %37 to i32
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %38, i64 5
  %39 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %39 to i32
  %add27 = add nsw i32 %conv24, %conv26
  %conv28 = sext i32 %add27 to i64
  store i64 %conv28, i64* %tmp4, align 8, !tbaa !8
  %40 = load i64, i64* %tmp0, align 8, !tbaa !8
  %41 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add29 = add nsw i64 %40, %41
  store i64 %add29, i64* %tmp10, align 8, !tbaa !8
  %42 = load i64, i64* %tmp0, align 8, !tbaa !8
  %43 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub = sub nsw i64 %42, %43
  store i64 %sub, i64* %tmp13, align 8, !tbaa !8
  %44 = load i64, i64* %tmp1, align 8, !tbaa !8
  %45 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add30 = add nsw i64 %44, %45
  store i64 %add30, i64* %tmp11, align 8, !tbaa !8
  %46 = load i64, i64* %tmp1, align 8, !tbaa !8
  %47 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub31 = sub nsw i64 %46, %47
  store i64 %sub31, i64* %tmp14, align 8, !tbaa !8
  %48 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %49 to i32
  %50 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %50, i64 9
  %51 = load i8, i8* %arrayidx34, align 1, !tbaa !7
  %conv35 = zext i8 %51 to i32
  %sub36 = sub nsw i32 %conv33, %conv35
  %conv37 = sext i32 %sub36 to i64
  store i64 %conv37, i64* %tmp0, align 8, !tbaa !8
  %52 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx38, align 1, !tbaa !7
  %conv39 = zext i8 %53 to i32
  %54 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %54, i64 8
  %55 = load i8, i8* %arrayidx40, align 1, !tbaa !7
  %conv41 = zext i8 %55 to i32
  %sub42 = sub nsw i32 %conv39, %conv41
  %conv43 = sext i32 %sub42 to i64
  store i64 %conv43, i64* %tmp1, align 8, !tbaa !8
  %56 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %56, i64 2
  %57 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %conv45 = zext i8 %57 to i32
  %58 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %58, i64 7
  %59 = load i8, i8* %arrayidx46, align 1, !tbaa !7
  %conv47 = zext i8 %59 to i32
  %sub48 = sub nsw i32 %conv45, %conv47
  %conv49 = sext i32 %sub48 to i64
  store i64 %conv49, i64* %tmp2, align 8, !tbaa !8
  %60 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %60, i64 3
  %61 = load i8, i8* %arrayidx50, align 1, !tbaa !7
  %conv51 = zext i8 %61 to i32
  %62 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %62, i64 6
  %63 = load i8, i8* %arrayidx52, align 1, !tbaa !7
  %conv53 = zext i8 %63 to i32
  %sub54 = sub nsw i32 %conv51, %conv53
  %conv55 = sext i32 %sub54 to i64
  store i64 %conv55, i64* %tmp3, align 8, !tbaa !8
  %64 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %64, i64 4
  %65 = load i8, i8* %arrayidx56, align 1, !tbaa !7
  %conv57 = zext i8 %65 to i32
  %66 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %66, i64 5
  %67 = load i8, i8* %arrayidx58, align 1, !tbaa !7
  %conv59 = zext i8 %67 to i32
  %sub60 = sub nsw i32 %conv57, %conv59
  %conv61 = sext i32 %sub60 to i64
  store i64 %conv61, i64* %tmp4, align 8, !tbaa !8
  %68 = load i64, i64* %tmp10, align 8, !tbaa !8
  %69 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add62 = add nsw i64 %68, %69
  %70 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add63 = add nsw i64 %add62, %70
  %sub64 = sub nsw i64 %add63, 1280
  %shl = shl i64 %sub64, 1
  %conv65 = trunc i64 %shl to i32
  %71 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %conv65, i32* %arrayidx66, align 4, !tbaa !5
  %72 = load i64, i64* %tmp12, align 8, !tbaa !8
  %73 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add67 = add nsw i64 %73, %72
  store i64 %add67, i64* %tmp12, align 8, !tbaa !8
  %74 = load i64, i64* %tmp10, align 8, !tbaa !8
  %75 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub68 = sub nsw i64 %74, %75
  %mul = mul nsw i64 %sub68, 9373
  %76 = load i64, i64* %tmp11, align 8, !tbaa !8
  %77 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub69 = sub nsw i64 %76, %77
  %mul70 = mul nsw i64 %sub69, 3580
  %sub71 = sub nsw i64 %mul, %mul70
  %add72 = add nsw i64 %sub71, 2048
  %shr = ashr i64 %add72, 12
  %conv73 = trunc i64 %shr to i32
  %78 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i32, i32* %78, i64 4
  store i32 %conv73, i32* %arrayidx74, align 4, !tbaa !5
  %79 = load i64, i64* %tmp13, align 8, !tbaa !8
  %80 = load i64, i64* %tmp14, align 8, !tbaa !8
  %add75 = add nsw i64 %79, %80
  %mul76 = mul nsw i64 %add75, 6810
  store i64 %mul76, i64* %tmp10, align 8, !tbaa !8
  %81 = load i64, i64* %tmp10, align 8, !tbaa !8
  %82 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul77 = mul nsw i64 %82, 4209
  %add78 = add nsw i64 %81, %mul77
  %add79 = add nsw i64 %add78, 2048
  %shr80 = ashr i64 %add79, 12
  %conv81 = trunc i64 %shr80 to i32
  %83 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i32, i32* %83, i64 2
  store i32 %conv81, i32* %arrayidx82, align 4, !tbaa !5
  %84 = load i64, i64* %tmp10, align 8, !tbaa !8
  %85 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul83 = mul nsw i64 %85, 17828
  %sub84 = sub nsw i64 %84, %mul83
  %add85 = add nsw i64 %sub84, 2048
  %shr86 = ashr i64 %add85, 12
  %conv87 = trunc i64 %shr86 to i32
  %86 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i32, i32* %86, i64 6
  store i32 %conv87, i32* %arrayidx88, align 4, !tbaa !5
  %87 = load i64, i64* %tmp0, align 8, !tbaa !8
  %88 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add89 = add nsw i64 %87, %88
  store i64 %add89, i64* %tmp10, align 8, !tbaa !8
  %89 = load i64, i64* %tmp1, align 8, !tbaa !8
  %90 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub90 = sub nsw i64 %89, %90
  store i64 %sub90, i64* %tmp11, align 8, !tbaa !8
  %91 = load i64, i64* %tmp10, align 8, !tbaa !8
  %92 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub91 = sub nsw i64 %91, %92
  %93 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub92 = sub nsw i64 %sub91, %93
  %shl93 = shl i64 %sub92, 1
  %conv94 = trunc i64 %shl93 to i32
  %94 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i32, i32* %94, i64 5
  store i32 %conv94, i32* %arrayidx95, align 4, !tbaa !5
  %95 = load i64, i64* %tmp2, align 8, !tbaa !8
  %shl96 = shl i64 %95, 13
  store i64 %shl96, i64* %tmp2, align 8, !tbaa !8
  %96 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul97 = mul nsw i64 %96, 11443
  %97 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul98 = mul nsw i64 %97, 10323
  %add99 = add nsw i64 %mul97, %mul98
  %98 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add100 = add nsw i64 %add99, %98
  %99 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul101 = mul nsw i64 %99, 5260
  %add102 = add nsw i64 %add100, %mul101
  %100 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul103 = mul nsw i64 %100, 1812
  %add104 = add nsw i64 %add102, %mul103
  %add105 = add nsw i64 %add104, 2048
  %shr106 = ashr i64 %add105, 12
  %conv107 = trunc i64 %shr106 to i32
  %101 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %conv107, i32* %arrayidx108, align 4, !tbaa !5
  %102 = load i64, i64* %tmp0, align 8, !tbaa !8
  %103 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub109 = sub nsw i64 %102, %103
  %mul110 = mul nsw i64 %sub109, 7791
  %104 = load i64, i64* %tmp1, align 8, !tbaa !8
  %105 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add111 = add nsw i64 %104, %105
  %mul112 = mul nsw i64 %add111, 4815
  %sub113 = sub nsw i64 %mul110, %mul112
  store i64 %sub113, i64* %tmp12, align 8, !tbaa !8
  %106 = load i64, i64* %tmp10, align 8, !tbaa !8
  %107 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add114 = add nsw i64 %106, %107
  %mul115 = mul nsw i64 %add114, 2531
  %108 = load i64, i64* %tmp11, align 8, !tbaa !8
  %shl116 = shl i64 %108, 12
  %add117 = add nsw i64 %mul115, %shl116
  %109 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub118 = sub nsw i64 %add117, %109
  store i64 %sub118, i64* %tmp13, align 8, !tbaa !8
  %110 = load i64, i64* %tmp12, align 8, !tbaa !8
  %111 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add119 = add nsw i64 %110, %111
  %add120 = add nsw i64 %add119, 2048
  %shr121 = ashr i64 %add120, 12
  %conv122 = trunc i64 %shr121 to i32
  %112 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i32, i32* %112, i64 3
  store i32 %conv122, i32* %arrayidx123, align 4, !tbaa !5
  %113 = load i64, i64* %tmp12, align 8, !tbaa !8
  %114 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub124 = sub nsw i64 %113, %114
  %add125 = add nsw i64 %sub124, 2048
  %shr126 = ashr i64 %add125, 12
  %conv127 = trunc i64 %shr126 to i32
  %115 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i32, i32* %115, i64 7
  store i32 %conv127, i32* %arrayidx128, align 4, !tbaa !5
  %116 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %117 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %117, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %118 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp130 = icmp eq i32 %118, 10
  br i1 %cmp130, label %if.then.132, label %if.end

if.then.132:                                      ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %119 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr133 = getelementptr inbounds i32, i32* %119, i64 8
  store i32* %add.ptr133, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.134

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.134

if.end.134:                                       ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.132
  %120 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %120, i32** %dataptr, align 8, !tbaa !1
  %arraydecay135 = getelementptr inbounds [16 x i32], [16 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay135, i32** %wsptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc, %for.end
  %121 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp137 = icmp sge i32 %121, 0
  br i1 %cmp137, label %for.body, label %for.end.257

for.body:                                         ; preds = %for.cond.136
  %122 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i32, i32* %122, i64 0
  %123 = load i32, i32* %arrayidx139, align 4, !tbaa !5
  %124 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i32, i32* %124, i64 8
  %125 = load i32, i32* %arrayidx140, align 4, !tbaa !5
  %add141 = add nsw i32 %123, %125
  %conv142 = sext i32 %add141 to i64
  store i64 %conv142, i64* %tmp0, align 8, !tbaa !8
  %126 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i32, i32* %126, i64 8
  %127 = load i32, i32* %arrayidx143, align 4, !tbaa !5
  %128 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i32, i32* %128, i64 0
  %129 = load i32, i32* %arrayidx144, align 4, !tbaa !5
  %add145 = add nsw i32 %127, %129
  %conv146 = sext i32 %add145 to i64
  store i64 %conv146, i64* %tmp1, align 8, !tbaa !8
  %130 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i32, i32* %130, i64 16
  %131 = load i32, i32* %arrayidx147, align 4, !tbaa !5
  %132 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i32, i32* %132, i64 56
  %133 = load i32, i32* %arrayidx148, align 4, !tbaa !5
  %add149 = add nsw i32 %131, %133
  %conv150 = sext i32 %add149 to i64
  store i64 %conv150, i64* %tmp12, align 8, !tbaa !8
  %134 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i32, i32* %134, i64 24
  %135 = load i32, i32* %arrayidx151, align 4, !tbaa !5
  %136 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i32, i32* %136, i64 48
  %137 = load i32, i32* %arrayidx152, align 4, !tbaa !5
  %add153 = add nsw i32 %135, %137
  %conv154 = sext i32 %add153 to i64
  store i64 %conv154, i64* %tmp3, align 8, !tbaa !8
  %138 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i32, i32* %138, i64 32
  %139 = load i32, i32* %arrayidx155, align 4, !tbaa !5
  %140 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i32, i32* %140, i64 40
  %141 = load i32, i32* %arrayidx156, align 4, !tbaa !5
  %add157 = add nsw i32 %139, %141
  %conv158 = sext i32 %add157 to i64
  store i64 %conv158, i64* %tmp4, align 8, !tbaa !8
  %142 = load i64, i64* %tmp0, align 8, !tbaa !8
  %143 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add159 = add nsw i64 %142, %143
  store i64 %add159, i64* %tmp10, align 8, !tbaa !8
  %144 = load i64, i64* %tmp0, align 8, !tbaa !8
  %145 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub160 = sub nsw i64 %144, %145
  store i64 %sub160, i64* %tmp13, align 8, !tbaa !8
  %146 = load i64, i64* %tmp1, align 8, !tbaa !8
  %147 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add161 = add nsw i64 %146, %147
  store i64 %add161, i64* %tmp11, align 8, !tbaa !8
  %148 = load i64, i64* %tmp1, align 8, !tbaa !8
  %149 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub162 = sub nsw i64 %148, %149
  store i64 %sub162, i64* %tmp14, align 8, !tbaa !8
  %150 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i32, i32* %150, i64 0
  %151 = load i32, i32* %arrayidx163, align 4, !tbaa !5
  %152 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i32, i32* %152, i64 8
  %153 = load i32, i32* %arrayidx164, align 4, !tbaa !5
  %sub165 = sub nsw i32 %151, %153
  %conv166 = sext i32 %sub165 to i64
  store i64 %conv166, i64* %tmp0, align 8, !tbaa !8
  %154 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i32, i32* %154, i64 8
  %155 = load i32, i32* %arrayidx167, align 4, !tbaa !5
  %156 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i32, i32* %156, i64 0
  %157 = load i32, i32* %arrayidx168, align 4, !tbaa !5
  %sub169 = sub nsw i32 %155, %157
  %conv170 = sext i32 %sub169 to i64
  store i64 %conv170, i64* %tmp1, align 8, !tbaa !8
  %158 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i32, i32* %158, i64 16
  %159 = load i32, i32* %arrayidx171, align 4, !tbaa !5
  %160 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i32, i32* %160, i64 56
  %161 = load i32, i32* %arrayidx172, align 4, !tbaa !5
  %sub173 = sub nsw i32 %159, %161
  %conv174 = sext i32 %sub173 to i64
  store i64 %conv174, i64* %tmp2, align 8, !tbaa !8
  %162 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i32, i32* %162, i64 24
  %163 = load i32, i32* %arrayidx175, align 4, !tbaa !5
  %164 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i32, i32* %164, i64 48
  %165 = load i32, i32* %arrayidx176, align 4, !tbaa !5
  %sub177 = sub nsw i32 %163, %165
  %conv178 = sext i32 %sub177 to i64
  store i64 %conv178, i64* %tmp3, align 8, !tbaa !8
  %166 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i32, i32* %166, i64 32
  %167 = load i32, i32* %arrayidx179, align 4, !tbaa !5
  %168 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i32, i32* %168, i64 40
  %169 = load i32, i32* %arrayidx180, align 4, !tbaa !5
  %sub181 = sub nsw i32 %167, %169
  %conv182 = sext i32 %sub181 to i64
  store i64 %conv182, i64* %tmp4, align 8, !tbaa !8
  %170 = load i64, i64* %tmp10, align 8, !tbaa !8
  %171 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add183 = add nsw i64 %170, %171
  %172 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add184 = add nsw i64 %add183, %172
  %mul185 = mul nsw i64 %add184, 10486
  %add186 = add nsw i64 %mul185, 16384
  %shr187 = ashr i64 %add186, 15
  %conv188 = trunc i64 %shr187 to i32
  %173 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %conv188, i32* %arrayidx189, align 4, !tbaa !5
  %174 = load i64, i64* %tmp12, align 8, !tbaa !8
  %175 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add190 = add nsw i64 %175, %174
  store i64 %add190, i64* %tmp12, align 8, !tbaa !8
  %176 = load i64, i64* %tmp10, align 8, !tbaa !8
  %177 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub191 = sub nsw i64 %176, %177
  %mul192 = mul nsw i64 %sub191, 11997
  %178 = load i64, i64* %tmp11, align 8, !tbaa !8
  %179 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub193 = sub nsw i64 %178, %179
  %mul194 = mul nsw i64 %sub193, 4582
  %sub195 = sub nsw i64 %mul192, %mul194
  %add196 = add nsw i64 %sub195, 16384
  %shr197 = ashr i64 %add196, 15
  %conv198 = trunc i64 %shr197 to i32
  %180 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i32, i32* %180, i64 32
  store i32 %conv198, i32* %arrayidx199, align 4, !tbaa !5
  %181 = load i64, i64* %tmp13, align 8, !tbaa !8
  %182 = load i64, i64* %tmp14, align 8, !tbaa !8
  %add200 = add nsw i64 %181, %182
  %mul201 = mul nsw i64 %add200, 8716
  store i64 %mul201, i64* %tmp10, align 8, !tbaa !8
  %183 = load i64, i64* %tmp10, align 8, !tbaa !8
  %184 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul202 = mul nsw i64 %184, 5387
  %add203 = add nsw i64 %183, %mul202
  %add204 = add nsw i64 %add203, 16384
  %shr205 = ashr i64 %add204, 15
  %conv206 = trunc i64 %shr205 to i32
  %185 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i32, i32* %185, i64 16
  store i32 %conv206, i32* %arrayidx207, align 4, !tbaa !5
  %186 = load i64, i64* %tmp10, align 8, !tbaa !8
  %187 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul208 = mul nsw i64 %187, 22820
  %sub209 = sub nsw i64 %186, %mul208
  %add210 = add nsw i64 %sub209, 16384
  %shr211 = ashr i64 %add210, 15
  %conv212 = trunc i64 %shr211 to i32
  %188 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i32, i32* %188, i64 48
  store i32 %conv212, i32* %arrayidx213, align 4, !tbaa !5
  %189 = load i64, i64* %tmp0, align 8, !tbaa !8
  %190 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add214 = add nsw i64 %189, %190
  store i64 %add214, i64* %tmp10, align 8, !tbaa !8
  %191 = load i64, i64* %tmp1, align 8, !tbaa !8
  %192 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub215 = sub nsw i64 %191, %192
  store i64 %sub215, i64* %tmp11, align 8, !tbaa !8
  %193 = load i64, i64* %tmp10, align 8, !tbaa !8
  %194 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub216 = sub nsw i64 %193, %194
  %195 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub217 = sub nsw i64 %sub216, %195
  %mul218 = mul nsw i64 %sub217, 10486
  %add219 = add nsw i64 %mul218, 16384
  %shr220 = ashr i64 %add219, 15
  %conv221 = trunc i64 %shr220 to i32
  %196 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i32, i32* %196, i64 40
  store i32 %conv221, i32* %arrayidx222, align 4, !tbaa !5
  %197 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul223 = mul nsw i64 %197, 10486
  store i64 %mul223, i64* %tmp2, align 8, !tbaa !8
  %198 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul224 = mul nsw i64 %198, 14647
  %199 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul225 = mul nsw i64 %199, 13213
  %add226 = add nsw i64 %mul224, %mul225
  %200 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add227 = add nsw i64 %add226, %200
  %201 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul228 = mul nsw i64 %201, 6732
  %add229 = add nsw i64 %add227, %mul228
  %202 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul230 = mul nsw i64 %202, 2320
  %add231 = add nsw i64 %add229, %mul230
  %add232 = add nsw i64 %add231, 16384
  %shr233 = ashr i64 %add232, 15
  %conv234 = trunc i64 %shr233 to i32
  %203 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i32, i32* %203, i64 8
  store i32 %conv234, i32* %arrayidx235, align 4, !tbaa !5
  %204 = load i64, i64* %tmp0, align 8, !tbaa !8
  %205 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub236 = sub nsw i64 %204, %205
  %mul237 = mul nsw i64 %sub236, 9973
  %206 = load i64, i64* %tmp1, align 8, !tbaa !8
  %207 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add238 = add nsw i64 %206, %207
  %mul239 = mul nsw i64 %add238, 6163
  %sub240 = sub nsw i64 %mul237, %mul239
  store i64 %sub240, i64* %tmp12, align 8, !tbaa !8
  %208 = load i64, i64* %tmp10, align 8, !tbaa !8
  %209 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add241 = add nsw i64 %208, %209
  %mul242 = mul nsw i64 %add241, 3240
  %210 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul243 = mul nsw i64 %210, 5243
  %add244 = add nsw i64 %mul242, %mul243
  %211 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub245 = sub nsw i64 %add244, %211
  store i64 %sub245, i64* %tmp13, align 8, !tbaa !8
  %212 = load i64, i64* %tmp12, align 8, !tbaa !8
  %213 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add246 = add nsw i64 %212, %213
  %add247 = add nsw i64 %add246, 16384
  %shr248 = ashr i64 %add247, 15
  %conv249 = trunc i64 %shr248 to i32
  %214 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i32, i32* %214, i64 24
  store i32 %conv249, i32* %arrayidx250, align 4, !tbaa !5
  %215 = load i64, i64* %tmp12, align 8, !tbaa !8
  %216 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub251 = sub nsw i64 %215, %216
  %add252 = add nsw i64 %sub251, 16384
  %shr253 = ashr i64 %add252, 15
  %conv254 = trunc i64 %shr253 to i32
  %217 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds i32, i32* %217, i64 56
  store i32 %conv254, i32* %arrayidx255, align 4, !tbaa !5
  %218 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %219 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr256 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %incdec.ptr256, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %220 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %220, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.136

for.end.257:                                      ; preds = %for.cond.136
  %221 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast [16 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 64, i8* %225) #1
  %226 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #1
  %228 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %229 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %230 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #1
  %233 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_11x11(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %workspace = alloca [24 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast [24 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 96, i8* %14) #1
  %15 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %19, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.168, %entry
  %20 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %20 to i64
  %21 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %23 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %24 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %25 to i32
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %26, i64 10
  %27 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %27 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %29 to i32
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %30, i64 9
  %31 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %31 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %33 to i32
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %34, i64 8
  %35 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %35 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %36 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %36, i64 3
  %37 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %37 to i32
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %38, i64 7
  %39 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %39 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp3, align 8, !tbaa !8
  %40 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %40, i64 4
  %41 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %41 to i32
  %42 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %42, i64 6
  %43 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %43 to i32
  %add27 = add nsw i32 %conv24, %conv26
  %conv28 = sext i32 %add27 to i64
  store i64 %conv28, i64* %tmp4, align 8, !tbaa !8
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %44, i64 5
  %45 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = zext i8 %45 to i32
  %conv31 = sext i32 %conv30 to i64
  store i64 %conv31, i64* %tmp5, align 8, !tbaa !8
  %46 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %47 to i32
  %48 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %48, i64 10
  %49 = load i8, i8* %arrayidx34, align 1, !tbaa !7
  %conv35 = zext i8 %49 to i32
  %sub = sub nsw i32 %conv33, %conv35
  %conv36 = sext i32 %sub to i64
  store i64 %conv36, i64* %tmp10, align 8, !tbaa !8
  %50 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = zext i8 %51 to i32
  %52 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %52, i64 9
  %53 = load i8, i8* %arrayidx39, align 1, !tbaa !7
  %conv40 = zext i8 %53 to i32
  %sub41 = sub nsw i32 %conv38, %conv40
  %conv42 = sext i32 %sub41 to i64
  store i64 %conv42, i64* %tmp11, align 8, !tbaa !8
  %54 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %54, i64 2
  %55 = load i8, i8* %arrayidx43, align 1, !tbaa !7
  %conv44 = zext i8 %55 to i32
  %56 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %56, i64 8
  %57 = load i8, i8* %arrayidx45, align 1, !tbaa !7
  %conv46 = zext i8 %57 to i32
  %sub47 = sub nsw i32 %conv44, %conv46
  %conv48 = sext i32 %sub47 to i64
  store i64 %conv48, i64* %tmp12, align 8, !tbaa !8
  %58 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %58, i64 3
  %59 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = zext i8 %59 to i32
  %60 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %60, i64 7
  %61 = load i8, i8* %arrayidx51, align 1, !tbaa !7
  %conv52 = zext i8 %61 to i32
  %sub53 = sub nsw i32 %conv50, %conv52
  %conv54 = sext i32 %sub53 to i64
  store i64 %conv54, i64* %tmp13, align 8, !tbaa !8
  %62 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %62, i64 4
  %63 = load i8, i8* %arrayidx55, align 1, !tbaa !7
  %conv56 = zext i8 %63 to i32
  %64 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %64, i64 6
  %65 = load i8, i8* %arrayidx57, align 1, !tbaa !7
  %conv58 = zext i8 %65 to i32
  %sub59 = sub nsw i32 %conv56, %conv58
  %conv60 = sext i32 %sub59 to i64
  store i64 %conv60, i64* %tmp14, align 8, !tbaa !8
  %66 = load i64, i64* %tmp0, align 8, !tbaa !8
  %67 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add61 = add nsw i64 %66, %67
  %68 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add62 = add nsw i64 %add61, %68
  %69 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add63 = add nsw i64 %add62, %69
  %70 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add64 = add nsw i64 %add63, %70
  %71 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add65 = add nsw i64 %add64, %71
  %sub66 = sub nsw i64 %add65, 1408
  %shl = shl i64 %sub66, 1
  %conv67 = trunc i64 %shl to i32
  %72 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %conv67, i32* %arrayidx68, align 4, !tbaa !5
  %73 = load i64, i64* %tmp5, align 8, !tbaa !8
  %74 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add69 = add nsw i64 %74, %73
  store i64 %add69, i64* %tmp5, align 8, !tbaa !8
  %75 = load i64, i64* %tmp5, align 8, !tbaa !8
  %76 = load i64, i64* %tmp0, align 8, !tbaa !8
  %sub70 = sub nsw i64 %76, %75
  store i64 %sub70, i64* %tmp0, align 8, !tbaa !8
  %77 = load i64, i64* %tmp5, align 8, !tbaa !8
  %78 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub71 = sub nsw i64 %78, %77
  store i64 %sub71, i64* %tmp1, align 8, !tbaa !8
  %79 = load i64, i64* %tmp5, align 8, !tbaa !8
  %80 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub72 = sub nsw i64 %80, %79
  store i64 %sub72, i64* %tmp2, align 8, !tbaa !8
  %81 = load i64, i64* %tmp5, align 8, !tbaa !8
  %82 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub73 = sub nsw i64 %82, %81
  store i64 %sub73, i64* %tmp3, align 8, !tbaa !8
  %83 = load i64, i64* %tmp5, align 8, !tbaa !8
  %84 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub74 = sub nsw i64 %84, %83
  store i64 %sub74, i64* %tmp4, align 8, !tbaa !8
  %85 = load i64, i64* %tmp0, align 8, !tbaa !8
  %86 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add75 = add nsw i64 %85, %86
  %mul = mul nsw i64 %add75, 11116
  %87 = load i64, i64* %tmp2, align 8, !tbaa !8
  %88 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add76 = add nsw i64 %87, %88
  %mul77 = mul nsw i64 %add76, 1649
  %add78 = add nsw i64 %mul, %mul77
  store i64 %add78, i64* %z1, align 8, !tbaa !8
  %89 = load i64, i64* %tmp1, align 8, !tbaa !8
  %90 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub79 = sub nsw i64 %89, %90
  %mul80 = mul nsw i64 %sub79, 7587
  store i64 %mul80, i64* %z2, align 8, !tbaa !8
  %91 = load i64, i64* %tmp0, align 8, !tbaa !8
  %92 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub81 = sub nsw i64 %91, %92
  %mul82 = mul nsw i64 %sub81, 9746
  store i64 %mul82, i64* %z3, align 8, !tbaa !8
  %93 = load i64, i64* %z1, align 8, !tbaa !8
  %94 = load i64, i64* %z2, align 8, !tbaa !8
  %add83 = add nsw i64 %93, %94
  %95 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul84 = mul nsw i64 %95, 8342
  %sub85 = sub nsw i64 %add83, %mul84
  %96 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul86 = mul nsw i64 %96, 11395
  %sub87 = sub nsw i64 %sub85, %mul86
  %add88 = add nsw i64 %sub87, 2048
  %shr = ashr i64 %add88, 12
  %conv89 = trunc i64 %shr to i32
  %97 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 %conv89, i32* %arrayidx90, align 4, !tbaa !5
  %98 = load i64, i64* %z2, align 8, !tbaa !8
  %99 = load i64, i64* %z3, align 8, !tbaa !8
  %add91 = add nsw i64 %98, %99
  %100 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul92 = mul nsw i64 %100, 511
  %add93 = add nsw i64 %add91, %mul92
  %101 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul94 = mul nsw i64 %101, 11116
  %sub95 = sub nsw i64 %add93, %mul94
  %102 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul96 = mul nsw i64 %102, 4813
  %add97 = add nsw i64 %sub95, %mul96
  %add98 = add nsw i64 %add97, 2048
  %shr99 = ashr i64 %add98, 12
  %conv100 = trunc i64 %shr99 to i32
  %103 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i32, i32* %103, i64 4
  store i32 %conv100, i32* %arrayidx101, align 4, !tbaa !5
  %104 = load i64, i64* %z1, align 8, !tbaa !8
  %105 = load i64, i64* %z3, align 8, !tbaa !8
  %add102 = add nsw i64 %104, %105
  %106 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul103 = mul nsw i64 %106, 13275
  %sub104 = sub nsw i64 %add102, %mul103
  %107 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul105 = mul nsw i64 %107, 6461
  %sub106 = sub nsw i64 %sub104, %mul105
  %add107 = add nsw i64 %sub106, 2048
  %shr108 = ashr i64 %add107, 12
  %conv109 = trunc i64 %shr108 to i32
  %108 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i32, i32* %108, i64 6
  store i32 %conv109, i32* %arrayidx110, align 4, !tbaa !5
  %109 = load i64, i64* %tmp10, align 8, !tbaa !8
  %110 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add111 = add nsw i64 %109, %110
  %mul112 = mul nsw i64 %add111, 10538
  store i64 %mul112, i64* %tmp1, align 8, !tbaa !8
  %111 = load i64, i64* %tmp10, align 8, !tbaa !8
  %112 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add113 = add nsw i64 %111, %112
  %mul114 = mul nsw i64 %add113, 8756
  store i64 %mul114, i64* %tmp2, align 8, !tbaa !8
  %113 = load i64, i64* %tmp10, align 8, !tbaa !8
  %114 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add115 = add nsw i64 %113, %114
  %mul116 = mul nsw i64 %add115, 6263
  store i64 %mul116, i64* %tmp3, align 8, !tbaa !8
  %115 = load i64, i64* %tmp1, align 8, !tbaa !8
  %116 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add117 = add nsw i64 %115, %116
  %117 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add118 = add nsw i64 %add117, %117
  %118 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul119 = mul nsw i64 %118, 14090
  %sub120 = sub nsw i64 %add118, %mul119
  %119 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul121 = mul nsw i64 %119, 3264
  %add122 = add nsw i64 %sub120, %mul121
  store i64 %add122, i64* %tmp0, align 8, !tbaa !8
  %120 = load i64, i64* %tmp11, align 8, !tbaa !8
  %121 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add123 = add nsw i64 %120, %121
  %mul124 = mul nsw i64 %add123, -6263
  store i64 %mul124, i64* %tmp4, align 8, !tbaa !8
  %122 = load i64, i64* %tmp11, align 8, !tbaa !8
  %123 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add125 = add nsw i64 %122, %123
  %mul126 = mul nsw i64 %add125, -11467
  store i64 %mul126, i64* %tmp5, align 8, !tbaa !8
  %124 = load i64, i64* %tmp4, align 8, !tbaa !8
  %125 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add127 = add nsw i64 %124, %125
  %126 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul128 = mul nsw i64 %126, 10456
  %add129 = add nsw i64 %add127, %mul128
  %127 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul130 = mul nsw i64 %127, 8756
  %sub131 = sub nsw i64 %add129, %mul130
  %128 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add132 = add nsw i64 %128, %sub131
  store i64 %add132, i64* %tmp1, align 8, !tbaa !8
  %129 = load i64, i64* %tmp12, align 8, !tbaa !8
  %130 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add133 = add nsw i64 %129, %130
  %mul134 = mul nsw i64 %add133, 3264
  store i64 %mul134, i64* %tmp10, align 8, !tbaa !8
  %131 = load i64, i64* %tmp4, align 8, !tbaa !8
  %132 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add135 = add nsw i64 %131, %132
  %133 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul136 = mul nsw i64 %133, 16294
  %sub137 = sub nsw i64 %add135, %mul136
  %134 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul138 = mul nsw i64 %134, 11467
  %add139 = add nsw i64 %sub137, %mul138
  %135 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add140 = add nsw i64 %135, %add139
  store i64 %add140, i64* %tmp2, align 8, !tbaa !8
  %136 = load i64, i64* %tmp5, align 8, !tbaa !8
  %137 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add141 = add nsw i64 %136, %137
  %138 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul142 = mul nsw i64 %138, 10695
  %add143 = add nsw i64 %add141, %mul142
  %139 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul144 = mul nsw i64 %139, 10538
  %sub145 = sub nsw i64 %add143, %mul144
  %140 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add146 = add nsw i64 %140, %sub145
  store i64 %add146, i64* %tmp3, align 8, !tbaa !8
  %141 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add147 = add nsw i64 %141, 2048
  %shr148 = ashr i64 %add147, 12
  %conv149 = trunc i64 %shr148 to i32
  %142 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %conv149, i32* %arrayidx150, align 4, !tbaa !5
  %143 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add151 = add nsw i64 %143, 2048
  %shr152 = ashr i64 %add151, 12
  %conv153 = trunc i64 %shr152 to i32
  %144 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i32, i32* %144, i64 3
  store i32 %conv153, i32* %arrayidx154, align 4, !tbaa !5
  %145 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add155 = add nsw i64 %145, 2048
  %shr156 = ashr i64 %add155, 12
  %conv157 = trunc i64 %shr156 to i32
  %146 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i32, i32* %146, i64 5
  store i32 %conv157, i32* %arrayidx158, align 4, !tbaa !5
  %147 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add159 = add nsw i64 %147, 2048
  %shr160 = ashr i64 %add159, 12
  %conv161 = trunc i64 %shr160 to i32
  %148 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i32, i32* %148, i64 7
  store i32 %conv161, i32* %arrayidx162, align 4, !tbaa !5
  %149 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %149, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %150 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %150, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %151 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp164 = icmp eq i32 %151, 11
  br i1 %cmp164, label %if.then.166, label %if.end

if.then.166:                                      ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %152 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr167 = getelementptr inbounds i32, i32* %152, i64 8
  store i32* %add.ptr167, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.168

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.168

if.end.168:                                       ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.166
  %153 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %153, i32** %dataptr, align 8, !tbaa !1
  %arraydecay169 = getelementptr inbounds [24 x i32], [24 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay169, i32** %wsptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc, %for.end
  %154 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp171 = icmp sge i32 %154, 0
  br i1 %cmp171, label %for.body, label %for.end.322

for.body:                                         ; preds = %for.cond.170
  %155 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i32, i32* %155, i64 0
  %156 = load i32, i32* %arrayidx173, align 4, !tbaa !5
  %157 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i32, i32* %157, i64 16
  %158 = load i32, i32* %arrayidx174, align 4, !tbaa !5
  %add175 = add nsw i32 %156, %158
  %conv176 = sext i32 %add175 to i64
  store i64 %conv176, i64* %tmp0, align 8, !tbaa !8
  %159 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i32, i32* %159, i64 8
  %160 = load i32, i32* %arrayidx177, align 4, !tbaa !5
  %161 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i32, i32* %161, i64 8
  %162 = load i32, i32* %arrayidx178, align 4, !tbaa !5
  %add179 = add nsw i32 %160, %162
  %conv180 = sext i32 %add179 to i64
  store i64 %conv180, i64* %tmp1, align 8, !tbaa !8
  %163 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i32, i32* %163, i64 16
  %164 = load i32, i32* %arrayidx181, align 4, !tbaa !5
  %165 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i32, i32* %165, i64 0
  %166 = load i32, i32* %arrayidx182, align 4, !tbaa !5
  %add183 = add nsw i32 %164, %166
  %conv184 = sext i32 %add183 to i64
  store i64 %conv184, i64* %tmp2, align 8, !tbaa !8
  %167 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i32, i32* %167, i64 24
  %168 = load i32, i32* %arrayidx185, align 4, !tbaa !5
  %169 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i32, i32* %169, i64 56
  %170 = load i32, i32* %arrayidx186, align 4, !tbaa !5
  %add187 = add nsw i32 %168, %170
  %conv188 = sext i32 %add187 to i64
  store i64 %conv188, i64* %tmp3, align 8, !tbaa !8
  %171 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i32, i32* %171, i64 32
  %172 = load i32, i32* %arrayidx189, align 4, !tbaa !5
  %173 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i32, i32* %173, i64 48
  %174 = load i32, i32* %arrayidx190, align 4, !tbaa !5
  %add191 = add nsw i32 %172, %174
  %conv192 = sext i32 %add191 to i64
  store i64 %conv192, i64* %tmp4, align 8, !tbaa !8
  %175 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i32, i32* %175, i64 40
  %176 = load i32, i32* %arrayidx193, align 4, !tbaa !5
  %conv194 = sext i32 %176 to i64
  store i64 %conv194, i64* %tmp5, align 8, !tbaa !8
  %177 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i32, i32* %177, i64 0
  %178 = load i32, i32* %arrayidx195, align 4, !tbaa !5
  %179 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i32, i32* %179, i64 16
  %180 = load i32, i32* %arrayidx196, align 4, !tbaa !5
  %sub197 = sub nsw i32 %178, %180
  %conv198 = sext i32 %sub197 to i64
  store i64 %conv198, i64* %tmp10, align 8, !tbaa !8
  %181 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i32, i32* %181, i64 8
  %182 = load i32, i32* %arrayidx199, align 4, !tbaa !5
  %183 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i32, i32* %183, i64 8
  %184 = load i32, i32* %arrayidx200, align 4, !tbaa !5
  %sub201 = sub nsw i32 %182, %184
  %conv202 = sext i32 %sub201 to i64
  store i64 %conv202, i64* %tmp11, align 8, !tbaa !8
  %185 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i32, i32* %185, i64 16
  %186 = load i32, i32* %arrayidx203, align 4, !tbaa !5
  %187 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i32, i32* %187, i64 0
  %188 = load i32, i32* %arrayidx204, align 4, !tbaa !5
  %sub205 = sub nsw i32 %186, %188
  %conv206 = sext i32 %sub205 to i64
  store i64 %conv206, i64* %tmp12, align 8, !tbaa !8
  %189 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i32, i32* %189, i64 24
  %190 = load i32, i32* %arrayidx207, align 4, !tbaa !5
  %191 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i32, i32* %191, i64 56
  %192 = load i32, i32* %arrayidx208, align 4, !tbaa !5
  %sub209 = sub nsw i32 %190, %192
  %conv210 = sext i32 %sub209 to i64
  store i64 %conv210, i64* %tmp13, align 8, !tbaa !8
  %193 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds i32, i32* %193, i64 32
  %194 = load i32, i32* %arrayidx211, align 4, !tbaa !5
  %195 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i32, i32* %195, i64 48
  %196 = load i32, i32* %arrayidx212, align 4, !tbaa !5
  %sub213 = sub nsw i32 %194, %196
  %conv214 = sext i32 %sub213 to i64
  store i64 %conv214, i64* %tmp14, align 8, !tbaa !8
  %197 = load i64, i64* %tmp0, align 8, !tbaa !8
  %198 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add215 = add nsw i64 %197, %198
  %199 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add216 = add nsw i64 %add215, %199
  %200 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add217 = add nsw i64 %add216, %200
  %201 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add218 = add nsw i64 %add217, %201
  %202 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add219 = add nsw i64 %add218, %202
  %mul220 = mul nsw i64 %add219, 8666
  %add221 = add nsw i64 %mul220, 16384
  %shr222 = ashr i64 %add221, 15
  %conv223 = trunc i64 %shr222 to i32
  %203 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %conv223, i32* %arrayidx224, align 4, !tbaa !5
  %204 = load i64, i64* %tmp5, align 8, !tbaa !8
  %205 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add225 = add nsw i64 %205, %204
  store i64 %add225, i64* %tmp5, align 8, !tbaa !8
  %206 = load i64, i64* %tmp5, align 8, !tbaa !8
  %207 = load i64, i64* %tmp0, align 8, !tbaa !8
  %sub226 = sub nsw i64 %207, %206
  store i64 %sub226, i64* %tmp0, align 8, !tbaa !8
  %208 = load i64, i64* %tmp5, align 8, !tbaa !8
  %209 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub227 = sub nsw i64 %209, %208
  store i64 %sub227, i64* %tmp1, align 8, !tbaa !8
  %210 = load i64, i64* %tmp5, align 8, !tbaa !8
  %211 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub228 = sub nsw i64 %211, %210
  store i64 %sub228, i64* %tmp2, align 8, !tbaa !8
  %212 = load i64, i64* %tmp5, align 8, !tbaa !8
  %213 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub229 = sub nsw i64 %213, %212
  store i64 %sub229, i64* %tmp3, align 8, !tbaa !8
  %214 = load i64, i64* %tmp5, align 8, !tbaa !8
  %215 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub230 = sub nsw i64 %215, %214
  store i64 %sub230, i64* %tmp4, align 8, !tbaa !8
  %216 = load i64, i64* %tmp0, align 8, !tbaa !8
  %217 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add231 = add nsw i64 %216, %217
  %mul232 = mul nsw i64 %add231, 11759
  %218 = load i64, i64* %tmp2, align 8, !tbaa !8
  %219 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add233 = add nsw i64 %218, %219
  %mul234 = mul nsw i64 %add233, 1744
  %add235 = add nsw i64 %mul232, %mul234
  store i64 %add235, i64* %z1, align 8, !tbaa !8
  %220 = load i64, i64* %tmp1, align 8, !tbaa !8
  %221 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub236 = sub nsw i64 %220, %221
  %mul237 = mul nsw i64 %sub236, 8026
  store i64 %mul237, i64* %z2, align 8, !tbaa !8
  %222 = load i64, i64* %tmp0, align 8, !tbaa !8
  %223 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub238 = sub nsw i64 %222, %223
  %mul239 = mul nsw i64 %sub238, 10310
  store i64 %mul239, i64* %z3, align 8, !tbaa !8
  %224 = load i64, i64* %z1, align 8, !tbaa !8
  %225 = load i64, i64* %z2, align 8, !tbaa !8
  %add240 = add nsw i64 %224, %225
  %226 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul241 = mul nsw i64 %226, 8825
  %sub242 = sub nsw i64 %add240, %mul241
  %227 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul243 = mul nsw i64 %227, 12054
  %sub244 = sub nsw i64 %sub242, %mul243
  %add245 = add nsw i64 %sub244, 16384
  %shr246 = ashr i64 %add245, 15
  %conv247 = trunc i64 %shr246 to i32
  %228 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i32, i32* %228, i64 16
  store i32 %conv247, i32* %arrayidx248, align 4, !tbaa !5
  %229 = load i64, i64* %z2, align 8, !tbaa !8
  %230 = load i64, i64* %z3, align 8, !tbaa !8
  %add249 = add nsw i64 %229, %230
  %231 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul250 = mul nsw i64 %231, 540
  %add251 = add nsw i64 %add249, %mul250
  %232 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul252 = mul nsw i64 %232, 11759
  %sub253 = sub nsw i64 %add251, %mul252
  %233 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul254 = mul nsw i64 %233, 5091
  %add255 = add nsw i64 %sub253, %mul254
  %add256 = add nsw i64 %add255, 16384
  %shr257 = ashr i64 %add256, 15
  %conv258 = trunc i64 %shr257 to i32
  %234 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds i32, i32* %234, i64 32
  store i32 %conv258, i32* %arrayidx259, align 4, !tbaa !5
  %235 = load i64, i64* %z1, align 8, !tbaa !8
  %236 = load i64, i64* %z3, align 8, !tbaa !8
  %add260 = add nsw i64 %235, %236
  %237 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul261 = mul nsw i64 %237, 14043
  %sub262 = sub nsw i64 %add260, %mul261
  %238 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul263 = mul nsw i64 %238, 6835
  %sub264 = sub nsw i64 %sub262, %mul263
  %add265 = add nsw i64 %sub264, 16384
  %shr266 = ashr i64 %add265, 15
  %conv267 = trunc i64 %shr266 to i32
  %239 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds i32, i32* %239, i64 48
  store i32 %conv267, i32* %arrayidx268, align 4, !tbaa !5
  %240 = load i64, i64* %tmp10, align 8, !tbaa !8
  %241 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add269 = add nsw i64 %240, %241
  %mul270 = mul nsw i64 %add269, 11148
  store i64 %mul270, i64* %tmp1, align 8, !tbaa !8
  %242 = load i64, i64* %tmp10, align 8, !tbaa !8
  %243 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add271 = add nsw i64 %242, %243
  %mul272 = mul nsw i64 %add271, 9262
  store i64 %mul272, i64* %tmp2, align 8, !tbaa !8
  %244 = load i64, i64* %tmp10, align 8, !tbaa !8
  %245 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add273 = add nsw i64 %244, %245
  %mul274 = mul nsw i64 %add273, 6626
  store i64 %mul274, i64* %tmp3, align 8, !tbaa !8
  %246 = load i64, i64* %tmp1, align 8, !tbaa !8
  %247 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add275 = add nsw i64 %246, %247
  %248 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add276 = add nsw i64 %add275, %248
  %249 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul277 = mul nsw i64 %249, 14905
  %sub278 = sub nsw i64 %add276, %mul277
  %250 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul279 = mul nsw i64 %250, 3453
  %add280 = add nsw i64 %sub278, %mul279
  store i64 %add280, i64* %tmp0, align 8, !tbaa !8
  %251 = load i64, i64* %tmp11, align 8, !tbaa !8
  %252 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add281 = add nsw i64 %251, %252
  %mul282 = mul nsw i64 %add281, -6626
  store i64 %mul282, i64* %tmp4, align 8, !tbaa !8
  %253 = load i64, i64* %tmp11, align 8, !tbaa !8
  %254 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add283 = add nsw i64 %253, %254
  %mul284 = mul nsw i64 %add283, -12131
  store i64 %mul284, i64* %tmp5, align 8, !tbaa !8
  %255 = load i64, i64* %tmp4, align 8, !tbaa !8
  %256 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add285 = add nsw i64 %255, %256
  %257 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul286 = mul nsw i64 %257, 11061
  %add287 = add nsw i64 %add285, %mul286
  %258 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul288 = mul nsw i64 %258, 9262
  %sub289 = sub nsw i64 %add287, %mul288
  %259 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add290 = add nsw i64 %259, %sub289
  store i64 %add290, i64* %tmp1, align 8, !tbaa !8
  %260 = load i64, i64* %tmp12, align 8, !tbaa !8
  %261 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add291 = add nsw i64 %260, %261
  %mul292 = mul nsw i64 %add291, 3453
  store i64 %mul292, i64* %tmp10, align 8, !tbaa !8
  %262 = load i64, i64* %tmp4, align 8, !tbaa !8
  %263 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add293 = add nsw i64 %262, %263
  %264 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul294 = mul nsw i64 %264, 17237
  %sub295 = sub nsw i64 %add293, %mul294
  %265 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul296 = mul nsw i64 %265, 12131
  %add297 = add nsw i64 %sub295, %mul296
  %266 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add298 = add nsw i64 %266, %add297
  store i64 %add298, i64* %tmp2, align 8, !tbaa !8
  %267 = load i64, i64* %tmp5, align 8, !tbaa !8
  %268 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add299 = add nsw i64 %267, %268
  %269 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul300 = mul nsw i64 %269, 11314
  %add301 = add nsw i64 %add299, %mul300
  %270 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul302 = mul nsw i64 %270, 11148
  %sub303 = sub nsw i64 %add301, %mul302
  %271 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add304 = add nsw i64 %271, %sub303
  store i64 %add304, i64* %tmp3, align 8, !tbaa !8
  %272 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add305 = add nsw i64 %272, 16384
  %shr306 = ashr i64 %add305, 15
  %conv307 = trunc i64 %shr306 to i32
  %273 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds i32, i32* %273, i64 8
  store i32 %conv307, i32* %arrayidx308, align 4, !tbaa !5
  %274 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add309 = add nsw i64 %274, 16384
  %shr310 = ashr i64 %add309, 15
  %conv311 = trunc i64 %shr310 to i32
  %275 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx312 = getelementptr inbounds i32, i32* %275, i64 24
  store i32 %conv311, i32* %arrayidx312, align 4, !tbaa !5
  %276 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add313 = add nsw i64 %276, 16384
  %shr314 = ashr i64 %add313, 15
  %conv315 = trunc i64 %shr314 to i32
  %277 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx316 = getelementptr inbounds i32, i32* %277, i64 40
  store i32 %conv315, i32* %arrayidx316, align 4, !tbaa !5
  %278 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add317 = add nsw i64 %278, 16384
  %shr318 = ashr i64 %add317, 15
  %conv319 = trunc i64 %shr318 to i32
  %279 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds i32, i32* %279, i64 56
  store i32 %conv319, i32* %arrayidx320, align 4, !tbaa !5
  %280 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %280, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %281 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr321 = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %incdec.ptr321, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %282 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %282, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.170

for.end.322:                                      ; preds = %for.cond.170
  %283 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %284) #1
  %285 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  %286 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #1
  %287 = bitcast [24 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 96, i8* %287) #1
  %288 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #1
  %289 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  %293 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  %294 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %295) #1
  %296 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %297 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #1
  %299 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_12x12(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %workspace = alloca [32 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast [32 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 128, i8* %12) #1
  %13 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %17, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.154, %entry
  %18 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %19 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  %20 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %21 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %22 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %23 to i32
  %24 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %24, i64 11
  %25 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %25 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %27 to i32
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %28, i64 10
  %29 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %29 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %31 to i32
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %32, i64 9
  %33 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %33 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %34, i64 3
  %35 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %35 to i32
  %36 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %36, i64 8
  %37 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %37 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp3, align 8, !tbaa !8
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %38, i64 4
  %39 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %39 to i32
  %40 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %40, i64 7
  %41 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %41 to i32
  %add27 = add nsw i32 %conv24, %conv26
  %conv28 = sext i32 %add27 to i64
  store i64 %conv28, i64* %tmp4, align 8, !tbaa !8
  %42 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %42, i64 5
  %43 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = zext i8 %43 to i32
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %44, i64 6
  %45 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %45 to i32
  %add33 = add nsw i32 %conv30, %conv32
  %conv34 = sext i32 %add33 to i64
  store i64 %conv34, i64* %tmp5, align 8, !tbaa !8
  %46 = load i64, i64* %tmp0, align 8, !tbaa !8
  %47 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add35 = add nsw i64 %46, %47
  store i64 %add35, i64* %tmp10, align 8, !tbaa !8
  %48 = load i64, i64* %tmp0, align 8, !tbaa !8
  %49 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub = sub nsw i64 %48, %49
  store i64 %sub, i64* %tmp13, align 8, !tbaa !8
  %50 = load i64, i64* %tmp1, align 8, !tbaa !8
  %51 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add36 = add nsw i64 %50, %51
  store i64 %add36, i64* %tmp11, align 8, !tbaa !8
  %52 = load i64, i64* %tmp1, align 8, !tbaa !8
  %53 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub37 = sub nsw i64 %52, %53
  store i64 %sub37, i64* %tmp14, align 8, !tbaa !8
  %54 = load i64, i64* %tmp2, align 8, !tbaa !8
  %55 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add38 = add nsw i64 %54, %55
  store i64 %add38, i64* %tmp12, align 8, !tbaa !8
  %56 = load i64, i64* %tmp2, align 8, !tbaa !8
  %57 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub39 = sub nsw i64 %56, %57
  store i64 %sub39, i64* %tmp15, align 8, !tbaa !8
  %58 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx40, align 1, !tbaa !7
  %conv41 = zext i8 %59 to i32
  %60 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %60, i64 11
  %61 = load i8, i8* %arrayidx42, align 1, !tbaa !7
  %conv43 = zext i8 %61 to i32
  %sub44 = sub nsw i32 %conv41, %conv43
  %conv45 = sext i32 %sub44 to i64
  store i64 %conv45, i64* %tmp0, align 8, !tbaa !8
  %62 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i8, i8* %arrayidx46, align 1, !tbaa !7
  %conv47 = zext i8 %63 to i32
  %64 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %64, i64 10
  %65 = load i8, i8* %arrayidx48, align 1, !tbaa !7
  %conv49 = zext i8 %65 to i32
  %sub50 = sub nsw i32 %conv47, %conv49
  %conv51 = sext i32 %sub50 to i64
  store i64 %conv51, i64* %tmp1, align 8, !tbaa !8
  %66 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %66, i64 2
  %67 = load i8, i8* %arrayidx52, align 1, !tbaa !7
  %conv53 = zext i8 %67 to i32
  %68 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %68, i64 9
  %69 = load i8, i8* %arrayidx54, align 1, !tbaa !7
  %conv55 = zext i8 %69 to i32
  %sub56 = sub nsw i32 %conv53, %conv55
  %conv57 = sext i32 %sub56 to i64
  store i64 %conv57, i64* %tmp2, align 8, !tbaa !8
  %70 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %70, i64 3
  %71 = load i8, i8* %arrayidx58, align 1, !tbaa !7
  %conv59 = zext i8 %71 to i32
  %72 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %72, i64 8
  %73 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %conv61 = zext i8 %73 to i32
  %sub62 = sub nsw i32 %conv59, %conv61
  %conv63 = sext i32 %sub62 to i64
  store i64 %conv63, i64* %tmp3, align 8, !tbaa !8
  %74 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %74, i64 4
  %75 = load i8, i8* %arrayidx64, align 1, !tbaa !7
  %conv65 = zext i8 %75 to i32
  %76 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %76, i64 7
  %77 = load i8, i8* %arrayidx66, align 1, !tbaa !7
  %conv67 = zext i8 %77 to i32
  %sub68 = sub nsw i32 %conv65, %conv67
  %conv69 = sext i32 %sub68 to i64
  store i64 %conv69, i64* %tmp4, align 8, !tbaa !8
  %78 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %78, i64 5
  %79 = load i8, i8* %arrayidx70, align 1, !tbaa !7
  %conv71 = zext i8 %79 to i32
  %80 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %80, i64 6
  %81 = load i8, i8* %arrayidx72, align 1, !tbaa !7
  %conv73 = zext i8 %81 to i32
  %sub74 = sub nsw i32 %conv71, %conv73
  %conv75 = sext i32 %sub74 to i64
  store i64 %conv75, i64* %tmp5, align 8, !tbaa !8
  %82 = load i64, i64* %tmp10, align 8, !tbaa !8
  %83 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add76 = add nsw i64 %82, %83
  %84 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add77 = add nsw i64 %add76, %84
  %sub78 = sub nsw i64 %add77, 1536
  %conv79 = trunc i64 %sub78 to i32
  %85 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %conv79, i32* %arrayidx80, align 4, !tbaa !5
  %86 = load i64, i64* %tmp13, align 8, !tbaa !8
  %87 = load i64, i64* %tmp14, align 8, !tbaa !8
  %sub81 = sub nsw i64 %86, %87
  %88 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub82 = sub nsw i64 %sub81, %88
  %conv83 = trunc i64 %sub82 to i32
  %89 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i32, i32* %89, i64 6
  store i32 %conv83, i32* %arrayidx84, align 4, !tbaa !5
  %90 = load i64, i64* %tmp10, align 8, !tbaa !8
  %91 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub85 = sub nsw i64 %90, %91
  %mul = mul nsw i64 %sub85, 10033
  %add86 = add nsw i64 %mul, 4096
  %shr = ashr i64 %add86, 13
  %conv87 = trunc i64 %shr to i32
  %92 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i32, i32* %92, i64 4
  store i32 %conv87, i32* %arrayidx88, align 4, !tbaa !5
  %93 = load i64, i64* %tmp14, align 8, !tbaa !8
  %94 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub89 = sub nsw i64 %93, %94
  %95 = load i64, i64* %tmp13, align 8, !tbaa !8
  %96 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add90 = add nsw i64 %95, %96
  %mul91 = mul nsw i64 %add90, 11190
  %add92 = add nsw i64 %sub89, %mul91
  %add93 = add nsw i64 %add92, 4096
  %shr94 = ashr i64 %add93, 13
  %conv95 = trunc i64 %shr94 to i32
  %97 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 %conv95, i32* %arrayidx96, align 4, !tbaa !5
  %98 = load i64, i64* %tmp1, align 8, !tbaa !8
  %99 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add97 = add nsw i64 %98, %99
  %mul98 = mul nsw i64 %add97, 4433
  store i64 %mul98, i64* %tmp10, align 8, !tbaa !8
  %100 = load i64, i64* %tmp10, align 8, !tbaa !8
  %101 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul99 = mul nsw i64 %101, 6270
  %add100 = add nsw i64 %100, %mul99
  store i64 %add100, i64* %tmp14, align 8, !tbaa !8
  %102 = load i64, i64* %tmp10, align 8, !tbaa !8
  %103 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul101 = mul nsw i64 %103, 15137
  %sub102 = sub nsw i64 %102, %mul101
  store i64 %sub102, i64* %tmp15, align 8, !tbaa !8
  %104 = load i64, i64* %tmp0, align 8, !tbaa !8
  %105 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add103 = add nsw i64 %104, %105
  %mul104 = mul nsw i64 %add103, 9191
  store i64 %mul104, i64* %tmp12, align 8, !tbaa !8
  %106 = load i64, i64* %tmp0, align 8, !tbaa !8
  %107 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add105 = add nsw i64 %106, %107
  %mul106 = mul nsw i64 %add105, 7053
  store i64 %mul106, i64* %tmp13, align 8, !tbaa !8
  %108 = load i64, i64* %tmp12, align 8, !tbaa !8
  %109 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add107 = add nsw i64 %108, %109
  %110 = load i64, i64* %tmp14, align 8, !tbaa !8
  %add108 = add nsw i64 %add107, %110
  %111 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul109 = mul nsw i64 %111, 4758
  %sub110 = sub nsw i64 %add108, %mul109
  %112 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul111 = mul nsw i64 %112, 1512
  %add112 = add nsw i64 %sub110, %mul111
  store i64 %add112, i64* %tmp10, align 8, !tbaa !8
  %113 = load i64, i64* %tmp2, align 8, !tbaa !8
  %114 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add113 = add nsw i64 %113, %114
  %mul114 = mul nsw i64 %add113, -1512
  store i64 %mul114, i64* %tmp11, align 8, !tbaa !8
  %115 = load i64, i64* %tmp11, align 8, !tbaa !8
  %116 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub115 = sub nsw i64 %115, %116
  %117 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul116 = mul nsw i64 %117, 19165
  %sub117 = sub nsw i64 %sub115, %mul116
  %118 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul118 = mul nsw i64 %118, 7053
  %add119 = add nsw i64 %sub117, %mul118
  %119 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add120 = add nsw i64 %119, %add119
  store i64 %add120, i64* %tmp12, align 8, !tbaa !8
  %120 = load i64, i64* %tmp11, align 8, !tbaa !8
  %121 = load i64, i64* %tmp14, align 8, !tbaa !8
  %sub121 = sub nsw i64 %120, %121
  %122 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul122 = mul nsw i64 %122, 5946
  %add123 = add nsw i64 %sub121, %mul122
  %123 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul124 = mul nsw i64 %123, 9191
  %sub125 = sub nsw i64 %add123, %mul124
  %124 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add126 = add nsw i64 %124, %sub125
  store i64 %add126, i64* %tmp13, align 8, !tbaa !8
  %125 = load i64, i64* %tmp15, align 8, !tbaa !8
  %126 = load i64, i64* %tmp0, align 8, !tbaa !8
  %127 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub127 = sub nsw i64 %126, %127
  %mul128 = mul nsw i64 %sub127, 10703
  %add129 = add nsw i64 %125, %mul128
  %128 = load i64, i64* %tmp2, align 8, !tbaa !8
  %129 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add130 = add nsw i64 %128, %129
  %mul131 = mul nsw i64 %add130, 4433
  %sub132 = sub nsw i64 %add129, %mul131
  store i64 %sub132, i64* %tmp11, align 8, !tbaa !8
  %130 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add133 = add nsw i64 %130, 4096
  %shr134 = ashr i64 %add133, 13
  %conv135 = trunc i64 %shr134 to i32
  %131 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 %conv135, i32* %arrayidx136, align 4, !tbaa !5
  %132 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add137 = add nsw i64 %132, 4096
  %shr138 = ashr i64 %add137, 13
  %conv139 = trunc i64 %shr138 to i32
  %133 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i32, i32* %133, i64 3
  store i32 %conv139, i32* %arrayidx140, align 4, !tbaa !5
  %134 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add141 = add nsw i64 %134, 4096
  %shr142 = ashr i64 %add141, 13
  %conv143 = trunc i64 %shr142 to i32
  %135 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i32, i32* %135, i64 5
  store i32 %conv143, i32* %arrayidx144, align 4, !tbaa !5
  %136 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add145 = add nsw i64 %136, 4096
  %shr146 = ashr i64 %add145, 13
  %conv147 = trunc i64 %shr146 to i32
  %137 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i32, i32* %137, i64 7
  store i32 %conv147, i32* %arrayidx148, align 4, !tbaa !5
  %138 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %138, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %139 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %139, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %140 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp150 = icmp eq i32 %140, 12
  br i1 %cmp150, label %if.then.152, label %if.end

if.then.152:                                      ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %141 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr153 = getelementptr inbounds i32, i32* %141, i64 8
  store i32* %add.ptr153, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.154

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.154

if.end.154:                                       ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.152
  %142 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %142, i32** %dataptr, align 8, !tbaa !1
  %arraydecay155 = getelementptr inbounds [32 x i32], [32 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay155, i32** %wsptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc, %for.end
  %143 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp157 = icmp sge i32 %143, 0
  br i1 %cmp157, label %for.body, label %for.end.295

for.body:                                         ; preds = %for.cond.156
  %144 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i32, i32* %144, i64 0
  %145 = load i32, i32* %arrayidx159, align 4, !tbaa !5
  %146 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i32, i32* %146, i64 24
  %147 = load i32, i32* %arrayidx160, align 4, !tbaa !5
  %add161 = add nsw i32 %145, %147
  %conv162 = sext i32 %add161 to i64
  store i64 %conv162, i64* %tmp0, align 8, !tbaa !8
  %148 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i32, i32* %148, i64 8
  %149 = load i32, i32* %arrayidx163, align 4, !tbaa !5
  %150 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i32, i32* %150, i64 16
  %151 = load i32, i32* %arrayidx164, align 4, !tbaa !5
  %add165 = add nsw i32 %149, %151
  %conv166 = sext i32 %add165 to i64
  store i64 %conv166, i64* %tmp1, align 8, !tbaa !8
  %152 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i32, i32* %152, i64 16
  %153 = load i32, i32* %arrayidx167, align 4, !tbaa !5
  %154 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i32, i32* %154, i64 8
  %155 = load i32, i32* %arrayidx168, align 4, !tbaa !5
  %add169 = add nsw i32 %153, %155
  %conv170 = sext i32 %add169 to i64
  store i64 %conv170, i64* %tmp2, align 8, !tbaa !8
  %156 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i32, i32* %156, i64 24
  %157 = load i32, i32* %arrayidx171, align 4, !tbaa !5
  %158 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i32, i32* %158, i64 0
  %159 = load i32, i32* %arrayidx172, align 4, !tbaa !5
  %add173 = add nsw i32 %157, %159
  %conv174 = sext i32 %add173 to i64
  store i64 %conv174, i64* %tmp3, align 8, !tbaa !8
  %160 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i32, i32* %160, i64 32
  %161 = load i32, i32* %arrayidx175, align 4, !tbaa !5
  %162 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i32, i32* %162, i64 56
  %163 = load i32, i32* %arrayidx176, align 4, !tbaa !5
  %add177 = add nsw i32 %161, %163
  %conv178 = sext i32 %add177 to i64
  store i64 %conv178, i64* %tmp4, align 8, !tbaa !8
  %164 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i32, i32* %164, i64 40
  %165 = load i32, i32* %arrayidx179, align 4, !tbaa !5
  %166 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i32, i32* %166, i64 48
  %167 = load i32, i32* %arrayidx180, align 4, !tbaa !5
  %add181 = add nsw i32 %165, %167
  %conv182 = sext i32 %add181 to i64
  store i64 %conv182, i64* %tmp5, align 8, !tbaa !8
  %168 = load i64, i64* %tmp0, align 8, !tbaa !8
  %169 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add183 = add nsw i64 %168, %169
  store i64 %add183, i64* %tmp10, align 8, !tbaa !8
  %170 = load i64, i64* %tmp0, align 8, !tbaa !8
  %171 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub184 = sub nsw i64 %170, %171
  store i64 %sub184, i64* %tmp13, align 8, !tbaa !8
  %172 = load i64, i64* %tmp1, align 8, !tbaa !8
  %173 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add185 = add nsw i64 %172, %173
  store i64 %add185, i64* %tmp11, align 8, !tbaa !8
  %174 = load i64, i64* %tmp1, align 8, !tbaa !8
  %175 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub186 = sub nsw i64 %174, %175
  store i64 %sub186, i64* %tmp14, align 8, !tbaa !8
  %176 = load i64, i64* %tmp2, align 8, !tbaa !8
  %177 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add187 = add nsw i64 %176, %177
  store i64 %add187, i64* %tmp12, align 8, !tbaa !8
  %178 = load i64, i64* %tmp2, align 8, !tbaa !8
  %179 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub188 = sub nsw i64 %178, %179
  store i64 %sub188, i64* %tmp15, align 8, !tbaa !8
  %180 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i32, i32* %180, i64 0
  %181 = load i32, i32* %arrayidx189, align 4, !tbaa !5
  %182 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i32, i32* %182, i64 24
  %183 = load i32, i32* %arrayidx190, align 4, !tbaa !5
  %sub191 = sub nsw i32 %181, %183
  %conv192 = sext i32 %sub191 to i64
  store i64 %conv192, i64* %tmp0, align 8, !tbaa !8
  %184 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i32, i32* %184, i64 8
  %185 = load i32, i32* %arrayidx193, align 4, !tbaa !5
  %186 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i32, i32* %186, i64 16
  %187 = load i32, i32* %arrayidx194, align 4, !tbaa !5
  %sub195 = sub nsw i32 %185, %187
  %conv196 = sext i32 %sub195 to i64
  store i64 %conv196, i64* %tmp1, align 8, !tbaa !8
  %188 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i32, i32* %188, i64 16
  %189 = load i32, i32* %arrayidx197, align 4, !tbaa !5
  %190 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds i32, i32* %190, i64 8
  %191 = load i32, i32* %arrayidx198, align 4, !tbaa !5
  %sub199 = sub nsw i32 %189, %191
  %conv200 = sext i32 %sub199 to i64
  store i64 %conv200, i64* %tmp2, align 8, !tbaa !8
  %192 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i32, i32* %192, i64 24
  %193 = load i32, i32* %arrayidx201, align 4, !tbaa !5
  %194 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i32, i32* %194, i64 0
  %195 = load i32, i32* %arrayidx202, align 4, !tbaa !5
  %sub203 = sub nsw i32 %193, %195
  %conv204 = sext i32 %sub203 to i64
  store i64 %conv204, i64* %tmp3, align 8, !tbaa !8
  %196 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i32, i32* %196, i64 32
  %197 = load i32, i32* %arrayidx205, align 4, !tbaa !5
  %198 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds i32, i32* %198, i64 56
  %199 = load i32, i32* %arrayidx206, align 4, !tbaa !5
  %sub207 = sub nsw i32 %197, %199
  %conv208 = sext i32 %sub207 to i64
  store i64 %conv208, i64* %tmp4, align 8, !tbaa !8
  %200 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds i32, i32* %200, i64 40
  %201 = load i32, i32* %arrayidx209, align 4, !tbaa !5
  %202 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i32, i32* %202, i64 48
  %203 = load i32, i32* %arrayidx210, align 4, !tbaa !5
  %sub211 = sub nsw i32 %201, %203
  %conv212 = sext i32 %sub211 to i64
  store i64 %conv212, i64* %tmp5, align 8, !tbaa !8
  %204 = load i64, i64* %tmp10, align 8, !tbaa !8
  %205 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add213 = add nsw i64 %204, %205
  %206 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add214 = add nsw i64 %add213, %206
  %mul215 = mul nsw i64 %add214, 7282
  %add216 = add nsw i64 %mul215, 8192
  %shr217 = ashr i64 %add216, 14
  %conv218 = trunc i64 %shr217 to i32
  %207 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 %conv218, i32* %arrayidx219, align 4, !tbaa !5
  %208 = load i64, i64* %tmp13, align 8, !tbaa !8
  %209 = load i64, i64* %tmp14, align 8, !tbaa !8
  %sub220 = sub nsw i64 %208, %209
  %210 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub221 = sub nsw i64 %sub220, %210
  %mul222 = mul nsw i64 %sub221, 7282
  %add223 = add nsw i64 %mul222, 8192
  %shr224 = ashr i64 %add223, 14
  %conv225 = trunc i64 %shr224 to i32
  %211 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i32, i32* %211, i64 48
  store i32 %conv225, i32* %arrayidx226, align 4, !tbaa !5
  %212 = load i64, i64* %tmp10, align 8, !tbaa !8
  %213 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub227 = sub nsw i64 %212, %213
  %mul228 = mul nsw i64 %sub227, 8918
  %add229 = add nsw i64 %mul228, 8192
  %shr230 = ashr i64 %add229, 14
  %conv231 = trunc i64 %shr230 to i32
  %214 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i32, i32* %214, i64 32
  store i32 %conv231, i32* %arrayidx232, align 4, !tbaa !5
  %215 = load i64, i64* %tmp14, align 8, !tbaa !8
  %216 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub233 = sub nsw i64 %215, %216
  %mul234 = mul nsw i64 %sub233, 7282
  %217 = load i64, i64* %tmp13, align 8, !tbaa !8
  %218 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add235 = add nsw i64 %217, %218
  %mul236 = mul nsw i64 %add235, 9947
  %add237 = add nsw i64 %mul234, %mul236
  %add238 = add nsw i64 %add237, 8192
  %shr239 = ashr i64 %add238, 14
  %conv240 = trunc i64 %shr239 to i32
  %219 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx241 = getelementptr inbounds i32, i32* %219, i64 16
  store i32 %conv240, i32* %arrayidx241, align 4, !tbaa !5
  %220 = load i64, i64* %tmp1, align 8, !tbaa !8
  %221 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add242 = add nsw i64 %220, %221
  %mul243 = mul nsw i64 %add242, 3941
  store i64 %mul243, i64* %tmp10, align 8, !tbaa !8
  %222 = load i64, i64* %tmp10, align 8, !tbaa !8
  %223 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul244 = mul nsw i64 %223, 5573
  %add245 = add nsw i64 %222, %mul244
  store i64 %add245, i64* %tmp14, align 8, !tbaa !8
  %224 = load i64, i64* %tmp10, align 8, !tbaa !8
  %225 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul246 = mul nsw i64 %225, 13455
  %sub247 = sub nsw i64 %224, %mul246
  store i64 %sub247, i64* %tmp15, align 8, !tbaa !8
  %226 = load i64, i64* %tmp0, align 8, !tbaa !8
  %227 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add248 = add nsw i64 %226, %227
  %mul249 = mul nsw i64 %add248, 8170
  store i64 %mul249, i64* %tmp12, align 8, !tbaa !8
  %228 = load i64, i64* %tmp0, align 8, !tbaa !8
  %229 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add250 = add nsw i64 %228, %229
  %mul251 = mul nsw i64 %add250, 6269
  store i64 %mul251, i64* %tmp13, align 8, !tbaa !8
  %230 = load i64, i64* %tmp12, align 8, !tbaa !8
  %231 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add252 = add nsw i64 %230, %231
  %232 = load i64, i64* %tmp14, align 8, !tbaa !8
  %add253 = add nsw i64 %add252, %232
  %233 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul254 = mul nsw i64 %233, 4229
  %sub255 = sub nsw i64 %add253, %mul254
  %234 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul256 = mul nsw i64 %234, 1344
  %add257 = add nsw i64 %sub255, %mul256
  store i64 %add257, i64* %tmp10, align 8, !tbaa !8
  %235 = load i64, i64* %tmp2, align 8, !tbaa !8
  %236 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add258 = add nsw i64 %235, %236
  %mul259 = mul nsw i64 %add258, -1344
  store i64 %mul259, i64* %tmp11, align 8, !tbaa !8
  %237 = load i64, i64* %tmp11, align 8, !tbaa !8
  %238 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub260 = sub nsw i64 %237, %238
  %239 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul261 = mul nsw i64 %239, 17036
  %sub262 = sub nsw i64 %sub260, %mul261
  %240 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul263 = mul nsw i64 %240, 6269
  %add264 = add nsw i64 %sub262, %mul263
  %241 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add265 = add nsw i64 %241, %add264
  store i64 %add265, i64* %tmp12, align 8, !tbaa !8
  %242 = load i64, i64* %tmp11, align 8, !tbaa !8
  %243 = load i64, i64* %tmp14, align 8, !tbaa !8
  %sub266 = sub nsw i64 %242, %243
  %244 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul267 = mul nsw i64 %244, 5285
  %add268 = add nsw i64 %sub266, %mul267
  %245 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul269 = mul nsw i64 %245, 8170
  %sub270 = sub nsw i64 %add268, %mul269
  %246 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add271 = add nsw i64 %246, %sub270
  store i64 %add271, i64* %tmp13, align 8, !tbaa !8
  %247 = load i64, i64* %tmp15, align 8, !tbaa !8
  %248 = load i64, i64* %tmp0, align 8, !tbaa !8
  %249 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub272 = sub nsw i64 %248, %249
  %mul273 = mul nsw i64 %sub272, 9514
  %add274 = add nsw i64 %247, %mul273
  %250 = load i64, i64* %tmp2, align 8, !tbaa !8
  %251 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add275 = add nsw i64 %250, %251
  %mul276 = mul nsw i64 %add275, 3941
  %sub277 = sub nsw i64 %add274, %mul276
  store i64 %sub277, i64* %tmp11, align 8, !tbaa !8
  %252 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add278 = add nsw i64 %252, 8192
  %shr279 = ashr i64 %add278, 14
  %conv280 = trunc i64 %shr279 to i32
  %253 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i32, i32* %253, i64 8
  store i32 %conv280, i32* %arrayidx281, align 4, !tbaa !5
  %254 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add282 = add nsw i64 %254, 8192
  %shr283 = ashr i64 %add282, 14
  %conv284 = trunc i64 %shr283 to i32
  %255 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx285 = getelementptr inbounds i32, i32* %255, i64 24
  store i32 %conv284, i32* %arrayidx285, align 4, !tbaa !5
  %256 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add286 = add nsw i64 %256, 8192
  %shr287 = ashr i64 %add286, 14
  %conv288 = trunc i64 %shr287 to i32
  %257 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx289 = getelementptr inbounds i32, i32* %257, i64 40
  store i32 %conv288, i32* %arrayidx289, align 4, !tbaa !5
  %258 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add290 = add nsw i64 %258, 8192
  %shr291 = ashr i64 %add290, 14
  %conv292 = trunc i64 %shr291 to i32
  %259 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds i32, i32* %259, i64 56
  store i32 %conv292, i32* %arrayidx293, align 4, !tbaa !5
  %260 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %260, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %261 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr294 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %incdec.ptr294, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %262 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %262, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.156

for.end.295:                                      ; preds = %for.cond.156
  %263 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  %266 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #1
  %267 = bitcast [32 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 128, i8* %267) #1
  %268 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  %269 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %270 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  %272 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #1
  %276 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  %279 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_13x13(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %workspace = alloca [40 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast [40 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 160, i8* %15) #1
  %16 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %20, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.191, %entry
  %21 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %21 to i64
  %22 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %24 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %26 to i32
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %27, i64 12
  %28 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %28 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %30 to i32
  %31 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %31, i64 11
  %32 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %32 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %33 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %34 to i32
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %35, i64 10
  %36 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %36 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %37 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %37, i64 3
  %38 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %38 to i32
  %39 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %39, i64 9
  %40 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %40 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp3, align 8, !tbaa !8
  %41 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %41, i64 4
  %42 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %42 to i32
  %43 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %43, i64 8
  %44 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %44 to i32
  %add27 = add nsw i32 %conv24, %conv26
  %conv28 = sext i32 %add27 to i64
  store i64 %conv28, i64* %tmp4, align 8, !tbaa !8
  %45 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %45, i64 5
  %46 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = zext i8 %46 to i32
  %47 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %47, i64 7
  %48 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %48 to i32
  %add33 = add nsw i32 %conv30, %conv32
  %conv34 = sext i32 %add33 to i64
  store i64 %conv34, i64* %tmp5, align 8, !tbaa !8
  %49 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %49, i64 6
  %50 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = zext i8 %50 to i32
  %conv37 = sext i32 %conv36 to i64
  store i64 %conv37, i64* %tmp6, align 8, !tbaa !8
  %51 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx38, align 1, !tbaa !7
  %conv39 = zext i8 %52 to i32
  %53 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %53, i64 12
  %54 = load i8, i8* %arrayidx40, align 1, !tbaa !7
  %conv41 = zext i8 %54 to i32
  %sub = sub nsw i32 %conv39, %conv41
  %conv42 = sext i32 %sub to i64
  store i64 %conv42, i64* %tmp10, align 8, !tbaa !8
  %55 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx43, align 1, !tbaa !7
  %conv44 = zext i8 %56 to i32
  %57 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %57, i64 11
  %58 = load i8, i8* %arrayidx45, align 1, !tbaa !7
  %conv46 = zext i8 %58 to i32
  %sub47 = sub nsw i32 %conv44, %conv46
  %conv48 = sext i32 %sub47 to i64
  store i64 %conv48, i64* %tmp11, align 8, !tbaa !8
  %59 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %59, i64 2
  %60 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = zext i8 %60 to i32
  %61 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %61, i64 10
  %62 = load i8, i8* %arrayidx51, align 1, !tbaa !7
  %conv52 = zext i8 %62 to i32
  %sub53 = sub nsw i32 %conv50, %conv52
  %conv54 = sext i32 %sub53 to i64
  store i64 %conv54, i64* %tmp12, align 8, !tbaa !8
  %63 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %63, i64 3
  %64 = load i8, i8* %arrayidx55, align 1, !tbaa !7
  %conv56 = zext i8 %64 to i32
  %65 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %65, i64 9
  %66 = load i8, i8* %arrayidx57, align 1, !tbaa !7
  %conv58 = zext i8 %66 to i32
  %sub59 = sub nsw i32 %conv56, %conv58
  %conv60 = sext i32 %sub59 to i64
  store i64 %conv60, i64* %tmp13, align 8, !tbaa !8
  %67 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %67, i64 4
  %68 = load i8, i8* %arrayidx61, align 1, !tbaa !7
  %conv62 = zext i8 %68 to i32
  %69 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %69, i64 8
  %70 = load i8, i8* %arrayidx63, align 1, !tbaa !7
  %conv64 = zext i8 %70 to i32
  %sub65 = sub nsw i32 %conv62, %conv64
  %conv66 = sext i32 %sub65 to i64
  store i64 %conv66, i64* %tmp14, align 8, !tbaa !8
  %71 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %71, i64 5
  %72 = load i8, i8* %arrayidx67, align 1, !tbaa !7
  %conv68 = zext i8 %72 to i32
  %73 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %73, i64 7
  %74 = load i8, i8* %arrayidx69, align 1, !tbaa !7
  %conv70 = zext i8 %74 to i32
  %sub71 = sub nsw i32 %conv68, %conv70
  %conv72 = sext i32 %sub71 to i64
  store i64 %conv72, i64* %tmp15, align 8, !tbaa !8
  %75 = load i64, i64* %tmp0, align 8, !tbaa !8
  %76 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add73 = add nsw i64 %75, %76
  %77 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add74 = add nsw i64 %add73, %77
  %78 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add75 = add nsw i64 %add74, %78
  %79 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add76 = add nsw i64 %add75, %79
  %80 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add77 = add nsw i64 %add76, %80
  %81 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add78 = add nsw i64 %add77, %81
  %sub79 = sub nsw i64 %add78, 1664
  %conv80 = trunc i64 %sub79 to i32
  %82 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %conv80, i32* %arrayidx81, align 4, !tbaa !5
  %83 = load i64, i64* %tmp6, align 8, !tbaa !8
  %84 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add82 = add nsw i64 %84, %83
  store i64 %add82, i64* %tmp6, align 8, !tbaa !8
  %85 = load i64, i64* %tmp6, align 8, !tbaa !8
  %86 = load i64, i64* %tmp0, align 8, !tbaa !8
  %sub83 = sub nsw i64 %86, %85
  store i64 %sub83, i64* %tmp0, align 8, !tbaa !8
  %87 = load i64, i64* %tmp6, align 8, !tbaa !8
  %88 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub84 = sub nsw i64 %88, %87
  store i64 %sub84, i64* %tmp1, align 8, !tbaa !8
  %89 = load i64, i64* %tmp6, align 8, !tbaa !8
  %90 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub85 = sub nsw i64 %90, %89
  store i64 %sub85, i64* %tmp2, align 8, !tbaa !8
  %91 = load i64, i64* %tmp6, align 8, !tbaa !8
  %92 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub86 = sub nsw i64 %92, %91
  store i64 %sub86, i64* %tmp3, align 8, !tbaa !8
  %93 = load i64, i64* %tmp6, align 8, !tbaa !8
  %94 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub87 = sub nsw i64 %94, %93
  store i64 %sub87, i64* %tmp4, align 8, !tbaa !8
  %95 = load i64, i64* %tmp6, align 8, !tbaa !8
  %96 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub88 = sub nsw i64 %96, %95
  store i64 %sub88, i64* %tmp5, align 8, !tbaa !8
  %97 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul = mul nsw i64 %97, 11249
  %98 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul89 = mul nsw i64 %98, 8672
  %add90 = add nsw i64 %mul, %mul89
  %99 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul91 = mul nsw i64 %99, 4108
  %add92 = add nsw i64 %add90, %mul91
  %100 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul93 = mul nsw i64 %100, 1396
  %sub94 = sub nsw i64 %add92, %mul93
  %101 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul95 = mul nsw i64 %101, 6581
  %sub96 = sub nsw i64 %sub94, %mul95
  %102 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul97 = mul nsw i64 %102, 10258
  %sub98 = sub nsw i64 %sub96, %mul97
  %add99 = add nsw i64 %sub98, 4096
  %shr = ashr i64 %add99, 13
  %conv100 = trunc i64 %shr to i32
  %103 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i32, i32* %103, i64 2
  store i32 %conv100, i32* %arrayidx101, align 4, !tbaa !5
  %104 = load i64, i64* %tmp0, align 8, !tbaa !8
  %105 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub102 = sub nsw i64 %104, %105
  %mul103 = mul nsw i64 %sub102, 9465
  %106 = load i64, i64* %tmp3, align 8, !tbaa !8
  %107 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub104 = sub nsw i64 %106, %107
  %mul105 = mul nsw i64 %sub104, 3570
  %sub106 = sub nsw i64 %mul103, %mul105
  %108 = load i64, i64* %tmp1, align 8, !tbaa !8
  %109 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub107 = sub nsw i64 %108, %109
  %mul108 = mul nsw i64 %sub107, 2592
  %sub109 = sub nsw i64 %sub106, %mul108
  store i64 %sub109, i64* %z1, align 8, !tbaa !8
  %110 = load i64, i64* %tmp0, align 8, !tbaa !8
  %111 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add110 = add nsw i64 %110, %111
  %mul111 = mul nsw i64 %add110, 793
  %112 = load i64, i64* %tmp3, align 8, !tbaa !8
  %113 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add112 = add nsw i64 %112, %113
  %mul113 = mul nsw i64 %add112, 7678
  %sub114 = sub nsw i64 %mul111, %mul113
  %114 = load i64, i64* %tmp1, align 8, !tbaa !8
  %115 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add115 = add nsw i64 %114, %115
  %mul116 = mul nsw i64 %add115, 3989
  %add117 = add nsw i64 %sub114, %mul116
  store i64 %add117, i64* %z2, align 8, !tbaa !8
  %116 = load i64, i64* %z1, align 8, !tbaa !8
  %117 = load i64, i64* %z2, align 8, !tbaa !8
  %add118 = add nsw i64 %116, %117
  %add119 = add nsw i64 %add118, 4096
  %shr120 = ashr i64 %add119, 13
  %conv121 = trunc i64 %shr120 to i32
  %118 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i32, i32* %118, i64 4
  store i32 %conv121, i32* %arrayidx122, align 4, !tbaa !5
  %119 = load i64, i64* %z1, align 8, !tbaa !8
  %120 = load i64, i64* %z2, align 8, !tbaa !8
  %sub123 = sub nsw i64 %119, %120
  %add124 = add nsw i64 %sub123, 4096
  %shr125 = ashr i64 %add124, 13
  %conv126 = trunc i64 %shr125 to i32
  %121 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i32, i32* %121, i64 6
  store i32 %conv126, i32* %arrayidx127, align 4, !tbaa !5
  %122 = load i64, i64* %tmp10, align 8, !tbaa !8
  %123 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add128 = add nsw i64 %122, %123
  %mul129 = mul nsw i64 %add128, 10832
  store i64 %mul129, i64* %tmp1, align 8, !tbaa !8
  %124 = load i64, i64* %tmp10, align 8, !tbaa !8
  %125 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add130 = add nsw i64 %124, %125
  %mul131 = mul nsw i64 %add130, 9534
  store i64 %mul131, i64* %tmp2, align 8, !tbaa !8
  %126 = load i64, i64* %tmp10, align 8, !tbaa !8
  %127 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add132 = add nsw i64 %126, %127
  %mul133 = mul nsw i64 %add132, 7682
  %128 = load i64, i64* %tmp14, align 8, !tbaa !8
  %129 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add134 = add nsw i64 %128, %129
  %mul135 = mul nsw i64 %add134, 2773
  %add136 = add nsw i64 %mul133, %mul135
  store i64 %add136, i64* %tmp3, align 8, !tbaa !8
  %130 = load i64, i64* %tmp1, align 8, !tbaa !8
  %131 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add137 = add nsw i64 %130, %131
  %132 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add138 = add nsw i64 %add137, %132
  %133 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul139 = mul nsw i64 %133, 16549
  %sub140 = sub nsw i64 %add138, %mul139
  %134 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul141 = mul nsw i64 %134, 2611
  %add142 = add nsw i64 %sub140, %mul141
  store i64 %add142, i64* %tmp0, align 8, !tbaa !8
  %135 = load i64, i64* %tmp14, align 8, !tbaa !8
  %136 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub143 = sub nsw i64 %135, %136
  %mul144 = mul nsw i64 %sub143, 7682
  %137 = load i64, i64* %tmp11, align 8, !tbaa !8
  %138 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add145 = add nsw i64 %137, %138
  %mul146 = mul nsw i64 %add145, 2773
  %sub147 = sub nsw i64 %mul144, %mul146
  store i64 %sub147, i64* %tmp4, align 8, !tbaa !8
  %139 = load i64, i64* %tmp11, align 8, !tbaa !8
  %140 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add148 = add nsw i64 %139, %140
  %mul149 = mul nsw i64 %add148, -9534
  store i64 %mul149, i64* %tmp5, align 8, !tbaa !8
  %141 = load i64, i64* %tmp4, align 8, !tbaa !8
  %142 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add150 = add nsw i64 %141, %142
  %143 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul151 = mul nsw i64 %143, 6859
  %add152 = add nsw i64 %add150, %mul151
  %144 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul153 = mul nsw i64 %144, 19183
  %sub154 = sub nsw i64 %add152, %mul153
  %145 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add155 = add nsw i64 %145, %sub154
  store i64 %add155, i64* %tmp1, align 8, !tbaa !8
  %146 = load i64, i64* %tmp12, align 8, !tbaa !8
  %147 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add156 = add nsw i64 %146, %147
  %mul157 = mul nsw i64 %add156, -5384
  store i64 %mul157, i64* %tmp6, align 8, !tbaa !8
  %148 = load i64, i64* %tmp4, align 8, !tbaa !8
  %149 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add158 = add nsw i64 %148, %149
  %150 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul159 = mul nsw i64 %150, 12879
  %sub160 = sub nsw i64 %add158, %mul159
  %151 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul161 = mul nsw i64 %151, 18515
  %add162 = add nsw i64 %sub160, %mul161
  %152 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add163 = add nsw i64 %152, %add162
  store i64 %add163, i64* %tmp2, align 8, !tbaa !8
  %153 = load i64, i64* %tmp5, align 8, !tbaa !8
  %154 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add164 = add nsw i64 %153, %154
  %155 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul165 = mul nsw i64 %155, 18068
  %add166 = add nsw i64 %add164, %mul165
  %156 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul167 = mul nsw i64 %156, 14273
  %sub168 = sub nsw i64 %add166, %mul167
  %157 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add169 = add nsw i64 %157, %sub168
  store i64 %add169, i64* %tmp3, align 8, !tbaa !8
  %158 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add170 = add nsw i64 %158, 4096
  %shr171 = ashr i64 %add170, 13
  %conv172 = trunc i64 %shr171 to i32
  %159 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 %conv172, i32* %arrayidx173, align 4, !tbaa !5
  %160 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add174 = add nsw i64 %160, 4096
  %shr175 = ashr i64 %add174, 13
  %conv176 = trunc i64 %shr175 to i32
  %161 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i32, i32* %161, i64 3
  store i32 %conv176, i32* %arrayidx177, align 4, !tbaa !5
  %162 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add178 = add nsw i64 %162, 4096
  %shr179 = ashr i64 %add178, 13
  %conv180 = trunc i64 %shr179 to i32
  %163 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i32, i32* %163, i64 5
  store i32 %conv180, i32* %arrayidx181, align 4, !tbaa !5
  %164 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add182 = add nsw i64 %164, 4096
  %shr183 = ashr i64 %add182, 13
  %conv184 = trunc i64 %shr183 to i32
  %165 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i32, i32* %165, i64 7
  store i32 %conv184, i32* %arrayidx185, align 4, !tbaa !5
  %166 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %166, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %167 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %167, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %168 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp187 = icmp eq i32 %168, 13
  br i1 %cmp187, label %if.then.189, label %if.end

if.then.189:                                      ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %169 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr190 = getelementptr inbounds i32, i32* %169, i64 8
  store i32* %add.ptr190, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.191

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [40 x i32], [40 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.191

if.end.191:                                       ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.189
  %170 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %170, i32** %dataptr, align 8, !tbaa !1
  %arraydecay192 = getelementptr inbounds [40 x i32], [40 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay192, i32** %wsptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc, %for.end
  %171 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp194 = icmp sge i32 %171, 0
  br i1 %cmp194, label %for.body, label %for.end.364

for.body:                                         ; preds = %for.cond.193
  %172 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i32, i32* %172, i64 0
  %173 = load i32, i32* %arrayidx196, align 4, !tbaa !5
  %174 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i32, i32* %174, i64 32
  %175 = load i32, i32* %arrayidx197, align 4, !tbaa !5
  %add198 = add nsw i32 %173, %175
  %conv199 = sext i32 %add198 to i64
  store i64 %conv199, i64* %tmp0, align 8, !tbaa !8
  %176 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i32, i32* %176, i64 8
  %177 = load i32, i32* %arrayidx200, align 4, !tbaa !5
  %178 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i32, i32* %178, i64 24
  %179 = load i32, i32* %arrayidx201, align 4, !tbaa !5
  %add202 = add nsw i32 %177, %179
  %conv203 = sext i32 %add202 to i64
  store i64 %conv203, i64* %tmp1, align 8, !tbaa !8
  %180 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i32, i32* %180, i64 16
  %181 = load i32, i32* %arrayidx204, align 4, !tbaa !5
  %182 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i32, i32* %182, i64 16
  %183 = load i32, i32* %arrayidx205, align 4, !tbaa !5
  %add206 = add nsw i32 %181, %183
  %conv207 = sext i32 %add206 to i64
  store i64 %conv207, i64* %tmp2, align 8, !tbaa !8
  %184 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i32, i32* %184, i64 24
  %185 = load i32, i32* %arrayidx208, align 4, !tbaa !5
  %186 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds i32, i32* %186, i64 8
  %187 = load i32, i32* %arrayidx209, align 4, !tbaa !5
  %add210 = add nsw i32 %185, %187
  %conv211 = sext i32 %add210 to i64
  store i64 %conv211, i64* %tmp3, align 8, !tbaa !8
  %188 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i32, i32* %188, i64 32
  %189 = load i32, i32* %arrayidx212, align 4, !tbaa !5
  %190 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i32, i32* %190, i64 0
  %191 = load i32, i32* %arrayidx213, align 4, !tbaa !5
  %add214 = add nsw i32 %189, %191
  %conv215 = sext i32 %add214 to i64
  store i64 %conv215, i64* %tmp4, align 8, !tbaa !8
  %192 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds i32, i32* %192, i64 40
  %193 = load i32, i32* %arrayidx216, align 4, !tbaa !5
  %194 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i32, i32* %194, i64 56
  %195 = load i32, i32* %arrayidx217, align 4, !tbaa !5
  %add218 = add nsw i32 %193, %195
  %conv219 = sext i32 %add218 to i64
  store i64 %conv219, i64* %tmp5, align 8, !tbaa !8
  %196 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i32, i32* %196, i64 48
  %197 = load i32, i32* %arrayidx220, align 4, !tbaa !5
  %conv221 = sext i32 %197 to i64
  store i64 %conv221, i64* %tmp6, align 8, !tbaa !8
  %198 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i32, i32* %198, i64 0
  %199 = load i32, i32* %arrayidx222, align 4, !tbaa !5
  %200 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i32, i32* %200, i64 32
  %201 = load i32, i32* %arrayidx223, align 4, !tbaa !5
  %sub224 = sub nsw i32 %199, %201
  %conv225 = sext i32 %sub224 to i64
  store i64 %conv225, i64* %tmp10, align 8, !tbaa !8
  %202 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i32, i32* %202, i64 8
  %203 = load i32, i32* %arrayidx226, align 4, !tbaa !5
  %204 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds i32, i32* %204, i64 24
  %205 = load i32, i32* %arrayidx227, align 4, !tbaa !5
  %sub228 = sub nsw i32 %203, %205
  %conv229 = sext i32 %sub228 to i64
  store i64 %conv229, i64* %tmp11, align 8, !tbaa !8
  %206 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds i32, i32* %206, i64 16
  %207 = load i32, i32* %arrayidx230, align 4, !tbaa !5
  %208 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i32, i32* %208, i64 16
  %209 = load i32, i32* %arrayidx231, align 4, !tbaa !5
  %sub232 = sub nsw i32 %207, %209
  %conv233 = sext i32 %sub232 to i64
  store i64 %conv233, i64* %tmp12, align 8, !tbaa !8
  %210 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i32, i32* %210, i64 24
  %211 = load i32, i32* %arrayidx234, align 4, !tbaa !5
  %212 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i32, i32* %212, i64 8
  %213 = load i32, i32* %arrayidx235, align 4, !tbaa !5
  %sub236 = sub nsw i32 %211, %213
  %conv237 = sext i32 %sub236 to i64
  store i64 %conv237, i64* %tmp13, align 8, !tbaa !8
  %214 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds i32, i32* %214, i64 32
  %215 = load i32, i32* %arrayidx238, align 4, !tbaa !5
  %216 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i32, i32* %216, i64 0
  %217 = load i32, i32* %arrayidx239, align 4, !tbaa !5
  %sub240 = sub nsw i32 %215, %217
  %conv241 = sext i32 %sub240 to i64
  store i64 %conv241, i64* %tmp14, align 8, !tbaa !8
  %218 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i32, i32* %218, i64 40
  %219 = load i32, i32* %arrayidx242, align 4, !tbaa !5
  %220 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i32, i32* %220, i64 56
  %221 = load i32, i32* %arrayidx243, align 4, !tbaa !5
  %sub244 = sub nsw i32 %219, %221
  %conv245 = sext i32 %sub244 to i64
  store i64 %conv245, i64* %tmp15, align 8, !tbaa !8
  %222 = load i64, i64* %tmp0, align 8, !tbaa !8
  %223 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add246 = add nsw i64 %222, %223
  %224 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add247 = add nsw i64 %add246, %224
  %225 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add248 = add nsw i64 %add247, %225
  %226 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add249 = add nsw i64 %add248, %226
  %227 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add250 = add nsw i64 %add249, %227
  %228 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add251 = add nsw i64 %add250, %228
  %mul252 = mul nsw i64 %add251, 6205
  %add253 = add nsw i64 %mul252, 8192
  %shr254 = ashr i64 %add253, 14
  %conv255 = trunc i64 %shr254 to i32
  %229 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx256 = getelementptr inbounds i32, i32* %229, i64 0
  store i32 %conv255, i32* %arrayidx256, align 4, !tbaa !5
  %230 = load i64, i64* %tmp6, align 8, !tbaa !8
  %231 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add257 = add nsw i64 %231, %230
  store i64 %add257, i64* %tmp6, align 8, !tbaa !8
  %232 = load i64, i64* %tmp6, align 8, !tbaa !8
  %233 = load i64, i64* %tmp0, align 8, !tbaa !8
  %sub258 = sub nsw i64 %233, %232
  store i64 %sub258, i64* %tmp0, align 8, !tbaa !8
  %234 = load i64, i64* %tmp6, align 8, !tbaa !8
  %235 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub259 = sub nsw i64 %235, %234
  store i64 %sub259, i64* %tmp1, align 8, !tbaa !8
  %236 = load i64, i64* %tmp6, align 8, !tbaa !8
  %237 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub260 = sub nsw i64 %237, %236
  store i64 %sub260, i64* %tmp2, align 8, !tbaa !8
  %238 = load i64, i64* %tmp6, align 8, !tbaa !8
  %239 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub261 = sub nsw i64 %239, %238
  store i64 %sub261, i64* %tmp3, align 8, !tbaa !8
  %240 = load i64, i64* %tmp6, align 8, !tbaa !8
  %241 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub262 = sub nsw i64 %241, %240
  store i64 %sub262, i64* %tmp4, align 8, !tbaa !8
  %242 = load i64, i64* %tmp6, align 8, !tbaa !8
  %243 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub263 = sub nsw i64 %243, %242
  store i64 %sub263, i64* %tmp5, align 8, !tbaa !8
  %244 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul264 = mul nsw i64 %244, 8520
  %245 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul265 = mul nsw i64 %245, 6568
  %add266 = add nsw i64 %mul264, %mul265
  %246 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul267 = mul nsw i64 %246, 3112
  %add268 = add nsw i64 %add266, %mul267
  %247 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul269 = mul nsw i64 %247, 1058
  %sub270 = sub nsw i64 %add268, %mul269
  %248 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul271 = mul nsw i64 %248, 4985
  %sub272 = sub nsw i64 %sub270, %mul271
  %249 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul273 = mul nsw i64 %249, 7770
  %sub274 = sub nsw i64 %sub272, %mul273
  %add275 = add nsw i64 %sub274, 8192
  %shr276 = ashr i64 %add275, 14
  %conv277 = trunc i64 %shr276 to i32
  %250 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx278 = getelementptr inbounds i32, i32* %250, i64 16
  store i32 %conv277, i32* %arrayidx278, align 4, !tbaa !5
  %251 = load i64, i64* %tmp0, align 8, !tbaa !8
  %252 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub279 = sub nsw i64 %251, %252
  %mul280 = mul nsw i64 %sub279, 7169
  %253 = load i64, i64* %tmp3, align 8, !tbaa !8
  %254 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub281 = sub nsw i64 %253, %254
  %mul282 = mul nsw i64 %sub281, 2704
  %sub283 = sub nsw i64 %mul280, %mul282
  %255 = load i64, i64* %tmp1, align 8, !tbaa !8
  %256 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub284 = sub nsw i64 %255, %256
  %mul285 = mul nsw i64 %sub284, 1963
  %sub286 = sub nsw i64 %sub283, %mul285
  store i64 %sub286, i64* %z1, align 8, !tbaa !8
  %257 = load i64, i64* %tmp0, align 8, !tbaa !8
  %258 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add287 = add nsw i64 %257, %258
  %mul288 = mul nsw i64 %add287, 601
  %259 = load i64, i64* %tmp3, align 8, !tbaa !8
  %260 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add289 = add nsw i64 %259, %260
  %mul290 = mul nsw i64 %add289, 5816
  %sub291 = sub nsw i64 %mul288, %mul290
  %261 = load i64, i64* %tmp1, align 8, !tbaa !8
  %262 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add292 = add nsw i64 %261, %262
  %mul293 = mul nsw i64 %add292, 3021
  %add294 = add nsw i64 %sub291, %mul293
  store i64 %add294, i64* %z2, align 8, !tbaa !8
  %263 = load i64, i64* %z1, align 8, !tbaa !8
  %264 = load i64, i64* %z2, align 8, !tbaa !8
  %add295 = add nsw i64 %263, %264
  %add296 = add nsw i64 %add295, 8192
  %shr297 = ashr i64 %add296, 14
  %conv298 = trunc i64 %shr297 to i32
  %265 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx299 = getelementptr inbounds i32, i32* %265, i64 32
  store i32 %conv298, i32* %arrayidx299, align 4, !tbaa !5
  %266 = load i64, i64* %z1, align 8, !tbaa !8
  %267 = load i64, i64* %z2, align 8, !tbaa !8
  %sub300 = sub nsw i64 %266, %267
  %add301 = add nsw i64 %sub300, 8192
  %shr302 = ashr i64 %add301, 14
  %conv303 = trunc i64 %shr302 to i32
  %268 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx304 = getelementptr inbounds i32, i32* %268, i64 48
  store i32 %conv303, i32* %arrayidx304, align 4, !tbaa !5
  %269 = load i64, i64* %tmp10, align 8, !tbaa !8
  %270 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add305 = add nsw i64 %269, %270
  %mul306 = mul nsw i64 %add305, 8204
  store i64 %mul306, i64* %tmp1, align 8, !tbaa !8
  %271 = load i64, i64* %tmp10, align 8, !tbaa !8
  %272 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add307 = add nsw i64 %271, %272
  %mul308 = mul nsw i64 %add307, 7221
  store i64 %mul308, i64* %tmp2, align 8, !tbaa !8
  %273 = load i64, i64* %tmp10, align 8, !tbaa !8
  %274 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add309 = add nsw i64 %273, %274
  %mul310 = mul nsw i64 %add309, 5819
  %275 = load i64, i64* %tmp14, align 8, !tbaa !8
  %276 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add311 = add nsw i64 %275, %276
  %mul312 = mul nsw i64 %add311, 2100
  %add313 = add nsw i64 %mul310, %mul312
  store i64 %add313, i64* %tmp3, align 8, !tbaa !8
  %277 = load i64, i64* %tmp1, align 8, !tbaa !8
  %278 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add314 = add nsw i64 %277, %278
  %279 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add315 = add nsw i64 %add314, %279
  %280 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul316 = mul nsw i64 %280, 12534
  %sub317 = sub nsw i64 %add315, %mul316
  %281 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul318 = mul nsw i64 %281, 1978
  %add319 = add nsw i64 %sub317, %mul318
  store i64 %add319, i64* %tmp0, align 8, !tbaa !8
  %282 = load i64, i64* %tmp14, align 8, !tbaa !8
  %283 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub320 = sub nsw i64 %282, %283
  %mul321 = mul nsw i64 %sub320, 5819
  %284 = load i64, i64* %tmp11, align 8, !tbaa !8
  %285 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add322 = add nsw i64 %284, %285
  %mul323 = mul nsw i64 %add322, 2100
  %sub324 = sub nsw i64 %mul321, %mul323
  store i64 %sub324, i64* %tmp4, align 8, !tbaa !8
  %286 = load i64, i64* %tmp11, align 8, !tbaa !8
  %287 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add325 = add nsw i64 %286, %287
  %mul326 = mul nsw i64 %add325, -7221
  store i64 %mul326, i64* %tmp5, align 8, !tbaa !8
  %288 = load i64, i64* %tmp4, align 8, !tbaa !8
  %289 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add327 = add nsw i64 %288, %289
  %290 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul328 = mul nsw i64 %290, 5195
  %add329 = add nsw i64 %add327, %mul328
  %291 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul330 = mul nsw i64 %291, 14529
  %sub331 = sub nsw i64 %add329, %mul330
  %292 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add332 = add nsw i64 %292, %sub331
  store i64 %add332, i64* %tmp1, align 8, !tbaa !8
  %293 = load i64, i64* %tmp12, align 8, !tbaa !8
  %294 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add333 = add nsw i64 %293, %294
  %mul334 = mul nsw i64 %add333, -4078
  store i64 %mul334, i64* %tmp6, align 8, !tbaa !8
  %295 = load i64, i64* %tmp4, align 8, !tbaa !8
  %296 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add335 = add nsw i64 %295, %296
  %297 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul336 = mul nsw i64 %297, 9754
  %sub337 = sub nsw i64 %add335, %mul336
  %298 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul338 = mul nsw i64 %298, 14023
  %add339 = add nsw i64 %sub337, %mul338
  %299 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add340 = add nsw i64 %299, %add339
  store i64 %add340, i64* %tmp2, align 8, !tbaa !8
  %300 = load i64, i64* %tmp5, align 8, !tbaa !8
  %301 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add341 = add nsw i64 %300, %301
  %302 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul342 = mul nsw i64 %302, 13685
  %add343 = add nsw i64 %add341, %mul342
  %303 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul344 = mul nsw i64 %303, 10811
  %sub345 = sub nsw i64 %add343, %mul344
  %304 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add346 = add nsw i64 %304, %sub345
  store i64 %add346, i64* %tmp3, align 8, !tbaa !8
  %305 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add347 = add nsw i64 %305, 8192
  %shr348 = ashr i64 %add347, 14
  %conv349 = trunc i64 %shr348 to i32
  %306 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx350 = getelementptr inbounds i32, i32* %306, i64 8
  store i32 %conv349, i32* %arrayidx350, align 4, !tbaa !5
  %307 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add351 = add nsw i64 %307, 8192
  %shr352 = ashr i64 %add351, 14
  %conv353 = trunc i64 %shr352 to i32
  %308 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx354 = getelementptr inbounds i32, i32* %308, i64 24
  store i32 %conv353, i32* %arrayidx354, align 4, !tbaa !5
  %309 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add355 = add nsw i64 %309, 8192
  %shr356 = ashr i64 %add355, 14
  %conv357 = trunc i64 %shr356 to i32
  %310 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx358 = getelementptr inbounds i32, i32* %310, i64 40
  store i32 %conv357, i32* %arrayidx358, align 4, !tbaa !5
  %311 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add359 = add nsw i64 %311, 8192
  %shr360 = ashr i64 %add359, 14
  %conv361 = trunc i64 %shr360 to i32
  %312 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx362 = getelementptr inbounds i32, i32* %312, i64 56
  store i32 %conv361, i32* %arrayidx362, align 4, !tbaa !5
  %313 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %313, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %314 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr363 = getelementptr inbounds i32, i32* %314, i32 1
  store i32* %incdec.ptr363, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %315 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %315, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.193

for.end.364:                                      ; preds = %for.cond.193
  %316 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #1
  %319 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #1
  %320 = bitcast [40 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 160, i8* %320) #1
  %321 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #1
  %322 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %322) #1
  %323 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  %325 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #1
  %326 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #1
  %327 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  %328 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #1
  %329 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #1
  %330 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #1
  %331 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %331) #1
  %332 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #1
  %333 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #1
  %334 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #1
  %335 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_14x14(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %workspace = alloca [48 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast [48 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 192, i8* %14) #1
  %15 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %19, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.178, %entry
  %20 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %20 to i64
  %21 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %23 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %24 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %25 to i32
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %26, i64 13
  %27 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %27 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %29 to i32
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %30, i64 12
  %31 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %31 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %33 to i32
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %34, i64 11
  %35 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %35 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %36 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %36, i64 3
  %37 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %37 to i32
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %38, i64 10
  %39 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %39 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp13, align 8, !tbaa !8
  %40 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %40, i64 4
  %41 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %41 to i32
  %42 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %42, i64 9
  %43 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %43 to i32
  %add27 = add nsw i32 %conv24, %conv26
  %conv28 = sext i32 %add27 to i64
  store i64 %conv28, i64* %tmp4, align 8, !tbaa !8
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %44, i64 5
  %45 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = zext i8 %45 to i32
  %46 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %46, i64 8
  %47 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %47 to i32
  %add33 = add nsw i32 %conv30, %conv32
  %conv34 = sext i32 %add33 to i64
  store i64 %conv34, i64* %tmp5, align 8, !tbaa !8
  %48 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %48, i64 6
  %49 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = zext i8 %49 to i32
  %50 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %50, i64 7
  %51 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = zext i8 %51 to i32
  %add39 = add nsw i32 %conv36, %conv38
  %conv40 = sext i32 %add39 to i64
  store i64 %conv40, i64* %tmp6, align 8, !tbaa !8
  %52 = load i64, i64* %tmp0, align 8, !tbaa !8
  %53 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add41 = add nsw i64 %52, %53
  store i64 %add41, i64* %tmp10, align 8, !tbaa !8
  %54 = load i64, i64* %tmp0, align 8, !tbaa !8
  %55 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub = sub nsw i64 %54, %55
  store i64 %sub, i64* %tmp14, align 8, !tbaa !8
  %56 = load i64, i64* %tmp1, align 8, !tbaa !8
  %57 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add42 = add nsw i64 %56, %57
  store i64 %add42, i64* %tmp11, align 8, !tbaa !8
  %58 = load i64, i64* %tmp1, align 8, !tbaa !8
  %59 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub43 = sub nsw i64 %58, %59
  store i64 %sub43, i64* %tmp15, align 8, !tbaa !8
  %60 = load i64, i64* %tmp2, align 8, !tbaa !8
  %61 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add44 = add nsw i64 %60, %61
  store i64 %add44, i64* %tmp12, align 8, !tbaa !8
  %62 = load i64, i64* %tmp2, align 8, !tbaa !8
  %63 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub45 = sub nsw i64 %62, %63
  store i64 %sub45, i64* %tmp16, align 8, !tbaa !8
  %64 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx46, align 1, !tbaa !7
  %conv47 = zext i8 %65 to i32
  %66 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %66, i64 13
  %67 = load i8, i8* %arrayidx48, align 1, !tbaa !7
  %conv49 = zext i8 %67 to i32
  %sub50 = sub nsw i32 %conv47, %conv49
  %conv51 = sext i32 %sub50 to i64
  store i64 %conv51, i64* %tmp0, align 8, !tbaa !8
  %68 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %68, i64 1
  %69 = load i8, i8* %arrayidx52, align 1, !tbaa !7
  %conv53 = zext i8 %69 to i32
  %70 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %70, i64 12
  %71 = load i8, i8* %arrayidx54, align 1, !tbaa !7
  %conv55 = zext i8 %71 to i32
  %sub56 = sub nsw i32 %conv53, %conv55
  %conv57 = sext i32 %sub56 to i64
  store i64 %conv57, i64* %tmp1, align 8, !tbaa !8
  %72 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %72, i64 2
  %73 = load i8, i8* %arrayidx58, align 1, !tbaa !7
  %conv59 = zext i8 %73 to i32
  %74 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %74, i64 11
  %75 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %conv61 = zext i8 %75 to i32
  %sub62 = sub nsw i32 %conv59, %conv61
  %conv63 = sext i32 %sub62 to i64
  store i64 %conv63, i64* %tmp2, align 8, !tbaa !8
  %76 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %76, i64 3
  %77 = load i8, i8* %arrayidx64, align 1, !tbaa !7
  %conv65 = zext i8 %77 to i32
  %78 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %78, i64 10
  %79 = load i8, i8* %arrayidx66, align 1, !tbaa !7
  %conv67 = zext i8 %79 to i32
  %sub68 = sub nsw i32 %conv65, %conv67
  %conv69 = sext i32 %sub68 to i64
  store i64 %conv69, i64* %tmp3, align 8, !tbaa !8
  %80 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %80, i64 4
  %81 = load i8, i8* %arrayidx70, align 1, !tbaa !7
  %conv71 = zext i8 %81 to i32
  %82 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %82, i64 9
  %83 = load i8, i8* %arrayidx72, align 1, !tbaa !7
  %conv73 = zext i8 %83 to i32
  %sub74 = sub nsw i32 %conv71, %conv73
  %conv75 = sext i32 %sub74 to i64
  store i64 %conv75, i64* %tmp4, align 8, !tbaa !8
  %84 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %84, i64 5
  %85 = load i8, i8* %arrayidx76, align 1, !tbaa !7
  %conv77 = zext i8 %85 to i32
  %86 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %86, i64 8
  %87 = load i8, i8* %arrayidx78, align 1, !tbaa !7
  %conv79 = zext i8 %87 to i32
  %sub80 = sub nsw i32 %conv77, %conv79
  %conv81 = sext i32 %sub80 to i64
  store i64 %conv81, i64* %tmp5, align 8, !tbaa !8
  %88 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %88, i64 6
  %89 = load i8, i8* %arrayidx82, align 1, !tbaa !7
  %conv83 = zext i8 %89 to i32
  %90 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %90, i64 7
  %91 = load i8, i8* %arrayidx84, align 1, !tbaa !7
  %conv85 = zext i8 %91 to i32
  %sub86 = sub nsw i32 %conv83, %conv85
  %conv87 = sext i32 %sub86 to i64
  store i64 %conv87, i64* %tmp6, align 8, !tbaa !8
  %92 = load i64, i64* %tmp10, align 8, !tbaa !8
  %93 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add88 = add nsw i64 %92, %93
  %94 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add89 = add nsw i64 %add88, %94
  %95 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add90 = add nsw i64 %add89, %95
  %sub91 = sub nsw i64 %add90, 1792
  %conv92 = trunc i64 %sub91 to i32
  %96 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %conv92, i32* %arrayidx93, align 4, !tbaa !5
  %97 = load i64, i64* %tmp13, align 8, !tbaa !8
  %98 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add94 = add nsw i64 %98, %97
  store i64 %add94, i64* %tmp13, align 8, !tbaa !8
  %99 = load i64, i64* %tmp10, align 8, !tbaa !8
  %100 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub95 = sub nsw i64 %99, %100
  %mul = mul nsw i64 %sub95, 10438
  %101 = load i64, i64* %tmp11, align 8, !tbaa !8
  %102 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub96 = sub nsw i64 %101, %102
  %mul97 = mul nsw i64 %sub96, 2578
  %add98 = add nsw i64 %mul, %mul97
  %103 = load i64, i64* %tmp12, align 8, !tbaa !8
  %104 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub99 = sub nsw i64 %103, %104
  %mul100 = mul nsw i64 %sub99, 7223
  %sub101 = sub nsw i64 %add98, %mul100
  %add102 = add nsw i64 %sub101, 4096
  %shr = ashr i64 %add102, 13
  %conv103 = trunc i64 %shr to i32
  %105 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i32, i32* %105, i64 4
  store i32 %conv103, i32* %arrayidx104, align 4, !tbaa !5
  %106 = load i64, i64* %tmp14, align 8, !tbaa !8
  %107 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add105 = add nsw i64 %106, %107
  %mul106 = mul nsw i64 %add105, 9058
  store i64 %mul106, i64* %tmp10, align 8, !tbaa !8
  %108 = load i64, i64* %tmp10, align 8, !tbaa !8
  %109 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul107 = mul nsw i64 %109, 2237
  %add108 = add nsw i64 %108, %mul107
  %110 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul109 = mul nsw i64 %110, 5027
  %add110 = add nsw i64 %add108, %mul109
  %add111 = add nsw i64 %add110, 4096
  %shr112 = ashr i64 %add111, 13
  %conv113 = trunc i64 %shr112 to i32
  %111 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i32, i32* %111, i64 2
  store i32 %conv113, i32* %arrayidx114, align 4, !tbaa !5
  %112 = load i64, i64* %tmp10, align 8, !tbaa !8
  %113 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul115 = mul nsw i64 %113, 14084
  %sub116 = sub nsw i64 %112, %mul115
  %114 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul117 = mul nsw i64 %114, 11295
  %sub118 = sub nsw i64 %sub116, %mul117
  %add119 = add nsw i64 %sub118, 4096
  %shr120 = ashr i64 %add119, 13
  %conv121 = trunc i64 %shr120 to i32
  %115 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i32, i32* %115, i64 6
  store i32 %conv121, i32* %arrayidx122, align 4, !tbaa !5
  %116 = load i64, i64* %tmp1, align 8, !tbaa !8
  %117 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add123 = add nsw i64 %116, %117
  store i64 %add123, i64* %tmp10, align 8, !tbaa !8
  %118 = load i64, i64* %tmp5, align 8, !tbaa !8
  %119 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub124 = sub nsw i64 %118, %119
  store i64 %sub124, i64* %tmp11, align 8, !tbaa !8
  %120 = load i64, i64* %tmp0, align 8, !tbaa !8
  %121 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub125 = sub nsw i64 %120, %121
  %122 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add126 = add nsw i64 %sub125, %122
  %123 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub127 = sub nsw i64 %add126, %123
  %124 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub128 = sub nsw i64 %sub127, %124
  %conv129 = trunc i64 %sub128 to i32
  %125 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i32, i32* %125, i64 7
  store i32 %conv129, i32* %arrayidx130, align 4, !tbaa !5
  %126 = load i64, i64* %tmp3, align 8, !tbaa !8
  %shl = shl i64 %126, 13
  store i64 %shl, i64* %tmp3, align 8, !tbaa !8
  %127 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul131 = mul nsw i64 %127, -1297
  store i64 %mul131, i64* %tmp10, align 8, !tbaa !8
  %128 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul132 = mul nsw i64 %128, 11512
  store i64 %mul132, i64* %tmp11, align 8, !tbaa !8
  %129 = load i64, i64* %tmp11, align 8, !tbaa !8
  %130 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub133 = sub nsw i64 %129, %130
  %131 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add134 = add nsw i64 %131, %sub133
  store i64 %add134, i64* %tmp10, align 8, !tbaa !8
  %132 = load i64, i64* %tmp0, align 8, !tbaa !8
  %133 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add135 = add nsw i64 %132, %133
  %mul136 = mul nsw i64 %add135, 9810
  %134 = load i64, i64* %tmp4, align 8, !tbaa !8
  %135 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add137 = add nsw i64 %134, %135
  %mul138 = mul nsw i64 %add137, 6164
  %add139 = add nsw i64 %mul136, %mul138
  store i64 %add139, i64* %tmp11, align 8, !tbaa !8
  %136 = load i64, i64* %tmp10, align 8, !tbaa !8
  %137 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add140 = add nsw i64 %136, %137
  %138 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul141 = mul nsw i64 %138, 19447
  %sub142 = sub nsw i64 %add140, %mul141
  %139 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul143 = mul nsw i64 %139, 9175
  %add144 = add nsw i64 %sub142, %mul143
  %add145 = add nsw i64 %add144, 4096
  %shr146 = ashr i64 %add145, 13
  %conv147 = trunc i64 %shr146 to i32
  %140 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i32, i32* %140, i64 5
  store i32 %conv147, i32* %arrayidx148, align 4, !tbaa !5
  %141 = load i64, i64* %tmp0, align 8, !tbaa !8
  %142 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add149 = add nsw i64 %141, %142
  %mul150 = mul nsw i64 %add149, 10935
  %143 = load i64, i64* %tmp5, align 8, !tbaa !8
  %144 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub151 = sub nsw i64 %143, %144
  %mul152 = mul nsw i64 %sub151, 3826
  %add153 = add nsw i64 %mul150, %mul152
  store i64 %add153, i64* %tmp12, align 8, !tbaa !8
  %145 = load i64, i64* %tmp10, align 8, !tbaa !8
  %146 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add154 = add nsw i64 %145, %146
  %147 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul155 = mul nsw i64 %147, 3474
  %sub156 = sub nsw i64 %add154, %mul155
  %148 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul157 = mul nsw i64 %148, 25148
  %sub158 = sub nsw i64 %sub156, %mul157
  %add159 = add nsw i64 %sub158, 4096
  %shr160 = ashr i64 %add159, 13
  %conv161 = trunc i64 %shr160 to i32
  %149 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i32, i32* %149, i64 3
  store i32 %conv161, i32* %arrayidx162, align 4, !tbaa !5
  %150 = load i64, i64* %tmp11, align 8, !tbaa !8
  %151 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add163 = add nsw i64 %150, %151
  %152 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add164 = add nsw i64 %add163, %152
  %153 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add165 = add nsw i64 %add164, %153
  %154 = load i64, i64* %tmp0, align 8, !tbaa !8
  %155 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add166 = add nsw i64 %154, %155
  %mul167 = mul nsw i64 %add166, 9232
  %sub168 = sub nsw i64 %add165, %mul167
  %add169 = add nsw i64 %sub168, 4096
  %shr170 = ashr i64 %add169, 13
  %conv171 = trunc i64 %shr170 to i32
  %156 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i32, i32* %156, i64 1
  store i32 %conv171, i32* %arrayidx172, align 4, !tbaa !5
  %157 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %157, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %158 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %158, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %159 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp174 = icmp eq i32 %159, 14
  br i1 %cmp174, label %if.then.176, label %if.end

if.then.176:                                      ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %160 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr177 = getelementptr inbounds i32, i32* %160, i64 8
  store i32* %add.ptr177, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.178

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.178

if.end.178:                                       ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.176
  %161 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %161, i32** %dataptr, align 8, !tbaa !1
  %arraydecay179 = getelementptr inbounds [48 x i32], [48 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay179, i32** %wsptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc, %for.end
  %162 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp181 = icmp sge i32 %162, 0
  br i1 %cmp181, label %for.body, label %for.end.339

for.body:                                         ; preds = %for.cond.180
  %163 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i32, i32* %163, i64 0
  %164 = load i32, i32* %arrayidx183, align 4, !tbaa !5
  %165 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i32, i32* %165, i64 40
  %166 = load i32, i32* %arrayidx184, align 4, !tbaa !5
  %add185 = add nsw i32 %164, %166
  %conv186 = sext i32 %add185 to i64
  store i64 %conv186, i64* %tmp0, align 8, !tbaa !8
  %167 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i32, i32* %167, i64 8
  %168 = load i32, i32* %arrayidx187, align 4, !tbaa !5
  %169 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i32, i32* %169, i64 32
  %170 = load i32, i32* %arrayidx188, align 4, !tbaa !5
  %add189 = add nsw i32 %168, %170
  %conv190 = sext i32 %add189 to i64
  store i64 %conv190, i64* %tmp1, align 8, !tbaa !8
  %171 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds i32, i32* %171, i64 16
  %172 = load i32, i32* %arrayidx191, align 4, !tbaa !5
  %173 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i32, i32* %173, i64 24
  %174 = load i32, i32* %arrayidx192, align 4, !tbaa !5
  %add193 = add nsw i32 %172, %174
  %conv194 = sext i32 %add193 to i64
  store i64 %conv194, i64* %tmp2, align 8, !tbaa !8
  %175 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i32, i32* %175, i64 24
  %176 = load i32, i32* %arrayidx195, align 4, !tbaa !5
  %177 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i32, i32* %177, i64 16
  %178 = load i32, i32* %arrayidx196, align 4, !tbaa !5
  %add197 = add nsw i32 %176, %178
  %conv198 = sext i32 %add197 to i64
  store i64 %conv198, i64* %tmp13, align 8, !tbaa !8
  %179 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i32, i32* %179, i64 32
  %180 = load i32, i32* %arrayidx199, align 4, !tbaa !5
  %181 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i32, i32* %181, i64 8
  %182 = load i32, i32* %arrayidx200, align 4, !tbaa !5
  %add201 = add nsw i32 %180, %182
  %conv202 = sext i32 %add201 to i64
  store i64 %conv202, i64* %tmp4, align 8, !tbaa !8
  %183 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i32, i32* %183, i64 40
  %184 = load i32, i32* %arrayidx203, align 4, !tbaa !5
  %185 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i32, i32* %185, i64 0
  %186 = load i32, i32* %arrayidx204, align 4, !tbaa !5
  %add205 = add nsw i32 %184, %186
  %conv206 = sext i32 %add205 to i64
  store i64 %conv206, i64* %tmp5, align 8, !tbaa !8
  %187 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i32, i32* %187, i64 48
  %188 = load i32, i32* %arrayidx207, align 4, !tbaa !5
  %189 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i32, i32* %189, i64 56
  %190 = load i32, i32* %arrayidx208, align 4, !tbaa !5
  %add209 = add nsw i32 %188, %190
  %conv210 = sext i32 %add209 to i64
  store i64 %conv210, i64* %tmp6, align 8, !tbaa !8
  %191 = load i64, i64* %tmp0, align 8, !tbaa !8
  %192 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add211 = add nsw i64 %191, %192
  store i64 %add211, i64* %tmp10, align 8, !tbaa !8
  %193 = load i64, i64* %tmp0, align 8, !tbaa !8
  %194 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub212 = sub nsw i64 %193, %194
  store i64 %sub212, i64* %tmp14, align 8, !tbaa !8
  %195 = load i64, i64* %tmp1, align 8, !tbaa !8
  %196 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add213 = add nsw i64 %195, %196
  store i64 %add213, i64* %tmp11, align 8, !tbaa !8
  %197 = load i64, i64* %tmp1, align 8, !tbaa !8
  %198 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub214 = sub nsw i64 %197, %198
  store i64 %sub214, i64* %tmp15, align 8, !tbaa !8
  %199 = load i64, i64* %tmp2, align 8, !tbaa !8
  %200 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add215 = add nsw i64 %199, %200
  store i64 %add215, i64* %tmp12, align 8, !tbaa !8
  %201 = load i64, i64* %tmp2, align 8, !tbaa !8
  %202 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub216 = sub nsw i64 %201, %202
  store i64 %sub216, i64* %tmp16, align 8, !tbaa !8
  %203 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i32, i32* %203, i64 0
  %204 = load i32, i32* %arrayidx217, align 4, !tbaa !5
  %205 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds i32, i32* %205, i64 40
  %206 = load i32, i32* %arrayidx218, align 4, !tbaa !5
  %sub219 = sub nsw i32 %204, %206
  %conv220 = sext i32 %sub219 to i64
  store i64 %conv220, i64* %tmp0, align 8, !tbaa !8
  %207 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i32, i32* %207, i64 8
  %208 = load i32, i32* %arrayidx221, align 4, !tbaa !5
  %209 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i32, i32* %209, i64 32
  %210 = load i32, i32* %arrayidx222, align 4, !tbaa !5
  %sub223 = sub nsw i32 %208, %210
  %conv224 = sext i32 %sub223 to i64
  store i64 %conv224, i64* %tmp1, align 8, !tbaa !8
  %211 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i32, i32* %211, i64 16
  %212 = load i32, i32* %arrayidx225, align 4, !tbaa !5
  %213 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i32, i32* %213, i64 24
  %214 = load i32, i32* %arrayidx226, align 4, !tbaa !5
  %sub227 = sub nsw i32 %212, %214
  %conv228 = sext i32 %sub227 to i64
  store i64 %conv228, i64* %tmp2, align 8, !tbaa !8
  %215 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i32, i32* %215, i64 24
  %216 = load i32, i32* %arrayidx229, align 4, !tbaa !5
  %217 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds i32, i32* %217, i64 16
  %218 = load i32, i32* %arrayidx230, align 4, !tbaa !5
  %sub231 = sub nsw i32 %216, %218
  %conv232 = sext i32 %sub231 to i64
  store i64 %conv232, i64* %tmp3, align 8, !tbaa !8
  %219 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds i32, i32* %219, i64 32
  %220 = load i32, i32* %arrayidx233, align 4, !tbaa !5
  %221 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i32, i32* %221, i64 8
  %222 = load i32, i32* %arrayidx234, align 4, !tbaa !5
  %sub235 = sub nsw i32 %220, %222
  %conv236 = sext i32 %sub235 to i64
  store i64 %conv236, i64* %tmp4, align 8, !tbaa !8
  %223 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds i32, i32* %223, i64 40
  %224 = load i32, i32* %arrayidx237, align 4, !tbaa !5
  %225 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds i32, i32* %225, i64 0
  %226 = load i32, i32* %arrayidx238, align 4, !tbaa !5
  %sub239 = sub nsw i32 %224, %226
  %conv240 = sext i32 %sub239 to i64
  store i64 %conv240, i64* %tmp5, align 8, !tbaa !8
  %227 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx241 = getelementptr inbounds i32, i32* %227, i64 48
  %228 = load i32, i32* %arrayidx241, align 4, !tbaa !5
  %229 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i32, i32* %229, i64 56
  %230 = load i32, i32* %arrayidx242, align 4, !tbaa !5
  %sub243 = sub nsw i32 %228, %230
  %conv244 = sext i32 %sub243 to i64
  store i64 %conv244, i64* %tmp6, align 8, !tbaa !8
  %231 = load i64, i64* %tmp10, align 8, !tbaa !8
  %232 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add245 = add nsw i64 %231, %232
  %233 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add246 = add nsw i64 %add245, %233
  %234 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add247 = add nsw i64 %add246, %234
  %mul248 = mul nsw i64 %add247, 5350
  %add249 = add nsw i64 %mul248, 8192
  %shr250 = ashr i64 %add249, 14
  %conv251 = trunc i64 %shr250 to i32
  %235 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i32, i32* %235, i64 0
  store i32 %conv251, i32* %arrayidx252, align 4, !tbaa !5
  %236 = load i64, i64* %tmp13, align 8, !tbaa !8
  %237 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add253 = add nsw i64 %237, %236
  store i64 %add253, i64* %tmp13, align 8, !tbaa !8
  %238 = load i64, i64* %tmp10, align 8, !tbaa !8
  %239 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub254 = sub nsw i64 %238, %239
  %mul255 = mul nsw i64 %sub254, 6817
  %240 = load i64, i64* %tmp11, align 8, !tbaa !8
  %241 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub256 = sub nsw i64 %240, %241
  %mul257 = mul nsw i64 %sub256, 1684
  %add258 = add nsw i64 %mul255, %mul257
  %242 = load i64, i64* %tmp12, align 8, !tbaa !8
  %243 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub259 = sub nsw i64 %242, %243
  %mul260 = mul nsw i64 %sub259, 4717
  %sub261 = sub nsw i64 %add258, %mul260
  %add262 = add nsw i64 %sub261, 8192
  %shr263 = ashr i64 %add262, 14
  %conv264 = trunc i64 %shr263 to i32
  %244 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds i32, i32* %244, i64 32
  store i32 %conv264, i32* %arrayidx265, align 4, !tbaa !5
  %245 = load i64, i64* %tmp14, align 8, !tbaa !8
  %246 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add266 = add nsw i64 %245, %246
  %mul267 = mul nsw i64 %add266, 5915
  store i64 %mul267, i64* %tmp10, align 8, !tbaa !8
  %247 = load i64, i64* %tmp10, align 8, !tbaa !8
  %248 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul268 = mul nsw i64 %248, 1461
  %add269 = add nsw i64 %247, %mul268
  %249 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul270 = mul nsw i64 %249, 3283
  %add271 = add nsw i64 %add269, %mul270
  %add272 = add nsw i64 %add271, 8192
  %shr273 = ashr i64 %add272, 14
  %conv274 = trunc i64 %shr273 to i32
  %250 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds i32, i32* %250, i64 16
  store i32 %conv274, i32* %arrayidx275, align 4, !tbaa !5
  %251 = load i64, i64* %tmp10, align 8, !tbaa !8
  %252 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul276 = mul nsw i64 %252, 9198
  %sub277 = sub nsw i64 %251, %mul276
  %253 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul278 = mul nsw i64 %253, 7376
  %sub279 = sub nsw i64 %sub277, %mul278
  %add280 = add nsw i64 %sub279, 8192
  %shr281 = ashr i64 %add280, 14
  %conv282 = trunc i64 %shr281 to i32
  %254 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx283 = getelementptr inbounds i32, i32* %254, i64 48
  store i32 %conv282, i32* %arrayidx283, align 4, !tbaa !5
  %255 = load i64, i64* %tmp1, align 8, !tbaa !8
  %256 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add284 = add nsw i64 %255, %256
  store i64 %add284, i64* %tmp10, align 8, !tbaa !8
  %257 = load i64, i64* %tmp5, align 8, !tbaa !8
  %258 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub285 = sub nsw i64 %257, %258
  store i64 %sub285, i64* %tmp11, align 8, !tbaa !8
  %259 = load i64, i64* %tmp0, align 8, !tbaa !8
  %260 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub286 = sub nsw i64 %259, %260
  %261 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add287 = add nsw i64 %sub286, %261
  %262 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub288 = sub nsw i64 %add287, %262
  %263 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub289 = sub nsw i64 %sub288, %263
  %mul290 = mul nsw i64 %sub289, 5350
  %add291 = add nsw i64 %mul290, 8192
  %shr292 = ashr i64 %add291, 14
  %conv293 = trunc i64 %shr292 to i32
  %264 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i32, i32* %264, i64 56
  store i32 %conv293, i32* %arrayidx294, align 4, !tbaa !5
  %265 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul295 = mul nsw i64 %265, 5350
  store i64 %mul295, i64* %tmp3, align 8, !tbaa !8
  %266 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul296 = mul nsw i64 %266, -847
  store i64 %mul296, i64* %tmp10, align 8, !tbaa !8
  %267 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul297 = mul nsw i64 %267, 7518
  store i64 %mul297, i64* %tmp11, align 8, !tbaa !8
  %268 = load i64, i64* %tmp11, align 8, !tbaa !8
  %269 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub298 = sub nsw i64 %268, %269
  %270 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add299 = add nsw i64 %270, %sub298
  store i64 %add299, i64* %tmp10, align 8, !tbaa !8
  %271 = load i64, i64* %tmp0, align 8, !tbaa !8
  %272 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add300 = add nsw i64 %271, %272
  %mul301 = mul nsw i64 %add300, 6406
  %273 = load i64, i64* %tmp4, align 8, !tbaa !8
  %274 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add302 = add nsw i64 %273, %274
  %mul303 = mul nsw i64 %add302, 4025
  %add304 = add nsw i64 %mul301, %mul303
  store i64 %add304, i64* %tmp11, align 8, !tbaa !8
  %275 = load i64, i64* %tmp10, align 8, !tbaa !8
  %276 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add305 = add nsw i64 %275, %276
  %277 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul306 = mul nsw i64 %277, 12700
  %sub307 = sub nsw i64 %add305, %mul306
  %278 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul308 = mul nsw i64 %278, 5992
  %add309 = add nsw i64 %sub307, %mul308
  %add310 = add nsw i64 %add309, 8192
  %shr311 = ashr i64 %add310, 14
  %conv312 = trunc i64 %shr311 to i32
  %279 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx313 = getelementptr inbounds i32, i32* %279, i64 40
  store i32 %conv312, i32* %arrayidx313, align 4, !tbaa !5
  %280 = load i64, i64* %tmp0, align 8, !tbaa !8
  %281 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add314 = add nsw i64 %280, %281
  %mul315 = mul nsw i64 %add314, 7141
  %282 = load i64, i64* %tmp5, align 8, !tbaa !8
  %283 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub316 = sub nsw i64 %282, %283
  %mul317 = mul nsw i64 %sub316, 2499
  %add318 = add nsw i64 %mul315, %mul317
  store i64 %add318, i64* %tmp12, align 8, !tbaa !8
  %284 = load i64, i64* %tmp10, align 8, !tbaa !8
  %285 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add319 = add nsw i64 %284, %285
  %286 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul320 = mul nsw i64 %286, 2269
  %sub321 = sub nsw i64 %add319, %mul320
  %287 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul322 = mul nsw i64 %287, 16423
  %sub323 = sub nsw i64 %sub321, %mul322
  %add324 = add nsw i64 %sub323, 8192
  %shr325 = ashr i64 %add324, 14
  %conv326 = trunc i64 %shr325 to i32
  %288 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx327 = getelementptr inbounds i32, i32* %288, i64 24
  store i32 %conv326, i32* %arrayidx327, align 4, !tbaa !5
  %289 = load i64, i64* %tmp11, align 8, !tbaa !8
  %290 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add328 = add nsw i64 %289, %290
  %291 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add329 = add nsw i64 %add328, %291
  %292 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul330 = mul nsw i64 %292, 6029
  %sub331 = sub nsw i64 %add329, %mul330
  %293 = load i64, i64* %tmp6, align 8, !tbaa !8
  %mul332 = mul nsw i64 %293, 679
  %sub333 = sub nsw i64 %sub331, %mul332
  %add334 = add nsw i64 %sub333, 8192
  %shr335 = ashr i64 %add334, 14
  %conv336 = trunc i64 %shr335 to i32
  %294 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx337 = getelementptr inbounds i32, i32* %294, i64 8
  store i32 %conv336, i32* %arrayidx337, align 4, !tbaa !5
  %295 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %295, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %296 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr338 = getelementptr inbounds i32, i32* %296, i32 1
  store i32* %incdec.ptr338, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %297 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %297, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.180

for.end.339:                                      ; preds = %for.cond.180
  %298 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  %302 = bitcast [48 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 192, i8* %302) #1
  %303 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  %305 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #1
  %308 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #1
  %309 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %310 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #1
  %313 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %314 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %315 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_15x15(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %workspace = alloca [56 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast [56 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 224, i8* %18) #1
  %19 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %23, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.192, %entry
  %24 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %24 to i64
  %25 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 %idxprom
  %26 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %27 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %29 to i32
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %30, i64 14
  %31 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %31 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %33 to i32
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %34, i64 13
  %35 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %35 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %36 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %36, i64 2
  %37 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %37 to i32
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %38, i64 12
  %39 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %39 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %40 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %41 to i32
  %42 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %42, i64 11
  %43 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %43 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp3, align 8, !tbaa !8
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %44, i64 4
  %45 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %45 to i32
  %46 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %46, i64 10
  %47 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %47 to i32
  %add27 = add nsw i32 %conv24, %conv26
  %conv28 = sext i32 %add27 to i64
  store i64 %conv28, i64* %tmp4, align 8, !tbaa !8
  %48 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %48, i64 5
  %49 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = zext i8 %49 to i32
  %50 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %50, i64 9
  %51 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %51 to i32
  %add33 = add nsw i32 %conv30, %conv32
  %conv34 = sext i32 %add33 to i64
  store i64 %conv34, i64* %tmp5, align 8, !tbaa !8
  %52 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %52, i64 6
  %53 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = zext i8 %53 to i32
  %54 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %54, i64 8
  %55 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = zext i8 %55 to i32
  %add39 = add nsw i32 %conv36, %conv38
  %conv40 = sext i32 %add39 to i64
  store i64 %conv40, i64* %tmp6, align 8, !tbaa !8
  %56 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %56, i64 7
  %57 = load i8, i8* %arrayidx41, align 1, !tbaa !7
  %conv42 = zext i8 %57 to i32
  %conv43 = sext i32 %conv42 to i64
  store i64 %conv43, i64* %tmp7, align 8, !tbaa !8
  %58 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %conv45 = zext i8 %59 to i32
  %60 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %60, i64 14
  %61 = load i8, i8* %arrayidx46, align 1, !tbaa !7
  %conv47 = zext i8 %61 to i32
  %sub = sub nsw i32 %conv45, %conv47
  %conv48 = sext i32 %sub to i64
  store i64 %conv48, i64* %tmp10, align 8, !tbaa !8
  %62 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = zext i8 %63 to i32
  %64 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %64, i64 13
  %65 = load i8, i8* %arrayidx51, align 1, !tbaa !7
  %conv52 = zext i8 %65 to i32
  %sub53 = sub nsw i32 %conv50, %conv52
  %conv54 = sext i32 %sub53 to i64
  store i64 %conv54, i64* %tmp11, align 8, !tbaa !8
  %66 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %66, i64 2
  %67 = load i8, i8* %arrayidx55, align 1, !tbaa !7
  %conv56 = zext i8 %67 to i32
  %68 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %68, i64 12
  %69 = load i8, i8* %arrayidx57, align 1, !tbaa !7
  %conv58 = zext i8 %69 to i32
  %sub59 = sub nsw i32 %conv56, %conv58
  %conv60 = sext i32 %sub59 to i64
  store i64 %conv60, i64* %tmp12, align 8, !tbaa !8
  %70 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %70, i64 3
  %71 = load i8, i8* %arrayidx61, align 1, !tbaa !7
  %conv62 = zext i8 %71 to i32
  %72 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %72, i64 11
  %73 = load i8, i8* %arrayidx63, align 1, !tbaa !7
  %conv64 = zext i8 %73 to i32
  %sub65 = sub nsw i32 %conv62, %conv64
  %conv66 = sext i32 %sub65 to i64
  store i64 %conv66, i64* %tmp13, align 8, !tbaa !8
  %74 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %74, i64 4
  %75 = load i8, i8* %arrayidx67, align 1, !tbaa !7
  %conv68 = zext i8 %75 to i32
  %76 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %76, i64 10
  %77 = load i8, i8* %arrayidx69, align 1, !tbaa !7
  %conv70 = zext i8 %77 to i32
  %sub71 = sub nsw i32 %conv68, %conv70
  %conv72 = sext i32 %sub71 to i64
  store i64 %conv72, i64* %tmp14, align 8, !tbaa !8
  %78 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %78, i64 5
  %79 = load i8, i8* %arrayidx73, align 1, !tbaa !7
  %conv74 = zext i8 %79 to i32
  %80 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %80, i64 9
  %81 = load i8, i8* %arrayidx75, align 1, !tbaa !7
  %conv76 = zext i8 %81 to i32
  %sub77 = sub nsw i32 %conv74, %conv76
  %conv78 = sext i32 %sub77 to i64
  store i64 %conv78, i64* %tmp15, align 8, !tbaa !8
  %82 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %82, i64 6
  %83 = load i8, i8* %arrayidx79, align 1, !tbaa !7
  %conv80 = zext i8 %83 to i32
  %84 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %84, i64 8
  %85 = load i8, i8* %arrayidx81, align 1, !tbaa !7
  %conv82 = zext i8 %85 to i32
  %sub83 = sub nsw i32 %conv80, %conv82
  %conv84 = sext i32 %sub83 to i64
  store i64 %conv84, i64* %tmp16, align 8, !tbaa !8
  %86 = load i64, i64* %tmp0, align 8, !tbaa !8
  %87 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add85 = add nsw i64 %86, %87
  %88 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add86 = add nsw i64 %add85, %88
  store i64 %add86, i64* %z1, align 8, !tbaa !8
  %89 = load i64, i64* %tmp1, align 8, !tbaa !8
  %90 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add87 = add nsw i64 %89, %90
  %91 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add88 = add nsw i64 %add87, %91
  store i64 %add88, i64* %z2, align 8, !tbaa !8
  %92 = load i64, i64* %tmp2, align 8, !tbaa !8
  %93 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add89 = add nsw i64 %92, %93
  store i64 %add89, i64* %z3, align 8, !tbaa !8
  %94 = load i64, i64* %z1, align 8, !tbaa !8
  %95 = load i64, i64* %z2, align 8, !tbaa !8
  %add90 = add nsw i64 %94, %95
  %96 = load i64, i64* %z3, align 8, !tbaa !8
  %add91 = add nsw i64 %add90, %96
  %sub92 = sub nsw i64 %add91, 1920
  %conv93 = trunc i64 %sub92 to i32
  %97 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %conv93, i32* %arrayidx94, align 4, !tbaa !5
  %98 = load i64, i64* %z3, align 8, !tbaa !8
  %99 = load i64, i64* %z3, align 8, !tbaa !8
  %add95 = add nsw i64 %99, %98
  store i64 %add95, i64* %z3, align 8, !tbaa !8
  %100 = load i64, i64* %z1, align 8, !tbaa !8
  %101 = load i64, i64* %z3, align 8, !tbaa !8
  %sub96 = sub nsw i64 %100, %101
  %mul = mul nsw i64 %sub96, 9373
  %102 = load i64, i64* %z2, align 8, !tbaa !8
  %103 = load i64, i64* %z3, align 8, !tbaa !8
  %sub97 = sub nsw i64 %102, %103
  %mul98 = mul nsw i64 %sub97, 3580
  %sub99 = sub nsw i64 %mul, %mul98
  %add100 = add nsw i64 %sub99, 4096
  %shr = ashr i64 %add100, 13
  %conv101 = trunc i64 %shr to i32
  %104 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i32, i32* %104, i64 6
  store i32 %conv101, i32* %arrayidx102, align 4, !tbaa !5
  %105 = load i64, i64* %tmp1, align 8, !tbaa !8
  %106 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add103 = add nsw i64 %105, %106
  %shr104 = ashr i64 %add103, 1
  %107 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub105 = sub nsw i64 %shr104, %107
  %108 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub106 = sub nsw i64 %sub105, %108
  %109 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add107 = add nsw i64 %109, %sub106
  store i64 %add107, i64* %tmp2, align 8, !tbaa !8
  %110 = load i64, i64* %tmp3, align 8, !tbaa !8
  %111 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub108 = sub nsw i64 %110, %111
  %mul109 = mul nsw i64 %sub108, 12543
  %112 = load i64, i64* %tmp6, align 8, !tbaa !8
  %113 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub110 = sub nsw i64 %112, %113
  %mul111 = mul nsw i64 %sub110, 18336
  %sub112 = sub nsw i64 %mul109, %mul111
  store i64 %sub112, i64* %z1, align 8, !tbaa !8
  %114 = load i64, i64* %tmp5, align 8, !tbaa !8
  %115 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub113 = sub nsw i64 %114, %115
  %mul114 = mul nsw i64 %sub113, 6541
  %116 = load i64, i64* %tmp0, align 8, !tbaa !8
  %117 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub115 = sub nsw i64 %116, %117
  %mul116 = mul nsw i64 %sub115, 748
  %sub117 = sub nsw i64 %mul114, %mul116
  store i64 %sub117, i64* %z2, align 8, !tbaa !8
  %118 = load i64, i64* %tmp0, align 8, !tbaa !8
  %119 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub118 = sub nsw i64 %118, %119
  %mul119 = mul nsw i64 %sub118, 11332
  %120 = load i64, i64* %tmp6, align 8, !tbaa !8
  %121 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub120 = sub nsw i64 %120, %121
  %mul121 = mul nsw i64 %sub120, 7752
  %add122 = add nsw i64 %mul119, %mul121
  %122 = load i64, i64* %tmp1, align 8, !tbaa !8
  %123 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub123 = sub nsw i64 %122, %123
  %mul124 = mul nsw i64 %sub123, 6476
  %add125 = add nsw i64 %add122, %mul124
  store i64 %add125, i64* %z3, align 8, !tbaa !8
  %124 = load i64, i64* %z1, align 8, !tbaa !8
  %125 = load i64, i64* %z3, align 8, !tbaa !8
  %add126 = add nsw i64 %124, %125
  %add127 = add nsw i64 %add126, 4096
  %shr128 = ashr i64 %add127, 13
  %conv129 = trunc i64 %shr128 to i32
  %126 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 %conv129, i32* %arrayidx130, align 4, !tbaa !5
  %127 = load i64, i64* %z2, align 8, !tbaa !8
  %128 = load i64, i64* %z3, align 8, !tbaa !8
  %add131 = add nsw i64 %127, %128
  %add132 = add nsw i64 %add131, 4096
  %shr133 = ashr i64 %add132, 13
  %conv134 = trunc i64 %shr133 to i32
  %129 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i32, i32* %129, i64 4
  store i32 %conv134, i32* %arrayidx135, align 4, !tbaa !5
  %130 = load i64, i64* %tmp10, align 8, !tbaa !8
  %131 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub136 = sub nsw i64 %130, %131
  %132 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub137 = sub nsw i64 %sub136, %132
  %133 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add138 = add nsw i64 %sub137, %133
  %134 = load i64, i64* %tmp16, align 8, !tbaa !8
  %add139 = add nsw i64 %add138, %134
  %mul140 = mul nsw i64 %add139, 10033
  store i64 %mul140, i64* %tmp2, align 8, !tbaa !8
  %135 = load i64, i64* %tmp10, align 8, !tbaa !8
  %136 = load i64, i64* %tmp14, align 8, !tbaa !8
  %sub141 = sub nsw i64 %135, %136
  %137 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub142 = sub nsw i64 %sub141, %137
  %mul143 = mul nsw i64 %sub142, 11018
  %138 = load i64, i64* %tmp11, align 8, !tbaa !8
  %139 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub144 = sub nsw i64 %138, %139
  %140 = load i64, i64* %tmp16, align 8, !tbaa !8
  %sub145 = sub nsw i64 %sub144, %140
  %mul146 = mul nsw i64 %sub145, 6810
  %add147 = add nsw i64 %mul143, %mul146
  store i64 %add147, i64* %tmp1, align 8, !tbaa !8
  %141 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul148 = mul nsw i64 %141, 10033
  store i64 %mul148, i64* %tmp12, align 8, !tbaa !8
  %142 = load i64, i64* %tmp10, align 8, !tbaa !8
  %143 = load i64, i64* %tmp16, align 8, !tbaa !8
  %sub149 = sub nsw i64 %142, %143
  %mul150 = mul nsw i64 %sub149, 11522
  %144 = load i64, i64* %tmp11, align 8, !tbaa !8
  %145 = load i64, i64* %tmp14, align 8, !tbaa !8
  %add151 = add nsw i64 %144, %145
  %mul152 = mul nsw i64 %add151, 11018
  %add153 = add nsw i64 %mul150, %mul152
  %146 = load i64, i64* %tmp13, align 8, !tbaa !8
  %147 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add154 = add nsw i64 %146, %147
  %mul155 = mul nsw i64 %add154, 4712
  %add156 = add nsw i64 %add153, %mul155
  store i64 %add156, i64* %tmp4, align 8, !tbaa !8
  %148 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul157 = mul nsw i64 %148, 3897
  %149 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul158 = mul nsw i64 %149, 4209
  %sub159 = sub nsw i64 %mul157, %mul158
  %150 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul160 = mul nsw i64 %150, 13930
  %add161 = add nsw i64 %sub159, %mul160
  %151 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add162 = add nsw i64 %add161, %151
  %152 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add163 = add nsw i64 %add162, %152
  store i64 %add163, i64* %tmp0, align 8, !tbaa !8
  %153 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul164 = mul nsw i64 %153, -2912
  %154 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul165 = mul nsw i64 %154, 17828
  %sub166 = sub nsw i64 %mul164, %mul165
  %155 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul167 = mul nsw i64 %155, 7121
  %sub168 = sub nsw i64 %sub166, %mul167
  %156 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add169 = add nsw i64 %sub168, %156
  %157 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub170 = sub nsw i64 %add169, %157
  store i64 %sub170, i64* %tmp3, align 8, !tbaa !8
  %158 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add171 = add nsw i64 %158, 4096
  %shr172 = ashr i64 %add171, 13
  %conv173 = trunc i64 %shr172 to i32
  %159 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 %conv173, i32* %arrayidx174, align 4, !tbaa !5
  %160 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add175 = add nsw i64 %160, 4096
  %shr176 = ashr i64 %add175, 13
  %conv177 = trunc i64 %shr176 to i32
  %161 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i32, i32* %161, i64 3
  store i32 %conv177, i32* %arrayidx178, align 4, !tbaa !5
  %162 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add179 = add nsw i64 %162, 4096
  %shr180 = ashr i64 %add179, 13
  %conv181 = trunc i64 %shr180 to i32
  %163 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i32, i32* %163, i64 5
  store i32 %conv181, i32* %arrayidx182, align 4, !tbaa !5
  %164 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add183 = add nsw i64 %164, 4096
  %shr184 = ashr i64 %add183, 13
  %conv185 = trunc i64 %shr184 to i32
  %165 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i32, i32* %165, i64 7
  store i32 %conv185, i32* %arrayidx186, align 4, !tbaa !5
  %166 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %166, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %167 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %167, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %168 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp188 = icmp eq i32 %168, 15
  br i1 %cmp188, label %if.then.190, label %if.end

if.then.190:                                      ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %169 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr191 = getelementptr inbounds i32, i32* %169, i64 8
  store i32* %add.ptr191, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.192

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [56 x i32], [56 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.192

if.end.192:                                       ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.190
  %170 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %170, i32** %dataptr, align 8, !tbaa !1
  %arraydecay193 = getelementptr inbounds [56 x i32], [56 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay193, i32** %wsptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc, %for.end
  %171 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp195 = icmp sge i32 %171, 0
  br i1 %cmp195, label %for.body, label %for.end.362

for.body:                                         ; preds = %for.cond.194
  %172 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i32, i32* %172, i64 0
  %173 = load i32, i32* %arrayidx197, align 4, !tbaa !5
  %174 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds i32, i32* %174, i64 48
  %175 = load i32, i32* %arrayidx198, align 4, !tbaa !5
  %add199 = add nsw i32 %173, %175
  %conv200 = sext i32 %add199 to i64
  store i64 %conv200, i64* %tmp0, align 8, !tbaa !8
  %176 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i32, i32* %176, i64 8
  %177 = load i32, i32* %arrayidx201, align 4, !tbaa !5
  %178 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i32, i32* %178, i64 40
  %179 = load i32, i32* %arrayidx202, align 4, !tbaa !5
  %add203 = add nsw i32 %177, %179
  %conv204 = sext i32 %add203 to i64
  store i64 %conv204, i64* %tmp1, align 8, !tbaa !8
  %180 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i32, i32* %180, i64 16
  %181 = load i32, i32* %arrayidx205, align 4, !tbaa !5
  %182 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds i32, i32* %182, i64 32
  %183 = load i32, i32* %arrayidx206, align 4, !tbaa !5
  %add207 = add nsw i32 %181, %183
  %conv208 = sext i32 %add207 to i64
  store i64 %conv208, i64* %tmp2, align 8, !tbaa !8
  %184 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds i32, i32* %184, i64 24
  %185 = load i32, i32* %arrayidx209, align 4, !tbaa !5
  %186 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i32, i32* %186, i64 24
  %187 = load i32, i32* %arrayidx210, align 4, !tbaa !5
  %add211 = add nsw i32 %185, %187
  %conv212 = sext i32 %add211 to i64
  store i64 %conv212, i64* %tmp3, align 8, !tbaa !8
  %188 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i32, i32* %188, i64 32
  %189 = load i32, i32* %arrayidx213, align 4, !tbaa !5
  %190 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i32, i32* %190, i64 16
  %191 = load i32, i32* %arrayidx214, align 4, !tbaa !5
  %add215 = add nsw i32 %189, %191
  %conv216 = sext i32 %add215 to i64
  store i64 %conv216, i64* %tmp4, align 8, !tbaa !8
  %192 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i32, i32* %192, i64 40
  %193 = load i32, i32* %arrayidx217, align 4, !tbaa !5
  %194 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds i32, i32* %194, i64 8
  %195 = load i32, i32* %arrayidx218, align 4, !tbaa !5
  %add219 = add nsw i32 %193, %195
  %conv220 = sext i32 %add219 to i64
  store i64 %conv220, i64* %tmp5, align 8, !tbaa !8
  %196 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i32, i32* %196, i64 48
  %197 = load i32, i32* %arrayidx221, align 4, !tbaa !5
  %198 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i32, i32* %198, i64 0
  %199 = load i32, i32* %arrayidx222, align 4, !tbaa !5
  %add223 = add nsw i32 %197, %199
  %conv224 = sext i32 %add223 to i64
  store i64 %conv224, i64* %tmp6, align 8, !tbaa !8
  %200 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i32, i32* %200, i64 56
  %201 = load i32, i32* %arrayidx225, align 4, !tbaa !5
  %conv226 = sext i32 %201 to i64
  store i64 %conv226, i64* %tmp7, align 8, !tbaa !8
  %202 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds i32, i32* %202, i64 0
  %203 = load i32, i32* %arrayidx227, align 4, !tbaa !5
  %204 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i32, i32* %204, i64 48
  %205 = load i32, i32* %arrayidx228, align 4, !tbaa !5
  %sub229 = sub nsw i32 %203, %205
  %conv230 = sext i32 %sub229 to i64
  store i64 %conv230, i64* %tmp10, align 8, !tbaa !8
  %206 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i32, i32* %206, i64 8
  %207 = load i32, i32* %arrayidx231, align 4, !tbaa !5
  %208 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i32, i32* %208, i64 40
  %209 = load i32, i32* %arrayidx232, align 4, !tbaa !5
  %sub233 = sub nsw i32 %207, %209
  %conv234 = sext i32 %sub233 to i64
  store i64 %conv234, i64* %tmp11, align 8, !tbaa !8
  %210 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i32, i32* %210, i64 16
  %211 = load i32, i32* %arrayidx235, align 4, !tbaa !5
  %212 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds i32, i32* %212, i64 32
  %213 = load i32, i32* %arrayidx236, align 4, !tbaa !5
  %sub237 = sub nsw i32 %211, %213
  %conv238 = sext i32 %sub237 to i64
  store i64 %conv238, i64* %tmp12, align 8, !tbaa !8
  %214 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i32, i32* %214, i64 24
  %215 = load i32, i32* %arrayidx239, align 4, !tbaa !5
  %216 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i32, i32* %216, i64 24
  %217 = load i32, i32* %arrayidx240, align 4, !tbaa !5
  %sub241 = sub nsw i32 %215, %217
  %conv242 = sext i32 %sub241 to i64
  store i64 %conv242, i64* %tmp13, align 8, !tbaa !8
  %218 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i32, i32* %218, i64 32
  %219 = load i32, i32* %arrayidx243, align 4, !tbaa !5
  %220 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx244 = getelementptr inbounds i32, i32* %220, i64 16
  %221 = load i32, i32* %arrayidx244, align 4, !tbaa !5
  %sub245 = sub nsw i32 %219, %221
  %conv246 = sext i32 %sub245 to i64
  store i64 %conv246, i64* %tmp14, align 8, !tbaa !8
  %222 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds i32, i32* %222, i64 40
  %223 = load i32, i32* %arrayidx247, align 4, !tbaa !5
  %224 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i32, i32* %224, i64 8
  %225 = load i32, i32* %arrayidx248, align 4, !tbaa !5
  %sub249 = sub nsw i32 %223, %225
  %conv250 = sext i32 %sub249 to i64
  store i64 %conv250, i64* %tmp15, align 8, !tbaa !8
  %226 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i32, i32* %226, i64 48
  %227 = load i32, i32* %arrayidx251, align 4, !tbaa !5
  %228 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i32, i32* %228, i64 0
  %229 = load i32, i32* %arrayidx252, align 4, !tbaa !5
  %sub253 = sub nsw i32 %227, %229
  %conv254 = sext i32 %sub253 to i64
  store i64 %conv254, i64* %tmp16, align 8, !tbaa !8
  %230 = load i64, i64* %tmp0, align 8, !tbaa !8
  %231 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add255 = add nsw i64 %230, %231
  %232 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add256 = add nsw i64 %add255, %232
  store i64 %add256, i64* %z1, align 8, !tbaa !8
  %233 = load i64, i64* %tmp1, align 8, !tbaa !8
  %234 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add257 = add nsw i64 %233, %234
  %235 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add258 = add nsw i64 %add257, %235
  store i64 %add258, i64* %z2, align 8, !tbaa !8
  %236 = load i64, i64* %tmp2, align 8, !tbaa !8
  %237 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add259 = add nsw i64 %236, %237
  store i64 %add259, i64* %z3, align 8, !tbaa !8
  %238 = load i64, i64* %z1, align 8, !tbaa !8
  %239 = load i64, i64* %z2, align 8, !tbaa !8
  %add260 = add nsw i64 %238, %239
  %240 = load i64, i64* %z3, align 8, !tbaa !8
  %add261 = add nsw i64 %add260, %240
  %mul262 = mul nsw i64 %add261, 9321
  %add263 = add nsw i64 %mul262, 16384
  %shr264 = ashr i64 %add263, 15
  %conv265 = trunc i64 %shr264 to i32
  %241 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 %conv265, i32* %arrayidx266, align 4, !tbaa !5
  %242 = load i64, i64* %z3, align 8, !tbaa !8
  %243 = load i64, i64* %z3, align 8, !tbaa !8
  %add267 = add nsw i64 %243, %242
  store i64 %add267, i64* %z3, align 8, !tbaa !8
  %244 = load i64, i64* %z1, align 8, !tbaa !8
  %245 = load i64, i64* %z3, align 8, !tbaa !8
  %sub268 = sub nsw i64 %244, %245
  %mul269 = mul nsw i64 %sub268, 10664
  %246 = load i64, i64* %z2, align 8, !tbaa !8
  %247 = load i64, i64* %z3, align 8, !tbaa !8
  %sub270 = sub nsw i64 %246, %247
  %mul271 = mul nsw i64 %sub270, 4073
  %sub272 = sub nsw i64 %mul269, %mul271
  %add273 = add nsw i64 %sub272, 16384
  %shr274 = ashr i64 %add273, 15
  %conv275 = trunc i64 %shr274 to i32
  %248 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds i32, i32* %248, i64 48
  store i32 %conv275, i32* %arrayidx276, align 4, !tbaa !5
  %249 = load i64, i64* %tmp1, align 8, !tbaa !8
  %250 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add277 = add nsw i64 %249, %250
  %shr278 = ashr i64 %add277, 1
  %251 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub279 = sub nsw i64 %shr278, %251
  %252 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub280 = sub nsw i64 %sub279, %252
  %253 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add281 = add nsw i64 %253, %sub280
  store i64 %add281, i64* %tmp2, align 8, !tbaa !8
  %254 = load i64, i64* %tmp3, align 8, !tbaa !8
  %255 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub282 = sub nsw i64 %254, %255
  %mul283 = mul nsw i64 %sub282, 14271
  %256 = load i64, i64* %tmp6, align 8, !tbaa !8
  %257 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub284 = sub nsw i64 %256, %257
  %mul285 = mul nsw i64 %sub284, 20862
  %sub286 = sub nsw i64 %mul283, %mul285
  store i64 %sub286, i64* %z1, align 8, !tbaa !8
  %258 = load i64, i64* %tmp5, align 8, !tbaa !8
  %259 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub287 = sub nsw i64 %258, %259
  %mul288 = mul nsw i64 %sub287, 7442
  %260 = load i64, i64* %tmp0, align 8, !tbaa !8
  %261 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub289 = sub nsw i64 %260, %261
  %mul290 = mul nsw i64 %sub289, 852
  %sub291 = sub nsw i64 %mul288, %mul290
  store i64 %sub291, i64* %z2, align 8, !tbaa !8
  %262 = load i64, i64* %tmp0, align 8, !tbaa !8
  %263 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub292 = sub nsw i64 %262, %263
  %mul293 = mul nsw i64 %sub292, 12893
  %264 = load i64, i64* %tmp6, align 8, !tbaa !8
  %265 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub294 = sub nsw i64 %264, %265
  %mul295 = mul nsw i64 %sub294, 8820
  %add296 = add nsw i64 %mul293, %mul295
  %266 = load i64, i64* %tmp1, align 8, !tbaa !8
  %267 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub297 = sub nsw i64 %266, %267
  %mul298 = mul nsw i64 %sub297, 7369
  %add299 = add nsw i64 %add296, %mul298
  store i64 %add299, i64* %z3, align 8, !tbaa !8
  %268 = load i64, i64* %z1, align 8, !tbaa !8
  %269 = load i64, i64* %z3, align 8, !tbaa !8
  %add300 = add nsw i64 %268, %269
  %add301 = add nsw i64 %add300, 16384
  %shr302 = ashr i64 %add301, 15
  %conv303 = trunc i64 %shr302 to i32
  %270 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx304 = getelementptr inbounds i32, i32* %270, i64 16
  store i32 %conv303, i32* %arrayidx304, align 4, !tbaa !5
  %271 = load i64, i64* %z2, align 8, !tbaa !8
  %272 = load i64, i64* %z3, align 8, !tbaa !8
  %add305 = add nsw i64 %271, %272
  %add306 = add nsw i64 %add305, 16384
  %shr307 = ashr i64 %add306, 15
  %conv308 = trunc i64 %shr307 to i32
  %273 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx309 = getelementptr inbounds i32, i32* %273, i64 32
  store i32 %conv308, i32* %arrayidx309, align 4, !tbaa !5
  %274 = load i64, i64* %tmp10, align 8, !tbaa !8
  %275 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub310 = sub nsw i64 %274, %275
  %276 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub311 = sub nsw i64 %sub310, %276
  %277 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add312 = add nsw i64 %sub311, %277
  %278 = load i64, i64* %tmp16, align 8, !tbaa !8
  %add313 = add nsw i64 %add312, %278
  %mul314 = mul nsw i64 %add313, 11415
  store i64 %mul314, i64* %tmp2, align 8, !tbaa !8
  %279 = load i64, i64* %tmp10, align 8, !tbaa !8
  %280 = load i64, i64* %tmp14, align 8, !tbaa !8
  %sub315 = sub nsw i64 %279, %280
  %281 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub316 = sub nsw i64 %sub315, %281
  %mul317 = mul nsw i64 %sub316, 12536
  %282 = load i64, i64* %tmp11, align 8, !tbaa !8
  %283 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub318 = sub nsw i64 %282, %283
  %284 = load i64, i64* %tmp16, align 8, !tbaa !8
  %sub319 = sub nsw i64 %sub318, %284
  %mul320 = mul nsw i64 %sub319, 7748
  %add321 = add nsw i64 %mul317, %mul320
  store i64 %add321, i64* %tmp1, align 8, !tbaa !8
  %285 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul322 = mul nsw i64 %285, 11415
  store i64 %mul322, i64* %tmp12, align 8, !tbaa !8
  %286 = load i64, i64* %tmp10, align 8, !tbaa !8
  %287 = load i64, i64* %tmp16, align 8, !tbaa !8
  %sub323 = sub nsw i64 %286, %287
  %mul324 = mul nsw i64 %sub323, 13109
  %288 = load i64, i64* %tmp11, align 8, !tbaa !8
  %289 = load i64, i64* %tmp14, align 8, !tbaa !8
  %add325 = add nsw i64 %288, %289
  %mul326 = mul nsw i64 %add325, 12536
  %add327 = add nsw i64 %mul324, %mul326
  %290 = load i64, i64* %tmp13, align 8, !tbaa !8
  %291 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add328 = add nsw i64 %290, %291
  %mul329 = mul nsw i64 %add328, 5361
  %add330 = add nsw i64 %add327, %mul329
  store i64 %add330, i64* %tmp4, align 8, !tbaa !8
  %292 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul331 = mul nsw i64 %292, 4434
  %293 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul332 = mul nsw i64 %293, 4788
  %sub333 = sub nsw i64 %mul331, %mul332
  %294 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul334 = mul nsw i64 %294, 15850
  %add335 = add nsw i64 %sub333, %mul334
  %295 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add336 = add nsw i64 %add335, %295
  %296 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add337 = add nsw i64 %add336, %296
  store i64 %add337, i64* %tmp0, align 8, !tbaa !8
  %297 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul338 = mul nsw i64 %297, -3314
  %298 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul339 = mul nsw i64 %298, 20284
  %sub340 = sub nsw i64 %mul338, %mul339
  %299 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul341 = mul nsw i64 %299, 8102
  %sub342 = sub nsw i64 %sub340, %mul341
  %300 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add343 = add nsw i64 %sub342, %300
  %301 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub344 = sub nsw i64 %add343, %301
  store i64 %sub344, i64* %tmp3, align 8, !tbaa !8
  %302 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add345 = add nsw i64 %302, 16384
  %shr346 = ashr i64 %add345, 15
  %conv347 = trunc i64 %shr346 to i32
  %303 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx348 = getelementptr inbounds i32, i32* %303, i64 8
  store i32 %conv347, i32* %arrayidx348, align 4, !tbaa !5
  %304 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add349 = add nsw i64 %304, 16384
  %shr350 = ashr i64 %add349, 15
  %conv351 = trunc i64 %shr350 to i32
  %305 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx352 = getelementptr inbounds i32, i32* %305, i64 24
  store i32 %conv351, i32* %arrayidx352, align 4, !tbaa !5
  %306 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add353 = add nsw i64 %306, 16384
  %shr354 = ashr i64 %add353, 15
  %conv355 = trunc i64 %shr354 to i32
  %307 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx356 = getelementptr inbounds i32, i32* %307, i64 40
  store i32 %conv355, i32* %arrayidx356, align 4, !tbaa !5
  %308 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add357 = add nsw i64 %308, 16384
  %shr358 = ashr i64 %add357, 15
  %conv359 = trunc i64 %shr358 to i32
  %309 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx360 = getelementptr inbounds i32, i32* %309, i64 56
  store i32 %conv359, i32* %arrayidx360, align 4, !tbaa !5
  %310 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %310, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %311 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr361 = getelementptr inbounds i32, i32* %311, i32 1
  store i32* %incdec.ptr361, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %312 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %312, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.194

for.end.362:                                      ; preds = %for.cond.194
  %313 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %315 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  %317 = bitcast [56 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 224, i8* %317) #1
  %318 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #1
  %319 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #1
  %320 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %320) #1
  %321 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #1
  %322 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %322) #1
  %323 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  %325 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #1
  %326 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #1
  %327 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  %328 = bitcast i64* %tmp7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #1
  %329 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #1
  %330 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #1
  %331 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %331) #1
  %332 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #1
  %333 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #1
  %334 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #1
  %335 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_16x16(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %tmp17 = alloca i64, align 8
  %workspace = alloca [64 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %tmp17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 256, i8* %16) #1
  %17 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %21, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.211, %entry
  %22 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %22 to i64
  %23 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  %24 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %25 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %27 to i32
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %28, i64 15
  %29 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %29 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %31 to i32
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %32, i64 14
  %33 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %33 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %35 to i32
  %36 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %36, i64 13
  %37 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %37 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %38, i64 3
  %39 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %39 to i32
  %40 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %40, i64 12
  %41 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %41 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp3, align 8, !tbaa !8
  %42 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %42, i64 4
  %43 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %43 to i32
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %44, i64 11
  %45 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %45 to i32
  %add27 = add nsw i32 %conv24, %conv26
  %conv28 = sext i32 %add27 to i64
  store i64 %conv28, i64* %tmp4, align 8, !tbaa !8
  %46 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %46, i64 5
  %47 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = zext i8 %47 to i32
  %48 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %48, i64 10
  %49 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %49 to i32
  %add33 = add nsw i32 %conv30, %conv32
  %conv34 = sext i32 %add33 to i64
  store i64 %conv34, i64* %tmp5, align 8, !tbaa !8
  %50 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %50, i64 6
  %51 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = zext i8 %51 to i32
  %52 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %52, i64 9
  %53 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = zext i8 %53 to i32
  %add39 = add nsw i32 %conv36, %conv38
  %conv40 = sext i32 %add39 to i64
  store i64 %conv40, i64* %tmp6, align 8, !tbaa !8
  %54 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %54, i64 7
  %55 = load i8, i8* %arrayidx41, align 1, !tbaa !7
  %conv42 = zext i8 %55 to i32
  %56 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %56, i64 8
  %57 = load i8, i8* %arrayidx43, align 1, !tbaa !7
  %conv44 = zext i8 %57 to i32
  %add45 = add nsw i32 %conv42, %conv44
  %conv46 = sext i32 %add45 to i64
  store i64 %conv46, i64* %tmp7, align 8, !tbaa !8
  %58 = load i64, i64* %tmp0, align 8, !tbaa !8
  %59 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add47 = add nsw i64 %58, %59
  store i64 %add47, i64* %tmp10, align 8, !tbaa !8
  %60 = load i64, i64* %tmp0, align 8, !tbaa !8
  %61 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub = sub nsw i64 %60, %61
  store i64 %sub, i64* %tmp14, align 8, !tbaa !8
  %62 = load i64, i64* %tmp1, align 8, !tbaa !8
  %63 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add48 = add nsw i64 %62, %63
  store i64 %add48, i64* %tmp11, align 8, !tbaa !8
  %64 = load i64, i64* %tmp1, align 8, !tbaa !8
  %65 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub49 = sub nsw i64 %64, %65
  store i64 %sub49, i64* %tmp15, align 8, !tbaa !8
  %66 = load i64, i64* %tmp2, align 8, !tbaa !8
  %67 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add50 = add nsw i64 %66, %67
  store i64 %add50, i64* %tmp12, align 8, !tbaa !8
  %68 = load i64, i64* %tmp2, align 8, !tbaa !8
  %69 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub51 = sub nsw i64 %68, %69
  store i64 %sub51, i64* %tmp16, align 8, !tbaa !8
  %70 = load i64, i64* %tmp3, align 8, !tbaa !8
  %71 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add52 = add nsw i64 %70, %71
  store i64 %add52, i64* %tmp13, align 8, !tbaa !8
  %72 = load i64, i64* %tmp3, align 8, !tbaa !8
  %73 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub53 = sub nsw i64 %72, %73
  store i64 %sub53, i64* %tmp17, align 8, !tbaa !8
  %74 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx54, align 1, !tbaa !7
  %conv55 = zext i8 %75 to i32
  %76 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %76, i64 15
  %77 = load i8, i8* %arrayidx56, align 1, !tbaa !7
  %conv57 = zext i8 %77 to i32
  %sub58 = sub nsw i32 %conv55, %conv57
  %conv59 = sext i32 %sub58 to i64
  store i64 %conv59, i64* %tmp0, align 8, !tbaa !8
  %78 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %78, i64 1
  %79 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %conv61 = zext i8 %79 to i32
  %80 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %80, i64 14
  %81 = load i8, i8* %arrayidx62, align 1, !tbaa !7
  %conv63 = zext i8 %81 to i32
  %sub64 = sub nsw i32 %conv61, %conv63
  %conv65 = sext i32 %sub64 to i64
  store i64 %conv65, i64* %tmp1, align 8, !tbaa !8
  %82 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %82, i64 2
  %83 = load i8, i8* %arrayidx66, align 1, !tbaa !7
  %conv67 = zext i8 %83 to i32
  %84 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %84, i64 13
  %85 = load i8, i8* %arrayidx68, align 1, !tbaa !7
  %conv69 = zext i8 %85 to i32
  %sub70 = sub nsw i32 %conv67, %conv69
  %conv71 = sext i32 %sub70 to i64
  store i64 %conv71, i64* %tmp2, align 8, !tbaa !8
  %86 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %86, i64 3
  %87 = load i8, i8* %arrayidx72, align 1, !tbaa !7
  %conv73 = zext i8 %87 to i32
  %88 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %88, i64 12
  %89 = load i8, i8* %arrayidx74, align 1, !tbaa !7
  %conv75 = zext i8 %89 to i32
  %sub76 = sub nsw i32 %conv73, %conv75
  %conv77 = sext i32 %sub76 to i64
  store i64 %conv77, i64* %tmp3, align 8, !tbaa !8
  %90 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %90, i64 4
  %91 = load i8, i8* %arrayidx78, align 1, !tbaa !7
  %conv79 = zext i8 %91 to i32
  %92 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %92, i64 11
  %93 = load i8, i8* %arrayidx80, align 1, !tbaa !7
  %conv81 = zext i8 %93 to i32
  %sub82 = sub nsw i32 %conv79, %conv81
  %conv83 = sext i32 %sub82 to i64
  store i64 %conv83, i64* %tmp4, align 8, !tbaa !8
  %94 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %94, i64 5
  %95 = load i8, i8* %arrayidx84, align 1, !tbaa !7
  %conv85 = zext i8 %95 to i32
  %96 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %96, i64 10
  %97 = load i8, i8* %arrayidx86, align 1, !tbaa !7
  %conv87 = zext i8 %97 to i32
  %sub88 = sub nsw i32 %conv85, %conv87
  %conv89 = sext i32 %sub88 to i64
  store i64 %conv89, i64* %tmp5, align 8, !tbaa !8
  %98 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %98, i64 6
  %99 = load i8, i8* %arrayidx90, align 1, !tbaa !7
  %conv91 = zext i8 %99 to i32
  %100 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %100, i64 9
  %101 = load i8, i8* %arrayidx92, align 1, !tbaa !7
  %conv93 = zext i8 %101 to i32
  %sub94 = sub nsw i32 %conv91, %conv93
  %conv95 = sext i32 %sub94 to i64
  store i64 %conv95, i64* %tmp6, align 8, !tbaa !8
  %102 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %102, i64 7
  %103 = load i8, i8* %arrayidx96, align 1, !tbaa !7
  %conv97 = zext i8 %103 to i32
  %104 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %104, i64 8
  %105 = load i8, i8* %arrayidx98, align 1, !tbaa !7
  %conv99 = zext i8 %105 to i32
  %sub100 = sub nsw i32 %conv97, %conv99
  %conv101 = sext i32 %sub100 to i64
  store i64 %conv101, i64* %tmp7, align 8, !tbaa !8
  %106 = load i64, i64* %tmp10, align 8, !tbaa !8
  %107 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add102 = add nsw i64 %106, %107
  %108 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add103 = add nsw i64 %add102, %108
  %109 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add104 = add nsw i64 %add103, %109
  %sub105 = sub nsw i64 %add104, 2048
  %shl = shl i64 %sub105, 2
  %conv106 = trunc i64 %shl to i32
  %110 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %conv106, i32* %arrayidx107, align 4, !tbaa !5
  %111 = load i64, i64* %tmp10, align 8, !tbaa !8
  %112 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub108 = sub nsw i64 %111, %112
  %mul = mul nsw i64 %sub108, 10703
  %113 = load i64, i64* %tmp11, align 8, !tbaa !8
  %114 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub109 = sub nsw i64 %113, %114
  %mul110 = mul nsw i64 %sub109, 4433
  %add111 = add nsw i64 %mul, %mul110
  %add112 = add nsw i64 %add111, 1024
  %shr = ashr i64 %add112, 11
  %conv113 = trunc i64 %shr to i32
  %115 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i32, i32* %115, i64 4
  store i32 %conv113, i32* %arrayidx114, align 4, !tbaa !5
  %116 = load i64, i64* %tmp17, align 8, !tbaa !8
  %117 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub115 = sub nsw i64 %116, %117
  %mul116 = mul nsw i64 %sub115, 2260
  %118 = load i64, i64* %tmp14, align 8, !tbaa !8
  %119 = load i64, i64* %tmp16, align 8, !tbaa !8
  %sub117 = sub nsw i64 %118, %119
  %mul118 = mul nsw i64 %sub117, 11363
  %add119 = add nsw i64 %mul116, %mul118
  store i64 %add119, i64* %tmp10, align 8, !tbaa !8
  %120 = load i64, i64* %tmp10, align 8, !tbaa !8
  %121 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul120 = mul nsw i64 %121, 11893
  %add121 = add nsw i64 %120, %mul120
  %122 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul122 = mul nsw i64 %122, 17799
  %add123 = add nsw i64 %add121, %mul122
  %add124 = add nsw i64 %add123, 1024
  %shr125 = ashr i64 %add124, 11
  %conv126 = trunc i64 %shr125 to i32
  %123 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i32, i32* %123, i64 2
  store i32 %conv126, i32* %arrayidx127, align 4, !tbaa !5
  %124 = load i64, i64* %tmp10, align 8, !tbaa !8
  %125 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul128 = mul nsw i64 %125, 1730
  %sub129 = sub nsw i64 %124, %mul128
  %126 = load i64, i64* %tmp17, align 8, !tbaa !8
  %mul130 = mul nsw i64 %126, 8697
  %sub131 = sub nsw i64 %sub129, %mul130
  %add132 = add nsw i64 %sub131, 1024
  %shr133 = ashr i64 %add132, 11
  %conv134 = trunc i64 %shr133 to i32
  %127 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i32, i32* %127, i64 6
  store i32 %conv134, i32* %arrayidx135, align 4, !tbaa !5
  %128 = load i64, i64* %tmp0, align 8, !tbaa !8
  %129 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add136 = add nsw i64 %128, %129
  %mul137 = mul nsw i64 %add136, 11086
  %130 = load i64, i64* %tmp6, align 8, !tbaa !8
  %131 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub138 = sub nsw i64 %130, %131
  %mul139 = mul nsw i64 %sub138, 3363
  %add140 = add nsw i64 %mul137, %mul139
  store i64 %add140, i64* %tmp11, align 8, !tbaa !8
  %132 = load i64, i64* %tmp0, align 8, !tbaa !8
  %133 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add141 = add nsw i64 %132, %133
  %mul142 = mul nsw i64 %add141, 10217
  %134 = load i64, i64* %tmp5, align 8, !tbaa !8
  %135 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add143 = add nsw i64 %134, %135
  %mul144 = mul nsw i64 %add143, 5461
  %add145 = add nsw i64 %mul142, %mul144
  store i64 %add145, i64* %tmp12, align 8, !tbaa !8
  %136 = load i64, i64* %tmp0, align 8, !tbaa !8
  %137 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add146 = add nsw i64 %136, %137
  %mul147 = mul nsw i64 %add146, 8956
  %138 = load i64, i64* %tmp4, align 8, !tbaa !8
  %139 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub148 = sub nsw i64 %138, %139
  %mul149 = mul nsw i64 %sub148, 7350
  %add150 = add nsw i64 %mul147, %mul149
  store i64 %add150, i64* %tmp13, align 8, !tbaa !8
  %140 = load i64, i64* %tmp1, align 8, !tbaa !8
  %141 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add151 = add nsw i64 %140, %141
  %mul152 = mul nsw i64 %add151, 1136
  %142 = load i64, i64* %tmp6, align 8, !tbaa !8
  %143 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub153 = sub nsw i64 %142, %143
  %mul154 = mul nsw i64 %sub153, 11529
  %add155 = add nsw i64 %mul152, %mul154
  store i64 %add155, i64* %tmp14, align 8, !tbaa !8
  %144 = load i64, i64* %tmp1, align 8, !tbaa !8
  %145 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add156 = add nsw i64 %144, %145
  %mul157 = mul nsw i64 %add156, -5461
  %146 = load i64, i64* %tmp4, align 8, !tbaa !8
  %147 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add158 = add nsw i64 %146, %147
  %mul159 = mul nsw i64 %add158, -10217
  %add160 = add nsw i64 %mul157, %mul159
  store i64 %add160, i64* %tmp15, align 8, !tbaa !8
  %148 = load i64, i64* %tmp2, align 8, !tbaa !8
  %149 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add161 = add nsw i64 %148, %149
  %mul162 = mul nsw i64 %add161, -11086
  %150 = load i64, i64* %tmp5, align 8, !tbaa !8
  %151 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub163 = sub nsw i64 %150, %151
  %mul164 = mul nsw i64 %sub163, 3363
  %add165 = add nsw i64 %mul162, %mul164
  store i64 %add165, i64* %tmp16, align 8, !tbaa !8
  %152 = load i64, i64* %tmp11, align 8, !tbaa !8
  %153 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add166 = add nsw i64 %152, %153
  %154 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add167 = add nsw i64 %add166, %154
  %155 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul168 = mul nsw i64 %155, 18730
  %sub169 = sub nsw i64 %add167, %mul168
  %156 = load i64, i64* %tmp7, align 8, !tbaa !8
  %mul170 = mul nsw i64 %156, 6387
  %add171 = add nsw i64 %sub169, %mul170
  store i64 %add171, i64* %tmp10, align 8, !tbaa !8
  %157 = load i64, i64* %tmp14, align 8, !tbaa !8
  %158 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add172 = add nsw i64 %157, %158
  %159 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul173 = mul nsw i64 %159, 589
  %add174 = add nsw i64 %add172, %mul173
  %160 = load i64, i64* %tmp6, align 8, !tbaa !8
  %mul175 = mul nsw i64 %160, 13631
  %sub176 = sub nsw i64 %add174, %mul175
  %161 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add177 = add nsw i64 %161, %sub176
  store i64 %add177, i64* %tmp11, align 8, !tbaa !8
  %162 = load i64, i64* %tmp14, align 8, !tbaa !8
  %163 = load i64, i64* %tmp16, align 8, !tbaa !8
  %add178 = add nsw i64 %162, %163
  %164 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul179 = mul nsw i64 %164, 9222
  %sub180 = sub nsw i64 %add178, %mul179
  %165 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul181 = mul nsw i64 %165, 10055
  %add182 = add nsw i64 %sub180, %mul181
  %166 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add183 = add nsw i64 %166, %add182
  store i64 %add183, i64* %tmp12, align 8, !tbaa !8
  %167 = load i64, i64* %tmp15, align 8, !tbaa !8
  %168 = load i64, i64* %tmp16, align 8, !tbaa !8
  %add184 = add nsw i64 %167, %168
  %169 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul185 = mul nsw i64 %169, 8728
  %add186 = add nsw i64 %add184, %mul185
  %170 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul187 = mul nsw i64 %170, 17760
  %add188 = add nsw i64 %add186, %mul187
  %171 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add189 = add nsw i64 %171, %add188
  store i64 %add189, i64* %tmp13, align 8, !tbaa !8
  %172 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add190 = add nsw i64 %172, 1024
  %shr191 = ashr i64 %add190, 11
  %conv192 = trunc i64 %shr191 to i32
  %173 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i32, i32* %173, i64 1
  store i32 %conv192, i32* %arrayidx193, align 4, !tbaa !5
  %174 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add194 = add nsw i64 %174, 1024
  %shr195 = ashr i64 %add194, 11
  %conv196 = trunc i64 %shr195 to i32
  %175 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i32, i32* %175, i64 3
  store i32 %conv196, i32* %arrayidx197, align 4, !tbaa !5
  %176 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add198 = add nsw i64 %176, 1024
  %shr199 = ashr i64 %add198, 11
  %conv200 = trunc i64 %shr199 to i32
  %177 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i32, i32* %177, i64 5
  store i32 %conv200, i32* %arrayidx201, align 4, !tbaa !5
  %178 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add202 = add nsw i64 %178, 1024
  %shr203 = ashr i64 %add202, 11
  %conv204 = trunc i64 %shr203 to i32
  %179 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i32, i32* %179, i64 7
  store i32 %conv204, i32* %arrayidx205, align 4, !tbaa !5
  %180 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %180, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %181 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %181, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %182 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp207 = icmp eq i32 %182, 16
  br i1 %cmp207, label %if.then.209, label %if.end

if.then.209:                                      ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %183 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr210 = getelementptr inbounds i32, i32* %183, i64 8
  store i32* %add.ptr210, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.211

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.211

if.end.211:                                       ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.209
  %184 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %184, i32** %dataptr, align 8, !tbaa !1
  %arraydecay212 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay212, i32** %wsptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc, %for.end
  %185 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp214 = icmp sge i32 %185, 0
  br i1 %cmp214, label %for.body, label %for.end.396

for.body:                                         ; preds = %for.cond.213
  %186 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds i32, i32* %186, i64 0
  %187 = load i32, i32* %arrayidx216, align 4, !tbaa !5
  %188 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i32, i32* %188, i64 56
  %189 = load i32, i32* %arrayidx217, align 4, !tbaa !5
  %add218 = add nsw i32 %187, %189
  %conv219 = sext i32 %add218 to i64
  store i64 %conv219, i64* %tmp0, align 8, !tbaa !8
  %190 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i32, i32* %190, i64 8
  %191 = load i32, i32* %arrayidx220, align 4, !tbaa !5
  %192 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i32, i32* %192, i64 48
  %193 = load i32, i32* %arrayidx221, align 4, !tbaa !5
  %add222 = add nsw i32 %191, %193
  %conv223 = sext i32 %add222 to i64
  store i64 %conv223, i64* %tmp1, align 8, !tbaa !8
  %194 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i32, i32* %194, i64 16
  %195 = load i32, i32* %arrayidx224, align 4, !tbaa !5
  %196 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i32, i32* %196, i64 40
  %197 = load i32, i32* %arrayidx225, align 4, !tbaa !5
  %add226 = add nsw i32 %195, %197
  %conv227 = sext i32 %add226 to i64
  store i64 %conv227, i64* %tmp2, align 8, !tbaa !8
  %198 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i32, i32* %198, i64 24
  %199 = load i32, i32* %arrayidx228, align 4, !tbaa !5
  %200 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i32, i32* %200, i64 32
  %201 = load i32, i32* %arrayidx229, align 4, !tbaa !5
  %add230 = add nsw i32 %199, %201
  %conv231 = sext i32 %add230 to i64
  store i64 %conv231, i64* %tmp3, align 8, !tbaa !8
  %202 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i32, i32* %202, i64 32
  %203 = load i32, i32* %arrayidx232, align 4, !tbaa !5
  %204 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds i32, i32* %204, i64 24
  %205 = load i32, i32* %arrayidx233, align 4, !tbaa !5
  %add234 = add nsw i32 %203, %205
  %conv235 = sext i32 %add234 to i64
  store i64 %conv235, i64* %tmp4, align 8, !tbaa !8
  %206 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds i32, i32* %206, i64 40
  %207 = load i32, i32* %arrayidx236, align 4, !tbaa !5
  %208 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds i32, i32* %208, i64 16
  %209 = load i32, i32* %arrayidx237, align 4, !tbaa !5
  %add238 = add nsw i32 %207, %209
  %conv239 = sext i32 %add238 to i64
  store i64 %conv239, i64* %tmp5, align 8, !tbaa !8
  %210 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i32, i32* %210, i64 48
  %211 = load i32, i32* %arrayidx240, align 4, !tbaa !5
  %212 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx241 = getelementptr inbounds i32, i32* %212, i64 8
  %213 = load i32, i32* %arrayidx241, align 4, !tbaa !5
  %add242 = add nsw i32 %211, %213
  %conv243 = sext i32 %add242 to i64
  store i64 %conv243, i64* %tmp6, align 8, !tbaa !8
  %214 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx244 = getelementptr inbounds i32, i32* %214, i64 56
  %215 = load i32, i32* %arrayidx244, align 4, !tbaa !5
  %216 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i32, i32* %216, i64 0
  %217 = load i32, i32* %arrayidx245, align 4, !tbaa !5
  %add246 = add nsw i32 %215, %217
  %conv247 = sext i32 %add246 to i64
  store i64 %conv247, i64* %tmp7, align 8, !tbaa !8
  %218 = load i64, i64* %tmp0, align 8, !tbaa !8
  %219 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add248 = add nsw i64 %218, %219
  store i64 %add248, i64* %tmp10, align 8, !tbaa !8
  %220 = load i64, i64* %tmp0, align 8, !tbaa !8
  %221 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub249 = sub nsw i64 %220, %221
  store i64 %sub249, i64* %tmp14, align 8, !tbaa !8
  %222 = load i64, i64* %tmp1, align 8, !tbaa !8
  %223 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add250 = add nsw i64 %222, %223
  store i64 %add250, i64* %tmp11, align 8, !tbaa !8
  %224 = load i64, i64* %tmp1, align 8, !tbaa !8
  %225 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub251 = sub nsw i64 %224, %225
  store i64 %sub251, i64* %tmp15, align 8, !tbaa !8
  %226 = load i64, i64* %tmp2, align 8, !tbaa !8
  %227 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add252 = add nsw i64 %226, %227
  store i64 %add252, i64* %tmp12, align 8, !tbaa !8
  %228 = load i64, i64* %tmp2, align 8, !tbaa !8
  %229 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub253 = sub nsw i64 %228, %229
  store i64 %sub253, i64* %tmp16, align 8, !tbaa !8
  %230 = load i64, i64* %tmp3, align 8, !tbaa !8
  %231 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add254 = add nsw i64 %230, %231
  store i64 %add254, i64* %tmp13, align 8, !tbaa !8
  %232 = load i64, i64* %tmp3, align 8, !tbaa !8
  %233 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub255 = sub nsw i64 %232, %233
  store i64 %sub255, i64* %tmp17, align 8, !tbaa !8
  %234 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx256 = getelementptr inbounds i32, i32* %234, i64 0
  %235 = load i32, i32* %arrayidx256, align 4, !tbaa !5
  %236 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx257 = getelementptr inbounds i32, i32* %236, i64 56
  %237 = load i32, i32* %arrayidx257, align 4, !tbaa !5
  %sub258 = sub nsw i32 %235, %237
  %conv259 = sext i32 %sub258 to i64
  store i64 %conv259, i64* %tmp0, align 8, !tbaa !8
  %238 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx260 = getelementptr inbounds i32, i32* %238, i64 8
  %239 = load i32, i32* %arrayidx260, align 4, !tbaa !5
  %240 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds i32, i32* %240, i64 48
  %241 = load i32, i32* %arrayidx261, align 4, !tbaa !5
  %sub262 = sub nsw i32 %239, %241
  %conv263 = sext i32 %sub262 to i64
  store i64 %conv263, i64* %tmp1, align 8, !tbaa !8
  %242 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds i32, i32* %242, i64 16
  %243 = load i32, i32* %arrayidx264, align 4, !tbaa !5
  %244 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds i32, i32* %244, i64 40
  %245 = load i32, i32* %arrayidx265, align 4, !tbaa !5
  %sub266 = sub nsw i32 %243, %245
  %conv267 = sext i32 %sub266 to i64
  store i64 %conv267, i64* %tmp2, align 8, !tbaa !8
  %246 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds i32, i32* %246, i64 24
  %247 = load i32, i32* %arrayidx268, align 4, !tbaa !5
  %248 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i32, i32* %248, i64 32
  %249 = load i32, i32* %arrayidx269, align 4, !tbaa !5
  %sub270 = sub nsw i32 %247, %249
  %conv271 = sext i32 %sub270 to i64
  store i64 %conv271, i64* %tmp3, align 8, !tbaa !8
  %250 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds i32, i32* %250, i64 32
  %251 = load i32, i32* %arrayidx272, align 4, !tbaa !5
  %252 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i32, i32* %252, i64 24
  %253 = load i32, i32* %arrayidx273, align 4, !tbaa !5
  %sub274 = sub nsw i32 %251, %253
  %conv275 = sext i32 %sub274 to i64
  store i64 %conv275, i64* %tmp4, align 8, !tbaa !8
  %254 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds i32, i32* %254, i64 40
  %255 = load i32, i32* %arrayidx276, align 4, !tbaa !5
  %256 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx277 = getelementptr inbounds i32, i32* %256, i64 16
  %257 = load i32, i32* %arrayidx277, align 4, !tbaa !5
  %sub278 = sub nsw i32 %255, %257
  %conv279 = sext i32 %sub278 to i64
  store i64 %conv279, i64* %tmp5, align 8, !tbaa !8
  %258 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx280 = getelementptr inbounds i32, i32* %258, i64 48
  %259 = load i32, i32* %arrayidx280, align 4, !tbaa !5
  %260 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i32, i32* %260, i64 8
  %261 = load i32, i32* %arrayidx281, align 4, !tbaa !5
  %sub282 = sub nsw i32 %259, %261
  %conv283 = sext i32 %sub282 to i64
  store i64 %conv283, i64* %tmp6, align 8, !tbaa !8
  %262 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i32, i32* %262, i64 56
  %263 = load i32, i32* %arrayidx284, align 4, !tbaa !5
  %264 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx285 = getelementptr inbounds i32, i32* %264, i64 0
  %265 = load i32, i32* %arrayidx285, align 4, !tbaa !5
  %sub286 = sub nsw i32 %263, %265
  %conv287 = sext i32 %sub286 to i64
  store i64 %conv287, i64* %tmp7, align 8, !tbaa !8
  %266 = load i64, i64* %tmp10, align 8, !tbaa !8
  %267 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add288 = add nsw i64 %266, %267
  %268 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add289 = add nsw i64 %add288, %268
  %269 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add290 = add nsw i64 %add289, %269
  %add291 = add nsw i64 %add290, 8
  %shr292 = ashr i64 %add291, 4
  %conv293 = trunc i64 %shr292 to i32
  %270 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i32, i32* %270, i64 0
  store i32 %conv293, i32* %arrayidx294, align 4, !tbaa !5
  %271 = load i64, i64* %tmp10, align 8, !tbaa !8
  %272 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub295 = sub nsw i64 %271, %272
  %mul296 = mul nsw i64 %sub295, 10703
  %273 = load i64, i64* %tmp11, align 8, !tbaa !8
  %274 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub297 = sub nsw i64 %273, %274
  %mul298 = mul nsw i64 %sub297, 4433
  %add299 = add nsw i64 %mul296, %mul298
  %add300 = add nsw i64 %add299, 65536
  %shr301 = ashr i64 %add300, 17
  %conv302 = trunc i64 %shr301 to i32
  %275 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds i32, i32* %275, i64 32
  store i32 %conv302, i32* %arrayidx303, align 4, !tbaa !5
  %276 = load i64, i64* %tmp17, align 8, !tbaa !8
  %277 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub304 = sub nsw i64 %276, %277
  %mul305 = mul nsw i64 %sub304, 2260
  %278 = load i64, i64* %tmp14, align 8, !tbaa !8
  %279 = load i64, i64* %tmp16, align 8, !tbaa !8
  %sub306 = sub nsw i64 %278, %279
  %mul307 = mul nsw i64 %sub306, 11363
  %add308 = add nsw i64 %mul305, %mul307
  store i64 %add308, i64* %tmp10, align 8, !tbaa !8
  %280 = load i64, i64* %tmp10, align 8, !tbaa !8
  %281 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul309 = mul nsw i64 %281, 11893
  %add310 = add nsw i64 %280, %mul309
  %282 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul311 = mul nsw i64 %282, 17799
  %add312 = add nsw i64 %add310, %mul311
  %add313 = add nsw i64 %add312, 65536
  %shr314 = ashr i64 %add313, 17
  %conv315 = trunc i64 %shr314 to i32
  %283 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx316 = getelementptr inbounds i32, i32* %283, i64 16
  store i32 %conv315, i32* %arrayidx316, align 4, !tbaa !5
  %284 = load i64, i64* %tmp10, align 8, !tbaa !8
  %285 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul317 = mul nsw i64 %285, 1730
  %sub318 = sub nsw i64 %284, %mul317
  %286 = load i64, i64* %tmp17, align 8, !tbaa !8
  %mul319 = mul nsw i64 %286, 8697
  %sub320 = sub nsw i64 %sub318, %mul319
  %add321 = add nsw i64 %sub320, 65536
  %shr322 = ashr i64 %add321, 17
  %conv323 = trunc i64 %shr322 to i32
  %287 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx324 = getelementptr inbounds i32, i32* %287, i64 48
  store i32 %conv323, i32* %arrayidx324, align 4, !tbaa !5
  %288 = load i64, i64* %tmp0, align 8, !tbaa !8
  %289 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add325 = add nsw i64 %288, %289
  %mul326 = mul nsw i64 %add325, 11086
  %290 = load i64, i64* %tmp6, align 8, !tbaa !8
  %291 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub327 = sub nsw i64 %290, %291
  %mul328 = mul nsw i64 %sub327, 3363
  %add329 = add nsw i64 %mul326, %mul328
  store i64 %add329, i64* %tmp11, align 8, !tbaa !8
  %292 = load i64, i64* %tmp0, align 8, !tbaa !8
  %293 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add330 = add nsw i64 %292, %293
  %mul331 = mul nsw i64 %add330, 10217
  %294 = load i64, i64* %tmp5, align 8, !tbaa !8
  %295 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add332 = add nsw i64 %294, %295
  %mul333 = mul nsw i64 %add332, 5461
  %add334 = add nsw i64 %mul331, %mul333
  store i64 %add334, i64* %tmp12, align 8, !tbaa !8
  %296 = load i64, i64* %tmp0, align 8, !tbaa !8
  %297 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add335 = add nsw i64 %296, %297
  %mul336 = mul nsw i64 %add335, 8956
  %298 = load i64, i64* %tmp4, align 8, !tbaa !8
  %299 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub337 = sub nsw i64 %298, %299
  %mul338 = mul nsw i64 %sub337, 7350
  %add339 = add nsw i64 %mul336, %mul338
  store i64 %add339, i64* %tmp13, align 8, !tbaa !8
  %300 = load i64, i64* %tmp1, align 8, !tbaa !8
  %301 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add340 = add nsw i64 %300, %301
  %mul341 = mul nsw i64 %add340, 1136
  %302 = load i64, i64* %tmp6, align 8, !tbaa !8
  %303 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub342 = sub nsw i64 %302, %303
  %mul343 = mul nsw i64 %sub342, 11529
  %add344 = add nsw i64 %mul341, %mul343
  store i64 %add344, i64* %tmp14, align 8, !tbaa !8
  %304 = load i64, i64* %tmp1, align 8, !tbaa !8
  %305 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add345 = add nsw i64 %304, %305
  %mul346 = mul nsw i64 %add345, -5461
  %306 = load i64, i64* %tmp4, align 8, !tbaa !8
  %307 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add347 = add nsw i64 %306, %307
  %mul348 = mul nsw i64 %add347, -10217
  %add349 = add nsw i64 %mul346, %mul348
  store i64 %add349, i64* %tmp15, align 8, !tbaa !8
  %308 = load i64, i64* %tmp2, align 8, !tbaa !8
  %309 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add350 = add nsw i64 %308, %309
  %mul351 = mul nsw i64 %add350, -11086
  %310 = load i64, i64* %tmp5, align 8, !tbaa !8
  %311 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub352 = sub nsw i64 %310, %311
  %mul353 = mul nsw i64 %sub352, 3363
  %add354 = add nsw i64 %mul351, %mul353
  store i64 %add354, i64* %tmp16, align 8, !tbaa !8
  %312 = load i64, i64* %tmp11, align 8, !tbaa !8
  %313 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add355 = add nsw i64 %312, %313
  %314 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add356 = add nsw i64 %add355, %314
  %315 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul357 = mul nsw i64 %315, 18730
  %sub358 = sub nsw i64 %add356, %mul357
  %316 = load i64, i64* %tmp7, align 8, !tbaa !8
  %mul359 = mul nsw i64 %316, 6387
  %add360 = add nsw i64 %sub358, %mul359
  store i64 %add360, i64* %tmp10, align 8, !tbaa !8
  %317 = load i64, i64* %tmp14, align 8, !tbaa !8
  %318 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add361 = add nsw i64 %317, %318
  %319 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul362 = mul nsw i64 %319, 589
  %add363 = add nsw i64 %add361, %mul362
  %320 = load i64, i64* %tmp6, align 8, !tbaa !8
  %mul364 = mul nsw i64 %320, 13631
  %sub365 = sub nsw i64 %add363, %mul364
  %321 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add366 = add nsw i64 %321, %sub365
  store i64 %add366, i64* %tmp11, align 8, !tbaa !8
  %322 = load i64, i64* %tmp14, align 8, !tbaa !8
  %323 = load i64, i64* %tmp16, align 8, !tbaa !8
  %add367 = add nsw i64 %322, %323
  %324 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul368 = mul nsw i64 %324, 9222
  %sub369 = sub nsw i64 %add367, %mul368
  %325 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul370 = mul nsw i64 %325, 10055
  %add371 = add nsw i64 %sub369, %mul370
  %326 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add372 = add nsw i64 %326, %add371
  store i64 %add372, i64* %tmp12, align 8, !tbaa !8
  %327 = load i64, i64* %tmp15, align 8, !tbaa !8
  %328 = load i64, i64* %tmp16, align 8, !tbaa !8
  %add373 = add nsw i64 %327, %328
  %329 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul374 = mul nsw i64 %329, 8728
  %add375 = add nsw i64 %add373, %mul374
  %330 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul376 = mul nsw i64 %330, 17760
  %add377 = add nsw i64 %add375, %mul376
  %331 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add378 = add nsw i64 %331, %add377
  store i64 %add378, i64* %tmp13, align 8, !tbaa !8
  %332 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add379 = add nsw i64 %332, 65536
  %shr380 = ashr i64 %add379, 17
  %conv381 = trunc i64 %shr380 to i32
  %333 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx382 = getelementptr inbounds i32, i32* %333, i64 8
  store i32 %conv381, i32* %arrayidx382, align 4, !tbaa !5
  %334 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add383 = add nsw i64 %334, 65536
  %shr384 = ashr i64 %add383, 17
  %conv385 = trunc i64 %shr384 to i32
  %335 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx386 = getelementptr inbounds i32, i32* %335, i64 24
  store i32 %conv385, i32* %arrayidx386, align 4, !tbaa !5
  %336 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add387 = add nsw i64 %336, 65536
  %shr388 = ashr i64 %add387, 17
  %conv389 = trunc i64 %shr388 to i32
  %337 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx390 = getelementptr inbounds i32, i32* %337, i64 40
  store i32 %conv389, i32* %arrayidx390, align 4, !tbaa !5
  %338 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add391 = add nsw i64 %338, 65536
  %shr392 = ashr i64 %add391, 17
  %conv393 = trunc i64 %shr392 to i32
  %339 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx394 = getelementptr inbounds i32, i32* %339, i64 56
  store i32 %conv393, i32* %arrayidx394, align 4, !tbaa !5
  %340 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %340, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %341 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr395 = getelementptr inbounds i32, i32* %341, i32 1
  store i32* %incdec.ptr395, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %342 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %342, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.213

for.end.396:                                      ; preds = %for.cond.213
  %343 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
  %344 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #1
  %345 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 256, i8* %347) #1
  %348 = bitcast i64* %tmp17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #1
  %350 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %350) #1
  %351 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %351) #1
  %352 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %352) #1
  %353 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %353) #1
  %354 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354) #1
  %355 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %355) #1
  %356 = bitcast i64* %tmp7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %356) #1
  %357 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #1
  %358 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %359 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  %360 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #1
  %361 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %361) #1
  %362 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %362) #1
  %363 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_16x8(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %tmp17 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %tmp17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %20, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %21, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %22 to i64
  %23 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  %24 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %25 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %27 to i32
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %28, i64 15
  %29 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %29 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %31 to i32
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %32, i64 14
  %33 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %33 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %35 to i32
  %36 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %36, i64 13
  %37 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %37 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %38, i64 3
  %39 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %39 to i32
  %40 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %40, i64 12
  %41 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %41 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp3, align 8, !tbaa !8
  %42 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %42, i64 4
  %43 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %43 to i32
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %44, i64 11
  %45 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %45 to i32
  %add27 = add nsw i32 %conv24, %conv26
  %conv28 = sext i32 %add27 to i64
  store i64 %conv28, i64* %tmp4, align 8, !tbaa !8
  %46 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %46, i64 5
  %47 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = zext i8 %47 to i32
  %48 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %48, i64 10
  %49 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %49 to i32
  %add33 = add nsw i32 %conv30, %conv32
  %conv34 = sext i32 %add33 to i64
  store i64 %conv34, i64* %tmp5, align 8, !tbaa !8
  %50 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %50, i64 6
  %51 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = zext i8 %51 to i32
  %52 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %52, i64 9
  %53 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = zext i8 %53 to i32
  %add39 = add nsw i32 %conv36, %conv38
  %conv40 = sext i32 %add39 to i64
  store i64 %conv40, i64* %tmp6, align 8, !tbaa !8
  %54 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %54, i64 7
  %55 = load i8, i8* %arrayidx41, align 1, !tbaa !7
  %conv42 = zext i8 %55 to i32
  %56 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %56, i64 8
  %57 = load i8, i8* %arrayidx43, align 1, !tbaa !7
  %conv44 = zext i8 %57 to i32
  %add45 = add nsw i32 %conv42, %conv44
  %conv46 = sext i32 %add45 to i64
  store i64 %conv46, i64* %tmp7, align 8, !tbaa !8
  %58 = load i64, i64* %tmp0, align 8, !tbaa !8
  %59 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add47 = add nsw i64 %58, %59
  store i64 %add47, i64* %tmp10, align 8, !tbaa !8
  %60 = load i64, i64* %tmp0, align 8, !tbaa !8
  %61 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub = sub nsw i64 %60, %61
  store i64 %sub, i64* %tmp14, align 8, !tbaa !8
  %62 = load i64, i64* %tmp1, align 8, !tbaa !8
  %63 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add48 = add nsw i64 %62, %63
  store i64 %add48, i64* %tmp11, align 8, !tbaa !8
  %64 = load i64, i64* %tmp1, align 8, !tbaa !8
  %65 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub49 = sub nsw i64 %64, %65
  store i64 %sub49, i64* %tmp15, align 8, !tbaa !8
  %66 = load i64, i64* %tmp2, align 8, !tbaa !8
  %67 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add50 = add nsw i64 %66, %67
  store i64 %add50, i64* %tmp12, align 8, !tbaa !8
  %68 = load i64, i64* %tmp2, align 8, !tbaa !8
  %69 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub51 = sub nsw i64 %68, %69
  store i64 %sub51, i64* %tmp16, align 8, !tbaa !8
  %70 = load i64, i64* %tmp3, align 8, !tbaa !8
  %71 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add52 = add nsw i64 %70, %71
  store i64 %add52, i64* %tmp13, align 8, !tbaa !8
  %72 = load i64, i64* %tmp3, align 8, !tbaa !8
  %73 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub53 = sub nsw i64 %72, %73
  store i64 %sub53, i64* %tmp17, align 8, !tbaa !8
  %74 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx54, align 1, !tbaa !7
  %conv55 = zext i8 %75 to i32
  %76 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %76, i64 15
  %77 = load i8, i8* %arrayidx56, align 1, !tbaa !7
  %conv57 = zext i8 %77 to i32
  %sub58 = sub nsw i32 %conv55, %conv57
  %conv59 = sext i32 %sub58 to i64
  store i64 %conv59, i64* %tmp0, align 8, !tbaa !8
  %78 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %78, i64 1
  %79 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %conv61 = zext i8 %79 to i32
  %80 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %80, i64 14
  %81 = load i8, i8* %arrayidx62, align 1, !tbaa !7
  %conv63 = zext i8 %81 to i32
  %sub64 = sub nsw i32 %conv61, %conv63
  %conv65 = sext i32 %sub64 to i64
  store i64 %conv65, i64* %tmp1, align 8, !tbaa !8
  %82 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %82, i64 2
  %83 = load i8, i8* %arrayidx66, align 1, !tbaa !7
  %conv67 = zext i8 %83 to i32
  %84 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %84, i64 13
  %85 = load i8, i8* %arrayidx68, align 1, !tbaa !7
  %conv69 = zext i8 %85 to i32
  %sub70 = sub nsw i32 %conv67, %conv69
  %conv71 = sext i32 %sub70 to i64
  store i64 %conv71, i64* %tmp2, align 8, !tbaa !8
  %86 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %86, i64 3
  %87 = load i8, i8* %arrayidx72, align 1, !tbaa !7
  %conv73 = zext i8 %87 to i32
  %88 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %88, i64 12
  %89 = load i8, i8* %arrayidx74, align 1, !tbaa !7
  %conv75 = zext i8 %89 to i32
  %sub76 = sub nsw i32 %conv73, %conv75
  %conv77 = sext i32 %sub76 to i64
  store i64 %conv77, i64* %tmp3, align 8, !tbaa !8
  %90 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %90, i64 4
  %91 = load i8, i8* %arrayidx78, align 1, !tbaa !7
  %conv79 = zext i8 %91 to i32
  %92 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %92, i64 11
  %93 = load i8, i8* %arrayidx80, align 1, !tbaa !7
  %conv81 = zext i8 %93 to i32
  %sub82 = sub nsw i32 %conv79, %conv81
  %conv83 = sext i32 %sub82 to i64
  store i64 %conv83, i64* %tmp4, align 8, !tbaa !8
  %94 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %94, i64 5
  %95 = load i8, i8* %arrayidx84, align 1, !tbaa !7
  %conv85 = zext i8 %95 to i32
  %96 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %96, i64 10
  %97 = load i8, i8* %arrayidx86, align 1, !tbaa !7
  %conv87 = zext i8 %97 to i32
  %sub88 = sub nsw i32 %conv85, %conv87
  %conv89 = sext i32 %sub88 to i64
  store i64 %conv89, i64* %tmp5, align 8, !tbaa !8
  %98 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %98, i64 6
  %99 = load i8, i8* %arrayidx90, align 1, !tbaa !7
  %conv91 = zext i8 %99 to i32
  %100 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %100, i64 9
  %101 = load i8, i8* %arrayidx92, align 1, !tbaa !7
  %conv93 = zext i8 %101 to i32
  %sub94 = sub nsw i32 %conv91, %conv93
  %conv95 = sext i32 %sub94 to i64
  store i64 %conv95, i64* %tmp6, align 8, !tbaa !8
  %102 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %102, i64 7
  %103 = load i8, i8* %arrayidx96, align 1, !tbaa !7
  %conv97 = zext i8 %103 to i32
  %104 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %104, i64 8
  %105 = load i8, i8* %arrayidx98, align 1, !tbaa !7
  %conv99 = zext i8 %105 to i32
  %sub100 = sub nsw i32 %conv97, %conv99
  %conv101 = sext i32 %sub100 to i64
  store i64 %conv101, i64* %tmp7, align 8, !tbaa !8
  %106 = load i64, i64* %tmp10, align 8, !tbaa !8
  %107 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add102 = add nsw i64 %106, %107
  %108 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add103 = add nsw i64 %add102, %108
  %109 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add104 = add nsw i64 %add103, %109
  %sub105 = sub nsw i64 %add104, 2048
  %shl = shl i64 %sub105, 2
  %conv106 = trunc i64 %shl to i32
  %110 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %conv106, i32* %arrayidx107, align 4, !tbaa !5
  %111 = load i64, i64* %tmp10, align 8, !tbaa !8
  %112 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub108 = sub nsw i64 %111, %112
  %mul = mul nsw i64 %sub108, 10703
  %113 = load i64, i64* %tmp11, align 8, !tbaa !8
  %114 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub109 = sub nsw i64 %113, %114
  %mul110 = mul nsw i64 %sub109, 4433
  %add111 = add nsw i64 %mul, %mul110
  %add112 = add nsw i64 %add111, 1024
  %shr = ashr i64 %add112, 11
  %conv113 = trunc i64 %shr to i32
  %115 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i32, i32* %115, i64 4
  store i32 %conv113, i32* %arrayidx114, align 4, !tbaa !5
  %116 = load i64, i64* %tmp17, align 8, !tbaa !8
  %117 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub115 = sub nsw i64 %116, %117
  %mul116 = mul nsw i64 %sub115, 2260
  %118 = load i64, i64* %tmp14, align 8, !tbaa !8
  %119 = load i64, i64* %tmp16, align 8, !tbaa !8
  %sub117 = sub nsw i64 %118, %119
  %mul118 = mul nsw i64 %sub117, 11363
  %add119 = add nsw i64 %mul116, %mul118
  store i64 %add119, i64* %tmp10, align 8, !tbaa !8
  %120 = load i64, i64* %tmp10, align 8, !tbaa !8
  %121 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul120 = mul nsw i64 %121, 11893
  %add121 = add nsw i64 %120, %mul120
  %122 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul122 = mul nsw i64 %122, 17799
  %add123 = add nsw i64 %add121, %mul122
  %add124 = add nsw i64 %add123, 1024
  %shr125 = ashr i64 %add124, 11
  %conv126 = trunc i64 %shr125 to i32
  %123 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i32, i32* %123, i64 2
  store i32 %conv126, i32* %arrayidx127, align 4, !tbaa !5
  %124 = load i64, i64* %tmp10, align 8, !tbaa !8
  %125 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul128 = mul nsw i64 %125, 1730
  %sub129 = sub nsw i64 %124, %mul128
  %126 = load i64, i64* %tmp17, align 8, !tbaa !8
  %mul130 = mul nsw i64 %126, 8697
  %sub131 = sub nsw i64 %sub129, %mul130
  %add132 = add nsw i64 %sub131, 1024
  %shr133 = ashr i64 %add132, 11
  %conv134 = trunc i64 %shr133 to i32
  %127 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i32, i32* %127, i64 6
  store i32 %conv134, i32* %arrayidx135, align 4, !tbaa !5
  %128 = load i64, i64* %tmp0, align 8, !tbaa !8
  %129 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add136 = add nsw i64 %128, %129
  %mul137 = mul nsw i64 %add136, 11086
  %130 = load i64, i64* %tmp6, align 8, !tbaa !8
  %131 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub138 = sub nsw i64 %130, %131
  %mul139 = mul nsw i64 %sub138, 3363
  %add140 = add nsw i64 %mul137, %mul139
  store i64 %add140, i64* %tmp11, align 8, !tbaa !8
  %132 = load i64, i64* %tmp0, align 8, !tbaa !8
  %133 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add141 = add nsw i64 %132, %133
  %mul142 = mul nsw i64 %add141, 10217
  %134 = load i64, i64* %tmp5, align 8, !tbaa !8
  %135 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add143 = add nsw i64 %134, %135
  %mul144 = mul nsw i64 %add143, 5461
  %add145 = add nsw i64 %mul142, %mul144
  store i64 %add145, i64* %tmp12, align 8, !tbaa !8
  %136 = load i64, i64* %tmp0, align 8, !tbaa !8
  %137 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add146 = add nsw i64 %136, %137
  %mul147 = mul nsw i64 %add146, 8956
  %138 = load i64, i64* %tmp4, align 8, !tbaa !8
  %139 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub148 = sub nsw i64 %138, %139
  %mul149 = mul nsw i64 %sub148, 7350
  %add150 = add nsw i64 %mul147, %mul149
  store i64 %add150, i64* %tmp13, align 8, !tbaa !8
  %140 = load i64, i64* %tmp1, align 8, !tbaa !8
  %141 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add151 = add nsw i64 %140, %141
  %mul152 = mul nsw i64 %add151, 1136
  %142 = load i64, i64* %tmp6, align 8, !tbaa !8
  %143 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub153 = sub nsw i64 %142, %143
  %mul154 = mul nsw i64 %sub153, 11529
  %add155 = add nsw i64 %mul152, %mul154
  store i64 %add155, i64* %tmp14, align 8, !tbaa !8
  %144 = load i64, i64* %tmp1, align 8, !tbaa !8
  %145 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add156 = add nsw i64 %144, %145
  %mul157 = mul nsw i64 %add156, -5461
  %146 = load i64, i64* %tmp4, align 8, !tbaa !8
  %147 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add158 = add nsw i64 %146, %147
  %mul159 = mul nsw i64 %add158, -10217
  %add160 = add nsw i64 %mul157, %mul159
  store i64 %add160, i64* %tmp15, align 8, !tbaa !8
  %148 = load i64, i64* %tmp2, align 8, !tbaa !8
  %149 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add161 = add nsw i64 %148, %149
  %mul162 = mul nsw i64 %add161, -11086
  %150 = load i64, i64* %tmp5, align 8, !tbaa !8
  %151 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub163 = sub nsw i64 %150, %151
  %mul164 = mul nsw i64 %sub163, 3363
  %add165 = add nsw i64 %mul162, %mul164
  store i64 %add165, i64* %tmp16, align 8, !tbaa !8
  %152 = load i64, i64* %tmp11, align 8, !tbaa !8
  %153 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add166 = add nsw i64 %152, %153
  %154 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add167 = add nsw i64 %add166, %154
  %155 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul168 = mul nsw i64 %155, 18730
  %sub169 = sub nsw i64 %add167, %mul168
  %156 = load i64, i64* %tmp7, align 8, !tbaa !8
  %mul170 = mul nsw i64 %156, 6387
  %add171 = add nsw i64 %sub169, %mul170
  store i64 %add171, i64* %tmp10, align 8, !tbaa !8
  %157 = load i64, i64* %tmp14, align 8, !tbaa !8
  %158 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add172 = add nsw i64 %157, %158
  %159 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul173 = mul nsw i64 %159, 589
  %add174 = add nsw i64 %add172, %mul173
  %160 = load i64, i64* %tmp6, align 8, !tbaa !8
  %mul175 = mul nsw i64 %160, 13631
  %sub176 = sub nsw i64 %add174, %mul175
  %161 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add177 = add nsw i64 %161, %sub176
  store i64 %add177, i64* %tmp11, align 8, !tbaa !8
  %162 = load i64, i64* %tmp14, align 8, !tbaa !8
  %163 = load i64, i64* %tmp16, align 8, !tbaa !8
  %add178 = add nsw i64 %162, %163
  %164 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul179 = mul nsw i64 %164, 9222
  %sub180 = sub nsw i64 %add178, %mul179
  %165 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul181 = mul nsw i64 %165, 10055
  %add182 = add nsw i64 %sub180, %mul181
  %166 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add183 = add nsw i64 %166, %add182
  store i64 %add183, i64* %tmp12, align 8, !tbaa !8
  %167 = load i64, i64* %tmp15, align 8, !tbaa !8
  %168 = load i64, i64* %tmp16, align 8, !tbaa !8
  %add184 = add nsw i64 %167, %168
  %169 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul185 = mul nsw i64 %169, 8728
  %add186 = add nsw i64 %add184, %mul185
  %170 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul187 = mul nsw i64 %170, 17760
  %add188 = add nsw i64 %add186, %mul187
  %171 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add189 = add nsw i64 %171, %add188
  store i64 %add189, i64* %tmp13, align 8, !tbaa !8
  %172 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add190 = add nsw i64 %172, 1024
  %shr191 = ashr i64 %add190, 11
  %conv192 = trunc i64 %shr191 to i32
  %173 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i32, i32* %173, i64 1
  store i32 %conv192, i32* %arrayidx193, align 4, !tbaa !5
  %174 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add194 = add nsw i64 %174, 1024
  %shr195 = ashr i64 %add194, 11
  %conv196 = trunc i64 %shr195 to i32
  %175 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i32, i32* %175, i64 3
  store i32 %conv196, i32* %arrayidx197, align 4, !tbaa !5
  %176 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add198 = add nsw i64 %176, 1024
  %shr199 = ashr i64 %add198, 11
  %conv200 = trunc i64 %shr199 to i32
  %177 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i32, i32* %177, i64 5
  store i32 %conv200, i32* %arrayidx201, align 4, !tbaa !5
  %178 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add202 = add nsw i64 %178, 1024
  %shr203 = ashr i64 %add202, 11
  %conv204 = trunc i64 %shr203 to i32
  %179 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i32, i32* %179, i64 7
  store i32 %conv204, i32* %arrayidx205, align 4, !tbaa !5
  %180 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr206 = getelementptr inbounds i32, i32* %180, i64 8
  store i32* %add.ptr206, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %181 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %181, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %182 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %182, i32** %dataptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.311, %for.end
  %183 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp208 = icmp sge i32 %183, 0
  br i1 %cmp208, label %for.body.210, label %for.end.312

for.body.210:                                     ; preds = %for.cond.207
  %184 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds i32, i32* %184, i64 0
  %185 = load i32, i32* %arrayidx211, align 4, !tbaa !5
  %186 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i32, i32* %186, i64 56
  %187 = load i32, i32* %arrayidx212, align 4, !tbaa !5
  %add213 = add nsw i32 %185, %187
  %conv214 = sext i32 %add213 to i64
  store i64 %conv214, i64* %tmp0, align 8, !tbaa !8
  %188 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i32, i32* %188, i64 8
  %189 = load i32, i32* %arrayidx215, align 4, !tbaa !5
  %190 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds i32, i32* %190, i64 48
  %191 = load i32, i32* %arrayidx216, align 4, !tbaa !5
  %add217 = add nsw i32 %189, %191
  %conv218 = sext i32 %add217 to i64
  store i64 %conv218, i64* %tmp1, align 8, !tbaa !8
  %192 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i32, i32* %192, i64 16
  %193 = load i32, i32* %arrayidx219, align 4, !tbaa !5
  %194 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i32, i32* %194, i64 40
  %195 = load i32, i32* %arrayidx220, align 4, !tbaa !5
  %add221 = add nsw i32 %193, %195
  %conv222 = sext i32 %add221 to i64
  store i64 %conv222, i64* %tmp2, align 8, !tbaa !8
  %196 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i32, i32* %196, i64 24
  %197 = load i32, i32* %arrayidx223, align 4, !tbaa !5
  %198 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i32, i32* %198, i64 32
  %199 = load i32, i32* %arrayidx224, align 4, !tbaa !5
  %add225 = add nsw i32 %197, %199
  %conv226 = sext i32 %add225 to i64
  store i64 %conv226, i64* %tmp3, align 8, !tbaa !8
  %200 = load i64, i64* %tmp0, align 8, !tbaa !8
  %201 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add227 = add nsw i64 %200, %201
  store i64 %add227, i64* %tmp10, align 8, !tbaa !8
  %202 = load i64, i64* %tmp0, align 8, !tbaa !8
  %203 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub228 = sub nsw i64 %202, %203
  store i64 %sub228, i64* %tmp12, align 8, !tbaa !8
  %204 = load i64, i64* %tmp1, align 8, !tbaa !8
  %205 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add229 = add nsw i64 %204, %205
  store i64 %add229, i64* %tmp11, align 8, !tbaa !8
  %206 = load i64, i64* %tmp1, align 8, !tbaa !8
  %207 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub230 = sub nsw i64 %206, %207
  store i64 %sub230, i64* %tmp13, align 8, !tbaa !8
  %208 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i32, i32* %208, i64 0
  %209 = load i32, i32* %arrayidx231, align 4, !tbaa !5
  %210 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i32, i32* %210, i64 56
  %211 = load i32, i32* %arrayidx232, align 4, !tbaa !5
  %sub233 = sub nsw i32 %209, %211
  %conv234 = sext i32 %sub233 to i64
  store i64 %conv234, i64* %tmp0, align 8, !tbaa !8
  %212 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i32, i32* %212, i64 8
  %213 = load i32, i32* %arrayidx235, align 4, !tbaa !5
  %214 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds i32, i32* %214, i64 48
  %215 = load i32, i32* %arrayidx236, align 4, !tbaa !5
  %sub237 = sub nsw i32 %213, %215
  %conv238 = sext i32 %sub237 to i64
  store i64 %conv238, i64* %tmp1, align 8, !tbaa !8
  %216 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i32, i32* %216, i64 16
  %217 = load i32, i32* %arrayidx239, align 4, !tbaa !5
  %218 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i32, i32* %218, i64 40
  %219 = load i32, i32* %arrayidx240, align 4, !tbaa !5
  %sub241 = sub nsw i32 %217, %219
  %conv242 = sext i32 %sub241 to i64
  store i64 %conv242, i64* %tmp2, align 8, !tbaa !8
  %220 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i32, i32* %220, i64 24
  %221 = load i32, i32* %arrayidx243, align 4, !tbaa !5
  %222 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx244 = getelementptr inbounds i32, i32* %222, i64 32
  %223 = load i32, i32* %arrayidx244, align 4, !tbaa !5
  %sub245 = sub nsw i32 %221, %223
  %conv246 = sext i32 %sub245 to i64
  store i64 %conv246, i64* %tmp3, align 8, !tbaa !8
  %224 = load i64, i64* %tmp10, align 8, !tbaa !8
  %225 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add247 = add nsw i64 %224, %225
  %add248 = add nsw i64 %add247, 4
  %shr249 = ashr i64 %add248, 3
  %conv250 = trunc i64 %shr249 to i32
  %226 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 %conv250, i32* %arrayidx251, align 4, !tbaa !5
  %227 = load i64, i64* %tmp10, align 8, !tbaa !8
  %228 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub252 = sub nsw i64 %227, %228
  %add253 = add nsw i64 %sub252, 4
  %shr254 = ashr i64 %add253, 3
  %conv255 = trunc i64 %shr254 to i32
  %229 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx256 = getelementptr inbounds i32, i32* %229, i64 32
  store i32 %conv255, i32* %arrayidx256, align 4, !tbaa !5
  %230 = load i64, i64* %tmp12, align 8, !tbaa !8
  %231 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add257 = add nsw i64 %230, %231
  %mul258 = mul nsw i64 %add257, 4433
  store i64 %mul258, i64* %z1, align 8, !tbaa !8
  %232 = load i64, i64* %z1, align 8, !tbaa !8
  %233 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul259 = mul nsw i64 %233, 6270
  %add260 = add nsw i64 %232, %mul259
  %add261 = add nsw i64 %add260, 32768
  %shr262 = ashr i64 %add261, 16
  %conv263 = trunc i64 %shr262 to i32
  %234 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds i32, i32* %234, i64 16
  store i32 %conv263, i32* %arrayidx264, align 4, !tbaa !5
  %235 = load i64, i64* %z1, align 8, !tbaa !8
  %236 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul265 = mul nsw i64 %236, 15137
  %sub266 = sub nsw i64 %235, %mul265
  %add267 = add nsw i64 %sub266, 32768
  %shr268 = ashr i64 %add267, 16
  %conv269 = trunc i64 %shr268 to i32
  %237 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx270 = getelementptr inbounds i32, i32* %237, i64 48
  store i32 %conv269, i32* %arrayidx270, align 4, !tbaa !5
  %238 = load i64, i64* %tmp0, align 8, !tbaa !8
  %239 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add271 = add nsw i64 %238, %239
  store i64 %add271, i64* %tmp12, align 8, !tbaa !8
  %240 = load i64, i64* %tmp1, align 8, !tbaa !8
  %241 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add272 = add nsw i64 %240, %241
  store i64 %add272, i64* %tmp13, align 8, !tbaa !8
  %242 = load i64, i64* %tmp12, align 8, !tbaa !8
  %243 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add273 = add nsw i64 %242, %243
  %mul274 = mul nsw i64 %add273, 9633
  store i64 %mul274, i64* %z1, align 8, !tbaa !8
  %244 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul275 = mul nsw i64 %244, -3196
  store i64 %mul275, i64* %tmp12, align 8, !tbaa !8
  %245 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul276 = mul nsw i64 %245, -16069
  store i64 %mul276, i64* %tmp13, align 8, !tbaa !8
  %246 = load i64, i64* %z1, align 8, !tbaa !8
  %247 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add277 = add nsw i64 %247, %246
  store i64 %add277, i64* %tmp12, align 8, !tbaa !8
  %248 = load i64, i64* %z1, align 8, !tbaa !8
  %249 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add278 = add nsw i64 %249, %248
  store i64 %add278, i64* %tmp13, align 8, !tbaa !8
  %250 = load i64, i64* %tmp0, align 8, !tbaa !8
  %251 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add279 = add nsw i64 %250, %251
  %mul280 = mul nsw i64 %add279, -7373
  store i64 %mul280, i64* %z1, align 8, !tbaa !8
  %252 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul281 = mul nsw i64 %252, 12299
  store i64 %mul281, i64* %tmp0, align 8, !tbaa !8
  %253 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul282 = mul nsw i64 %253, 2446
  store i64 %mul282, i64* %tmp3, align 8, !tbaa !8
  %254 = load i64, i64* %z1, align 8, !tbaa !8
  %255 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add283 = add nsw i64 %254, %255
  %256 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add284 = add nsw i64 %256, %add283
  store i64 %add284, i64* %tmp0, align 8, !tbaa !8
  %257 = load i64, i64* %z1, align 8, !tbaa !8
  %258 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add285 = add nsw i64 %257, %258
  %259 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add286 = add nsw i64 %259, %add285
  store i64 %add286, i64* %tmp3, align 8, !tbaa !8
  %260 = load i64, i64* %tmp1, align 8, !tbaa !8
  %261 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add287 = add nsw i64 %260, %261
  %mul288 = mul nsw i64 %add287, -20995
  store i64 %mul288, i64* %z1, align 8, !tbaa !8
  %262 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul289 = mul nsw i64 %262, 25172
  store i64 %mul289, i64* %tmp1, align 8, !tbaa !8
  %263 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul290 = mul nsw i64 %263, 16819
  store i64 %mul290, i64* %tmp2, align 8, !tbaa !8
  %264 = load i64, i64* %z1, align 8, !tbaa !8
  %265 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add291 = add nsw i64 %264, %265
  %266 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add292 = add nsw i64 %266, %add291
  store i64 %add292, i64* %tmp1, align 8, !tbaa !8
  %267 = load i64, i64* %z1, align 8, !tbaa !8
  %268 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add293 = add nsw i64 %267, %268
  %269 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add294 = add nsw i64 %269, %add293
  store i64 %add294, i64* %tmp2, align 8, !tbaa !8
  %270 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add295 = add nsw i64 %270, 32768
  %shr296 = ashr i64 %add295, 16
  %conv297 = trunc i64 %shr296 to i32
  %271 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i32, i32* %271, i64 8
  store i32 %conv297, i32* %arrayidx298, align 4, !tbaa !5
  %272 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add299 = add nsw i64 %272, 32768
  %shr300 = ashr i64 %add299, 16
  %conv301 = trunc i64 %shr300 to i32
  %273 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx302 = getelementptr inbounds i32, i32* %273, i64 24
  store i32 %conv301, i32* %arrayidx302, align 4, !tbaa !5
  %274 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add303 = add nsw i64 %274, 32768
  %shr304 = ashr i64 %add303, 16
  %conv305 = trunc i64 %shr304 to i32
  %275 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx306 = getelementptr inbounds i32, i32* %275, i64 40
  store i32 %conv305, i32* %arrayidx306, align 4, !tbaa !5
  %276 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add307 = add nsw i64 %276, 32768
  %shr308 = ashr i64 %add307, 16
  %conv309 = trunc i64 %shr308 to i32
  %277 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx310 = getelementptr inbounds i32, i32* %277, i64 56
  store i32 %conv309, i32* %arrayidx310, align 4, !tbaa !5
  %278 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %278, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.body.210
  %279 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %279, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.207

for.end.312:                                      ; preds = %for.cond.207
  %280 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %284 = bitcast i64* %tmp17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %284) #1
  %285 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  %286 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #1
  %287 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #1
  %289 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i64* %tmp7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  %293 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  %294 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %295) #1
  %296 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %297 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #1
  %299 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_14x7(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 56
  %21 = bitcast i32* %arrayidx to i8*
  %call = call i8* @memset(i8* %21, i32 0, i64 32) #3
  %22 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %22, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %23 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %23, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %24 to i64
  %25 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %25, i64 %idxprom
  %26 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %27 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv = zext i8 %29 to i32
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %30, i64 13
  %31 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %31 to i32
  %add = add nsw i32 %conv, %conv4
  %conv5 = sext i32 %add to i64
  store i64 %conv5, i64* %tmp0, align 8, !tbaa !8
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %conv7 = zext i8 %33 to i32
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %34, i64 12
  %35 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %35 to i32
  %add10 = add nsw i32 %conv7, %conv9
  %conv11 = sext i32 %add10 to i64
  store i64 %conv11, i64* %tmp1, align 8, !tbaa !8
  %36 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %36, i64 2
  %37 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %conv13 = zext i8 %37 to i32
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %38, i64 11
  %39 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %conv15 = zext i8 %39 to i32
  %add16 = add nsw i32 %conv13, %conv15
  %conv17 = sext i32 %add16 to i64
  store i64 %conv17, i64* %tmp2, align 8, !tbaa !8
  %40 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %41 to i32
  %42 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %42, i64 10
  %43 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %43 to i32
  %add22 = add nsw i32 %conv19, %conv21
  %conv23 = sext i32 %add22 to i64
  store i64 %conv23, i64* %tmp13, align 8, !tbaa !8
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %44, i64 4
  %45 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %45 to i32
  %46 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %46, i64 9
  %47 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %47 to i32
  %add28 = add nsw i32 %conv25, %conv27
  %conv29 = sext i32 %add28 to i64
  store i64 %conv29, i64* %tmp4, align 8, !tbaa !8
  %48 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %48, i64 5
  %49 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = zext i8 %49 to i32
  %50 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %50, i64 8
  %51 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %51 to i32
  %add34 = add nsw i32 %conv31, %conv33
  %conv35 = sext i32 %add34 to i64
  store i64 %conv35, i64* %tmp5, align 8, !tbaa !8
  %52 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %52, i64 6
  %53 = load i8, i8* %arrayidx36, align 1, !tbaa !7
  %conv37 = zext i8 %53 to i32
  %54 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %54, i64 7
  %55 = load i8, i8* %arrayidx38, align 1, !tbaa !7
  %conv39 = zext i8 %55 to i32
  %add40 = add nsw i32 %conv37, %conv39
  %conv41 = sext i32 %add40 to i64
  store i64 %conv41, i64* %tmp6, align 8, !tbaa !8
  %56 = load i64, i64* %tmp0, align 8, !tbaa !8
  %57 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add42 = add nsw i64 %56, %57
  store i64 %add42, i64* %tmp10, align 8, !tbaa !8
  %58 = load i64, i64* %tmp0, align 8, !tbaa !8
  %59 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub = sub nsw i64 %58, %59
  store i64 %sub, i64* %tmp14, align 8, !tbaa !8
  %60 = load i64, i64* %tmp1, align 8, !tbaa !8
  %61 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add43 = add nsw i64 %60, %61
  store i64 %add43, i64* %tmp11, align 8, !tbaa !8
  %62 = load i64, i64* %tmp1, align 8, !tbaa !8
  %63 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub44 = sub nsw i64 %62, %63
  store i64 %sub44, i64* %tmp15, align 8, !tbaa !8
  %64 = load i64, i64* %tmp2, align 8, !tbaa !8
  %65 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add45 = add nsw i64 %64, %65
  store i64 %add45, i64* %tmp12, align 8, !tbaa !8
  %66 = load i64, i64* %tmp2, align 8, !tbaa !8
  %67 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub46 = sub nsw i64 %66, %67
  store i64 %sub46, i64* %tmp16, align 8, !tbaa !8
  %68 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx47, align 1, !tbaa !7
  %conv48 = zext i8 %69 to i32
  %70 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %70, i64 13
  %71 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = zext i8 %71 to i32
  %sub51 = sub nsw i32 %conv48, %conv50
  %conv52 = sext i32 %sub51 to i64
  store i64 %conv52, i64* %tmp0, align 8, !tbaa !8
  %72 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load i8, i8* %arrayidx53, align 1, !tbaa !7
  %conv54 = zext i8 %73 to i32
  %74 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %74, i64 12
  %75 = load i8, i8* %arrayidx55, align 1, !tbaa !7
  %conv56 = zext i8 %75 to i32
  %sub57 = sub nsw i32 %conv54, %conv56
  %conv58 = sext i32 %sub57 to i64
  store i64 %conv58, i64* %tmp1, align 8, !tbaa !8
  %76 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %76, i64 2
  %77 = load i8, i8* %arrayidx59, align 1, !tbaa !7
  %conv60 = zext i8 %77 to i32
  %78 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %78, i64 11
  %79 = load i8, i8* %arrayidx61, align 1, !tbaa !7
  %conv62 = zext i8 %79 to i32
  %sub63 = sub nsw i32 %conv60, %conv62
  %conv64 = sext i32 %sub63 to i64
  store i64 %conv64, i64* %tmp2, align 8, !tbaa !8
  %80 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %80, i64 3
  %81 = load i8, i8* %arrayidx65, align 1, !tbaa !7
  %conv66 = zext i8 %81 to i32
  %82 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %82, i64 10
  %83 = load i8, i8* %arrayidx67, align 1, !tbaa !7
  %conv68 = zext i8 %83 to i32
  %sub69 = sub nsw i32 %conv66, %conv68
  %conv70 = sext i32 %sub69 to i64
  store i64 %conv70, i64* %tmp3, align 8, !tbaa !8
  %84 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %84, i64 4
  %85 = load i8, i8* %arrayidx71, align 1, !tbaa !7
  %conv72 = zext i8 %85 to i32
  %86 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %86, i64 9
  %87 = load i8, i8* %arrayidx73, align 1, !tbaa !7
  %conv74 = zext i8 %87 to i32
  %sub75 = sub nsw i32 %conv72, %conv74
  %conv76 = sext i32 %sub75 to i64
  store i64 %conv76, i64* %tmp4, align 8, !tbaa !8
  %88 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %88, i64 5
  %89 = load i8, i8* %arrayidx77, align 1, !tbaa !7
  %conv78 = zext i8 %89 to i32
  %90 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %90, i64 8
  %91 = load i8, i8* %arrayidx79, align 1, !tbaa !7
  %conv80 = zext i8 %91 to i32
  %sub81 = sub nsw i32 %conv78, %conv80
  %conv82 = sext i32 %sub81 to i64
  store i64 %conv82, i64* %tmp5, align 8, !tbaa !8
  %92 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %92, i64 6
  %93 = load i8, i8* %arrayidx83, align 1, !tbaa !7
  %conv84 = zext i8 %93 to i32
  %94 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %94, i64 7
  %95 = load i8, i8* %arrayidx85, align 1, !tbaa !7
  %conv86 = zext i8 %95 to i32
  %sub87 = sub nsw i32 %conv84, %conv86
  %conv88 = sext i32 %sub87 to i64
  store i64 %conv88, i64* %tmp6, align 8, !tbaa !8
  %96 = load i64, i64* %tmp10, align 8, !tbaa !8
  %97 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add89 = add nsw i64 %96, %97
  %98 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add90 = add nsw i64 %add89, %98
  %99 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add91 = add nsw i64 %add90, %99
  %sub92 = sub nsw i64 %add91, 1792
  %shl = shl i64 %sub92, 2
  %conv93 = trunc i64 %shl to i32
  %100 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %conv93, i32* %arrayidx94, align 4, !tbaa !5
  %101 = load i64, i64* %tmp13, align 8, !tbaa !8
  %102 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add95 = add nsw i64 %102, %101
  store i64 %add95, i64* %tmp13, align 8, !tbaa !8
  %103 = load i64, i64* %tmp10, align 8, !tbaa !8
  %104 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub96 = sub nsw i64 %103, %104
  %mul = mul nsw i64 %sub96, 10438
  %105 = load i64, i64* %tmp11, align 8, !tbaa !8
  %106 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub97 = sub nsw i64 %105, %106
  %mul98 = mul nsw i64 %sub97, 2578
  %add99 = add nsw i64 %mul, %mul98
  %107 = load i64, i64* %tmp12, align 8, !tbaa !8
  %108 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub100 = sub nsw i64 %107, %108
  %mul101 = mul nsw i64 %sub100, 7223
  %sub102 = sub nsw i64 %add99, %mul101
  %add103 = add nsw i64 %sub102, 1024
  %shr = ashr i64 %add103, 11
  %conv104 = trunc i64 %shr to i32
  %109 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i32, i32* %109, i64 4
  store i32 %conv104, i32* %arrayidx105, align 4, !tbaa !5
  %110 = load i64, i64* %tmp14, align 8, !tbaa !8
  %111 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add106 = add nsw i64 %110, %111
  %mul107 = mul nsw i64 %add106, 9058
  store i64 %mul107, i64* %tmp10, align 8, !tbaa !8
  %112 = load i64, i64* %tmp10, align 8, !tbaa !8
  %113 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul108 = mul nsw i64 %113, 2237
  %add109 = add nsw i64 %112, %mul108
  %114 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul110 = mul nsw i64 %114, 5027
  %add111 = add nsw i64 %add109, %mul110
  %add112 = add nsw i64 %add111, 1024
  %shr113 = ashr i64 %add112, 11
  %conv114 = trunc i64 %shr113 to i32
  %115 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 %conv114, i32* %arrayidx115, align 4, !tbaa !5
  %116 = load i64, i64* %tmp10, align 8, !tbaa !8
  %117 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul116 = mul nsw i64 %117, 14084
  %sub117 = sub nsw i64 %116, %mul116
  %118 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul118 = mul nsw i64 %118, 11295
  %sub119 = sub nsw i64 %sub117, %mul118
  %add120 = add nsw i64 %sub119, 1024
  %shr121 = ashr i64 %add120, 11
  %conv122 = trunc i64 %shr121 to i32
  %119 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i32, i32* %119, i64 6
  store i32 %conv122, i32* %arrayidx123, align 4, !tbaa !5
  %120 = load i64, i64* %tmp1, align 8, !tbaa !8
  %121 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add124 = add nsw i64 %120, %121
  store i64 %add124, i64* %tmp10, align 8, !tbaa !8
  %122 = load i64, i64* %tmp5, align 8, !tbaa !8
  %123 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub125 = sub nsw i64 %122, %123
  store i64 %sub125, i64* %tmp11, align 8, !tbaa !8
  %124 = load i64, i64* %tmp0, align 8, !tbaa !8
  %125 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub126 = sub nsw i64 %124, %125
  %126 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add127 = add nsw i64 %sub126, %126
  %127 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub128 = sub nsw i64 %add127, %127
  %128 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub129 = sub nsw i64 %sub128, %128
  %shl130 = shl i64 %sub129, 2
  %conv131 = trunc i64 %shl130 to i32
  %129 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %129, i64 7
  store i32 %conv131, i32* %arrayidx132, align 4, !tbaa !5
  %130 = load i64, i64* %tmp3, align 8, !tbaa !8
  %shl133 = shl i64 %130, 13
  store i64 %shl133, i64* %tmp3, align 8, !tbaa !8
  %131 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul134 = mul nsw i64 %131, -1297
  store i64 %mul134, i64* %tmp10, align 8, !tbaa !8
  %132 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul135 = mul nsw i64 %132, 11512
  store i64 %mul135, i64* %tmp11, align 8, !tbaa !8
  %133 = load i64, i64* %tmp11, align 8, !tbaa !8
  %134 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub136 = sub nsw i64 %133, %134
  %135 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add137 = add nsw i64 %135, %sub136
  store i64 %add137, i64* %tmp10, align 8, !tbaa !8
  %136 = load i64, i64* %tmp0, align 8, !tbaa !8
  %137 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add138 = add nsw i64 %136, %137
  %mul139 = mul nsw i64 %add138, 9810
  %138 = load i64, i64* %tmp4, align 8, !tbaa !8
  %139 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add140 = add nsw i64 %138, %139
  %mul141 = mul nsw i64 %add140, 6164
  %add142 = add nsw i64 %mul139, %mul141
  store i64 %add142, i64* %tmp11, align 8, !tbaa !8
  %140 = load i64, i64* %tmp10, align 8, !tbaa !8
  %141 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add143 = add nsw i64 %140, %141
  %142 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul144 = mul nsw i64 %142, 19447
  %sub145 = sub nsw i64 %add143, %mul144
  %143 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul146 = mul nsw i64 %143, 9175
  %add147 = add nsw i64 %sub145, %mul146
  %add148 = add nsw i64 %add147, 1024
  %shr149 = ashr i64 %add148, 11
  %conv150 = trunc i64 %shr149 to i32
  %144 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i32, i32* %144, i64 5
  store i32 %conv150, i32* %arrayidx151, align 4, !tbaa !5
  %145 = load i64, i64* %tmp0, align 8, !tbaa !8
  %146 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add152 = add nsw i64 %145, %146
  %mul153 = mul nsw i64 %add152, 10935
  %147 = load i64, i64* %tmp5, align 8, !tbaa !8
  %148 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub154 = sub nsw i64 %147, %148
  %mul155 = mul nsw i64 %sub154, 3826
  %add156 = add nsw i64 %mul153, %mul155
  store i64 %add156, i64* %tmp12, align 8, !tbaa !8
  %149 = load i64, i64* %tmp10, align 8, !tbaa !8
  %150 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add157 = add nsw i64 %149, %150
  %151 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul158 = mul nsw i64 %151, 3474
  %sub159 = sub nsw i64 %add157, %mul158
  %152 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul160 = mul nsw i64 %152, 25148
  %sub161 = sub nsw i64 %sub159, %mul160
  %add162 = add nsw i64 %sub161, 1024
  %shr163 = ashr i64 %add162, 11
  %conv164 = trunc i64 %shr163 to i32
  %153 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i32, i32* %153, i64 3
  store i32 %conv164, i32* %arrayidx165, align 4, !tbaa !5
  %154 = load i64, i64* %tmp11, align 8, !tbaa !8
  %155 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add166 = add nsw i64 %154, %155
  %156 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add167 = add nsw i64 %add166, %156
  %157 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add168 = add nsw i64 %add167, %157
  %158 = load i64, i64* %tmp0, align 8, !tbaa !8
  %159 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add169 = add nsw i64 %158, %159
  %mul170 = mul nsw i64 %add169, 9232
  %sub171 = sub nsw i64 %add168, %mul170
  %add172 = add nsw i64 %sub171, 1024
  %shr173 = ashr i64 %add172, 11
  %conv174 = trunc i64 %shr173 to i32
  %160 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 %conv174, i32* %arrayidx175, align 4, !tbaa !5
  %161 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr176 = getelementptr inbounds i32, i32* %161, i64 8
  store i32* %add.ptr176, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %162 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %162, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %163 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %163, i32** %dataptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.272, %for.end
  %164 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp178 = icmp sge i32 %164, 0
  br i1 %cmp178, label %for.body.180, label %for.end.273

for.body.180:                                     ; preds = %for.cond.177
  %165 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i32, i32* %165, i64 0
  %166 = load i32, i32* %arrayidx181, align 4, !tbaa !5
  %167 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i32, i32* %167, i64 48
  %168 = load i32, i32* %arrayidx182, align 4, !tbaa !5
  %add183 = add nsw i32 %166, %168
  %conv184 = sext i32 %add183 to i64
  store i64 %conv184, i64* %tmp0, align 8, !tbaa !8
  %169 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i32, i32* %169, i64 8
  %170 = load i32, i32* %arrayidx185, align 4, !tbaa !5
  %171 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i32, i32* %171, i64 40
  %172 = load i32, i32* %arrayidx186, align 4, !tbaa !5
  %add187 = add nsw i32 %170, %172
  %conv188 = sext i32 %add187 to i64
  store i64 %conv188, i64* %tmp1, align 8, !tbaa !8
  %173 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i32, i32* %173, i64 16
  %174 = load i32, i32* %arrayidx189, align 4, !tbaa !5
  %175 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i32, i32* %175, i64 32
  %176 = load i32, i32* %arrayidx190, align 4, !tbaa !5
  %add191 = add nsw i32 %174, %176
  %conv192 = sext i32 %add191 to i64
  store i64 %conv192, i64* %tmp2, align 8, !tbaa !8
  %177 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i32, i32* %177, i64 24
  %178 = load i32, i32* %arrayidx193, align 4, !tbaa !5
  %conv194 = sext i32 %178 to i64
  store i64 %conv194, i64* %tmp3, align 8, !tbaa !8
  %179 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i32, i32* %179, i64 0
  %180 = load i32, i32* %arrayidx195, align 4, !tbaa !5
  %181 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i32, i32* %181, i64 48
  %182 = load i32, i32* %arrayidx196, align 4, !tbaa !5
  %sub197 = sub nsw i32 %180, %182
  %conv198 = sext i32 %sub197 to i64
  store i64 %conv198, i64* %tmp10, align 8, !tbaa !8
  %183 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i32, i32* %183, i64 8
  %184 = load i32, i32* %arrayidx199, align 4, !tbaa !5
  %185 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i32, i32* %185, i64 40
  %186 = load i32, i32* %arrayidx200, align 4, !tbaa !5
  %sub201 = sub nsw i32 %184, %186
  %conv202 = sext i32 %sub201 to i64
  store i64 %conv202, i64* %tmp11, align 8, !tbaa !8
  %187 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i32, i32* %187, i64 16
  %188 = load i32, i32* %arrayidx203, align 4, !tbaa !5
  %189 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i32, i32* %189, i64 32
  %190 = load i32, i32* %arrayidx204, align 4, !tbaa !5
  %sub205 = sub nsw i32 %188, %190
  %conv206 = sext i32 %sub205 to i64
  store i64 %conv206, i64* %tmp12, align 8, !tbaa !8
  %191 = load i64, i64* %tmp0, align 8, !tbaa !8
  %192 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add207 = add nsw i64 %191, %192
  store i64 %add207, i64* %z1, align 8, !tbaa !8
  %193 = load i64, i64* %z1, align 8, !tbaa !8
  %194 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add208 = add nsw i64 %193, %194
  %195 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add209 = add nsw i64 %add208, %195
  %mul210 = mul nsw i64 %add209, 10700
  %add211 = add nsw i64 %mul210, 32768
  %shr212 = ashr i64 %add211, 16
  %conv213 = trunc i64 %shr212 to i32
  %196 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 %conv213, i32* %arrayidx214, align 4, !tbaa !5
  %197 = load i64, i64* %tmp3, align 8, !tbaa !8
  %198 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add215 = add nsw i64 %198, %197
  store i64 %add215, i64* %tmp3, align 8, !tbaa !8
  %199 = load i64, i64* %tmp3, align 8, !tbaa !8
  %200 = load i64, i64* %z1, align 8, !tbaa !8
  %sub216 = sub nsw i64 %200, %199
  store i64 %sub216, i64* %z1, align 8, !tbaa !8
  %201 = load i64, i64* %tmp3, align 8, !tbaa !8
  %202 = load i64, i64* %z1, align 8, !tbaa !8
  %sub217 = sub nsw i64 %202, %201
  store i64 %sub217, i64* %z1, align 8, !tbaa !8
  %203 = load i64, i64* %z1, align 8, !tbaa !8
  %mul218 = mul nsw i64 %203, 3783
  store i64 %mul218, i64* %z1, align 8, !tbaa !8
  %204 = load i64, i64* %tmp0, align 8, !tbaa !8
  %205 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub219 = sub nsw i64 %204, %205
  %mul220 = mul nsw i64 %sub219, 9850
  store i64 %mul220, i64* %z2, align 8, !tbaa !8
  %206 = load i64, i64* %tmp1, align 8, !tbaa !8
  %207 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub221 = sub nsw i64 %206, %207
  %mul222 = mul nsw i64 %sub221, 3367
  store i64 %mul222, i64* %z3, align 8, !tbaa !8
  %208 = load i64, i64* %z1, align 8, !tbaa !8
  %209 = load i64, i64* %z2, align 8, !tbaa !8
  %add223 = add nsw i64 %208, %209
  %210 = load i64, i64* %z3, align 8, !tbaa !8
  %add224 = add nsw i64 %add223, %210
  %add225 = add nsw i64 %add224, 32768
  %shr226 = ashr i64 %add225, 16
  %conv227 = trunc i64 %shr226 to i32
  %211 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i32, i32* %211, i64 16
  store i32 %conv227, i32* %arrayidx228, align 4, !tbaa !5
  %212 = load i64, i64* %z2, align 8, !tbaa !8
  %213 = load i64, i64* %z1, align 8, !tbaa !8
  %sub229 = sub nsw i64 %213, %212
  store i64 %sub229, i64* %z1, align 8, !tbaa !8
  %214 = load i64, i64* %tmp0, align 8, !tbaa !8
  %215 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub230 = sub nsw i64 %214, %215
  %mul231 = mul nsw i64 %sub230, 9434
  store i64 %mul231, i64* %z2, align 8, !tbaa !8
  %216 = load i64, i64* %z2, align 8, !tbaa !8
  %217 = load i64, i64* %z3, align 8, !tbaa !8
  %add232 = add nsw i64 %216, %217
  %218 = load i64, i64* %tmp1, align 8, !tbaa !8
  %219 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub233 = sub nsw i64 %218, %219
  %mul234 = mul nsw i64 %sub233, 7566
  %sub235 = sub nsw i64 %add232, %mul234
  %add236 = add nsw i64 %sub235, 32768
  %shr237 = ashr i64 %add236, 16
  %conv238 = trunc i64 %shr237 to i32
  %220 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i32, i32* %220, i64 32
  store i32 %conv238, i32* %arrayidx239, align 4, !tbaa !5
  %221 = load i64, i64* %z1, align 8, !tbaa !8
  %222 = load i64, i64* %z2, align 8, !tbaa !8
  %add240 = add nsw i64 %221, %222
  %add241 = add nsw i64 %add240, 32768
  %shr242 = ashr i64 %add241, 16
  %conv243 = trunc i64 %shr242 to i32
  %223 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx244 = getelementptr inbounds i32, i32* %223, i64 48
  store i32 %conv243, i32* %arrayidx244, align 4, !tbaa !5
  %224 = load i64, i64* %tmp10, align 8, !tbaa !8
  %225 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add245 = add nsw i64 %224, %225
  %mul246 = mul nsw i64 %add245, 10009
  store i64 %mul246, i64* %tmp1, align 8, !tbaa !8
  %226 = load i64, i64* %tmp10, align 8, !tbaa !8
  %227 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub247 = sub nsw i64 %226, %227
  %mul248 = mul nsw i64 %sub247, 1822
  store i64 %mul248, i64* %tmp2, align 8, !tbaa !8
  %228 = load i64, i64* %tmp1, align 8, !tbaa !8
  %229 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub249 = sub nsw i64 %228, %229
  store i64 %sub249, i64* %tmp0, align 8, !tbaa !8
  %230 = load i64, i64* %tmp2, align 8, !tbaa !8
  %231 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add250 = add nsw i64 %231, %230
  store i64 %add250, i64* %tmp1, align 8, !tbaa !8
  %232 = load i64, i64* %tmp11, align 8, !tbaa !8
  %233 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add251 = add nsw i64 %232, %233
  %mul252 = mul nsw i64 %add251, -14752
  store i64 %mul252, i64* %tmp2, align 8, !tbaa !8
  %234 = load i64, i64* %tmp2, align 8, !tbaa !8
  %235 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add253 = add nsw i64 %235, %234
  store i64 %add253, i64* %tmp1, align 8, !tbaa !8
  %236 = load i64, i64* %tmp10, align 8, !tbaa !8
  %237 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add254 = add nsw i64 %236, %237
  %mul255 = mul nsw i64 %add254, 6565
  store i64 %mul255, i64* %tmp3, align 8, !tbaa !8
  %238 = load i64, i64* %tmp3, align 8, !tbaa !8
  %239 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add256 = add nsw i64 %239, %238
  store i64 %add256, i64* %tmp0, align 8, !tbaa !8
  %240 = load i64, i64* %tmp3, align 8, !tbaa !8
  %241 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul257 = mul nsw i64 %241, 20017
  %add258 = add nsw i64 %240, %mul257
  %242 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add259 = add nsw i64 %242, %add258
  store i64 %add259, i64* %tmp2, align 8, !tbaa !8
  %243 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add260 = add nsw i64 %243, 32768
  %shr261 = ashr i64 %add260, 16
  %conv262 = trunc i64 %shr261 to i32
  %244 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx263 = getelementptr inbounds i32, i32* %244, i64 8
  store i32 %conv262, i32* %arrayidx263, align 4, !tbaa !5
  %245 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add264 = add nsw i64 %245, 32768
  %shr265 = ashr i64 %add264, 16
  %conv266 = trunc i64 %shr265 to i32
  %246 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds i32, i32* %246, i64 24
  store i32 %conv266, i32* %arrayidx267, align 4, !tbaa !5
  %247 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add268 = add nsw i64 %247, 32768
  %shr269 = ashr i64 %add268, 16
  %conv270 = trunc i64 %shr269 to i32
  %248 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i32, i32* %248, i64 40
  store i32 %conv270, i32* %arrayidx271, align 4, !tbaa !5
  %249 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.272

for.inc.272:                                      ; preds = %for.body.180
  %250 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %250, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.177

for.end.273:                                      ; preds = %for.cond.177
  %251 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #1
  %252 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #1
  %253 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #1
  %254 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #1
  %255 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %256 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #1
  %257 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  %266 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #1
  %267 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  %268 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  %269 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %270 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_12x6(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 48
  %16 = bitcast i32* %arrayidx to i8*
  %call = call i8* @memset(i8* %16, i32 0, i64 64) #3
  %17 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %17, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %18, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %20 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %20, i64 %idxprom
  %21 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %22 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %23 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv = zext i8 %24 to i32
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %25, i64 11
  %26 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %26 to i32
  %add = add nsw i32 %conv, %conv4
  %conv5 = sext i32 %add to i64
  store i64 %conv5, i64* %tmp0, align 8, !tbaa !8
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %conv7 = zext i8 %28 to i32
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %29, i64 10
  %30 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %30 to i32
  %add10 = add nsw i32 %conv7, %conv9
  %conv11 = sext i32 %add10 to i64
  store i64 %conv11, i64* %tmp1, align 8, !tbaa !8
  %31 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %31, i64 2
  %32 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %conv13 = zext i8 %32 to i32
  %33 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %33, i64 9
  %34 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %conv15 = zext i8 %34 to i32
  %add16 = add nsw i32 %conv13, %conv15
  %conv17 = sext i32 %add16 to i64
  store i64 %conv17, i64* %tmp2, align 8, !tbaa !8
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %35, i64 3
  %36 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %36 to i32
  %37 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %37, i64 8
  %38 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %38 to i32
  %add22 = add nsw i32 %conv19, %conv21
  %conv23 = sext i32 %add22 to i64
  store i64 %conv23, i64* %tmp3, align 8, !tbaa !8
  %39 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %39, i64 4
  %40 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %40 to i32
  %41 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %41, i64 7
  %42 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %42 to i32
  %add28 = add nsw i32 %conv25, %conv27
  %conv29 = sext i32 %add28 to i64
  store i64 %conv29, i64* %tmp4, align 8, !tbaa !8
  %43 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %43, i64 5
  %44 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = zext i8 %44 to i32
  %45 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %45, i64 6
  %46 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %46 to i32
  %add34 = add nsw i32 %conv31, %conv33
  %conv35 = sext i32 %add34 to i64
  store i64 %conv35, i64* %tmp5, align 8, !tbaa !8
  %47 = load i64, i64* %tmp0, align 8, !tbaa !8
  %48 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add36 = add nsw i64 %47, %48
  store i64 %add36, i64* %tmp10, align 8, !tbaa !8
  %49 = load i64, i64* %tmp0, align 8, !tbaa !8
  %50 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub = sub nsw i64 %49, %50
  store i64 %sub, i64* %tmp13, align 8, !tbaa !8
  %51 = load i64, i64* %tmp1, align 8, !tbaa !8
  %52 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add37 = add nsw i64 %51, %52
  store i64 %add37, i64* %tmp11, align 8, !tbaa !8
  %53 = load i64, i64* %tmp1, align 8, !tbaa !8
  %54 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub38 = sub nsw i64 %53, %54
  store i64 %sub38, i64* %tmp14, align 8, !tbaa !8
  %55 = load i64, i64* %tmp2, align 8, !tbaa !8
  %56 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add39 = add nsw i64 %55, %56
  store i64 %add39, i64* %tmp12, align 8, !tbaa !8
  %57 = load i64, i64* %tmp2, align 8, !tbaa !8
  %58 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub40 = sub nsw i64 %57, %58
  store i64 %sub40, i64* %tmp15, align 8, !tbaa !8
  %59 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %59, i64 0
  %60 = load i8, i8* %arrayidx41, align 1, !tbaa !7
  %conv42 = zext i8 %60 to i32
  %61 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %61, i64 11
  %62 = load i8, i8* %arrayidx43, align 1, !tbaa !7
  %conv44 = zext i8 %62 to i32
  %sub45 = sub nsw i32 %conv42, %conv44
  %conv46 = sext i32 %sub45 to i64
  store i64 %conv46, i64* %tmp0, align 8, !tbaa !8
  %63 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx47, align 1, !tbaa !7
  %conv48 = zext i8 %64 to i32
  %65 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %65, i64 10
  %66 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = zext i8 %66 to i32
  %sub51 = sub nsw i32 %conv48, %conv50
  %conv52 = sext i32 %sub51 to i64
  store i64 %conv52, i64* %tmp1, align 8, !tbaa !8
  %67 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %67, i64 2
  %68 = load i8, i8* %arrayidx53, align 1, !tbaa !7
  %conv54 = zext i8 %68 to i32
  %69 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %69, i64 9
  %70 = load i8, i8* %arrayidx55, align 1, !tbaa !7
  %conv56 = zext i8 %70 to i32
  %sub57 = sub nsw i32 %conv54, %conv56
  %conv58 = sext i32 %sub57 to i64
  store i64 %conv58, i64* %tmp2, align 8, !tbaa !8
  %71 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %71, i64 3
  %72 = load i8, i8* %arrayidx59, align 1, !tbaa !7
  %conv60 = zext i8 %72 to i32
  %73 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %73, i64 8
  %74 = load i8, i8* %arrayidx61, align 1, !tbaa !7
  %conv62 = zext i8 %74 to i32
  %sub63 = sub nsw i32 %conv60, %conv62
  %conv64 = sext i32 %sub63 to i64
  store i64 %conv64, i64* %tmp3, align 8, !tbaa !8
  %75 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %75, i64 4
  %76 = load i8, i8* %arrayidx65, align 1, !tbaa !7
  %conv66 = zext i8 %76 to i32
  %77 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %77, i64 7
  %78 = load i8, i8* %arrayidx67, align 1, !tbaa !7
  %conv68 = zext i8 %78 to i32
  %sub69 = sub nsw i32 %conv66, %conv68
  %conv70 = sext i32 %sub69 to i64
  store i64 %conv70, i64* %tmp4, align 8, !tbaa !8
  %79 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %79, i64 5
  %80 = load i8, i8* %arrayidx71, align 1, !tbaa !7
  %conv72 = zext i8 %80 to i32
  %81 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %81, i64 6
  %82 = load i8, i8* %arrayidx73, align 1, !tbaa !7
  %conv74 = zext i8 %82 to i32
  %sub75 = sub nsw i32 %conv72, %conv74
  %conv76 = sext i32 %sub75 to i64
  store i64 %conv76, i64* %tmp5, align 8, !tbaa !8
  %83 = load i64, i64* %tmp10, align 8, !tbaa !8
  %84 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add77 = add nsw i64 %83, %84
  %85 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add78 = add nsw i64 %add77, %85
  %sub79 = sub nsw i64 %add78, 1536
  %shl = shl i64 %sub79, 2
  %conv80 = trunc i64 %shl to i32
  %86 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %conv80, i32* %arrayidx81, align 4, !tbaa !5
  %87 = load i64, i64* %tmp13, align 8, !tbaa !8
  %88 = load i64, i64* %tmp14, align 8, !tbaa !8
  %sub82 = sub nsw i64 %87, %88
  %89 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub83 = sub nsw i64 %sub82, %89
  %shl84 = shl i64 %sub83, 2
  %conv85 = trunc i64 %shl84 to i32
  %90 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i32, i32* %90, i64 6
  store i32 %conv85, i32* %arrayidx86, align 4, !tbaa !5
  %91 = load i64, i64* %tmp10, align 8, !tbaa !8
  %92 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub87 = sub nsw i64 %91, %92
  %mul = mul nsw i64 %sub87, 10033
  %add88 = add nsw i64 %mul, 1024
  %shr = ashr i64 %add88, 11
  %conv89 = trunc i64 %shr to i32
  %93 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i32, i32* %93, i64 4
  store i32 %conv89, i32* %arrayidx90, align 4, !tbaa !5
  %94 = load i64, i64* %tmp14, align 8, !tbaa !8
  %95 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub91 = sub nsw i64 %94, %95
  %96 = load i64, i64* %tmp13, align 8, !tbaa !8
  %97 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add92 = add nsw i64 %96, %97
  %mul93 = mul nsw i64 %add92, 11190
  %add94 = add nsw i64 %sub91, %mul93
  %add95 = add nsw i64 %add94, 1024
  %shr96 = ashr i64 %add95, 11
  %conv97 = trunc i64 %shr96 to i32
  %98 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %conv97, i32* %arrayidx98, align 4, !tbaa !5
  %99 = load i64, i64* %tmp1, align 8, !tbaa !8
  %100 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add99 = add nsw i64 %99, %100
  %mul100 = mul nsw i64 %add99, 4433
  store i64 %mul100, i64* %tmp10, align 8, !tbaa !8
  %101 = load i64, i64* %tmp10, align 8, !tbaa !8
  %102 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul101 = mul nsw i64 %102, 6270
  %add102 = add nsw i64 %101, %mul101
  store i64 %add102, i64* %tmp14, align 8, !tbaa !8
  %103 = load i64, i64* %tmp10, align 8, !tbaa !8
  %104 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul103 = mul nsw i64 %104, 15137
  %sub104 = sub nsw i64 %103, %mul103
  store i64 %sub104, i64* %tmp15, align 8, !tbaa !8
  %105 = load i64, i64* %tmp0, align 8, !tbaa !8
  %106 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add105 = add nsw i64 %105, %106
  %mul106 = mul nsw i64 %add105, 9191
  store i64 %mul106, i64* %tmp12, align 8, !tbaa !8
  %107 = load i64, i64* %tmp0, align 8, !tbaa !8
  %108 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add107 = add nsw i64 %107, %108
  %mul108 = mul nsw i64 %add107, 7053
  store i64 %mul108, i64* %tmp13, align 8, !tbaa !8
  %109 = load i64, i64* %tmp12, align 8, !tbaa !8
  %110 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add109 = add nsw i64 %109, %110
  %111 = load i64, i64* %tmp14, align 8, !tbaa !8
  %add110 = add nsw i64 %add109, %111
  %112 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul111 = mul nsw i64 %112, 4758
  %sub112 = sub nsw i64 %add110, %mul111
  %113 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul113 = mul nsw i64 %113, 1512
  %add114 = add nsw i64 %sub112, %mul113
  store i64 %add114, i64* %tmp10, align 8, !tbaa !8
  %114 = load i64, i64* %tmp2, align 8, !tbaa !8
  %115 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add115 = add nsw i64 %114, %115
  %mul116 = mul nsw i64 %add115, -1512
  store i64 %mul116, i64* %tmp11, align 8, !tbaa !8
  %116 = load i64, i64* %tmp11, align 8, !tbaa !8
  %117 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub117 = sub nsw i64 %116, %117
  %118 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul118 = mul nsw i64 %118, 19165
  %sub119 = sub nsw i64 %sub117, %mul118
  %119 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul120 = mul nsw i64 %119, 7053
  %add121 = add nsw i64 %sub119, %mul120
  %120 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add122 = add nsw i64 %120, %add121
  store i64 %add122, i64* %tmp12, align 8, !tbaa !8
  %121 = load i64, i64* %tmp11, align 8, !tbaa !8
  %122 = load i64, i64* %tmp14, align 8, !tbaa !8
  %sub123 = sub nsw i64 %121, %122
  %123 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul124 = mul nsw i64 %123, 5946
  %add125 = add nsw i64 %sub123, %mul124
  %124 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul126 = mul nsw i64 %124, 9191
  %sub127 = sub nsw i64 %add125, %mul126
  %125 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add128 = add nsw i64 %125, %sub127
  store i64 %add128, i64* %tmp13, align 8, !tbaa !8
  %126 = load i64, i64* %tmp15, align 8, !tbaa !8
  %127 = load i64, i64* %tmp0, align 8, !tbaa !8
  %128 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub129 = sub nsw i64 %127, %128
  %mul130 = mul nsw i64 %sub129, 10703
  %add131 = add nsw i64 %126, %mul130
  %129 = load i64, i64* %tmp2, align 8, !tbaa !8
  %130 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add132 = add nsw i64 %129, %130
  %mul133 = mul nsw i64 %add132, 4433
  %sub134 = sub nsw i64 %add131, %mul133
  store i64 %sub134, i64* %tmp11, align 8, !tbaa !8
  %131 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add135 = add nsw i64 %131, 1024
  %shr136 = ashr i64 %add135, 11
  %conv137 = trunc i64 %shr136 to i32
  %132 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 %conv137, i32* %arrayidx138, align 4, !tbaa !5
  %133 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add139 = add nsw i64 %133, 1024
  %shr140 = ashr i64 %add139, 11
  %conv141 = trunc i64 %shr140 to i32
  %134 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i32, i32* %134, i64 3
  store i32 %conv141, i32* %arrayidx142, align 4, !tbaa !5
  %135 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add143 = add nsw i64 %135, 1024
  %shr144 = ashr i64 %add143, 11
  %conv145 = trunc i64 %shr144 to i32
  %136 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i32, i32* %136, i64 5
  store i32 %conv145, i32* %arrayidx146, align 4, !tbaa !5
  %137 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add147 = add nsw i64 %137, 1024
  %shr148 = ashr i64 %add147, 11
  %conv149 = trunc i64 %shr148 to i32
  %138 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i32, i32* %138, i64 7
  store i32 %conv149, i32* %arrayidx150, align 4, !tbaa !5
  %139 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr151 = getelementptr inbounds i32, i32* %139, i64 8
  store i32* %add.ptr151, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %140 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %141 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %141, i32** %dataptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.223, %for.end
  %142 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp153 = icmp sge i32 %142, 0
  br i1 %cmp153, label %for.body.155, label %for.end.224

for.body.155:                                     ; preds = %for.cond.152
  %143 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i32, i32* %143, i64 0
  %144 = load i32, i32* %arrayidx156, align 4, !tbaa !5
  %145 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i32, i32* %145, i64 40
  %146 = load i32, i32* %arrayidx157, align 4, !tbaa !5
  %add158 = add nsw i32 %144, %146
  %conv159 = sext i32 %add158 to i64
  store i64 %conv159, i64* %tmp0, align 8, !tbaa !8
  %147 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i32, i32* %147, i64 8
  %148 = load i32, i32* %arrayidx160, align 4, !tbaa !5
  %149 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i32, i32* %149, i64 32
  %150 = load i32, i32* %arrayidx161, align 4, !tbaa !5
  %add162 = add nsw i32 %148, %150
  %conv163 = sext i32 %add162 to i64
  store i64 %conv163, i64* %tmp11, align 8, !tbaa !8
  %151 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i32, i32* %151, i64 16
  %152 = load i32, i32* %arrayidx164, align 4, !tbaa !5
  %153 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i32, i32* %153, i64 24
  %154 = load i32, i32* %arrayidx165, align 4, !tbaa !5
  %add166 = add nsw i32 %152, %154
  %conv167 = sext i32 %add166 to i64
  store i64 %conv167, i64* %tmp2, align 8, !tbaa !8
  %155 = load i64, i64* %tmp0, align 8, !tbaa !8
  %156 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add168 = add nsw i64 %155, %156
  store i64 %add168, i64* %tmp10, align 8, !tbaa !8
  %157 = load i64, i64* %tmp0, align 8, !tbaa !8
  %158 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub169 = sub nsw i64 %157, %158
  store i64 %sub169, i64* %tmp12, align 8, !tbaa !8
  %159 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i32, i32* %159, i64 0
  %160 = load i32, i32* %arrayidx170, align 4, !tbaa !5
  %161 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i32, i32* %161, i64 40
  %162 = load i32, i32* %arrayidx171, align 4, !tbaa !5
  %sub172 = sub nsw i32 %160, %162
  %conv173 = sext i32 %sub172 to i64
  store i64 %conv173, i64* %tmp0, align 8, !tbaa !8
  %163 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i32, i32* %163, i64 8
  %164 = load i32, i32* %arrayidx174, align 4, !tbaa !5
  %165 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i32, i32* %165, i64 32
  %166 = load i32, i32* %arrayidx175, align 4, !tbaa !5
  %sub176 = sub nsw i32 %164, %166
  %conv177 = sext i32 %sub176 to i64
  store i64 %conv177, i64* %tmp1, align 8, !tbaa !8
  %167 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i32, i32* %167, i64 16
  %168 = load i32, i32* %arrayidx178, align 4, !tbaa !5
  %169 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i32, i32* %169, i64 24
  %170 = load i32, i32* %arrayidx179, align 4, !tbaa !5
  %sub180 = sub nsw i32 %168, %170
  %conv181 = sext i32 %sub180 to i64
  store i64 %conv181, i64* %tmp2, align 8, !tbaa !8
  %171 = load i64, i64* %tmp10, align 8, !tbaa !8
  %172 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add182 = add nsw i64 %171, %172
  %mul183 = mul nsw i64 %add182, 14564
  %add184 = add nsw i64 %mul183, 32768
  %shr185 = ashr i64 %add184, 16
  %conv186 = trunc i64 %shr185 to i32
  %173 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %conv186, i32* %arrayidx187, align 4, !tbaa !5
  %174 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul188 = mul nsw i64 %174, 17837
  %add189 = add nsw i64 %mul188, 32768
  %shr190 = ashr i64 %add189, 16
  %conv191 = trunc i64 %shr190 to i32
  %175 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i32, i32* %175, i64 16
  store i32 %conv191, i32* %arrayidx192, align 4, !tbaa !5
  %176 = load i64, i64* %tmp10, align 8, !tbaa !8
  %177 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub193 = sub nsw i64 %176, %177
  %178 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub194 = sub nsw i64 %sub193, %178
  %mul195 = mul nsw i64 %sub194, 10298
  %add196 = add nsw i64 %mul195, 32768
  %shr197 = ashr i64 %add196, 16
  %conv198 = trunc i64 %shr197 to i32
  %179 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i32, i32* %179, i64 32
  store i32 %conv198, i32* %arrayidx199, align 4, !tbaa !5
  %180 = load i64, i64* %tmp0, align 8, !tbaa !8
  %181 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add200 = add nsw i64 %180, %181
  %mul201 = mul nsw i64 %add200, 5331
  store i64 %mul201, i64* %tmp10, align 8, !tbaa !8
  %182 = load i64, i64* %tmp10, align 8, !tbaa !8
  %183 = load i64, i64* %tmp0, align 8, !tbaa !8
  %184 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add202 = add nsw i64 %183, %184
  %mul203 = mul nsw i64 %add202, 14564
  %add204 = add nsw i64 %182, %mul203
  %add205 = add nsw i64 %add204, 32768
  %shr206 = ashr i64 %add205, 16
  %conv207 = trunc i64 %shr206 to i32
  %185 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i32, i32* %185, i64 8
  store i32 %conv207, i32* %arrayidx208, align 4, !tbaa !5
  %186 = load i64, i64* %tmp0, align 8, !tbaa !8
  %187 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub209 = sub nsw i64 %186, %187
  %188 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub210 = sub nsw i64 %sub209, %188
  %mul211 = mul nsw i64 %sub210, 14564
  %add212 = add nsw i64 %mul211, 32768
  %shr213 = ashr i64 %add212, 16
  %conv214 = trunc i64 %shr213 to i32
  %189 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i32, i32* %189, i64 24
  store i32 %conv214, i32* %arrayidx215, align 4, !tbaa !5
  %190 = load i64, i64* %tmp10, align 8, !tbaa !8
  %191 = load i64, i64* %tmp2, align 8, !tbaa !8
  %192 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub216 = sub nsw i64 %191, %192
  %mul217 = mul nsw i64 %sub216, 14564
  %add218 = add nsw i64 %190, %mul217
  %add219 = add nsw i64 %add218, 32768
  %shr220 = ashr i64 %add219, 16
  %conv221 = trunc i64 %shr220 to i32
  %193 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i32, i32* %193, i64 40
  store i32 %conv221, i32* %arrayidx222, align 4, !tbaa !5
  %194 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.155
  %195 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %195, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.152

for.end.224:                                      ; preds = %for.cond.152
  %196 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_10x5(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 40
  %14 = bitcast i32* %arrayidx to i8*
  %call = call i8* @memset(i8* %14, i32 0, i64 96) #3
  %15 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %15, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %20 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %21 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv = zext i8 %22 to i32
  %23 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %23, i64 9
  %24 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %24 to i32
  %add = add nsw i32 %conv, %conv4
  %conv5 = sext i32 %add to i64
  store i64 %conv5, i64* %tmp0, align 8, !tbaa !8
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %conv7 = zext i8 %26 to i32
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %27, i64 8
  %28 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %28 to i32
  %add10 = add nsw i32 %conv7, %conv9
  %conv11 = sext i32 %add10 to i64
  store i64 %conv11, i64* %tmp1, align 8, !tbaa !8
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %conv13 = zext i8 %30 to i32
  %31 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %31, i64 7
  %32 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %conv15 = zext i8 %32 to i32
  %add16 = add nsw i32 %conv13, %conv15
  %conv17 = sext i32 %add16 to i64
  store i64 %conv17, i64* %tmp12, align 8, !tbaa !8
  %33 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %33, i64 3
  %34 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %34 to i32
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %35, i64 6
  %36 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %36 to i32
  %add22 = add nsw i32 %conv19, %conv21
  %conv23 = sext i32 %add22 to i64
  store i64 %conv23, i64* %tmp3, align 8, !tbaa !8
  %37 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %37, i64 4
  %38 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %38 to i32
  %39 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %39, i64 5
  %40 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %40 to i32
  %add28 = add nsw i32 %conv25, %conv27
  %conv29 = sext i32 %add28 to i64
  store i64 %conv29, i64* %tmp4, align 8, !tbaa !8
  %41 = load i64, i64* %tmp0, align 8, !tbaa !8
  %42 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add30 = add nsw i64 %41, %42
  store i64 %add30, i64* %tmp10, align 8, !tbaa !8
  %43 = load i64, i64* %tmp0, align 8, !tbaa !8
  %44 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub = sub nsw i64 %43, %44
  store i64 %sub, i64* %tmp13, align 8, !tbaa !8
  %45 = load i64, i64* %tmp1, align 8, !tbaa !8
  %46 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add31 = add nsw i64 %45, %46
  store i64 %add31, i64* %tmp11, align 8, !tbaa !8
  %47 = load i64, i64* %tmp1, align 8, !tbaa !8
  %48 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub32 = sub nsw i64 %47, %48
  store i64 %sub32, i64* %tmp14, align 8, !tbaa !8
  %49 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx33, align 1, !tbaa !7
  %conv34 = zext i8 %50 to i32
  %51 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %51, i64 9
  %52 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = zext i8 %52 to i32
  %sub37 = sub nsw i32 %conv34, %conv36
  %conv38 = sext i32 %sub37 to i64
  store i64 %conv38, i64* %tmp0, align 8, !tbaa !8
  %53 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx39, align 1, !tbaa !7
  %conv40 = zext i8 %54 to i32
  %55 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %55, i64 8
  %56 = load i8, i8* %arrayidx41, align 1, !tbaa !7
  %conv42 = zext i8 %56 to i32
  %sub43 = sub nsw i32 %conv40, %conv42
  %conv44 = sext i32 %sub43 to i64
  store i64 %conv44, i64* %tmp1, align 8, !tbaa !8
  %57 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx45, align 1, !tbaa !7
  %conv46 = zext i8 %58 to i32
  %59 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %59, i64 7
  %60 = load i8, i8* %arrayidx47, align 1, !tbaa !7
  %conv48 = zext i8 %60 to i32
  %sub49 = sub nsw i32 %conv46, %conv48
  %conv50 = sext i32 %sub49 to i64
  store i64 %conv50, i64* %tmp2, align 8, !tbaa !8
  %61 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %61, i64 3
  %62 = load i8, i8* %arrayidx51, align 1, !tbaa !7
  %conv52 = zext i8 %62 to i32
  %63 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %63, i64 6
  %64 = load i8, i8* %arrayidx53, align 1, !tbaa !7
  %conv54 = zext i8 %64 to i32
  %sub55 = sub nsw i32 %conv52, %conv54
  %conv56 = sext i32 %sub55 to i64
  store i64 %conv56, i64* %tmp3, align 8, !tbaa !8
  %65 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %65, i64 4
  %66 = load i8, i8* %arrayidx57, align 1, !tbaa !7
  %conv58 = zext i8 %66 to i32
  %67 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %67, i64 5
  %68 = load i8, i8* %arrayidx59, align 1, !tbaa !7
  %conv60 = zext i8 %68 to i32
  %sub61 = sub nsw i32 %conv58, %conv60
  %conv62 = sext i32 %sub61 to i64
  store i64 %conv62, i64* %tmp4, align 8, !tbaa !8
  %69 = load i64, i64* %tmp10, align 8, !tbaa !8
  %70 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add63 = add nsw i64 %69, %70
  %71 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add64 = add nsw i64 %add63, %71
  %sub65 = sub nsw i64 %add64, 1280
  %shl = shl i64 %sub65, 2
  %conv66 = trunc i64 %shl to i32
  %72 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %conv66, i32* %arrayidx67, align 4, !tbaa !5
  %73 = load i64, i64* %tmp12, align 8, !tbaa !8
  %74 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add68 = add nsw i64 %74, %73
  store i64 %add68, i64* %tmp12, align 8, !tbaa !8
  %75 = load i64, i64* %tmp10, align 8, !tbaa !8
  %76 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub69 = sub nsw i64 %75, %76
  %mul = mul nsw i64 %sub69, 9373
  %77 = load i64, i64* %tmp11, align 8, !tbaa !8
  %78 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub70 = sub nsw i64 %77, %78
  %mul71 = mul nsw i64 %sub70, 3580
  %sub72 = sub nsw i64 %mul, %mul71
  %add73 = add nsw i64 %sub72, 1024
  %shr = ashr i64 %add73, 11
  %conv74 = trunc i64 %shr to i32
  %79 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %79, i64 4
  store i32 %conv74, i32* %arrayidx75, align 4, !tbaa !5
  %80 = load i64, i64* %tmp13, align 8, !tbaa !8
  %81 = load i64, i64* %tmp14, align 8, !tbaa !8
  %add76 = add nsw i64 %80, %81
  %mul77 = mul nsw i64 %add76, 6810
  store i64 %mul77, i64* %tmp10, align 8, !tbaa !8
  %82 = load i64, i64* %tmp10, align 8, !tbaa !8
  %83 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul78 = mul nsw i64 %83, 4209
  %add79 = add nsw i64 %82, %mul78
  %add80 = add nsw i64 %add79, 1024
  %shr81 = ashr i64 %add80, 11
  %conv82 = trunc i64 %shr81 to i32
  %84 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 %conv82, i32* %arrayidx83, align 4, !tbaa !5
  %85 = load i64, i64* %tmp10, align 8, !tbaa !8
  %86 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul84 = mul nsw i64 %86, 17828
  %sub85 = sub nsw i64 %85, %mul84
  %add86 = add nsw i64 %sub85, 1024
  %shr87 = ashr i64 %add86, 11
  %conv88 = trunc i64 %shr87 to i32
  %87 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i32, i32* %87, i64 6
  store i32 %conv88, i32* %arrayidx89, align 4, !tbaa !5
  %88 = load i64, i64* %tmp0, align 8, !tbaa !8
  %89 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add90 = add nsw i64 %88, %89
  store i64 %add90, i64* %tmp10, align 8, !tbaa !8
  %90 = load i64, i64* %tmp1, align 8, !tbaa !8
  %91 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub91 = sub nsw i64 %90, %91
  store i64 %sub91, i64* %tmp11, align 8, !tbaa !8
  %92 = load i64, i64* %tmp10, align 8, !tbaa !8
  %93 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub92 = sub nsw i64 %92, %93
  %94 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub93 = sub nsw i64 %sub92, %94
  %shl94 = shl i64 %sub93, 2
  %conv95 = trunc i64 %shl94 to i32
  %95 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %95, i64 5
  store i32 %conv95, i32* %arrayidx96, align 4, !tbaa !5
  %96 = load i64, i64* %tmp2, align 8, !tbaa !8
  %shl97 = shl i64 %96, 13
  store i64 %shl97, i64* %tmp2, align 8, !tbaa !8
  %97 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul98 = mul nsw i64 %97, 11443
  %98 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul99 = mul nsw i64 %98, 10323
  %add100 = add nsw i64 %mul98, %mul99
  %99 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add101 = add nsw i64 %add100, %99
  %100 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul102 = mul nsw i64 %100, 5260
  %add103 = add nsw i64 %add101, %mul102
  %101 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul104 = mul nsw i64 %101, 1812
  %add105 = add nsw i64 %add103, %mul104
  %add106 = add nsw i64 %add105, 1024
  %shr107 = ashr i64 %add106, 11
  %conv108 = trunc i64 %shr107 to i32
  %102 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %conv108, i32* %arrayidx109, align 4, !tbaa !5
  %103 = load i64, i64* %tmp0, align 8, !tbaa !8
  %104 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub110 = sub nsw i64 %103, %104
  %mul111 = mul nsw i64 %sub110, 7791
  %105 = load i64, i64* %tmp1, align 8, !tbaa !8
  %106 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add112 = add nsw i64 %105, %106
  %mul113 = mul nsw i64 %add112, 4815
  %sub114 = sub nsw i64 %mul111, %mul113
  store i64 %sub114, i64* %tmp12, align 8, !tbaa !8
  %107 = load i64, i64* %tmp10, align 8, !tbaa !8
  %108 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add115 = add nsw i64 %107, %108
  %mul116 = mul nsw i64 %add115, 2531
  %109 = load i64, i64* %tmp11, align 8, !tbaa !8
  %shl117 = shl i64 %109, 12
  %add118 = add nsw i64 %mul116, %shl117
  %110 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub119 = sub nsw i64 %add118, %110
  store i64 %sub119, i64* %tmp13, align 8, !tbaa !8
  %111 = load i64, i64* %tmp12, align 8, !tbaa !8
  %112 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add120 = add nsw i64 %111, %112
  %add121 = add nsw i64 %add120, 1024
  %shr122 = ashr i64 %add121, 11
  %conv123 = trunc i64 %shr122 to i32
  %113 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i32, i32* %113, i64 3
  store i32 %conv123, i32* %arrayidx124, align 4, !tbaa !5
  %114 = load i64, i64* %tmp12, align 8, !tbaa !8
  %115 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub125 = sub nsw i64 %114, %115
  %add126 = add nsw i64 %sub125, 1024
  %shr127 = ashr i64 %add126, 11
  %conv128 = trunc i64 %shr127 to i32
  %116 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i32, i32* %116, i64 7
  store i32 %conv128, i32* %arrayidx129, align 4, !tbaa !5
  %117 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr130 = getelementptr inbounds i32, i32* %117, i64 8
  store i32* %add.ptr130, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %118 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %119 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %119, i32** %dataptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.189, %for.end
  %120 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp132 = icmp sge i32 %120, 0
  br i1 %cmp132, label %for.body.134, label %for.end.190

for.body.134:                                     ; preds = %for.cond.131
  %121 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i32, i32* %121, i64 0
  %122 = load i32, i32* %arrayidx135, align 4, !tbaa !5
  %123 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i32, i32* %123, i64 32
  %124 = load i32, i32* %arrayidx136, align 4, !tbaa !5
  %add137 = add nsw i32 %122, %124
  %conv138 = sext i32 %add137 to i64
  store i64 %conv138, i64* %tmp0, align 8, !tbaa !8
  %125 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i32, i32* %125, i64 8
  %126 = load i32, i32* %arrayidx139, align 4, !tbaa !5
  %127 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i32, i32* %127, i64 24
  %128 = load i32, i32* %arrayidx140, align 4, !tbaa !5
  %add141 = add nsw i32 %126, %128
  %conv142 = sext i32 %add141 to i64
  store i64 %conv142, i64* %tmp1, align 8, !tbaa !8
  %129 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i32, i32* %129, i64 16
  %130 = load i32, i32* %arrayidx143, align 4, !tbaa !5
  %conv144 = sext i32 %130 to i64
  store i64 %conv144, i64* %tmp2, align 8, !tbaa !8
  %131 = load i64, i64* %tmp0, align 8, !tbaa !8
  %132 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add145 = add nsw i64 %131, %132
  store i64 %add145, i64* %tmp10, align 8, !tbaa !8
  %133 = load i64, i64* %tmp0, align 8, !tbaa !8
  %134 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub146 = sub nsw i64 %133, %134
  store i64 %sub146, i64* %tmp11, align 8, !tbaa !8
  %135 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i32, i32* %135, i64 0
  %136 = load i32, i32* %arrayidx147, align 4, !tbaa !5
  %137 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i32, i32* %137, i64 32
  %138 = load i32, i32* %arrayidx148, align 4, !tbaa !5
  %sub149 = sub nsw i32 %136, %138
  %conv150 = sext i32 %sub149 to i64
  store i64 %conv150, i64* %tmp0, align 8, !tbaa !8
  %139 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i32, i32* %139, i64 8
  %140 = load i32, i32* %arrayidx151, align 4, !tbaa !5
  %141 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i32, i32* %141, i64 24
  %142 = load i32, i32* %arrayidx152, align 4, !tbaa !5
  %sub153 = sub nsw i32 %140, %142
  %conv154 = sext i32 %sub153 to i64
  store i64 %conv154, i64* %tmp1, align 8, !tbaa !8
  %143 = load i64, i64* %tmp10, align 8, !tbaa !8
  %144 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add155 = add nsw i64 %143, %144
  %mul156 = mul nsw i64 %add155, 10486
  %add157 = add nsw i64 %mul156, 16384
  %shr158 = ashr i64 %add157, 15
  %conv159 = trunc i64 %shr158 to i32
  %145 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %conv159, i32* %arrayidx160, align 4, !tbaa !5
  %146 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul161 = mul nsw i64 %146, 8290
  store i64 %mul161, i64* %tmp11, align 8, !tbaa !8
  %147 = load i64, i64* %tmp2, align 8, !tbaa !8
  %shl162 = shl i64 %147, 2
  %148 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub163 = sub nsw i64 %148, %shl162
  store i64 %sub163, i64* %tmp10, align 8, !tbaa !8
  %149 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul164 = mul nsw i64 %149, 3707
  store i64 %mul164, i64* %tmp10, align 8, !tbaa !8
  %150 = load i64, i64* %tmp11, align 8, !tbaa !8
  %151 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add165 = add nsw i64 %150, %151
  %add166 = add nsw i64 %add165, 16384
  %shr167 = ashr i64 %add166, 15
  %conv168 = trunc i64 %shr167 to i32
  %152 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds i32, i32* %152, i64 16
  store i32 %conv168, i32* %arrayidx169, align 4, !tbaa !5
  %153 = load i64, i64* %tmp11, align 8, !tbaa !8
  %154 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub170 = sub nsw i64 %153, %154
  %add171 = add nsw i64 %sub170, 16384
  %shr172 = ashr i64 %add171, 15
  %conv173 = trunc i64 %shr172 to i32
  %155 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i32, i32* %155, i64 32
  store i32 %conv173, i32* %arrayidx174, align 4, !tbaa !5
  %156 = load i64, i64* %tmp0, align 8, !tbaa !8
  %157 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add175 = add nsw i64 %156, %157
  %mul176 = mul nsw i64 %add175, 8716
  store i64 %mul176, i64* %tmp10, align 8, !tbaa !8
  %158 = load i64, i64* %tmp10, align 8, !tbaa !8
  %159 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul177 = mul nsw i64 %159, 5387
  %add178 = add nsw i64 %158, %mul177
  %add179 = add nsw i64 %add178, 16384
  %shr180 = ashr i64 %add179, 15
  %conv181 = trunc i64 %shr180 to i32
  %160 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i32, i32* %160, i64 8
  store i32 %conv181, i32* %arrayidx182, align 4, !tbaa !5
  %161 = load i64, i64* %tmp10, align 8, !tbaa !8
  %162 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul183 = mul nsw i64 %162, 22820
  %sub184 = sub nsw i64 %161, %mul183
  %add185 = add nsw i64 %sub184, 16384
  %shr186 = ashr i64 %add185, 15
  %conv187 = trunc i64 %shr186 to i32
  %163 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i32, i32* %163, i64 24
  store i32 %conv187, i32* %arrayidx188, align 4, !tbaa !5
  %164 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.body.134
  %165 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %165, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.131

for.end.190:                                      ; preds = %for.cond.131
  %166 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_8x4(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 32
  %13 = bitcast i32* %arrayidx to i8*
  %call = call i8* @memset(i8* %13, i32 0, i64 128) #3
  %14 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %14, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %19 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %20 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv = zext i8 %21 to i32
  %22 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %22, i64 7
  %23 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %23 to i32
  %add = add nsw i32 %conv, %conv4
  %conv5 = sext i32 %add to i64
  store i64 %conv5, i64* %tmp0, align 8, !tbaa !8
  %24 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %conv7 = zext i8 %25 to i32
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %26, i64 6
  %27 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %27 to i32
  %add10 = add nsw i32 %conv7, %conv9
  %conv11 = sext i32 %add10 to i64
  store i64 %conv11, i64* %tmp1, align 8, !tbaa !8
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %conv13 = zext i8 %29 to i32
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %30, i64 5
  %31 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %conv15 = zext i8 %31 to i32
  %add16 = add nsw i32 %conv13, %conv15
  %conv17 = sext i32 %add16 to i64
  store i64 %conv17, i64* %tmp2, align 8, !tbaa !8
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %32, i64 3
  %33 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %33 to i32
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %34, i64 4
  %35 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %35 to i32
  %add22 = add nsw i32 %conv19, %conv21
  %conv23 = sext i32 %add22 to i64
  store i64 %conv23, i64* %tmp3, align 8, !tbaa !8
  %36 = load i64, i64* %tmp0, align 8, !tbaa !8
  %37 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add24 = add nsw i64 %36, %37
  store i64 %add24, i64* %tmp10, align 8, !tbaa !8
  %38 = load i64, i64* %tmp0, align 8, !tbaa !8
  %39 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub = sub nsw i64 %38, %39
  store i64 %sub, i64* %tmp12, align 8, !tbaa !8
  %40 = load i64, i64* %tmp1, align 8, !tbaa !8
  %41 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add25 = add nsw i64 %40, %41
  store i64 %add25, i64* %tmp11, align 8, !tbaa !8
  %42 = load i64, i64* %tmp1, align 8, !tbaa !8
  %43 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub26 = sub nsw i64 %42, %43
  store i64 %sub26, i64* %tmp13, align 8, !tbaa !8
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx27, align 1, !tbaa !7
  %conv28 = zext i8 %45 to i32
  %46 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %46, i64 7
  %47 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = zext i8 %47 to i32
  %sub31 = sub nsw i32 %conv28, %conv30
  %conv32 = sext i32 %sub31 to i64
  store i64 %conv32, i64* %tmp0, align 8, !tbaa !8
  %48 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx33, align 1, !tbaa !7
  %conv34 = zext i8 %49 to i32
  %50 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %50, i64 6
  %51 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = zext i8 %51 to i32
  %sub37 = sub nsw i32 %conv34, %conv36
  %conv38 = sext i32 %sub37 to i64
  store i64 %conv38, i64* %tmp1, align 8, !tbaa !8
  %52 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %52, i64 2
  %53 = load i8, i8* %arrayidx39, align 1, !tbaa !7
  %conv40 = zext i8 %53 to i32
  %54 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %54, i64 5
  %55 = load i8, i8* %arrayidx41, align 1, !tbaa !7
  %conv42 = zext i8 %55 to i32
  %sub43 = sub nsw i32 %conv40, %conv42
  %conv44 = sext i32 %sub43 to i64
  store i64 %conv44, i64* %tmp2, align 8, !tbaa !8
  %56 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %56, i64 3
  %57 = load i8, i8* %arrayidx45, align 1, !tbaa !7
  %conv46 = zext i8 %57 to i32
  %58 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %58, i64 4
  %59 = load i8, i8* %arrayidx47, align 1, !tbaa !7
  %conv48 = zext i8 %59 to i32
  %sub49 = sub nsw i32 %conv46, %conv48
  %conv50 = sext i32 %sub49 to i64
  store i64 %conv50, i64* %tmp3, align 8, !tbaa !8
  %60 = load i64, i64* %tmp10, align 8, !tbaa !8
  %61 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add51 = add nsw i64 %60, %61
  %sub52 = sub nsw i64 %add51, 1024
  %shl = shl i64 %sub52, 3
  %conv53 = trunc i64 %shl to i32
  %62 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %conv53, i32* %arrayidx54, align 4, !tbaa !5
  %63 = load i64, i64* %tmp10, align 8, !tbaa !8
  %64 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub55 = sub nsw i64 %63, %64
  %shl56 = shl i64 %sub55, 3
  %conv57 = trunc i64 %shl56 to i32
  %65 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 %conv57, i32* %arrayidx58, align 4, !tbaa !5
  %66 = load i64, i64* %tmp12, align 8, !tbaa !8
  %67 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add59 = add nsw i64 %66, %67
  %mul = mul nsw i64 %add59, 4433
  store i64 %mul, i64* %z1, align 8, !tbaa !8
  %68 = load i64, i64* %z1, align 8, !tbaa !8
  %add60 = add nsw i64 %68, 512
  store i64 %add60, i64* %z1, align 8, !tbaa !8
  %69 = load i64, i64* %z1, align 8, !tbaa !8
  %70 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul61 = mul nsw i64 %70, 6270
  %add62 = add nsw i64 %69, %mul61
  %shr = ashr i64 %add62, 10
  %conv63 = trunc i64 %shr to i32
  %71 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %conv63, i32* %arrayidx64, align 4, !tbaa !5
  %72 = load i64, i64* %z1, align 8, !tbaa !8
  %73 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul65 = mul nsw i64 %73, 15137
  %sub66 = sub nsw i64 %72, %mul65
  %shr67 = ashr i64 %sub66, 10
  %conv68 = trunc i64 %shr67 to i32
  %74 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i32, i32* %74, i64 6
  store i32 %conv68, i32* %arrayidx69, align 4, !tbaa !5
  %75 = load i64, i64* %tmp0, align 8, !tbaa !8
  %76 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add70 = add nsw i64 %75, %76
  store i64 %add70, i64* %tmp12, align 8, !tbaa !8
  %77 = load i64, i64* %tmp1, align 8, !tbaa !8
  %78 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add71 = add nsw i64 %77, %78
  store i64 %add71, i64* %tmp13, align 8, !tbaa !8
  %79 = load i64, i64* %tmp12, align 8, !tbaa !8
  %80 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add72 = add nsw i64 %79, %80
  %mul73 = mul nsw i64 %add72, 9633
  store i64 %mul73, i64* %z1, align 8, !tbaa !8
  %81 = load i64, i64* %z1, align 8, !tbaa !8
  %add74 = add nsw i64 %81, 512
  store i64 %add74, i64* %z1, align 8, !tbaa !8
  %82 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul75 = mul nsw i64 %82, -3196
  store i64 %mul75, i64* %tmp12, align 8, !tbaa !8
  %83 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul76 = mul nsw i64 %83, -16069
  store i64 %mul76, i64* %tmp13, align 8, !tbaa !8
  %84 = load i64, i64* %z1, align 8, !tbaa !8
  %85 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add77 = add nsw i64 %85, %84
  store i64 %add77, i64* %tmp12, align 8, !tbaa !8
  %86 = load i64, i64* %z1, align 8, !tbaa !8
  %87 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add78 = add nsw i64 %87, %86
  store i64 %add78, i64* %tmp13, align 8, !tbaa !8
  %88 = load i64, i64* %tmp0, align 8, !tbaa !8
  %89 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add79 = add nsw i64 %88, %89
  %mul80 = mul nsw i64 %add79, -7373
  store i64 %mul80, i64* %z1, align 8, !tbaa !8
  %90 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul81 = mul nsw i64 %90, 12299
  store i64 %mul81, i64* %tmp0, align 8, !tbaa !8
  %91 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul82 = mul nsw i64 %91, 2446
  store i64 %mul82, i64* %tmp3, align 8, !tbaa !8
  %92 = load i64, i64* %z1, align 8, !tbaa !8
  %93 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add83 = add nsw i64 %92, %93
  %94 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add84 = add nsw i64 %94, %add83
  store i64 %add84, i64* %tmp0, align 8, !tbaa !8
  %95 = load i64, i64* %z1, align 8, !tbaa !8
  %96 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add85 = add nsw i64 %95, %96
  %97 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add86 = add nsw i64 %97, %add85
  store i64 %add86, i64* %tmp3, align 8, !tbaa !8
  %98 = load i64, i64* %tmp1, align 8, !tbaa !8
  %99 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add87 = add nsw i64 %98, %99
  %mul88 = mul nsw i64 %add87, -20995
  store i64 %mul88, i64* %z1, align 8, !tbaa !8
  %100 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul89 = mul nsw i64 %100, 25172
  store i64 %mul89, i64* %tmp1, align 8, !tbaa !8
  %101 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul90 = mul nsw i64 %101, 16819
  store i64 %mul90, i64* %tmp2, align 8, !tbaa !8
  %102 = load i64, i64* %z1, align 8, !tbaa !8
  %103 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add91 = add nsw i64 %102, %103
  %104 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add92 = add nsw i64 %104, %add91
  store i64 %add92, i64* %tmp1, align 8, !tbaa !8
  %105 = load i64, i64* %z1, align 8, !tbaa !8
  %106 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add93 = add nsw i64 %105, %106
  %107 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add94 = add nsw i64 %107, %add93
  store i64 %add94, i64* %tmp2, align 8, !tbaa !8
  %108 = load i64, i64* %tmp0, align 8, !tbaa !8
  %shr95 = ashr i64 %108, 10
  %conv96 = trunc i64 %shr95 to i32
  %109 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %conv96, i32* %arrayidx97, align 4, !tbaa !5
  %110 = load i64, i64* %tmp1, align 8, !tbaa !8
  %shr98 = ashr i64 %110, 10
  %conv99 = trunc i64 %shr98 to i32
  %111 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 %conv99, i32* %arrayidx100, align 4, !tbaa !5
  %112 = load i64, i64* %tmp2, align 8, !tbaa !8
  %shr101 = ashr i64 %112, 10
  %conv102 = trunc i64 %shr101 to i32
  %113 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i32, i32* %113, i64 5
  store i32 %conv102, i32* %arrayidx103, align 4, !tbaa !5
  %114 = load i64, i64* %tmp3, align 8, !tbaa !8
  %shr104 = ashr i64 %114, 10
  %conv105 = trunc i64 %shr104 to i32
  %115 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i32, i32* %115, i64 7
  store i32 %conv105, i32* %arrayidx106, align 4, !tbaa !5
  %116 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr107 = getelementptr inbounds i32, i32* %116, i64 8
  store i32* %add.ptr107, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %117 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %117, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %118 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %118, i32** %dataptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.150, %for.end
  %119 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp109 = icmp sge i32 %119, 0
  br i1 %cmp109, label %for.body.111, label %for.end.151

for.body.111:                                     ; preds = %for.cond.108
  %120 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %120, i64 0
  %121 = load i32, i32* %arrayidx112, align 4, !tbaa !5
  %122 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i32, i32* %122, i64 24
  %123 = load i32, i32* %arrayidx113, align 4, !tbaa !5
  %add114 = add nsw i32 %121, %123
  %conv115 = sext i32 %add114 to i64
  %add116 = add nsw i64 %conv115, 2
  store i64 %add116, i64* %tmp0, align 8, !tbaa !8
  %124 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %124, i64 8
  %125 = load i32, i32* %arrayidx117, align 4, !tbaa !5
  %126 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i32, i32* %126, i64 16
  %127 = load i32, i32* %arrayidx118, align 4, !tbaa !5
  %add119 = add nsw i32 %125, %127
  %conv120 = sext i32 %add119 to i64
  store i64 %conv120, i64* %tmp1, align 8, !tbaa !8
  %128 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i32, i32* %128, i64 0
  %129 = load i32, i32* %arrayidx121, align 4, !tbaa !5
  %130 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i32, i32* %130, i64 24
  %131 = load i32, i32* %arrayidx122, align 4, !tbaa !5
  %sub123 = sub nsw i32 %129, %131
  %conv124 = sext i32 %sub123 to i64
  store i64 %conv124, i64* %tmp10, align 8, !tbaa !8
  %132 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i32, i32* %132, i64 8
  %133 = load i32, i32* %arrayidx125, align 4, !tbaa !5
  %134 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i32, i32* %134, i64 16
  %135 = load i32, i32* %arrayidx126, align 4, !tbaa !5
  %sub127 = sub nsw i32 %133, %135
  %conv128 = sext i32 %sub127 to i64
  store i64 %conv128, i64* %tmp11, align 8, !tbaa !8
  %136 = load i64, i64* %tmp0, align 8, !tbaa !8
  %137 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add129 = add nsw i64 %136, %137
  %shr130 = ashr i64 %add129, 2
  %conv131 = trunc i64 %shr130 to i32
  %138 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %conv131, i32* %arrayidx132, align 4, !tbaa !5
  %139 = load i64, i64* %tmp0, align 8, !tbaa !8
  %140 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub133 = sub nsw i64 %139, %140
  %shr134 = ashr i64 %sub133, 2
  %conv135 = trunc i64 %shr134 to i32
  %141 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i32, i32* %141, i64 16
  store i32 %conv135, i32* %arrayidx136, align 4, !tbaa !5
  %142 = load i64, i64* %tmp10, align 8, !tbaa !8
  %143 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add137 = add nsw i64 %142, %143
  %mul138 = mul nsw i64 %add137, 4433
  store i64 %mul138, i64* %tmp0, align 8, !tbaa !8
  %144 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add139 = add nsw i64 %144, 16384
  store i64 %add139, i64* %tmp0, align 8, !tbaa !8
  %145 = load i64, i64* %tmp0, align 8, !tbaa !8
  %146 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul140 = mul nsw i64 %146, 6270
  %add141 = add nsw i64 %145, %mul140
  %shr142 = ashr i64 %add141, 15
  %conv143 = trunc i64 %shr142 to i32
  %147 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i32, i32* %147, i64 8
  store i32 %conv143, i32* %arrayidx144, align 4, !tbaa !5
  %148 = load i64, i64* %tmp0, align 8, !tbaa !8
  %149 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul145 = mul nsw i64 %149, 15137
  %sub146 = sub nsw i64 %148, %mul145
  %shr147 = ashr i64 %sub146, 15
  %conv148 = trunc i64 %shr147 to i32
  %150 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i32, i32* %150, i64 24
  store i32 %conv148, i32* %arrayidx149, align 4, !tbaa !5
  %151 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.111
  %152 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %152, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.108

for.end.151:                                      ; preds = %for.cond.108
  %153 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_6x3(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %10 = bitcast i32* %9 to i8*
  %call = call i8* @memset(i8* %10, i32 0, i64 256) #3
  %11 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %11, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %16 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %17 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %18 to i32
  %19 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %19, i64 5
  %20 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %20 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %21 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %22 to i32
  %23 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %23, i64 4
  %24 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %24 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp11, align 8, !tbaa !8
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %26 to i32
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %28 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %29 = load i64, i64* %tmp0, align 8, !tbaa !8
  %30 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add17 = add nsw i64 %29, %30
  store i64 %add17, i64* %tmp10, align 8, !tbaa !8
  %31 = load i64, i64* %tmp0, align 8, !tbaa !8
  %32 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub = sub nsw i64 %31, %32
  store i64 %sub, i64* %tmp12, align 8, !tbaa !8
  %33 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %34 to i32
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %35, i64 5
  %36 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %36 to i32
  %sub22 = sub nsw i32 %conv19, %conv21
  %conv23 = sext i32 %sub22 to i64
  store i64 %conv23, i64* %tmp0, align 8, !tbaa !8
  %37 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %38 to i32
  %39 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %39, i64 4
  %40 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %40 to i32
  %sub28 = sub nsw i32 %conv25, %conv27
  %conv29 = sext i32 %sub28 to i64
  store i64 %conv29, i64* %tmp1, align 8, !tbaa !8
  %41 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %41, i64 2
  %42 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = zext i8 %42 to i32
  %43 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %43, i64 3
  %44 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %44 to i32
  %sub34 = sub nsw i32 %conv31, %conv33
  %conv35 = sext i32 %sub34 to i64
  store i64 %conv35, i64* %tmp2, align 8, !tbaa !8
  %45 = load i64, i64* %tmp10, align 8, !tbaa !8
  %46 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add36 = add nsw i64 %45, %46
  %sub37 = sub nsw i64 %add36, 768
  %shl = shl i64 %sub37, 3
  %conv38 = trunc i64 %shl to i32
  %47 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %conv38, i32* %arrayidx39, align 4, !tbaa !5
  %48 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul = mul nsw i64 %48, 10033
  %add40 = add nsw i64 %mul, 512
  %shr = ashr i64 %add40, 10
  %conv41 = trunc i64 %shr to i32
  %49 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %conv41, i32* %arrayidx42, align 4, !tbaa !5
  %50 = load i64, i64* %tmp10, align 8, !tbaa !8
  %51 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub43 = sub nsw i64 %50, %51
  %52 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub44 = sub nsw i64 %sub43, %52
  %mul45 = mul nsw i64 %sub44, 5793
  %add46 = add nsw i64 %mul45, 512
  %shr47 = ashr i64 %add46, 10
  %conv48 = trunc i64 %shr47 to i32
  %53 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 %conv48, i32* %arrayidx49, align 4, !tbaa !5
  %54 = load i64, i64* %tmp0, align 8, !tbaa !8
  %55 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add50 = add nsw i64 %54, %55
  %mul51 = mul nsw i64 %add50, 2998
  %add52 = add nsw i64 %mul51, 512
  %shr53 = ashr i64 %add52, 10
  store i64 %shr53, i64* %tmp10, align 8, !tbaa !8
  %56 = load i64, i64* %tmp10, align 8, !tbaa !8
  %57 = load i64, i64* %tmp0, align 8, !tbaa !8
  %58 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add54 = add nsw i64 %57, %58
  %shl55 = shl i64 %add54, 3
  %add56 = add nsw i64 %56, %shl55
  %conv57 = trunc i64 %add56 to i32
  %59 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %conv57, i32* %arrayidx58, align 4, !tbaa !5
  %60 = load i64, i64* %tmp0, align 8, !tbaa !8
  %61 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub59 = sub nsw i64 %60, %61
  %62 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub60 = sub nsw i64 %sub59, %62
  %shl61 = shl i64 %sub60, 3
  %conv62 = trunc i64 %shl61 to i32
  %63 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i32, i32* %63, i64 3
  store i32 %conv62, i32* %arrayidx63, align 4, !tbaa !5
  %64 = load i64, i64* %tmp10, align 8, !tbaa !8
  %65 = load i64, i64* %tmp2, align 8, !tbaa !8
  %66 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub64 = sub nsw i64 %65, %66
  %shl65 = shl i64 %sub64, 3
  %add66 = add nsw i64 %64, %shl65
  %conv67 = trunc i64 %add66 to i32
  %67 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %67, i64 5
  store i32 %conv67, i32* %arrayidx68, align 4, !tbaa !5
  %68 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32* %add.ptr69, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %70, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.102, %for.end
  %71 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %71, 6
  br i1 %cmp71, label %for.body.73, label %for.end.104

for.body.73:                                      ; preds = %for.cond.70
  %72 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx74, align 4, !tbaa !5
  %74 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %74, i64 16
  %75 = load i32, i32* %arrayidx75, align 4, !tbaa !5
  %add76 = add nsw i32 %73, %75
  %conv77 = sext i32 %add76 to i64
  store i64 %conv77, i64* %tmp0, align 8, !tbaa !8
  %76 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i32, i32* %76, i64 8
  %77 = load i32, i32* %arrayidx78, align 4, !tbaa !5
  %conv79 = sext i32 %77 to i64
  store i64 %conv79, i64* %tmp1, align 8, !tbaa !8
  %78 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx80, align 4, !tbaa !5
  %80 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i32, i32* %80, i64 16
  %81 = load i32, i32* %arrayidx81, align 4, !tbaa !5
  %sub82 = sub nsw i32 %79, %81
  %conv83 = sext i32 %sub82 to i64
  store i64 %conv83, i64* %tmp2, align 8, !tbaa !8
  %82 = load i64, i64* %tmp0, align 8, !tbaa !8
  %83 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add84 = add nsw i64 %82, %83
  %mul85 = mul nsw i64 %add84, 14564
  %add86 = add nsw i64 %mul85, 16384
  %shr87 = ashr i64 %add86, 15
  %conv88 = trunc i64 %shr87 to i32
  %84 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %conv88, i32* %arrayidx89, align 4, !tbaa !5
  %85 = load i64, i64* %tmp0, align 8, !tbaa !8
  %86 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub90 = sub nsw i64 %85, %86
  %87 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub91 = sub nsw i64 %sub90, %87
  %mul92 = mul nsw i64 %sub91, 10298
  %add93 = add nsw i64 %mul92, 16384
  %shr94 = ashr i64 %add93, 15
  %conv95 = trunc i64 %shr94 to i32
  %88 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %88, i64 16
  store i32 %conv95, i32* %arrayidx96, align 4, !tbaa !5
  %89 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul97 = mul nsw i64 %89, 17837
  %add98 = add nsw i64 %mul97, 16384
  %shr99 = ashr i64 %add98, 15
  %conv100 = trunc i64 %shr99 to i32
  %90 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i32, i32* %90, i64 8
  store i32 %conv100, i32* %arrayidx101, align 4, !tbaa !5
  %91 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.73
  %92 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc103 = add nsw i32 %92, 1
  store i32 %inc103, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.70

for.end.104:                                      ; preds = %for.cond.70
  %93 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_4x2(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %8 = bitcast i32* %7 to i8*
  %call = call i8* @memset(i8* %8, i32 0, i64 256) #3
  %9 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %9, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %14 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %15 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %16 to i32
  %17 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %18 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %19 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %20 to i32
  %21 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %22 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %23 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %24 to i32
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %25, i64 3
  %26 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %26 to i32
  %sub = sub nsw i32 %conv12, %conv14
  %conv15 = sext i32 %sub to i64
  store i64 %conv15, i64* %tmp10, align 8, !tbaa !8
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %conv17 = zext i8 %28 to i32
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %30 to i32
  %sub20 = sub nsw i32 %conv17, %conv19
  %conv21 = sext i32 %sub20 to i64
  store i64 %conv21, i64* %tmp11, align 8, !tbaa !8
  %31 = load i64, i64* %tmp0, align 8, !tbaa !8
  %32 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add22 = add nsw i64 %31, %32
  %sub23 = sub nsw i64 %add22, 512
  %shl = shl i64 %sub23, 5
  %conv24 = trunc i64 %shl to i32
  %33 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %conv24, i32* %arrayidx25, align 4, !tbaa !5
  %34 = load i64, i64* %tmp0, align 8, !tbaa !8
  %35 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub26 = sub nsw i64 %34, %35
  %shl27 = shl i64 %sub26, 5
  %conv28 = trunc i64 %shl27 to i32
  %36 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %conv28, i32* %arrayidx29, align 4, !tbaa !5
  %37 = load i64, i64* %tmp10, align 8, !tbaa !8
  %38 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add30 = add nsw i64 %37, %38
  %mul = mul nsw i64 %add30, 4433
  store i64 %mul, i64* %tmp0, align 8, !tbaa !8
  %39 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add31 = add nsw i64 %39, 128
  store i64 %add31, i64* %tmp0, align 8, !tbaa !8
  %40 = load i64, i64* %tmp0, align 8, !tbaa !8
  %41 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul32 = mul nsw i64 %41, 6270
  %add33 = add nsw i64 %40, %mul32
  %shr = ashr i64 %add33, 8
  %conv34 = trunc i64 %shr to i32
  %42 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %conv34, i32* %arrayidx35, align 4, !tbaa !5
  %43 = load i64, i64* %tmp0, align 8, !tbaa !8
  %44 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul36 = mul nsw i64 %44, 15137
  %sub37 = sub nsw i64 %43, %mul36
  %shr38 = ashr i64 %sub37, 8
  %conv39 = trunc i64 %shr38 to i32
  %45 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 %conv39, i32* %arrayidx40, align 4, !tbaa !5
  %46 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i32, i32* %46, i64 8
  store i32* %add.ptr41, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %48, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.59, %for.end
  %49 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %49, 4
  br i1 %cmp43, label %for.body.45, label %for.end.61

for.body.45:                                      ; preds = %for.cond.42
  %50 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i32, i32* %50, i64 0
  %51 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  %conv47 = sext i32 %51 to i64
  %add48 = add nsw i64 %conv47, 2
  store i64 %add48, i64* %tmp0, align 8, !tbaa !8
  %52 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i32, i32* %52, i64 8
  %53 = load i32, i32* %arrayidx49, align 4, !tbaa !5
  %conv50 = sext i32 %53 to i64
  store i64 %conv50, i64* %tmp1, align 8, !tbaa !8
  %54 = load i64, i64* %tmp0, align 8, !tbaa !8
  %55 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add51 = add nsw i64 %54, %55
  %shr52 = ashr i64 %add51, 2
  %conv53 = trunc i64 %shr52 to i32
  %56 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %conv53, i32* %arrayidx54, align 4, !tbaa !5
  %57 = load i64, i64* %tmp0, align 8, !tbaa !8
  %58 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub55 = sub nsw i64 %57, %58
  %shr56 = ashr i64 %sub55, 2
  %conv57 = trunc i64 %shr56 to i32
  %59 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i32, i32* %59, i64 8
  store i32 %conv57, i32* %arrayidx58, align 4, !tbaa !5
  %60 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.45
  %61 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc60 = add nsw i32 %61, 1
  store i32 %inc60, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.42

for.end.61:                                       ; preds = %for.cond.42
  %62 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_2x1(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %elemptr = alloca i8*, align 8
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i32* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %4 = bitcast i32* %3 to i8*
  %call = call i8* @memset(i8* %4, i32 0, i64 256) #3
  %5 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %7 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %8 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %9 to i32
  store i32 %conv, i32* %tmp0, align 4, !tbaa !5
  %10 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %11 to i32
  store i32 %conv3, i32* %tmp1, align 4, !tbaa !5
  %12 = load i32, i32* %tmp0, align 4, !tbaa !5
  %13 = load i32, i32* %tmp1, align 4, !tbaa !5
  %add = add nsw i32 %12, %13
  %sub = sub nsw i32 %add, 256
  %shl = shl i32 %sub, 5
  %14 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %shl, i32* %arrayidx4, align 4, !tbaa !5
  %15 = load i32, i32* %tmp0, align 4, !tbaa !5
  %16 = load i32, i32* %tmp1, align 4, !tbaa !5
  %sub5 = sub nsw i32 %15, %16
  %shl6 = shl i32 %sub5, 5
  %17 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %shl6, i32* %arrayidx7, align 4, !tbaa !5
  %18 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_8x16(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %tmp17 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %workspace = alloca [64 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %tmp17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 256, i8* %17) #1
  %18 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %22, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.115, %entry
  %23 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %24 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %24, i64 %idxprom
  %25 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %26 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %27 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %28 to i32
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %29, i64 7
  %30 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %30 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %31 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %32 to i32
  %33 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %33, i64 6
  %34 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %34 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %35, i64 2
  %36 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %36 to i32
  %37 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %37, i64 5
  %38 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %38 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %39 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %39, i64 3
  %40 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %40 to i32
  %41 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %41, i64 4
  %42 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %42 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %tmp3, align 8, !tbaa !8
  %43 = load i64, i64* %tmp0, align 8, !tbaa !8
  %44 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add23 = add nsw i64 %43, %44
  store i64 %add23, i64* %tmp10, align 8, !tbaa !8
  %45 = load i64, i64* %tmp0, align 8, !tbaa !8
  %46 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub = sub nsw i64 %45, %46
  store i64 %sub, i64* %tmp12, align 8, !tbaa !8
  %47 = load i64, i64* %tmp1, align 8, !tbaa !8
  %48 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add24 = add nsw i64 %47, %48
  store i64 %add24, i64* %tmp11, align 8, !tbaa !8
  %49 = load i64, i64* %tmp1, align 8, !tbaa !8
  %50 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub25 = sub nsw i64 %49, %50
  store i64 %sub25, i64* %tmp13, align 8, !tbaa !8
  %51 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %52 to i32
  %53 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %53, i64 7
  %54 = load i8, i8* %arrayidx28, align 1, !tbaa !7
  %conv29 = zext i8 %54 to i32
  %sub30 = sub nsw i32 %conv27, %conv29
  %conv31 = sext i32 %sub30 to i64
  store i64 %conv31, i64* %tmp0, align 8, !tbaa !8
  %55 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %56 to i32
  %57 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %57, i64 6
  %58 = load i8, i8* %arrayidx34, align 1, !tbaa !7
  %conv35 = zext i8 %58 to i32
  %sub36 = sub nsw i32 %conv33, %conv35
  %conv37 = sext i32 %sub36 to i64
  store i64 %conv37, i64* %tmp1, align 8, !tbaa !8
  %59 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %59, i64 2
  %60 = load i8, i8* %arrayidx38, align 1, !tbaa !7
  %conv39 = zext i8 %60 to i32
  %61 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %61, i64 5
  %62 = load i8, i8* %arrayidx40, align 1, !tbaa !7
  %conv41 = zext i8 %62 to i32
  %sub42 = sub nsw i32 %conv39, %conv41
  %conv43 = sext i32 %sub42 to i64
  store i64 %conv43, i64* %tmp2, align 8, !tbaa !8
  %63 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %63, i64 3
  %64 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %conv45 = zext i8 %64 to i32
  %65 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %65, i64 4
  %66 = load i8, i8* %arrayidx46, align 1, !tbaa !7
  %conv47 = zext i8 %66 to i32
  %sub48 = sub nsw i32 %conv45, %conv47
  %conv49 = sext i32 %sub48 to i64
  store i64 %conv49, i64* %tmp3, align 8, !tbaa !8
  %67 = load i64, i64* %tmp10, align 8, !tbaa !8
  %68 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add50 = add nsw i64 %67, %68
  %sub51 = sub nsw i64 %add50, 1024
  %shl = shl i64 %sub51, 2
  %conv52 = trunc i64 %shl to i32
  %69 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %conv52, i32* %arrayidx53, align 4, !tbaa !5
  %70 = load i64, i64* %tmp10, align 8, !tbaa !8
  %71 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub54 = sub nsw i64 %70, %71
  %shl55 = shl i64 %sub54, 2
  %conv56 = trunc i64 %shl55 to i32
  %72 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %conv56, i32* %arrayidx57, align 4, !tbaa !5
  %73 = load i64, i64* %tmp12, align 8, !tbaa !8
  %74 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add58 = add nsw i64 %73, %74
  %mul = mul nsw i64 %add58, 4433
  store i64 %mul, i64* %z1, align 8, !tbaa !8
  %75 = load i64, i64* %z1, align 8, !tbaa !8
  %76 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul59 = mul nsw i64 %76, 6270
  %add60 = add nsw i64 %75, %mul59
  %add61 = add nsw i64 %add60, 1024
  %shr = ashr i64 %add61, 11
  %conv62 = trunc i64 %shr to i32
  %77 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %conv62, i32* %arrayidx63, align 4, !tbaa !5
  %78 = load i64, i64* %z1, align 8, !tbaa !8
  %79 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul64 = mul nsw i64 %79, 15137
  %sub65 = sub nsw i64 %78, %mul64
  %add66 = add nsw i64 %sub65, 1024
  %shr67 = ashr i64 %add66, 11
  %conv68 = trunc i64 %shr67 to i32
  %80 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i32, i32* %80, i64 6
  store i32 %conv68, i32* %arrayidx69, align 4, !tbaa !5
  %81 = load i64, i64* %tmp0, align 8, !tbaa !8
  %82 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add70 = add nsw i64 %81, %82
  store i64 %add70, i64* %tmp12, align 8, !tbaa !8
  %83 = load i64, i64* %tmp1, align 8, !tbaa !8
  %84 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add71 = add nsw i64 %83, %84
  store i64 %add71, i64* %tmp13, align 8, !tbaa !8
  %85 = load i64, i64* %tmp12, align 8, !tbaa !8
  %86 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add72 = add nsw i64 %85, %86
  %mul73 = mul nsw i64 %add72, 9633
  store i64 %mul73, i64* %z1, align 8, !tbaa !8
  %87 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul74 = mul nsw i64 %87, -3196
  store i64 %mul74, i64* %tmp12, align 8, !tbaa !8
  %88 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul75 = mul nsw i64 %88, -16069
  store i64 %mul75, i64* %tmp13, align 8, !tbaa !8
  %89 = load i64, i64* %z1, align 8, !tbaa !8
  %90 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add76 = add nsw i64 %90, %89
  store i64 %add76, i64* %tmp12, align 8, !tbaa !8
  %91 = load i64, i64* %z1, align 8, !tbaa !8
  %92 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add77 = add nsw i64 %92, %91
  store i64 %add77, i64* %tmp13, align 8, !tbaa !8
  %93 = load i64, i64* %tmp0, align 8, !tbaa !8
  %94 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add78 = add nsw i64 %93, %94
  %mul79 = mul nsw i64 %add78, -7373
  store i64 %mul79, i64* %z1, align 8, !tbaa !8
  %95 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul80 = mul nsw i64 %95, 12299
  store i64 %mul80, i64* %tmp0, align 8, !tbaa !8
  %96 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul81 = mul nsw i64 %96, 2446
  store i64 %mul81, i64* %tmp3, align 8, !tbaa !8
  %97 = load i64, i64* %z1, align 8, !tbaa !8
  %98 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add82 = add nsw i64 %97, %98
  %99 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add83 = add nsw i64 %99, %add82
  store i64 %add83, i64* %tmp0, align 8, !tbaa !8
  %100 = load i64, i64* %z1, align 8, !tbaa !8
  %101 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add84 = add nsw i64 %100, %101
  %102 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add85 = add nsw i64 %102, %add84
  store i64 %add85, i64* %tmp3, align 8, !tbaa !8
  %103 = load i64, i64* %tmp1, align 8, !tbaa !8
  %104 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add86 = add nsw i64 %103, %104
  %mul87 = mul nsw i64 %add86, -20995
  store i64 %mul87, i64* %z1, align 8, !tbaa !8
  %105 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul88 = mul nsw i64 %105, 25172
  store i64 %mul88, i64* %tmp1, align 8, !tbaa !8
  %106 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul89 = mul nsw i64 %106, 16819
  store i64 %mul89, i64* %tmp2, align 8, !tbaa !8
  %107 = load i64, i64* %z1, align 8, !tbaa !8
  %108 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add90 = add nsw i64 %107, %108
  %109 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add91 = add nsw i64 %109, %add90
  store i64 %add91, i64* %tmp1, align 8, !tbaa !8
  %110 = load i64, i64* %z1, align 8, !tbaa !8
  %111 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add92 = add nsw i64 %110, %111
  %112 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add93 = add nsw i64 %112, %add92
  store i64 %add93, i64* %tmp2, align 8, !tbaa !8
  %113 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add94 = add nsw i64 %113, 1024
  %shr95 = ashr i64 %add94, 11
  %conv96 = trunc i64 %shr95 to i32
  %114 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 %conv96, i32* %arrayidx97, align 4, !tbaa !5
  %115 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add98 = add nsw i64 %115, 1024
  %shr99 = ashr i64 %add98, 11
  %conv100 = trunc i64 %shr99 to i32
  %116 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i32, i32* %116, i64 3
  store i32 %conv100, i32* %arrayidx101, align 4, !tbaa !5
  %117 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add102 = add nsw i64 %117, 1024
  %shr103 = ashr i64 %add102, 11
  %conv104 = trunc i64 %shr103 to i32
  %118 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i32, i32* %118, i64 5
  store i32 %conv104, i32* %arrayidx105, align 4, !tbaa !5
  %119 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add106 = add nsw i64 %119, 1024
  %shr107 = ashr i64 %add106, 11
  %conv108 = trunc i64 %shr107 to i32
  %120 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i32, i32* %120, i64 7
  store i32 %conv108, i32* %arrayidx109, align 4, !tbaa !5
  %121 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %121, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %122 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %122, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %123 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp111 = icmp eq i32 %123, 16
  br i1 %cmp111, label %if.then.113, label %if.end

if.then.113:                                      ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %124 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr114 = getelementptr inbounds i32, i32* %124, i64 8
  store i32* %add.ptr114, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.115

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.115

if.end.115:                                       ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.113
  %125 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %125, i32** %dataptr, align 8, !tbaa !1
  %arraydecay116 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay116, i32** %wsptr, align 8, !tbaa !1
  store i32 7, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc, %for.end
  %126 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp118 = icmp sge i32 %126, 0
  br i1 %cmp118, label %for.body, label %for.end.300

for.body:                                         ; preds = %for.cond.117
  %127 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i32, i32* %127, i64 0
  %128 = load i32, i32* %arrayidx120, align 4, !tbaa !5
  %129 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i32, i32* %129, i64 56
  %130 = load i32, i32* %arrayidx121, align 4, !tbaa !5
  %add122 = add nsw i32 %128, %130
  %conv123 = sext i32 %add122 to i64
  store i64 %conv123, i64* %tmp0, align 8, !tbaa !8
  %131 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i32, i32* %131, i64 8
  %132 = load i32, i32* %arrayidx124, align 4, !tbaa !5
  %133 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i32, i32* %133, i64 48
  %134 = load i32, i32* %arrayidx125, align 4, !tbaa !5
  %add126 = add nsw i32 %132, %134
  %conv127 = sext i32 %add126 to i64
  store i64 %conv127, i64* %tmp1, align 8, !tbaa !8
  %135 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i32, i32* %135, i64 16
  %136 = load i32, i32* %arrayidx128, align 4, !tbaa !5
  %137 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i32, i32* %137, i64 40
  %138 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %add130 = add nsw i32 %136, %138
  %conv131 = sext i32 %add130 to i64
  store i64 %conv131, i64* %tmp2, align 8, !tbaa !8
  %139 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %139, i64 24
  %140 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %141 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i32, i32* %141, i64 32
  %142 = load i32, i32* %arrayidx133, align 4, !tbaa !5
  %add134 = add nsw i32 %140, %142
  %conv135 = sext i32 %add134 to i64
  store i64 %conv135, i64* %tmp3, align 8, !tbaa !8
  %143 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i32, i32* %143, i64 32
  %144 = load i32, i32* %arrayidx136, align 4, !tbaa !5
  %145 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i32, i32* %145, i64 24
  %146 = load i32, i32* %arrayidx137, align 4, !tbaa !5
  %add138 = add nsw i32 %144, %146
  %conv139 = sext i32 %add138 to i64
  store i64 %conv139, i64* %tmp4, align 8, !tbaa !8
  %147 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i32, i32* %147, i64 40
  %148 = load i32, i32* %arrayidx140, align 4, !tbaa !5
  %149 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i32, i32* %149, i64 16
  %150 = load i32, i32* %arrayidx141, align 4, !tbaa !5
  %add142 = add nsw i32 %148, %150
  %conv143 = sext i32 %add142 to i64
  store i64 %conv143, i64* %tmp5, align 8, !tbaa !8
  %151 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i32, i32* %151, i64 48
  %152 = load i32, i32* %arrayidx144, align 4, !tbaa !5
  %153 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i32, i32* %153, i64 8
  %154 = load i32, i32* %arrayidx145, align 4, !tbaa !5
  %add146 = add nsw i32 %152, %154
  %conv147 = sext i32 %add146 to i64
  store i64 %conv147, i64* %tmp6, align 8, !tbaa !8
  %155 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i32, i32* %155, i64 56
  %156 = load i32, i32* %arrayidx148, align 4, !tbaa !5
  %157 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i32, i32* %157, i64 0
  %158 = load i32, i32* %arrayidx149, align 4, !tbaa !5
  %add150 = add nsw i32 %156, %158
  %conv151 = sext i32 %add150 to i64
  store i64 %conv151, i64* %tmp7, align 8, !tbaa !8
  %159 = load i64, i64* %tmp0, align 8, !tbaa !8
  %160 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add152 = add nsw i64 %159, %160
  store i64 %add152, i64* %tmp10, align 8, !tbaa !8
  %161 = load i64, i64* %tmp0, align 8, !tbaa !8
  %162 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub153 = sub nsw i64 %161, %162
  store i64 %sub153, i64* %tmp14, align 8, !tbaa !8
  %163 = load i64, i64* %tmp1, align 8, !tbaa !8
  %164 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add154 = add nsw i64 %163, %164
  store i64 %add154, i64* %tmp11, align 8, !tbaa !8
  %165 = load i64, i64* %tmp1, align 8, !tbaa !8
  %166 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub155 = sub nsw i64 %165, %166
  store i64 %sub155, i64* %tmp15, align 8, !tbaa !8
  %167 = load i64, i64* %tmp2, align 8, !tbaa !8
  %168 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add156 = add nsw i64 %167, %168
  store i64 %add156, i64* %tmp12, align 8, !tbaa !8
  %169 = load i64, i64* %tmp2, align 8, !tbaa !8
  %170 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub157 = sub nsw i64 %169, %170
  store i64 %sub157, i64* %tmp16, align 8, !tbaa !8
  %171 = load i64, i64* %tmp3, align 8, !tbaa !8
  %172 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add158 = add nsw i64 %171, %172
  store i64 %add158, i64* %tmp13, align 8, !tbaa !8
  %173 = load i64, i64* %tmp3, align 8, !tbaa !8
  %174 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub159 = sub nsw i64 %173, %174
  store i64 %sub159, i64* %tmp17, align 8, !tbaa !8
  %175 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i32, i32* %175, i64 0
  %176 = load i32, i32* %arrayidx160, align 4, !tbaa !5
  %177 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i32, i32* %177, i64 56
  %178 = load i32, i32* %arrayidx161, align 4, !tbaa !5
  %sub162 = sub nsw i32 %176, %178
  %conv163 = sext i32 %sub162 to i64
  store i64 %conv163, i64* %tmp0, align 8, !tbaa !8
  %179 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i32, i32* %179, i64 8
  %180 = load i32, i32* %arrayidx164, align 4, !tbaa !5
  %181 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i32, i32* %181, i64 48
  %182 = load i32, i32* %arrayidx165, align 4, !tbaa !5
  %sub166 = sub nsw i32 %180, %182
  %conv167 = sext i32 %sub166 to i64
  store i64 %conv167, i64* %tmp1, align 8, !tbaa !8
  %183 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i32, i32* %183, i64 16
  %184 = load i32, i32* %arrayidx168, align 4, !tbaa !5
  %185 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds i32, i32* %185, i64 40
  %186 = load i32, i32* %arrayidx169, align 4, !tbaa !5
  %sub170 = sub nsw i32 %184, %186
  %conv171 = sext i32 %sub170 to i64
  store i64 %conv171, i64* %tmp2, align 8, !tbaa !8
  %187 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i32, i32* %187, i64 24
  %188 = load i32, i32* %arrayidx172, align 4, !tbaa !5
  %189 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i32, i32* %189, i64 32
  %190 = load i32, i32* %arrayidx173, align 4, !tbaa !5
  %sub174 = sub nsw i32 %188, %190
  %conv175 = sext i32 %sub174 to i64
  store i64 %conv175, i64* %tmp3, align 8, !tbaa !8
  %191 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i32, i32* %191, i64 32
  %192 = load i32, i32* %arrayidx176, align 4, !tbaa !5
  %193 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i32, i32* %193, i64 24
  %194 = load i32, i32* %arrayidx177, align 4, !tbaa !5
  %sub178 = sub nsw i32 %192, %194
  %conv179 = sext i32 %sub178 to i64
  store i64 %conv179, i64* %tmp4, align 8, !tbaa !8
  %195 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i32, i32* %195, i64 40
  %196 = load i32, i32* %arrayidx180, align 4, !tbaa !5
  %197 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i32, i32* %197, i64 16
  %198 = load i32, i32* %arrayidx181, align 4, !tbaa !5
  %sub182 = sub nsw i32 %196, %198
  %conv183 = sext i32 %sub182 to i64
  store i64 %conv183, i64* %tmp5, align 8, !tbaa !8
  %199 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i32, i32* %199, i64 48
  %200 = load i32, i32* %arrayidx184, align 4, !tbaa !5
  %201 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i32, i32* %201, i64 8
  %202 = load i32, i32* %arrayidx185, align 4, !tbaa !5
  %sub186 = sub nsw i32 %200, %202
  %conv187 = sext i32 %sub186 to i64
  store i64 %conv187, i64* %tmp6, align 8, !tbaa !8
  %203 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i32, i32* %203, i64 56
  %204 = load i32, i32* %arrayidx188, align 4, !tbaa !5
  %205 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i32, i32* %205, i64 0
  %206 = load i32, i32* %arrayidx189, align 4, !tbaa !5
  %sub190 = sub nsw i32 %204, %206
  %conv191 = sext i32 %sub190 to i64
  store i64 %conv191, i64* %tmp7, align 8, !tbaa !8
  %207 = load i64, i64* %tmp10, align 8, !tbaa !8
  %208 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add192 = add nsw i64 %207, %208
  %209 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add193 = add nsw i64 %add192, %209
  %210 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add194 = add nsw i64 %add193, %210
  %add195 = add nsw i64 %add194, 4
  %shr196 = ashr i64 %add195, 3
  %conv197 = trunc i64 %shr196 to i32
  %211 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 %conv197, i32* %arrayidx198, align 4, !tbaa !5
  %212 = load i64, i64* %tmp10, align 8, !tbaa !8
  %213 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub199 = sub nsw i64 %212, %213
  %mul200 = mul nsw i64 %sub199, 10703
  %214 = load i64, i64* %tmp11, align 8, !tbaa !8
  %215 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub201 = sub nsw i64 %214, %215
  %mul202 = mul nsw i64 %sub201, 4433
  %add203 = add nsw i64 %mul200, %mul202
  %add204 = add nsw i64 %add203, 32768
  %shr205 = ashr i64 %add204, 16
  %conv206 = trunc i64 %shr205 to i32
  %216 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i32, i32* %216, i64 32
  store i32 %conv206, i32* %arrayidx207, align 4, !tbaa !5
  %217 = load i64, i64* %tmp17, align 8, !tbaa !8
  %218 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub208 = sub nsw i64 %217, %218
  %mul209 = mul nsw i64 %sub208, 2260
  %219 = load i64, i64* %tmp14, align 8, !tbaa !8
  %220 = load i64, i64* %tmp16, align 8, !tbaa !8
  %sub210 = sub nsw i64 %219, %220
  %mul211 = mul nsw i64 %sub210, 11363
  %add212 = add nsw i64 %mul209, %mul211
  store i64 %add212, i64* %tmp10, align 8, !tbaa !8
  %221 = load i64, i64* %tmp10, align 8, !tbaa !8
  %222 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul213 = mul nsw i64 %222, 11893
  %add214 = add nsw i64 %221, %mul213
  %223 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul215 = mul nsw i64 %223, 17799
  %add216 = add nsw i64 %add214, %mul215
  %add217 = add nsw i64 %add216, 32768
  %shr218 = ashr i64 %add217, 16
  %conv219 = trunc i64 %shr218 to i32
  %224 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i32, i32* %224, i64 16
  store i32 %conv219, i32* %arrayidx220, align 4, !tbaa !5
  %225 = load i64, i64* %tmp10, align 8, !tbaa !8
  %226 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul221 = mul nsw i64 %226, 1730
  %sub222 = sub nsw i64 %225, %mul221
  %227 = load i64, i64* %tmp17, align 8, !tbaa !8
  %mul223 = mul nsw i64 %227, 8697
  %sub224 = sub nsw i64 %sub222, %mul223
  %add225 = add nsw i64 %sub224, 32768
  %shr226 = ashr i64 %add225, 16
  %conv227 = trunc i64 %shr226 to i32
  %228 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i32, i32* %228, i64 48
  store i32 %conv227, i32* %arrayidx228, align 4, !tbaa !5
  %229 = load i64, i64* %tmp0, align 8, !tbaa !8
  %230 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add229 = add nsw i64 %229, %230
  %mul230 = mul nsw i64 %add229, 11086
  %231 = load i64, i64* %tmp6, align 8, !tbaa !8
  %232 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub231 = sub nsw i64 %231, %232
  %mul232 = mul nsw i64 %sub231, 3363
  %add233 = add nsw i64 %mul230, %mul232
  store i64 %add233, i64* %tmp11, align 8, !tbaa !8
  %233 = load i64, i64* %tmp0, align 8, !tbaa !8
  %234 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add234 = add nsw i64 %233, %234
  %mul235 = mul nsw i64 %add234, 10217
  %235 = load i64, i64* %tmp5, align 8, !tbaa !8
  %236 = load i64, i64* %tmp7, align 8, !tbaa !8
  %add236 = add nsw i64 %235, %236
  %mul237 = mul nsw i64 %add236, 5461
  %add238 = add nsw i64 %mul235, %mul237
  store i64 %add238, i64* %tmp12, align 8, !tbaa !8
  %237 = load i64, i64* %tmp0, align 8, !tbaa !8
  %238 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add239 = add nsw i64 %237, %238
  %mul240 = mul nsw i64 %add239, 8956
  %239 = load i64, i64* %tmp4, align 8, !tbaa !8
  %240 = load i64, i64* %tmp7, align 8, !tbaa !8
  %sub241 = sub nsw i64 %239, %240
  %mul242 = mul nsw i64 %sub241, 7350
  %add243 = add nsw i64 %mul240, %mul242
  store i64 %add243, i64* %tmp13, align 8, !tbaa !8
  %241 = load i64, i64* %tmp1, align 8, !tbaa !8
  %242 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add244 = add nsw i64 %241, %242
  %mul245 = mul nsw i64 %add244, 1136
  %243 = load i64, i64* %tmp6, align 8, !tbaa !8
  %244 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub246 = sub nsw i64 %243, %244
  %mul247 = mul nsw i64 %sub246, 11529
  %add248 = add nsw i64 %mul245, %mul247
  store i64 %add248, i64* %tmp14, align 8, !tbaa !8
  %245 = load i64, i64* %tmp1, align 8, !tbaa !8
  %246 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add249 = add nsw i64 %245, %246
  %mul250 = mul nsw i64 %add249, -5461
  %247 = load i64, i64* %tmp4, align 8, !tbaa !8
  %248 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add251 = add nsw i64 %247, %248
  %mul252 = mul nsw i64 %add251, -10217
  %add253 = add nsw i64 %mul250, %mul252
  store i64 %add253, i64* %tmp15, align 8, !tbaa !8
  %249 = load i64, i64* %tmp2, align 8, !tbaa !8
  %250 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add254 = add nsw i64 %249, %250
  %mul255 = mul nsw i64 %add254, -11086
  %251 = load i64, i64* %tmp5, align 8, !tbaa !8
  %252 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub256 = sub nsw i64 %251, %252
  %mul257 = mul nsw i64 %sub256, 3363
  %add258 = add nsw i64 %mul255, %mul257
  store i64 %add258, i64* %tmp16, align 8, !tbaa !8
  %253 = load i64, i64* %tmp11, align 8, !tbaa !8
  %254 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add259 = add nsw i64 %253, %254
  %255 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add260 = add nsw i64 %add259, %255
  %256 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul261 = mul nsw i64 %256, 18730
  %sub262 = sub nsw i64 %add260, %mul261
  %257 = load i64, i64* %tmp7, align 8, !tbaa !8
  %mul263 = mul nsw i64 %257, 6387
  %add264 = add nsw i64 %sub262, %mul263
  store i64 %add264, i64* %tmp10, align 8, !tbaa !8
  %258 = load i64, i64* %tmp14, align 8, !tbaa !8
  %259 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add265 = add nsw i64 %258, %259
  %260 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul266 = mul nsw i64 %260, 589
  %add267 = add nsw i64 %add265, %mul266
  %261 = load i64, i64* %tmp6, align 8, !tbaa !8
  %mul268 = mul nsw i64 %261, 13631
  %sub269 = sub nsw i64 %add267, %mul268
  %262 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add270 = add nsw i64 %262, %sub269
  store i64 %add270, i64* %tmp11, align 8, !tbaa !8
  %263 = load i64, i64* %tmp14, align 8, !tbaa !8
  %264 = load i64, i64* %tmp16, align 8, !tbaa !8
  %add271 = add nsw i64 %263, %264
  %265 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul272 = mul nsw i64 %265, 9222
  %sub273 = sub nsw i64 %add271, %mul272
  %266 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul274 = mul nsw i64 %266, 10055
  %add275 = add nsw i64 %sub273, %mul274
  %267 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add276 = add nsw i64 %267, %add275
  store i64 %add276, i64* %tmp12, align 8, !tbaa !8
  %268 = load i64, i64* %tmp15, align 8, !tbaa !8
  %269 = load i64, i64* %tmp16, align 8, !tbaa !8
  %add277 = add nsw i64 %268, %269
  %270 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul278 = mul nsw i64 %270, 8728
  %add279 = add nsw i64 %add277, %mul278
  %271 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul280 = mul nsw i64 %271, 17760
  %add281 = add nsw i64 %add279, %mul280
  %272 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add282 = add nsw i64 %272, %add281
  store i64 %add282, i64* %tmp13, align 8, !tbaa !8
  %273 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add283 = add nsw i64 %273, 32768
  %shr284 = ashr i64 %add283, 16
  %conv285 = trunc i64 %shr284 to i32
  %274 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds i32, i32* %274, i64 8
  store i32 %conv285, i32* %arrayidx286, align 4, !tbaa !5
  %275 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add287 = add nsw i64 %275, 32768
  %shr288 = ashr i64 %add287, 16
  %conv289 = trunc i64 %shr288 to i32
  %276 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds i32, i32* %276, i64 24
  store i32 %conv289, i32* %arrayidx290, align 4, !tbaa !5
  %277 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add291 = add nsw i64 %277, 32768
  %shr292 = ashr i64 %add291, 16
  %conv293 = trunc i64 %shr292 to i32
  %278 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i32, i32* %278, i64 40
  store i32 %conv293, i32* %arrayidx294, align 4, !tbaa !5
  %279 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add295 = add nsw i64 %279, 32768
  %shr296 = ashr i64 %add295, 16
  %conv297 = trunc i64 %shr296 to i32
  %280 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i32, i32* %280, i64 56
  store i32 %conv297, i32* %arrayidx298, align 4, !tbaa !5
  %281 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %282 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr299 = getelementptr inbounds i32, i32* %282, i32 1
  store i32* %incdec.ptr299, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %283 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %283, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.117

for.end.300:                                      ; preds = %for.cond.117
  %284 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  %286 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #1
  %287 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 256, i8* %288) #1
  %289 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast i64* %tmp17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  %293 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  %294 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %295) #1
  %296 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %297 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast i64* %tmp7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #1
  %299 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  %302 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #1
  %303 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  %305 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_7x14(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %workspace = alloca [48 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast [48 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 192, i8* %17) #1
  %18 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %23 = bitcast i32* %22 to i8*
  %call = call i8* @memset(i8* %23, i32 0, i64 256) #3
  %24 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %24, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.103, %entry
  %25 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %25 to i64
  %26 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %26, i64 %idxprom
  %27 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %28 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %30 to i32
  %31 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %31, i64 6
  %32 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %32 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %33 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %33, i64 1
  %34 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %34 to i32
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %35, i64 5
  %36 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %36 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %37 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %37, i64 2
  %38 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %38 to i32
  %39 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %39, i64 4
  %40 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %40 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %41 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %42 to i32
  %conv19 = sext i32 %conv18 to i64
  store i64 %conv19, i64* %tmp3, align 8, !tbaa !8
  %43 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %44 to i32
  %45 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %45, i64 6
  %46 = load i8, i8* %arrayidx22, align 1, !tbaa !7
  %conv23 = zext i8 %46 to i32
  %sub = sub nsw i32 %conv21, %conv23
  %conv24 = sext i32 %sub to i64
  store i64 %conv24, i64* %tmp10, align 8, !tbaa !8
  %47 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %48 to i32
  %49 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %49, i64 5
  %50 = load i8, i8* %arrayidx27, align 1, !tbaa !7
  %conv28 = zext i8 %50 to i32
  %sub29 = sub nsw i32 %conv26, %conv28
  %conv30 = sext i32 %sub29 to i64
  store i64 %conv30, i64* %tmp11, align 8, !tbaa !8
  %51 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %52 to i32
  %53 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %53, i64 4
  %54 = load i8, i8* %arrayidx33, align 1, !tbaa !7
  %conv34 = zext i8 %54 to i32
  %sub35 = sub nsw i32 %conv32, %conv34
  %conv36 = sext i32 %sub35 to i64
  store i64 %conv36, i64* %tmp12, align 8, !tbaa !8
  %55 = load i64, i64* %tmp0, align 8, !tbaa !8
  %56 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add37 = add nsw i64 %55, %56
  store i64 %add37, i64* %z1, align 8, !tbaa !8
  %57 = load i64, i64* %z1, align 8, !tbaa !8
  %58 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add38 = add nsw i64 %57, %58
  %59 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add39 = add nsw i64 %add38, %59
  %sub40 = sub nsw i64 %add39, 896
  %shl = shl i64 %sub40, 2
  %conv41 = trunc i64 %shl to i32
  %60 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %conv41, i32* %arrayidx42, align 4, !tbaa !5
  %61 = load i64, i64* %tmp3, align 8, !tbaa !8
  %62 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add43 = add nsw i64 %62, %61
  store i64 %add43, i64* %tmp3, align 8, !tbaa !8
  %63 = load i64, i64* %tmp3, align 8, !tbaa !8
  %64 = load i64, i64* %z1, align 8, !tbaa !8
  %sub44 = sub nsw i64 %64, %63
  store i64 %sub44, i64* %z1, align 8, !tbaa !8
  %65 = load i64, i64* %tmp3, align 8, !tbaa !8
  %66 = load i64, i64* %z1, align 8, !tbaa !8
  %sub45 = sub nsw i64 %66, %65
  store i64 %sub45, i64* %z1, align 8, !tbaa !8
  %67 = load i64, i64* %z1, align 8, !tbaa !8
  %mul = mul nsw i64 %67, 2896
  store i64 %mul, i64* %z1, align 8, !tbaa !8
  %68 = load i64, i64* %tmp0, align 8, !tbaa !8
  %69 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub46 = sub nsw i64 %68, %69
  %mul47 = mul nsw i64 %sub46, 7542
  store i64 %mul47, i64* %z2, align 8, !tbaa !8
  %70 = load i64, i64* %tmp1, align 8, !tbaa !8
  %71 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub48 = sub nsw i64 %70, %71
  %mul49 = mul nsw i64 %sub48, 2578
  store i64 %mul49, i64* %z3, align 8, !tbaa !8
  %72 = load i64, i64* %z1, align 8, !tbaa !8
  %73 = load i64, i64* %z2, align 8, !tbaa !8
  %add50 = add nsw i64 %72, %73
  %74 = load i64, i64* %z3, align 8, !tbaa !8
  %add51 = add nsw i64 %add50, %74
  %add52 = add nsw i64 %add51, 1024
  %shr = ashr i64 %add52, 11
  %conv53 = trunc i64 %shr to i32
  %75 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %conv53, i32* %arrayidx54, align 4, !tbaa !5
  %76 = load i64, i64* %z2, align 8, !tbaa !8
  %77 = load i64, i64* %z1, align 8, !tbaa !8
  %sub55 = sub nsw i64 %77, %76
  store i64 %sub55, i64* %z1, align 8, !tbaa !8
  %78 = load i64, i64* %tmp0, align 8, !tbaa !8
  %79 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub56 = sub nsw i64 %78, %79
  %mul57 = mul nsw i64 %sub56, 7223
  store i64 %mul57, i64* %z2, align 8, !tbaa !8
  %80 = load i64, i64* %z2, align 8, !tbaa !8
  %81 = load i64, i64* %z3, align 8, !tbaa !8
  %add58 = add nsw i64 %80, %81
  %82 = load i64, i64* %tmp1, align 8, !tbaa !8
  %83 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub59 = sub nsw i64 %82, %83
  %mul60 = mul nsw i64 %sub59, 5793
  %sub61 = sub nsw i64 %add58, %mul60
  %add62 = add nsw i64 %sub61, 1024
  %shr63 = ashr i64 %add62, 11
  %conv64 = trunc i64 %shr63 to i32
  %84 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i32, i32* %84, i64 4
  store i32 %conv64, i32* %arrayidx65, align 4, !tbaa !5
  %85 = load i64, i64* %z1, align 8, !tbaa !8
  %86 = load i64, i64* %z2, align 8, !tbaa !8
  %add66 = add nsw i64 %85, %86
  %add67 = add nsw i64 %add66, 1024
  %shr68 = ashr i64 %add67, 11
  %conv69 = trunc i64 %shr68 to i32
  %87 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i32, i32* %87, i64 6
  store i32 %conv69, i32* %arrayidx70, align 4, !tbaa !5
  %88 = load i64, i64* %tmp10, align 8, !tbaa !8
  %89 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add71 = add nsw i64 %88, %89
  %mul72 = mul nsw i64 %add71, 7663
  store i64 %mul72, i64* %tmp1, align 8, !tbaa !8
  %90 = load i64, i64* %tmp10, align 8, !tbaa !8
  %91 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub73 = sub nsw i64 %90, %91
  %mul74 = mul nsw i64 %sub73, 1395
  store i64 %mul74, i64* %tmp2, align 8, !tbaa !8
  %92 = load i64, i64* %tmp1, align 8, !tbaa !8
  %93 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub75 = sub nsw i64 %92, %93
  store i64 %sub75, i64* %tmp0, align 8, !tbaa !8
  %94 = load i64, i64* %tmp2, align 8, !tbaa !8
  %95 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add76 = add nsw i64 %95, %94
  store i64 %add76, i64* %tmp1, align 8, !tbaa !8
  %96 = load i64, i64* %tmp11, align 8, !tbaa !8
  %97 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add77 = add nsw i64 %96, %97
  %mul78 = mul nsw i64 %add77, -11295
  store i64 %mul78, i64* %tmp2, align 8, !tbaa !8
  %98 = load i64, i64* %tmp2, align 8, !tbaa !8
  %99 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add79 = add nsw i64 %99, %98
  store i64 %add79, i64* %tmp1, align 8, !tbaa !8
  %100 = load i64, i64* %tmp10, align 8, !tbaa !8
  %101 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add80 = add nsw i64 %100, %101
  %mul81 = mul nsw i64 %add80, 5027
  store i64 %mul81, i64* %tmp3, align 8, !tbaa !8
  %102 = load i64, i64* %tmp3, align 8, !tbaa !8
  %103 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add82 = add nsw i64 %103, %102
  store i64 %add82, i64* %tmp0, align 8, !tbaa !8
  %104 = load i64, i64* %tmp3, align 8, !tbaa !8
  %105 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul83 = mul nsw i64 %105, 15326
  %add84 = add nsw i64 %104, %mul83
  %106 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add85 = add nsw i64 %106, %add84
  store i64 %add85, i64* %tmp2, align 8, !tbaa !8
  %107 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add86 = add nsw i64 %107, 1024
  %shr87 = ashr i64 %add86, 11
  %conv88 = trunc i64 %shr87 to i32
  %108 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %conv88, i32* %arrayidx89, align 4, !tbaa !5
  %109 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add90 = add nsw i64 %109, 1024
  %shr91 = ashr i64 %add90, 11
  %conv92 = trunc i64 %shr91 to i32
  %110 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i32, i32* %110, i64 3
  store i32 %conv92, i32* %arrayidx93, align 4, !tbaa !5
  %111 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add94 = add nsw i64 %111, 1024
  %shr95 = ashr i64 %add94, 11
  %conv96 = trunc i64 %shr95 to i32
  %112 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %112, i64 5
  store i32 %conv96, i32* %arrayidx97, align 4, !tbaa !5
  %113 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %114 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %114, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %115 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %115, 14
  br i1 %cmp99, label %if.then.101, label %if.end

if.then.101:                                      ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %116 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr102 = getelementptr inbounds i32, i32* %116, i64 8
  store i32* %add.ptr102, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.103

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.103

if.end.103:                                       ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.101
  %117 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %117, i32** %dataptr, align 8, !tbaa !1
  %arraydecay104 = getelementptr inbounds [48 x i32], [48 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay104, i32** %wsptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc, %for.end
  %118 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp106 = icmp slt i32 %118, 7
  br i1 %cmp106, label %for.body, label %for.end.265

for.body:                                         ; preds = %for.cond.105
  %119 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i32, i32* %119, i64 0
  %120 = load i32, i32* %arrayidx108, align 4, !tbaa !5
  %121 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i32, i32* %121, i64 40
  %122 = load i32, i32* %arrayidx109, align 4, !tbaa !5
  %add110 = add nsw i32 %120, %122
  %conv111 = sext i32 %add110 to i64
  store i64 %conv111, i64* %tmp0, align 8, !tbaa !8
  %123 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %123, i64 8
  %124 = load i32, i32* %arrayidx112, align 4, !tbaa !5
  %125 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i32, i32* %125, i64 32
  %126 = load i32, i32* %arrayidx113, align 4, !tbaa !5
  %add114 = add nsw i32 %124, %126
  %conv115 = sext i32 %add114 to i64
  store i64 %conv115, i64* %tmp1, align 8, !tbaa !8
  %127 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i32, i32* %127, i64 16
  %128 = load i32, i32* %arrayidx116, align 4, !tbaa !5
  %129 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %129, i64 24
  %130 = load i32, i32* %arrayidx117, align 4, !tbaa !5
  %add118 = add nsw i32 %128, %130
  %conv119 = sext i32 %add118 to i64
  store i64 %conv119, i64* %tmp2, align 8, !tbaa !8
  %131 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i32, i32* %131, i64 24
  %132 = load i32, i32* %arrayidx120, align 4, !tbaa !5
  %133 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i32, i32* %133, i64 16
  %134 = load i32, i32* %arrayidx121, align 4, !tbaa !5
  %add122 = add nsw i32 %132, %134
  %conv123 = sext i32 %add122 to i64
  store i64 %conv123, i64* %tmp13, align 8, !tbaa !8
  %135 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i32, i32* %135, i64 32
  %136 = load i32, i32* %arrayidx124, align 4, !tbaa !5
  %137 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i32, i32* %137, i64 8
  %138 = load i32, i32* %arrayidx125, align 4, !tbaa !5
  %add126 = add nsw i32 %136, %138
  %conv127 = sext i32 %add126 to i64
  store i64 %conv127, i64* %tmp4, align 8, !tbaa !8
  %139 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i32, i32* %139, i64 40
  %140 = load i32, i32* %arrayidx128, align 4, !tbaa !5
  %141 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i32, i32* %141, i64 0
  %142 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %add130 = add nsw i32 %140, %142
  %conv131 = sext i32 %add130 to i64
  store i64 %conv131, i64* %tmp5, align 8, !tbaa !8
  %143 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %143, i64 48
  %144 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %145 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i32, i32* %145, i64 56
  %146 = load i32, i32* %arrayidx133, align 4, !tbaa !5
  %add134 = add nsw i32 %144, %146
  %conv135 = sext i32 %add134 to i64
  store i64 %conv135, i64* %tmp6, align 8, !tbaa !8
  %147 = load i64, i64* %tmp0, align 8, !tbaa !8
  %148 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add136 = add nsw i64 %147, %148
  store i64 %add136, i64* %tmp10, align 8, !tbaa !8
  %149 = load i64, i64* %tmp0, align 8, !tbaa !8
  %150 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub137 = sub nsw i64 %149, %150
  store i64 %sub137, i64* %tmp14, align 8, !tbaa !8
  %151 = load i64, i64* %tmp1, align 8, !tbaa !8
  %152 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add138 = add nsw i64 %151, %152
  store i64 %add138, i64* %tmp11, align 8, !tbaa !8
  %153 = load i64, i64* %tmp1, align 8, !tbaa !8
  %154 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub139 = sub nsw i64 %153, %154
  store i64 %sub139, i64* %tmp15, align 8, !tbaa !8
  %155 = load i64, i64* %tmp2, align 8, !tbaa !8
  %156 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add140 = add nsw i64 %155, %156
  store i64 %add140, i64* %tmp12, align 8, !tbaa !8
  %157 = load i64, i64* %tmp2, align 8, !tbaa !8
  %158 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub141 = sub nsw i64 %157, %158
  store i64 %sub141, i64* %tmp16, align 8, !tbaa !8
  %159 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i32, i32* %159, i64 0
  %160 = load i32, i32* %arrayidx142, align 4, !tbaa !5
  %161 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i32, i32* %161, i64 40
  %162 = load i32, i32* %arrayidx143, align 4, !tbaa !5
  %sub144 = sub nsw i32 %160, %162
  %conv145 = sext i32 %sub144 to i64
  store i64 %conv145, i64* %tmp0, align 8, !tbaa !8
  %163 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i32, i32* %163, i64 8
  %164 = load i32, i32* %arrayidx146, align 4, !tbaa !5
  %165 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i32, i32* %165, i64 32
  %166 = load i32, i32* %arrayidx147, align 4, !tbaa !5
  %sub148 = sub nsw i32 %164, %166
  %conv149 = sext i32 %sub148 to i64
  store i64 %conv149, i64* %tmp1, align 8, !tbaa !8
  %167 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i32, i32* %167, i64 16
  %168 = load i32, i32* %arrayidx150, align 4, !tbaa !5
  %169 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i32, i32* %169, i64 24
  %170 = load i32, i32* %arrayidx151, align 4, !tbaa !5
  %sub152 = sub nsw i32 %168, %170
  %conv153 = sext i32 %sub152 to i64
  store i64 %conv153, i64* %tmp2, align 8, !tbaa !8
  %171 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i32, i32* %171, i64 24
  %172 = load i32, i32* %arrayidx154, align 4, !tbaa !5
  %173 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i32, i32* %173, i64 16
  %174 = load i32, i32* %arrayidx155, align 4, !tbaa !5
  %sub156 = sub nsw i32 %172, %174
  %conv157 = sext i32 %sub156 to i64
  store i64 %conv157, i64* %tmp3, align 8, !tbaa !8
  %175 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i32, i32* %175, i64 32
  %176 = load i32, i32* %arrayidx158, align 4, !tbaa !5
  %177 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i32, i32* %177, i64 8
  %178 = load i32, i32* %arrayidx159, align 4, !tbaa !5
  %sub160 = sub nsw i32 %176, %178
  %conv161 = sext i32 %sub160 to i64
  store i64 %conv161, i64* %tmp4, align 8, !tbaa !8
  %179 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i32, i32* %179, i64 40
  %180 = load i32, i32* %arrayidx162, align 4, !tbaa !5
  %181 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i32, i32* %181, i64 0
  %182 = load i32, i32* %arrayidx163, align 4, !tbaa !5
  %sub164 = sub nsw i32 %180, %182
  %conv165 = sext i32 %sub164 to i64
  store i64 %conv165, i64* %tmp5, align 8, !tbaa !8
  %183 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i32, i32* %183, i64 48
  %184 = load i32, i32* %arrayidx166, align 4, !tbaa !5
  %185 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i32, i32* %185, i64 56
  %186 = load i32, i32* %arrayidx167, align 4, !tbaa !5
  %sub168 = sub nsw i32 %184, %186
  %conv169 = sext i32 %sub168 to i64
  store i64 %conv169, i64* %tmp6, align 8, !tbaa !8
  %187 = load i64, i64* %tmp10, align 8, !tbaa !8
  %188 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add170 = add nsw i64 %187, %188
  %189 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add171 = add nsw i64 %add170, %189
  %190 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add172 = add nsw i64 %add171, %190
  %mul173 = mul nsw i64 %add172, 5350
  %add174 = add nsw i64 %mul173, 16384
  %shr175 = ashr i64 %add174, 15
  %conv176 = trunc i64 %shr175 to i32
  %191 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i32, i32* %191, i64 0
  store i32 %conv176, i32* %arrayidx177, align 4, !tbaa !5
  %192 = load i64, i64* %tmp13, align 8, !tbaa !8
  %193 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add178 = add nsw i64 %193, %192
  store i64 %add178, i64* %tmp13, align 8, !tbaa !8
  %194 = load i64, i64* %tmp10, align 8, !tbaa !8
  %195 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub179 = sub nsw i64 %194, %195
  %mul180 = mul nsw i64 %sub179, 6817
  %196 = load i64, i64* %tmp11, align 8, !tbaa !8
  %197 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub181 = sub nsw i64 %196, %197
  %mul182 = mul nsw i64 %sub181, 1684
  %add183 = add nsw i64 %mul180, %mul182
  %198 = load i64, i64* %tmp12, align 8, !tbaa !8
  %199 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub184 = sub nsw i64 %198, %199
  %mul185 = mul nsw i64 %sub184, 4717
  %sub186 = sub nsw i64 %add183, %mul185
  %add187 = add nsw i64 %sub186, 16384
  %shr188 = ashr i64 %add187, 15
  %conv189 = trunc i64 %shr188 to i32
  %200 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i32, i32* %200, i64 32
  store i32 %conv189, i32* %arrayidx190, align 4, !tbaa !5
  %201 = load i64, i64* %tmp14, align 8, !tbaa !8
  %202 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add191 = add nsw i64 %201, %202
  %mul192 = mul nsw i64 %add191, 5915
  store i64 %mul192, i64* %tmp10, align 8, !tbaa !8
  %203 = load i64, i64* %tmp10, align 8, !tbaa !8
  %204 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul193 = mul nsw i64 %204, 1461
  %add194 = add nsw i64 %203, %mul193
  %205 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul195 = mul nsw i64 %205, 3283
  %add196 = add nsw i64 %add194, %mul195
  %add197 = add nsw i64 %add196, 16384
  %shr198 = ashr i64 %add197, 15
  %conv199 = trunc i64 %shr198 to i32
  %206 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i32, i32* %206, i64 16
  store i32 %conv199, i32* %arrayidx200, align 4, !tbaa !5
  %207 = load i64, i64* %tmp10, align 8, !tbaa !8
  %208 = load i64, i64* %tmp15, align 8, !tbaa !8
  %mul201 = mul nsw i64 %208, 9198
  %sub202 = sub nsw i64 %207, %mul201
  %209 = load i64, i64* %tmp16, align 8, !tbaa !8
  %mul203 = mul nsw i64 %209, 7376
  %sub204 = sub nsw i64 %sub202, %mul203
  %add205 = add nsw i64 %sub204, 16384
  %shr206 = ashr i64 %add205, 15
  %conv207 = trunc i64 %shr206 to i32
  %210 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i32, i32* %210, i64 48
  store i32 %conv207, i32* %arrayidx208, align 4, !tbaa !5
  %211 = load i64, i64* %tmp1, align 8, !tbaa !8
  %212 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add209 = add nsw i64 %211, %212
  store i64 %add209, i64* %tmp10, align 8, !tbaa !8
  %213 = load i64, i64* %tmp5, align 8, !tbaa !8
  %214 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub210 = sub nsw i64 %213, %214
  store i64 %sub210, i64* %tmp11, align 8, !tbaa !8
  %215 = load i64, i64* %tmp0, align 8, !tbaa !8
  %216 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub211 = sub nsw i64 %215, %216
  %217 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add212 = add nsw i64 %sub211, %217
  %218 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub213 = sub nsw i64 %add212, %218
  %219 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub214 = sub nsw i64 %sub213, %219
  %mul215 = mul nsw i64 %sub214, 5350
  %add216 = add nsw i64 %mul215, 16384
  %shr217 = ashr i64 %add216, 15
  %conv218 = trunc i64 %shr217 to i32
  %220 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i32, i32* %220, i64 56
  store i32 %conv218, i32* %arrayidx219, align 4, !tbaa !5
  %221 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul220 = mul nsw i64 %221, 5350
  store i64 %mul220, i64* %tmp3, align 8, !tbaa !8
  %222 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul221 = mul nsw i64 %222, -847
  store i64 %mul221, i64* %tmp10, align 8, !tbaa !8
  %223 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul222 = mul nsw i64 %223, 7518
  store i64 %mul222, i64* %tmp11, align 8, !tbaa !8
  %224 = load i64, i64* %tmp11, align 8, !tbaa !8
  %225 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub223 = sub nsw i64 %224, %225
  %226 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add224 = add nsw i64 %226, %sub223
  store i64 %add224, i64* %tmp10, align 8, !tbaa !8
  %227 = load i64, i64* %tmp0, align 8, !tbaa !8
  %228 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add225 = add nsw i64 %227, %228
  %mul226 = mul nsw i64 %add225, 6406
  %229 = load i64, i64* %tmp4, align 8, !tbaa !8
  %230 = load i64, i64* %tmp6, align 8, !tbaa !8
  %add227 = add nsw i64 %229, %230
  %mul228 = mul nsw i64 %add227, 4025
  %add229 = add nsw i64 %mul226, %mul228
  store i64 %add229, i64* %tmp11, align 8, !tbaa !8
  %231 = load i64, i64* %tmp10, align 8, !tbaa !8
  %232 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add230 = add nsw i64 %231, %232
  %233 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul231 = mul nsw i64 %233, 12700
  %sub232 = sub nsw i64 %add230, %mul231
  %234 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul233 = mul nsw i64 %234, 5992
  %add234 = add nsw i64 %sub232, %mul233
  %add235 = add nsw i64 %add234, 16384
  %shr236 = ashr i64 %add235, 15
  %conv237 = trunc i64 %shr236 to i32
  %235 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds i32, i32* %235, i64 40
  store i32 %conv237, i32* %arrayidx238, align 4, !tbaa !5
  %236 = load i64, i64* %tmp0, align 8, !tbaa !8
  %237 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add239 = add nsw i64 %236, %237
  %mul240 = mul nsw i64 %add239, 7141
  %238 = load i64, i64* %tmp5, align 8, !tbaa !8
  %239 = load i64, i64* %tmp6, align 8, !tbaa !8
  %sub241 = sub nsw i64 %238, %239
  %mul242 = mul nsw i64 %sub241, 2499
  %add243 = add nsw i64 %mul240, %mul242
  store i64 %add243, i64* %tmp12, align 8, !tbaa !8
  %240 = load i64, i64* %tmp10, align 8, !tbaa !8
  %241 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add244 = add nsw i64 %240, %241
  %242 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul245 = mul nsw i64 %242, 2269
  %sub246 = sub nsw i64 %add244, %mul245
  %243 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul247 = mul nsw i64 %243, 16423
  %sub248 = sub nsw i64 %sub246, %mul247
  %add249 = add nsw i64 %sub248, 16384
  %shr250 = ashr i64 %add249, 15
  %conv251 = trunc i64 %shr250 to i32
  %244 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i32, i32* %244, i64 24
  store i32 %conv251, i32* %arrayidx252, align 4, !tbaa !5
  %245 = load i64, i64* %tmp11, align 8, !tbaa !8
  %246 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add253 = add nsw i64 %245, %246
  %247 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add254 = add nsw i64 %add253, %247
  %248 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul255 = mul nsw i64 %248, 6029
  %sub256 = sub nsw i64 %add254, %mul255
  %249 = load i64, i64* %tmp6, align 8, !tbaa !8
  %mul257 = mul nsw i64 %249, 679
  %sub258 = sub nsw i64 %sub256, %mul257
  %add259 = add nsw i64 %sub258, 16384
  %shr260 = ashr i64 %add259, 15
  %conv261 = trunc i64 %shr260 to i32
  %250 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds i32, i32* %250, i64 8
  store i32 %conv261, i32* %arrayidx262, align 4, !tbaa !5
  %251 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %252 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr263 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %incdec.ptr263, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %253 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc264 = add nsw i32 %253, 1
  store i32 %inc264, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.105

for.end.265:                                      ; preds = %for.cond.105
  %254 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %256 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #1
  %257 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast [48 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 192, i8* %258) #1
  %259 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  %266 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #1
  %267 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  %268 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  %269 = bitcast i64* %tmp6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %270 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  %272 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_6x12(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %workspace = alloca [32 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast [32 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 128, i8* %12) #1
  %13 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %18 = bitcast i32* %17 to i8*
  %call = call i8* @memset(i8* %18, i32 0, i64 256) #3
  %19 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %19, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.74, %entry
  %20 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %20 to i64
  %21 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %23 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %24 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %25 to i32
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %26, i64 5
  %27 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %27 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %29 to i32
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %30, i64 4
  %31 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %31 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp11, align 8, !tbaa !8
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %33 to i32
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %34, i64 3
  %35 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %35 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, i64* %tmp2, align 8, !tbaa !8
  %36 = load i64, i64* %tmp0, align 8, !tbaa !8
  %37 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add17 = add nsw i64 %36, %37
  store i64 %add17, i64* %tmp10, align 8, !tbaa !8
  %38 = load i64, i64* %tmp0, align 8, !tbaa !8
  %39 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub = sub nsw i64 %38, %39
  store i64 %sub, i64* %tmp12, align 8, !tbaa !8
  %40 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %41 to i32
  %42 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %42, i64 5
  %43 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %43 to i32
  %sub22 = sub nsw i32 %conv19, %conv21
  %conv23 = sext i32 %sub22 to i64
  store i64 %conv23, i64* %tmp0, align 8, !tbaa !8
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %45 to i32
  %46 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %46, i64 4
  %47 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv27 = zext i8 %47 to i32
  %sub28 = sub nsw i32 %conv25, %conv27
  %conv29 = sext i32 %sub28 to i64
  store i64 %conv29, i64* %tmp1, align 8, !tbaa !8
  %48 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %48, i64 2
  %49 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = zext i8 %49 to i32
  %50 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %50, i64 3
  %51 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %51 to i32
  %sub34 = sub nsw i32 %conv31, %conv33
  %conv35 = sext i32 %sub34 to i64
  store i64 %conv35, i64* %tmp2, align 8, !tbaa !8
  %52 = load i64, i64* %tmp10, align 8, !tbaa !8
  %53 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add36 = add nsw i64 %52, %53
  %sub37 = sub nsw i64 %add36, 768
  %shl = shl i64 %sub37, 2
  %conv38 = trunc i64 %shl to i32
  %54 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %conv38, i32* %arrayidx39, align 4, !tbaa !5
  %55 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul = mul nsw i64 %55, 10033
  %add40 = add nsw i64 %mul, 1024
  %shr = ashr i64 %add40, 11
  %conv41 = trunc i64 %shr to i32
  %56 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %conv41, i32* %arrayidx42, align 4, !tbaa !5
  %57 = load i64, i64* %tmp10, align 8, !tbaa !8
  %58 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub43 = sub nsw i64 %57, %58
  %59 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub44 = sub nsw i64 %sub43, %59
  %mul45 = mul nsw i64 %sub44, 5793
  %add46 = add nsw i64 %mul45, 1024
  %shr47 = ashr i64 %add46, 11
  %conv48 = trunc i64 %shr47 to i32
  %60 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i32, i32* %60, i64 4
  store i32 %conv48, i32* %arrayidx49, align 4, !tbaa !5
  %61 = load i64, i64* %tmp0, align 8, !tbaa !8
  %62 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add50 = add nsw i64 %61, %62
  %mul51 = mul nsw i64 %add50, 2998
  %add52 = add nsw i64 %mul51, 1024
  %shr53 = ashr i64 %add52, 11
  store i64 %shr53, i64* %tmp10, align 8, !tbaa !8
  %63 = load i64, i64* %tmp10, align 8, !tbaa !8
  %64 = load i64, i64* %tmp0, align 8, !tbaa !8
  %65 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add54 = add nsw i64 %64, %65
  %shl55 = shl i64 %add54, 2
  %add56 = add nsw i64 %63, %shl55
  %conv57 = trunc i64 %add56 to i32
  %66 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %conv57, i32* %arrayidx58, align 4, !tbaa !5
  %67 = load i64, i64* %tmp0, align 8, !tbaa !8
  %68 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub59 = sub nsw i64 %67, %68
  %69 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub60 = sub nsw i64 %sub59, %69
  %shl61 = shl i64 %sub60, 2
  %conv62 = trunc i64 %shl61 to i32
  %70 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 %conv62, i32* %arrayidx63, align 4, !tbaa !5
  %71 = load i64, i64* %tmp10, align 8, !tbaa !8
  %72 = load i64, i64* %tmp2, align 8, !tbaa !8
  %73 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub64 = sub nsw i64 %72, %73
  %shl65 = shl i64 %sub64, 2
  %add66 = add nsw i64 %71, %shl65
  %conv67 = trunc i64 %add66 to i32
  %74 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %74, i64 5
  store i32 %conv67, i32* %arrayidx68, align 4, !tbaa !5
  %75 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %76 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %76, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %77 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %77, 12
  br i1 %cmp70, label %if.then.72, label %if.end

if.then.72:                                       ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %78 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr73 = getelementptr inbounds i32, i32* %78, i64 8
  store i32* %add.ptr73, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.74

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.72
  %79 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %79, i32** %dataptr, align 8, !tbaa !1
  %arraydecay75 = getelementptr inbounds [32 x i32], [32 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay75, i32** %wsptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc, %for.end
  %80 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %80, 6
  br i1 %cmp77, label %for.body, label %for.end.216

for.body:                                         ; preds = %for.cond.76
  %81 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i32, i32* %81, i64 0
  %82 = load i32, i32* %arrayidx79, align 4, !tbaa !5
  %83 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i32, i32* %83, i64 24
  %84 = load i32, i32* %arrayidx80, align 4, !tbaa !5
  %add81 = add nsw i32 %82, %84
  %conv82 = sext i32 %add81 to i64
  store i64 %conv82, i64* %tmp0, align 8, !tbaa !8
  %85 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i32, i32* %85, i64 8
  %86 = load i32, i32* %arrayidx83, align 4, !tbaa !5
  %87 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i32, i32* %87, i64 16
  %88 = load i32, i32* %arrayidx84, align 4, !tbaa !5
  %add85 = add nsw i32 %86, %88
  %conv86 = sext i32 %add85 to i64
  store i64 %conv86, i64* %tmp1, align 8, !tbaa !8
  %89 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i32, i32* %89, i64 16
  %90 = load i32, i32* %arrayidx87, align 4, !tbaa !5
  %91 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i32, i32* %91, i64 8
  %92 = load i32, i32* %arrayidx88, align 4, !tbaa !5
  %add89 = add nsw i32 %90, %92
  %conv90 = sext i32 %add89 to i64
  store i64 %conv90, i64* %tmp2, align 8, !tbaa !8
  %93 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i32, i32* %93, i64 24
  %94 = load i32, i32* %arrayidx91, align 4, !tbaa !5
  %95 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i32, i32* %95, i64 0
  %96 = load i32, i32* %arrayidx92, align 4, !tbaa !5
  %add93 = add nsw i32 %94, %96
  %conv94 = sext i32 %add93 to i64
  store i64 %conv94, i64* %tmp3, align 8, !tbaa !8
  %97 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i32, i32* %97, i64 32
  %98 = load i32, i32* %arrayidx95, align 4, !tbaa !5
  %99 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %99, i64 56
  %100 = load i32, i32* %arrayidx96, align 4, !tbaa !5
  %add97 = add nsw i32 %98, %100
  %conv98 = sext i32 %add97 to i64
  store i64 %conv98, i64* %tmp4, align 8, !tbaa !8
  %101 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i32, i32* %101, i64 40
  %102 = load i32, i32* %arrayidx99, align 4, !tbaa !5
  %103 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i32, i32* %103, i64 48
  %104 = load i32, i32* %arrayidx100, align 4, !tbaa !5
  %add101 = add nsw i32 %102, %104
  %conv102 = sext i32 %add101 to i64
  store i64 %conv102, i64* %tmp5, align 8, !tbaa !8
  %105 = load i64, i64* %tmp0, align 8, !tbaa !8
  %106 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add103 = add nsw i64 %105, %106
  store i64 %add103, i64* %tmp10, align 8, !tbaa !8
  %107 = load i64, i64* %tmp0, align 8, !tbaa !8
  %108 = load i64, i64* %tmp5, align 8, !tbaa !8
  %sub104 = sub nsw i64 %107, %108
  store i64 %sub104, i64* %tmp13, align 8, !tbaa !8
  %109 = load i64, i64* %tmp1, align 8, !tbaa !8
  %110 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add105 = add nsw i64 %109, %110
  store i64 %add105, i64* %tmp11, align 8, !tbaa !8
  %111 = load i64, i64* %tmp1, align 8, !tbaa !8
  %112 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub106 = sub nsw i64 %111, %112
  store i64 %sub106, i64* %tmp14, align 8, !tbaa !8
  %113 = load i64, i64* %tmp2, align 8, !tbaa !8
  %114 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add107 = add nsw i64 %113, %114
  store i64 %add107, i64* %tmp12, align 8, !tbaa !8
  %115 = load i64, i64* %tmp2, align 8, !tbaa !8
  %116 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub108 = sub nsw i64 %115, %116
  store i64 %sub108, i64* %tmp15, align 8, !tbaa !8
  %117 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i32, i32* %117, i64 0
  %118 = load i32, i32* %arrayidx109, align 4, !tbaa !5
  %119 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i32, i32* %119, i64 24
  %120 = load i32, i32* %arrayidx110, align 4, !tbaa !5
  %sub111 = sub nsw i32 %118, %120
  %conv112 = sext i32 %sub111 to i64
  store i64 %conv112, i64* %tmp0, align 8, !tbaa !8
  %121 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i32, i32* %121, i64 8
  %122 = load i32, i32* %arrayidx113, align 4, !tbaa !5
  %123 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i32, i32* %123, i64 16
  %124 = load i32, i32* %arrayidx114, align 4, !tbaa !5
  %sub115 = sub nsw i32 %122, %124
  %conv116 = sext i32 %sub115 to i64
  store i64 %conv116, i64* %tmp1, align 8, !tbaa !8
  %125 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %125, i64 16
  %126 = load i32, i32* %arrayidx117, align 4, !tbaa !5
  %127 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i32, i32* %127, i64 8
  %128 = load i32, i32* %arrayidx118, align 4, !tbaa !5
  %sub119 = sub nsw i32 %126, %128
  %conv120 = sext i32 %sub119 to i64
  store i64 %conv120, i64* %tmp2, align 8, !tbaa !8
  %129 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i32, i32* %129, i64 24
  %130 = load i32, i32* %arrayidx121, align 4, !tbaa !5
  %131 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i32, i32* %131, i64 0
  %132 = load i32, i32* %arrayidx122, align 4, !tbaa !5
  %sub123 = sub nsw i32 %130, %132
  %conv124 = sext i32 %sub123 to i64
  store i64 %conv124, i64* %tmp3, align 8, !tbaa !8
  %133 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i32, i32* %133, i64 32
  %134 = load i32, i32* %arrayidx125, align 4, !tbaa !5
  %135 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i32, i32* %135, i64 56
  %136 = load i32, i32* %arrayidx126, align 4, !tbaa !5
  %sub127 = sub nsw i32 %134, %136
  %conv128 = sext i32 %sub127 to i64
  store i64 %conv128, i64* %tmp4, align 8, !tbaa !8
  %137 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i32, i32* %137, i64 40
  %138 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %139 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i32, i32* %139, i64 48
  %140 = load i32, i32* %arrayidx130, align 4, !tbaa !5
  %sub131 = sub nsw i32 %138, %140
  %conv132 = sext i32 %sub131 to i64
  store i64 %conv132, i64* %tmp5, align 8, !tbaa !8
  %141 = load i64, i64* %tmp10, align 8, !tbaa !8
  %142 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add133 = add nsw i64 %141, %142
  %143 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add134 = add nsw i64 %add133, %143
  %mul135 = mul nsw i64 %add134, 7282
  %add136 = add nsw i64 %mul135, 16384
  %shr137 = ashr i64 %add136, 15
  %conv138 = trunc i64 %shr137 to i32
  %144 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 %conv138, i32* %arrayidx139, align 4, !tbaa !5
  %145 = load i64, i64* %tmp13, align 8, !tbaa !8
  %146 = load i64, i64* %tmp14, align 8, !tbaa !8
  %sub140 = sub nsw i64 %145, %146
  %147 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub141 = sub nsw i64 %sub140, %147
  %mul142 = mul nsw i64 %sub141, 7282
  %add143 = add nsw i64 %mul142, 16384
  %shr144 = ashr i64 %add143, 15
  %conv145 = trunc i64 %shr144 to i32
  %148 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i32, i32* %148, i64 48
  store i32 %conv145, i32* %arrayidx146, align 4, !tbaa !5
  %149 = load i64, i64* %tmp10, align 8, !tbaa !8
  %150 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub147 = sub nsw i64 %149, %150
  %mul148 = mul nsw i64 %sub147, 8918
  %add149 = add nsw i64 %mul148, 16384
  %shr150 = ashr i64 %add149, 15
  %conv151 = trunc i64 %shr150 to i32
  %151 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i32, i32* %151, i64 32
  store i32 %conv151, i32* %arrayidx152, align 4, !tbaa !5
  %152 = load i64, i64* %tmp14, align 8, !tbaa !8
  %153 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub153 = sub nsw i64 %152, %153
  %mul154 = mul nsw i64 %sub153, 7282
  %154 = load i64, i64* %tmp13, align 8, !tbaa !8
  %155 = load i64, i64* %tmp15, align 8, !tbaa !8
  %add155 = add nsw i64 %154, %155
  %mul156 = mul nsw i64 %add155, 9947
  %add157 = add nsw i64 %mul154, %mul156
  %add158 = add nsw i64 %add157, 16384
  %shr159 = ashr i64 %add158, 15
  %conv160 = trunc i64 %shr159 to i32
  %156 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i32, i32* %156, i64 16
  store i32 %conv160, i32* %arrayidx161, align 4, !tbaa !5
  %157 = load i64, i64* %tmp1, align 8, !tbaa !8
  %158 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add162 = add nsw i64 %157, %158
  %mul163 = mul nsw i64 %add162, 3941
  store i64 %mul163, i64* %tmp10, align 8, !tbaa !8
  %159 = load i64, i64* %tmp10, align 8, !tbaa !8
  %160 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul164 = mul nsw i64 %160, 5573
  %add165 = add nsw i64 %159, %mul164
  store i64 %add165, i64* %tmp14, align 8, !tbaa !8
  %161 = load i64, i64* %tmp10, align 8, !tbaa !8
  %162 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul166 = mul nsw i64 %162, 13455
  %sub167 = sub nsw i64 %161, %mul166
  store i64 %sub167, i64* %tmp15, align 8, !tbaa !8
  %163 = load i64, i64* %tmp0, align 8, !tbaa !8
  %164 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add168 = add nsw i64 %163, %164
  %mul169 = mul nsw i64 %add168, 8170
  store i64 %mul169, i64* %tmp12, align 8, !tbaa !8
  %165 = load i64, i64* %tmp0, align 8, !tbaa !8
  %166 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add170 = add nsw i64 %165, %166
  %mul171 = mul nsw i64 %add170, 6269
  store i64 %mul171, i64* %tmp13, align 8, !tbaa !8
  %167 = load i64, i64* %tmp12, align 8, !tbaa !8
  %168 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add172 = add nsw i64 %167, %168
  %169 = load i64, i64* %tmp14, align 8, !tbaa !8
  %add173 = add nsw i64 %add172, %169
  %170 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul174 = mul nsw i64 %170, 4229
  %sub175 = sub nsw i64 %add173, %mul174
  %171 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul176 = mul nsw i64 %171, 1344
  %add177 = add nsw i64 %sub175, %mul176
  store i64 %add177, i64* %tmp10, align 8, !tbaa !8
  %172 = load i64, i64* %tmp2, align 8, !tbaa !8
  %173 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add178 = add nsw i64 %172, %173
  %mul179 = mul nsw i64 %add178, -1344
  store i64 %mul179, i64* %tmp11, align 8, !tbaa !8
  %174 = load i64, i64* %tmp11, align 8, !tbaa !8
  %175 = load i64, i64* %tmp15, align 8, !tbaa !8
  %sub180 = sub nsw i64 %174, %175
  %176 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul181 = mul nsw i64 %176, 17036
  %sub182 = sub nsw i64 %sub180, %mul181
  %177 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul183 = mul nsw i64 %177, 6269
  %add184 = add nsw i64 %sub182, %mul183
  %178 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add185 = add nsw i64 %178, %add184
  store i64 %add185, i64* %tmp12, align 8, !tbaa !8
  %179 = load i64, i64* %tmp11, align 8, !tbaa !8
  %180 = load i64, i64* %tmp14, align 8, !tbaa !8
  %sub186 = sub nsw i64 %179, %180
  %181 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul187 = mul nsw i64 %181, 5285
  %add188 = add nsw i64 %sub186, %mul187
  %182 = load i64, i64* %tmp5, align 8, !tbaa !8
  %mul189 = mul nsw i64 %182, 8170
  %sub190 = sub nsw i64 %add188, %mul189
  %183 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add191 = add nsw i64 %183, %sub190
  store i64 %add191, i64* %tmp13, align 8, !tbaa !8
  %184 = load i64, i64* %tmp15, align 8, !tbaa !8
  %185 = load i64, i64* %tmp0, align 8, !tbaa !8
  %186 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub192 = sub nsw i64 %185, %186
  %mul193 = mul nsw i64 %sub192, 9514
  %add194 = add nsw i64 %184, %mul193
  %187 = load i64, i64* %tmp2, align 8, !tbaa !8
  %188 = load i64, i64* %tmp5, align 8, !tbaa !8
  %add195 = add nsw i64 %187, %188
  %mul196 = mul nsw i64 %add195, 3941
  %sub197 = sub nsw i64 %add194, %mul196
  store i64 %sub197, i64* %tmp11, align 8, !tbaa !8
  %189 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add198 = add nsw i64 %189, 16384
  %shr199 = ashr i64 %add198, 15
  %conv200 = trunc i64 %shr199 to i32
  %190 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i32, i32* %190, i64 8
  store i32 %conv200, i32* %arrayidx201, align 4, !tbaa !5
  %191 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add202 = add nsw i64 %191, 16384
  %shr203 = ashr i64 %add202, 15
  %conv204 = trunc i64 %shr203 to i32
  %192 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i32, i32* %192, i64 24
  store i32 %conv204, i32* %arrayidx205, align 4, !tbaa !5
  %193 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add206 = add nsw i64 %193, 16384
  %shr207 = ashr i64 %add206, 15
  %conv208 = trunc i64 %shr207 to i32
  %194 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds i32, i32* %194, i64 40
  store i32 %conv208, i32* %arrayidx209, align 4, !tbaa !5
  %195 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add210 = add nsw i64 %195, 16384
  %shr211 = ashr i64 %add210, 15
  %conv212 = trunc i64 %shr211 to i32
  %196 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i32, i32* %196, i64 56
  store i32 %conv212, i32* %arrayidx213, align 4, !tbaa !5
  %197 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %198 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr214 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %incdec.ptr214, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %199 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc215 = add nsw i32 %199, 1
  store i32 %inc215, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.76

for.end.216:                                      ; preds = %for.cond.76
  %200 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast [32 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 128, i8* %204) #1
  %205 = bitcast i64* %tmp15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i64* %tmp5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_5x10(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %workspace = alloca [16 x i32], align 16
  %dataptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast [16 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 64, i8* %10) #1
  %11 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %16 = bitcast i32* %15 to i8*
  %call = call i8* @memset(i8* %16, i32 0, i64 256) #3
  %17 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %17, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.62, %entry
  %18 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %19 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  %20 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %21 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %22 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %23 to i32
  %24 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %24, i64 4
  %25 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %25 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %27 to i32
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %28, i64 3
  %29 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %29 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %31 to i32
  %conv13 = sext i32 %conv12 to i64
  store i64 %conv13, i64* %tmp2, align 8, !tbaa !8
  %32 = load i64, i64* %tmp0, align 8, !tbaa !8
  %33 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add14 = add nsw i64 %32, %33
  store i64 %add14, i64* %tmp10, align 8, !tbaa !8
  %34 = load i64, i64* %tmp0, align 8, !tbaa !8
  %35 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub = sub nsw i64 %34, %35
  store i64 %sub, i64* %tmp11, align 8, !tbaa !8
  %36 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx15, align 1, !tbaa !7
  %conv16 = zext i8 %37 to i32
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %38, i64 4
  %39 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %39 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %conv20 = sext i32 %sub19 to i64
  store i64 %conv20, i64* %tmp0, align 8, !tbaa !8
  %40 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %conv22 = zext i8 %41 to i32
  %42 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %42, i64 3
  %43 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %conv24 = zext i8 %43 to i32
  %sub25 = sub nsw i32 %conv22, %conv24
  %conv26 = sext i32 %sub25 to i64
  store i64 %conv26, i64* %tmp1, align 8, !tbaa !8
  %44 = load i64, i64* %tmp10, align 8, !tbaa !8
  %45 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add27 = add nsw i64 %44, %45
  %sub28 = sub nsw i64 %add27, 640
  %shl = shl i64 %sub28, 2
  %conv29 = trunc i64 %shl to i32
  %46 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %conv29, i32* %arrayidx30, align 4, !tbaa !5
  %47 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul = mul nsw i64 %47, 6476
  store i64 %mul, i64* %tmp11, align 8, !tbaa !8
  %48 = load i64, i64* %tmp2, align 8, !tbaa !8
  %shl31 = shl i64 %48, 2
  %49 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub32 = sub nsw i64 %49, %shl31
  store i64 %sub32, i64* %tmp10, align 8, !tbaa !8
  %50 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul33 = mul nsw i64 %50, 2896
  store i64 %mul33, i64* %tmp10, align 8, !tbaa !8
  %51 = load i64, i64* %tmp11, align 8, !tbaa !8
  %52 = load i64, i64* %tmp10, align 8, !tbaa !8
  %add34 = add nsw i64 %51, %52
  %add35 = add nsw i64 %add34, 1024
  %shr = ashr i64 %add35, 11
  %conv36 = trunc i64 %shr to i32
  %53 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %conv36, i32* %arrayidx37, align 4, !tbaa !5
  %54 = load i64, i64* %tmp11, align 8, !tbaa !8
  %55 = load i64, i64* %tmp10, align 8, !tbaa !8
  %sub38 = sub nsw i64 %54, %55
  %add39 = add nsw i64 %sub38, 1024
  %shr40 = ashr i64 %add39, 11
  %conv41 = trunc i64 %shr40 to i32
  %56 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %conv41, i32* %arrayidx42, align 4, !tbaa !5
  %57 = load i64, i64* %tmp0, align 8, !tbaa !8
  %58 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add43 = add nsw i64 %57, %58
  %mul44 = mul nsw i64 %add43, 6810
  store i64 %mul44, i64* %tmp10, align 8, !tbaa !8
  %59 = load i64, i64* %tmp10, align 8, !tbaa !8
  %60 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul45 = mul nsw i64 %60, 4209
  %add46 = add nsw i64 %59, %mul45
  %add47 = add nsw i64 %add46, 1024
  %shr48 = ashr i64 %add47, 11
  %conv49 = trunc i64 %shr48 to i32
  %61 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %conv49, i32* %arrayidx50, align 4, !tbaa !5
  %62 = load i64, i64* %tmp10, align 8, !tbaa !8
  %63 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul51 = mul nsw i64 %63, 17828
  %sub52 = sub nsw i64 %62, %mul51
  %add53 = add nsw i64 %sub52, 1024
  %shr54 = ashr i64 %add53, 11
  %conv55 = trunc i64 %shr54 to i32
  %64 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %conv55, i32* %arrayidx56, align 4, !tbaa !5
  %65 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  %66 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp ne i32 %66, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %67 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp58 = icmp eq i32 %67, 10
  br i1 %cmp58, label %if.then.60, label %if.end

if.then.60:                                       ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %68 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds i32, i32* %68, i64 8
  store i32* %add.ptr61, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.62

if.else:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %dataptr, align 8, !tbaa !1
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.60
  %69 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %69, i32** %dataptr, align 8, !tbaa !1
  %arraydecay63 = getelementptr inbounds [16 x i32], [16 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay63, i32** %wsptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc, %for.end
  %70 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %70, 5
  br i1 %cmp65, label %for.body, label %for.end.186

for.body:                                         ; preds = %for.cond.64
  %71 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx67, align 4, !tbaa !5
  %73 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %73, i64 8
  %74 = load i32, i32* %arrayidx68, align 4, !tbaa !5
  %add69 = add nsw i32 %72, %74
  %conv70 = sext i32 %add69 to i64
  store i64 %conv70, i64* %tmp0, align 8, !tbaa !8
  %75 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i32, i32* %75, i64 8
  %76 = load i32, i32* %arrayidx71, align 4, !tbaa !5
  %77 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i32, i32* %77, i64 0
  %78 = load i32, i32* %arrayidx72, align 4, !tbaa !5
  %add73 = add nsw i32 %76, %78
  %conv74 = sext i32 %add73 to i64
  store i64 %conv74, i64* %tmp1, align 8, !tbaa !8
  %79 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %79, i64 16
  %80 = load i32, i32* %arrayidx75, align 4, !tbaa !5
  %81 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i32, i32* %81, i64 56
  %82 = load i32, i32* %arrayidx76, align 4, !tbaa !5
  %add77 = add nsw i32 %80, %82
  %conv78 = sext i32 %add77 to i64
  store i64 %conv78, i64* %tmp12, align 8, !tbaa !8
  %83 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i32, i32* %83, i64 24
  %84 = load i32, i32* %arrayidx79, align 4, !tbaa !5
  %85 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i32, i32* %85, i64 48
  %86 = load i32, i32* %arrayidx80, align 4, !tbaa !5
  %add81 = add nsw i32 %84, %86
  %conv82 = sext i32 %add81 to i64
  store i64 %conv82, i64* %tmp3, align 8, !tbaa !8
  %87 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i32, i32* %87, i64 32
  %88 = load i32, i32* %arrayidx83, align 4, !tbaa !5
  %89 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i32, i32* %89, i64 40
  %90 = load i32, i32* %arrayidx84, align 4, !tbaa !5
  %add85 = add nsw i32 %88, %90
  %conv86 = sext i32 %add85 to i64
  store i64 %conv86, i64* %tmp4, align 8, !tbaa !8
  %91 = load i64, i64* %tmp0, align 8, !tbaa !8
  %92 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add87 = add nsw i64 %91, %92
  store i64 %add87, i64* %tmp10, align 8, !tbaa !8
  %93 = load i64, i64* %tmp0, align 8, !tbaa !8
  %94 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub88 = sub nsw i64 %93, %94
  store i64 %sub88, i64* %tmp13, align 8, !tbaa !8
  %95 = load i64, i64* %tmp1, align 8, !tbaa !8
  %96 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add89 = add nsw i64 %95, %96
  store i64 %add89, i64* %tmp11, align 8, !tbaa !8
  %97 = load i64, i64* %tmp1, align 8, !tbaa !8
  %98 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub90 = sub nsw i64 %97, %98
  store i64 %sub90, i64* %tmp14, align 8, !tbaa !8
  %99 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i32, i32* %99, i64 0
  %100 = load i32, i32* %arrayidx91, align 4, !tbaa !5
  %101 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i32, i32* %101, i64 8
  %102 = load i32, i32* %arrayidx92, align 4, !tbaa !5
  %sub93 = sub nsw i32 %100, %102
  %conv94 = sext i32 %sub93 to i64
  store i64 %conv94, i64* %tmp0, align 8, !tbaa !8
  %103 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i32, i32* %103, i64 8
  %104 = load i32, i32* %arrayidx95, align 4, !tbaa !5
  %105 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %105, i64 0
  %106 = load i32, i32* %arrayidx96, align 4, !tbaa !5
  %sub97 = sub nsw i32 %104, %106
  %conv98 = sext i32 %sub97 to i64
  store i64 %conv98, i64* %tmp1, align 8, !tbaa !8
  %107 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i32, i32* %107, i64 16
  %108 = load i32, i32* %arrayidx99, align 4, !tbaa !5
  %109 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i32, i32* %109, i64 56
  %110 = load i32, i32* %arrayidx100, align 4, !tbaa !5
  %sub101 = sub nsw i32 %108, %110
  %conv102 = sext i32 %sub101 to i64
  store i64 %conv102, i64* %tmp2, align 8, !tbaa !8
  %111 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i32, i32* %111, i64 24
  %112 = load i32, i32* %arrayidx103, align 4, !tbaa !5
  %113 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i32, i32* %113, i64 48
  %114 = load i32, i32* %arrayidx104, align 4, !tbaa !5
  %sub105 = sub nsw i32 %112, %114
  %conv106 = sext i32 %sub105 to i64
  store i64 %conv106, i64* %tmp3, align 8, !tbaa !8
  %115 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i32, i32* %115, i64 32
  %116 = load i32, i32* %arrayidx107, align 4, !tbaa !5
  %117 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i32, i32* %117, i64 40
  %118 = load i32, i32* %arrayidx108, align 4, !tbaa !5
  %sub109 = sub nsw i32 %116, %118
  %conv110 = sext i32 %sub109 to i64
  store i64 %conv110, i64* %tmp4, align 8, !tbaa !8
  %119 = load i64, i64* %tmp10, align 8, !tbaa !8
  %120 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add111 = add nsw i64 %119, %120
  %121 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add112 = add nsw i64 %add111, %121
  %mul113 = mul nsw i64 %add112, 10486
  %add114 = add nsw i64 %mul113, 16384
  %shr115 = ashr i64 %add114, 15
  %conv116 = trunc i64 %shr115 to i32
  %122 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %conv116, i32* %arrayidx117, align 4, !tbaa !5
  %123 = load i64, i64* %tmp12, align 8, !tbaa !8
  %124 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add118 = add nsw i64 %124, %123
  store i64 %add118, i64* %tmp12, align 8, !tbaa !8
  %125 = load i64, i64* %tmp10, align 8, !tbaa !8
  %126 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub119 = sub nsw i64 %125, %126
  %mul120 = mul nsw i64 %sub119, 11997
  %127 = load i64, i64* %tmp11, align 8, !tbaa !8
  %128 = load i64, i64* %tmp12, align 8, !tbaa !8
  %sub121 = sub nsw i64 %127, %128
  %mul122 = mul nsw i64 %sub121, 4582
  %sub123 = sub nsw i64 %mul120, %mul122
  %add124 = add nsw i64 %sub123, 16384
  %shr125 = ashr i64 %add124, 15
  %conv126 = trunc i64 %shr125 to i32
  %129 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i32, i32* %129, i64 32
  store i32 %conv126, i32* %arrayidx127, align 4, !tbaa !5
  %130 = load i64, i64* %tmp13, align 8, !tbaa !8
  %131 = load i64, i64* %tmp14, align 8, !tbaa !8
  %add128 = add nsw i64 %130, %131
  %mul129 = mul nsw i64 %add128, 8716
  store i64 %mul129, i64* %tmp10, align 8, !tbaa !8
  %132 = load i64, i64* %tmp10, align 8, !tbaa !8
  %133 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul130 = mul nsw i64 %133, 5387
  %add131 = add nsw i64 %132, %mul130
  %add132 = add nsw i64 %add131, 16384
  %shr133 = ashr i64 %add132, 15
  %conv134 = trunc i64 %shr133 to i32
  %134 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i32, i32* %134, i64 16
  store i32 %conv134, i32* %arrayidx135, align 4, !tbaa !5
  %135 = load i64, i64* %tmp10, align 8, !tbaa !8
  %136 = load i64, i64* %tmp14, align 8, !tbaa !8
  %mul136 = mul nsw i64 %136, 22820
  %sub137 = sub nsw i64 %135, %mul136
  %add138 = add nsw i64 %sub137, 16384
  %shr139 = ashr i64 %add138, 15
  %conv140 = trunc i64 %shr139 to i32
  %137 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i32, i32* %137, i64 48
  store i32 %conv140, i32* %arrayidx141, align 4, !tbaa !5
  %138 = load i64, i64* %tmp0, align 8, !tbaa !8
  %139 = load i64, i64* %tmp4, align 8, !tbaa !8
  %add142 = add nsw i64 %138, %139
  store i64 %add142, i64* %tmp10, align 8, !tbaa !8
  %140 = load i64, i64* %tmp1, align 8, !tbaa !8
  %141 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub143 = sub nsw i64 %140, %141
  store i64 %sub143, i64* %tmp11, align 8, !tbaa !8
  %142 = load i64, i64* %tmp10, align 8, !tbaa !8
  %143 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub144 = sub nsw i64 %142, %143
  %144 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub145 = sub nsw i64 %sub144, %144
  %mul146 = mul nsw i64 %sub145, 10486
  %add147 = add nsw i64 %mul146, 16384
  %shr148 = ashr i64 %add147, 15
  %conv149 = trunc i64 %shr148 to i32
  %145 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i32, i32* %145, i64 40
  store i32 %conv149, i32* %arrayidx150, align 4, !tbaa !5
  %146 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul151 = mul nsw i64 %146, 10486
  store i64 %mul151, i64* %tmp2, align 8, !tbaa !8
  %147 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul152 = mul nsw i64 %147, 14647
  %148 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul153 = mul nsw i64 %148, 13213
  %add154 = add nsw i64 %mul152, %mul153
  %149 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add155 = add nsw i64 %add154, %149
  %150 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul156 = mul nsw i64 %150, 6732
  %add157 = add nsw i64 %add155, %mul156
  %151 = load i64, i64* %tmp4, align 8, !tbaa !8
  %mul158 = mul nsw i64 %151, 2320
  %add159 = add nsw i64 %add157, %mul158
  %add160 = add nsw i64 %add159, 16384
  %shr161 = ashr i64 %add160, 15
  %conv162 = trunc i64 %shr161 to i32
  %152 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i32, i32* %152, i64 8
  store i32 %conv162, i32* %arrayidx163, align 4, !tbaa !5
  %153 = load i64, i64* %tmp0, align 8, !tbaa !8
  %154 = load i64, i64* %tmp4, align 8, !tbaa !8
  %sub164 = sub nsw i64 %153, %154
  %mul165 = mul nsw i64 %sub164, 9973
  %155 = load i64, i64* %tmp1, align 8, !tbaa !8
  %156 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add166 = add nsw i64 %155, %156
  %mul167 = mul nsw i64 %add166, 6163
  %sub168 = sub nsw i64 %mul165, %mul167
  store i64 %sub168, i64* %tmp12, align 8, !tbaa !8
  %157 = load i64, i64* %tmp10, align 8, !tbaa !8
  %158 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add169 = add nsw i64 %157, %158
  %mul170 = mul nsw i64 %add169, 3240
  %159 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul171 = mul nsw i64 %159, 5243
  %add172 = add nsw i64 %mul170, %mul171
  %160 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub173 = sub nsw i64 %add172, %160
  store i64 %sub173, i64* %tmp13, align 8, !tbaa !8
  %161 = load i64, i64* %tmp12, align 8, !tbaa !8
  %162 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add174 = add nsw i64 %161, %162
  %add175 = add nsw i64 %add174, 16384
  %shr176 = ashr i64 %add175, 15
  %conv177 = trunc i64 %shr176 to i32
  %163 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i32, i32* %163, i64 24
  store i32 %conv177, i32* %arrayidx178, align 4, !tbaa !5
  %164 = load i64, i64* %tmp12, align 8, !tbaa !8
  %165 = load i64, i64* %tmp13, align 8, !tbaa !8
  %sub179 = sub nsw i64 %164, %165
  %add180 = add nsw i64 %sub179, 16384
  %shr181 = ashr i64 %add180, 15
  %conv182 = trunc i64 %shr181 to i32
  %166 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i32, i32* %166, i64 56
  store i32 %conv182, i32* %arrayidx183, align 4, !tbaa !5
  %167 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  %168 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr184 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %incdec.ptr184, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %169 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc185 = add nsw i32 %169, 1
  store i32 %inc185, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.64

for.end.186:                                      ; preds = %for.cond.64
  %170 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast [16 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 64, i8* %174) #1
  %175 = bitcast i64* %tmp14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i64* %tmp4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_4x8(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %13 = bitcast i32* %12 to i8*
  %call = call i8* @memset(i8* %13, i32 0, i64 256) #3
  %14 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %14, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %19 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %20 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %21 to i32
  %22 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %23 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %24 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %25 to i32
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %26, i64 2
  %27 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %27 to i32
  %add9 = add nsw i32 %conv6, %conv8
  %conv10 = sext i32 %add9 to i64
  store i64 %conv10, i64* %tmp1, align 8, !tbaa !8
  %28 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %29 to i32
  %30 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %30, i64 3
  %31 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = zext i8 %31 to i32
  %sub = sub nsw i32 %conv12, %conv14
  %conv15 = sext i32 %sub to i64
  store i64 %conv15, i64* %tmp10, align 8, !tbaa !8
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %conv17 = zext i8 %33 to i32
  %34 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %35 to i32
  %sub20 = sub nsw i32 %conv17, %conv19
  %conv21 = sext i32 %sub20 to i64
  store i64 %conv21, i64* %tmp11, align 8, !tbaa !8
  %36 = load i64, i64* %tmp0, align 8, !tbaa !8
  %37 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add22 = add nsw i64 %36, %37
  %sub23 = sub nsw i64 %add22, 512
  %shl = shl i64 %sub23, 3
  %conv24 = trunc i64 %shl to i32
  %38 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %conv24, i32* %arrayidx25, align 4, !tbaa !5
  %39 = load i64, i64* %tmp0, align 8, !tbaa !8
  %40 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub26 = sub nsw i64 %39, %40
  %shl27 = shl i64 %sub26, 3
  %conv28 = trunc i64 %shl27 to i32
  %41 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %conv28, i32* %arrayidx29, align 4, !tbaa !5
  %42 = load i64, i64* %tmp10, align 8, !tbaa !8
  %43 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add30 = add nsw i64 %42, %43
  %mul = mul nsw i64 %add30, 4433
  store i64 %mul, i64* %tmp0, align 8, !tbaa !8
  %44 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add31 = add nsw i64 %44, 512
  store i64 %add31, i64* %tmp0, align 8, !tbaa !8
  %45 = load i64, i64* %tmp0, align 8, !tbaa !8
  %46 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul32 = mul nsw i64 %46, 6270
  %add33 = add nsw i64 %45, %mul32
  %shr = ashr i64 %add33, 10
  %conv34 = trunc i64 %shr to i32
  %47 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %conv34, i32* %arrayidx35, align 4, !tbaa !5
  %48 = load i64, i64* %tmp0, align 8, !tbaa !8
  %49 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul36 = mul nsw i64 %49, 15137
  %sub37 = sub nsw i64 %48, %mul36
  %shr38 = ashr i64 %sub37, 10
  %conv39 = trunc i64 %shr38 to i32
  %50 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %conv39, i32* %arrayidx40, align 4, !tbaa !5
  %51 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i32, i32* %51, i64 8
  store i32* %add.ptr41, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %53, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.141, %for.end
  %54 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %54, 4
  br i1 %cmp43, label %for.body.45, label %for.end.143

for.body.45:                                      ; preds = %for.cond.42
  %55 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i32, i32* %55, i64 0
  %56 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  %57 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i32, i32* %57, i64 56
  %58 = load i32, i32* %arrayidx47, align 4, !tbaa !5
  %add48 = add nsw i32 %56, %58
  %conv49 = sext i32 %add48 to i64
  store i64 %conv49, i64* %tmp0, align 8, !tbaa !8
  %59 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i32, i32* %59, i64 8
  %60 = load i32, i32* %arrayidx50, align 4, !tbaa !5
  %61 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i32, i32* %61, i64 48
  %62 = load i32, i32* %arrayidx51, align 4, !tbaa !5
  %add52 = add nsw i32 %60, %62
  %conv53 = sext i32 %add52 to i64
  store i64 %conv53, i64* %tmp1, align 8, !tbaa !8
  %63 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %63, i64 16
  %64 = load i32, i32* %arrayidx54, align 4, !tbaa !5
  %65 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %65, i64 40
  %66 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %add56 = add nsw i32 %64, %66
  %conv57 = sext i32 %add56 to i64
  store i64 %conv57, i64* %tmp2, align 8, !tbaa !8
  %67 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i32, i32* %67, i64 24
  %68 = load i32, i32* %arrayidx58, align 4, !tbaa !5
  %69 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i32, i32* %69, i64 32
  %70 = load i32, i32* %arrayidx59, align 4, !tbaa !5
  %add60 = add nsw i32 %68, %70
  %conv61 = sext i32 %add60 to i64
  store i64 %conv61, i64* %tmp3, align 8, !tbaa !8
  %71 = load i64, i64* %tmp0, align 8, !tbaa !8
  %72 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add62 = add nsw i64 %71, %72
  %add63 = add nsw i64 %add62, 2
  store i64 %add63, i64* %tmp10, align 8, !tbaa !8
  %73 = load i64, i64* %tmp0, align 8, !tbaa !8
  %74 = load i64, i64* %tmp3, align 8, !tbaa !8
  %sub64 = sub nsw i64 %73, %74
  store i64 %sub64, i64* %tmp12, align 8, !tbaa !8
  %75 = load i64, i64* %tmp1, align 8, !tbaa !8
  %76 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add65 = add nsw i64 %75, %76
  store i64 %add65, i64* %tmp11, align 8, !tbaa !8
  %77 = load i64, i64* %tmp1, align 8, !tbaa !8
  %78 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub66 = sub nsw i64 %77, %78
  store i64 %sub66, i64* %tmp13, align 8, !tbaa !8
  %79 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i32, i32* %79, i64 0
  %80 = load i32, i32* %arrayidx67, align 4, !tbaa !5
  %81 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %81, i64 56
  %82 = load i32, i32* %arrayidx68, align 4, !tbaa !5
  %sub69 = sub nsw i32 %80, %82
  %conv70 = sext i32 %sub69 to i64
  store i64 %conv70, i64* %tmp0, align 8, !tbaa !8
  %83 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i32, i32* %83, i64 8
  %84 = load i32, i32* %arrayidx71, align 4, !tbaa !5
  %85 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i32, i32* %85, i64 48
  %86 = load i32, i32* %arrayidx72, align 4, !tbaa !5
  %sub73 = sub nsw i32 %84, %86
  %conv74 = sext i32 %sub73 to i64
  store i64 %conv74, i64* %tmp1, align 8, !tbaa !8
  %87 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %87, i64 16
  %88 = load i32, i32* %arrayidx75, align 4, !tbaa !5
  %89 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i32, i32* %89, i64 40
  %90 = load i32, i32* %arrayidx76, align 4, !tbaa !5
  %sub77 = sub nsw i32 %88, %90
  %conv78 = sext i32 %sub77 to i64
  store i64 %conv78, i64* %tmp2, align 8, !tbaa !8
  %91 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i32, i32* %91, i64 24
  %92 = load i32, i32* %arrayidx79, align 4, !tbaa !5
  %93 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i32, i32* %93, i64 32
  %94 = load i32, i32* %arrayidx80, align 4, !tbaa !5
  %sub81 = sub nsw i32 %92, %94
  %conv82 = sext i32 %sub81 to i64
  store i64 %conv82, i64* %tmp3, align 8, !tbaa !8
  %95 = load i64, i64* %tmp10, align 8, !tbaa !8
  %96 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add83 = add nsw i64 %95, %96
  %shr84 = ashr i64 %add83, 2
  %conv85 = trunc i64 %shr84 to i32
  %97 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %conv85, i32* %arrayidx86, align 4, !tbaa !5
  %98 = load i64, i64* %tmp10, align 8, !tbaa !8
  %99 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub87 = sub nsw i64 %98, %99
  %shr88 = ashr i64 %sub87, 2
  %conv89 = trunc i64 %shr88 to i32
  %100 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i32, i32* %100, i64 32
  store i32 %conv89, i32* %arrayidx90, align 4, !tbaa !5
  %101 = load i64, i64* %tmp12, align 8, !tbaa !8
  %102 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add91 = add nsw i64 %101, %102
  %mul92 = mul nsw i64 %add91, 4433
  store i64 %mul92, i64* %z1, align 8, !tbaa !8
  %103 = load i64, i64* %z1, align 8, !tbaa !8
  %add93 = add nsw i64 %103, 16384
  store i64 %add93, i64* %z1, align 8, !tbaa !8
  %104 = load i64, i64* %z1, align 8, !tbaa !8
  %105 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul94 = mul nsw i64 %105, 6270
  %add95 = add nsw i64 %104, %mul94
  %shr96 = ashr i64 %add95, 15
  %conv97 = trunc i64 %shr96 to i32
  %106 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i32, i32* %106, i64 16
  store i32 %conv97, i32* %arrayidx98, align 4, !tbaa !5
  %107 = load i64, i64* %z1, align 8, !tbaa !8
  %108 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul99 = mul nsw i64 %108, 15137
  %sub100 = sub nsw i64 %107, %mul99
  %shr101 = ashr i64 %sub100, 15
  %conv102 = trunc i64 %shr101 to i32
  %109 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i32, i32* %109, i64 48
  store i32 %conv102, i32* %arrayidx103, align 4, !tbaa !5
  %110 = load i64, i64* %tmp0, align 8, !tbaa !8
  %111 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add104 = add nsw i64 %110, %111
  store i64 %add104, i64* %tmp12, align 8, !tbaa !8
  %112 = load i64, i64* %tmp1, align 8, !tbaa !8
  %113 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add105 = add nsw i64 %112, %113
  store i64 %add105, i64* %tmp13, align 8, !tbaa !8
  %114 = load i64, i64* %tmp12, align 8, !tbaa !8
  %115 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add106 = add nsw i64 %114, %115
  %mul107 = mul nsw i64 %add106, 9633
  store i64 %mul107, i64* %z1, align 8, !tbaa !8
  %116 = load i64, i64* %z1, align 8, !tbaa !8
  %add108 = add nsw i64 %116, 16384
  store i64 %add108, i64* %z1, align 8, !tbaa !8
  %117 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul109 = mul nsw i64 %117, -3196
  store i64 %mul109, i64* %tmp12, align 8, !tbaa !8
  %118 = load i64, i64* %tmp13, align 8, !tbaa !8
  %mul110 = mul nsw i64 %118, -16069
  store i64 %mul110, i64* %tmp13, align 8, !tbaa !8
  %119 = load i64, i64* %z1, align 8, !tbaa !8
  %120 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add111 = add nsw i64 %120, %119
  store i64 %add111, i64* %tmp12, align 8, !tbaa !8
  %121 = load i64, i64* %z1, align 8, !tbaa !8
  %122 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add112 = add nsw i64 %122, %121
  store i64 %add112, i64* %tmp13, align 8, !tbaa !8
  %123 = load i64, i64* %tmp0, align 8, !tbaa !8
  %124 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add113 = add nsw i64 %123, %124
  %mul114 = mul nsw i64 %add113, -7373
  store i64 %mul114, i64* %z1, align 8, !tbaa !8
  %125 = load i64, i64* %tmp0, align 8, !tbaa !8
  %mul115 = mul nsw i64 %125, 12299
  store i64 %mul115, i64* %tmp0, align 8, !tbaa !8
  %126 = load i64, i64* %tmp3, align 8, !tbaa !8
  %mul116 = mul nsw i64 %126, 2446
  store i64 %mul116, i64* %tmp3, align 8, !tbaa !8
  %127 = load i64, i64* %z1, align 8, !tbaa !8
  %128 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add117 = add nsw i64 %127, %128
  %129 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add118 = add nsw i64 %129, %add117
  store i64 %add118, i64* %tmp0, align 8, !tbaa !8
  %130 = load i64, i64* %z1, align 8, !tbaa !8
  %131 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add119 = add nsw i64 %130, %131
  %132 = load i64, i64* %tmp3, align 8, !tbaa !8
  %add120 = add nsw i64 %132, %add119
  store i64 %add120, i64* %tmp3, align 8, !tbaa !8
  %133 = load i64, i64* %tmp1, align 8, !tbaa !8
  %134 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add121 = add nsw i64 %133, %134
  %mul122 = mul nsw i64 %add121, -20995
  store i64 %mul122, i64* %z1, align 8, !tbaa !8
  %135 = load i64, i64* %tmp1, align 8, !tbaa !8
  %mul123 = mul nsw i64 %135, 25172
  store i64 %mul123, i64* %tmp1, align 8, !tbaa !8
  %136 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul124 = mul nsw i64 %136, 16819
  store i64 %mul124, i64* %tmp2, align 8, !tbaa !8
  %137 = load i64, i64* %z1, align 8, !tbaa !8
  %138 = load i64, i64* %tmp13, align 8, !tbaa !8
  %add125 = add nsw i64 %137, %138
  %139 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add126 = add nsw i64 %139, %add125
  store i64 %add126, i64* %tmp1, align 8, !tbaa !8
  %140 = load i64, i64* %z1, align 8, !tbaa !8
  %141 = load i64, i64* %tmp12, align 8, !tbaa !8
  %add127 = add nsw i64 %140, %141
  %142 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add128 = add nsw i64 %142, %add127
  store i64 %add128, i64* %tmp2, align 8, !tbaa !8
  %143 = load i64, i64* %tmp0, align 8, !tbaa !8
  %shr129 = ashr i64 %143, 15
  %conv130 = trunc i64 %shr129 to i32
  %144 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i32, i32* %144, i64 8
  store i32 %conv130, i32* %arrayidx131, align 4, !tbaa !5
  %145 = load i64, i64* %tmp1, align 8, !tbaa !8
  %shr132 = ashr i64 %145, 15
  %conv133 = trunc i64 %shr132 to i32
  %146 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i32, i32* %146, i64 24
  store i32 %conv133, i32* %arrayidx134, align 4, !tbaa !5
  %147 = load i64, i64* %tmp2, align 8, !tbaa !8
  %shr135 = ashr i64 %147, 15
  %conv136 = trunc i64 %shr135 to i32
  %148 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i32, i32* %148, i64 40
  store i32 %conv136, i32* %arrayidx137, align 4, !tbaa !5
  %149 = load i64, i64* %tmp3, align 8, !tbaa !8
  %shr138 = ashr i64 %149, 15
  %conv139 = trunc i64 %shr138 to i32
  %150 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i32, i32* %150, i64 56
  store i32 %conv139, i32* %arrayidx140, align 4, !tbaa !5
  %151 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.45
  %152 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc142 = add nsw i32 %152, 1
  store i32 %inc142, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.42

for.end.143:                                      ; preds = %for.cond.42
  %153 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_3x6(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %10 = bitcast i32* %9 to i8*
  %call = call i8* @memset(i8* %10, i32 0, i64 256) #3
  %11 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %11, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %16 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %17 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %18 to i32
  %19 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %20 to i32
  %add = add nsw i32 %conv, %conv3
  %conv4 = sext i32 %add to i64
  store i64 %conv4, i64* %tmp0, align 8, !tbaa !8
  %21 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %22 to i32
  %conv7 = sext i32 %conv6 to i64
  store i64 %conv7, i64* %tmp1, align 8, !tbaa !8
  %23 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %24 to i32
  %25 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx10, align 1, !tbaa !7
  %conv11 = zext i8 %26 to i32
  %sub = sub nsw i32 %conv9, %conv11
  %conv12 = sext i32 %sub to i64
  store i64 %conv12, i64* %tmp2, align 8, !tbaa !8
  %27 = load i64, i64* %tmp0, align 8, !tbaa !8
  %28 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add13 = add nsw i64 %27, %28
  %sub14 = sub nsw i64 %add13, 384
  %shl = shl i64 %sub14, 3
  %conv15 = trunc i64 %shl to i32
  %29 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %conv15, i32* %arrayidx16, align 4, !tbaa !5
  %30 = load i64, i64* %tmp0, align 8, !tbaa !8
  %31 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub17 = sub nsw i64 %30, %31
  %32 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub18 = sub nsw i64 %sub17, %32
  %mul = mul nsw i64 %sub18, 5793
  %add19 = add nsw i64 %mul, 512
  %shr = ashr i64 %add19, 10
  %conv20 = trunc i64 %shr to i32
  %33 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %conv20, i32* %arrayidx21, align 4, !tbaa !5
  %34 = load i64, i64* %tmp2, align 8, !tbaa !8
  %mul22 = mul nsw i64 %34, 10033
  %add23 = add nsw i64 %mul22, 512
  %shr24 = ashr i64 %add23, 10
  %conv25 = trunc i64 %shr24 to i32
  %35 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %conv25, i32* %arrayidx26, align 4, !tbaa !5
  %36 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds i32, i32* %36, i64 8
  store i32* %add.ptr27, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %38, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.99, %for.end
  %39 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %39, 3
  br i1 %cmp29, label %for.body.31, label %for.end.101

for.body.31:                                      ; preds = %for.cond.28
  %40 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i32, i32* %40, i64 0
  %41 = load i32, i32* %arrayidx32, align 4, !tbaa !5
  %42 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i32, i32* %42, i64 40
  %43 = load i32, i32* %arrayidx33, align 4, !tbaa !5
  %add34 = add nsw i32 %41, %43
  %conv35 = sext i32 %add34 to i64
  store i64 %conv35, i64* %tmp0, align 8, !tbaa !8
  %44 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i32, i32* %44, i64 8
  %45 = load i32, i32* %arrayidx36, align 4, !tbaa !5
  %46 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i32, i32* %46, i64 32
  %47 = load i32, i32* %arrayidx37, align 4, !tbaa !5
  %add38 = add nsw i32 %45, %47
  %conv39 = sext i32 %add38 to i64
  store i64 %conv39, i64* %tmp11, align 8, !tbaa !8
  %48 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32, i32* %48, i64 16
  %49 = load i32, i32* %arrayidx40, align 4, !tbaa !5
  %50 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i32, i32* %50, i64 24
  %51 = load i32, i32* %arrayidx41, align 4, !tbaa !5
  %add42 = add nsw i32 %49, %51
  %conv43 = sext i32 %add42 to i64
  store i64 %conv43, i64* %tmp2, align 8, !tbaa !8
  %52 = load i64, i64* %tmp0, align 8, !tbaa !8
  %53 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add44 = add nsw i64 %52, %53
  store i64 %add44, i64* %tmp10, align 8, !tbaa !8
  %54 = load i64, i64* %tmp0, align 8, !tbaa !8
  %55 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub45 = sub nsw i64 %54, %55
  store i64 %sub45, i64* %tmp12, align 8, !tbaa !8
  %56 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i32, i32* %56, i64 0
  %57 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  %58 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i32, i32* %58, i64 40
  %59 = load i32, i32* %arrayidx47, align 4, !tbaa !5
  %sub48 = sub nsw i32 %57, %59
  %conv49 = sext i32 %sub48 to i64
  store i64 %conv49, i64* %tmp0, align 8, !tbaa !8
  %60 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i32, i32* %60, i64 8
  %61 = load i32, i32* %arrayidx50, align 4, !tbaa !5
  %62 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i32, i32* %62, i64 32
  %63 = load i32, i32* %arrayidx51, align 4, !tbaa !5
  %sub52 = sub nsw i32 %61, %63
  %conv53 = sext i32 %sub52 to i64
  store i64 %conv53, i64* %tmp1, align 8, !tbaa !8
  %64 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %64, i64 16
  %65 = load i32, i32* %arrayidx54, align 4, !tbaa !5
  %66 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %66, i64 24
  %67 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %sub56 = sub nsw i32 %65, %67
  %conv57 = sext i32 %sub56 to i64
  store i64 %conv57, i64* %tmp2, align 8, !tbaa !8
  %68 = load i64, i64* %tmp10, align 8, !tbaa !8
  %69 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add58 = add nsw i64 %68, %69
  %mul59 = mul nsw i64 %add58, 14564
  %add60 = add nsw i64 %mul59, 16384
  %shr61 = ashr i64 %add60, 15
  %conv62 = trunc i64 %shr61 to i32
  %70 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %conv62, i32* %arrayidx63, align 4, !tbaa !5
  %71 = load i64, i64* %tmp12, align 8, !tbaa !8
  %mul64 = mul nsw i64 %71, 17837
  %add65 = add nsw i64 %mul64, 16384
  %shr66 = ashr i64 %add65, 15
  %conv67 = trunc i64 %shr66 to i32
  %72 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %72, i64 16
  store i32 %conv67, i32* %arrayidx68, align 4, !tbaa !5
  %73 = load i64, i64* %tmp10, align 8, !tbaa !8
  %74 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub69 = sub nsw i64 %73, %74
  %75 = load i64, i64* %tmp11, align 8, !tbaa !8
  %sub70 = sub nsw i64 %sub69, %75
  %mul71 = mul nsw i64 %sub70, 10298
  %add72 = add nsw i64 %mul71, 16384
  %shr73 = ashr i64 %add72, 15
  %conv74 = trunc i64 %shr73 to i32
  %76 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %76, i64 32
  store i32 %conv74, i32* %arrayidx75, align 4, !tbaa !5
  %77 = load i64, i64* %tmp0, align 8, !tbaa !8
  %78 = load i64, i64* %tmp2, align 8, !tbaa !8
  %add76 = add nsw i64 %77, %78
  %mul77 = mul nsw i64 %add76, 5331
  store i64 %mul77, i64* %tmp10, align 8, !tbaa !8
  %79 = load i64, i64* %tmp10, align 8, !tbaa !8
  %80 = load i64, i64* %tmp0, align 8, !tbaa !8
  %81 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add78 = add nsw i64 %80, %81
  %mul79 = mul nsw i64 %add78, 14564
  %add80 = add nsw i64 %79, %mul79
  %add81 = add nsw i64 %add80, 16384
  %shr82 = ashr i64 %add81, 15
  %conv83 = trunc i64 %shr82 to i32
  %82 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i32, i32* %82, i64 8
  store i32 %conv83, i32* %arrayidx84, align 4, !tbaa !5
  %83 = load i64, i64* %tmp0, align 8, !tbaa !8
  %84 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub85 = sub nsw i64 %83, %84
  %85 = load i64, i64* %tmp2, align 8, !tbaa !8
  %sub86 = sub nsw i64 %sub85, %85
  %mul87 = mul nsw i64 %sub86, 14564
  %add88 = add nsw i64 %mul87, 16384
  %shr89 = ashr i64 %add88, 15
  %conv90 = trunc i64 %shr89 to i32
  %86 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i32, i32* %86, i64 24
  store i32 %conv90, i32* %arrayidx91, align 4, !tbaa !5
  %87 = load i64, i64* %tmp10, align 8, !tbaa !8
  %88 = load i64, i64* %tmp2, align 8, !tbaa !8
  %89 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub92 = sub nsw i64 %88, %89
  %mul93 = mul nsw i64 %sub92, 14564
  %add94 = add nsw i64 %87, %mul93
  %add95 = add nsw i64 %add94, 16384
  %shr96 = ashr i64 %add95, 15
  %conv97 = trunc i64 %shr96 to i32
  %90 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i32, i32* %90, i64 40
  store i32 %conv97, i32* %arrayidx98, align 4, !tbaa !5
  %91 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.31
  %92 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc100 = add nsw i32 %92, 1
  store i32 %inc100, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.28

for.end.101:                                      ; preds = %for.cond.28
  %93 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_2x4(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %dataptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %8 = bitcast i32* %7 to i8*
  %call = call i8* @memset(i8* %8, i32 0, i64 256) #3
  %9 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %9, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %14 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %elemptr, align 8, !tbaa !1
  %15 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %16 to i32
  %conv2 = sext i32 %conv to i64
  store i64 %conv2, i64* %tmp0, align 8, !tbaa !8
  %17 = load i8*, i8** %elemptr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %18 to i32
  %conv5 = sext i32 %conv4 to i64
  store i64 %conv5, i64* %tmp1, align 8, !tbaa !8
  %19 = load i64, i64* %tmp0, align 8, !tbaa !8
  %20 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add = add nsw i64 %19, %20
  %sub = sub nsw i64 %add, 256
  %shl = shl i64 %sub, 3
  %conv6 = trunc i64 %shl to i32
  %21 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %conv6, i32* %arrayidx7, align 4, !tbaa !5
  %22 = load i64, i64* %tmp0, align 8, !tbaa !8
  %23 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub8 = sub nsw i64 %22, %23
  %shl9 = shl i64 %sub8, 3
  %conv10 = trunc i64 %shl9 to i32
  %24 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %conv10, i32* %arrayidx11, align 4, !tbaa !5
  %25 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i32, i32* %25, i64 8
  store i32* %add.ptr12, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32*, i32** %data.addr, align 8, !tbaa !1
  store i32* %27, i32** %dataptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.50, %for.end
  %28 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %28, 2
  br i1 %cmp14, label %for.body.16, label %for.end.52

for.body.16:                                      ; preds = %for.cond.13
  %29 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx17, align 4, !tbaa !5
  %31 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i32, i32* %31, i64 24
  %32 = load i32, i32* %arrayidx18, align 4, !tbaa !5
  %add19 = add nsw i32 %30, %32
  %conv20 = sext i32 %add19 to i64
  store i64 %conv20, i64* %tmp0, align 8, !tbaa !8
  %33 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %33, i64 8
  %34 = load i32, i32* %arrayidx21, align 4, !tbaa !5
  %35 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i32, i32* %35, i64 16
  %36 = load i32, i32* %arrayidx22, align 4, !tbaa !5
  %add23 = add nsw i32 %34, %36
  %conv24 = sext i32 %add23 to i64
  store i64 %conv24, i64* %tmp1, align 8, !tbaa !8
  %37 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx25, align 4, !tbaa !5
  %39 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i32, i32* %39, i64 24
  %40 = load i32, i32* %arrayidx26, align 4, !tbaa !5
  %sub27 = sub nsw i32 %38, %40
  %conv28 = sext i32 %sub27 to i64
  store i64 %conv28, i64* %tmp10, align 8, !tbaa !8
  %41 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %41, i64 8
  %42 = load i32, i32* %arrayidx29, align 4, !tbaa !5
  %43 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i32, i32* %43, i64 16
  %44 = load i32, i32* %arrayidx30, align 4, !tbaa !5
  %sub31 = sub nsw i32 %42, %44
  %conv32 = sext i32 %sub31 to i64
  store i64 %conv32, i64* %tmp11, align 8, !tbaa !8
  %45 = load i64, i64* %tmp0, align 8, !tbaa !8
  %46 = load i64, i64* %tmp1, align 8, !tbaa !8
  %add33 = add nsw i64 %45, %46
  %conv34 = trunc i64 %add33 to i32
  %47 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %conv34, i32* %arrayidx35, align 4, !tbaa !5
  %48 = load i64, i64* %tmp0, align 8, !tbaa !8
  %49 = load i64, i64* %tmp1, align 8, !tbaa !8
  %sub36 = sub nsw i64 %48, %49
  %conv37 = trunc i64 %sub36 to i32
  %50 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i32, i32* %50, i64 16
  store i32 %conv37, i32* %arrayidx38, align 4, !tbaa !5
  %51 = load i64, i64* %tmp10, align 8, !tbaa !8
  %52 = load i64, i64* %tmp11, align 8, !tbaa !8
  %add39 = add nsw i64 %51, %52
  %mul = mul nsw i64 %add39, 4433
  store i64 %mul, i64* %tmp0, align 8, !tbaa !8
  %53 = load i64, i64* %tmp0, align 8, !tbaa !8
  %add40 = add nsw i64 %53, 4096
  store i64 %add40, i64* %tmp0, align 8, !tbaa !8
  %54 = load i64, i64* %tmp0, align 8, !tbaa !8
  %55 = load i64, i64* %tmp10, align 8, !tbaa !8
  %mul41 = mul nsw i64 %55, 6270
  %add42 = add nsw i64 %54, %mul41
  %shr = ashr i64 %add42, 13
  %conv43 = trunc i64 %shr to i32
  %56 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i32, i32* %56, i64 8
  store i32 %conv43, i32* %arrayidx44, align 4, !tbaa !5
  %57 = load i64, i64* %tmp0, align 8, !tbaa !8
  %58 = load i64, i64* %tmp11, align 8, !tbaa !8
  %mul45 = mul nsw i64 %58, 15137
  %sub46 = sub nsw i64 %57, %mul45
  %shr47 = ashr i64 %sub46, 13
  %conv48 = trunc i64 %shr47 to i32
  %59 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i32, i32* %59, i64 24
  store i32 %conv48, i32* %arrayidx49, align 4, !tbaa !5
  %60 = load i32*, i32** %dataptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8, !tbaa !1
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.16
  %61 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc51 = add nsw i32 %61, 1
  store i32 %inc51, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.13

for.end.52:                                       ; preds = %for.cond.13
  %62 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32** %dataptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_1x2(i32* %data, i8** %sample_data, i32 %start_col) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %sample_data.addr = alloca i8**, align 8
  %start_col.addr = alloca i32, align 4
  %tmp0 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !5
  %0 = bitcast i32* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %3 = bitcast i32* %2 to i8*
  %call = call i8* @memset(i8* %3, i32 0, i64 256) #3
  %4 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %5 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv = zext i8 %7 to i32
  store i32 %conv, i32* %tmp0, align 4, !tbaa !5
  %8 = load i32, i32* %start_col.addr, align 4, !tbaa !5
  %idxprom2 = zext i32 %8 to i64
  %9 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom2
  %11 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  %conv5 = zext i8 %11 to i32
  store i32 %conv5, i32* %tmp1, align 4, !tbaa !5
  %12 = load i32, i32* %tmp0, align 4, !tbaa !5
  %13 = load i32, i32* %tmp1, align 4, !tbaa !5
  %add = add nsw i32 %12, %13
  %sub = sub nsw i32 %add, 256
  %shl = shl i32 %sub, 5
  %14 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %shl, i32* %arrayidx6, align 4, !tbaa !5
  %15 = load i32, i32* %tmp0, align 4, !tbaa !5
  %16 = load i32, i32* %tmp1, align 4, !tbaa !5
  %sub7 = sub nsw i32 %15, %16
  %shl8 = shl i32 %sub7, 5
  %17 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 8
  store i32 %shl8, i32* %arrayidx9, align 4, !tbaa !5
  %18 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !3, i64 0}
