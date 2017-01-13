; ModuleID = './gxi16bit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }

@sample_unpack_16_proc = constant i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpack_16, align 8
@sample_unpackicc_16_proc = constant i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)* @sample_unpackicc_16, align 8

; Function Attrs: nounwind uwtable
define internal i8* @sample_unpack_16(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %ignore_smap, i32 %spread, i32 %ignore_num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %ignore_smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %ignore_num_components_per_plane.addr = alloca i32, align 4
  %bufp = alloca i16*, align 8
  %dskip = alloca i32, align 4
  %psrc = alloca i8*, align 8
  %sample = alloca i32, align 4
  %left = alloca i32, align 4
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %ignore_smap, %struct.sample_map_s** %ignore_smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %ignore_num_components_per_plane, i32* %ignore_num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast i16** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i16*
  store i16* %2, i16** %bufp, align 8, !tbaa !1
  %3 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shl = shl i32 %4, 1
  store i32 %shl, i32* %dskip, align 4, !tbaa !5
  %5 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %dskip, align 4, !tbaa !5
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %8 = bitcast i32* %sample to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %11 = load i32, i32* %dskip, align 4, !tbaa !5
  %sub = sub i32 %10, %11
  store i32 %sub, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %12 = load i32, i32* %left, align 4, !tbaa !5
  %cmp = icmp sge i32 %12, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %14 to i32
  %shl1 = shl i32 %conv, 8
  %15 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %16 to i32
  %add = add i32 %shl1, %conv3
  store i32 %add, i32* %sample, align 4, !tbaa !5
  %17 = load i32, i32* %sample, align 4, !tbaa !5
  %add4 = add i32 %17, 1
  %mul = mul i32 32760, %add4
  %shr = lshr i32 %mul, 16
  %conv5 = trunc i32 %shr to i16
  %18 = load i16*, i16** %bufp, align 8, !tbaa !1
  store i16 %conv5, i16* %18, align 2, !tbaa !8
  %19 = load i16*, i16** %bufp, align 8, !tbaa !1
  %20 = bitcast i16* %19 to i8*
  %21 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %idx.ext6 = sext i32 %21 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %20, i64 %idx.ext6
  %22 = bitcast i8* %add.ptr7 to i16*
  store i16* %22, i16** %bufp, align 8, !tbaa !1
  %23 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %add.ptr8, i8** %psrc, align 8, !tbaa !1
  %24 = load i32, i32* %left, align 4, !tbaa !5
  %sub9 = sub nsw i32 %24, 2
  store i32 %sub9, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 0, i32* %25, align 4, !tbaa !5
  %26 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %27 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %sample to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i16** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret i8* %26
}

; Function Attrs: nounwind uwtable
define internal i8* @sample_unpackicc_16(i8* %bptr, i32* %pdata_x, i8* %data, i32 %data_x, i32 %dsize, %struct.sample_map_s* %ignore_smap, i32 %spread, i32 %ignore_num_components_per_plane) #0 {
entry:
  %bptr.addr = alloca i8*, align 8
  %pdata_x.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %ignore_smap.addr = alloca %struct.sample_map_s*, align 8
  %spread.addr = alloca i32, align 4
  %ignore_num_components_per_plane.addr = alloca i32, align 4
  %bufp = alloca i16*, align 8
  %dskip = alloca i32, align 4
  %psrc = alloca i8*, align 8
  %sample = alloca i32, align 4
  %left = alloca i32, align 4
  store i8* %bptr, i8** %bptr.addr, align 8, !tbaa !1
  store i32* %pdata_x, i32** %pdata_x.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %dsize, i32* %dsize.addr, align 4, !tbaa !5
  store %struct.sample_map_s* %ignore_smap, %struct.sample_map_s** %ignore_smap.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  store i32 %ignore_num_components_per_plane, i32* %ignore_num_components_per_plane.addr, align 4, !tbaa !5
  %0 = bitcast i16** %bufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i16*
  store i16* %2, i16** %bufp, align 8, !tbaa !1
  %3 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shl = shl i32 %4, 1
  store i32 %shl, i32* %dskip, align 4, !tbaa !5
  %5 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %dskip, align 4, !tbaa !5
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %psrc, align 8, !tbaa !1
  %8 = bitcast i32* %sample to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %dsize.addr, align 4, !tbaa !5
  %11 = load i32, i32* %dskip, align 4, !tbaa !5
  %sub = sub i32 %10, %11
  store i32 %sub, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %12 = load i32, i32* %left, align 4, !tbaa !5
  %cmp = icmp sge i32 %12, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %14 to i32
  %shl1 = shl i32 %conv, 8
  %15 = load i8*, i8** %psrc, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %16 to i32
  %add = add i32 %shl1, %conv3
  store i32 %add, i32* %sample, align 4, !tbaa !5
  %17 = load i32, i32* %sample, align 4, !tbaa !5
  %conv4 = trunc i32 %17 to i16
  %18 = load i16*, i16** %bufp, align 8, !tbaa !1
  store i16 %conv4, i16* %18, align 2, !tbaa !8
  %19 = load i16*, i16** %bufp, align 8, !tbaa !1
  %20 = bitcast i16* %19 to i8*
  %21 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %21 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %20, i64 %idx.ext5
  %22 = bitcast i8* %add.ptr6 to i16*
  store i16* %22, i16** %bufp, align 8, !tbaa !1
  %23 = load i8*, i8** %psrc, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %add.ptr7, i8** %psrc, align 8, !tbaa !1
  %24 = load i32, i32* %left, align 4, !tbaa !5
  %sub8 = sub nsw i32 %24, 2
  store i32 %sub8, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32*, i32** %pdata_x.addr, align 8, !tbaa !1
  store i32 0, i32* %25, align 4, !tbaa !5
  %26 = load i8*, i8** %bptr.addr, align 8, !tbaa !1
  %27 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %sample to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i8** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i16** %bufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret i8* %26
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
