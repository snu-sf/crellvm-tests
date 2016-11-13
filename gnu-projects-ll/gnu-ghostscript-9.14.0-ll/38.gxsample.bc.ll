; ModuleID = './gxsample.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }

@lookup4x1to32_identity = constant [16 x i32] [i32 0, i32 -16777216, i32 16711680, i32 -65536, i32 65280, i32 -16711936, i32 16776960, i32 -256, i32 255, i32 -16776961, i32 16711935, i32 -65281, i32 65535, i32 -16711681, i32 16777215, i32 -1], align 16
@lookup4x1to32_inverted = constant [16 x i32] [i32 -1, i32 16777215, i32 -16711681, i32 65535, i32 -65281, i32 16711935, i32 -16776961, i32 255, i32 -256, i32 16776960, i32 -16711936, i32 65280, i32 -65536, i32 16711680, i32 -16777216, i32 0], align 16

; Function Attrs: nounwind uwtable
define i8* @sample_unpack_copy(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %ignore_smap, i32 %spread, i32 %ignore_num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %ignore_smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %ignore_num_components_per_plane.addr = alloca i32, align 4
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %ignore_smap, %struct.sample_map_s** %ignore_smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %ignore_num_components_per_plane, i32* %ignore_num_components_per_plane.addr, align 4, !tbaa !5
  %0 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %1 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 %0, i32* %1, align 4, !tbaa !5
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define i8* @sample_unpack_1(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %smap, i32 %spread, i32 %num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %num_components_per_plane.addr = alloca i32, align 4
  %ptab = alloca %union.sample_lookup_s*, align 8
  %psrc = alloca i8*, align 8
  %left = alloca i32, align 4
  %bufp = alloca i32*, align 8
  %map = alloca i32*, align 8
  %b = alloca i32, align 4
  %bufp36 = alloca i8*, align 8
  %map37 = alloca i8*, align 8
  %b43 = alloca i32, align 4
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %smap, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %num_components_per_plane, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %1, i32 0, i32 0
  store %union.sample_lookup_s* %table, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %2 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr = ashr i32 %4, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %5 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %7 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr1 = ashr i32 %7, 3
  %sub = sub i32 %6, %shr1
  store i32 %sub, i32* %left, align 4, !tbaa !5
  %8 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = bitcast i32** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %bufp, align 8, !tbaa !1
  %12 = bitcast i32** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup4x1to32 = bitcast %union.sample_lookup_s* %13 to [16 x i32]*
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to32, i32 0, i64 0
  store i32* %arrayidx, i32** %map, align 8, !tbaa !1
  %14 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %left, align 4, !tbaa !5
  %and = and i32 %15, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %16 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv = zext i8 %17 to i32
  store i32 %conv, i32* %b, align 4, !tbaa !5
  %18 = load i32, i32* %b, align 4, !tbaa !5
  %shr4 = lshr i32 %18, 4
  %idxprom = zext i32 %shr4 to i64
  %19 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %20 = load i32, i32* %arrayidx5, align 4, !tbaa !5
  %21 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %arrayidx6, align 4, !tbaa !5
  %22 = load i32, i32* %b, align 4, !tbaa !5
  %and7 = and i32 %22, 15
  %idxprom8 = zext i32 %and7 to i64
  %23 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 %idxprom8
  %24 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  %25 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %arrayidx10, align 4, !tbaa !5
  %26 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %psrc, align 8, !tbaa !1
  %27 = load i32*, i32** %bufp, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %add.ptr11, i32** %bufp, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %28 = load i32, i32* %left, align 4, !tbaa !5
  %shr12 = ashr i32 %28, 1
  store i32 %shr12, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %29 = load i32, i32* %left, align 4, !tbaa !5
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %left, align 4, !tbaa !5
  %tobool13 = icmp ne i32 %29, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %conv15 = zext i8 %31 to i32
  store i32 %conv15, i32* %b, align 4, !tbaa !5
  %32 = load i32, i32* %b, align 4, !tbaa !5
  %shr16 = lshr i32 %32, 4
  %idxprom17 = zext i32 %shr16 to i64
  %33 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i32, i32* %33, i64 %idxprom17
  %34 = load i32, i32* %arrayidx18, align 4, !tbaa !5
  %35 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %34, i32* %arrayidx19, align 4, !tbaa !5
  %36 = load i32, i32* %b, align 4, !tbaa !5
  %and20 = and i32 %36, 15
  %idxprom21 = zext i32 %and20 to i64
  %37 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i32, i32* %37, i64 %idxprom21
  %38 = load i32, i32* %arrayidx22, align 4, !tbaa !5
  %39 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %38, i32* %arrayidx23, align 4, !tbaa !5
  %40 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %41 to i32
  store i32 %conv25, i32* %b, align 4, !tbaa !5
  %42 = load i32, i32* %b, align 4, !tbaa !5
  %shr26 = lshr i32 %42, 4
  %idxprom27 = zext i32 %shr26 to i64
  %43 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i32, i32* %43, i64 %idxprom27
  %44 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  %45 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %44, i32* %arrayidx29, align 4, !tbaa !5
  %46 = load i32, i32* %b, align 4, !tbaa !5
  %and30 = and i32 %46, 15
  %idxprom31 = zext i32 %and30 to i64
  %47 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i32, i32* %47, i64 %idxprom31
  %48 = load i32, i32* %arrayidx32, align 4, !tbaa !5
  %49 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %48, i32* %arrayidx33, align 4, !tbaa !5
  %50 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %50, i64 2
  store i8* %add.ptr34, i8** %psrc, align 8, !tbaa !1
  %51 = load i32*, i32** %bufp, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds i32, i32* %51, i64 4
  store i32* %add.ptr35, i32** %bufp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  br label %if.end.93

if.else:                                          ; preds = %entry
  %55 = bitcast i8** %bufp36 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  store i8* %56, i8** %bufp36, align 8, !tbaa !1
  %57 = bitcast i8** %map37 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup8 = bitcast %union.sample_lookup_s* %58 to [256 x i8]*
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  store i8* %arrayidx38, i8** %map37, align 8, !tbaa !1
  br label %while.cond.39

while.cond.39:                                    ; preds = %while.body.42, %if.else
  %59 = load i32, i32* %left, align 4, !tbaa !5
  %dec40 = add nsw i32 %59, -1
  store i32 %dec40, i32* %left, align 4, !tbaa !5
  %tobool41 = icmp ne i32 %59, 0
  br i1 %tobool41, label %while.body.42, label %while.end.92

while.body.42:                                    ; preds = %while.cond.39
  %60 = bitcast i32* %b43 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr44, i8** %psrc, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !7
  %conv45 = zext i8 %62 to i32
  store i32 %conv45, i32* %b43, align 4, !tbaa !5
  %63 = load i32, i32* %b43, align 4, !tbaa !5
  %shr46 = lshr i32 %63, 7
  %idxprom47 = zext i32 %shr46 to i64
  %64 = load i8*, i8** %map37, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %64, i64 %idxprom47
  %65 = load i8, i8* %arrayidx48, align 1, !tbaa !7
  %66 = load i8*, i8** %bufp36, align 8, !tbaa !1
  store i8 %65, i8* %66, align 1, !tbaa !7
  %67 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %68 = load i8*, i8** %bufp36, align 8, !tbaa !1
  %idx.ext49 = sext i32 %67 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %68, i64 %idx.ext49
  store i8* %add.ptr50, i8** %bufp36, align 8, !tbaa !1
  %69 = load i32, i32* %b43, align 4, !tbaa !5
  %shr51 = lshr i32 %69, 6
  %and52 = and i32 %shr51, 1
  %idxprom53 = zext i32 %and52 to i64
  %70 = load i8*, i8** %map37, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %70, i64 %idxprom53
  %71 = load i8, i8* %arrayidx54, align 1, !tbaa !7
  %72 = load i8*, i8** %bufp36, align 8, !tbaa !1
  store i8 %71, i8* %72, align 1, !tbaa !7
  %73 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %74 = load i8*, i8** %bufp36, align 8, !tbaa !1
  %idx.ext55 = sext i32 %73 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %74, i64 %idx.ext55
  store i8* %add.ptr56, i8** %bufp36, align 8, !tbaa !1
  %75 = load i32, i32* %b43, align 4, !tbaa !5
  %shr57 = lshr i32 %75, 5
  %and58 = and i32 %shr57, 1
  %idxprom59 = zext i32 %and58 to i64
  %76 = load i8*, i8** %map37, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %76, i64 %idxprom59
  %77 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %78 = load i8*, i8** %bufp36, align 8, !tbaa !1
  store i8 %77, i8* %78, align 1, !tbaa !7
  %79 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %80 = load i8*, i8** %bufp36, align 8, !tbaa !1
  %idx.ext61 = sext i32 %79 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %80, i64 %idx.ext61
  store i8* %add.ptr62, i8** %bufp36, align 8, !tbaa !1
  %81 = load i32, i32* %b43, align 4, !tbaa !5
  %shr63 = lshr i32 %81, 4
  %and64 = and i32 %shr63, 1
  %idxprom65 = zext i32 %and64 to i64
  %82 = load i8*, i8** %map37, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %82, i64 %idxprom65
  %83 = load i8, i8* %arrayidx66, align 1, !tbaa !7
  %84 = load i8*, i8** %bufp36, align 8, !tbaa !1
  store i8 %83, i8* %84, align 1, !tbaa !7
  %85 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %86 = load i8*, i8** %bufp36, align 8, !tbaa !1
  %idx.ext67 = sext i32 %85 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %86, i64 %idx.ext67
  store i8* %add.ptr68, i8** %bufp36, align 8, !tbaa !1
  %87 = load i32, i32* %b43, align 4, !tbaa !5
  %shr69 = lshr i32 %87, 3
  %and70 = and i32 %shr69, 1
  %idxprom71 = zext i32 %and70 to i64
  %88 = load i8*, i8** %map37, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %88, i64 %idxprom71
  %89 = load i8, i8* %arrayidx72, align 1, !tbaa !7
  %90 = load i8*, i8** %bufp36, align 8, !tbaa !1
  store i8 %89, i8* %90, align 1, !tbaa !7
  %91 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %92 = load i8*, i8** %bufp36, align 8, !tbaa !1
  %idx.ext73 = sext i32 %91 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %92, i64 %idx.ext73
  store i8* %add.ptr74, i8** %bufp36, align 8, !tbaa !1
  %93 = load i32, i32* %b43, align 4, !tbaa !5
  %shr75 = lshr i32 %93, 2
  %and76 = and i32 %shr75, 1
  %idxprom77 = zext i32 %and76 to i64
  %94 = load i8*, i8** %map37, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %94, i64 %idxprom77
  %95 = load i8, i8* %arrayidx78, align 1, !tbaa !7
  %96 = load i8*, i8** %bufp36, align 8, !tbaa !1
  store i8 %95, i8* %96, align 1, !tbaa !7
  %97 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %98 = load i8*, i8** %bufp36, align 8, !tbaa !1
  %idx.ext79 = sext i32 %97 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %98, i64 %idx.ext79
  store i8* %add.ptr80, i8** %bufp36, align 8, !tbaa !1
  %99 = load i32, i32* %b43, align 4, !tbaa !5
  %shr81 = lshr i32 %99, 1
  %and82 = and i32 %shr81, 1
  %idxprom83 = zext i32 %and82 to i64
  %100 = load i8*, i8** %map37, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %100, i64 %idxprom83
  %101 = load i8, i8* %arrayidx84, align 1, !tbaa !7
  %102 = load i8*, i8** %bufp36, align 8, !tbaa !1
  store i8 %101, i8* %102, align 1, !tbaa !7
  %103 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %104 = load i8*, i8** %bufp36, align 8, !tbaa !1
  %idx.ext85 = sext i32 %103 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %104, i64 %idx.ext85
  store i8* %add.ptr86, i8** %bufp36, align 8, !tbaa !1
  %105 = load i32, i32* %b43, align 4, !tbaa !5
  %and87 = and i32 %105, 1
  %idxprom88 = zext i32 %and87 to i64
  %106 = load i8*, i8** %map37, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %106, i64 %idxprom88
  %107 = load i8, i8* %arrayidx89, align 1, !tbaa !7
  %108 = load i8*, i8** %bufp36, align 8, !tbaa !1
  store i8 %107, i8* %108, align 1, !tbaa !7
  %109 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %110 = load i8*, i8** %bufp36, align 8, !tbaa !1
  %idx.ext90 = sext i32 %109 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %110, i64 %idx.ext90
  store i8* %add.ptr91, i8** %bufp36, align 8, !tbaa !1
  %111 = bitcast i32* %b43 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  br label %while.cond.39

while.end.92:                                     ; preds = %while.cond.39
  %112 = bitcast i8** %map37 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i8** %bufp36 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  br label %if.end.93

if.end.93:                                        ; preds = %while.end.92, %while.end
  %114 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and94 = and i32 %114, 7
  %115 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 %and94, i32* %115, align 4, !tbaa !5
  %116 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %117 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  ret i8* %116
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i8* @sample_unpack_2(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %smap, i32 %spread, i32 %num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %num_components_per_plane.addr = alloca i32, align 4
  %ptab = alloca %union.sample_lookup_s*, align 8
  %psrc = alloca i8*, align 8
  %left = alloca i32, align 4
  %bufp = alloca i16*, align 8
  %map = alloca i16*, align 8
  %b = alloca i32, align 4
  %bufp8 = alloca i8*, align 8
  %map9 = alloca i8*, align 8
  %b15 = alloca i32, align 4
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %smap, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %num_components_per_plane, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %1, i32 0, i32 0
  store %union.sample_lookup_s* %table, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %2 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr = ashr i32 %4, 2
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %5 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %7 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr1 = ashr i32 %7, 2
  %sub = sub i32 %6, %shr1
  store i32 %sub, i32* %left, align 4, !tbaa !5
  %8 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = bitcast i16** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  store i16* %11, i16** %bufp, align 8, !tbaa !1
  %12 = bitcast i16** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup2x2to16 = bitcast %union.sample_lookup_s* %13 to [16 x i16]*
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* %lookup2x2to16, i32 0, i64 0
  store i16* %arrayidx, i16** %map, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %14 = load i32, i32* %left, align 4, !tbaa !5
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %left, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %psrc, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %conv = zext i8 %17 to i32
  store i32 %conv, i32* %b, align 4, !tbaa !5
  %18 = load i32, i32* %b, align 4, !tbaa !5
  %shr2 = lshr i32 %18, 4
  %idxprom = zext i32 %shr2 to i64
  %19 = load i16*, i16** %map, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %19, i64 %idxprom
  %20 = load i16, i16* %arrayidx3, align 2, !tbaa !8
  %21 = load i16*, i16** %bufp, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr4, i16** %bufp, align 8, !tbaa !1
  store i16 %20, i16* %21, align 2, !tbaa !8
  %22 = load i32, i32* %b, align 4, !tbaa !5
  %and = and i32 %22, 15
  %idxprom5 = zext i32 %and to i64
  %23 = load i16*, i16** %map, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %23, i64 %idxprom5
  %24 = load i16, i16* %arrayidx6, align 2, !tbaa !8
  %25 = load i16*, i16** %bufp, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr7, i16** %bufp, align 8, !tbaa !1
  store i16 %24, i16* %25, align 2, !tbaa !8
  %26 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = bitcast i16** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i16** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %29 = bitcast i8** %bufp8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  store i8* %30, i8** %bufp8, align 8, !tbaa !1
  %31 = bitcast i8** %map9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup8 = bitcast %union.sample_lookup_s* %32 to [256 x i8]*
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  store i8* %arrayidx10, i8** %map9, align 8, !tbaa !1
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.14, %if.else
  %33 = load i32, i32* %left, align 4, !tbaa !5
  %dec12 = add nsw i32 %33, -1
  store i32 %dec12, i32* %left, align 4, !tbaa !5
  %tobool13 = icmp ne i32 %33, 0
  br i1 %tobool13, label %while.body.14, label %while.end.40

while.body.14:                                    ; preds = %while.cond.11
  %34 = bitcast i32* %b15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr16, i8** %psrc, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !7
  %conv17 = zext i8 %36 to i32
  store i32 %conv17, i32* %b15, align 4, !tbaa !5
  %37 = load i32, i32* %b15, align 4, !tbaa !5
  %shr18 = lshr i32 %37, 6
  %idxprom19 = zext i32 %shr18 to i64
  %38 = load i8*, i8** %map9, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %38, i64 %idxprom19
  %39 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %40 = load i8*, i8** %bufp8, align 8, !tbaa !1
  store i8 %39, i8* %40, align 1, !tbaa !7
  %41 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %42 = load i8*, i8** %bufp8, align 8, !tbaa !1
  %idx.ext21 = sext i32 %41 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %42, i64 %idx.ext21
  store i8* %add.ptr22, i8** %bufp8, align 8, !tbaa !1
  %43 = load i32, i32* %b15, align 4, !tbaa !5
  %shr23 = lshr i32 %43, 4
  %and24 = and i32 %shr23, 3
  %idxprom25 = zext i32 %and24 to i64
  %44 = load i8*, i8** %map9, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %44, i64 %idxprom25
  %45 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %46 = load i8*, i8** %bufp8, align 8, !tbaa !1
  store i8 %45, i8* %46, align 1, !tbaa !7
  %47 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %48 = load i8*, i8** %bufp8, align 8, !tbaa !1
  %idx.ext27 = sext i32 %47 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %48, i64 %idx.ext27
  store i8* %add.ptr28, i8** %bufp8, align 8, !tbaa !1
  %49 = load i32, i32* %b15, align 4, !tbaa !5
  %shr29 = lshr i32 %49, 2
  %and30 = and i32 %shr29, 3
  %idxprom31 = zext i32 %and30 to i64
  %50 = load i8*, i8** %map9, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %50, i64 %idxprom31
  %51 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %52 = load i8*, i8** %bufp8, align 8, !tbaa !1
  store i8 %51, i8* %52, align 1, !tbaa !7
  %53 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %54 = load i8*, i8** %bufp8, align 8, !tbaa !1
  %idx.ext33 = sext i32 %53 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %54, i64 %idx.ext33
  store i8* %add.ptr34, i8** %bufp8, align 8, !tbaa !1
  %55 = load i32, i32* %b15, align 4, !tbaa !5
  %and35 = and i32 %55, 3
  %idxprom36 = zext i32 %and35 to i64
  %56 = load i8*, i8** %map9, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %56, i64 %idxprom36
  %57 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %58 = load i8*, i8** %bufp8, align 8, !tbaa !1
  store i8 %57, i8* %58, align 1, !tbaa !7
  %59 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %60 = load i8*, i8** %bufp8, align 8, !tbaa !1
  %idx.ext38 = sext i32 %59 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %60, i64 %idx.ext38
  store i8* %add.ptr39, i8** %bufp8, align 8, !tbaa !1
  %61 = bitcast i32* %b15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %while.cond.11

while.end.40:                                     ; preds = %while.cond.11
  %62 = bitcast i8** %map9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i8** %bufp8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  br label %if.end

if.end:                                           ; preds = %while.end.40, %while.end
  %64 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and41 = and i32 %64, 3
  %65 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 %and41, i32* %65, align 4, !tbaa !5
  %66 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %67 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  ret i8* %66
}

; Function Attrs: nounwind uwtable
define i8* @sample_unpack_4(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %smap, i32 %spread, i32 %num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %num_components_per_plane.addr = alloca i32, align 4
  %ptab = alloca %union.sample_lookup_s*, align 8
  %bufp = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %left = alloca i32, align 4
  %map = alloca i8*, align 8
  %b = alloca i32, align 4
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %smap, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %num_components_per_plane, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %1, i32 0, i32 0
  store %union.sample_lookup_s* %table, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %2 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  store i8* %3, i8** %bufp, align 8, !tbaa !1
  %4 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr = ashr i32 %6, 1
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %7 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %9 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr1 = ashr i32 %9, 1
  %sub = sub i32 %8, %shr1
  store i32 %sub, i32* %left, align 4, !tbaa !5
  %10 = bitcast i8** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup8 = bitcast %union.sample_lookup_s* %11 to [256 x i8]*
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  store i8* %arrayidx, i8** %map, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %12 = load i32, i32* %left, align 4, !tbaa !5
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %left, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %psrc, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !7
  %conv = zext i8 %15 to i32
  store i32 %conv, i32* %b, align 4, !tbaa !5
  %16 = load i32, i32* %b, align 4, !tbaa !5
  %shr2 = lshr i32 %16, 4
  %idxprom = zext i32 %shr2 to i64
  %17 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %19 = load i8*, i8** %bufp, align 8, !tbaa !1
  store i8 %18, i8* %19, align 1, !tbaa !7
  %20 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %21 = load i8*, i8** %bufp, align 8, !tbaa !1
  %idx.ext4 = sext i32 %20 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %21, i64 %idx.ext4
  store i8* %add.ptr5, i8** %bufp, align 8, !tbaa !1
  %22 = load i32, i32* %b, align 4, !tbaa !5
  %and = and i32 %22, 15
  %idxprom6 = zext i32 %and to i64
  %23 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %23, i64 %idxprom6
  %24 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %25 = load i8*, i8** %bufp, align 8, !tbaa !1
  store i8 %24, i8* %25, align 1, !tbaa !7
  %26 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %27 = load i8*, i8** %bufp, align 8, !tbaa !1
  %idx.ext8 = sext i32 %26 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %27, i64 %idx.ext8
  store i8* %add.ptr9, i8** %bufp, align 8, !tbaa !1
  %28 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and10 = and i32 %29, 1
  %30 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 %and10, i32* %30, align 4, !tbaa !5
  %31 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %32 = bitcast i8** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  ret i8* %31
}

; Function Attrs: nounwind uwtable
define i8* @sample_unpack_8(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %smap, i32 %spread, i32 %num_components_per_plane) #0 {
entry:
  %retval = alloca i8*, align 8
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %num_components_per_plane.addr = alloca i32, align 4
  %ptab = alloca %union.sample_lookup_s*, align 8
  %bufp = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %left = alloca i32, align 4
  %map = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %left14 = alloca i32, align 4
  %map16 = alloca i8*, align 8
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %smap, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %num_components_per_plane, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %1, i32 0, i32 0
  store %union.sample_lookup_s* %table, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %2 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  store i8* %3, i8** %bufp, align 8, !tbaa !1
  %4 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %7 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 0, i32* %7, align 4, !tbaa !5
  %8 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %9 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup8 = bitcast %union.sample_lookup_s* %9 to [256 x i8]*
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %10 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %11 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup83 = bitcast %union.sample_lookup_s* %11 to [256 x i8]*
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup83, i32 0, i64 255
  %12 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  %conv5 = zext i8 %12 to i32
  %cmp6 = icmp ne i32 %conv5, 255
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %lor.lhs.false, %if.then
  %13 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %15 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub = sub i32 %14, %15
  store i32 %sub, i32* %left, align 4, !tbaa !5
  %16 = bitcast i8** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup89 = bitcast %union.sample_lookup_s* %17 to [256 x i8]*
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup89, i32 0, i64 0
  store i8* %arrayidx10, i8** %map, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.8
  %18 = load i32, i32* %left, align 4, !tbaa !5
  %dec = add i32 %18, -1
  store i32 %dec, i32* %left, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %psrc, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !7
  %idxprom = zext i8 %20 to i64
  %21 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %22 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %23 = load i8*, i8** %bufp, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr12, i8** %bufp, align 8, !tbaa !1
  store i8 %22, i8* %23, align 1, !tbaa !7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = bitcast i8** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %26 = load i8*, i8** %psrc, align 8, !tbaa !1
  store i8* %26, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  br label %if.end.26

if.else.13:                                       ; preds = %entry
  %27 = bitcast i32* %left14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %29 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub15 = sub i32 %28, %29
  store i32 %sub15, i32* %left14, align 4, !tbaa !5
  %30 = bitcast i8** %map16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup817 = bitcast %union.sample_lookup_s* %31 to [256 x i8]*
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup817, i32 0, i64 0
  store i8* %arrayidx18, i8** %map16, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.13
  %32 = load i32, i32* %left14, align 4, !tbaa !5
  %dec19 = add nsw i32 %32, -1
  store i32 %dec19, i32* %left14, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %32, 0
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i8*, i8** %psrc, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !7
  %idxprom21 = zext i8 %34 to i64
  %35 = load i8*, i8** %map16, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %35, i64 %idxprom21
  %36 = load i8, i8* %arrayidx22, align 1, !tbaa !7
  %37 = load i8*, i8** %bufp, align 8, !tbaa !1
  store i8 %36, i8* %37, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr23, i8** %psrc, align 8, !tbaa !1
  %39 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %40 = load i8*, i8** %bufp, align 8, !tbaa !1
  %idx.ext24 = sext i32 %39 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %40, i64 %idx.ext24
  store i8* %add.ptr25, i8** %bufp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = bitcast i8** %map16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %left14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %if.end
  %43 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  store i8* %43, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.else
  %44 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i8*, i8** %retval
  ret i8* %47
}

; Function Attrs: nounwind uwtable
define i8* @sample_unpack_1_interleaved(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %smap, i32 %spread, i32 %num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %num_components_per_plane.addr = alloca i32, align 4
  %ptab = alloca %union.sample_lookup_s*, align 8
  %psrc = alloca i8*, align 8
  %left = alloca i32, align 4
  %smap_index = alloca i32, align 4
  %bufp = alloca i32*, align 8
  %map = alloca i32*, align 8
  %b = alloca i32, align 4
  %bufp75 = alloca i8*, align 8
  %map76 = alloca i8*, align 8
  %b82 = alloca i32, align 4
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %smap, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %num_components_per_plane, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %1, i32 0, i32 0
  store %union.sample_lookup_s* %table, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %2 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr = ashr i32 %4, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %5 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %7 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr1 = ashr i32 %7, 3
  %sub = sub i32 %6, %shr1
  store i32 %sub, i32* %left, align 4, !tbaa !5
  %8 = bitcast i32* %smap_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %smap_index, align 4, !tbaa !5
  %9 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = bitcast i32** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %bufp, align 8, !tbaa !1
  %13 = bitcast i32** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup4x1to32 = bitcast %union.sample_lookup_s* %14 to [16 x i32]*
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to32, i32 0, i64 0
  store i32* %arrayidx, i32** %map, align 8, !tbaa !1
  %15 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %left, align 4, !tbaa !5
  %and = and i32 %16, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %17 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv = zext i8 %18 to i32
  store i32 %conv, i32* %b, align 4, !tbaa !5
  %19 = load i32, i32* %b, align 4, !tbaa !5
  %shr4 = lshr i32 %19, 4
  %idxprom = zext i32 %shr4 to i64
  %20 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i32, i32* %20, i64 %idxprom
  %21 = load i32, i32* %arrayidx5, align 4, !tbaa !5
  %22 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %arrayidx6, align 4, !tbaa !5
  %23 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %smap_index, align 4, !tbaa !5
  %24 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem = srem i32 %inc, %24
  %idxprom7 = sext i32 %rem to i64
  %25 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %25, i64 %idxprom7
  %table9 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx8, i32 0, i32 0
  %lookup4x1to3210 = bitcast %union.sample_lookup_s* %table9 to [16 x i32]*
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to3210, i32 0, i32 0
  store i32* %arraydecay, i32** %map, align 8, !tbaa !1
  %26 = load i32, i32* %b, align 4, !tbaa !5
  %and11 = and i32 %26, 15
  %idxprom12 = zext i32 %and11 to i64
  %27 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %27, i64 %idxprom12
  %28 = load i32, i32* %arrayidx13, align 4, !tbaa !5
  %29 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %28, i32* %arrayidx14, align 4, !tbaa !5
  %30 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc15 = add nsw i32 %30, 1
  store i32 %inc15, i32* %smap_index, align 4, !tbaa !5
  %31 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem16 = srem i32 %inc15, %31
  %idxprom17 = sext i32 %rem16 to i64
  %32 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %32, i64 %idxprom17
  %table19 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx18, i32 0, i32 0
  %lookup4x1to3220 = bitcast %union.sample_lookup_s* %table19 to [16 x i32]*
  %arraydecay21 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to3220, i32 0, i32 0
  store i32* %arraydecay21, i32** %map, align 8, !tbaa !1
  %33 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %psrc, align 8, !tbaa !1
  %34 = load i32*, i32** %bufp, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds i32, i32* %34, i64 2
  store i32* %add.ptr22, i32** %bufp, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %35 = load i32, i32* %left, align 4, !tbaa !5
  %shr23 = ashr i32 %35, 1
  store i32 %shr23, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %36 = load i32, i32* %left, align 4, !tbaa !5
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %left, align 4, !tbaa !5
  %tobool24 = icmp ne i32 %36, 0
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx25, align 1, !tbaa !7
  %conv26 = zext i8 %38 to i32
  store i32 %conv26, i32* %b, align 4, !tbaa !5
  %39 = load i32, i32* %b, align 4, !tbaa !5
  %shr27 = lshr i32 %39, 4
  %idxprom28 = zext i32 %shr27 to i64
  %40 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %40, i64 %idxprom28
  %41 = load i32, i32* %arrayidx29, align 4, !tbaa !5
  %42 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %arrayidx30, align 4, !tbaa !5
  %43 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc31 = add nsw i32 %43, 1
  store i32 %inc31, i32* %smap_index, align 4, !tbaa !5
  %44 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem32 = srem i32 %inc31, %44
  %idxprom33 = sext i32 %rem32 to i64
  %45 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %45, i64 %idxprom33
  %table35 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx34, i32 0, i32 0
  %lookup4x1to3236 = bitcast %union.sample_lookup_s* %table35 to [16 x i32]*
  %arraydecay37 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to3236, i32 0, i32 0
  store i32* %arraydecay37, i32** %map, align 8, !tbaa !1
  %46 = load i32, i32* %b, align 4, !tbaa !5
  %and38 = and i32 %46, 15
  %idxprom39 = zext i32 %and38 to i64
  %47 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32, i32* %47, i64 %idxprom39
  %48 = load i32, i32* %arrayidx40, align 4, !tbaa !5
  %49 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %arrayidx41, align 4, !tbaa !5
  %50 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc42 = add nsw i32 %50, 1
  store i32 %inc42, i32* %smap_index, align 4, !tbaa !5
  %51 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem43 = srem i32 %inc42, %51
  %idxprom44 = sext i32 %rem43 to i64
  %52 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %52, i64 %idxprom44
  %table46 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx45, i32 0, i32 0
  %lookup4x1to3247 = bitcast %union.sample_lookup_s* %table46 to [16 x i32]*
  %arraydecay48 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to3247, i32 0, i32 0
  store i32* %arraydecay48, i32** %map, align 8, !tbaa !1
  %53 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = zext i8 %54 to i32
  store i32 %conv50, i32* %b, align 4, !tbaa !5
  %55 = load i32, i32* %b, align 4, !tbaa !5
  %shr51 = lshr i32 %55, 4
  %idxprom52 = zext i32 %shr51 to i64
  %56 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i32, i32* %56, i64 %idxprom52
  %57 = load i32, i32* %arrayidx53, align 4, !tbaa !5
  %58 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %57, i32* %arrayidx54, align 4, !tbaa !5
  %59 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc55 = add nsw i32 %59, 1
  store i32 %inc55, i32* %smap_index, align 4, !tbaa !5
  %60 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem56 = srem i32 %inc55, %60
  %idxprom57 = sext i32 %rem56 to i64
  %61 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %61, i64 %idxprom57
  %table59 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx58, i32 0, i32 0
  %lookup4x1to3260 = bitcast %union.sample_lookup_s* %table59 to [16 x i32]*
  %arraydecay61 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to3260, i32 0, i32 0
  store i32* %arraydecay61, i32** %map, align 8, !tbaa !1
  %62 = load i32, i32* %b, align 4, !tbaa !5
  %and62 = and i32 %62, 15
  %idxprom63 = zext i32 %and62 to i64
  %63 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i32, i32* %63, i64 %idxprom63
  %64 = load i32, i32* %arrayidx64, align 4, !tbaa !5
  %65 = load i32*, i32** %bufp, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %64, i32* %arrayidx65, align 4, !tbaa !5
  %66 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc66 = add nsw i32 %66, 1
  store i32 %inc66, i32* %smap_index, align 4, !tbaa !5
  %67 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem67 = srem i32 %inc66, %67
  %idxprom68 = sext i32 %rem67 to i64
  %68 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %68, i64 %idxprom68
  %table70 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx69, i32 0, i32 0
  %lookup4x1to3271 = bitcast %union.sample_lookup_s* %table70 to [16 x i32]*
  %arraydecay72 = getelementptr inbounds [16 x i32], [16 x i32]* %lookup4x1to3271, i32 0, i32 0
  store i32* %arraydecay72, i32** %map, align 8, !tbaa !1
  %69 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr73 = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %add.ptr73, i8** %psrc, align 8, !tbaa !1
  %70 = load i32*, i32** %bufp, align 8, !tbaa !1
  %add.ptr74 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %add.ptr74, i32** %bufp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %71 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  br label %if.end.188

if.else:                                          ; preds = %entry
  %74 = bitcast i8** %bufp75 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  store i8* %75, i8** %bufp75, align 8, !tbaa !1
  %76 = bitcast i8** %map76 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup8 = bitcast %union.sample_lookup_s* %77 to [256 x i8]*
  %arrayidx77 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  store i8* %arrayidx77, i8** %map76, align 8, !tbaa !1
  br label %while.cond.78

while.cond.78:                                    ; preds = %while.body.81, %if.else
  %78 = load i32, i32* %left, align 4, !tbaa !5
  %dec79 = add nsw i32 %78, -1
  store i32 %dec79, i32* %left, align 4, !tbaa !5
  %tobool80 = icmp ne i32 %78, 0
  br i1 %tobool80, label %while.body.81, label %while.end.187

while.body.81:                                    ; preds = %while.cond.78
  %79 = bitcast i32* %b82 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr83 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr83, i8** %psrc, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !7
  %conv84 = zext i8 %81 to i32
  store i32 %conv84, i32* %b82, align 4, !tbaa !5
  %82 = load i32, i32* %b82, align 4, !tbaa !5
  %shr85 = lshr i32 %82, 7
  %idxprom86 = zext i32 %shr85 to i64
  %83 = load i8*, i8** %map76, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %83, i64 %idxprom86
  %84 = load i8, i8* %arrayidx87, align 1, !tbaa !7
  %85 = load i8*, i8** %bufp75, align 8, !tbaa !1
  store i8 %84, i8* %85, align 1, !tbaa !7
  %86 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc88 = add nsw i32 %86, 1
  store i32 %inc88, i32* %smap_index, align 4, !tbaa !5
  %87 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem89 = srem i32 %inc88, %87
  %idxprom90 = sext i32 %rem89 to i64
  %88 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %88, i64 %idxprom90
  %table92 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx91, i32 0, i32 0
  %lookup893 = bitcast %union.sample_lookup_s* %table92 to [256 x i8]*
  %arraydecay94 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup893, i32 0, i32 0
  store i8* %arraydecay94, i8** %map76, align 8, !tbaa !1
  %89 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %90 = load i8*, i8** %bufp75, align 8, !tbaa !1
  %idx.ext95 = sext i32 %89 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %90, i64 %idx.ext95
  store i8* %add.ptr96, i8** %bufp75, align 8, !tbaa !1
  %91 = load i32, i32* %b82, align 4, !tbaa !5
  %shr97 = lshr i32 %91, 6
  %and98 = and i32 %shr97, 1
  %idxprom99 = zext i32 %and98 to i64
  %92 = load i8*, i8** %map76, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i8, i8* %92, i64 %idxprom99
  %93 = load i8, i8* %arrayidx100, align 1, !tbaa !7
  %94 = load i8*, i8** %bufp75, align 8, !tbaa !1
  store i8 %93, i8* %94, align 1, !tbaa !7
  %95 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc101 = add nsw i32 %95, 1
  store i32 %inc101, i32* %smap_index, align 4, !tbaa !5
  %96 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem102 = srem i32 %inc101, %96
  %idxprom103 = sext i32 %rem102 to i64
  %97 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %97, i64 %idxprom103
  %table105 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx104, i32 0, i32 0
  %lookup8106 = bitcast %union.sample_lookup_s* %table105 to [256 x i8]*
  %arraydecay107 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8106, i32 0, i32 0
  store i8* %arraydecay107, i8** %map76, align 8, !tbaa !1
  %98 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %99 = load i8*, i8** %bufp75, align 8, !tbaa !1
  %idx.ext108 = sext i32 %98 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %99, i64 %idx.ext108
  store i8* %add.ptr109, i8** %bufp75, align 8, !tbaa !1
  %100 = load i32, i32* %b82, align 4, !tbaa !5
  %shr110 = lshr i32 %100, 5
  %and111 = and i32 %shr110, 1
  %idxprom112 = zext i32 %and111 to i64
  %101 = load i8*, i8** %map76, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8, i8* %101, i64 %idxprom112
  %102 = load i8, i8* %arrayidx113, align 1, !tbaa !7
  %103 = load i8*, i8** %bufp75, align 8, !tbaa !1
  store i8 %102, i8* %103, align 1, !tbaa !7
  %104 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc114 = add nsw i32 %104, 1
  store i32 %inc114, i32* %smap_index, align 4, !tbaa !5
  %105 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem115 = srem i32 %inc114, %105
  %idxprom116 = sext i32 %rem115 to i64
  %106 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %106, i64 %idxprom116
  %table118 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx117, i32 0, i32 0
  %lookup8119 = bitcast %union.sample_lookup_s* %table118 to [256 x i8]*
  %arraydecay120 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8119, i32 0, i32 0
  store i8* %arraydecay120, i8** %map76, align 8, !tbaa !1
  %107 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %108 = load i8*, i8** %bufp75, align 8, !tbaa !1
  %idx.ext121 = sext i32 %107 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %108, i64 %idx.ext121
  store i8* %add.ptr122, i8** %bufp75, align 8, !tbaa !1
  %109 = load i32, i32* %b82, align 4, !tbaa !5
  %shr123 = lshr i32 %109, 4
  %and124 = and i32 %shr123, 1
  %idxprom125 = zext i32 %and124 to i64
  %110 = load i8*, i8** %map76, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i8, i8* %110, i64 %idxprom125
  %111 = load i8, i8* %arrayidx126, align 1, !tbaa !7
  %112 = load i8*, i8** %bufp75, align 8, !tbaa !1
  store i8 %111, i8* %112, align 1, !tbaa !7
  %113 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc127 = add nsw i32 %113, 1
  store i32 %inc127, i32* %smap_index, align 4, !tbaa !5
  %114 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem128 = srem i32 %inc127, %114
  %idxprom129 = sext i32 %rem128 to i64
  %115 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %115, i64 %idxprom129
  %table131 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx130, i32 0, i32 0
  %lookup8132 = bitcast %union.sample_lookup_s* %table131 to [256 x i8]*
  %arraydecay133 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8132, i32 0, i32 0
  store i8* %arraydecay133, i8** %map76, align 8, !tbaa !1
  %116 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %117 = load i8*, i8** %bufp75, align 8, !tbaa !1
  %idx.ext134 = sext i32 %116 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %117, i64 %idx.ext134
  store i8* %add.ptr135, i8** %bufp75, align 8, !tbaa !1
  %118 = load i32, i32* %b82, align 4, !tbaa !5
  %shr136 = lshr i32 %118, 3
  %and137 = and i32 %shr136, 1
  %idxprom138 = zext i32 %and137 to i64
  %119 = load i8*, i8** %map76, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i8, i8* %119, i64 %idxprom138
  %120 = load i8, i8* %arrayidx139, align 1, !tbaa !7
  %121 = load i8*, i8** %bufp75, align 8, !tbaa !1
  store i8 %120, i8* %121, align 1, !tbaa !7
  %122 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc140 = add nsw i32 %122, 1
  store i32 %inc140, i32* %smap_index, align 4, !tbaa !5
  %123 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem141 = srem i32 %inc140, %123
  %idxprom142 = sext i32 %rem141 to i64
  %124 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %124, i64 %idxprom142
  %table144 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx143, i32 0, i32 0
  %lookup8145 = bitcast %union.sample_lookup_s* %table144 to [256 x i8]*
  %arraydecay146 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8145, i32 0, i32 0
  store i8* %arraydecay146, i8** %map76, align 8, !tbaa !1
  %125 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %126 = load i8*, i8** %bufp75, align 8, !tbaa !1
  %idx.ext147 = sext i32 %125 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %126, i64 %idx.ext147
  store i8* %add.ptr148, i8** %bufp75, align 8, !tbaa !1
  %127 = load i32, i32* %b82, align 4, !tbaa !5
  %shr149 = lshr i32 %127, 2
  %and150 = and i32 %shr149, 1
  %idxprom151 = zext i32 %and150 to i64
  %128 = load i8*, i8** %map76, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i8, i8* %128, i64 %idxprom151
  %129 = load i8, i8* %arrayidx152, align 1, !tbaa !7
  %130 = load i8*, i8** %bufp75, align 8, !tbaa !1
  store i8 %129, i8* %130, align 1, !tbaa !7
  %131 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc153 = add nsw i32 %131, 1
  store i32 %inc153, i32* %smap_index, align 4, !tbaa !5
  %132 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem154 = srem i32 %inc153, %132
  %idxprom155 = sext i32 %rem154 to i64
  %133 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %133, i64 %idxprom155
  %table157 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx156, i32 0, i32 0
  %lookup8158 = bitcast %union.sample_lookup_s* %table157 to [256 x i8]*
  %arraydecay159 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8158, i32 0, i32 0
  store i8* %arraydecay159, i8** %map76, align 8, !tbaa !1
  %134 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %135 = load i8*, i8** %bufp75, align 8, !tbaa !1
  %idx.ext160 = sext i32 %134 to i64
  %add.ptr161 = getelementptr inbounds i8, i8* %135, i64 %idx.ext160
  store i8* %add.ptr161, i8** %bufp75, align 8, !tbaa !1
  %136 = load i32, i32* %b82, align 4, !tbaa !5
  %shr162 = lshr i32 %136, 1
  %and163 = and i32 %shr162, 1
  %idxprom164 = zext i32 %and163 to i64
  %137 = load i8*, i8** %map76, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i8, i8* %137, i64 %idxprom164
  %138 = load i8, i8* %arrayidx165, align 1, !tbaa !7
  %139 = load i8*, i8** %bufp75, align 8, !tbaa !1
  store i8 %138, i8* %139, align 1, !tbaa !7
  %140 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc166 = add nsw i32 %140, 1
  store i32 %inc166, i32* %smap_index, align 4, !tbaa !5
  %141 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem167 = srem i32 %inc166, %141
  %idxprom168 = sext i32 %rem167 to i64
  %142 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %142, i64 %idxprom168
  %table170 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx169, i32 0, i32 0
  %lookup8171 = bitcast %union.sample_lookup_s* %table170 to [256 x i8]*
  %arraydecay172 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8171, i32 0, i32 0
  store i8* %arraydecay172, i8** %map76, align 8, !tbaa !1
  %143 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %144 = load i8*, i8** %bufp75, align 8, !tbaa !1
  %idx.ext173 = sext i32 %143 to i64
  %add.ptr174 = getelementptr inbounds i8, i8* %144, i64 %idx.ext173
  store i8* %add.ptr174, i8** %bufp75, align 8, !tbaa !1
  %145 = load i32, i32* %b82, align 4, !tbaa !5
  %and175 = and i32 %145, 1
  %idxprom176 = zext i32 %and175 to i64
  %146 = load i8*, i8** %map76, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %146, i64 %idxprom176
  %147 = load i8, i8* %arrayidx177, align 1, !tbaa !7
  %148 = load i8*, i8** %bufp75, align 8, !tbaa !1
  store i8 %147, i8* %148, align 1, !tbaa !7
  %149 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc178 = add nsw i32 %149, 1
  store i32 %inc178, i32* %smap_index, align 4, !tbaa !5
  %150 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem179 = srem i32 %inc178, %150
  %idxprom180 = sext i32 %rem179 to i64
  %151 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %151, i64 %idxprom180
  %table182 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx181, i32 0, i32 0
  %lookup8183 = bitcast %union.sample_lookup_s* %table182 to [256 x i8]*
  %arraydecay184 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8183, i32 0, i32 0
  store i8* %arraydecay184, i8** %map76, align 8, !tbaa !1
  %152 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %153 = load i8*, i8** %bufp75, align 8, !tbaa !1
  %idx.ext185 = sext i32 %152 to i64
  %add.ptr186 = getelementptr inbounds i8, i8* %153, i64 %idx.ext185
  store i8* %add.ptr186, i8** %bufp75, align 8, !tbaa !1
  %154 = bitcast i32* %b82 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  br label %while.cond.78

while.end.187:                                    ; preds = %while.cond.78
  %155 = bitcast i8** %map76 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i8** %bufp75 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  br label %if.end.188

if.end.188:                                       ; preds = %while.end.187, %while.end
  %157 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and189 = and i32 %157, 7
  %158 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 %and189, i32* %158, align 4, !tbaa !5
  %159 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %160 = bitcast i32* %smap_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  ret i8* %159
}

; Function Attrs: nounwind uwtable
define i8* @sample_unpack_2_interleaved(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %smap, i32 %spread, i32 %num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %num_components_per_plane.addr = alloca i32, align 4
  %ptab = alloca %union.sample_lookup_s*, align 8
  %psrc = alloca i8*, align 8
  %left = alloca i32, align 4
  %smap_index = alloca i32, align 4
  %bufp = alloca i16*, align 8
  %map = alloca i16*, align 8
  %b = alloca i32, align 4
  %bufp19 = alloca i8*, align 8
  %map20 = alloca i8*, align 8
  %b26 = alloca i32, align 4
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %smap, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %num_components_per_plane, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %1, i32 0, i32 0
  store %union.sample_lookup_s* %table, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %2 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr = ashr i32 %4, 2
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %5 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %7 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr1 = ashr i32 %7, 2
  %sub = sub i32 %6, %shr1
  store i32 %sub, i32* %left, align 4, !tbaa !5
  %8 = bitcast i32* %smap_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %smap_index, align 4, !tbaa !5
  %9 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = bitcast i16** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to i16*
  store i16* %12, i16** %bufp, align 8, !tbaa !1
  %13 = bitcast i16** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup2x2to16 = bitcast %union.sample_lookup_s* %14 to [16 x i16]*
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* %lookup2x2to16, i32 0, i64 0
  store i16* %arrayidx, i16** %map, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %15 = load i32, i32* %left, align 4, !tbaa !5
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %left, align 4, !tbaa !5
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %psrc, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !7
  %conv = zext i8 %18 to i32
  store i32 %conv, i32* %b, align 4, !tbaa !5
  %19 = load i32, i32* %b, align 4, !tbaa !5
  %shr2 = lshr i32 %19, 4
  %idxprom = zext i32 %shr2 to i64
  %20 = load i16*, i16** %map, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %20, i64 %idxprom
  %21 = load i16, i16* %arrayidx3, align 2, !tbaa !8
  %22 = load i16*, i16** %bufp, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %incdec.ptr4, i16** %bufp, align 8, !tbaa !1
  store i16 %21, i16* %22, align 2, !tbaa !8
  %23 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %smap_index, align 4, !tbaa !5
  %24 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem = srem i32 %inc, %24
  %idxprom5 = sext i32 %rem to i64
  %25 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %25, i64 %idxprom5
  %table7 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx6, i32 0, i32 0
  %lookup2x2to168 = bitcast %union.sample_lookup_s* %table7 to [16 x i16]*
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %lookup2x2to168, i32 0, i32 0
  store i16* %arraydecay, i16** %map, align 8, !tbaa !1
  %26 = load i32, i32* %b, align 4, !tbaa !5
  %and = and i32 %26, 15
  %idxprom9 = zext i32 %and to i64
  %27 = load i16*, i16** %map, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %27, i64 %idxprom9
  %28 = load i16, i16* %arrayidx10, align 2, !tbaa !8
  %29 = load i16*, i16** %bufp, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr11, i16** %bufp, align 8, !tbaa !1
  store i16 %28, i16* %29, align 2, !tbaa !8
  %30 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc12 = add nsw i32 %30, 1
  store i32 %inc12, i32* %smap_index, align 4, !tbaa !5
  %31 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem13 = srem i32 %inc12, %31
  %idxprom14 = sext i32 %rem13 to i64
  %32 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %32, i64 %idxprom14
  %table16 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx15, i32 0, i32 0
  %lookup2x2to1617 = bitcast %union.sample_lookup_s* %table16 to [16 x i16]*
  %arraydecay18 = getelementptr inbounds [16 x i16], [16 x i16]* %lookup2x2to1617, i32 0, i32 0
  store i16* %arraydecay18, i16** %map, align 8, !tbaa !1
  %33 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = bitcast i16** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i16** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %36 = bitcast i8** %bufp19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  store i8* %37, i8** %bufp19, align 8, !tbaa !1
  %38 = bitcast i8** %map20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup8 = bitcast %union.sample_lookup_s* %39 to [256 x i8]*
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  store i8* %arrayidx21, i8** %map20, align 8, !tbaa !1
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.25, %if.else
  %40 = load i32, i32* %left, align 4, !tbaa !5
  %dec23 = add nsw i32 %40, -1
  store i32 %dec23, i32* %left, align 4, !tbaa !5
  %tobool24 = icmp ne i32 %40, 0
  br i1 %tobool24, label %while.body.25, label %while.end.79

while.body.25:                                    ; preds = %while.cond.22
  %41 = bitcast i32* %b26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr27, i8** %psrc, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !7
  %conv28 = zext i8 %43 to i32
  store i32 %conv28, i32* %b26, align 4, !tbaa !5
  %44 = load i32, i32* %b26, align 4, !tbaa !5
  %shr29 = lshr i32 %44, 6
  %idxprom30 = zext i32 %shr29 to i64
  %45 = load i8*, i8** %map20, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %45, i64 %idxprom30
  %46 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %47 = load i8*, i8** %bufp19, align 8, !tbaa !1
  store i8 %46, i8* %47, align 1, !tbaa !7
  %48 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc32 = add nsw i32 %48, 1
  store i32 %inc32, i32* %smap_index, align 4, !tbaa !5
  %49 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem33 = srem i32 %inc32, %49
  %idxprom34 = sext i32 %rem33 to i64
  %50 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %50, i64 %idxprom34
  %table36 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx35, i32 0, i32 0
  %lookup837 = bitcast %union.sample_lookup_s* %table36 to [256 x i8]*
  %arraydecay38 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup837, i32 0, i32 0
  store i8* %arraydecay38, i8** %map20, align 8, !tbaa !1
  %51 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %52 = load i8*, i8** %bufp19, align 8, !tbaa !1
  %idx.ext39 = sext i32 %51 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %52, i64 %idx.ext39
  store i8* %add.ptr40, i8** %bufp19, align 8, !tbaa !1
  %53 = load i32, i32* %b26, align 4, !tbaa !5
  %shr41 = lshr i32 %53, 4
  %and42 = and i32 %shr41, 3
  %idxprom43 = zext i32 %and42 to i64
  %54 = load i8*, i8** %map20, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %54, i64 %idxprom43
  %55 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %56 = load i8*, i8** %bufp19, align 8, !tbaa !1
  store i8 %55, i8* %56, align 1, !tbaa !7
  %57 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc45 = add nsw i32 %57, 1
  store i32 %inc45, i32* %smap_index, align 4, !tbaa !5
  %58 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem46 = srem i32 %inc45, %58
  %idxprom47 = sext i32 %rem46 to i64
  %59 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %59, i64 %idxprom47
  %table49 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx48, i32 0, i32 0
  %lookup850 = bitcast %union.sample_lookup_s* %table49 to [256 x i8]*
  %arraydecay51 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup850, i32 0, i32 0
  store i8* %arraydecay51, i8** %map20, align 8, !tbaa !1
  %60 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %61 = load i8*, i8** %bufp19, align 8, !tbaa !1
  %idx.ext52 = sext i32 %60 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %61, i64 %idx.ext52
  store i8* %add.ptr53, i8** %bufp19, align 8, !tbaa !1
  %62 = load i32, i32* %b26, align 4, !tbaa !5
  %shr54 = lshr i32 %62, 2
  %and55 = and i32 %shr54, 3
  %idxprom56 = zext i32 %and55 to i64
  %63 = load i8*, i8** %map20, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %63, i64 %idxprom56
  %64 = load i8, i8* %arrayidx57, align 1, !tbaa !7
  %65 = load i8*, i8** %bufp19, align 8, !tbaa !1
  store i8 %64, i8* %65, align 1, !tbaa !7
  %66 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc58 = add nsw i32 %66, 1
  store i32 %inc58, i32* %smap_index, align 4, !tbaa !5
  %67 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem59 = srem i32 %inc58, %67
  %idxprom60 = sext i32 %rem59 to i64
  %68 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %68, i64 %idxprom60
  %table62 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx61, i32 0, i32 0
  %lookup863 = bitcast %union.sample_lookup_s* %table62 to [256 x i8]*
  %arraydecay64 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup863, i32 0, i32 0
  store i8* %arraydecay64, i8** %map20, align 8, !tbaa !1
  %69 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %70 = load i8*, i8** %bufp19, align 8, !tbaa !1
  %idx.ext65 = sext i32 %69 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %70, i64 %idx.ext65
  store i8* %add.ptr66, i8** %bufp19, align 8, !tbaa !1
  %71 = load i32, i32* %b26, align 4, !tbaa !5
  %and67 = and i32 %71, 3
  %idxprom68 = zext i32 %and67 to i64
  %72 = load i8*, i8** %map20, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %72, i64 %idxprom68
  %73 = load i8, i8* %arrayidx69, align 1, !tbaa !7
  %74 = load i8*, i8** %bufp19, align 8, !tbaa !1
  store i8 %73, i8* %74, align 1, !tbaa !7
  %75 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc70 = add nsw i32 %75, 1
  store i32 %inc70, i32* %smap_index, align 4, !tbaa !5
  %76 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem71 = srem i32 %inc70, %76
  %idxprom72 = sext i32 %rem71 to i64
  %77 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %77, i64 %idxprom72
  %table74 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx73, i32 0, i32 0
  %lookup875 = bitcast %union.sample_lookup_s* %table74 to [256 x i8]*
  %arraydecay76 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup875, i32 0, i32 0
  store i8* %arraydecay76, i8** %map20, align 8, !tbaa !1
  %78 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %79 = load i8*, i8** %bufp19, align 8, !tbaa !1
  %idx.ext77 = sext i32 %78 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %79, i64 %idx.ext77
  store i8* %add.ptr78, i8** %bufp19, align 8, !tbaa !1
  %80 = bitcast i32* %b26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  br label %while.cond.22

while.end.79:                                     ; preds = %while.cond.22
  %81 = bitcast i8** %map20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i8** %bufp19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  br label %if.end

if.end:                                           ; preds = %while.end.79, %while.end
  %83 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and80 = and i32 %83, 3
  %84 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 %and80, i32* %84, align 4, !tbaa !5
  %85 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %86 = bitcast i32* %smap_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  ret i8* %85
}

; Function Attrs: nounwind uwtable
define i8* @sample_unpack_4_interleaved(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %smap, i32 %spread, i32 %num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %num_components_per_plane.addr = alloca i32, align 4
  %ptab = alloca %union.sample_lookup_s*, align 8
  %bufp = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %left = alloca i32, align 4
  %map = alloca i8*, align 8
  %smap_index = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %smap, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %num_components_per_plane, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %1, i32 0, i32 0
  store %union.sample_lookup_s* %table, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %2 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  store i8* %3, i8** %bufp, align 8, !tbaa !1
  %4 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr = ashr i32 %6, 1
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %7 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %9 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr1 = ashr i32 %9, 1
  %sub = sub i32 %8, %shr1
  store i32 %sub, i32* %left, align 4, !tbaa !5
  %10 = bitcast i8** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup8 = bitcast %union.sample_lookup_s* %11 to [256 x i8]*
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  store i8* %arrayidx, i8** %map, align 8, !tbaa !1
  %12 = bitcast i32* %smap_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %smap_index, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %13 = load i32, i32* %left, align 4, !tbaa !5
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %left, align 4, !tbaa !5
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %psrc, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %b, align 4, !tbaa !5
  %17 = load i32, i32* %b, align 4, !tbaa !5
  %shr2 = lshr i32 %17, 4
  %idxprom = zext i32 %shr2 to i64
  %18 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %20 = load i8*, i8** %bufp, align 8, !tbaa !1
  store i8 %19, i8* %20, align 1, !tbaa !7
  %21 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %smap_index, align 4, !tbaa !5
  %22 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem = srem i32 %inc, %22
  %idxprom4 = sext i32 %rem to i64
  %23 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %23, i64 %idxprom4
  %table6 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx5, i32 0, i32 0
  %lookup87 = bitcast %union.sample_lookup_s* %table6 to [256 x i8]*
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %lookup87, i32 0, i32 0
  store i8* %arraydecay, i8** %map, align 8, !tbaa !1
  %24 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %25 = load i8*, i8** %bufp, align 8, !tbaa !1
  %idx.ext8 = sext i32 %24 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %25, i64 %idx.ext8
  store i8* %add.ptr9, i8** %bufp, align 8, !tbaa !1
  %26 = load i32, i32* %b, align 4, !tbaa !5
  %and = and i32 %26, 15
  %idxprom10 = zext i32 %and to i64
  %27 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %27, i64 %idxprom10
  %28 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %29 = load i8*, i8** %bufp, align 8, !tbaa !1
  store i8 %28, i8* %29, align 1, !tbaa !7
  %30 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc12 = add nsw i32 %30, 1
  store i32 %inc12, i32* %smap_index, align 4, !tbaa !5
  %31 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem13 = srem i32 %inc12, %31
  %idxprom14 = sext i32 %rem13 to i64
  %32 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %32, i64 %idxprom14
  %table16 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx15, i32 0, i32 0
  %lookup817 = bitcast %union.sample_lookup_s* %table16 to [256 x i8]*
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup817, i32 0, i32 0
  store i8* %arraydecay18, i8** %map, align 8, !tbaa !1
  %33 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %34 = load i8*, i8** %bufp, align 8, !tbaa !1
  %idx.ext19 = sext i32 %33 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %34, i64 %idx.ext19
  store i8* %add.ptr20, i8** %bufp, align 8, !tbaa !1
  %35 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and21 = and i32 %36, 1
  %37 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 %and21, i32* %37, align 4, !tbaa !5
  %38 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %39 = bitcast i32* %smap_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i8** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  ret i8* %38
}

; Function Attrs: nounwind uwtable
define i8* @sample_unpack_8_interleaved(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %smap, i32 %spread, i32 %num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %num_components_per_plane.addr = alloca i32, align 4
  %ptab = alloca %union.sample_lookup_s*, align 8
  %bufp = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %smap_index = alloca i32, align 4
  %left = alloca i32, align 4
  %map = alloca i8*, align 8
  %left7 = alloca i32, align 4
  %map9 = alloca i8*, align 8
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %smap, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %num_components_per_plane, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %1, i32 0, i32 0
  store %union.sample_lookup_s* %table, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %2 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  store i8* %3, i8** %bufp, align 8, !tbaa !1
  %4 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %7 = bitcast i32* %smap_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %smap_index, align 4, !tbaa !5
  %8 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 0, i32* %8, align 4, !tbaa !5
  %9 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %12 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub = sub i32 %11, %12
  store i32 %sub, i32* %left, align 4, !tbaa !5
  %13 = bitcast i8** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup8 = bitcast %union.sample_lookup_s* %14 to [256 x i8]*
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  store i8* %arrayidx, i8** %map, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %15 = load i32, i32* %left, align 4, !tbaa !5
  %dec = add i32 %15, -1
  store i32 %dec, i32* %left, align 4, !tbaa !5
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %psrc, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %idxprom = zext i8 %17 to i64
  %18 = load i8*, i8** %map, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %20 = load i8*, i8** %bufp, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr2, i8** %bufp, align 8, !tbaa !1
  store i8 %19, i8* %20, align 1, !tbaa !7
  %21 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %smap_index, align 4, !tbaa !5
  %22 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem = srem i32 %inc, %22
  %idxprom3 = sext i32 %rem to i64
  %23 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %23, i64 %idxprom3
  %table5 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx4, i32 0, i32 0
  %lookup86 = bitcast %union.sample_lookup_s* %table5 to [256 x i8]*
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %lookup86, i32 0, i32 0
  store i8* %arraydecay, i8** %map, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = bitcast i8** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = bitcast i32* %left7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %28 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub8 = sub i32 %27, %28
  store i32 %sub8, i32* %left7, align 4, !tbaa !5
  %29 = bitcast i8** %map9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab, align 8, !tbaa !1
  %lookup810 = bitcast %union.sample_lookup_s* %30 to [256 x i8]*
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup810, i32 0, i64 0
  store i8* %arrayidx11, i8** %map9, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %31 = load i32, i32* %left7, align 4, !tbaa !5
  %dec12 = add nsw i32 %31, -1
  store i32 %dec12, i32* %left7, align 4, !tbaa !5
  %tobool13 = icmp ne i32 %31, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i8*, i8** %psrc, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !7
  %idxprom14 = zext i8 %33 to i64
  %34 = load i8*, i8** %map9, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %34, i64 %idxprom14
  %35 = load i8, i8* %arrayidx15, align 1, !tbaa !7
  %36 = load i8*, i8** %bufp, align 8, !tbaa !1
  store i8 %35, i8* %36, align 1, !tbaa !7
  %37 = load i32, i32* %smap_index, align 4, !tbaa !5
  %inc16 = add nsw i32 %37, 1
  store i32 %inc16, i32* %smap_index, align 4, !tbaa !5
  %38 = load i32, i32* %num_components_per_plane.addr, align 4, !tbaa !5
  %rem17 = srem i32 %inc16, %38
  %idxprom18 = sext i32 %rem17 to i64
  %39 = load %struct.sample_map_s*, %struct.sample_map_s** %smap.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %39, i64 %idxprom18
  %table20 = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx19, i32 0, i32 0
  %lookup821 = bitcast %union.sample_lookup_s* %table20 to [256 x i8]*
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup821, i32 0, i32 0
  store i8* %arraydecay22, i8** %map9, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i8*, i8** %psrc, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr23, i8** %psrc, align 8, !tbaa !1
  %41 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %42 = load i8*, i8** %bufp, align 8, !tbaa !1
  %idx.ext24 = sext i32 %41 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %42, i64 %idx.ext24
  store i8* %add.ptr25, i8** %bufp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = bitcast i8** %map9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %left7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %while.end
  %45 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %46 = bitcast i32* %smap_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %union.sample_lookup_s** %ptab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  ret i8* %45
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

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
!9 = !{!"short", !3, i64 0}
