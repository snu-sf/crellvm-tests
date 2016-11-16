; ModuleID = './gxctable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_const_string_s = type { i8*, i32 }

; Function Attrs: nounwind uwtable
define void @gx_color_interpolate_nearest(i32* %pi, %struct.gx_color_lookup_table_s* %pclt, i16* %pv) #0 {
entry:
  %pi.addr = alloca i32*, align 8
  %pclt.addr = alloca %struct.gx_color_lookup_table_s*, align 8
  %pv.addr = alloca i16*, align 8
  %pdim = alloca i32*, align 8
  %m = alloca i32, align 4
  %table = alloca %struct.gs_const_string_s*, align 8
  %ic = alloca i32, align 4
  %ib = alloca i32, align 4
  %ia = alloca i32, align 4
  %p = alloca i8*, align 8
  %j = alloca i32, align 4
  store i32* %pi, i32** %pi.addr, align 8, !tbaa !1
  store %struct.gx_color_lookup_table_s* %pclt, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  store i16* %pv, i16** %pv.addr, align 8, !tbaa !1
  %0 = bitcast i32** %pdim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i32 0
  store i32* %arraydecay, i32** %pdim, align 8, !tbaa !1
  %2 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %m1 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %3, i32 0, i32 2
  %4 = load i32, i32* %m1, align 4, !tbaa !5
  store i32 %4, i32* %m, align 4, !tbaa !8
  %5 = bitcast %struct.gs_const_string_s** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %table2 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %6, i32 0, i32 3
  %7 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table2, align 8, !tbaa !9
  store %struct.gs_const_string_s* %7, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %8 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %8, i32 0, i32 0
  %9 = load i32, i32* %n, align 4, !tbaa !10
  %cmp = icmp sgt i32 %9, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %add = add nsw i32 %11, 128
  %shr = ashr i32 %add, 8
  %12 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx3, align 4, !tbaa !8
  %mul = mul nsw i32 %shr, %13
  %14 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %14, i64 %idx.ext
  store %struct.gs_const_string_s* %add.ptr, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %15 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr, i32** %pi.addr, align 8, !tbaa !1
  %16 = load i32*, i32** %pdim, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr4, i32** %pdim, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = bitcast i32* %ic to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i32, i32* %18, i64 2
  %19 = load i32, i32* %arrayidx5, align 4, !tbaa !8
  %add6 = add nsw i32 %19, 128
  %shr7 = ashr i32 %add6, 8
  store i32 %shr7, i32* %ic, align 4, !tbaa !8
  %20 = bitcast i32* %ib to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx8, align 4, !tbaa !8
  %add9 = add nsw i32 %22, 128
  %shr10 = ashr i32 %add9, 8
  store i32 %shr10, i32* %ib, align 4, !tbaa !8
  %23 = bitcast i32* %ia to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %24, i64 0
  %25 = load i32, i32* %arrayidx11, align 4, !tbaa !8
  %add12 = add nsw i32 %25, 128
  %shr13 = ashr i32 %add12, 8
  store i32 %shr13, i32* %ia, align 4, !tbaa !8
  %26 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i32, i32* %ia, align 4, !tbaa !8
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %table14 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %28, i32 0, i32 3
  %29 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table14, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %29, i64 %idxprom
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx15, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8, !tbaa !11
  %31 = load i32, i32* %ib, align 4, !tbaa !8
  %32 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %32, i64 2
  %33 = load i32, i32* %arrayidx16, align 4, !tbaa !8
  %mul17 = mul nsw i32 %31, %33
  %34 = load i32, i32* %ic, align 4, !tbaa !8
  %add18 = add nsw i32 %mul17, %34
  %35 = load i32, i32* %m, align 4, !tbaa !8
  %mul19 = mul nsw i32 %add18, %35
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %30, i64 %idx.ext20
  store i8* %add.ptr21, i8** %p, align 8, !tbaa !1
  %36 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %37 = load i32, i32* %j, align 4, !tbaa !8
  %38 = load i32, i32* %m, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %37, %38
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !13
  %conv = zext i8 %40 to i16
  %conv23 = sext i16 %conv to i32
  %shl = shl i32 %conv23, 7
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !13
  %conv24 = zext i8 %42 to i32
  %shr25 = ashr i32 %conv24, 1
  %add26 = add nsw i32 %shl, %shr25
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !13
  %conv27 = zext i8 %44 to i32
  %shr28 = ashr i32 %conv27, 5
  %sub = sub nsw i32 %add26, %shr28
  %conv29 = trunc i32 %sub to i16
  %45 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom30 = sext i32 %45 to i64
  %46 = load i16*, i16** %pv.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %46, i64 %idxprom30
  store i16 %conv29, i16* %arrayidx31, align 2, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %j, align 4, !tbaa !8
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %j, align 4, !tbaa !8
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr32, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %ia to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %ib to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %ic to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %struct.gs_const_string_s** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32** %pdim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gx_color_interpolate_linear(i32* %pi, %struct.gx_color_lookup_table_s* %pclt, i16* %pv) #0 {
entry:
  %pi.addr = alloca i32*, align 8
  %pclt.addr = alloca %struct.gx_color_lookup_table_s*, align 8
  %pv.addr = alloca i16*, align 8
  store i32* %pi, i32** %pi.addr, align 8, !tbaa !1
  store %struct.gx_color_lookup_table_s* %pclt, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  store i16* %pv, i16** %pv.addr, align 8, !tbaa !1
  %0 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %1 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %2 = load i16*, i16** %pv.addr, align 8, !tbaa !1
  call void @interpolate_accum(i32* %0, %struct.gx_color_lookup_table_s* %1, i16* %2, i32 256) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @interpolate_accum(i32* %pi, %struct.gx_color_lookup_table_s* %pclt, i16* %pv, i32 %factor) #0 {
entry:
  %pi.addr = alloca i32*, align 8
  %pclt.addr = alloca %struct.gx_color_lookup_table_s*, align 8
  %pv.addr = alloca i16*, align 8
  %factor.addr = alloca i32, align 4
  %pdim = alloca i32*, align 8
  %m = alloca i32, align 4
  %clt3 = alloca %struct.gx_color_lookup_table_s, align 8
  %ix = alloca i32, align 4
  %fx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ic = alloca i32, align 4
  %fc = alloca i32, align 4
  %dc1 = alloca i32, align 4
  %ib = alloca i32, align 4
  %fb = alloca i32, align 4
  %db1 = alloca i32, align 4
  %dbc = alloca i32, align 4
  %dbc1 = alloca i32, align 4
  %ia = alloca i32, align 4
  %fa = alloca i32, align 4
  %pa0 = alloca i8*, align 8
  %pa1 = alloca i8*, align 8
  %j = alloca i32, align 4
  %v000 = alloca i16, align 2
  %v001 = alloca i16, align 2
  %v010 = alloca i16, align 2
  %v011 = alloca i16, align 2
  %v100 = alloca i16, align 2
  %v101 = alloca i16, align 2
  %v110 = alloca i16, align 2
  %v111 = alloca i16, align 2
  %rv = alloca i16, align 2
  %v00 = alloca i16, align 2
  %v01 = alloca i16, align 2
  %v10 = alloca i16, align 2
  %v11 = alloca i16, align 2
  %v0 = alloca i16, align 2
  %v1 = alloca i16, align 2
  store i32* %pi, i32** %pi.addr, align 8, !tbaa !1
  store %struct.gx_color_lookup_table_s* %pclt, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  store i16* %pv, i16** %pv.addr, align 8, !tbaa !1
  store i32 %factor, i32* %factor.addr, align 4, !tbaa !8
  %0 = bitcast i32** %pdim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i32 0
  store i32* %arraydecay, i32** %pdim, align 8, !tbaa !1
  %2 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %m1 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %3, i32 0, i32 2
  %4 = load i32, i32* %m1, align 4, !tbaa !5
  store i32 %4, i32* %m, align 4, !tbaa !8
  %5 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %5, i32 0, i32 0
  %6 = load i32, i32* %n, align 4, !tbaa !10
  %cmp = icmp sgt i32 %6, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.gx_color_lookup_table_s* %clt3 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %shr = ashr i32 %10, 8
  store i32 %shr, i32* %ix, align 4, !tbaa !8
  %11 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx2, align 4, !tbaa !8
  %and = and i32 %13, 255
  store i32 %and, i32* %fx, align 4, !tbaa !8
  %n3 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %clt3, i32 0, i32 0
  store i32 3, i32* %n3, align 4, !tbaa !10
  %14 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %14, i64 1
  %15 = load i32, i32* %arrayidx4, align 4, !tbaa !8
  %dims5 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %clt3, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %dims5, i32 0, i64 0
  store i32 %15, i32* %arrayidx6, align 4, !tbaa !8
  %16 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 2
  %17 = load i32, i32* %arrayidx7, align 4, !tbaa !8
  %dims8 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %clt3, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %dims8, i32 0, i64 1
  store i32 %17, i32* %arrayidx9, align 4, !tbaa !8
  %18 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 3
  %19 = load i32, i32* %arrayidx10, align 4, !tbaa !8
  %dims11 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %clt3, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %dims11, i32 0, i64 2
  store i32 %19, i32* %arrayidx12, align 4, !tbaa !8
  %20 = load i32, i32* %m, align 4, !tbaa !8
  %m13 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %clt3, i32 0, i32 2
  store i32 %20, i32* %m13, align 4, !tbaa !5
  %21 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %21, i32 0, i32 3
  %22 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !9
  %23 = load i32, i32* %ix, align 4, !tbaa !8
  %24 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i32, i32* %24, i64 1
  %25 = load i32, i32* %arrayidx14, align 4, !tbaa !8
  %mul = mul nsw i32 %23, %25
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %22, i64 %idx.ext
  %table15 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %clt3, i32 0, i32 3
  store %struct.gs_const_string_s* %add.ptr, %struct.gs_const_string_s** %table15, align 8, !tbaa !9
  %26 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i32, i32* %26, i64 1
  %27 = load i16*, i16** %pv.addr, align 8, !tbaa !1
  call void @interpolate_accum(i32* %add.ptr16, %struct.gx_color_lookup_table_s* %clt3, i16* %27, i32 256) #2
  %28 = load i32, i32* %ix, align 4, !tbaa !8
  %29 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx17, align 4, !tbaa !8
  %sub = sub nsw i32 %30, 1
  %cmp18 = icmp eq i32 %28, %sub
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %31 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i32, i32* %31, i64 1
  %32 = load i32, i32* %arrayidx20, align 4, !tbaa !8
  %table21 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %clt3, i32 0, i32 3
  %33 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table21, align 8, !tbaa !9
  %idx.ext22 = sext i32 %32 to i64
  %add.ptr23 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %33, i64 %idx.ext22
  store %struct.gs_const_string_s* %add.ptr23, %struct.gs_const_string_s** %table21, align 8, !tbaa !9
  %34 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i32, i32* %34, i64 1
  %35 = load i16*, i16** %pv.addr, align 8, !tbaa !1
  %36 = load i32, i32* %fx, align 4, !tbaa !8
  call void @interpolate_accum(i32* %add.ptr24, %struct.gx_color_lookup_table_s* %clt3, i16* %35, i32 %36) #2
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.19
  %37 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.gx_color_lookup_table_s* %clt3 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %39) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.304 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.303

if.else:                                          ; preds = %entry
  %40 = bitcast i32* %ic to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i32, i32* %41, i64 2
  %42 = load i32, i32* %arrayidx27, align 4, !tbaa !8
  %shr28 = ashr i32 %42, 8
  store i32 %shr28, i32* %ic, align 4, !tbaa !8
  %43 = bitcast i32* %fc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %44, i64 2
  %45 = load i32, i32* %arrayidx29, align 4, !tbaa !8
  %and30 = and i32 %45, 255
  store i32 %and30, i32* %fc, align 4, !tbaa !8
  %46 = bitcast i32* %dc1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %ic, align 4, !tbaa !8
  %48 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i32, i32* %48, i64 2
  %49 = load i32, i32* %arrayidx31, align 4, !tbaa !8
  %sub32 = sub nsw i32 %49, 1
  %cmp33 = icmp eq i32 %47, %sub32
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %50 = load i32, i32* %m, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %50, %cond.false ]
  store i32 %cond, i32* %dc1, align 4, !tbaa !8
  %51 = bitcast i32* %ib to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i32, i32* %52, i64 1
  %53 = load i32, i32* %arrayidx34, align 4, !tbaa !8
  %shr35 = ashr i32 %53, 8
  store i32 %shr35, i32* %ib, align 4, !tbaa !8
  %54 = bitcast i32* %fb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i32, i32* %55, i64 1
  %56 = load i32, i32* %arrayidx36, align 4, !tbaa !8
  %and37 = and i32 %56, 255
  store i32 %and37, i32* %fb, align 4, !tbaa !8
  %57 = bitcast i32* %db1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load i32, i32* %ib, align 4, !tbaa !8
  %59 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i32, i32* %59, i64 1
  %60 = load i32, i32* %arrayidx38, align 4, !tbaa !8
  %sub39 = sub nsw i32 %60, 1
  %cmp40 = icmp eq i32 %58, %sub39
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end
  br label %cond.end.45

cond.false.42:                                    ; preds = %cond.end
  %61 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i32, i32* %61, i64 2
  %62 = load i32, i32* %arrayidx43, align 4, !tbaa !8
  %63 = load i32, i32* %m, align 4, !tbaa !8
  %mul44 = mul nsw i32 %62, %63
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.41
  %cond46 = phi i32 [ 0, %cond.true.41 ], [ %mul44, %cond.false.42 ]
  store i32 %cond46, i32* %db1, align 4, !tbaa !8
  %64 = bitcast i32* %dbc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load i32, i32* %ib, align 4, !tbaa !8
  %66 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i32, i32* %66, i64 2
  %67 = load i32, i32* %arrayidx47, align 4, !tbaa !8
  %mul48 = mul nsw i32 %65, %67
  %68 = load i32, i32* %ic, align 4, !tbaa !8
  %add = add nsw i32 %mul48, %68
  %69 = load i32, i32* %m, align 4, !tbaa !8
  %mul49 = mul nsw i32 %add, %69
  store i32 %mul49, i32* %dbc, align 4, !tbaa !8
  %70 = bitcast i32* %dbc1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load i32, i32* %db1, align 4, !tbaa !8
  %72 = load i32, i32* %dc1, align 4, !tbaa !8
  %add50 = add i32 %71, %72
  store i32 %add50, i32* %dbc1, align 4, !tbaa !8
  %73 = bitcast i32* %ia to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i32, i32* %74, i64 0
  %75 = load i32, i32* %arrayidx51, align 4, !tbaa !8
  %shr52 = ashr i32 %75, 8
  store i32 %shr52, i32* %ia, align 4, !tbaa !8
  %76 = bitcast i32* %fa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i32, i32* %77, i64 0
  %78 = load i32, i32* %arrayidx53, align 4, !tbaa !8
  %and54 = and i32 %78, 255
  store i32 %and54, i32* %fa, align 4, !tbaa !8
  %79 = bitcast i8** %pa0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = load i32, i32* %ia, align 4, !tbaa !8
  %idxprom = sext i32 %80 to i64
  %81 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %table55 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %81, i32 0, i32 3
  %82 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table55, align 8, !tbaa !9
  %arrayidx56 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %82, i64 %idxprom
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx56, i32 0, i32 0
  %83 = load i8*, i8** %data, align 8, !tbaa !11
  %84 = load i32, i32* %dbc, align 4, !tbaa !8
  %idx.ext57 = zext i32 %84 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %83, i64 %idx.ext57
  store i8* %add.ptr58, i8** %pa0, align 8, !tbaa !1
  %85 = bitcast i8** %pa1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  %86 = load i32, i32* %ia, align 4, !tbaa !8
  %87 = load i32*, i32** %pdim, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i32, i32* %87, i64 0
  %88 = load i32, i32* %arrayidx59, align 4, !tbaa !8
  %sub60 = sub nsw i32 %88, 1
  %cmp61 = icmp eq i32 %86, %sub60
  br i1 %cmp61, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.end.45
  %89 = load i8*, i8** %pa0, align 8, !tbaa !1
  br label %cond.end.71

cond.false.63:                                    ; preds = %cond.end.45
  %90 = load i32, i32* %ia, align 4, !tbaa !8
  %add64 = add nsw i32 %90, 1
  %idxprom65 = sext i32 %add64 to i64
  %91 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %pclt.addr, align 8, !tbaa !1
  %table66 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %91, i32 0, i32 3
  %92 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table66, align 8, !tbaa !9
  %arrayidx67 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %92, i64 %idxprom65
  %data68 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx67, i32 0, i32 0
  %93 = load i8*, i8** %data68, align 8, !tbaa !11
  %94 = load i32, i32* %dbc, align 4, !tbaa !8
  %idx.ext69 = zext i32 %94 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %93, i64 %idx.ext69
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.63, %cond.true.62
  %cond72 = phi i8* [ %89, %cond.true.62 ], [ %add.ptr70, %cond.false.63 ]
  store i8* %cond72, i8** %pa1, align 8, !tbaa !1
  %95 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.71
  %96 = load i32, i32* %j, align 4, !tbaa !8
  %97 = load i32, i32* %m, align 4, !tbaa !8
  %cmp73 = icmp slt i32 %96, %97
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = bitcast i16* %v000 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %98) #1
  %99 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %99, i64 0
  %100 = load i8, i8* %arrayidx74, align 1, !tbaa !13
  %conv = zext i8 %100 to i16
  %conv75 = sext i16 %conv to i32
  %shl = shl i32 %conv75, 7
  %101 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %101, i64 0
  %102 = load i8, i8* %arrayidx76, align 1, !tbaa !13
  %conv77 = zext i8 %102 to i32
  %shr78 = ashr i32 %conv77, 1
  %add79 = add nsw i32 %shl, %shr78
  %103 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %103, i64 0
  %104 = load i8, i8* %arrayidx80, align 1, !tbaa !13
  %conv81 = zext i8 %104 to i32
  %shr82 = ashr i32 %conv81, 5
  %sub83 = sub nsw i32 %add79, %shr82
  %conv84 = trunc i32 %sub83 to i16
  store i16 %conv84, i16* %v000, align 2, !tbaa !14
  %105 = bitcast i16* %v001 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %105) #1
  %106 = load i32, i32* %dc1, align 4, !tbaa !8
  %idxprom85 = zext i32 %106 to i64
  %107 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %107, i64 %idxprom85
  %108 = load i8, i8* %arrayidx86, align 1, !tbaa !13
  %conv87 = zext i8 %108 to i16
  %conv88 = sext i16 %conv87 to i32
  %shl89 = shl i32 %conv88, 7
  %109 = load i32, i32* %dc1, align 4, !tbaa !8
  %idxprom90 = zext i32 %109 to i64
  %110 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i8, i8* %110, i64 %idxprom90
  %111 = load i8, i8* %arrayidx91, align 1, !tbaa !13
  %conv92 = zext i8 %111 to i32
  %shr93 = ashr i32 %conv92, 1
  %add94 = add nsw i32 %shl89, %shr93
  %112 = load i32, i32* %dc1, align 4, !tbaa !8
  %idxprom95 = zext i32 %112 to i64
  %113 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %113, i64 %idxprom95
  %114 = load i8, i8* %arrayidx96, align 1, !tbaa !13
  %conv97 = zext i8 %114 to i32
  %shr98 = ashr i32 %conv97, 5
  %sub99 = sub nsw i32 %add94, %shr98
  %conv100 = trunc i32 %sub99 to i16
  store i16 %conv100, i16* %v001, align 2, !tbaa !14
  %115 = bitcast i16* %v010 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %115) #1
  %116 = load i32, i32* %db1, align 4, !tbaa !8
  %idxprom101 = zext i32 %116 to i64
  %117 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %117, i64 %idxprom101
  %118 = load i8, i8* %arrayidx102, align 1, !tbaa !13
  %conv103 = zext i8 %118 to i16
  %conv104 = sext i16 %conv103 to i32
  %shl105 = shl i32 %conv104, 7
  %119 = load i32, i32* %db1, align 4, !tbaa !8
  %idxprom106 = zext i32 %119 to i64
  %120 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %120, i64 %idxprom106
  %121 = load i8, i8* %arrayidx107, align 1, !tbaa !13
  %conv108 = zext i8 %121 to i32
  %shr109 = ashr i32 %conv108, 1
  %add110 = add nsw i32 %shl105, %shr109
  %122 = load i32, i32* %db1, align 4, !tbaa !8
  %idxprom111 = zext i32 %122 to i64
  %123 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %123, i64 %idxprom111
  %124 = load i8, i8* %arrayidx112, align 1, !tbaa !13
  %conv113 = zext i8 %124 to i32
  %shr114 = ashr i32 %conv113, 5
  %sub115 = sub nsw i32 %add110, %shr114
  %conv116 = trunc i32 %sub115 to i16
  store i16 %conv116, i16* %v010, align 2, !tbaa !14
  %125 = bitcast i16* %v011 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %125) #1
  %126 = load i32, i32* %dbc1, align 4, !tbaa !8
  %idxprom117 = zext i32 %126 to i64
  %127 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i8, i8* %127, i64 %idxprom117
  %128 = load i8, i8* %arrayidx118, align 1, !tbaa !13
  %conv119 = zext i8 %128 to i16
  %conv120 = sext i16 %conv119 to i32
  %shl121 = shl i32 %conv120, 7
  %129 = load i32, i32* %dbc1, align 4, !tbaa !8
  %idxprom122 = zext i32 %129 to i64
  %130 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i8, i8* %130, i64 %idxprom122
  %131 = load i8, i8* %arrayidx123, align 1, !tbaa !13
  %conv124 = zext i8 %131 to i32
  %shr125 = ashr i32 %conv124, 1
  %add126 = add nsw i32 %shl121, %shr125
  %132 = load i32, i32* %dbc1, align 4, !tbaa !8
  %idxprom127 = zext i32 %132 to i64
  %133 = load i8*, i8** %pa0, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i8, i8* %133, i64 %idxprom127
  %134 = load i8, i8* %arrayidx128, align 1, !tbaa !13
  %conv129 = zext i8 %134 to i32
  %shr130 = ashr i32 %conv129, 5
  %sub131 = sub nsw i32 %add126, %shr130
  %conv132 = trunc i32 %sub131 to i16
  store i16 %conv132, i16* %v011, align 2, !tbaa !14
  %135 = bitcast i16* %v100 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %135) #1
  %136 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i8, i8* %136, i64 0
  %137 = load i8, i8* %arrayidx133, align 1, !tbaa !13
  %conv134 = zext i8 %137 to i16
  %conv135 = sext i16 %conv134 to i32
  %shl136 = shl i32 %conv135, 7
  %138 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i8, i8* %138, i64 0
  %139 = load i8, i8* %arrayidx137, align 1, !tbaa !13
  %conv138 = zext i8 %139 to i32
  %shr139 = ashr i32 %conv138, 1
  %add140 = add nsw i32 %shl136, %shr139
  %140 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i8, i8* %140, i64 0
  %141 = load i8, i8* %arrayidx141, align 1, !tbaa !13
  %conv142 = zext i8 %141 to i32
  %shr143 = ashr i32 %conv142, 5
  %sub144 = sub nsw i32 %add140, %shr143
  %conv145 = trunc i32 %sub144 to i16
  store i16 %conv145, i16* %v100, align 2, !tbaa !14
  %142 = bitcast i16* %v101 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %142) #1
  %143 = load i32, i32* %dc1, align 4, !tbaa !8
  %idxprom146 = zext i32 %143 to i64
  %144 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %144, i64 %idxprom146
  %145 = load i8, i8* %arrayidx147, align 1, !tbaa !13
  %conv148 = zext i8 %145 to i16
  %conv149 = sext i16 %conv148 to i32
  %shl150 = shl i32 %conv149, 7
  %146 = load i32, i32* %dc1, align 4, !tbaa !8
  %idxprom151 = zext i32 %146 to i64
  %147 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i8, i8* %147, i64 %idxprom151
  %148 = load i8, i8* %arrayidx152, align 1, !tbaa !13
  %conv153 = zext i8 %148 to i32
  %shr154 = ashr i32 %conv153, 1
  %add155 = add nsw i32 %shl150, %shr154
  %149 = load i32, i32* %dc1, align 4, !tbaa !8
  %idxprom156 = zext i32 %149 to i64
  %150 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %150, i64 %idxprom156
  %151 = load i8, i8* %arrayidx157, align 1, !tbaa !13
  %conv158 = zext i8 %151 to i32
  %shr159 = ashr i32 %conv158, 5
  %sub160 = sub nsw i32 %add155, %shr159
  %conv161 = trunc i32 %sub160 to i16
  store i16 %conv161, i16* %v101, align 2, !tbaa !14
  %152 = bitcast i16* %v110 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %152) #1
  %153 = load i32, i32* %db1, align 4, !tbaa !8
  %idxprom162 = zext i32 %153 to i64
  %154 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %154, i64 %idxprom162
  %155 = load i8, i8* %arrayidx163, align 1, !tbaa !13
  %conv164 = zext i8 %155 to i16
  %conv165 = sext i16 %conv164 to i32
  %shl166 = shl i32 %conv165, 7
  %156 = load i32, i32* %db1, align 4, !tbaa !8
  %idxprom167 = zext i32 %156 to i64
  %157 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i8, i8* %157, i64 %idxprom167
  %158 = load i8, i8* %arrayidx168, align 1, !tbaa !13
  %conv169 = zext i8 %158 to i32
  %shr170 = ashr i32 %conv169, 1
  %add171 = add nsw i32 %shl166, %shr170
  %159 = load i32, i32* %db1, align 4, !tbaa !8
  %idxprom172 = zext i32 %159 to i64
  %160 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i8, i8* %160, i64 %idxprom172
  %161 = load i8, i8* %arrayidx173, align 1, !tbaa !13
  %conv174 = zext i8 %161 to i32
  %shr175 = ashr i32 %conv174, 5
  %sub176 = sub nsw i32 %add171, %shr175
  %conv177 = trunc i32 %sub176 to i16
  store i16 %conv177, i16* %v110, align 2, !tbaa !14
  %162 = bitcast i16* %v111 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %162) #1
  %163 = load i32, i32* %dbc1, align 4, !tbaa !8
  %idxprom178 = zext i32 %163 to i64
  %164 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i8, i8* %164, i64 %idxprom178
  %165 = load i8, i8* %arrayidx179, align 1, !tbaa !13
  %conv180 = zext i8 %165 to i16
  %conv181 = sext i16 %conv180 to i32
  %shl182 = shl i32 %conv181, 7
  %166 = load i32, i32* %dbc1, align 4, !tbaa !8
  %idxprom183 = zext i32 %166 to i64
  %167 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i8, i8* %167, i64 %idxprom183
  %168 = load i8, i8* %arrayidx184, align 1, !tbaa !13
  %conv185 = zext i8 %168 to i32
  %shr186 = ashr i32 %conv185, 1
  %add187 = add nsw i32 %shl182, %shr186
  %169 = load i32, i32* %dbc1, align 4, !tbaa !8
  %idxprom188 = zext i32 %169 to i64
  %170 = load i8*, i8** %pa1, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i8, i8* %170, i64 %idxprom188
  %171 = load i8, i8* %arrayidx189, align 1, !tbaa !13
  %conv190 = zext i8 %171 to i32
  %shr191 = ashr i32 %conv190, 5
  %sub192 = sub nsw i32 %add187, %shr191
  %conv193 = trunc i32 %sub192 to i16
  store i16 %conv193, i16* %v111, align 2, !tbaa !14
  %172 = bitcast i16* %rv to i8*
  call void @llvm.lifetime.start(i64 2, i8* %172) #1
  %173 = bitcast i16* %v00 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %173) #1
  %174 = load i16, i16* %v000, align 2, !tbaa !14
  %conv194 = sext i16 %174 to i32
  %175 = load i32, i32* %fc, align 4, !tbaa !8
  %conv195 = sext i32 %175 to i64
  %176 = load i16, i16* %v001, align 2, !tbaa !14
  %conv196 = sext i16 %176 to i32
  %177 = load i16, i16* %v000, align 2, !tbaa !14
  %conv197 = sext i16 %177 to i32
  %sub198 = sub nsw i32 %conv196, %conv197
  %conv199 = sext i32 %sub198 to i64
  %mul200 = mul nsw i64 %conv195, %conv199
  %shr201 = ashr i64 %mul200, 8
  %conv202 = trunc i64 %shr201 to i16
  %conv203 = sext i16 %conv202 to i32
  %add204 = add nsw i32 %conv194, %conv203
  %conv205 = trunc i32 %add204 to i16
  store i16 %conv205, i16* %v00, align 2, !tbaa !14
  %178 = bitcast i16* %v01 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %178) #1
  %179 = load i16, i16* %v010, align 2, !tbaa !14
  %conv206 = sext i16 %179 to i32
  %180 = load i32, i32* %fc, align 4, !tbaa !8
  %conv207 = sext i32 %180 to i64
  %181 = load i16, i16* %v011, align 2, !tbaa !14
  %conv208 = sext i16 %181 to i32
  %182 = load i16, i16* %v010, align 2, !tbaa !14
  %conv209 = sext i16 %182 to i32
  %sub210 = sub nsw i32 %conv208, %conv209
  %conv211 = sext i32 %sub210 to i64
  %mul212 = mul nsw i64 %conv207, %conv211
  %shr213 = ashr i64 %mul212, 8
  %conv214 = trunc i64 %shr213 to i16
  %conv215 = sext i16 %conv214 to i32
  %add216 = add nsw i32 %conv206, %conv215
  %conv217 = trunc i32 %add216 to i16
  store i16 %conv217, i16* %v01, align 2, !tbaa !14
  %183 = bitcast i16* %v10 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %183) #1
  %184 = load i16, i16* %v100, align 2, !tbaa !14
  %conv218 = sext i16 %184 to i32
  %185 = load i32, i32* %fc, align 4, !tbaa !8
  %conv219 = sext i32 %185 to i64
  %186 = load i16, i16* %v101, align 2, !tbaa !14
  %conv220 = sext i16 %186 to i32
  %187 = load i16, i16* %v100, align 2, !tbaa !14
  %conv221 = sext i16 %187 to i32
  %sub222 = sub nsw i32 %conv220, %conv221
  %conv223 = sext i32 %sub222 to i64
  %mul224 = mul nsw i64 %conv219, %conv223
  %shr225 = ashr i64 %mul224, 8
  %conv226 = trunc i64 %shr225 to i16
  %conv227 = sext i16 %conv226 to i32
  %add228 = add nsw i32 %conv218, %conv227
  %conv229 = trunc i32 %add228 to i16
  store i16 %conv229, i16* %v10, align 2, !tbaa !14
  %188 = bitcast i16* %v11 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %188) #1
  %189 = load i16, i16* %v110, align 2, !tbaa !14
  %conv230 = sext i16 %189 to i32
  %190 = load i32, i32* %fc, align 4, !tbaa !8
  %conv231 = sext i32 %190 to i64
  %191 = load i16, i16* %v111, align 2, !tbaa !14
  %conv232 = sext i16 %191 to i32
  %192 = load i16, i16* %v110, align 2, !tbaa !14
  %conv233 = sext i16 %192 to i32
  %sub234 = sub nsw i32 %conv232, %conv233
  %conv235 = sext i32 %sub234 to i64
  %mul236 = mul nsw i64 %conv231, %conv235
  %shr237 = ashr i64 %mul236, 8
  %conv238 = trunc i64 %shr237 to i16
  %conv239 = sext i16 %conv238 to i32
  %add240 = add nsw i32 %conv230, %conv239
  %conv241 = trunc i32 %add240 to i16
  store i16 %conv241, i16* %v11, align 2, !tbaa !14
  %193 = bitcast i16* %v0 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %193) #1
  %194 = load i16, i16* %v00, align 2, !tbaa !14
  %conv242 = sext i16 %194 to i32
  %195 = load i32, i32* %fb, align 4, !tbaa !8
  %conv243 = sext i32 %195 to i64
  %196 = load i16, i16* %v01, align 2, !tbaa !14
  %conv244 = sext i16 %196 to i32
  %197 = load i16, i16* %v00, align 2, !tbaa !14
  %conv245 = sext i16 %197 to i32
  %sub246 = sub nsw i32 %conv244, %conv245
  %conv247 = sext i32 %sub246 to i64
  %mul248 = mul nsw i64 %conv243, %conv247
  %shr249 = ashr i64 %mul248, 8
  %conv250 = trunc i64 %shr249 to i16
  %conv251 = sext i16 %conv250 to i32
  %add252 = add nsw i32 %conv242, %conv251
  %conv253 = trunc i32 %add252 to i16
  store i16 %conv253, i16* %v0, align 2, !tbaa !14
  %198 = bitcast i16* %v1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %198) #1
  %199 = load i16, i16* %v10, align 2, !tbaa !14
  %conv254 = sext i16 %199 to i32
  %200 = load i32, i32* %fb, align 4, !tbaa !8
  %conv255 = sext i32 %200 to i64
  %201 = load i16, i16* %v11, align 2, !tbaa !14
  %conv256 = sext i16 %201 to i32
  %202 = load i16, i16* %v10, align 2, !tbaa !14
  %conv257 = sext i16 %202 to i32
  %sub258 = sub nsw i32 %conv256, %conv257
  %conv259 = sext i32 %sub258 to i64
  %mul260 = mul nsw i64 %conv255, %conv259
  %shr261 = ashr i64 %mul260, 8
  %conv262 = trunc i64 %shr261 to i16
  %conv263 = sext i16 %conv262 to i32
  %add264 = add nsw i32 %conv254, %conv263
  %conv265 = trunc i32 %add264 to i16
  store i16 %conv265, i16* %v1, align 2, !tbaa !14
  %203 = load i16, i16* %v0, align 2, !tbaa !14
  %conv266 = sext i16 %203 to i32
  %204 = load i32, i32* %fa, align 4, !tbaa !8
  %conv267 = sext i32 %204 to i64
  %205 = load i16, i16* %v1, align 2, !tbaa !14
  %conv268 = sext i16 %205 to i32
  %206 = load i16, i16* %v0, align 2, !tbaa !14
  %conv269 = sext i16 %206 to i32
  %sub270 = sub nsw i32 %conv268, %conv269
  %conv271 = sext i32 %sub270 to i64
  %mul272 = mul nsw i64 %conv267, %conv271
  %shr273 = ashr i64 %mul272, 8
  %conv274 = trunc i64 %shr273 to i16
  %conv275 = sext i16 %conv274 to i32
  %add276 = add nsw i32 %conv266, %conv275
  %conv277 = trunc i32 %add276 to i16
  store i16 %conv277, i16* %rv, align 2, !tbaa !14
  %207 = load i32, i32* %factor.addr, align 4, !tbaa !8
  %conv278 = sext i32 %207 to i64
  %cmp279 = icmp eq i64 %conv278, 256
  br i1 %cmp279, label %if.then.281, label %if.else.284

if.then.281:                                      ; preds = %for.body
  %208 = load i16, i16* %rv, align 2, !tbaa !14
  %209 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom282 = sext i32 %209 to i64
  %210 = load i16*, i16** %pv.addr, align 8, !tbaa !1
  %arrayidx283 = getelementptr inbounds i16, i16* %210, i64 %idxprom282
  store i16 %208, i16* %arrayidx283, align 2, !tbaa !14
  br label %if.end.301

if.else.284:                                      ; preds = %for.body
  %211 = load i32, i32* %factor.addr, align 4, !tbaa !8
  %conv285 = sext i32 %211 to i64
  %212 = load i16, i16* %rv, align 2, !tbaa !14
  %conv286 = sext i16 %212 to i32
  %213 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom287 = sext i32 %213 to i64
  %214 = load i16*, i16** %pv.addr, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds i16, i16* %214, i64 %idxprom287
  %215 = load i16, i16* %arrayidx288, align 2, !tbaa !14
  %conv289 = sext i16 %215 to i32
  %sub290 = sub nsw i32 %conv286, %conv289
  %conv291 = sext i32 %sub290 to i64
  %mul292 = mul nsw i64 %conv285, %conv291
  %shr293 = ashr i64 %mul292, 8
  %conv294 = trunc i64 %shr293 to i16
  %conv295 = sext i16 %conv294 to i32
  %216 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom296 = sext i32 %216 to i64
  %217 = load i16*, i16** %pv.addr, align 8, !tbaa !1
  %arrayidx297 = getelementptr inbounds i16, i16* %217, i64 %idxprom296
  %218 = load i16, i16* %arrayidx297, align 2, !tbaa !14
  %conv298 = sext i16 %218 to i32
  %add299 = add nsw i32 %conv298, %conv295
  %conv300 = trunc i32 %add299 to i16
  store i16 %conv300, i16* %arrayidx297, align 2, !tbaa !14
  br label %if.end.301

if.end.301:                                       ; preds = %if.else.284, %if.then.281
  %219 = bitcast i16* %v1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %219) #1
  %220 = bitcast i16* %v0 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %220) #1
  %221 = bitcast i16* %v11 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %221) #1
  %222 = bitcast i16* %v10 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %222) #1
  %223 = bitcast i16* %v01 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %223) #1
  %224 = bitcast i16* %v00 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %224) #1
  %225 = bitcast i16* %rv to i8*
  call void @llvm.lifetime.end(i64 2, i8* %225) #1
  %226 = bitcast i16* %v111 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %226) #1
  %227 = bitcast i16* %v110 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %227) #1
  %228 = bitcast i16* %v101 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %228) #1
  %229 = bitcast i16* %v100 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %229) #1
  %230 = bitcast i16* %v011 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %230) #1
  %231 = bitcast i16* %v010 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %231) #1
  %232 = bitcast i16* %v001 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %232) #1
  %233 = bitcast i16* %v000 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %233) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.301
  %234 = load i32, i32* %j, align 4, !tbaa !8
  %inc = add nsw i32 %234, 1
  store i32 %inc, i32* %j, align 4, !tbaa !8
  %235 = load i8*, i8** %pa0, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr, i8** %pa0, align 8, !tbaa !1
  %236 = load i8*, i8** %pa1, align 8, !tbaa !1
  %incdec.ptr302 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %incdec.ptr302, i8** %pa1, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %237 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i8** %pa1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  %239 = bitcast i8** %pa0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  %240 = bitcast i32* %fa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %ia to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast i32* %dbc1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %dbc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %db1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %fb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32* %ib to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i32* %dc1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i32* %fc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast i32* %ic to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  br label %if.end.303

if.end.303:                                       ; preds = %for.end, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.304

cleanup.304:                                      ; preds = %if.end.303, %cleanup
  %250 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  %251 = bitcast i32** %pdim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  %cleanup.dest.306 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.306, label %unreachable [
    i32 0, label %cleanup.cont.307
    i32 1, label %cleanup.cont.307
  ]

cleanup.cont.307:                                 ; preds = %cleanup.304, %cleanup.304
  ret void

unreachable:                                      ; preds = %cleanup.304
  unreachable
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 20}
!6 = !{!"gx_color_lookup_table_s", !7, i64 0, !3, i64 4, !7, i64 20, !2, i64 24}
!7 = !{!"int", !3, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!6, !2, i64 24}
!10 = !{!6, !7, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!13 = !{!3, !3, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !3, i64 0}
